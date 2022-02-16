Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79A54B8032
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 06:28:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C9F640647;
	Wed, 16 Feb 2022 05:28:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0szIs8T7uwSn; Wed, 16 Feb 2022 05:28:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDEC740154;
	Wed, 16 Feb 2022 05:28:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16CFF1BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 05:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0AFAA4099B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 05:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NvF650TALcYd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 05:28:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED55040998
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 05:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644989307; x=1676525307;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=LjgSegzBV+tEcyiYro22bNEhvokjQjgkWl20TWBIomc=;
 b=hC2lRskDt4rU0fUfJcNuS3Um/BnQ9x+qKotu1RF5O2IhEKGv9WB1sGAp
 cawtfjT9CKX2jYgfftQ3V8bG5x8cGWxc9NGhpxuEaL5nYtrdWvNVAUdvg
 vcnRrg0B0CO0ugdqWhllIottPwEoGWg6cG5GXGmW8jOSFIljmR04v1eym
 emDAifmSWoopJxMAWjfQ+O+2tTwA0jNn1P+PBY9iirn/PnZWCoVn+Oxej
 WmCGNYXq7xD6kWxwlQw/MY/zj2/vPEVsgUK0JxhYsmD/j6B+WiJv9XTzG
 CyIiUezM6ULMz94AOTl7G7qfWPmPUmj5lgm1m7C2sB2vc5s8BMJ0mZJpw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237932396"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="237932396"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 21:28:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="681352103"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 15 Feb 2022 21:28:25 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nKCrZ-000ASb-6p; Wed, 16 Feb 2022 05:28:25 +0000
Date: Wed, 16 Feb 2022 13:27:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <620c8b4b.HhW/pbU4pUmZkW7W%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 35410c10918a84c9685cd644686ca637bb3c046b
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
branch HEAD: 35410c10918a84c9685cd644686ca637bb3c046b  ice: initialize local variable 'tlv'

elapsed time: 733m

configs tested: 167
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220214
mips                 randconfig-c004-20220214
i386                          randconfig-c001
mips                 randconfig-c004-20220216
sh                           se7751_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                      fuloong2e_defconfig
sh                        sh7763rdp_defconfig
arm                        realview_defconfig
csky                                defconfig
arm                          iop32x_defconfig
arm                          simpad_defconfig
m68k                       m5208evb_defconfig
arm                            hisi_defconfig
sh                        edosk7705_defconfig
sh                          lboxre2_defconfig
openrisc                         alldefconfig
arm                       omap2plus_defconfig
arm                        shmobile_defconfig
sh                             espt_defconfig
sh                             sh03_defconfig
arm                            lart_defconfig
mips                          rb532_defconfig
arm                          badge4_defconfig
sh                           se7750_defconfig
arm                           stm32_defconfig
arm                      integrator_defconfig
arm                           sunxi_defconfig
mips                  decstation_64_defconfig
powerpc                 mpc834x_mds_defconfig
m68k                       m5475evb_defconfig
powerpc                      arches_defconfig
arm                          pxa910_defconfig
arm                           u8500_defconfig
powerpc                     taishan_defconfig
arm                        oxnas_v6_defconfig
sh                                  defconfig
m68k                             alldefconfig
arm                       aspeed_g5_defconfig
xtensa                  nommu_kc705_defconfig
openrisc                  or1klitex_defconfig
powerpc                        warp_defconfig
arm                        keystone_defconfig
powerpc                        cell_defconfig
arm                         at91_dt_defconfig
powerpc                    klondike_defconfig
x86_64                              defconfig
h8300                               defconfig
i386                             alldefconfig
sh                           se7724_defconfig
sh                        edosk7760_defconfig
mips                       capcella_defconfig
arm                        cerfcube_defconfig
mips                      loongson3_defconfig
arm                  randconfig-c002-20220214
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
x86_64               randconfig-a014-20220214
x86_64               randconfig-a012-20220214
x86_64               randconfig-a015-20220214
x86_64               randconfig-a011-20220214
x86_64               randconfig-a016-20220214
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                 randconfig-a013-20220214
i386                 randconfig-a016-20220214
i386                 randconfig-a012-20220214
i386                 randconfig-a015-20220214
i386                 randconfig-a011-20220214
i386                 randconfig-a014-20220214
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
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
riscv                randconfig-c006-20220216
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220216
arm                  randconfig-c002-20220216
i386                          randconfig-c001
mips                 randconfig-c004-20220216
arm                        neponset_defconfig
powerpc                      ppc44x_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                          rm200_defconfig
arm                         palmz72_defconfig
arm                         mv78xx0_defconfig
powerpc                     kmeter1_defconfig
powerpc                     tqm8560_defconfig
arm                          ep93xx_defconfig
arm                        spear3xx_defconfig
arm                         lpc32xx_defconfig
powerpc                  mpc885_ads_defconfig
x86_64               randconfig-a002-20220214
x86_64               randconfig-a006-20220214
x86_64               randconfig-a005-20220214
x86_64               randconfig-a004-20220214
x86_64               randconfig-a003-20220214
x86_64               randconfig-a001-20220214
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                 randconfig-a004-20220214
i386                 randconfig-a005-20220214
i386                 randconfig-a006-20220214
i386                 randconfig-a002-20220214
i386                 randconfig-a003-20220214
i386                 randconfig-a001-20220214
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
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
