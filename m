Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DDE4F2960
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Apr 2022 11:16:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EA5760D79;
	Tue,  5 Apr 2022 09:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MazjUgXhcPhk; Tue,  5 Apr 2022 09:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 760F960BE4;
	Tue,  5 Apr 2022 09:16:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3ED6D1BF330
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 09:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B3A740928
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 09:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jfPU3TKSkJpU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Apr 2022 09:15:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6B57408C1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 09:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649150156; x=1680686156;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=2+qeAmK8gOPxX7Rx91pRbBwD9omgR2joEcxpIZh4stE=;
 b=ZF84envYLvrVo96OXzFXd6WZtt93e+eDgZz5imXo2LXDulBzz5x9qGab
 ccchZd3zgsHMNDIsXnlsbhHXbHs86UgjabneRtKBq1kifPPmbJvOZChmi
 ysv205SjuQaYN07Nvc7x7A0AtQHmvkdQGjBL1aw50D3bCpmdjB8nxse1z
 s53Ja7bMKGIZodakr/Q+CXulvsXtycN4iabR352WkYOUouPizH6jrHtTJ
 G/5dMgYNC/eFPosvAvUmcig0R0UbtmzlYjZGO+fp73wf6kHosOv9neoFm
 ly7x8UBsYuzXPE8WiJ8EWDApOk2C1zr8GaZ5IDgAaw7zjtI19PoubN9Nx Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="240641253"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="240641253"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 02:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="569799151"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 05 Apr 2022 02:15:55 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nbfI2-0002ux-9w;
 Tue, 05 Apr 2022 09:15:54 +0000
Date: Tue, 05 Apr 2022 17:15:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <624c0898.sU4YVr/pk/gvYo3b%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 2e828c2cac48932808c1e9527c77ca150dc05053
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 2e828c2cac48932808c1e9527c77ca150dc05053  ice: Do not skip not enabled queues in ice_vc_dis_qs_msg

elapsed time: 830m

configs tested: 130
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                         s3c6400_defconfig
mips                         db1xxx_defconfig
openrisc                 simple_smp_defconfig
arm                         at91_dt_defconfig
arm                         lpc18xx_defconfig
sh                           se7343_defconfig
sh                         ap325rxa_defconfig
arm                       imx_v6_v7_defconfig
arc                        vdk_hs38_defconfig
sh                           se7751_defconfig
m68k                       m5475evb_defconfig
arc                           tb10x_defconfig
sh                          sdk7786_defconfig
powerpc                        cell_defconfig
powerpc                      chrp32_defconfig
csky                             alldefconfig
mips                    maltaup_xpa_defconfig
arm                           stm32_defconfig
powerpc                     pq2fads_defconfig
powerpc                 mpc837x_mds_defconfig
ia64                          tiger_defconfig
powerpc                     stx_gp3_defconfig
parisc                           alldefconfig
powerpc                  storcenter_defconfig
powerpc                      tqm8xx_defconfig
mips                       capcella_defconfig
mips                     loongson1b_defconfig
arm                          pxa910_defconfig
openrisc                  or1klitex_defconfig
mips                           jazz_defconfig
sh                ecovec24-romimage_defconfig
sh                     magicpanelr2_defconfig
sh                        edosk7760_defconfig
powerpc                  iss476-smp_defconfig
sh                           se7750_defconfig
powerpc                      pcm030_defconfig
sh                  sh7785lcr_32bit_defconfig
xtensa                generic_kc705_defconfig
m68k                       m5249evb_defconfig
m68k                       m5275evb_defconfig
sh                     sh7710voipgw_defconfig
powerpc                      pasemi_defconfig
powerpc                      arches_defconfig
i386                                defconfig
sh                            migor_defconfig
sh                 kfr2r09-romimage_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220405
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
sparc                            allyesconfig
i386                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
i386                          randconfig-c001
powerpc              randconfig-c003-20220405
riscv                randconfig-c006-20220405
mips                 randconfig-c004-20220405
arm                  randconfig-c002-20220405
arm                         lpc32xx_defconfig
powerpc                     ksi8560_defconfig
arm                  colibri_pxa300_defconfig
mips                     loongson1c_defconfig
arm                        neponset_defconfig
mips                         tb0219_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a006
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220405
riscv                randconfig-r042-20220405
hexagon              randconfig-r041-20220405

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
