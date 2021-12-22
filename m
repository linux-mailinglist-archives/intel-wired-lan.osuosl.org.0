Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 684D247D691
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 19:24:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1023960FD3;
	Wed, 22 Dec 2021 18:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ExSPlNPE2zo; Wed, 22 Dec 2021 18:24:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA7CB60FCF;
	Wed, 22 Dec 2021 18:24:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA6DB1BF591
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 18:24:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B7836410E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 18:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oy5YioxWTK4E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 18:24:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C368D410E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 18:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640197443; x=1671733443;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=eDNSdaARCiS8zcElSxWzBgzCfPLT9P3RiFemNGtrbyg=;
 b=F/Kpv5tuD+lTA/oO+g4cVxAFgJPnDZNJn6ITDg2cejQCDLo8Q2dscf8q
 elYFvFcp6C8d5cQJ/7yJNEPa+kiwrSfVOQjt5OK8fv5SmAOImCQg35IRd
 XlHV1ehXGMNUzxIHnOTdGeYr6eXapW4i2Fyexjmdmp3btjtGQs0aEgTdr
 CPHNrV490dr4LnN03nwl1ht0JqFXBNjswIaJRid+wqPJpRStabVXYz+FA
 S/gBAsaLbx8EA3H7ZB1vi0BHLb4Nmr2IypbXOVawg8frWjnkV8Ny6JCl9
 Io5SvmSV8j/pLwmtyEwjTxtrlbvXt8Epw/us36eClPjWlKOA3X8SSbmdc A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="239438583"
X-IronPort-AV: E=Sophos;i="5.88,227,1635231600"; d="scan'208";a="239438583"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 10:24:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,227,1635231600"; d="scan'208";a="468260862"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 22 Dec 2021 10:23:59 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n06HO-0000q6-B2; Wed, 22 Dec 2021 18:23:58 +0000
Date: Thu, 23 Dec 2021 02:23:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61c36d1b.eWudDLzy+IdBa6cF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 13a64f0b9894886b2c08ab84de209735abf5a789
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
branch HEAD: 13a64f0b9894886b2c08ab84de209735abf5a789  ice: support crosstimestamping on E822 devices if supported

elapsed time: 1416m

configs tested: 132
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
mips                  cavium_octeon_defconfig
powerpc                      pcm030_defconfig
powerpc                     pseries_defconfig
arm                         vf610m4_defconfig
xtensa                          iss_defconfig
powerpc                 canyonlands_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                  storcenter_defconfig
powerpc                     tqm8541_defconfig
sh                          r7780mp_defconfig
sh                         apsh4a3a_defconfig
arm                           stm32_defconfig
arm                             pxa_defconfig
sh                          rsk7203_defconfig
m68k                       m5249evb_defconfig
arm64                            alldefconfig
powerpc                      katmai_defconfig
mips                      bmips_stb_defconfig
sh                            shmin_defconfig
arm                         cm_x300_defconfig
powerpc                       ebony_defconfig
arm                            pleb_defconfig
mips                           ip32_defconfig
m68k                             allyesconfig
sh                               j2_defconfig
arm                          exynos_defconfig
ia64                      gensparse_defconfig
arm                  randconfig-c002-20211222
arm                  randconfig-c002-20211220
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                            allyesconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a001-20211220
x86_64               randconfig-a003-20211220
x86_64               randconfig-a002-20211220
x86_64               randconfig-a004-20211220
x86_64               randconfig-a005-20211220
x86_64               randconfig-a006-20211220
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
i386                 randconfig-a005-20211222
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
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
i386                 randconfig-a004-20211221
i386                 randconfig-a002-20211221
i386                 randconfig-a003-20211221
i386                 randconfig-a005-20211221
i386                 randconfig-a001-20211221
i386                 randconfig-a006-20211221
x86_64               randconfig-a013-20211222
x86_64               randconfig-a012-20211222
x86_64               randconfig-a011-20211222
x86_64               randconfig-a015-20211222
x86_64               randconfig-a016-20211222
x86_64               randconfig-a014-20211222
i386                 randconfig-a012-20211222
i386                 randconfig-a011-20211222
i386                 randconfig-a014-20211222
i386                 randconfig-a015-20211222
i386                 randconfig-a013-20211222
i386                 randconfig-a016-20211222
hexagon              randconfig-r041-20211220
hexagon              randconfig-r045-20211220
s390                 randconfig-r044-20211220
riscv                randconfig-r042-20211220
hexagon              randconfig-r041-20211222
hexagon              randconfig-r045-20211222
riscv                randconfig-r042-20211222
s390                 randconfig-r044-20211222

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
