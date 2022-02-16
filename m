Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A154B80ED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 08:07:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 772B960EAE;
	Wed, 16 Feb 2022 07:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GRYNN6ghTOIO; Wed, 16 Feb 2022 07:07:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D0E660B4D;
	Wed, 16 Feb 2022 07:07:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F07F21BF578
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 07:07:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7BA760B4D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 07:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KvnGwin-NkVH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 07:07:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3E5760ACC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 07:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644995250; x=1676531250;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=aRzB6bsf3v8OjKEJKdxi7WOmIXxqN2tgrwFpZGpAutU=;
 b=YtcpSjhhfku8yVletoIPV9NYFaohWBmLm76JudWH3WIochFnzY8nRLI/
 FqUERhMGQcWrq60Zif3SnDTXtl4yt+55jr6WCnfIkHSbMAkmxkW+3lcVc
 QzpzL6ykd/+jAyGTqj5TLPZqcCnDV8/lFhGOXRUQU7qPIgEaiSdZrMztJ
 yWXPNMOArDC0R1sFF8988B6CinvwMVPOIPDd5jjb6qj3bUitSyzYOBmM5
 DED0iMsylpkx7M3P/nzPlfjc/PmqH+AkYVmXDbUsm7q7K+0gMEiSzX3Ai
 UCV6Euy35bVFRe4hAwUJEpG0eUC5qXdGGXpLYDSUY8rCiRLK3k+wU8NiL g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250277585"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="250277585"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 23:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="625258290"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Feb 2022 23:07:29 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nKEPQ-000AYI-BQ; Wed, 16 Feb 2022 07:07:28 +0000
Date: Wed, 16 Feb 2022 15:07:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <620ca2ab.asSLe2BctrxOO3jh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 477606a501d0705cb1bb86fe7aa86f553861ae7f
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
branch HEAD: 477606a501d0705cb1bb86fe7aa86f553861ae7f  ice: initialize local variable 'tlv'

possible Warning in current branch (please contact us if interested):

include/net/gro.h:58:1: sparse: sparse: directive in macro's argument list
net/ipv6/addrconf.c:4307 if6_get_next() warn: ignoring unreachable code.

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- i386-randconfig-m021
|   `-- net-ipv6-addrconf.c-if6_get_next()-warn:ignoring-unreachable-code.
`-- nds32-randconfig-s031-20220214
    `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list

elapsed time: 722m

configs tested: 138
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     taishan_defconfig
arm                         assabet_defconfig
arc                     nsimosci_hs_defconfig
arm                           corgi_defconfig
arc                      axs103_smp_defconfig
xtensa                           alldefconfig
microblaze                      mmu_defconfig
parisc                           alldefconfig
arm                           h5000_defconfig
mips                        bcm47xx_defconfig
arm                        shmobile_defconfig
openrisc                 simple_smp_defconfig
sh                                  defconfig
m68k                             alldefconfig
arm                       aspeed_g5_defconfig
xtensa                  nommu_kc705_defconfig
arm                           viper_defconfig
arm                            mps2_defconfig
arm                      jornada720_defconfig
m68k                          atari_defconfig
arm64                            alldefconfig
sh                            shmin_defconfig
sh                        sh7757lcr_defconfig
openrisc                  or1klitex_defconfig
powerpc                        warp_defconfig
arm                        keystone_defconfig
powerpc                        cell_defconfig
i386                             alldefconfig
sh                        edosk7760_defconfig
sh                           se7724_defconfig
powerpc                  iss476-smp_defconfig
arm                  randconfig-c002-20220214
arm                  randconfig-c002-20220216
ia64                                defconfig
ia64                             allyesconfig
ia64                             allmodconfig
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
x86_64               randconfig-a013-20220214
x86_64               randconfig-a012-20220214
x86_64               randconfig-a011-20220214
x86_64               randconfig-a014-20220214
x86_64               randconfig-a016-20220214
x86_64               randconfig-a015-20220214
i386                 randconfig-a013-20220214
i386                 randconfig-a016-20220214
i386                 randconfig-a012-20220214
i386                 randconfig-a015-20220214
i386                 randconfig-a011-20220214
i386                 randconfig-a014-20220214
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220214
arc                  randconfig-r043-20220214
s390                 randconfig-r044-20220214
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
powerpc                       ebony_defconfig
hexagon                             defconfig
arm                        neponset_defconfig
powerpc                      ppc44x_defconfig
powerpc                      obs600_defconfig
mips                         tb0287_defconfig
powerpc                      walnut_defconfig
i386                 randconfig-a004-20220214
i386                 randconfig-a005-20220214
i386                 randconfig-a006-20220214
i386                 randconfig-a002-20220214
i386                 randconfig-a003-20220214
i386                 randconfig-a001-20220214
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64               randconfig-a002-20220214
x86_64               randconfig-a006-20220214
x86_64               randconfig-a005-20220214
x86_64               randconfig-a004-20220214
x86_64               randconfig-a003-20220214
x86_64               randconfig-a001-20220214
hexagon              randconfig-r045-20220214
hexagon              randconfig-r041-20220214
hexagon              randconfig-r045-20220216
hexagon              randconfig-r041-20220216

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
