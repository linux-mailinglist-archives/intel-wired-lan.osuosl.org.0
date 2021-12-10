Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F2B46FCFB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 09:50:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F08A540200;
	Fri, 10 Dec 2021 08:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id olODEDdAXADh; Fri, 10 Dec 2021 08:50:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 919C44096C;
	Fri, 10 Dec 2021 08:50:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7FEDA1BF844
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 08:50:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DBAE42537
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 08:50:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uHGhoGrLe6Kv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 08:50:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E7FFB42534
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 08:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639126201; x=1670662201;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mYdX9CVYiqMis+PRNwl9BJN/Ho5WbnHkT72H0RtxhFk=;
 b=fHBAP6qtwsoAjp0UJLksg7hxpWxOo6ZH2v6xGoVV1RpRvWcYv04tAdia
 ZiGSUFJ1m6Q0n3UkORmijD13BMavXL31AvrIawjcMokL/HnSJUMoFdSpB
 vhqa4PBejxo02+BSWkYyf1pT1Q0luL4CuZpfOl9YUEoiUoQQA4SWYToMr
 SDz35XVriB5jB20XmbKhfFsjbN5mghrMQ0uX4690sKAJnV0Rwf10y69qm
 11F8cBWmueS19BYFp6Ar4kBKyWn8ynto2yaTPMnGGBaSc6n5FFmox3JIY
 wyGpNKhO87nNXvLOzAX0yBKCoJMMVqmIIOCivNKMV/Y0GaG5hu8ZjeZ2S w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="301692470"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="301692470"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 00:50:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="680676244"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 10 Dec 2021 00:49:59 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mvbbK-0002z2-Sl; Fri, 10 Dec 2021 08:49:58 +0000
Date: Fri, 10 Dec 2021 16:49:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61b3147c.tdxKrsim6n395QFR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 57a1c488908216218c8add2d8e90d557c0646166
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
branch HEAD: 57a1c488908216218c8add2d8e90d557c0646166  i40e: Fix for displaying message regarding NVM version

elapsed time: 2311m

configs tested: 108
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
mips                     cu1000-neo_defconfig
arm                            xcep_defconfig
sh                        edosk7760_defconfig
riscv                            alldefconfig
arm                    vt8500_v6_v7_defconfig
riscv                          rv32_defconfig
powerpc                          g5_defconfig
mips                        bcm63xx_defconfig
arm                         nhk8815_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                   currituck_defconfig
arm                           tegra_defconfig
powerpc                     mpc512x_defconfig
h8300                       h8s-sim_defconfig
powerpc               mpc834x_itxgp_defconfig
arc                     nsimosci_hs_defconfig
sh                          lboxre2_defconfig
sh                   sh7724_generic_defconfig
um                                  defconfig
arm                  randconfig-c002-20211207
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
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
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
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a006-20211207
x86_64               randconfig-a005-20211207
x86_64               randconfig-a001-20211207
x86_64               randconfig-a002-20211207
x86_64               randconfig-a004-20211207
x86_64               randconfig-a003-20211207
i386                 randconfig-a001-20211209
i386                 randconfig-a005-20211209
i386                 randconfig-a003-20211209
i386                 randconfig-a002-20211209
i386                 randconfig-a006-20211209
i386                 randconfig-a004-20211209
arc                  randconfig-r043-20211207
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a012-20211209
x86_64               randconfig-a011-20211209
x86_64               randconfig-a014-20211209
x86_64               randconfig-a015-20211209
x86_64               randconfig-a016-20211209
x86_64               randconfig-a013-20211209
i386                 randconfig-a013-20211207
i386                 randconfig-a011-20211207
i386                 randconfig-a014-20211207
i386                 randconfig-a012-20211207
i386                 randconfig-a015-20211207
i386                 randconfig-a016-20211207
i386                 randconfig-a013-20211209
i386                 randconfig-a016-20211209
i386                 randconfig-a011-20211209
i386                 randconfig-a014-20211209
i386                 randconfig-a012-20211209
i386                 randconfig-a015-20211209
hexagon              randconfig-r045-20211207
s390                 randconfig-r044-20211207
hexagon              randconfig-r041-20211207
riscv                randconfig-r042-20211207

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
