Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DBE997779
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 23:27:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AECE781375;
	Wed,  9 Oct 2024 21:27:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hxxsovqss9Vn; Wed,  9 Oct 2024 21:27:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EA578136B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728509258;
	bh=jojM8ZmMmm3uMuGcDLrls4n/2G0foqVIFYZykmFc0cQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YVxwXCJAtTZHbyTvoAp+PRdj+TbICKzEcgxUtmR2yBoS50Flga9lIzqkHCjybdWhF
	 UuGYHCn0+mzezGNEmRhBrlqCye9z23fWjeXFB2asIERRod31D8e+dRm7vsOiAApb7e
	 kUEBeOonxk1PxbNWY+cVZCP6Z+nnVQcGlyuueRhFtnaSB30vwMS0L9rjmg1CEHHGff
	 VfbWcs2FlQIR+ZhEnNz0PQVYH/3u4I0hNPfkb2YOYh9NmMXY4IuIlfCC3yP1JwbsWD
	 KSsOTLgdTo5lHbRaGG+t8cHTt0DzLYVlj9qM7mAEmUhJxHirt0IhtzfqbRGUufuw55
	 w9HAbzriEa4Yg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EA578136B;
	Wed,  9 Oct 2024 21:27:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4242B1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 21:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F5FA40136
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 21:27:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bkDSdEwkVsYJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 21:27:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D5F484011A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5F484011A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5F484011A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 21:27:33 +0000 (UTC)
X-CSE-ConnectionGUID: FzJcePEURr2aR3NclHOwOw==
X-CSE-MsgGUID: gHbDH4Z3TpSoG97o1jUIEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27789228"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="27789228"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 14:27:22 -0700
X-CSE-ConnectionGUID: kImgrnxARn+tFoFcsqJ7Mw==
X-CSE-MsgGUID: eUKfFwJlTs2m+yqBTD+7Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76853787"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 09 Oct 2024 14:27:22 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1syeDG-0009oZ-2i
 for intel-wired-lan@lists.osuosl.org; Wed, 09 Oct 2024 21:27:18 +0000
Date: Thu, 10 Oct 2024 05:27:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410100503.9pN16sDU-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728509255; x=1760045255;
 h=date:from:to:subject:message-id;
 bh=4oNrjOO07mis321SazD3M5LUixWHjJWcslIAYRCCyFk=;
 b=eGrfdLqXEhP3GlaRjFjcmRSyoe743/qHLd+a+KbX2IMCK+U/kIb+ju3d
 1+RnG5aUyigBKilaC3dA85BK0EgWfytNmLbeeTDgwIEv32dvXjYfQ+KDE
 f9UAxFkb4pEO3gXIqnIltLR0gb4eTh/Y2kN+NhlCbtYZykuQmKxer8OJl
 y/7oMZ982bc0PRKsggi4wwCWLkMN8JNPZa0xpt3LuILVdMwkBaeyU7u7I
 krlFGwov7DeAJiFRlo7wlSsDX7FaHvNIgQdd7Dj8ZmVOYDGGBTsumpuZT
 OqzhoZJjtM3IoeRZUygLdr1dbzGFX4HAcIOAutprST/ICj78/F9XBy6jq
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eGrfdLqX
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 42b2331081178785d50d116c85ca40d728b48291
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 42b2331081178785d50d116c85ca40d728b48291  tools: ynl-gen: refactor check validation for TypeBinary

elapsed time: 1677m

configs tested: 74
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241009    clang-18
i386        buildonly-randconfig-002-20241009    gcc-12
i386        buildonly-randconfig-003-20241009    clang-18
i386        buildonly-randconfig-004-20241009    clang-18
i386        buildonly-randconfig-005-20241009    clang-18
i386        buildonly-randconfig-006-20241009    gcc-12
i386                                defconfig    clang-18
i386                  randconfig-001-20241009    clang-18
i386                  randconfig-002-20241009    clang-18
i386                  randconfig-003-20241009    gcc-12
i386                  randconfig-004-20241009    clang-18
i386                  randconfig-005-20241009    gcc-12
i386                  randconfig-006-20241009    clang-18
i386                  randconfig-011-20241009    clang-18
i386                  randconfig-012-20241009    clang-18
i386                  randconfig-013-20241009    clang-18
i386                  randconfig-014-20241009    gcc-12
i386                  randconfig-015-20241009    clang-18
i386                  randconfig-016-20241009    gcc-11
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    clang-20
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
