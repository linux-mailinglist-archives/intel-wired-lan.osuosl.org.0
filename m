Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D2DA40A7B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Feb 2025 18:02:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AEAF40676;
	Sat, 22 Feb 2025 17:02:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ld43829PjURx; Sat, 22 Feb 2025 17:02:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40DEC40678
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740243768;
	bh=wMSQAHAVqMnh7erLqLkQQN16WoU/PeuLag+oCZw/aks=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7avQySmg6IwFymVEpVhaG5mFG0H76uXx0XNRyCl3MXninMps+LMLMzL3uXKgRRRPg
	 adzx1J5sxDkd/dXfZobiU0BzpMDkaeuUlY8YZ6zASPIRtHrh1fjCew0cq0cFSYfHFt
	 5kqBU+YBzJDF8ymKWqQ0IH6vIfOdzocEL2q0x4TUEXf3Spl7rNUPsdoAEEg1EmuOQ7
	 11v+sQX7jX+SdelFaAjFfHDy8Gow6fvvVBAYKI94jZq4mj39aFckuorRVzAWpuuUaD
	 rLGs2cHUOGdgVaHhZnnMOjib4WwbN6Vb/h26YK4nwKMqvdMgUPFVfbNi/bmGFzSPTZ
	 wz1RGxFOxX9/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40DEC40678;
	Sat, 22 Feb 2025 17:02:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 47C70D92
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 17:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23DC7810C3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 17:02:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S9cT25VD3vC3 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Feb 2025 17:02:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1CDC4810BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CDC4810BF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1CDC4810BF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 17:02:44 +0000 (UTC)
X-CSE-ConnectionGUID: Vip1QNo8TsqD84u/wafG4A==
X-CSE-MsgGUID: U9zNj81JSRio1Eft3zvjLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11353"; a="52448753"
X-IronPort-AV: E=Sophos;i="6.13,308,1732608000"; d="scan'208";a="52448753"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2025 09:02:44 -0800
X-CSE-ConnectionGUID: sF7iNhMWSnSARGb51f06Gw==
X-CSE-MsgGUID: Om0/HfkpT7eDbPKoF0sC9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,308,1732608000"; d="scan'208";a="115844313"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 22 Feb 2025 09:02:43 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tlstk-0006jj-38
 for intel-wired-lan@lists.osuosl.org; Sat, 22 Feb 2025 17:02:40 +0000
Date: Sun, 23 Feb 2025 01:02:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502230125.OziwfLKQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740243765; x=1771779765;
 h=date:from:to:subject:message-id;
 bh=f3QwLWpLEvXSzT4EVva49+P7q4aPj/JGgfe6UeQwqOY=;
 b=cvZu12j5ZPyHcLB86XBs8snDAGELH2aCIq7qeobcaCMqAoamIvQsimGY
 ZoM7up7aQ/9/6fki1KbLy1vMzS6KW0nrNj7EgyfDJq3xu22N77qvBdvti
 s96us9sHO9FkWVCRI05sKRcLTsP/Y+PPrcy8bUA29UjnyM3Uha/H3Qwfy
 Xy9rl+o45l+VBcvpFvJ+vkWxZv/OzGNKf3RprpM9S0VuQoi++1TCRmooj
 3meKs64u8/DpW2a7iv6ZUUYpYwBkdorsb7Y5+tptQabtgtJMtf+yzj7UA
 cweq8ZNjoEyoyVX8zO/WvDU7UJzTGesSaJFfPlSvx1JY2XrOPrPo0Nh1Q
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cvZu12j5
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 f06e4bfd010faefa637689d2df2c727dbf6e1d27
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: f06e4bfd010faefa637689d2df2c727dbf6e1d27  net: stmmac: dwmac-loongson: Add fix_soc_reset() callback

elapsed time: 2318m

configs tested: 62
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                           allyesconfig    gcc-14.2.0
arc                  randconfig-001-20250222    gcc-13.2.0
arc                  randconfig-002-20250222    gcc-13.2.0
arm                  randconfig-001-20250222    gcc-14.2.0
arm                  randconfig-002-20250222    gcc-14.2.0
arm                  randconfig-003-20250222    clang-16
arm                  randconfig-004-20250222    gcc-14.2.0
arm64                randconfig-001-20250222    gcc-14.2.0
arm64                randconfig-002-20250222    clang-21
arm64                randconfig-003-20250222    clang-18
arm64                randconfig-004-20250222    clang-21
csky                 randconfig-001-20250222    gcc-14.2.0
csky                 randconfig-002-20250222    gcc-14.2.0
hexagon                         allmodconfig    clang-21
hexagon                         allyesconfig    clang-18
hexagon              randconfig-001-20250222    clang-17
hexagon              randconfig-002-20250222    clang-19
i386       buildonly-randconfig-001-20250222    clang-19
i386       buildonly-randconfig-002-20250222    gcc-12
i386       buildonly-randconfig-003-20250222    gcc-12
i386       buildonly-randconfig-004-20250222    clang-19
i386       buildonly-randconfig-005-20250222    gcc-12
i386       buildonly-randconfig-006-20250222    clang-19
loongarch            randconfig-001-20250222    gcc-14.2.0
loongarch            randconfig-002-20250222    gcc-14.2.0
nios2                randconfig-001-20250222    gcc-14.2.0
nios2                randconfig-002-20250222    gcc-14.2.0
parisc               randconfig-001-20250222    gcc-14.2.0
parisc               randconfig-002-20250222    gcc-14.2.0
powerpc              randconfig-001-20250222    gcc-14.2.0
powerpc              randconfig-002-20250222    gcc-14.2.0
powerpc              randconfig-003-20250222    gcc-14.2.0
powerpc64            randconfig-001-20250222    gcc-14.2.0
powerpc64            randconfig-002-20250222    clang-16
powerpc64            randconfig-003-20250222    clang-18
riscv                randconfig-001-20250222    clang-21
riscv                randconfig-002-20250222    gcc-14.2.0
s390                            allmodconfig    clang-19
s390                            allyesconfig    gcc-14.2.0
s390                 randconfig-001-20250222    gcc-14.2.0
s390                 randconfig-002-20250222    clang-15
sh                              allmodconfig    gcc-14.2.0
sh                              allyesconfig    gcc-14.2.0
sh                   randconfig-001-20250222    gcc-14.2.0
sh                   randconfig-002-20250222    gcc-14.2.0
sparc                           allmodconfig    gcc-14.2.0
sparc                randconfig-001-20250222    gcc-14.2.0
sparc                randconfig-002-20250222    gcc-14.2.0
sparc64              randconfig-001-20250222    gcc-14.2.0
sparc64              randconfig-002-20250222    gcc-14.2.0
um                              allmodconfig    clang-21
um                              allyesconfig    gcc-12
um                   randconfig-001-20250222    gcc-12
um                   randconfig-002-20250222    gcc-12
x86_64     buildonly-randconfig-001-20250222    clang-19
x86_64     buildonly-randconfig-002-20250222    gcc-12
x86_64     buildonly-randconfig-003-20250222    gcc-12
x86_64     buildonly-randconfig-004-20250222    clang-19
x86_64     buildonly-randconfig-005-20250222    clang-19
x86_64     buildonly-randconfig-006-20250222    gcc-12
xtensa               randconfig-001-20250222    gcc-14.2.0
xtensa               randconfig-002-20250222    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
