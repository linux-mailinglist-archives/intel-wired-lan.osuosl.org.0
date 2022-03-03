Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1194CC5F8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Mar 2022 20:24:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 556DB40385;
	Thu,  3 Mar 2022 19:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OIm39mvDlpm3; Thu,  3 Mar 2022 19:24:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8F4040435;
	Thu,  3 Mar 2022 19:24:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 132BA1BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 19:24:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0034C402F7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 19:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsW2Q29VajnY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Mar 2022 19:24:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFCD04026D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 19:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646335449; x=1677871449;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=eiMF6wLdEkQm7xNZHhTffhnh8XGrbJSjAHzY5WNnHvc=;
 b=l/K60TfEqIB1PDBEdsrGuiGM3AJeFvIVq5nxzt5bDlnhjydKgltiR1pG
 lDnNWVdKfQ0wjiU/zdjOzqIbLjzzi6G/Hm2vQ/dmBn5+NU+mapu6sxgKb
 EBqLhU8yZskmG6wsS5xtPOB7bz5t5vkpOS/SdCXmhVLbC4qNNjIoQplR9
 lt5pCjRhX02bQd6i0kb1XxJSxyKkQJbgGdaHP+1pNUQ7xxJ8wr3hmiwv8
 ur3hyc+Fzzl/W4Pyl6wdQS2WIKcgh3lV3kniC/uATTkj+bW+OaqK/8l1B
 Zk5sbnnRL2ZDUrH7+T9xRkNSJS2yDK5kt6L6uVxGxwJGo4GRvvNvPByae Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="234399244"
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="234399244"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 11:24:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="710052604"
Received: from lkp-server01.sh.intel.com (HELO ccb16ba0ecc3) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 03 Mar 2022 11:24:07 -0800
Received: from kbuild by ccb16ba0ecc3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nPr3X-0000tH-55; Thu, 03 Mar 2022 19:24:07 +0000
Date: Fri, 04 Mar 2022 03:23:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <622115ab.Kopzb+xOMvJLvXKw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:10GbE] BUILD SUCCESS
 a53c52cf226e561b5ee18c5ffc20e45a616d6643
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 10GbE
branch HEAD: a53c52cf226e561b5ee18c5ffc20e45a616d6643  ice: avoid XDP checks in ice_clean_tx_irq()

elapsed time: 1427m

configs tested: 160
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220303
sparc64                             defconfig
arm                           sunxi_defconfig
sh                        edosk7705_defconfig
xtensa                           allyesconfig
arc                    vdk_hs38_smp_defconfig
arm                         lubbock_defconfig
mips                         db1xxx_defconfig
sh                            shmin_defconfig
arm                          badge4_defconfig
m68k                             allyesconfig
h8300                     edosk2674_defconfig
powerpc                    amigaone_defconfig
mips                            ar7_defconfig
m68k                          sun3x_defconfig
arm                            mps2_defconfig
nios2                         10m50_defconfig
arm                        cerfcube_defconfig
arc                        nsim_700_defconfig
arm                        realview_defconfig
arm                         axm55xx_defconfig
nds32                            alldefconfig
mips                        jmr3927_defconfig
um                                  defconfig
m68k                        mvme16x_defconfig
arm                          iop32x_defconfig
sh                          lboxre2_defconfig
arc                            hsdk_defconfig
arm                         assabet_defconfig
sh                   sh7724_generic_defconfig
sparc                            allyesconfig
powerpc                     taishan_defconfig
microblaze                          defconfig
m68k                        stmark2_defconfig
nios2                               defconfig
riscv             nommu_k210_sdcard_defconfig
mips                 decstation_r4k_defconfig
arm                            qcom_defconfig
um                             i386_defconfig
sh                        sh7757lcr_defconfig
sh                          urquell_defconfig
arm                            lart_defconfig
arc                        nsimosci_defconfig
arm                           h3600_defconfig
arm                           sama5_defconfig
sparc                            alldefconfig
mips                            gpr_defconfig
powerpc                        warp_defconfig
m68k                            q40_defconfig
i386                                defconfig
h8300                               defconfig
sh                           se7705_defconfig
powerpc                       holly_defconfig
arm                        clps711x_defconfig
sh                          r7780mp_defconfig
m68k                        m5407c3_defconfig
sh                           se7712_defconfig
m68k                          multi_defconfig
openrisc                  or1klitex_defconfig
sh                  sh7785lcr_32bit_defconfig
csky                                defconfig
riscv                               defconfig
arm                      jornada720_defconfig
m68k                       m5475evb_defconfig
m68k                       bvme6000_defconfig
mips                           ci20_defconfig
arm                  randconfig-c002-20220302
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                               defconfig
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
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
arc                  randconfig-r043-20220302
riscv                randconfig-r042-20220302
s390                 randconfig-r044-20220302
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220303
riscv                randconfig-c006-20220303
i386                          randconfig-c001
arm                  randconfig-c002-20220303
mips                 randconfig-c004-20220303
powerpc              randconfig-c003-20220302
riscv                randconfig-c006-20220302
arm                  randconfig-c002-20220302
mips                 randconfig-c004-20220302
arm                  colibri_pxa300_defconfig
mips                     loongson2k_defconfig
powerpc                       ebony_defconfig
arm                            mmp2_defconfig
powerpc                      pmac32_defconfig
arm                         mv78xx0_defconfig
arm                         lpc32xx_defconfig
mips                            e55_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220302
hexagon              randconfig-r041-20220302
hexagon              randconfig-r045-20220303
riscv                randconfig-r042-20220303
hexagon              randconfig-r041-20220303

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
