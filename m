Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 050E6B56226
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Sep 2025 18:12:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 389F460BF1;
	Sat, 13 Sep 2025 16:12:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cE2iU31-scGz; Sat, 13 Sep 2025 16:12:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7328C60859
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757779950;
	bh=9Miwocdn8z9eYXjKN8mwjpuUDzHiS+xKWQxnt4WznU8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cYFfdqjEj5Xb2o9OdI89W49e737Pf8kJv68AFUQKi6456HEftwSq56WQGJA/x50cN
	 g0vZxgfTwQfsPxEkVNGV7rifp+i5sMk+hqo2O+NP7DzffHVCiVaofTAhJhgqrR9Thj
	 IT8BiDDhUxIc77eZQpS7UgNxU2QeFZvFEhvNGmbUNqUk0BBHLK/SN1Mh/kIeKCXs0N
	 F5H4Xngoe8/Y5oj9HBSW2BNnZxXvUlhr8xWtNyTWsxkrBfO0vQTXamrkTTStkAs1Ve
	 vkfGTytQqLHlAgw3Ml7pLeRcg0xAb+2sjOkIKFY4dSZURHUaf5ndkLcTu/QcbpEZ/L
	 jPJxP74hE8apw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7328C60859;
	Sat, 13 Sep 2025 16:12:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6185C117
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 16:12:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 530D384172
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 16:12:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cHPkVu3RxJ9D for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Sep 2025 16:12:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5E0B3841CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E0B3841CB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E0B3841CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 16:12:27 +0000 (UTC)
X-CSE-ConnectionGUID: VBRwUAAFQ2CQyE/SEf+ZvA==
X-CSE-MsgGUID: mDSlpOJFQKiRYhQCrA0oCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11552"; a="59966148"
X-IronPort-AV: E=Sophos;i="6.18,262,1751266800"; d="scan'208";a="59966148"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 09:12:27 -0700
X-CSE-ConnectionGUID: TBg2vRcDRL6Y9+XDNR6X2A==
X-CSE-MsgGUID: ZmSLhbmQSZuhlANIXBSlUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,262,1751266800"; d="scan'208";a="178259160"
Received: from lkp-server02.sh.intel.com (HELO eb5fdfb2a9b7) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 13 Sep 2025 09:12:26 -0700
Received: from kbuild by eb5fdfb2a9b7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uxSrP-0001eh-1e
 for intel-wired-lan@lists.osuosl.org; Sat, 13 Sep 2025 16:12:23 +0000
Date: Sun, 14 Sep 2025 00:12:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509140053.PYouDb75-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757779947; x=1789315947;
 h=date:from:to:subject:message-id;
 bh=ZLEnPDprawX8uP1TfsJynoTTdovA7xzPD8XKl3fNERc=;
 b=TeGbYNYM7icFAhwl9buTJ1f9b98bg2dsJgREPTLi7CMlg3CYz1HAhaKI
 R979YyKb/q3ale0YpcDxEk9vDyNPic9Zo0kCRQ4QllbaSl88jZQmp/YTu
 3vNVBy/xwM1IOU/z0Y1cKwq36x9GG8mMTdAJFZbSWqPQCEqpT3oL5qDm7
 I15QqoKNJAy8KGCP6me6ySKCyGxV5G8H9wCOV7HyypmGrROT4VoxMaeL7
 3J7HfPigDvJu2023JF//ybJmO8GQnN44dug8G0Uk+T8d3gf6DtONa44jg
 a2BelgH5LObkKcKWY5DDNObgrAIrL/Tkm+mVdSjOD7q/A2qa6w0OGTy+H
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TeGbYNYM
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5b95cc065ed0ebb97f606b7ca70bb469102c5b55
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
branch HEAD: 5b95cc065ed0ebb97f606b7ca70bb469102c5b55  igc: don't fail igc_probe() on LED setup error

elapsed time: 1467m

configs tested: 101
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250913    gcc-10.5.0
arc                   randconfig-002-20250913    gcc-11.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250913    clang-20
arm                   randconfig-002-20250913    clang-22
arm                   randconfig-003-20250913    clang-22
arm                   randconfig-004-20250913    gcc-14.3.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250913    clang-22
arm64                 randconfig-002-20250913    gcc-14.3.0
arm64                 randconfig-003-20250913    clang-22
arm64                 randconfig-004-20250913    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250913    gcc-11.5.0
csky                  randconfig-002-20250913    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250913    clang-16
hexagon               randconfig-002-20250913    clang-22
i386        buildonly-randconfig-001-20250913    gcc-14
i386        buildonly-randconfig-002-20250913    clang-20
i386        buildonly-randconfig-003-20250913    clang-20
i386        buildonly-randconfig-004-20250913    clang-20
i386        buildonly-randconfig-005-20250913    clang-20
i386        buildonly-randconfig-006-20250913    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250913    clang-18
loongarch             randconfig-002-20250913    clang-22
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
nios2                 randconfig-001-20250913    gcc-8.5.0
nios2                 randconfig-002-20250913    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250913    gcc-12.5.0
parisc                randconfig-002-20250913    gcc-9.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250913    gcc-8.5.0
powerpc               randconfig-002-20250913    clang-22
powerpc               randconfig-003-20250913    gcc-10.5.0
powerpc64             randconfig-001-20250913    gcc-10.5.0
powerpc64             randconfig-002-20250913    clang-22
powerpc64             randconfig-003-20250913    gcc-8.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250913    gcc-13.4.0
riscv                 randconfig-002-20250913    clang-20
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250913    clang-22
s390                  randconfig-002-20250913    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250913    gcc-9.5.0
sh                    randconfig-002-20250913    gcc-14.3.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250913    gcc-15.1.0
sparc                 randconfig-002-20250913    gcc-8.5.0
sparc64               randconfig-001-20250913    gcc-8.5.0
sparc64               randconfig-002-20250913    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250913    gcc-14
um                    randconfig-002-20250913    clang-22
x86_64      buildonly-randconfig-001-20250913    clang-20
x86_64      buildonly-randconfig-002-20250913    gcc-14
x86_64      buildonly-randconfig-003-20250913    gcc-12
x86_64      buildonly-randconfig-004-20250913    gcc-14
x86_64      buildonly-randconfig-005-20250913    clang-20
x86_64      buildonly-randconfig-006-20250913    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250913    gcc-14.3.0
xtensa                randconfig-002-20250913    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
