Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35936AE8ADE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 18:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33D2441EE6;
	Wed, 25 Jun 2025 16:59:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VTxfodbqX0l5; Wed, 25 Jun 2025 16:59:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FEDF41EEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750870748;
	bh=qX8VAiz4Elbc75gF/juxmbmdPuuDhFTbVwmS+MM4wdg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iLd1eD8vjXXwLnedyBs41rTpgZG0o8i1ESlYql5eJnAQkowTOO8ZsZzZh8IxMBmvj
	 hATcydi3u8nE59LOXXicMzRB98NGMcyrOmLhXJtFl3U506uM+Pz/HaywhPXr6YhJv0
	 WdDkYhkypceuSTHL7cIdO4Oby5lQkARlIex8ZPw6RX5LAGq91vMRkzsrUICPEwIXt/
	 Jiu88lKGntZJxJpm3hRQsrpoICp0akRFDCe0BaI3zzIIIWFRg9cFoxXqV8KaU9y4Yk
	 9vUEaEZAy8PivB6ah6giwBIVWCUKrQBfcXidaXzQCNfp5PdV1vHBZtum79f88e8yWd
	 NI76ud3mpzcoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FEDF41EEA;
	Wed, 25 Jun 2025 16:59:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5EB6043F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B0EC6102D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:59:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pmwKc_w-_d9L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 16:59:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7F10861040
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F10861040
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7F10861040
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:59:05 +0000 (UTC)
X-CSE-ConnectionGUID: 1Op+UsHFTBidZSxMLwq5tQ==
X-CSE-MsgGUID: abjFKk86Q46SwQ2FfbUjqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="56936079"
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="56936079"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 09:59:05 -0700
X-CSE-ConnectionGUID: xcJqljDAQqOkmAJmYl5hnw==
X-CSE-MsgGUID: jIyqxWNNQWyICf99YSKTAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="183299425"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 25 Jun 2025 09:59:04 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uUTSf-000TLU-2k
 for intel-wired-lan@lists.osuosl.org; Wed, 25 Jun 2025 16:59:01 +0000
Date: Thu, 26 Jun 2025 00:58:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506260026.sSh3FLqo-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750870746; x=1782406746;
 h=date:from:to:subject:message-id;
 bh=DJu70Yat1Ddz8GTYSNtvGO4AO5DlBLRMRDatCbX9ipI=;
 b=OYJqToBBebFQOz+o5PoSmRFhDSaHKhoJF1pjB/sW78YpzbDr63IAmuS+
 O1zxrhT3iHMqHuu6A2N5lrPZV+npk6483C7ixdIpDW/ZNb6BXUu5yv/uw
 E4d+KRsTScI8ToBqSsWeeZ8pkOOaYQ5gfpmO9zM39CH6Tw7tCpcNTer9D
 XtTpkpaua4XDoNR87jJAis6msWzMNfFz5eWKDIWbWVKEO7c0Qdc2W+4Al
 550x4aqAvlaoj4uMVrySDzYppeJKGZC7tWJbCQOjioST9QLZrbCZYTFrk
 useySNSbtt2VLcZD9ondpS4yV8Y+jZVlIhfImgpqjV0Ar07zS5J2F6oV5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OYJqToBB
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 78b3d493ad73edf61a4a1514be0a42d5e47679eb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 78b3d493ad73edf61a4a1514be0a42d5e47679eb  ice: default to TIME_REF instead of TXCO on E825-C

elapsed time: 1371m

configs tested: 106
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                   randconfig-001-20250625    gcc-11.5.0
arc                   randconfig-002-20250625    gcc-11.5.0
arc                   randconfig-002-20250625    gcc-12.4.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-21
arm                              allyesconfig    clang-19
arm                   randconfig-001-20250625    clang-21
arm                   randconfig-001-20250625    gcc-11.5.0
arm                   randconfig-002-20250625    gcc-11.5.0
arm                   randconfig-003-20250625    gcc-11.5.0
arm                   randconfig-003-20250625    gcc-13.3.0
arm                   randconfig-004-20250625    gcc-11.5.0
arm                   randconfig-004-20250625    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250625    gcc-11.5.0
arm64                 randconfig-002-20250625    clang-20
arm64                 randconfig-002-20250625    gcc-11.5.0
arm64                 randconfig-003-20250625    gcc-11.5.0
arm64                 randconfig-003-20250625    gcc-12.3.0
arm64                 randconfig-004-20250625    clang-20
arm64                 randconfig-004-20250625    gcc-11.5.0
csky                              allnoconfig    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250625    clang-20
i386        buildonly-randconfig-001-20250625    gcc-12
i386        buildonly-randconfig-002-20250625    gcc-12
i386        buildonly-randconfig-003-20250625    gcc-12
i386        buildonly-randconfig-004-20250625    gcc-12
i386        buildonly-randconfig-005-20250625    clang-20
i386        buildonly-randconfig-005-20250625    gcc-12
i386        buildonly-randconfig-006-20250625    clang-20
i386        buildonly-randconfig-006-20250625    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250625    gcc-12
x86_64      buildonly-randconfig-002-20250625    clang-20
x86_64      buildonly-randconfig-002-20250625    gcc-12
x86_64      buildonly-randconfig-003-20250625    clang-20
x86_64      buildonly-randconfig-003-20250625    gcc-12
x86_64      buildonly-randconfig-004-20250625    clang-20
x86_64      buildonly-randconfig-004-20250625    gcc-12
x86_64      buildonly-randconfig-005-20250625    clang-20
x86_64      buildonly-randconfig-005-20250625    gcc-12
x86_64      buildonly-randconfig-006-20250625    clang-20
x86_64      buildonly-randconfig-006-20250625    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
