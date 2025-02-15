Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA24AA3708A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2025 21:16:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FA1860A5D;
	Sat, 15 Feb 2025 20:16:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yA53iiOSz4iM; Sat, 15 Feb 2025 20:16:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 284F360A66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739650594;
	bh=T2ns8VJmlPuceTWhCUPf8O62flY/peicvXN+cwLlpcw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cPs+/SdW2TjU7FeCD6sK6yDUBq+ZnUUOjL8XXzfBdYioIWNh81H5FyaFW/s9LbpsZ
	 hFxJl12Yqh2HNOcY8/gGndb1hBFjkUyb/TXHxuCiYbOjFPH5bQL/DqOmtE4au5hZ1B
	 9aD+5KnqPGsn8fkIgIBPHcF65chMlek+FTLas/xLLnn23FrnqCYZAQY6SCquAP22F4
	 g8vGOCl463XTzwFTSwAJOw/q0s0R/rzVSAvUs0i9XWPmFIbEiozb8bTWoVfjh1Y2up
	 TDHfFvP8XPy5j5x9mq+oF3CiFBX7IlJxn19FHfUCcEY566sykEiw9QY/GROfl9Code
	 eCIJNh1DoNd2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 284F360A66;
	Sat, 15 Feb 2025 20:16:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8101F72
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 20:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D0F140042
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 20:16:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r0hm8rqGuwz4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Feb 2025 20:16:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 21C0440A3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21C0440A3A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21C0440A3A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 20:16:29 +0000 (UTC)
X-CSE-ConnectionGUID: 1I+nsHjDSC2vC9KbNMdtcA==
X-CSE-MsgGUID: L5GEztdlQWOHfRbyeIMtYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11346"; a="51002231"
X-IronPort-AV: E=Sophos;i="6.13,289,1732608000"; d="scan'208";a="51002231"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2025 12:16:28 -0800
X-CSE-ConnectionGUID: AYdxiVApQou2nMgkXVdugg==
X-CSE-MsgGUID: NK10t0hHTWCJDrO1FCGA+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113619018"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 15 Feb 2025 12:16:27 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tjOaO-001B9H-1U
 for intel-wired-lan@lists.osuosl.org; Sat, 15 Feb 2025 20:16:24 +0000
Date: Sun, 16 Feb 2025 04:16:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502160417.fRwU6a39-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739650589; x=1771186589;
 h=date:from:to:subject:message-id;
 bh=iW14Tdvsl3gc+68VGfCFoYG6S61YlQyszcMeJb9MqnM=;
 b=kKJTkIZG+NwgjdZQiT+YVQqKLOikWBkC3E6ja1mSjRhBXz5Phtlh7VpP
 KAgxScJkGXef8QqlZUtVCZLx8xILKqRTmRO+vV+hyf//6TCqDcuzvr980
 G6KC0FQmQGirvxVbjnyA9IFGC6LFDcFF6TOIdRKSH4nPbW84mgVmL/xHX
 ipHl3jasEyawhSU7bTazjCJG36UdML5SlBZ7OQ4cNMlXnkSQXXVb0bfWg
 VU67zI6n2XnKKzuzJZ5bQDvnlaI/GTk5W4N0FpL2tfEcdV2S8PpZw4VGt
 OnF6fE2b68H5/eta+qmwp0F9BFT45KB87mX/yajNO1gwTG0wz7LFnxDAZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kKJTkIZG
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 48ccdcd87e0d2d4c82eb50eaff53c6aeb9a8372b
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
branch HEAD: 48ccdcd87e0d2d4c82eb50eaff53c6aeb9a8372b  iavf: add support for Rx timestamps to hotpath

elapsed time: 1450m

configs tested: 89
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250215    gcc-13.2.0
arc                   randconfig-002-20250215    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250215    clang-15
arm                   randconfig-002-20250215    clang-17
arm                   randconfig-003-20250215    gcc-14.2.0
arm                   randconfig-004-20250215    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250215    clang-21
arm64                 randconfig-002-20250215    gcc-14.2.0
arm64                 randconfig-003-20250215    clang-17
arm64                 randconfig-004-20250215    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250215    gcc-14.2.0
csky                  randconfig-002-20250215    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250215    clang-21
hexagon               randconfig-002-20250215    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250215    gcc-12
i386        buildonly-randconfig-002-20250215    clang-19
i386        buildonly-randconfig-003-20250215    clang-19
i386        buildonly-randconfig-004-20250215    gcc-12
i386        buildonly-randconfig-005-20250215    clang-19
i386        buildonly-randconfig-006-20250215    clang-19
i386                                defconfig    clang-19
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250215    gcc-14.2.0
loongarch             randconfig-002-20250215    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250215    gcc-14.2.0
nios2                 randconfig-002-20250215    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250215    gcc-14.2.0
parisc                randconfig-002-20250215    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc               randconfig-001-20250215    gcc-14.2.0
powerpc               randconfig-002-20250215    clang-21
powerpc               randconfig-003-20250215    clang-19
powerpc64             randconfig-001-20250215    gcc-14.2.0
powerpc64             randconfig-002-20250215    clang-21
powerpc64             randconfig-003-20250215    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250215    clang-17
riscv                 randconfig-002-20250215    clang-19
s390                              allnoconfig    clang-21
s390                  randconfig-001-20250215    gcc-14.2.0
s390                  randconfig-002-20250215    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                    randconfig-001-20250215    gcc-14.2.0
sh                    randconfig-002-20250215    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250215    gcc-14.2.0
sparc                 randconfig-002-20250215    gcc-14.2.0
sparc64               randconfig-001-20250215    gcc-14.2.0
sparc64               randconfig-002-20250215    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250215    clang-21
um                    randconfig-002-20250215    clang-19
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250215    gcc-12
x86_64      buildonly-randconfig-002-20250215    clang-19
x86_64      buildonly-randconfig-003-20250215    gcc-12
x86_64      buildonly-randconfig-004-20250215    clang-19
x86_64      buildonly-randconfig-005-20250215    clang-19
x86_64      buildonly-randconfig-006-20250215    clang-19
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250215    gcc-14.2.0
xtensa                randconfig-002-20250215    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
