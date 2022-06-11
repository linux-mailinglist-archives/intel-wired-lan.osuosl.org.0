Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F3F54727F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jun 2022 09:01:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D1FE41B5A;
	Sat, 11 Jun 2022 07:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nXqw8MeV_mSy; Sat, 11 Jun 2022 07:01:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 085F541A67;
	Sat, 11 Jun 2022 07:01:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ECD361BF30D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jun 2022 07:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D34C5842AF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jun 2022 07:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m2J99X4utwG1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Jun 2022 07:01:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BEA5D842A4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jun 2022 07:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654930867; x=1686466867;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=t2+8KFz4A/F7eK9hFqusrOjIt1n9U9h+cCVZ6xo8Ckc=;
 b=d/tPIbjSvxubeZnaXxPJXzRjIZQ3pg4q71jD59Lit5EuCmP9rc8cypjZ
 qllQjK53hRqYbE11aqQoce7YJhlv9iHjKRLjLcdEcyVYxwkA2E6oLwTaW
 afD00PvWZAwivC7hh3Qc2GEQE++1k4Y0BQcP4PRy5JZA9bgO6vbx8uPsp
 BQsbqfcHpJskh9k1AXFQHVXxZ0MwQHb/xfocQRwTrjytiSHoE8vVJTT6w
 p6CSzfp/x4ls6a//+LA6Tj90qw13CivqRJLdFYvACjzp9P02YCgAhVpFb
 327B90UWsdUdCWK1HQenYk2UW9r8DSFSuJEefMZdEi45Q4qBT4RBNZSfX Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="260951160"
X-IronPort-AV: E=Sophos;i="5.91,292,1647327600"; d="scan'208";a="260951160"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2022 00:01:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,293,1647327600"; d="scan'208";a="638574455"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 11 Jun 2022 00:01:05 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nzv7J-000Ie1-3x;
 Sat, 11 Jun 2022 07:01:05 +0000
Date: Sat, 11 Jun 2022 15:00:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62a43da9.PCm439PIwnZEXH4B%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 bf56a0917fd329d5adecfd405e681ff7ba1abb52
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: bf56a0917fd329d5adecfd405e681ff7ba1abb52  Merge tag 'mlx5-fixes-2022-06-08' of git://git.kernel.org/pub/scm/linux/kernel/git/saeed/linux

elapsed time: 1495m

configs tested: 87
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arc                         haps_hs_defconfig
mips                          rb532_defconfig
ia64                         bigsur_defconfig
m68k                        m5272c3_defconfig
sh                            titan_defconfig
powerpc                 mpc837x_mds_defconfig
mips                         tb0226_defconfig
sh                           se7750_defconfig
powerpc                 linkstation_defconfig
powerpc64                           defconfig
sh                          rsk7201_defconfig
powerpc                 canyonlands_defconfig
sh                          lboxre2_defconfig
arm                          pxa3xx_defconfig
sh                              ul2_defconfig
xtensa                  cadence_csp_defconfig
sh                               alldefconfig
powerpc                      ep88xc_defconfig
um                           x86_64_defconfig
sh                   sh7770_generic_defconfig
arc                    vdk_hs38_smp_defconfig
ia64                                defconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc                    socrates_defconfig
powerpc                     ppa8548_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                             mxs_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
