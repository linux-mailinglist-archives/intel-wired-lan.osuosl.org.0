Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D8DB32851
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Aug 2025 13:20:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91E946130B;
	Sat, 23 Aug 2025 11:20:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q6Jo1xYJglNT; Sat, 23 Aug 2025 11:20:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F13861310
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755948030;
	bh=EK9876IIdrOpE0x2LGhs8dY2kok5RFmJQabNd/VdlBg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=E+aQWQ/aITFKL6R9D5ZWi/9g5fhHB/wtO1uPGJjt2VPBnVOtNmHVNBeO9GpAhl52g
	 +PxbBUoqPEzGoocOSlh16su6CBE/8MSzy5lCVnGQbZAPn1s6xD6YyRqY4J+bGJNKoa
	 5mAqE2hKzo43l3yK1Aq/xNcRTZez3vY1bQfV1U7sxCKa+PQD/jZP+on9is6uvui/0s
	 q9q/UGv/X1wCQp9xqhR+vckUU0XIlO5IsMqGql86cfLWqFxq0Xz2zkjtZ0sDsC5ecD
	 d1D/gt3XLEzCbd+We9zp74LCgEtkPIvL4+gounIfx8CsRUZiyLeLt0XQexmc3vZNG+
	 LfwmadwtFeVew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F13861310;
	Sat, 23 Aug 2025 11:20:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A8D9CE4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 11:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A62EB41380
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 11:20:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B53JX2uF0XPg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Aug 2025 11:20:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7593E413E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7593E413E4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7593E413E4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 11:20:27 +0000 (UTC)
X-CSE-ConnectionGUID: hdNrJDoeRJ+5DxKqe6LlRg==
X-CSE-MsgGUID: ZJ7nmCJ5SZag56XUWz/ECA==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="58161259"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58161259"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2025 04:20:26 -0700
X-CSE-ConnectionGUID: Ujmpx9oASIS3cx9OaBhkyQ==
X-CSE-MsgGUID: whYCMqhbSz2wxZrC9BMESA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="199858884"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 23 Aug 2025 04:20:26 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1upmIJ-000MGx-1N
 for intel-wired-lan@lists.osuosl.org; Sat, 23 Aug 2025 11:20:23 +0000
Date: Sat, 23 Aug 2025 19:20:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508231910.hdBN0Bme-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755948027; x=1787484027;
 h=date:from:to:subject:message-id;
 bh=9wuo3dEn5RXWwznDV6PqsfZPH/gYjUHwFHqCc0a5yzI=;
 b=cnQ4YjUH/i7swSBo0IoGeUScZrd3ATVVJUULonvn9fCp8SmZT0ekPr4T
 fXZxIqAPS4cqkCcE4B8LReDaBL1Pkfhnkmytxsp3Rmbc1lsLMDrDS2dj5
 0jk35pC65Y6faiZx9KW+qStrn4x5cZLX5nRjN9DuaKTMAH8bGmhdzty5I
 W7kz7I/QRhek6CAcuDAvpYJplNEwoJy1gvIaZDhzqHzIULVbCOcgs5OGt
 LfqnalW0GBUqLJgpYnkgXVK51nFV1vrS5rBo1OujIsKPEO2qwBHJCi4Hc
 Dr6bCYAlqnJogfD8uxIYlIydQmnPOswYpv/MPOohxZwcP6SwdgktB1Bxh
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cnQ4YjUH
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 cd31182c80e8ec02dacd1d56b91c31e5c7d2c580
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: cd31182c80e8ec02dacd1d56b91c31e5c7d2c580  Merge branch 'selftests-test-xdp_tx-for-single-buffer'

elapsed time: 1187m

configs tested: 112
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250823    gcc-9.5.0
arc                   randconfig-002-20250823    gcc-12.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250823    clang-17
arm                   randconfig-002-20250823    gcc-15.1.0
arm                   randconfig-003-20250823    clang-20
arm                   randconfig-004-20250823    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250823    gcc-11.5.0
arm64                 randconfig-002-20250823    clang-22
arm64                 randconfig-003-20250823    clang-22
arm64                 randconfig-004-20250823    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250823    gcc-15.1.0
csky                  randconfig-002-20250823    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250823    clang-22
hexagon               randconfig-002-20250823    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250823    clang-20
i386        buildonly-randconfig-002-20250823    clang-20
i386        buildonly-randconfig-003-20250823    clang-20
i386        buildonly-randconfig-004-20250823    clang-20
i386        buildonly-randconfig-005-20250823    clang-20
i386        buildonly-randconfig-006-20250823    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250823    clang-22
loongarch             randconfig-002-20250823    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250823    gcc-11.5.0
nios2                 randconfig-002-20250823    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250823    gcc-8.5.0
parisc                randconfig-002-20250823    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250823    clang-22
powerpc               randconfig-002-20250823    clang-22
powerpc               randconfig-003-20250823    clang-22
powerpc64             randconfig-001-20250823    gcc-11.5.0
powerpc64             randconfig-002-20250823    clang-22
powerpc64             randconfig-003-20250823    gcc-10.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250823    clang-22
riscv                 randconfig-002-20250823    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250823    gcc-9.5.0
s390                  randconfig-002-20250823    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250823    gcc-15.1.0
sh                    randconfig-002-20250823    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250823    gcc-8.5.0
sparc                 randconfig-002-20250823    gcc-8.5.0
sparc64               randconfig-001-20250823    gcc-8.5.0
sparc64               randconfig-002-20250823    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250823    clang-22
um                    randconfig-002-20250823    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250823    gcc-12
x86_64      buildonly-randconfig-002-20250823    gcc-12
x86_64      buildonly-randconfig-003-20250823    clang-20
x86_64      buildonly-randconfig-004-20250823    clang-20
x86_64      buildonly-randconfig-005-20250823    gcc-12
x86_64      buildonly-randconfig-006-20250823    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250823    gcc-15.1.0
xtensa                randconfig-002-20250823    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
