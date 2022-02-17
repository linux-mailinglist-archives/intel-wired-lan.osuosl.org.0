Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E357C4BA3CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Feb 2022 15:57:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C9EE4182E;
	Thu, 17 Feb 2022 14:57:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 79caxe1S_qNK; Thu, 17 Feb 2022 14:56:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5454A41827;
	Thu, 17 Feb 2022 14:56:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2327F1BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 14:56:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E32A83ED5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 14:56:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jRjmOsN_MDUz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Feb 2022 14:56:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0AC9D83EC3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645109814; x=1676645814;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tZIZOa2qvuxolAJTMu5HseKHy99jrqvmXCbzkzR9P9g=;
 b=jdF0axWNqpZion4B+ETrWvte7QmgcsfWyOTvaSZCiTQbq8LdfdQ0PD2v
 NZ83iG5TjLPZDf31k317YHOZrXPTd8trUo24OIvw3aYIWLkS8bGLIBQz6
 PFGZmsR4ozB6MKqoSNP1433i11qI3K4wlRsyaCo1dP227HS97eBrMzGwL
 cbiIXGAYEbKPtlqjGz5vrW1aoPo4dFPXPrYJlgGbtdmyntoa6n5CwHSr3
 zgHIyiKAbwLPa0Dmex/zT6IbGKyf5FJh4oolIl2utiOTW/C0N5OUiLn7v
 CHv77oWJL+ScohZQZZREAuEl6ZjRCV5W8Ugs+UiRnv3LVhZ1nTQLUVlPk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="248484988"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="248484988"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 06:56:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="681992555"
Received: from lkp-server01.sh.intel.com (HELO 6f05bf9e3301) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 17 Feb 2022 06:56:52 -0800
Received: from kbuild by 6f05bf9e3301 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nKiDD-0000Hz-F1; Thu, 17 Feb 2022 14:56:51 +0000
Date: Thu, 17 Feb 2022 22:56:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <620e620b.1t0Cv1xVrfidsb6e%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9bb37bd8ce919db9c18e5bf2440ff3d961d119c8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 9bb37bd8ce919db9c18e5bf2440ff3d961d119c8  ice: convert VF storage to hash table with krefs and RCU

possible Warning in current branch (please contact us if interested):

include/net/gro.h:58:1: sparse: sparse: directive in macro's argument list
net/ipv6/addrconf.c:4307 if6_get_next() warn: ignoring unreachable code.

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-randconfig-s032-20220217
|   `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list
|-- i386-randconfig-m021
|   `-- net-ipv6-addrconf.c-if6_get_next()-warn:ignoring-unreachable-code.
|-- powerpc64-randconfig-s031-20220217
|   `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list
`-- x86_64-randconfig-m001
    `-- net-ipv6-addrconf.c-if6_get_next()-warn:ignoring-unreachable-code.

elapsed time: 811m

configs tested: 127
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
arm                           corgi_defconfig
powerpc                      ep88xc_defconfig
sh                ecovec24-romimage_defconfig
sh                        dreamcast_defconfig
powerpc                 mpc85xx_cds_defconfig
xtensa                generic_kc705_defconfig
arc                      axs103_smp_defconfig
m68k                          hp300_defconfig
powerpc                      makalu_defconfig
powerpc                      cm5200_defconfig
openrisc                            defconfig
sh                 kfr2r09-romimage_defconfig
nios2                            alldefconfig
xtensa                  audio_kc705_defconfig
sh                  sh7785lcr_32bit_defconfig
m68k                          sun3x_defconfig
sh                           se7619_defconfig
mips                           gcw0_defconfig
openrisc                  or1klitex_defconfig
mips                    maltaup_xpa_defconfig
arc                           tb10x_defconfig
arm                           viper_defconfig
arc                          axs101_defconfig
sh                            shmin_defconfig
m68k                           sun3_defconfig
m68k                          amiga_defconfig
powerpc                         wii_defconfig
parisc                generic-32bit_defconfig
h8300                               defconfig
sparc64                             defconfig
ia64                         bigsur_defconfig
powerpc64                        alldefconfig
arm                         assabet_defconfig
mips                     decstation_defconfig
s390                       zfcpdump_defconfig
mips                           jazz_defconfig
sh                            migor_defconfig
sh                   sh7724_generic_defconfig
sh                           se7712_defconfig
arm                  randconfig-c002-20220217
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220216
riscv                randconfig-r042-20220216
s390                 randconfig-r044-20220216
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc                     tqm5200_defconfig
arm                     davinci_all_defconfig
mips                        workpad_defconfig
mips                     loongson2k_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                 mpc832x_mds_defconfig
arm                        spear3xx_defconfig
arm                          pcm027_defconfig
arm                       aspeed_g4_defconfig
powerpc                          allyesconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220217
hexagon              randconfig-r041-20220217
riscv                randconfig-r042-20220217
hexagon              randconfig-r041-20220216
hexagon              randconfig-r045-20220216

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
