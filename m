Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE89D7B0AEA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 19:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A27742C30;
	Wed, 27 Sep 2023 17:12:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A27742C30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695834767;
	bh=p3l5NkSv97mwhwd70pgMe9AsvVtCi0V5cvPA5nyQ5Yw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SWAsc6yFNtM3gBGD+sUozsa0qyEI0+AbAwx6bCN2qymPN0M42cj4N8YcauOuKyNkO
	 AZxlyvKhQVWzZBYrqYl0bcsjQxgd8pavxHg2nirYjiXoh3s2mILA5f5UHk5bBRwltT
	 NVMGOqod74b568UrKoZBMUacI++EHzRiVVXIoJxfUe/u9nB+P0I4xEuoc+ivTrRM0I
	 E3hkKubRZHVBGK4YTV5NRiFjT9JGBVL4vejtahIEtb3H8Ij3ixHpV86yo+UAqnZmag
	 XBQRwq29cqPjQc/nnzUa34CU4WqN/u+xv0TAv3nSf/0eOpS0LBW/3lhEjDZ1naIQoY
	 Ad0VaAU0ZXhAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUG-I-3hUm92; Wed, 27 Sep 2023 17:12:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9BF242C2B;
	Wed, 27 Sep 2023 17:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9BF242C2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32D021BF591
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 17:12:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06623838C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 17:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06623838C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DT2qjV2qVs0k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 17:12:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99D7283896
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 17:12:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99D7283896
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="412791681"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="412791681"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 10:12:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="996230390"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="996230390"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 27 Sep 2023 10:12:28 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qlY5K-0000Tm-1e;
 Wed, 27 Sep 2023 17:12:26 +0000
Date: Thu, 28 Sep 2023 01:11:53 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <202309280124.SI9BbMdm-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695834753; x=1727370753;
 h=date:from:to:cc:subject:message-id;
 bh=NCPXOhbStnUCYoUTamnFtenQS2tvh4Y3G22bNsdxLoM=;
 b=YgTk6NxiGnbYQimYIZIEE4TZLVHuv3Yz9cLO/BUMoN6gJ6OnOz1RToW6
 EDcIJKITqaswg9LvEnhhAv0OEBl6i/qy+rwWi+V/kRKmjLHCJ7bHKQv/7
 Z5ZikO7phfhgiFAiKeFLJA42Uy31V2XI+iFMyLJsjmAr8D2Vv/ZPVsDqz
 Q5WwohMkM1y7JAY6MVVS2z8ncuLOt91QsjkAYKJMWdPjvvEemI0Gina+Z
 j1HaCHFolmdc5Btr2e1bW2t7nWpIHs9Ajbs52/DaExLQN2VndeyGvNhou
 gQqgHTR+DsTQFv8/DJp4MLR9OmzmFksv4D4G1wjJZT9aKau7qpKXPvBd9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YgTk6Nxi
Subject: [Intel-wired-lan] [linux-next:master] BUILD REGRESSION
 18030226a48de1fbfabf4ae16aaa2695a484254f
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
Cc: alsa-devel@alsa-project.org, linux-net-drivers@amd.com,
 linux-arm-msm@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: 18030226a48de1fbfabf4ae16aaa2695a484254f  Add linux-next specific files for 20230927

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202308282000.2XNh0K6D-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202308301211.2HHbgs2N-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202308301542.li3KHkJl-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309122047.cRi9yJrq-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309130213.mSR7X2jZ-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309192154.NJNpFIy5-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309192314.VBsjiIm5-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309212121.cul1pTRa-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309212339.hxhBu2F1-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202309271719.sXq960r2-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

aarch64-linux-ld: ice_dpll.c:(.text+0x1124): undefined reference to `ice_cgu_get_pin_type'
aarch64-linux-ld: ice_dpll.c:(.text+0x122c): undefined reference to `ice_cgu_get_pin_freq_supp'
aarch64-linux-ld: ice_lib.c:(.text+0x85a0): undefined reference to `ice_is_cgu_present'
aarch64-linux-ld: ice_lib.c:(.text+0x85d0): undefined reference to `ice_is_clock_mux_present_e810t'
arc-elf-ld: xfrm_algo.c:(.text+0x46c): undefined reference to `crypto_has_aead'
arch/x86/include/asm/string_32.h:150:25: warning: '__builtin_memcpy' writing 3 bytes into a region of size 0 overflows the destination [-Wstringop-overflow=]
drivers/cpufreq/sti-cpufreq.c:215:50: warning: '%d' directive output may be truncated writing between 1 and 10 bytes into a region of size 2 [-Wformat-truncation=]
drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c:3928: warning: Function parameter or member 'srf_updates' not described in 'could_mpcc_tree_change_for_active_pipes'
drivers/net/ethernet/intel/ice/ice_dpll.c:1066: undefined reference to `ice_get_cgu_state'
drivers/net/ethernet/intel/ice/ice_dpll.c:1666: undefined reference to `ice_cgu_get_pin_freq_supp'
drivers/net/ethernet/intel/ice/ice_dpll.c:1802: undefined reference to `ice_get_cgu_rclk_pin_info'
drivers/net/ethernet/intel/ice/ice_lib.c:3992: undefined reference to `ice_is_phy_rclk_present'
drivers/net/ethernet/sfc/ethtool_common.c:278:32: warning: '%-24s' directive output may be truncated writing between 24 and 31 bytes into a region of size 25 [-Wformat-truncation=]
drivers/net/ethernet/sfc/falcon/ethtool.c:229:32: warning: '%-24s' directive output may be truncated writing between 24 and 31 bytes into a region of size 25 [-Wformat-truncation=]
drivers/net/ethernet/sfc/siena/ethtool_common.c:229:32: warning: '%-24s' directive output may be truncated writing between 24 and 31 bytes into a region of size 25 [-Wformat-truncation=]
fs/bcachefs/bcachefs_format.h:215:25: warning: 'p' offset 3 in 'struct bkey' isn't aligned to 4 [-Wpacked-not-aligned]
fs/bcachefs/bcachefs_format.h:217:25: warning: 'version' offset 27 in 'struct bkey' isn't aligned to 4 [-Wpacked-not-aligned]
fs/proc/task_mmu.c:2105:3: error: implicit declaration of function 'pagemap_scan_backout_range'; did you mean 'pagemap_scan_push_range'? [-Werror=implicit-function-declaration]
ice_dpll.c:(.text+0x1104): undefined reference to `ice_cgu_get_pin_name'
ice_dpll.c:(.text+0x15b4): undefined reference to `ice_get_cgu_state'
ice_dpll.c:(.text+0x2758): undefined reference to `ice_get_cgu_rclk_pin_info'
ice_lib.c:(.text+0x855c): undefined reference to `ice_is_phy_rclk_present'
include/linux/fortify-string.h:57:33: warning: writing 8 bytes into a region of size 0 [-Wstringop-overflow=]
include/linux/fortify-string.h:65:33: warning: '__builtin_strcpy' source argument is the same as destination [-Wrestrict]
include/linux/netlink.h:116:13: warning: ') out of range, only support...' directive output truncated writing 60 bytes into a region of size between 46 and 55 [-Wformat-truncation=]
include/linux/netlink.h:116:13: warning: 'sfc: Unsupported: only suppo...' directive output truncated writing 104 bytes into a region of size 80 [-Wformat-truncation=]
include/linux/netlink.h:116:6: warning: ') out of range, only support...' directive output truncated writing 60 bytes into a region of size between 46 and 55 [-Wformat-truncation=]
include/linux/netlink.h:116:6: warning: 'sfc: Unsupported: only suppo...' directive output truncated writing 104 bytes into a region of size 80 [-Wformat-truncation=]
kernel/bpf/helpers.c:1906:19: warning: no previous declaration for 'bpf_percpu_obj_new_impl' [-Wmissing-declarations]
kernel/bpf/helpers.c:1942:18: warning: no previous declaration for 'bpf_percpu_obj_drop_impl' [-Wmissing-declarations]
kernel/bpf/helpers.c:2477:18: warning: no previous declaration for 'bpf_throw' [-Wmissing-declarations]
ld: drivers/net/ethernet/intel/ice/ice_dpll.c:1646: undefined reference to `ice_cgu_get_pin_name'
ld: drivers/net/ethernet/intel/ice/ice_dpll.c:1647: undefined reference to `ice_cgu_get_pin_type'
ld: drivers/net/ethernet/intel/ice/ice_lib.c:3997: undefined reference to `ice_is_cgu_present'
ld: drivers/net/ethernet/intel/ice/ice_lib.c:3999: undefined reference to `ice_is_clock_mux_present_e810t'
sound/soc/mediatek/mt2701/mt2701-afe-clock-ctrl.c:44:50: warning: '%d' directive output may be truncated writing between 1 and 11 bytes into a region of size 10 [-Wformat-truncation=]
xfrm_algo.c:(.text+0x46c): undefined reference to `crypto_has_aead'

Unverified Error/Warning (likely false positive, please contact us if interested):

Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml:
drivers/staging/vme_user/vme.c:867:7-16: ERROR: iterator variable bound on line 866 cannot be NULL
drivers/staging/vme_user/vme.c:899:13-22: ERROR: invalid reference to the index variable of the iterator on line 866

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
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
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   |-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|   `-- sound-soc-mediatek-mt2701-mt2701-afe-clock-ctrl.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- arm-allyesconfig
|   |-- drivers-cpufreq-sti-cpufreq.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   |-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|   `-- sound-soc-mediatek-mt2701-mt2701-afe-clock-ctrl.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- arm64-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|   `-- sound-soc-mediatek-mt2701-mt2701-afe-clock-ctrl.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- arm64-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|   `-- sound-soc-mediatek-mt2701-mt2701-afe-clock-ctrl.c:warning:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- arm64-randconfig-002-20230927
|   |-- aarch64-linux-ld:ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_freq_supp
|   |-- aarch64-linux-ld:ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_type
|   |-- aarch64-linux-ld:ice_lib.c:(.text):undefined-reference-to-ice_is_cgu_present
|   |-- aarch64-linux-ld:ice_lib.c:(.text):undefined-reference-to-ice_is_clock_mux_present_e810t
|   |-- ice_dpll.c:(.text):undefined-reference-to-ice_cgu_get_pin_name
|   |-- ice_dpll.c:(.text):undefined-reference-to-ice_get_cgu_rclk_pin_info
|   |-- ice_dpll.c:(.text):undefined-reference-to-ice_get_cgu_state
|   |-- ice_lib.c:(.text):undefined-reference-to-ice_is_phy_rclk_present
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- csky-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- csky-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- i386-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- i386-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- i386-buildonly-randconfig-002-20230927
|   |-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_percpu_obj_drop_impl
|   |-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_percpu_obj_new_impl
|   `-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_throw
|-- i386-buildonly-randconfig-006-20230927
|   `-- arch-x86-include-asm-string_32.h:warning:__builtin_memcpy-writing-bytes-into-a-region-of-size-overflows-the-destination
|-- i386-randconfig-001-20230927
|   |-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_percpu_obj_drop_impl
|   |-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_percpu_obj_new_impl
|   `-- kernel-bpf-helpers.c:warning:no-previous-declaration-for-bpf_throw
|-- i386-randconfig-003-20230927
|   `-- fs-proc-task_mmu.c:error:implicit-declaration-of-function-pagemap_scan_backout_range
|-- i386-randconfig-051-20230927
|   |-- drivers-staging-vme_user-vme.c:ERROR:invalid-reference-to-the-index-variable-of-the-iterator-on-line
|   `-- drivers-staging-vme_user-vme.c:ERROR:iterator-variable-bound-on-line-cannot-be-NULL
|-- loongarch-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- drivers-net-ethernet-sfc-ethtool_common.c:warning:24s-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-net-ethernet-sfc-falcon-ethtool.c:warning:24s-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-net-ethernet-sfc-siena-ethtool_common.c:warning:24s-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- loongarch-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- drivers-net-ethernet-sfc-ethtool_common.c:warning:24s-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-net-ethernet-sfc-falcon-ethtool.c:warning:24s-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- drivers-net-ethernet-sfc-siena-ethtool_common.c:warning:24s-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- loongarch-defconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- loongarch-randconfig-001-20230927
|   |-- Documentation-devicetree-bindings-mfd-qcom-pm8xxx.yaml:
|   |-- drivers-net-ethernet-sfc-ethtool_common.c:warning:24s-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   `-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|-- m68k-allmodconfig
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- m68k-allyesconfig
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   `-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|-- microblaze-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- microblaze-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
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
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- openrisc-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- parisc-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- parisc-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- powerpc-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- powerpc-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- powerpc-randconfig-003-20230927
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- riscv-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- riscv-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- s390-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- s390-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- sparc-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- sparc-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- sparc64-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- sparc64-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- fs-bcachefs-bcachefs_format.h:warning:p-offset-in-struct-bkey-isn-t-aligned-to
|   |-- fs-bcachefs-bcachefs_format.h:warning:version-offset-in-struct-bkey-isn-t-aligned-to
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- sparc64-randconfig-001-20230927
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- x86_64-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|   |-- include-linux-fortify-string.h:warning:writing-bytes-into-a-region-of-size
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- x86_64-buildonly-randconfig-004-20230927
|   `-- include-linux-fortify-string.h:warning:__builtin_strcpy-source-argument-is-the-same-as-destination
|-- x86_64-buildonly-randconfig-005-20230927
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- x86_64-randconfig-014-20230927
|   |-- include-linux-netlink.h:warning:)-out-of-range-only-support...-directive-output-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- include-linux-netlink.h:warning:sfc:Unsupported:only-suppo...-directive-output-truncated-writing-bytes-into-a-region-of-size
|-- x86_64-randconfig-071-20230927
|   |-- drivers-net-ethernet-intel-ice-ice_dpll.c:undefined-reference-to-ice_cgu_get_pin_freq_supp
|   |-- drivers-net-ethernet-intel-ice-ice_dpll.c:undefined-reference-to-ice_get_cgu_rclk_pin_info
|   |-- drivers-net-ethernet-intel-ice-ice_dpll.c:undefined-reference-to-ice_get_cgu_state
|   |-- drivers-net-ethernet-intel-ice-ice_lib.c:undefined-reference-to-ice_is_phy_rclk_present
|   |-- ld:drivers-net-ethernet-intel-ice-ice_dpll.c:undefined-reference-to-ice_cgu_get_pin_name
|   |-- ld:drivers-net-ethernet-intel-ice-ice_dpll.c:undefined-reference-to-ice_cgu_get_pin_type
|   |-- ld:drivers-net-ethernet-intel-ice-ice_lib.c:undefined-reference-to-ice_is_cgu_present
|   `-- ld:drivers-net-ethernet-intel-ice-ice_lib.c:undefined-reference-to-ice_is_clock_mux_present_e810t
|-- x86_64-randconfig-073-20230927
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
|-- x86_64-randconfig-076-20230927
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes
`-- xtensa-randconfig-002-20230927
    `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-core-dc.c:warning:Function-parameter-or-member-srf_updates-not-described-in-could_mpcc_tree_change_for_active_pipes

elapsed time: 737m

configs tested: 135
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230927   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230927   gcc  
arm64                            allmodconfig   gcc  
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
i386         buildonly-randconfig-001-20230927   gcc  
i386         buildonly-randconfig-002-20230927   gcc  
i386         buildonly-randconfig-003-20230927   gcc  
i386         buildonly-randconfig-004-20230927   gcc  
i386         buildonly-randconfig-005-20230927   gcc  
i386         buildonly-randconfig-006-20230927   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230927   gcc  
i386                  randconfig-002-20230927   gcc  
i386                  randconfig-003-20230927   gcc  
i386                  randconfig-004-20230927   gcc  
i386                  randconfig-005-20230927   gcc  
i386                  randconfig-006-20230927   gcc  
i386                  randconfig-011-20230927   gcc  
i386                  randconfig-012-20230927   gcc  
i386                  randconfig-013-20230927   gcc  
i386                  randconfig-014-20230927   gcc  
i386                  randconfig-015-20230927   gcc  
i386                  randconfig-016-20230927   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230927   gcc  
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
riscv                 randconfig-001-20230927   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230927   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230927   gcc  
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
x86_64       buildonly-randconfig-001-20230927   gcc  
x86_64       buildonly-randconfig-002-20230927   gcc  
x86_64       buildonly-randconfig-003-20230927   gcc  
x86_64       buildonly-randconfig-004-20230927   gcc  
x86_64       buildonly-randconfig-005-20230927   gcc  
x86_64       buildonly-randconfig-006-20230927   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230927   gcc  
x86_64                randconfig-002-20230927   gcc  
x86_64                randconfig-003-20230927   gcc  
x86_64                randconfig-004-20230927   gcc  
x86_64                randconfig-005-20230927   gcc  
x86_64                randconfig-006-20230927   gcc  
x86_64                randconfig-011-20230927   gcc  
x86_64                randconfig-012-20230927   gcc  
x86_64                randconfig-013-20230927   gcc  
x86_64                randconfig-014-20230927   gcc  
x86_64                randconfig-015-20230927   gcc  
x86_64                randconfig-016-20230927   gcc  
x86_64                randconfig-071-20230927   gcc  
x86_64                randconfig-072-20230927   gcc  
x86_64                randconfig-073-20230927   gcc  
x86_64                randconfig-074-20230927   gcc  
x86_64                randconfig-075-20230927   gcc  
x86_64                randconfig-076-20230927   gcc  
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

