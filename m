Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 216DC48614A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jan 2022 09:12:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C64CB42890;
	Thu,  6 Jan 2022 08:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jsg1kXGoF0-K; Thu,  6 Jan 2022 08:12:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB80B41633;
	Thu,  6 Jan 2022 08:12:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 792381BF422
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 08:12:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5CB504160E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 08:12:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HboiZ3csChay for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jan 2022 08:12:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9121240457
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 08:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641456732; x=1672992732;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=aDOGtxzrMXpkmOK8NP7Q+mOdTKxrW7nsQr6iLdg+Bas=;
 b=IbijIx+ajI7b7i5UiRPDVeXLyCU9KGBCh+BKniWUKFiZXEof5rEA2h89
 lRh+PVzToCE1grCDOa56wshaA0ncoUduFfOVcTtR+buB/hrhYNP1PvLKB
 5HaUqLuVcNVllPh33LuoCfo3Fdk+v6MmLIRGEV+NWuocJJ1I5fUXSv4mU
 m4q5YSWUi1pI/Y7dxSQ6fHmnLXoOaB6+aXl18DASVqlKIwJ+bXRHSqoOm
 LdYbxSX/KASkBwCpybYwrtUqYa9YyNblNt8GPbYmI7m2MokhQu623Oyhn
 fpLhuJBhkSPaMHDfLy4XNgXtVK7FPNd0gSl9WhijXXf7Qla41Hg3AsxKT g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242411368"
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="242411368"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 00:12:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="611758373"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Jan 2022 00:12:10 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n5NsX-000HUY-Qt; Thu, 06 Jan 2022 08:12:09 +0000
Date: Thu, 06 Jan 2022 16:11:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61d6a441.JAkQiFL2QKT5KnbN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 20e0821bc78c630acec2cfb0c31b28cb3867f84b
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
branch HEAD: 20e0821bc78c630acec2cfb0c31b28cb3867f84b  ice: fix setting l4 port flag when adding filter

elapsed time: 726m

configs tested: 83
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220105
sh                          r7785rp_defconfig
sh                            titan_defconfig
powerpc                      tqm8xx_defconfig
h8300                     edosk2674_defconfig
m68k                          amiga_defconfig
arm                          iop32x_defconfig
powerpc                      makalu_defconfig
mips                           gcw0_defconfig
openrisc                         alldefconfig
arm                          pxa910_defconfig
powerpc                    sam440ep_defconfig
arm                         assabet_defconfig
arm                  randconfig-c002-20220105
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
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
i386                 randconfig-a003-20220105
i386                 randconfig-a005-20220105
i386                 randconfig-a004-20220105
i386                 randconfig-a006-20220105
i386                 randconfig-a002-20220105
i386                 randconfig-a001-20220105
x86_64               randconfig-a005-20220105
x86_64               randconfig-a001-20220105
x86_64               randconfig-a004-20220105
x86_64               randconfig-a006-20220105
x86_64               randconfig-a003-20220105
x86_64               randconfig-a002-20220105
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
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
hexagon              randconfig-r041-20220105
hexagon              randconfig-r045-20220105
riscv                randconfig-r042-20220105

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
