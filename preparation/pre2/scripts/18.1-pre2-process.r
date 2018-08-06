########################################################################
### Set basic configuration variables
########################################################################

ppWave <- "18.1";
ppReport <- 'pre2';
surveyid <- '180102';
regularVars <- c('adviseFriendUB',
                 'adviseFriendDB',
                 'discloseUB',
                 'discloseDB',
                 'expertise',
                 'recruitment');
loopVars <- c('extraQuestions_vraag',
              'extraQuestJustificat_vraag');
loopNr <- 10;
personalDataQuestions <- c('email');
requiredQuestions <- c('submitdate');

########################################################################
### Packages
########################################################################

if (!require('userfriendlyscience', quietly = FALSE)) {
  stop("You need to have the userfriendlyscience package installed!");
}
safeRequire('rmarkdown');
safeRequire('here');

########################################################################
### Set the variables with the paths
########################################################################

### Set the additional paths
outputPath <- here('preparation', 'pre2', 'output');
workingPath <- here('preparation', 'pre2', 'output');
dataPath <- here('preparation', 'pre2', 'data');
scriptPath <- here('preparation', 'pre2', 'scripts');
sharedPath <- normalizePath(file.path(here(), "../partypanel-shared"));

########################################################################
### Login credentials for uploading report
########################################################################

reportLoginStringFilePath <-
  file.path(sharedPath, 'report-upload-login-string.txt')

########################################################################
### Render report
########################################################################

render(file.path(scriptPath, paste0(ppWave, "-",
                                    ifelse(nchar(ppReport)>0,
                                                   paste0(ppReport, "-"),
                                                   ""),
                                    'process.Rmd')),
       output_file = file.path(workingPath,
                               'index.html'),
       intermediates_dir = workingPath);

########################################################################
### Uploading report to secure site
########################################################################

uploadPassword <- readLines(reportLoginStringFilePath);

if (require('RCurl')) {
  if (url.exists('partypanel.nl')) {
    ftpUpload(file.path(workingPath, 'index.html'),
              paste0("ftp://partypanel.nl/", ppWave, "/", ppReport, "/index.html"),
              userpwd=uploadPassword)
    cat("Uploaded report for wave ", ppWave, " to the secured site using FTP.\n", sep="");
  }
}

cat0("Report available at:\n\n  https://partypanel.nl/reports/", ppWave, "/", ppReport, "/\n\n");
