load(":eva_modules.bzl", "eva_modules")
load(":eva_module_build.bzl", "define_consolidate_gki_perf_modules")


def define_anorak61():
    define_consolidate_gki_perf_modules(
        target = "anorak",
        registry = eva_modules,
        modules = [
            "msm-eva",
        ],
        config_options = [
           # "CONFIG_TARGET_SYNX_ENABLE",
            "CONFIG_EVA_ANORAK",
            "TARGET_SYNX_ENABLE",
            "TARGET_MMRM_ENABLE",
            "TARGET_DSP_ENABLE",
            "CONFIG_MSM_MMRM",
            "HALLIDAY_DISABLE",
        ],
    )
