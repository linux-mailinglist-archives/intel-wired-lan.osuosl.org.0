Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 684A4AEADD3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 06:29:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BECD842DE;
	Fri, 27 Jun 2025 04:29:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xvrY7mGMbW3t; Fri, 27 Jun 2025 04:29:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35271842E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750998581;
	bh=1OvVhtOI3fhO0yUqDnO8HI3mG5InXWFlwfMKAOLNWws=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wCrYDXyTibumR2QHa/ShLGn5YWefrPQysWnxzfSBzc2te9L2bPO7C4KjEToBcamVu
	 kT04Gp3abXWwB2MN3ygyuUByPvR7jueZ9EC0cdlCaQwC0U06WUs3oUB+DfMeA/UuGw
	 U86D/xmfo453r3FiY4e9w0oXCL0wjLsMqpChLh3M/tcPMCdbO+3TvTVwwKbZNoQD5y
	 +p0OpClGs1AqdHIjYy0+cVcVHtENRP8dH1lA4soa/ffZ0I8+g93Dtpg/5syxXClm3X
	 EnjVxOSZxyOIxWEfTqCUYyF2fgweYeGE5ElS2oN9+ZwhajcIaKzQ33euT2ngPEpN+M
	 lbsbJH4xvGA0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35271842E7;
	Fri, 27 Jun 2025 04:29:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7EACE11A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 04:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D9BF40289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 04:29:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GhJPqh2HV5YF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 04:29:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8C4FA400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C4FA400D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C4FA400D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 04:29:37 +0000 (UTC)
X-CSE-ConnectionGUID: LKZXlnACQtWaQchxG6LrTA==
X-CSE-MsgGUID: Yi3NUbztTiqX+4plibaHIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53272769"
X-IronPort-AV: E=Sophos;i="6.16,269,1744095600"; d="scan'208";a="53272769"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 21:29:37 -0700
X-CSE-ConnectionGUID: El6FpXxqRbe5T77Ab0/O/w==
X-CSE-MsgGUID: MQjM5vnQT2uegD7euY6dkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,269,1744095600"; d="scan'208";a="152321760"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 26 Jun 2025 21:29:36 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uV0iT-000VnC-2E
 for intel-wired-lan@lists.osuosl.org; Fri, 27 Jun 2025 04:29:33 +0000
Date: Fri, 27 Jun 2025 12:29:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506271256.OxBNTU5J-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750998579; x=1782534579;
 h=date:from:to:subject:message-id;
 bh=0zpqknyaqRrWvzMW6B3RQd/pMs9zW9+ZhETSZQPLr4I=;
 b=jwms5TaqMKw8svyMV4hnsDKSxbZ701X6v+4H0RtOO4JdlGZyJE4Ng50V
 yIZkFCyP/iM73Etl3zRX2zg+rGU3i7wahPmlI3OYUApg0cgR47i/S3pmU
 T4uz940vqKuRHlZd4HbrQoFDcV94HDjn6Uh3xYKWTdkSlB1En1LjYVHyr
 rPjL3nITRkhYHc7CCY+1P5ETgvEUNkbI1oSGxNb2HMP+1K0Sd/R4fmntw
 ttcf026oResNNsvhIDlB3IRk8bnH1xcNqRsTNbpHuxUT/7fbQOhXcYV4n
 qy8oI116JxHgw10WfC5DakCgjhLAwYudXn/be9AGaAyImyajUAAmM+WEH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jwms5Taq
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 5cfb2ac2806c7a255df5184d86ffca056cd5cb5c
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
branch HEAD: 5cfb2ac2806c7a255df5184d86ffca056cd5cb5c  docs: net: sysctl documentation cleanup

elapsed time: 875m

configs tested: 100
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                   randconfig-001-20250627    gcc-8.5.0
arc                   randconfig-002-20250627    gcc-12.4.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-21
arm                              allyesconfig    clang-19
arm                   randconfig-001-20250627    gcc-15.1.0
arm                   randconfig-002-20250627    gcc-10.5.0
arm                   randconfig-003-20250627    clang-21
arm                   randconfig-004-20250627    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250627    clang-17
arm64                 randconfig-002-20250627    gcc-10.5.0
arm64                 randconfig-003-20250627    gcc-12.3.0
arm64                 randconfig-004-20250627    clang-19
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250627    clang-21
csky                  randconfig-002-20250627    clang-21
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-19
hexagon               randconfig-001-20250627    clang-21
hexagon               randconfig-002-20250627    clang-21
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250627    gcc-12
i386        buildonly-randconfig-002-20250627    gcc-12
i386        buildonly-randconfig-003-20250627    gcc-12
i386        buildonly-randconfig-004-20250627    gcc-12
i386        buildonly-randconfig-005-20250627    clang-20
i386        buildonly-randconfig-005-20250627    gcc-12
i386        buildonly-randconfig-006-20250627    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250627    clang-21
loongarch             randconfig-002-20250627    clang-21
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250627    clang-21
nios2                 randconfig-002-20250627    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                randconfig-001-20250627    clang-21
parisc                randconfig-002-20250627    clang-21
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc               randconfig-001-20250627    clang-21
powerpc               randconfig-002-20250627    clang-21
powerpc               randconfig-003-20250627    clang-21
powerpc64             randconfig-001-20250627    clang-21
powerpc64             randconfig-002-20250627    clang-21
powerpc64             randconfig-003-20250627    clang-21
riscv                            allmodconfig    gcc-15.1.0
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
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250627    clang-20
x86_64      buildonly-randconfig-002-20250627    clang-20
x86_64      buildonly-randconfig-003-20250627    clang-20
x86_64      buildonly-randconfig-004-20250627    clang-20
x86_64      buildonly-randconfig-005-20250627    gcc-12
x86_64      buildonly-randconfig-006-20250627    gcc-12
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
