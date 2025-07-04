Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4431DAF86E7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 06:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F5D660B60;
	Fri,  4 Jul 2025 04:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HunammKHgAAK; Fri,  4 Jul 2025 04:50:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3CC360B56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751604612;
	bh=AZOZW+1sKd5/jB26v9PRR83gTucoTYJgVMqg8eQAx4g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Kiy1dGlKfKk8dI/O2IuUaiidX5EADuEGWv0mnh95aVinaNrCOiFyahIWxcxaegHv9
	 lENa35TSZWPVaGt5rErOkHLf9sMn6jXLcU6ZNVOODRmoWOKY5fGJwuj1ysUp0IP5xE
	 s6mSKv+XvM20eTBkS6AMCdKxfrUgFHVIBJhekNzgu0KYWxLzzRfAgpNJF7Xiw2gnwv
	 oJclwbOJCWEXzBVFxhuNou1B0wujwK5Zd1IZRF7oBmtQioEUuJOqeMfyLWR2zkMgJn
	 MtdEYYtpGM4KICjy3vMlllwtu4MZVRZepkUa5H4rTf8muegrBiHpxOoUuk6DQDOEnu
	 PsmvnkJ8I0w8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3CC360B56;
	Fri,  4 Jul 2025 04:50:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F1E291EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 04:50:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E39EA60B0C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 04:50:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jXjL_0-fg2Qp for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 04:50:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB8E460AFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB8E460AFE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB8E460AFE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 04:50:09 +0000 (UTC)
X-CSE-ConnectionGUID: +H5cyk9fQ6m74tYIINBSAQ==
X-CSE-MsgGUID: 4YS4VugrSAKYaG9U6ckpSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="57711438"
X-IronPort-AV: E=Sophos;i="6.16,286,1744095600"; d="scan'208";a="57711438"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 21:50:08 -0700
X-CSE-ConnectionGUID: 6cWdpwmbQ5ughPCbKJZyhg==
X-CSE-MsgGUID: I+r4wdrCSe6wlX5U4ap0FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,286,1744095600"; d="scan'208";a="191727534"
Received: from lkp-server01.sh.intel.com (HELO 0b2900756c14) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 03 Jul 2025 21:50:07 -0700
Received: from kbuild by 0b2900756c14 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uXYNB-0003LT-0f
 for intel-wired-lan@lists.osuosl.org; Fri, 04 Jul 2025 04:50:05 +0000
Date: Fri, 04 Jul 2025 12:49:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507041241.c6CrYpfh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751604610; x=1783140610;
 h=date:from:to:subject:message-id;
 bh=qQcjjp55zQoUsrrgE5C221J/yWJ3nGvk4Lv4knvyc2A=;
 b=WK4uyeHSU/WYoq0pl+quACGxJt5kYO5sDHaMZKTqllsu+W1ERSU4+k36
 ePfF38uqI2yMnmpBFD281X9xaKgO9dxrRpp+W7je+s1RjnHIpfQmD4Muj
 ylTwB9ZQZAnMzifIXM5s+dJzthNif0SECv8zu1kaS2y8R50YdSrS+GiHc
 BwhBaSckKK3VVIZkQIpZQJq6ZKXOXmyYy8/jeGfJlVyrN4XuA45YHjguh
 PItDW31ter4J5/pHsRMIMdsmhVEzytjSvHTU4LgXeUBxpkHK1Xh2kh7qX
 4Z4lpbyCPeMS2870ShQPsTUbUd0YIr3OPP7H2D5YOTIM+Qw0epj1J7he/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WK4uyeHS
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 223e2288f4b8c262a864e2c03964ffac91744cd5
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
branch HEAD: 223e2288f4b8c262a864e2c03964ffac91744cd5  vsock/vmci: Clear the vmci transport packet properly when initializing it

elapsed time: 1054m

configs tested: 193
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-21
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-21
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250704    gcc-8.5.0
arc                   randconfig-002-20250704    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250704    gcc-8.5.0
arm                   randconfig-002-20250704    clang-21
arm                   randconfig-003-20250704    gcc-8.5.0
arm                   randconfig-004-20250704    gcc-13.4.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-21
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250704    gcc-14.3.0
arm64                 randconfig-002-20250704    clang-21
arm64                 randconfig-003-20250704    clang-16
arm64                 randconfig-004-20250704    gcc-10.5.0
csky                              allnoconfig    clang-21
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250704    gcc-10.5.0
csky                  randconfig-001-20250704    gcc-15.1.0
csky                  randconfig-002-20250704    gcc-10.5.0
csky                  randconfig-002-20250704    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250704    clang-21
hexagon               randconfig-001-20250704    gcc-10.5.0
hexagon               randconfig-002-20250704    clang-21
hexagon               randconfig-002-20250704    gcc-10.5.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250704    clang-20
i386        buildonly-randconfig-001-20250704    gcc-12
i386        buildonly-randconfig-002-20250704    clang-20
i386        buildonly-randconfig-003-20250704    clang-20
i386        buildonly-randconfig-004-20250704    clang-20
i386        buildonly-randconfig-005-20250704    clang-20
i386        buildonly-randconfig-006-20250704    clang-20
i386                                defconfig    clang-20
i386                  randconfig-011-20250704    clang-20
i386                  randconfig-012-20250704    clang-20
i386                  randconfig-013-20250704    clang-20
i386                  randconfig-014-20250704    clang-20
i386                  randconfig-015-20250704    clang-20
i386                  randconfig-016-20250704    clang-20
i386                  randconfig-017-20250704    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-21
loongarch             randconfig-001-20250704    gcc-10.5.0
loongarch             randconfig-001-20250704    gcc-15.1.0
loongarch             randconfig-002-20250704    gcc-10.5.0
loongarch             randconfig-002-20250704    gcc-15.1.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                            allmodconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                            allyesconfig    clang-21
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250704    gcc-10.5.0
nios2                 randconfig-001-20250704    gcc-8.5.0
nios2                 randconfig-002-20250704    gcc-10.5.0
openrisc                         allmodconfig    clang-21
openrisc                          allnoconfig    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250704    gcc-10.5.0
parisc                randconfig-001-20250704    gcc-14.3.0
parisc                randconfig-002-20250704    gcc-10.5.0
parisc                randconfig-002-20250704    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc               randconfig-001-20250704    clang-21
powerpc               randconfig-001-20250704    gcc-10.5.0
powerpc               randconfig-002-20250704    gcc-10.5.0
powerpc               randconfig-002-20250704    gcc-9.3.0
powerpc               randconfig-003-20250704    clang-21
powerpc               randconfig-003-20250704    gcc-10.5.0
powerpc64             randconfig-001-20250704    clang-18
powerpc64             randconfig-001-20250704    gcc-10.5.0
powerpc64             randconfig-002-20250704    gcc-10.5.0
powerpc64             randconfig-003-20250704    clang-18
powerpc64             randconfig-003-20250704    gcc-10.5.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250704    clang-21
riscv                 randconfig-002-20250704    clang-21
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250704    clang-21
s390                  randconfig-001-20250704    gcc-15.1.0
s390                  randconfig-002-20250704    clang-21
s390                  randconfig-002-20250704    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250704    clang-21
sh                    randconfig-001-20250704    gcc-15.1.0
sh                    randconfig-002-20250704    clang-21
sh                    randconfig-002-20250704    gcc-13.4.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                            allyesconfig    clang-21
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250704    clang-21
sparc                 randconfig-001-20250704    gcc-11.5.0
sparc                 randconfig-002-20250704    clang-21
sparc                 randconfig-002-20250704    gcc-8.5.0
sparc64                          allmodconfig    clang-21
sparc64                          allyesconfig    clang-21
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250704    clang-21
sparc64               randconfig-001-20250704    gcc-13.4.0
sparc64               randconfig-002-20250704    clang-20
sparc64               randconfig-002-20250704    clang-21
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250704    clang-21
um                    randconfig-002-20250704    clang-21
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250704    clang-20
x86_64      buildonly-randconfig-002-20250704    gcc-12
x86_64      buildonly-randconfig-003-20250704    clang-20
x86_64      buildonly-randconfig-004-20250704    clang-20
x86_64      buildonly-randconfig-005-20250704    clang-20
x86_64      buildonly-randconfig-006-20250704    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-071-20250704    clang-20
x86_64                randconfig-072-20250704    clang-20
x86_64                randconfig-073-20250704    clang-20
x86_64                randconfig-074-20250704    clang-20
x86_64                randconfig-075-20250704    clang-20
x86_64                randconfig-076-20250704    clang-20
x86_64                randconfig-077-20250704    clang-20
x86_64                randconfig-078-20250704    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                           allyesconfig    clang-21
xtensa                randconfig-001-20250704    clang-21
xtensa                randconfig-001-20250704    gcc-12.4.0
xtensa                randconfig-002-20250704    clang-21
xtensa                randconfig-002-20250704    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
