### Set basic configuration variables
ppWave <- "18.1";
ppReport <- 'pre1';
basePath <- 'B:/Data/research/party panel';
surveyid <- '883163';
regularVars <- c('suggestion',
                 'justification',
                 'recruitment');
loopVars <- c('extraQuestions_vraag',
              'extraQuestJustificat_vraag');
loopNr <- 10;
requiredQuestions <- c('suggestion');

### Automatically generate further configuration variables
scriptPath <- file.path(basePath,
                        paste0('partypanel-', ppWave),
                        'preparation',
                        ppReport,
                        'data');
workingPath <- file.path(basePath,
                         paste0('partypanel-', ppWave),
                         'preparation',
                         ppReport,
                         'data');

### Load packages
require('rmarkdown');
require('userfriendlyscience');

### Knit preliminary report
render(file.path(scriptPath, paste0(ppWave, "-",
                                    ifelse(nchar(ppReport)>0,
                                                   paste0(ppReport, "-"),
                                                   ""),
                                    'process.Rmd')),
       output_file = file.path(workingPath,
                               'index.html'),
       intermediates_dir = workingPath);

### Upload preliminary report
if (require('RCurl')) {
  if (url.exists('partypanel.nl')) {
    cat0("Uploading report to ftp://partypanel.nl/", ppWave, "/", ppReport, "/index.html");
    ftpUpload(file.path(workingPath,
                        'index.html'),
              paste0("ftp://partypanel.nl/", ppWave, "/", ppReport, "/index.html"),
              userpwd="ppreports@partypanel.nl:ppreports_Password@2015");
    cat("Uploaded report using FTP.\n", sep="");
  }
}

cat0("Report available at:\n\n  http://partypanel.nl/reports/", ppWave, "/", ppReport, "\n\n");
