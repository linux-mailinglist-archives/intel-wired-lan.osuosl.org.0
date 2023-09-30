Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA477B3E70
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Sep 2023 07:26:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15EA741CE8;
	Sat, 30 Sep 2023 05:25:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15EA741CE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696051557;
	bh=vEAHDdJiUMcM5/0AXa8JDnzwzfaPe3/A0P61/gk2YEs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=S6zP+0LS4Z8Lg5aSu6P+WTpzRn4Y8Uyk9DdYkMNcKayo113uYCGgMpXLDBBo3H1yi
	 FcMEtdE6CbkJznX03942/sHVaNHwmRuj2RLGAoTg1P4XyKrksRzB3ze22oSVnRPMdW
	 WvS1yJEfiGPyYL6q1wFYN9UmrMZokzAcRnVlRs9XJ3skL+Q06LL57+H+xtcYxs+vAC
	 mOMNmW4DG7Xscz8EUYCww81+r7Po8PlJUQZeGQONv6HDSMOtKdYjFoXuXVrjhCOHph
	 W3nbkwLCU4xrAv2LvP1sYM0HRruMOdaxfhqp0UaTF0dstws5c56dv3WyBwoQ6qhpws
	 2Xju2P1u0sirA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u8eUvreS2-za; Sat, 30 Sep 2023 05:25:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A05C41CC7;
	Sat, 30 Sep 2023 05:25:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A05C41CC7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FDC31BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Sep 2023 05:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 163B041805
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Sep 2023 05:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 163B041805
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXeTXwIPXOgv for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Sep 2023 05:25:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB1FE417B3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Sep 2023 05:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB1FE417B3
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="379706810"
X-IronPort-AV: E=Sophos;i="6.03,189,1694761200"; d="scan'208";a="379706810"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 22:25:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="726782987"
X-IronPort-AV: E=Sophos;i="6.03,189,1694761200"; d="scan'208";a="726782987"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 29 Sep 2023 22:25:40 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qmSTy-0003k4-0R;
 Sat, 30 Sep 2023 05:25:38 +0000
Date: Sat, 30 Sep 2023 13:25:34 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <202309301308.d22sJdaF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696051546; x=1727587546;
 h=date:from:to:cc:subject:message-id;
 bh=ikTuE2ISJ5c7tnVrMfL47uksRUpDiXItJyB89nyxGAo=;
 b=P2MmTJ2Pk/ZJWU2WIyMf78kq8Uy5iGVrFAR5XIp3hAIXpNpms0JNFuYP
 4LWkkBf8zg+H3vy9hLEwMyrXEdcdWVfyNjyVBoF9ZfcH+qrfvklz9cOJK
 1uhgjNryJlJdQzF9rDvbzdBJ3KDIXfMC3UmolsT3PgsxpHEvJ6gF5FMmK
 DRS1/gz79lm4mVM4SlMYdF4BP6vp4PhIG9EdY5nNUCfv1AGbxiXXO+2l5
 /eqjjpTiO8sWZDbBPro21r9Q4xGrqOX3KUutOwBykvJnPtW0yIIAT98+g
 374NAk4Hg8FBQb9mwjI7eABDzEaNQ75vsWX1SunnT1GdyCN+QC1OKEiGj
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P2MmTJ2P
Subject: [Intel-wired-lan] [linux-next:master] BUILD REGRESSION
 df964ce9ef9fea10cf131bf6bad8658fde7956f6
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
 amd-gfx@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 patches@opensource.cirrus.com, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: df964ce9ef9fea10cf131bf6bad8658fde7956f6  Add linux-next specific files for 20230929

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202309122047.cRi9yJrq-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309130213.mSR7X2jZ-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309192154.NJNpFIy5-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309192314.VBsjiIm5-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309212121.cul1pTRa-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309212339.hxhBu2F1-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309290750.bYBcf6Q2-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

aarch64-linux-ld: ice_dpll.c:(.text+0x1124): undefined reference to `ice_cgu_get_pin_type'
aarch64-linux-ld: ice_dpll.c:(.text+0x122c): undefined reference to `ice_cgu_get_pin_freq_supp'
aarch64-linux-ld: ice_dpll.c:(.text+0xaa0): undefined reference to `ice_cgu_get_pin_name'
aarch64-linux-ld: ice_dpll.c:(.text+0xab4): undefined reference to `ice_cgu_get_pin_type'
aarch64-linux-ld: ice_lib.c:(.text+0x6064): undefined reference to `ice_is_cgu_present'
aarch64-linux-ld: ice_lib.c:(.text+0x6070): undefined reference to `ice_is_clock_mux_present_e810t'
arc-elf-ld: xfrm_algo.c:(.text+0x46c): undefined reference to `crypto_has_aead'
arm-linux-gnueabi-ld: drivers/net/ethernet/intel/ice/ice_dpll.c:1647:(.text+0x34a4): undefined reference to `ice_cgu_get_pin_type'
arm-linux-gnueabi-ld: drivers/net/ethernet/intel/ice/ice_dpll.c:1666:(.text+0x3704): undefined reference to `ice_cgu_get_pin_freq_supp'
arm-linux-gnueabi-ld: drivers/net/ethernet/intel/ice/ice_lib.c:3998:(.text+0x166b0): undefined reference to `ice_is_cgu_present'
arm-linux-gnueabi-ld: drivers/net/ethernet/intel/ice/ice_lib.c:4000:(.text+0x16734): undefined reference to `ice_is_clock_mux_present_e810t'
drivers/cpufreq/sti-cpufreq.c:215:50: warning: '%d' directive output may be truncated writing between 1 and 10 bytes into a region of size 2 [-Wformat-truncation=]
drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c:3928: warning: Function parameter or member 'srf_updates' not described in 'could_mpcc_tree_change_for_active_pipes'
drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c:194:29: warning: variable 'tx_buf' set but not used [-Wunused-but-set-variable]
fs/bcachefs/bcachefs_format.h:215:25: warning: 'p' offset 3 in 'struct bkey' isn't aligned to 4 [-Wpacked-not-aligned]
fs/bcachefs/bcachefs_format.h:217:25: warning: 'version' offset 27 in 'struct bkey' isn't aligned to 4 [-Wpacked-not-aligned]
ice_dpll.c:(.text+0x1104): undefined reference to `ice_cgu_get_pin_name'
ice_dpll.c:(.text+0x15b4): undefined reference to `ice_get_cgu_state'
ice_dpll.c:(.text+0x1ea0): undefined reference to `ice_get_cgu_rclk_pin_info'
ice_dpll.c:(.text+0x2754): undefined reference to `ice_get_cgu_rclk_pin_info'
ice_dpll.c:(.text+0xa64): undefined reference to `ice_cgu_get_pin_freq_supp'
ice_dpll.c:(.text+0xe84): undefined reference to `ice_get_cgu_state'
ice_lib.c:(.text+0x604c): undefined reference to `ice_is_phy_rclk_present'
include/linux/fortify-string.h:57:33: warning: writing 8 bytes into a region of size 0 [-Wstringop-overflow=]
kernel/bpf/helpers.c:1906:19: warning: no previous declaration for 'bpf_percpu_obj_new_impl' [-Wmissing-declarations]
kernel/bpf/helpers.c:1942:18: warning: no previous declaration for 'bpf_percpu_obj_drop_impl' [-Wmissing-declarations]
kernel/bpf/helpers.c:2477:18: warning: no previous declaration for 'bpf_throw' [-Wmissing-declarations]
ld.lld: error: undefined symbol: crypto_has_aead
ld: drivers/net/ethernet/intel/ice/ice_dpll.c:1647: undefined reference to `ice_cgu_get_pin_type'
riscv64-linux-ld: drivers/net/ethernet/intel/ice/ice_dpll.c:1062:(.text+0x1236): undefined reference to `ice_get_cgu_state'
riscv64-linux-ld: drivers/net/ethernet/intel/ice/ice_dpll.c:1667:(.text+0xdea): undefined reference to `ice_cgu_get_pin_name'
riscv64-linux-ld: drivers/net/ethernet/intel/ice/ice_dpll.c:1777:(.text+0x24aa): undefined reference to `ice_get_cgu_rclk_pin_info'
sound/pci/hda/cirrus_scodec_test.c:151:60: error: initializer element is not a compile-time constant
sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c:44:50: warning: '%d' directive output may be truncated writing between 1 and 11 bytes into a region of size 10 [-Wformat-truncation=]
xfrm_algo.c:(.text+0x46c): undefined reference to `crypto_has_aead'

Unverified Error/Warning (likely false positive, please contact us if interested):

Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml:
mm/shrinker.c:100:1-7: preceding lock on line 83
sound/pci/hda/cs35l41_hda.c:1559 cs35l41_hda_probe() warn: passing zero to 'dev_err_probe'
{standard input}:1247: Error: unknown pseudo-op: `.sho'
{standard input}:1468: Error: unknown .loc sub-directive `is_'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- arc-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- arc-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- arc-defconfig
|   |-- arc-elf-ld:xfrm_algo.c:(.text):undefined-reference-to-crypto_has_aead
|   `-- xfrm_algo.c:(.text):undefined-reference-to-crypto_has_aead
|-- arm-allmodconfig
|   |-- drivers-cpufreq-sti-cpufreq.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   `-- sound-soc-mediatek-mt2701-mt2701-afe-clock-ctrl.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- arm-allyesconfig
|   |-- drivers-cpufreq-sti-cpufreq.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   `-- sound-soc-mediatek-mt2701-mt2701-afe-clock-ctrl.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- arm-randconfig-r012-20220815
|   |-- arm-linux-gnueabi-ld:drivers-net-ethernet-intel-ice-ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_freq_supp
|   |-- arm-linux-gnueabi-ld:drivers-net-ethernet-intel-ice-ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_type
|   |-- arm-linux-gnueabi-ld:drivers-net-ethernet-intel-ice-ice_lib.c:(.text):undefined-reference-to-ice_is_cgu_present
|   `-- arm-linux-gnueabi-ld:drivers-net-ethernet-intel-ice-ice_lib.c:(.text):undefined-reference-to-ice_is_clock_mux_present_e810t
|-- arm64-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|   `-- sound-soc-mediatek-mt2701-mt2701-afe-clock-ctrl.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- arm64-randconfig-001-20230929
|   |-- aarch64-linux-ld:ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_name
|   |-- aarch64-linux-ld:ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_type
|   |-- aarch64-linux-ld:ice_lib.c:(.text):undefined-reference-to-ice_is_cgu_present
|   |-- aarch64-linux-ld:ice_lib.c:(.text):undefined-reference-to-ice_is_clock_mux_present_e810t
|   |-- ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_freq_supp
|   |-- ice_dpll.c:(.text):undefined-reference-to-ice_get_cgu_rclk_pin_info
|   |-- ice_dpll.c:(.text):undefined-reference-to-ice_get_cgu_state
|   `-- ice_lib.c:(.text):undefined-reference-to-ice_is_phy_rclk_present
|-- arm64-randconfig-002-20230927
|   |-- aarch64-linux-ld:ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_freq_supp
|   |-- aarch64-linux-ld:ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_type
|   |-- ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_name
|   |-- ice_dpll.c:(.text):undefined-reference-to-ice_get_cgu_rclk_pin_info
|   `-- ice_dpll.c:(.text):undefined-reference-to-ice_get_cgu_state
|-- csky-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- csky-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- i386-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- i386-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- i386-buildonly-randconfig-005-20230929
|   |-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_percpu_obj_drop_impl
|   |-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_percpu_obj_new_impl
|   `-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_throw
|-- i386-randconfig-006-20230929
|   |-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_percpu_obj_drop_impl
|   |-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_percpu_obj_new_impl
|   `-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_throw
|-- i386-randconfig-a014-20211211
|   `-- ld:drivers-net-ethernet-intel-ice-ice_dpll.c:undefined-reference-to-ice_cgu_get_pin_type
|-- loongarch-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- loongarch-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- loongarch-defconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- loongarch-randconfig-001-20230929
|   |-- Documentation-devicetree-bindings-mfd-qcom-pm8xxx.yaml:
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- loongarch-randconfig-002-20230929
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- m68k-allmodconfig
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- m68k-allyesconfig
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- microblaze-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- microblaze-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- mips-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- mips-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- openrisc-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- openrisc-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- parisc-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- parisc-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- powerpc-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   `-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|-- powerpc-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   `-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|-- powerpc-randconfig-001-20230929
|   |-- drivers-net-ethernet-intel-idpf-idpf_singleq_txrx.c:warning:variable-tx_buf-set-but-not-used
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- powerpc-randconfig-003-20230929
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- riscv-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- riscv-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- riscv-buildonly-randconfig-r001-20221205
|   |-- riscv64-linux-ld:drivers-net-ethernet-intel-ice-ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_name
|   |-- riscv64-linux-ld:drivers-net-ethernet-intel-ice-ice_dpll.c:(.text):undefined-reference-to-ice_get_cgu_rclk_pin_info
|   `-- riscv64-linux-ld:drivers-net-ethernet-intel-ice-ice_dpll.c:(.text):undefined-reference-to-ice_get_cgu_state
|-- s390-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   `-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|-- s390-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   `-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|-- sh-randconfig-r011-20230418
|   `-- standard-input:Error:unknown-pseudo-op:sho
|-- sh-randconfig-r032-20230410
|   `-- standard-input:Error:unknown-.loc-sub-directive-is_
|-- sparc-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- sparc-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- sparc-randconfig-001-20230929
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- sparc64-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- sparc64-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- sparc64-randconfig-002-20230929
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- x86_64-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   `-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|-- x86_64-buildonly-randconfig-005-20230929
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- x86_64-randconfig-015-20230929
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- x86_64-randconfig-071-20230929
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- x86_64-randconfig-076-20230929
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- x86_64-randconfig-103-20230927
|   `-- mm-shrinker.c:preceding-lock-on-line
|-- x86_64-randconfig-161-20230929
|   `-- sound-pci-hda-cs35l41_hda.c-cs35l41_hda_probe()-warn:passing-zero-to-dev_err_probe
`-- xtensa-randconfig-002-20230929
    `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
clang_recent_errors
|-- arm-ep93xx_defconfig
|   `-- ld.lld:error:undefined-symbol:crypto_has_aead
`-- hexagon-allmodconfig
    `-- sound-pci-hda-cirrus_scodec_test.c:error:initializer-element-is-not-a-compile-time-constant

elapsed time: 1457m

configs tested: 134
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230929   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230929   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230929   gcc  
i386         buildonly-randconfig-002-20230929   gcc  
i386         buildonly-randconfig-003-20230929   gcc  
i386         buildonly-randconfig-004-20230929   gcc  
i386         buildonly-randconfig-005-20230929   gcc  
i386         buildonly-randconfig-006-20230929   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230929   gcc  
i386                  randconfig-002-20230929   gcc  
i386                  randconfig-003-20230929   gcc  
i386                  randconfig-004-20230929   gcc  
i386                  randconfig-005-20230929   gcc  
i386                  randconfig-006-20230929   gcc  
i386                  randconfig-011-20230929   gcc  
i386                  randconfig-012-20230929   gcc  
i386                  randconfig-013-20230929   gcc  
i386                  randconfig-014-20230929   gcc  
i386                  randconfig-015-20230929   gcc  
i386                  randconfig-016-20230929   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230929   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230929   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230929   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230929   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230929   gcc  
x86_64       buildonly-randconfig-002-20230929   gcc  
x86_64       buildonly-randconfig-003-20230929   gcc  
x86_64       buildonly-randconfig-004-20230929   gcc  
x86_64       buildonly-randconfig-005-20230929   gcc  
x86_64       buildonly-randconfig-006-20230929   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230929   gcc  
x86_64                randconfig-002-20230929   gcc  
x86_64                randconfig-003-20230929   gcc  
x86_64                randconfig-004-20230929   gcc  
x86_64                randconfig-005-20230929   gcc  
x86_64                randconfig-006-20230929   gcc  
x86_64                randconfig-011-20230929   gcc  
x86_64                randconfig-012-20230929   gcc  
x86_64                randconfig-013-20230929   gcc  
x86_64                randconfig-014-20230929   gcc  
x86_64                randconfig-015-20230929   gcc  
x86_64                randconfig-016-20230929   gcc  
x86_64                randconfig-071-20230929   gcc  
x86_64                randconfig-072-20230929   gcc  
x86_64                randconfig-073-20230929   gcc  
x86_64                randconfig-074-20230929   gcc  
x86_64                randconfig-075-20230929   gcc  
x86_64                randconfig-076-20230929   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
