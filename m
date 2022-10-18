Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFB160343C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 22:48:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3B9140BFB;
	Tue, 18 Oct 2022 20:48:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3B9140BFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666126087;
	bh=8YQ9OmuhGM/lm25siab7AdgTjFznq5QTbOQMcQyq5Ys=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Z6KQhUty3VgrxrMSy2qiJMs4NFaHktxLDGpSaoMPsJD/KmOQyhTtBFnBrVbvuUCBZ
	 Tz3/sUq0v4EaOfBwtYULqN1SMqFcb2PUOQcPcQ4eb1OhpulngvxRy9PwmPUzDFWOn0
	 fU2lIngpNFYeFl9Y2nRutMyddqDPFde59X8n8QYo02yDuqOmwaoA6t0ud6Bs4nuERs
	 GHQNADzVz90I0GUJXQ2kxKxm+BoaicTkAj7GwuXbKWD2DfJYMscTs0LckiFcmljaDt
	 XUTGy2V4MMAl+GV9S32yiBgVPniAwYnXwkw8FQQEnG/tDAk2oXUOeqQCcZFEdbnmNc
	 VQzVXXhwg4biQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yE3TN_qyXvzL; Tue, 18 Oct 2022 20:48:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CDC240017;
	Tue, 18 Oct 2022 20:48:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CDC240017
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C8BC1BF59D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 20:48:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6CABB4086B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 20:48:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CABB4086B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a0FRL3ZWMayf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Oct 2022 20:48:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04ED540276
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04ED540276
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 20:47:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="286622682"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="286622682"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 13:47:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="697706269"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="697706269"
Received: from lkp-server01.sh.intel.com (HELO 8381f64adc98) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 18 Oct 2022 13:47:58 -0700
Received: from kbuild by 8381f64adc98 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oktVF-00022C-2e;
 Tue, 18 Oct 2022 20:47:57 +0000
Date: Wed, 19 Oct 2022 04:47:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <634f10d2.pkutFY2lvwfOSfpe%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666126080; x=1697662080;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Ck9C6EIy47xthaaAIyLsyHSE/abW2M5T7UEEHUM0zkc=;
 b=hKjNGz8U7WfWZMYTPBGZ2KDk6yqyA+uq6DScSVKcOXJEXRaFdXEMiAhA
 IqW4/hgAeqjPLpB4nqzqu3H7U8DeA5dxJ1JmJ8l6pZxmDPfGHlrY7XO1V
 bfqzw/L905nlDzYHtZ4xV0VFoJcqC6NVMY1MN9ccLxtvGG/3PwWaIuhJj
 XtYAiU2lpP1P2n30RYIRaFZc+0KDM+dipFVCsc+u2prEYqyZEFi54Upls
 B8AunBH7GrcKYq2KHktA/ydOwOuNbAg3ndodys8yl0T2TxDTGdG/gbJYu
 76FuZ7h9FxtcfKFA5B+1zPSbUGS+o6D2IKo0z22ehAj/bn2+vidduNt2o
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hKjNGz8U
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 03e4570a68fb21790b34628f04377e50819ccd26
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
branch HEAD: 03e4570a68fb21790b34628f04377e50819ccd26  ice: use GNSS subsystem instead of TTY

elapsed time: 1186m

configs tested: 209
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
s390                                defconfig
powerpc                           allnoconfig
sh                               allmodconfig
powerpc                          allmodconfig
arc                  randconfig-r043-20221017
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
i386                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
powerpc                 mpc8540_ads_defconfig
sh                          kfr2r09_defconfig
powerpc                 linkstation_defconfig
sparc                       sparc32_defconfig
sparc                       sparc64_defconfig
arm                       aspeed_g5_defconfig
arm64                            alldefconfig
sh                           se7724_defconfig
arm                        keystone_defconfig
powerpc                        cell_defconfig
parisc                generic-32bit_defconfig
riscv             nommu_k210_sdcard_defconfig
x86_64               randconfig-a004-20221017
x86_64               randconfig-a001-20221017
x86_64               randconfig-a002-20221017
x86_64               randconfig-a006-20221017
x86_64               randconfig-a003-20221017
x86_64               randconfig-a005-20221017
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
mips                             allyesconfig
riscv                               defconfig
sh                          rsk7203_defconfig
arm                             ezx_defconfig
powerpc                     mpc83xx_defconfig
i386                 randconfig-a005-20221017
i386                 randconfig-a003-20221017
i386                 randconfig-a002-20221017
i386                 randconfig-a004-20221017
i386                 randconfig-a001-20221017
i386                 randconfig-a006-20221017
arc                           tb10x_defconfig
powerpc                  iss476-smp_defconfig
sh                            hp6xx_defconfig
nios2                               defconfig
arm                         lpc18xx_defconfig
powerpc                 mpc85xx_cds_defconfig
i386                 randconfig-c001-20221017
powerpc                      ppc6xx_defconfig
csky                              allnoconfig
loongarch                         allnoconfig
ia64                          tiger_defconfig
alpha                            alldefconfig
mips                     loongson1b_defconfig
m68k                        m5307c3_defconfig
i386                          randconfig-c001
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
mips                     decstation_defconfig
powerpc                      makalu_defconfig
powerpc                      pcm030_defconfig
arm                        shmobile_defconfig
arm                           h3600_defconfig
arc                            hsdk_defconfig
powerpc                 mpc837x_mds_defconfig
xtensa                    xip_kc705_defconfig
m68k                            q40_defconfig
m68k                           sun3_defconfig
mips                           gcw0_defconfig
mips                      fuloong2e_defconfig
xtensa                  audio_kc705_defconfig
m68k                          atari_defconfig
openrisc                       virt_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
sh                         ap325rxa_defconfig
xtensa                           allyesconfig
mips                           ci20_defconfig
arc                  randconfig-r043-20221018
s390                 randconfig-r044-20221018
riscv                randconfig-r042-20221018
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
arm                          pxa3xx_defconfig
sh                          sdk7786_defconfig
powerpc                      arches_defconfig
sh                        dreamcast_defconfig
sh                                  defconfig
riscv                             allnoconfig
csky                                defconfig
powerpc                      ppc40x_defconfig
sparc64                             defconfig
powerpc                     taishan_defconfig
sh                        sh7757lcr_defconfig
powerpc                         wii_defconfig
arm                            lart_defconfig
sh                   sh7770_generic_defconfig
arc                    vdk_hs38_smp_defconfig
arc                     nsimosci_hs_defconfig
m68k                       m5208evb_defconfig
arm                         at91_dt_defconfig
microblaze                      mmu_defconfig
sh                           se7343_defconfig
parisc                              defconfig
ia64                            zx1_defconfig
arm                        cerfcube_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                           jazz_defconfig
powerpc                     asp8347_defconfig
mips                  maltasmvp_eva_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                           se7751_defconfig
m68k                       m5275evb_defconfig
powerpc                     pq2fads_defconfig
arm                         cm_x300_defconfig
loongarch                           defconfig
loongarch                        allmodconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
m68k                          hp300_defconfig
arm                          gemini_defconfig
mips                            gpr_defconfig
sparc                             allnoconfig
powerpc                     tqm8541_defconfig
powerpc                     stx_gp3_defconfig
powerpc                   currituck_defconfig
powerpc                 mpc834x_mds_defconfig
arm                        trizeps4_defconfig
m68k                        mvme16x_defconfig
ia64                                defconfig
arm                        mvebu_v7_defconfig
m68k                          amiga_defconfig
openrisc                         alldefconfig
arm                      jornada720_defconfig
ia64                             allmodconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20221018

clang tested configs:
riscv                randconfig-r042-20221017
hexagon              randconfig-r045-20221017
s390                 randconfig-r044-20221017
hexagon              randconfig-r041-20221017
i386                 randconfig-a013-20221017
i386                 randconfig-a015-20221017
i386                 randconfig-a016-20221017
i386                 randconfig-a011-20221017
i386                 randconfig-a014-20221017
i386                 randconfig-a012-20221017
x86_64                        randconfig-c007
mips                 randconfig-c004-20221018
i386                          randconfig-c001
s390                 randconfig-c005-20221018
arm                  randconfig-c002-20221018
riscv                randconfig-c006-20221018
powerpc              randconfig-c003-20221018
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a014-20221017
x86_64               randconfig-a015-20221017
x86_64               randconfig-a012-20221017
x86_64               randconfig-a011-20221017
x86_64               randconfig-a013-20221017
x86_64               randconfig-a016-20221017
x86_64               randconfig-k001-20221017
mips                        maltaup_defconfig
arm                         s3c2410_defconfig
powerpc                 mpc832x_mds_defconfig
mips                           rs90_defconfig
mips                          rm200_defconfig
powerpc                      ppc44x_defconfig
riscv                             allnoconfig
powerpc                  mpc866_ads_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
arm                         socfpga_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
arm                       mainstone_defconfig
arm                          sp7021_defconfig
powerpc                    mvme5100_defconfig
arm                      pxa255-idp_defconfig
x86_64                        randconfig-k001
mips                       lemote2f_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
