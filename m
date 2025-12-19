Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A64CD1092
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Dec 2025 18:04:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5234541391;
	Fri, 19 Dec 2025 17:04:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ePZMbi-hDxo; Fri, 19 Dec 2025 17:04:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88EF641394
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766163848;
	bh=pTwOaTD/VZ5YWFaQ5FEGJuBnvRCQIxPtWPOG3lS7/g0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BYtmtKKuXz6erAOdqI0eVK23YDDtFoT1X1YJ7WPSz7lFiURu9GoSG+EP7LYfK+rTB
	 dzOaXKqp4DQWsBoOESsLxOrLtKlVmHkYV02xCWI/e1UN7euksvqAAyhk77QYONidan
	 KA2PJblJNTW9eMiCBnM93hQTvt1o8F0jlDrG4W4Z9BWRNft95uumY13hfRL/3nLEfL
	 3mz6dniuJeOlsNo6/mjdmkJIo7hQnyL7zlu/NMcVB+k3eChSyzxQtWadacnQvkCsBl
	 NSGSrag/FdwGzXxpUEgRNEcClNWN48xbEXW2IRJCmaFVlpvdG/FtMMiGpXzclUjb5H
	 eI0WaEBxFQfJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88EF641394;
	Fri, 19 Dec 2025 17:04:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 477A0293
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 17:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2DB7983E13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 17:04:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ii3J1ZP3CjvX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Dec 2025 17:04:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 48D5983DD9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48D5983DD9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48D5983DD9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 17:04:06 +0000 (UTC)
X-CSE-ConnectionGUID: HfXSBdHgRxi6eJ8c7fveJQ==
X-CSE-MsgGUID: MigpJRbbR0GpAXpu3mTH9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11647"; a="71971774"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="71971774"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 09:04:06 -0800
X-CSE-ConnectionGUID: lFs37cK2SUei0eh6KEjw9w==
X-CSE-MsgGUID: 6SacUfJdR6aoMNr0x3KhOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="198809539"
Received: from lkp-server01.sh.intel.com (HELO 0d09efa1b85f) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 19 Dec 2025 09:04:04 -0800
Received: from kbuild by 0d09efa1b85f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vWdta-000000003lv-0SYA
 for intel-wired-lan@lists.osuosl.org; Fri, 19 Dec 2025 17:04:02 +0000
Date: Sat, 20 Dec 2025 01:03:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202512200119.zhY1DMIj-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766163846; x=1797699846;
 h=date:from:to:subject:message-id;
 bh=+ezN2ldGSSZZ39Vw8BA2w5jNnBre3bF2R6V0Kd99d/I=;
 b=OcBOl9VqTnuSUjdZxVCQAgwXxsbkr0U1yPupKkjKZ6Vb9tu/c1JiaSrI
 Ld7fBYM0YmAkWiBo66tz3m9Z8g4/H8tcgewAAplS4wWWXn03092M6avyb
 8RpAUcqKQcQEPrUKOFfyiJsl6cYNEkHu5eKSJMMEDRoqnvE9Phg6t+ngU
 JhZ/bLRyzOM5D/ZpRQZ80TLu00rbPJZh6a1srYsJtghh0nbdyTLJj/qlb
 ojdX3t9PzOjYTht+r2aGyiyKcR6epYS4Tz0bb7W5FNypRWHd1ySe+H0pI
 /DltwFYNEdXq9wGgkEVphcV3CRS6FqF5WChEyYNiPN7HzJ87Z7F7skoiF
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OcBOl9Vq
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 8282ed7f73cf08f99288d3d0131e07f149063fbe
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 8282ed7f73cf08f99288d3d0131e07f149063fbe  ixgbe: don't initialize aci lock in ixgbe_recovery_probe()

elapsed time: 2628m

configs tested: 103
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arm                        clps711x_defconfig    clang-22
arm                                 defconfig    clang-22
arm                       imx_v6_v7_defconfig    clang-16
arm                         socfpga_defconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251219    clang-22
arm64                 randconfig-002-20251219    clang-20
arm64                 randconfig-003-20251219    gcc-9.5.0
arm64                 randconfig-004-20251219    clang-22
csky                             allmodconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251219    gcc-12.5.0
csky                  randconfig-002-20251219    gcc-9.5.0
hexagon                          allmodconfig    clang-17
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251219    clang-18
hexagon               randconfig-002-20251219    clang-19
i386                             allmodconfig    gcc-14
i386                             allyesconfig    gcc-14
i386                                defconfig    clang-20
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251219    gcc-15.1.0
loongarch             randconfig-002-20251219    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251219    gcc-11.5.0
nios2                 randconfig-002-20251219    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251219    gcc-13.4.0
parisc                randconfig-002-20251219    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                      arches_defconfig    gcc-15.1.0
powerpc                 mpc8313_rdb_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251219    clang-22
powerpc               randconfig-002-20251219    gcc-8.5.0
powerpc64             randconfig-001-20251219    clang-22
powerpc64             randconfig-002-20251219    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                          debug_defconfig    gcc-15.1.0
s390                                defconfig    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                          landisk_defconfig    gcc-15.1.0
sh                          lboxre2_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251219    clang-20
x86_64      buildonly-randconfig-002-20251219    gcc-13
x86_64      buildonly-randconfig-003-20251219    clang-20
x86_64      buildonly-randconfig-004-20251219    clang-20
x86_64      buildonly-randconfig-005-20251219    clang-20
x86_64      buildonly-randconfig-006-20251219    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251219    gcc-14
x86_64                randconfig-002-20251219    gcc-14
x86_64                randconfig-003-20251219    gcc-14
x86_64                randconfig-004-20251219    clang-20
x86_64                randconfig-005-20251219    clang-20
x86_64                randconfig-006-20251219    clang-20
x86_64                randconfig-011-20251219    clang-20
x86_64                randconfig-012-20251219    gcc-14
x86_64                randconfig-013-20251219    clang-20
x86_64                randconfig-015-20251219    gcc-14
x86_64                randconfig-016-20251219    clang-20
x86_64                randconfig-071-20251219    gcc-14
x86_64                randconfig-072-20251219    clang-20
x86_64                randconfig-073-20251219    gcc-14
x86_64                randconfig-074-20251219    clang-20
x86_64                randconfig-075-20251219    clang-20
x86_64                randconfig-076-20251219    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
