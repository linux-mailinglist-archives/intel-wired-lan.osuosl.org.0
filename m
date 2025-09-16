Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1240B5A0F5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 21:07:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5139D826DA;
	Tue, 16 Sep 2025 19:07:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9mahf83rEI2H; Tue, 16 Sep 2025 19:07:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 782EB826DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758049667;
	bh=1gCKEi6pSAnN7/1eR0X1iOrXyMXEtcWiNe4EgTuaLko=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cJO68CWXKi5rdYmInSr/IS7B0Dnr0dYEOyIwi6cwn9H+HuM0AbB7IiTTUonRgCE2k
	 jYSwjGks0ubez7znmqkpp5QXF/GPSMyy5PQxUp5qWIkiNz6b2Wwqxi+e2qQs/M+9c4
	 pHHQr7OGjIjC5Xz5FrxRkCnmH+2Ak2CDvKQKWSqD/qoptOFjmv5mNT1ELTAg+3m5/r
	 w5lfF2jnsBJ7gKkL73oE5tPWWGFZApVbJOKKI/ve5gQaaHvfLOjm/0OxS2KR5zROcr
	 5/e2STXbwZZKy4NtP7O7yBv6c9Qenzl1TM4VyIAUtZTv2Wr0q84ie6S+ip5xAkTWFy
	 QZCIxNRStCoNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 782EB826DE;
	Tue, 16 Sep 2025 19:07:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 89D1412D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B207826BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:07:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BQPNIlNcVlUb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 19:07:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 52247826C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52247826C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52247826C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:07:43 +0000 (UTC)
X-CSE-ConnectionGUID: rPTK68YNRwWeMgV/vuWdXQ==
X-CSE-MsgGUID: bG4ofeuFTQGa3HNh6J5JQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60211680"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="60211680"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:07:43 -0700
X-CSE-ConnectionGUID: wJPKBY6ETN6Ua8fvI5pTYA==
X-CSE-MsgGUID: YYGCMXpdSNOVKetXSVvmPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174837119"
Received: from lkp-server01.sh.intel.com (HELO 84a20bd60769) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 16 Sep 2025 12:07:43 -0700
Received: from kbuild by 84a20bd60769 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uyb1g-0000ft-1a
 for intel-wired-lan@lists.osuosl.org; Tue, 16 Sep 2025 19:07:40 +0000
Date: Wed, 17 Sep 2025 03:07:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509170329.DK55iWdw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758049664; x=1789585664;
 h=date:from:to:subject:message-id;
 bh=oZOU01vsGrrkcUh8ldrxDHSa7lZ9h0PXjymMbmYhN44=;
 b=fefEqbGbGDNDWuxXhV7IcXA3D43ZqJv/yc2AnzTDpagDKja+Y1zIjuXq
 JyfmlC6KJdaZFMGDToqo01btC6U1pdHguCDx9Vhos9ZHQpwwODF6HMPmE
 uUseMk5Dn9eYn6slWCC26grutsasQCEb2Hh+9DmunmWCuyTCyvx6orV9S
 I5KUXJ78AABmUVFDVtMRZvrniGLPF/C5s4FDw/os3zss7hZf0Nkqm9CMw
 9MtrIotHBOf8Wfxxzownv8gpFF8LmntXuEj3nkNIaqCCP+qVhSk3Nf1Ve
 M0A42VtbrAoI5RWEgCOtDNtwnRbSqNs7ZEQB1N2hzyIFlC3/qGJpSihW1
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fefEqbGb
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 c5e389cc6b36701098d31fa3438c553c7fe7c1bb
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
branch HEAD: c5e389cc6b36701098d31fa3438c553c7fe7c1bb  net/mlx5: fix typo in pci_irq.c comment

elapsed time: 1645m

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
arc                   randconfig-001-20250916    gcc-8.5.0
arc                   randconfig-002-20250916    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250916    gcc-11.5.0
arm                   randconfig-002-20250916    clang-22
arm                   randconfig-003-20250916    gcc-12.5.0
arm                   randconfig-004-20250916    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250916    clang-18
arm64                 randconfig-002-20250916    clang-22
arm64                 randconfig-003-20250916    clang-22
arm64                 randconfig-004-20250916    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250916    gcc-14.3.0
csky                  randconfig-002-20250916    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250916    clang-22
hexagon               randconfig-002-20250916    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20250916    gcc-14
i386        buildonly-randconfig-002-20250916    gcc-14
i386        buildonly-randconfig-003-20250916    clang-20
i386        buildonly-randconfig-004-20250916    gcc-14
i386        buildonly-randconfig-005-20250916    gcc-14
i386        buildonly-randconfig-006-20250916    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250916    clang-18
loongarch             randconfig-002-20250916    clang-22
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
nios2                 randconfig-001-20250916    gcc-11.5.0
nios2                 randconfig-002-20250916    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250916    gcc-9.5.0
parisc                randconfig-002-20250916    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250916    clang-16
powerpc               randconfig-002-20250916    clang-22
powerpc               randconfig-003-20250916    clang-22
powerpc64             randconfig-001-20250916    clang-22
powerpc64             randconfig-002-20250916    gcc-8.5.0
powerpc64             randconfig-003-20250916    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250916    clang-22
riscv                 randconfig-002-20250916    gcc-10.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250916    gcc-13.4.0
s390                  randconfig-002-20250916    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250916    gcc-15.1.0
sh                    randconfig-002-20250916    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250916    gcc-8.5.0
sparc                 randconfig-002-20250916    gcc-8.5.0
sparc64               randconfig-001-20250916    gcc-11.5.0
sparc64               randconfig-002-20250916    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250916    gcc-14
um                    randconfig-002-20250916    clang-19
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250916    gcc-14
x86_64      buildonly-randconfig-002-20250916    clang-20
x86_64      buildonly-randconfig-003-20250916    clang-20
x86_64      buildonly-randconfig-004-20250916    clang-20
x86_64      buildonly-randconfig-005-20250916    clang-20
x86_64      buildonly-randconfig-006-20250916    clang-20
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250916    gcc-8.5.0
xtensa                randconfig-002-20250916    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
