Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F208447D68B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 19:24:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB17C81BC6;
	Wed, 22 Dec 2021 18:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UkzX88uLFpJM; Wed, 22 Dec 2021 18:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 991D481A4E;
	Wed, 22 Dec 2021 18:24:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E9711BF591
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 18:24:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 344B481A4E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 18:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LeythHCKOXdM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 18:24:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3B6F81570
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 18:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640197442; x=1671733442;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=rUWK4StJ+vtUjO/N8aFo+CNVG2LDv9ivAHR/45cg+Gw=;
 b=VxNr6aW6v+9BOShr3Mi5+itbtSvaqiidYG7UfOQ7Xw9IAI8o+fEgwGf3
 uG0hwJWyMBN0ECFo9WGooJcLMdB2PycIoOKfKYVOZeKKt4GNC0MsgSeBt
 bj3Eb/zKy+//NORlJxKwkIrhUlq+26ZXKWbXD0ES/la9xeNWMYM4ovCmX
 JCtv3FIXe6cs3zMGOMBRSBKG9JFyqh8F1LnEmUZiId/HBKpuTrEZ0RW4a
 zaqBixYl0ShNWWJp+ww79OZd3s3RVJsf6Yemfg12nUpkZADVdW0JV+irQ
 /QW0qO5pAXTWcJ4+KZ8VVLbOTMaBY6IO+iU0vZQeItU0V9AAwRDYgO1l5 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="227532952"
X-IronPort-AV: E=Sophos;i="5.88,227,1635231600"; d="scan'208";a="227532952"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 10:24:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,227,1635231600"; d="scan'208";a="508577765"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 22 Dec 2021 10:23:59 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n06HO-0000q2-9m; Wed, 22 Dec 2021 18:23:58 +0000
Date: Thu, 23 Dec 2021 02:23:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61c36d0f.+71AXAHKdxFrj+3p%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 37cf276df1014aa4647ae364bde878041053b40d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 37cf276df1014aa4647ae364bde878041053b40d  fm10k: Fix syntax errors in comments

elapsed time: 1416m

configs tested: 151
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
sh                        edosk7760_defconfig
powerpc                        fsp2_defconfig
mips                    maltaup_xpa_defconfig
arm                        magician_defconfig
arm                          collie_defconfig
arm                       aspeed_g4_defconfig
m68k                         apollo_defconfig
powerpc                     pseries_defconfig
powerpc                     tqm8541_defconfig
sh                          r7780mp_defconfig
sh                         apsh4a3a_defconfig
arm                           stm32_defconfig
arm                             pxa_defconfig
sh                          rsk7203_defconfig
m68k                       m5249evb_defconfig
arm64                            alldefconfig
powerpc                      katmai_defconfig
xtensa                           allyesconfig
powerpc                  mpc866_ads_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                           rs90_defconfig
mips                          ath25_defconfig
arm                  colibri_pxa300_defconfig
sh                          landisk_defconfig
xtensa                  audio_kc705_defconfig
sh                            shmin_defconfig
mips                        vocore2_defconfig
arm                          pxa3xx_defconfig
sh                          rsk7264_defconfig
powerpc64                           defconfig
ia64                             allyesconfig
powerpc                     kilauea_defconfig
arm                         cm_x300_defconfig
powerpc                       ebony_defconfig
arm                            pleb_defconfig
mips                           ip32_defconfig
m68k                             allyesconfig
xtensa                          iss_defconfig
sh                          sdk7786_defconfig
sparc                       sparc64_defconfig
arm                         lpc32xx_defconfig
arm                          pxa168_defconfig
powerpc                      makalu_defconfig
arm                        trizeps4_defconfig
arm                          moxart_defconfig
powerpc                     tqm8555_defconfig
arm                         mv78xx0_defconfig
arm                          lpd270_defconfig
mips                           gcw0_defconfig
mips                  decstation_64_defconfig
sh                        sh7785lcr_defconfig
sh                               j2_defconfig
sparc                       sparc32_defconfig
arm                  randconfig-c002-20211222
arm                  randconfig-c002-20211220
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
i386                   debian-10.3-kselftests
sparc                               defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a001-20211222
x86_64               randconfig-a003-20211222
x86_64               randconfig-a005-20211222
x86_64               randconfig-a006-20211222
x86_64               randconfig-a004-20211222
x86_64               randconfig-a002-20211222
i386                 randconfig-a006-20211222
i386                 randconfig-a004-20211222
i386                 randconfig-a002-20211222
i386                 randconfig-a003-20211222
i386                 randconfig-a001-20211222
i386                 randconfig-a002-20211220
i386                 randconfig-a003-20211220
i386                 randconfig-a001-20211220
i386                 randconfig-a006-20211220
i386                 randconfig-a004-20211220
i386                 randconfig-a005-20211220
i386                 randconfig-a005-20211222
x86_64               randconfig-a001-20211220
x86_64               randconfig-a003-20211220
x86_64               randconfig-a005-20211220
x86_64               randconfig-a006-20211220
x86_64               randconfig-a004-20211220
x86_64               randconfig-a002-20211220
arc                  randconfig-r043-20211220
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
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64               randconfig-a013-20211222
x86_64               randconfig-a015-20211222
x86_64               randconfig-a014-20211222
x86_64               randconfig-a012-20211222
x86_64               randconfig-a011-20211222
x86_64               randconfig-a016-20211222
i386                 randconfig-a012-20211222
i386                 randconfig-a011-20211222
i386                 randconfig-a013-20211222
i386                 randconfig-a015-20211222
i386                 randconfig-a014-20211222
i386                 randconfig-a016-20211222
hexagon              randconfig-r041-20211220
hexagon              randconfig-r045-20211220
riscv                randconfig-r042-20211220
s390                 randconfig-r044-20211220
hexagon              randconfig-r041-20211222
riscv                randconfig-r042-20211222
s390                 randconfig-r044-20211222
hexagon              randconfig-r045-20211222

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
