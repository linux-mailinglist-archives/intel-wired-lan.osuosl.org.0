Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F345B3913
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Sep 2022 15:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7E0C41BAE;
	Fri,  9 Sep 2022 13:35:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7E0C41BAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662730536;
	bh=M9QBve5P+oYvQtu7wJvI+CU9KfCKlu9sKvrfU64nkLA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Xf07nIfKwDdeYsq3HEAD3mVX0g0qt4a+68l16Rgt8pV/W0Fd12BCG5YnF/2vf86fp
	 YuqFAGcACHDIHH4vxhQ3gnSxZxms3A/T3EtauwcwmZjqEWV8NjmD1W6D2bjb4oMZuK
	 ccnj2OmCpBwtfObago/zOUFHD9XAZcqgyTpDP/sD2YyZ+7PAq9Yu8KmNkI7P5m8/KB
	 E1zaoIDcTBWvBMXLgL5B/CQ7N6w1/QyAL5ZuFEM0bZJoKVLoqwYso6c69ecDZjnsK1
	 myKPGK3dLpMgPoUJADa0TvNAgMfjiOdiiTaGuI6qkSXaQM4tgY4lm6cTVW59saKOfN
	 U8Ar3IBcm4PzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BHs7QyMsMagU; Fri,  9 Sep 2022 13:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DCE541B88;
	Fri,  9 Sep 2022 13:35:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DCE541B88
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E49F21BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 13:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CBF6E6FAFA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 13:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBF6E6FAFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BhYWiRIZGWes for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Sep 2022 13:35:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B4DB6104D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B4DB6104D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 13:35:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="284492359"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="284492359"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 06:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="648440975"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 09 Sep 2022 06:35:25 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWeAH-0001Eg-0b;
 Fri, 09 Sep 2022 13:35:25 +0000
Date: Fri, 09 Sep 2022 21:34:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <631b40f3.Snpj18lPNrTW2MCA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662730527; x=1694266527;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=PZbbwa89EW7EVZ97oIHmEFZQEQd5HC1hOS2YbwFvXH0=;
 b=GmtCMler0uo3CJVD+rFBJrRL7egeICeA0YS1lmTVrNXlEEjy0pbxri7d
 bUuxOfPTXYmU9AGE+IzIWGmumoHMK5h+lLCjKZpUV3jDafLanH0mBIkG8
 fs64kuZ6kMvI/40DhS43GQILx0jkl74beXmlW4a8erNY8dLci32qwxwpy
 GpXkd2oLLkXaKHuaBiUUzagBv5ZMJ53xToT9hMvwFFXxNtSKXop3IajBb
 QreDL0wCoWQ9e+bAsAMl/nCqmBVAYuqCId4jOYkhgTmowUWJFnaSWC4Ng
 pmSyo5r/N9LYf04jr1LO6mqx2E1hBB6DitbZLX0hIGQYG6Jey5K0uMikG
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GmtCMler
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 a813f8aec6933888407b1d8705100eda249652dc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: a813f8aec6933888407b1d8705100eda249652dc  i40e: Fix ethtool rx-flow-hash setting for X722

elapsed time: 1097m

configs tested: 142
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                              defconfig
m68k                             allmodconfig
x86_64                               rhel-8.3
arc                              allyesconfig
alpha                            allyesconfig
x86_64                           allyesconfig
m68k                             allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                             allyesconfig
i386                                defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                      ppc40x_defconfig
mips                      loongson3_defconfig
sh                         apsh4a3a_defconfig
parisc                           alldefconfig
sh                            migor_defconfig
openrisc                            defconfig
arc                    vdk_hs38_smp_defconfig
sh                         microdev_defconfig
mips                           xway_defconfig
sh                     magicpanelr2_defconfig
sparc64                          alldefconfig
arm                         nhk8815_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
mips                     decstation_defconfig
powerpc                     stx_gp3_defconfig
sh                          sdk7780_defconfig
arm                      footbridge_defconfig
arm                        realview_defconfig
m68k                       m5275evb_defconfig
parisc                           allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                             pxa_defconfig
arc                              alldefconfig
arm                           u8500_defconfig
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a001
arc                  randconfig-r043-20220908
arc                  randconfig-r043-20220907
s390                 randconfig-r044-20220908
riscv                randconfig-r042-20220908
sh                             shx3_defconfig
xtensa                              defconfig
mips                    maltaup_xpa_defconfig
mips                  maltasmvp_eva_defconfig
sh                        edosk7705_defconfig
m68k                          multi_defconfig
sh                             espt_defconfig
m68k                          atari_defconfig
m68k                       m5475evb_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                     tqm8548_defconfig
mips                            ar7_defconfig
mips                         rt305x_defconfig
arc                      axs103_smp_defconfig
openrisc                    or1ksim_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
i386                             alldefconfig
arm                        mini2440_defconfig
sh                            shmin_defconfig
powerpc                        cell_defconfig
mips                 decstation_r4k_defconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
ia64                             allmodconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220908

clang tested configs:
x86_64                        randconfig-k001
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
riscv                randconfig-r042-20220907
hexagon              randconfig-r041-20220907
hexagon              randconfig-r045-20220907
s390                 randconfig-r044-20220907
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
mips                           mtx1_defconfig
powerpc                        fsp2_defconfig
powerpc                 mpc8272_ads_defconfig
mips                        qi_lb60_defconfig
arm                          pcm027_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r041-20220908
hexagon              randconfig-r045-20220908
mips                          ath79_defconfig
powerpc                     ppa8548_defconfig
mips                           ip22_defconfig
riscv                randconfig-r042-20220909
hexagon              randconfig-r041-20220909
hexagon              randconfig-r045-20220909
s390                 randconfig-r044-20220909
arm                       spear13xx_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                         palmz72_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
