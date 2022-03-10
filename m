Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD114D4CCF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 16:37:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 754D640012;
	Thu, 10 Mar 2022 15:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tHSM9tbCAaQX; Thu, 10 Mar 2022 15:37:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 31BB640217;
	Thu, 10 Mar 2022 15:37:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BBE51BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 15:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08705402F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 15:37:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ETfim9b1lAcG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 15:37:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F252F40012
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 15:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646926649; x=1678462649;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TWP7PNqXrNJLoM+sV3j5hKp5kvuoGH+ppogY/QhMrLg=;
 b=N9dePU/p5BCRNZMXs/QTlBd3aYG+vXnsbb+dU2HSc6LCAmww1vBWUSTx
 cmn+ANHEETXkEztahJXAmVnOx/0pAoD9B07TMiedMG6HlOX9ASOGECgof
 QkuhPvNc3OD9hgGgkyUh38tqvVIj/MpqDe/y1wj8P0kUfQkESitRuqCAq
 8DxGEqir0M8i6Ldp/cwPGnhm234IVaaW+DGrHiAaeaCrsjiYHNLOmgY3F
 CssAqcp9dkgvi6L0y82JIoWkDQQtlYq/A6mwoo5cOh2HXgNlTkCZS/MyP
 Rpf9CdOLnI7mAtAN28weV2r6Z+YIhrrm5sTo2ab+B+baSiij5QOXrrFLs g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255470511"
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="255470511"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 07:37:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="781493505"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 10 Mar 2022 07:37:27 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nSKr0-00055V-Mz; Thu, 10 Mar 2022 15:37:26 +0000
Date: Thu, 10 Mar 2022 23:36:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <622a1b0c.IJs4J4g+CRCGHJH+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 02ddec1986ff0b8de20094aae2fa5b8f8ee7e1a3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 02ddec1986ff0b8de20094aae2fa5b8f8ee7e1a3  ice: Add support for outer dest MAC for ADQ tunnels

elapsed time: 729m

configs tested: 89
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                        realview_defconfig
mips                      fuloong2e_defconfig
sh                          kfr2r09_defconfig
h8300                       h8s-sim_defconfig
sh                   sh7770_generic_defconfig
arc                        vdk_hs38_defconfig
sh                               j2_defconfig
sh                             shx3_defconfig
sh                     magicpanelr2_defconfig
xtensa                    xip_kc705_defconfig
ia64                         bigsur_defconfig
arm                        oxnas_v6_defconfig
powerpc                        warp_defconfig
arm                  randconfig-c002-20220310
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
alpha                            allyesconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
h8300                            allyesconfig
parisc                              defconfig
s390                                defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
arc                  randconfig-r043-20220310
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                         orion5x_defconfig
powerpc                      walnut_defconfig
powerpc                        fsp2_defconfig
mips                        qi_lb60_defconfig
powerpc                     mpc5200_defconfig
powerpc               mpc834x_itxgp_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a001
hexagon              randconfig-r041-20220310
hexagon              randconfig-r045-20220310
s390                 randconfig-r044-20220310

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
