Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A3E55BE42
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 06:49:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B360E82C84;
	Tue, 28 Jun 2022 04:49:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B360E82C84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656391755;
	bh=67qxQt6Gz5TKq3ReXN7r9Xt2hSxxoY5S/jwDiifR8yU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DRmqoIcmigcJN9jGX/oQ5aJ8WaaM+k4bDB2hukQHx+fh3ZZMBB/LBBV7ZuuETgcfG
	 ZVfZBASqML35O0dImuUja1TksFEYr6CUieZ3Aht2V5nN+KpYNmm9xyg5J1SMnE0I2L
	 GN/DHU8F5x5JaEZW2/WVrdvGpAa+b/zBNKota3q0N0U0hKbXtZP94hLtcDiARH0Oij
	 2AZ+u1xg4eRP6naSPqVDsFLLDEHPRZrWeiw5c6I9EzCR38o9O9BMMizTLofJ7Abwkq
	 Morrjqr6lNBjPpTUlPqsMSQRMvdyVGv2B6Pbb7KJsaiMy9P2uRkkhJuwF/X03JMJP5
	 8uYu3UxIDLmUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8cOM1zqJBbCA; Tue, 28 Jun 2022 04:49:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82BC882A53;
	Tue, 28 Jun 2022 04:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82BC882A53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1AFAC1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 04:49:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E7DB882B8C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 04:49:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7DB882B8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ukiYeez3TyyT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 04:49:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCAB482A53
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CCAB482A53
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 04:49:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="343321438"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="343321438"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 21:49:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="732595790"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2022 21:49:05 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o639t-0009WC-2n;
 Tue, 28 Jun 2022 04:49:05 +0000
Date: Tue, 28 Jun 2022 12:48:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62ba881d.MhsU2K7vp3g9dGUK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656391747; x=1687927747;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=V3SgWblsMgp5GhO+K/5DIAcSp5L/swRx/L8+EOc3COw=;
 b=Eq3kZnUF0tlaFHsbEXcWex8X32+QpF8R5jD+bbxj/UQscns3eKV27cDX
 SPzs3s0gDt+gDWk05cv6JpOmYwE0ZdYs/eDubeZisTbDReMjBYAsWk6Q7
 05m5pKa2exuNYTYauC4Clpi9hSsScHAZQa4ylTEQnYBLj2JFC7m7nID7n
 iZi31OPRLO1l/9nMT2tsMn0s4qv7f1mDRmJlQPg46ok7hmGcLBW9rgarv
 yUdpl5n1ypWBB/+AZI18+A0kWVaWhX3DEzhzfyvz3RsfWwQwDsYOEBVC6
 mIc7VvwaZicywYC0ZqG+7/b29Z7S5yJXyW9tUvcQBZL1hLRdPT/6LNXgn
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Eq3kZnUF
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 a26fbaeff6b03c6f42a0e6c32ed5d6e77574e6f8
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
branch HEAD: a26fbaeff6b03c6f42a0e6c32ed5d6e77574e6f8  ice: add write functionality for GNSS TTY

elapsed time: 723m

configs tested: 88
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-c001-20220627
s390                          debug_defconfig
arm                          gemini_defconfig
sparc64                             defconfig
sparc64                          alldefconfig
mips                           xway_defconfig
sh                        sh7785lcr_defconfig
arc                        nsim_700_defconfig
arc                           tb10x_defconfig
sh                   sh7770_generic_defconfig
arm                          iop32x_defconfig
sh                           sh2007_defconfig
sh                           se7750_defconfig
sh                         ap325rxa_defconfig
openrisc                 simple_smp_defconfig
sh                          rsk7201_defconfig
sh                          sdk7780_defconfig
arm                       omap2plus_defconfig
powerpc                         ps3_defconfig
arm                        realview_defconfig
m68k                          sun3x_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64               randconfig-k001-20220627
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
x86_64               randconfig-a013-20220627
x86_64               randconfig-a012-20220627
x86_64               randconfig-a016-20220627
x86_64               randconfig-a015-20220627
x86_64               randconfig-a011-20220627
x86_64               randconfig-a014-20220627
i386                 randconfig-a014-20220627
i386                 randconfig-a011-20220627
i386                 randconfig-a012-20220627
i386                 randconfig-a015-20220627
i386                 randconfig-a016-20220627
i386                 randconfig-a013-20220627
arc                  randconfig-r043-20220627
s390                 randconfig-r044-20220627
riscv                randconfig-r042-20220627
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                        multi_v5_defconfig
powerpc                     skiroot_defconfig
powerpc                     ppa8548_defconfig
mips                           rs90_defconfig
arm                           spitz_defconfig
powerpc                      acadia_defconfig
mips                           ip27_defconfig
arm                        neponset_defconfig
powerpc                     ksi8560_defconfig
i386                 randconfig-a005-20220627
i386                 randconfig-a001-20220627
i386                 randconfig-a006-20220627
i386                 randconfig-a004-20220627
i386                 randconfig-a003-20220627
i386                 randconfig-a002-20220627
x86_64               randconfig-a004-20220627
x86_64               randconfig-a006-20220627
x86_64               randconfig-a001-20220627
x86_64               randconfig-a005-20220627
x86_64               randconfig-a002-20220627
x86_64               randconfig-a003-20220627
hexagon              randconfig-r041-20220627
hexagon              randconfig-r045-20220627

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
