Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2834DDC47
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Mar 2022 15:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87C4B40C1D;
	Fri, 18 Mar 2022 14:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8I6SosnahK_E; Fri, 18 Mar 2022 14:56:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 122C44049C;
	Fri, 18 Mar 2022 14:56:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F0D881BF232
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 14:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF7048484E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 14:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jL8lOPonKydh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Mar 2022 14:55:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED83E8484C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 14:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647615357; x=1679151357;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=+7vX+RnghaSx5KGHyuV5kXoo9Qs3kRgfgS0GIPcoD7Q=;
 b=Peb4/jBbMI8MZpuhVS2xw4CzLjhNy1wrNYfXGjDJqYXpOUFxEzFgQV6Y
 RgFk0Ly2OZ9DXquHk/dxvobyPNtK+SBBdyaP4Dqg1OgLKX/CK9p9acARM
 XOkMAWawRREdQFEFNhh+Q1ZDnUW1qzP7/2CMlcpxS7b2PKz3Eq9xA5T8W
 2AalvQvNbdUCv5YT5iXdrU5zwvsDLL+geuUVb2KLpHZhJh7ghpd90bWRg
 Z6EFWjDCDbTFSMOgQeRAiaIX+vJBu2sM3bOVfYadb6OAVeN7tmOhZDV6u
 phEpmJazOptBd8OLOz+SM3a/2TBxhXDhIwaUAyoOxnHhwB2xsRXMj3OaB w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="237760894"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="237760894"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="581734692"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 18 Mar 2022 07:55:42 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nVE0z-000Eql-C5; Fri, 18 Mar 2022 14:55:41 +0000
Date: Fri, 18 Mar 2022 22:54:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62349d3e.15orlRede+yJrW4r%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e7dc1b68b7a33ffe3687f5344704978e42c3ef6a
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
branch HEAD: e7dc1b68b7a33ffe3687f5344704978e42c3ef6a  igc: Fix BUG: scheduling while atomic

elapsed time: 727m

configs tested: 136
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
i386                          randconfig-c001
mips                           gcw0_defconfig
m68k                          atari_defconfig
sh                        edosk7705_defconfig
arm                           corgi_defconfig
sh                           se7724_defconfig
s390                             allyesconfig
um                             i386_defconfig
powerpc                      bamboo_defconfig
sh                              ul2_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                      maltasmvp_defconfig
alpha                            alldefconfig
powerpc                     tqm8555_defconfig
openrisc                  or1klitex_defconfig
powerpc                      pcm030_defconfig
sh                   rts7751r2dplus_defconfig
sh                ecovec24-romimage_defconfig
sparc                            alldefconfig
powerpc                       holly_defconfig
mips                       capcella_defconfig
m68k                       m5208evb_defconfig
sparc64                             defconfig
powerpc                        warp_defconfig
arm                        clps711x_defconfig
riscv                               defconfig
sh                          rsk7201_defconfig
sparc                               defconfig
sh                   sh7770_generic_defconfig
ia64                            zx1_defconfig
sh                           se7780_defconfig
arm                  randconfig-c002-20220318
arm                  randconfig-c002-20220317
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
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
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                 randconfig-r044-20220317
arc                  randconfig-r043-20220318
riscv                randconfig-r042-20220317
arc                  randconfig-r043-20220317
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
arm                  randconfig-c002-20220318
s390                 randconfig-c005-20220318
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220318
riscv                randconfig-c006-20220318
mips                 randconfig-c004-20220318
i386                          randconfig-c001
s390                 randconfig-c005-20220317
arm                  randconfig-c002-20220317
riscv                randconfig-c006-20220317
powerpc              randconfig-c003-20220317
mips                 randconfig-c004-20220317
mips                   sb1250_swarm_defconfig
powerpc                       ebony_defconfig
powerpc                     mpc512x_defconfig
riscv                            alldefconfig
mips                      maltaaprp_defconfig
mips                     loongson1c_defconfig
powerpc                 mpc836x_mds_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220318
hexagon              randconfig-r045-20220317
hexagon              randconfig-r041-20220318
riscv                randconfig-r042-20220318
hexagon              randconfig-r041-20220317
s390                 randconfig-r044-20220318
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
