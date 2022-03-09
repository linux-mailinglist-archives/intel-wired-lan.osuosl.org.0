Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B44084D30DC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Mar 2022 15:14:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 379AC81367;
	Wed,  9 Mar 2022 14:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPtwKtbk_KfA; Wed,  9 Mar 2022 14:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 258D381360;
	Wed,  9 Mar 2022 14:14:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7584D1BF82D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 14:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63D1641511
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 14:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mj6rvJtm1A1m for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Mar 2022 14:14:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 694FA41521
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 14:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646835277; x=1678371277;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zDI1lrt0NT7knkwkHHrFzdtty/pR/gJoqVSjWKUCBDY=;
 b=WUmcQZyO9MocX622k4eZ9h5bZ/YrcBkKHfJAuWGT/VN+7Ca1FbSK/er7
 pAYcSdetKIUxyaU4Fenc6d8UlTXNXIDMJ6rZvmMjYABeXYrhdzfkSORBa
 aeCQWQZGfLNS3UHa6ZtttsqsIPLkdKJbk9Y/uoUYyJ8/6YSwWv3HjTjQo
 GhwHmC7AuGzBV93yJ9jmutr85XVcUwRvrxdP2Zcr6eZOGcNPrXpfZbuVw
 MmgF7mePe0fgPQjZg30f8vA2K+1win54P82KtULF02fnKJD73mrDR0LJS
 k5GsaOo92hgcq0RYiFQwxG7Yd1UrNx94vtud/YqXauNrfLnu0EE5T5RsE w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254712499"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254712499"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 06:14:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="611375668"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 09 Mar 2022 06:14:11 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nRx4s-0003Ka-Nx; Wed, 09 Mar 2022 14:14:10 +0000
Date: Wed, 09 Mar 2022 22:13:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6228b608.oHFs5/Z5bqI4dxHQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 d307eab593b283849c13703ca3fd6a5b3908d6f8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: d307eab593b283849c13703ca3fd6a5b3908d6f8  Merge branch 'net-phy-lan87xx-use-genphy_read_master_slave-function'

elapsed time: 1340m

configs tested: 132
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
arm                            zeus_defconfig
powerpc                         wii_defconfig
sh                   rts7751r2dplus_defconfig
m68k                            q40_defconfig
powerpc                    klondike_defconfig
arm                           u8500_defconfig
sh                           se7619_defconfig
powerpc                      pasemi_defconfig
sh                ecovec24-romimage_defconfig
sh                          rsk7264_defconfig
powerpc                     tqm8548_defconfig
sh                     magicpanelr2_defconfig
m68k                        mvme147_defconfig
arm                            hisi_defconfig
arm                        shmobile_defconfig
sh                   sh7724_generic_defconfig
arm                        mini2440_defconfig
sh                           se7206_defconfig
xtensa                          iss_defconfig
arm                          simpad_defconfig
nds32                             allnoconfig
arm                  randconfig-c002-20220308
arm                  randconfig-c002-20220309
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
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
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220308
riscv                randconfig-r042-20220308
s390                 randconfig-r044-20220308
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
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64                        randconfig-c007
riscv                randconfig-c006-20220309
powerpc              randconfig-c003-20220309
i386                          randconfig-c001
arm                  randconfig-c002-20220309
powerpc                 mpc836x_rdk_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                       ebony_defconfig
mips                           ip22_defconfig
powerpc                    ge_imp3a_defconfig
mips                         tb0219_defconfig
arm                           spitz_defconfig
x86_64                           allyesconfig
powerpc                      obs600_defconfig
mips                malta_qemu_32r6_defconfig
arm                            mmp2_defconfig
riscv                            alldefconfig
powerpc                      ppc64e_defconfig
arm                       cns3420vb_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                          imote2_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                     mpc512x_defconfig
powerpc                     kmeter1_defconfig
hexagon                             defconfig
powerpc                      ppc44x_defconfig
mips                       lemote2f_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220309
hexagon              randconfig-r041-20220309
riscv                randconfig-r042-20220309
hexagon              randconfig-r045-20220308
hexagon              randconfig-r041-20220308

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
