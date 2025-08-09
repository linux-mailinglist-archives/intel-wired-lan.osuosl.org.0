Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E03B1F2C4
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Aug 2025 09:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A4EE80D62;
	Sat,  9 Aug 2025 07:14:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id olBEO_Scm6Qu; Sat,  9 Aug 2025 07:14:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D9D780D8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754723687;
	bh=b30VuPwJDtTg/CGUovWG8TuMhbPTE8zbC/ljX8AKIvs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eZ62nvv0fEEcFDvU8PPbvK/Rj2VUxI9YcFF2w7S/dphYuJ3bMPubocOS+W5nS1H4h
	 Es6WzjCW76jJiUWvqlmZLCZKSs/oC3NbQaPshmalmOqwtw3NTenxyXBfQH5bDPM59k
	 vtjDegW8/KuRrdh1UqFsU57ztkCmjNyxcdNCFwJmvlivb9b+ldvuLzVo7RIAR2pwig
	 RQck7tzwpshAcqLv/FKO0BsQvnejJOIyf1O1xvjEpxk66GruOTx6xWyVV1dEjbE8Om
	 B/dA3ZBaANcJBgPAPo7wxYDByqmv4b/jscUiTX6uDxJaOk9krFj9grtVBZk6u5CTq2
	 X8OU4F1mYCFvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D9D780D8A;
	Sat,  9 Aug 2025 07:14:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 259FB1D3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Aug 2025 07:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C0BB400E5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Aug 2025 07:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id btU0gFo3zEIs for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Aug 2025 07:14:44 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 09 Aug 2025 07:14:43 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D614240131
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D614240131
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D614240131
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Aug 2025 07:14:43 +0000 (UTC)
X-CSE-ConnectionGUID: WugqjMi9TDakPr/bP58sMQ==
X-CSE-MsgGUID: looiiiNdQOaOIsyToyVt5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11515"; a="68430277"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="68430277"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2025 00:07:36 -0700
X-CSE-ConnectionGUID: hQQ0SOIuR42gwlhbNRuWEw==
X-CSE-MsgGUID: fCog62wUTJ2OGbEppRdOIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="196475139"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 09 Aug 2025 00:07:34 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ukdfH-0004aK-1U
 for intel-wired-lan@lists.osuosl.org; Sat, 09 Aug 2025 07:07:06 +0000
Date: Sat, 09 Aug 2025 15:06:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508091501.d0w2812g-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754723683; x=1786259683;
 h=date:from:to:subject:message-id;
 bh=GAnbkRPxx2eeK+eeqWFj1BI4XxqPccahg2fVvaLNlDQ=;
 b=jBDHOBnsfzjPmiohZYN8fAFlnX6WvDOzFcjmn8RGZTsGqRhzwcl9Nv8w
 BR1aX94WFnCrVu/fAhfm1lE8aLaG9nUskYbHQteKecqakQAnE8cyIvFey
 KKo5DHM4DxoJKlvKy3M3BHNTIVyr76ZRHZSFEryJJYhos6kAZ94ZrrAUT
 v7mwGAuSTVeZ4Y4ZqCuAMyyxeErchj4LpfysEeQ1s1d/yj06UisapT0h5
 VKTWFwmCnb2+xQ365r2vmPBRGJDrzNkrK9pUD8XLO5AgEYnfus4gquk7L
 nL0fq18h9ji1uYTxsDZmUF0ZEGt5ixBxQYbEwYo8G6DZlMb2rukY6WUp7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jBDHOBns
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3e7bfba85f747496aac7d60e79439d8fe2bf25cf
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
branch HEAD: 3e7bfba85f747496aac7d60e79439d8fe2bf25cf  idpf: set mac type when adding and removing MAC filters

elapsed time: 796m

configs tested: 223
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20250809    gcc-13.4.0
arc                   randconfig-001-20250809    gcc-8.5.0
arc                   randconfig-002-20250809    gcc-14.3.0
arc                   randconfig-002-20250809    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                        neponset_defconfig    gcc-15.1.0
arm                   randconfig-001-20250809    gcc-10.5.0
arm                   randconfig-001-20250809    gcc-8.5.0
arm                   randconfig-002-20250809    clang-20
arm                   randconfig-002-20250809    gcc-8.5.0
arm                   randconfig-003-20250809    gcc-8.5.0
arm                   randconfig-004-20250809    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250809    gcc-8.5.0
arm64                 randconfig-002-20250809    clang-22
arm64                 randconfig-002-20250809    gcc-8.5.0
arm64                 randconfig-003-20250809    clang-22
arm64                 randconfig-003-20250809    gcc-8.5.0
arm64                 randconfig-004-20250809    clang-22
arm64                 randconfig-004-20250809    gcc-8.5.0
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250809    gcc-9.5.0
csky                  randconfig-002-20250809    gcc-9.5.0
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250809    clang-22
hexagon               randconfig-001-20250809    gcc-9.5.0
hexagon               randconfig-002-20250809    clang-20
hexagon               randconfig-002-20250809    gcc-9.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250809    clang-20
i386        buildonly-randconfig-001-20250809    gcc-12
i386        buildonly-randconfig-002-20250809    clang-20
i386        buildonly-randconfig-003-20250809    clang-20
i386        buildonly-randconfig-003-20250809    gcc-12
i386        buildonly-randconfig-004-20250809    clang-20
i386        buildonly-randconfig-005-20250809    clang-20
i386        buildonly-randconfig-006-20250809    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250809    gcc-12
i386                  randconfig-002-20250809    gcc-12
i386                  randconfig-003-20250809    gcc-12
i386                  randconfig-004-20250809    gcc-12
i386                  randconfig-005-20250809    gcc-12
i386                  randconfig-006-20250809    gcc-12
i386                  randconfig-007-20250809    gcc-12
i386                  randconfig-011-20250809    clang-20
i386                  randconfig-012-20250809    clang-20
i386                  randconfig-013-20250809    clang-20
i386                  randconfig-014-20250809    clang-20
i386                  randconfig-015-20250809    clang-20
i386                  randconfig-016-20250809    clang-20
i386                  randconfig-017-20250809    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250809    gcc-15.1.0
loongarch             randconfig-001-20250809    gcc-9.5.0
loongarch             randconfig-002-20250809    clang-22
loongarch             randconfig-002-20250809    gcc-9.5.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
m68k                        mvme16x_defconfig    gcc-15.1.0
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                          rb532_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250809    gcc-11.5.0
nios2                 randconfig-001-20250809    gcc-9.5.0
nios2                 randconfig-002-20250809    gcc-11.5.0
nios2                 randconfig-002-20250809    gcc-9.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250809    gcc-8.5.0
parisc                randconfig-001-20250809    gcc-9.5.0
parisc                randconfig-002-20250809    gcc-14.3.0
parisc                randconfig-002-20250809    gcc-9.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                      arches_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250809    gcc-10.5.0
powerpc               randconfig-001-20250809    gcc-9.5.0
powerpc               randconfig-002-20250809    clang-22
powerpc               randconfig-002-20250809    gcc-9.5.0
powerpc               randconfig-003-20250809    gcc-12.5.0
powerpc               randconfig-003-20250809    gcc-9.5.0
powerpc64             randconfig-001-20250809    gcc-10.5.0
powerpc64             randconfig-001-20250809    gcc-9.5.0
powerpc64             randconfig-002-20250809    clang-22
powerpc64             randconfig-002-20250809    gcc-9.5.0
powerpc64             randconfig-003-20250809    gcc-8.5.0
powerpc64             randconfig-003-20250809    gcc-9.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                               defconfig    gcc-12
riscv                    nommu_k210_defconfig    gcc-15.1.0
riscv                 randconfig-001-20250809    clang-22
riscv                 randconfig-002-20250809    clang-22
riscv                 randconfig-002-20250809    gcc-12.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                                defconfig    gcc-12
s390                  randconfig-001-20250809    clang-22
s390                  randconfig-002-20250809    clang-22
s390                  randconfig-002-20250809    gcc-12.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250809    clang-22
sh                    randconfig-001-20250809    gcc-10.5.0
sh                    randconfig-002-20250809    clang-22
sh                    randconfig-002-20250809    gcc-15.1.0
sh                   sh7770_generic_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250809    clang-22
sparc                 randconfig-001-20250809    gcc-8.5.0
sparc                 randconfig-002-20250809    clang-22
sparc                 randconfig-002-20250809    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250809    clang-22
sparc64               randconfig-001-20250809    gcc-8.5.0
sparc64               randconfig-002-20250809    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    clang-22
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250809    clang-22
um                    randconfig-002-20250809    clang-22
um                           x86_64_defconfig    clang-22
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250809    gcc-12
x86_64      buildonly-randconfig-002-20250809    clang-20
x86_64      buildonly-randconfig-003-20250809    gcc-12
x86_64      buildonly-randconfig-004-20250809    clang-20
x86_64      buildonly-randconfig-005-20250809    gcc-12
x86_64      buildonly-randconfig-006-20250809    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250809    gcc-12
x86_64                randconfig-002-20250809    gcc-12
x86_64                randconfig-003-20250809    gcc-12
x86_64                randconfig-004-20250809    gcc-12
x86_64                randconfig-005-20250809    gcc-12
x86_64                randconfig-006-20250809    gcc-12
x86_64                randconfig-007-20250809    gcc-12
x86_64                randconfig-008-20250809    gcc-12
x86_64                randconfig-071-20250809    gcc-12
x86_64                randconfig-072-20250809    gcc-12
x86_64                randconfig-073-20250809    gcc-12
x86_64                randconfig-074-20250809    gcc-12
x86_64                randconfig-075-20250809    gcc-12
x86_64                randconfig-076-20250809    gcc-12
x86_64                randconfig-077-20250809    gcc-12
x86_64                randconfig-078-20250809    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250809    clang-22
xtensa                randconfig-001-20250809    gcc-8.5.0
xtensa                randconfig-002-20250809    clang-22
xtensa                randconfig-002-20250809    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
