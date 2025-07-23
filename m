Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DC6B0EC28
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 09:44:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D88D60C34;
	Wed, 23 Jul 2025 07:44:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h097Ins3l8N5; Wed, 23 Jul 2025 07:44:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F2BE60786
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753256640;
	bh=ST0yzLq2hiNQd9BRaP+Pjh2UjU3kOUxiGkOTegQdKoQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1IDnASuREMu0sW4jHZRpHvnTW2ywn9MIa+fpc2yckRNyO/o8CWqqNru5V/T/PZ0dr
	 V/21x6t3ijyrTx9F+m0FjUOhml5c0uswa1pmzNneh6g8tfLZ0k8PQjigtUjP2Jdllk
	 AmC+Itm9E/V9k9nRuKsFl9H+AltaYg+GLZlEdZ4Is16b8EXwsYZtVtHGv7imIDBJ+J
	 TFsjdSy8Dl/mSskZ4arHMVJPJ+syAbKqyBm2SKKtargbhQfvTluMNrsXTlxXPrhvYD
	 itud2inef50DcKsMHJ6G2diNbcOXIDmPdmW1h8eqtLM8fFcjoiGJgHkv0TOKdGJxCj
	 yOirRA1GHTMMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F2BE60786;
	Wed, 23 Jul 2025 07:44:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A156E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 07:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 10CFF40A18
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 07:43:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IKfbb4QsjWrS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 07:43:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 14EB0409A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14EB0409A4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14EB0409A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 07:43:57 +0000 (UTC)
X-CSE-ConnectionGUID: Xue6r3PkTBKqFZfQMt2WFw==
X-CSE-MsgGUID: /b2OjQMZScarbqn4ogry/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="66217220"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="66217220"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 00:43:57 -0700
X-CSE-ConnectionGUID: S/Xt6xw9TVa484/dTuSA2w==
X-CSE-MsgGUID: speCppYvRXSz/+4VxwxI/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="159670059"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 23 Jul 2025 00:43:57 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ueU8o-000J5v-22
 for intel-wired-lan@lists.osuosl.org; Wed, 23 Jul 2025 07:43:54 +0000
Date: Wed, 23 Jul 2025 15:43:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507231509.6jbU6u52-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753256637; x=1784792637;
 h=date:from:to:subject:message-id;
 bh=DAW9yppPHNTwfdBmt2zx9rKZQg4sacmry60X4JUC/Cc=;
 b=Go22Shc8Y+V1RcmgBqnx5+s4MY9ikZCHCd5RNxbVjhd9BU69tNTkkYYy
 sK4qiYDwVSUDyg+oxnEA8OpA8kWZby8N7unRKhF30zj6tCLrwWpOheZsf
 7SORWgNiKMzkxDX8STESBkyTJNIAboQ4D5DpBuKzstnELjtv6VncMwdjM
 MfD9SaG7NAlGCue+n8sZy/F00gwGXpYANGz5VjmRIUvtuzDe/mvwgwgWl
 LjYt7PjfAUTCS/X0MVWGSjKORxwcuMPKuIxIPeDi5mnfuIEN8XyBjKCxD
 0gIiVpJEB2QIeZA8SeQ5l3g1LieH+gZkrztamOCwAas5Q91xSVKCi88Mu
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Go22Shc8
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 cf074eca0065bc5142e6004ae236bb35a2687fdf
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
branch HEAD: cf074eca0065bc5142e6004ae236bb35a2687fdf  net/sched: sch_qfq: Avoid triggering might_sleep in atomic context in qfq_delete_class

elapsed time: 1233m

configs tested: 210
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20250723    clang-16
arc                   randconfig-001-20250723    gcc-8.5.0
arc                   randconfig-002-20250723    clang-16
arc                   randconfig-002-20250723    gcc-9.5.0
arm                              alldefconfig    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                   randconfig-001-20250723    clang-16
arm                   randconfig-001-20250723    gcc-13.4.0
arm                   randconfig-002-20250723    clang-16
arm                   randconfig-002-20250723    gcc-13.4.0
arm                   randconfig-003-20250723    clang-16
arm                   randconfig-004-20250723    clang-16
arm                   randconfig-004-20250723    clang-22
arm                        spear6xx_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250723    clang-16
arm64                 randconfig-001-20250723    clang-22
arm64                 randconfig-002-20250723    clang-16
arm64                 randconfig-003-20250723    clang-16
arm64                 randconfig-004-20250723    clang-16
arm64                 randconfig-004-20250723    clang-22
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250723    gcc-12.5.0
csky                  randconfig-001-20250723    gcc-8.5.0
csky                  randconfig-002-20250723    gcc-14.3.0
csky                  randconfig-002-20250723    gcc-8.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250723    clang-22
hexagon               randconfig-001-20250723    gcc-8.5.0
hexagon               randconfig-002-20250723    clang-22
hexagon               randconfig-002-20250723    gcc-8.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250723    clang-20
i386        buildonly-randconfig-002-20250723    clang-20
i386        buildonly-randconfig-003-20250723    clang-20
i386        buildonly-randconfig-004-20250723    clang-20
i386        buildonly-randconfig-005-20250723    gcc-11
i386        buildonly-randconfig-006-20250723    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250723    clang-20
i386                  randconfig-002-20250723    clang-20
i386                  randconfig-003-20250723    clang-20
i386                  randconfig-004-20250723    clang-20
i386                  randconfig-005-20250723    clang-20
i386                  randconfig-006-20250723    clang-20
i386                  randconfig-007-20250723    clang-20
i386                  randconfig-011-20250723    clang-20
i386                  randconfig-012-20250723    clang-20
i386                  randconfig-013-20250723    clang-20
i386                  randconfig-014-20250723    clang-20
i386                  randconfig-015-20250723    clang-20
i386                  randconfig-016-20250723    clang-20
i386                  randconfig-017-20250723    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250723    gcc-15.1.0
loongarch             randconfig-001-20250723    gcc-8.5.0
loongarch             randconfig-002-20250723    clang-22
loongarch             randconfig-002-20250723    gcc-8.5.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                       bmips_be_defconfig    gcc-15.1.0
mips                           jazz_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250723    gcc-8.5.0
nios2                 randconfig-002-20250723    gcc-11.5.0
nios2                 randconfig-002-20250723    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250723    gcc-8.5.0
parisc                randconfig-002-20250723    gcc-15.1.0
parisc                randconfig-002-20250723    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250723    gcc-10.5.0
powerpc               randconfig-001-20250723    gcc-8.5.0
powerpc               randconfig-002-20250723    gcc-8.5.0
powerpc               randconfig-003-20250723    gcc-12.5.0
powerpc               randconfig-003-20250723    gcc-8.5.0
powerpc                     tqm8540_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250723    clang-22
powerpc64             randconfig-001-20250723    gcc-8.5.0
powerpc64             randconfig-002-20250723    clang-22
powerpc64             randconfig-002-20250723    gcc-8.5.0
powerpc64             randconfig-003-20250723    clang-22
powerpc64             randconfig-003-20250723    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250723    gcc-9.5.0
riscv                 randconfig-002-20250723    clang-22
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250723    clang-22
s390                  randconfig-002-20250723    clang-20
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250723    gcc-12.5.0
sh                    randconfig-002-20250723    gcc-9.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250723    gcc-8.5.0
sparc                 randconfig-002-20250723    gcc-8.5.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250723    gcc-12.5.0
sparc64               randconfig-002-20250723    gcc-14.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250723    gcc-12
um                    randconfig-002-20250723    clang-22
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250723    gcc-12
x86_64      buildonly-randconfig-002-20250723    gcc-11
x86_64      buildonly-randconfig-003-20250723    gcc-11
x86_64      buildonly-randconfig-004-20250723    clang-20
x86_64      buildonly-randconfig-005-20250723    gcc-12
x86_64      buildonly-randconfig-006-20250723    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250723    gcc-12
x86_64                randconfig-002-20250723    gcc-12
x86_64                randconfig-003-20250723    gcc-12
x86_64                randconfig-004-20250723    gcc-12
x86_64                randconfig-005-20250723    gcc-12
x86_64                randconfig-006-20250723    gcc-12
x86_64                randconfig-007-20250723    gcc-12
x86_64                randconfig-008-20250723    gcc-12
x86_64                randconfig-071-20250723    clang-20
x86_64                randconfig-072-20250723    clang-20
x86_64                randconfig-073-20250723    clang-20
x86_64                randconfig-074-20250723    clang-20
x86_64                randconfig-075-20250723    clang-20
x86_64                randconfig-076-20250723    clang-20
x86_64                randconfig-077-20250723    clang-20
x86_64                randconfig-078-20250723    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250723    gcc-13.4.0
xtensa                randconfig-002-20250723    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
