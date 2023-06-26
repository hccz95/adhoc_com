运行`adhoc_com-master\code\experiments\expIJCAI\condor_jobs\condor_0.m`

run_all_exp.m第12行报错，找不到`getfilenames`函数。从网上下载一个`getfilenames.m`即可。

然后get_save_filename.m第4行，找不到ensure_new_folder，只好注释掉

init_hypothesis_with_seed.m (line 4) 找不到init_random_seed函数，找不到相关函数

```
Undefined function or variable 'getfilenames'.

Error in run_all_exp (line 12)
settingScripts = getfilenames(settingFolder, 'refiles', '*.m');

Error in condor_0 (line 4)
run_all_exp(0)
```

settingScripts = getfilenames(settingFolder, 'refiles', '*.m');

settingScripts = getfilenames(settingFolder, '*.m');

```
Undefined function or variable 'init_random_seed'.

Error in init_hypothesis_with_seed (line 4)
init_random_seed(seed);

Error in run_all_exp (line 23)
        rec = init_hypothesis_with_seed(simuInfo, seed);

Error in condor_0 (line 4)
run_all_exp(0)
```
