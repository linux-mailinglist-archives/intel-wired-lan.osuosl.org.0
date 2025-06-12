Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A24BAD7467
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 16:46:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 725F860FB8;
	Thu, 12 Jun 2025 14:46:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T8l2THJ-HNao; Thu, 12 Jun 2025 14:46:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B9C660F85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749739587;
	bh=E1/hu36g/xVt0XJpJKIaviU8+BRo0PjvHb1V/9n1kgM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rTE67hJfi236fGdU0bTCTsvqJWS7hoAUiXUN22naMM0AvzgWQmAOWua+3D4UGLzWE
	 oGw6gsUO3lZMWV3Pu/TNvQEgEzDdgn6r1OUd3jpiCfGMK7U1+rMpXHN86E7C2wfEU2
	 34n8oR5iK3P8O2PCGcboUyih/NsHd0Lk7M7caKr61JaYAKPbCjBIZW2K0+ne+g0Pbt
	 WPIO0xJGyVezoLslX+EdeYoduDDedzi+kD2Przf9sDTMmbmQnG2ox+lQ+J0tatJVey
	 2hJfTFzMgmITT7Jni8wIDu2eyzWqdxFyRzDFqUA2B0VWAoYgJJJZ01NpnVcZ/gL3FF
	 I8FsO1dg3qTYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B9C660F85;
	Thu, 12 Jun 2025 14:46:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7614F1BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 14:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 67F9D40099
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 14:46:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EZAL_c0XLHIq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 14:46:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5E0A34011D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E0A34011D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E0A34011D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 14:46:24 +0000 (UTC)
X-CSE-ConnectionGUID: 616vQbvuTpu+QevCHm1UTw==
X-CSE-MsgGUID: bQKjNYZsTV+W12ZP9Jm7DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51034218"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="51034218"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 07:46:24 -0700
X-CSE-ConnectionGUID: u3063qbmTsKz0RLrl+zXGg==
X-CSE-MsgGUID: li0sUIg4RiikVWJZtbgCFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="147427738"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 12 Jun 2025 07:46:23 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uPjC9-000BfJ-0Q
 for intel-wired-lan@lists.osuosl.org; Thu, 12 Jun 2025 14:46:21 +0000
Date: Thu, 12 Jun 2025 22:45:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506122236.jbFX99sY-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749739585; x=1781275585;
 h=date:from:to:subject:message-id;
 bh=c8/uhVL2o1rX3Zl1wKbk2z+DmD1Lp7S8Sq8uMiZJS0Q=;
 b=KXJrAjaSd9C59Yppd1kYtLr/VTk4DOn+ZZztUkLx0uy2ZFmgn6YIN3tL
 2wHOqAPVGWpfErPLNqIkvFmCgghK5wZ+jeM4QgSQFfIjX/ZFeMygg1q4J
 0fubsusjBeXc0IHKe3xZGZj5GjIHx1t27SvJfk1D/EjGH2Ny7X4T3Tirq
 CR4KhxrVkiPMTB2yr9UwgKaXLc7rObtxE/10E1/p4PDGYTjCQfetZ+o4j
 hwnw4iD5JWYea11RiZxb6d+spPM9cdYlhYCc5hR/wh/qM5pYCNZbYcACM
 U+YS4ouuznamzYRU2q5GyQl7kZRUryUHfEr9lmcJb3/aq0EqxdsUe14ZM
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KXJrAjaS
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 be88b28a31c338d75a05c9669806c4e5c33f0318
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
branch HEAD: be88b28a31c338d75a05c9669806c4e5c33f0318  e1000: Move cancel_work_sync to avoid deadlock

elapsed time: 1462m

configs tested: 91
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20250612    gcc-8.5.0
arc                   randconfig-002-20250612    gcc-10.5.0
arm                               allnoconfig    clang-21
arm                   randconfig-001-20250612    clang-21
arm                   randconfig-002-20250612    clang-18
arm                   randconfig-003-20250612    clang-21
arm                   randconfig-004-20250612    clang-21
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250612    clang-19
arm64                 randconfig-002-20250612    clang-17
arm64                 randconfig-003-20250612    clang-21
arm64                 randconfig-004-20250612    clang-18
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250612    gcc-11.5.0
csky                  randconfig-002-20250612    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250612    clang-21
hexagon               randconfig-002-20250612    clang-21
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20250611    gcc-12
i386        buildonly-randconfig-002-20250611    gcc-12
i386        buildonly-randconfig-003-20250611    clang-20
i386        buildonly-randconfig-004-20250611    gcc-12
i386        buildonly-randconfig-005-20250611    gcc-11
i386        buildonly-randconfig-006-20250611    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250612    gcc-13.3.0
loongarch             randconfig-002-20250612    gcc-12.4.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250612    gcc-14.2.0
nios2                 randconfig-002-20250612    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20250612    gcc-8.5.0
parisc                randconfig-002-20250612    gcc-10.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250612    clang-21
powerpc               randconfig-002-20250612    gcc-8.5.0
powerpc               randconfig-003-20250612    clang-17
powerpc64             randconfig-001-20250612    gcc-12.4.0
powerpc64             randconfig-002-20250612    clang-21
powerpc64             randconfig-003-20250612    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250612    clang-21
riscv                 randconfig-002-20250612    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250612    clang-21
s390                  randconfig-002-20250612    gcc-11.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250612    gcc-12.4.0
sh                    randconfig-002-20250612    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250612    gcc-14.3.0
sparc                 randconfig-002-20250612    gcc-10.3.0
sparc64               randconfig-001-20250612    gcc-13.3.0
sparc64               randconfig-002-20250612    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250612    clang-17
um                    randconfig-002-20250612    clang-21
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20250612    gcc-12
x86_64      buildonly-randconfig-002-20250612    clang-20
x86_64      buildonly-randconfig-003-20250612    gcc-12
x86_64      buildonly-randconfig-004-20250612    gcc-12
x86_64      buildonly-randconfig-005-20250612    clang-20
x86_64      buildonly-randconfig-006-20250612    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250612    gcc-10.5.0
xtensa                randconfig-002-20250612    gcc-12.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
