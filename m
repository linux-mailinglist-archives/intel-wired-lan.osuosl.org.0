Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB19BBCC1EF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Oct 2025 10:26:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E712F40D90;
	Fri, 10 Oct 2025 08:26:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k6v_luyHQ-Md; Fri, 10 Oct 2025 08:26:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 193AB40B32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760084777;
	bh=FqF293ZHtxeKhTOmlUz8d8H+4imWPF+/FJJt9lrIYfE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uKvJCFPdrZAGlHBYRfPhL3Siv2BN+a0cet0KfiyHXfj2JSx45tTRI+7zLTvzNI1dl
	 hLlCzQrD7r2b+IYm35auny8guCOjqYDHedMMoIr7qxYXK8/t5vUZmuv8jPce7Qdvw0
	 PqKEdqa+6wtaxzeQmvECVuBhCcdIztdGK5lU+8xi7q46lJw6g363SkxB0mxOe3aWz1
	 adtTPyM9DKsDopaJTo8n8J3cUgqiZf9SzTUiEcjfRXkk4HnjpLvDX6i3SfNI1K8O1f
	 F+2YXjMDYu2eFFGbxQ1yYo3ZfGGed9Fo++85SQmyixq7eWMpJfVGWV9vXJNrTJdD62
	 TQsMruH0/8CqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 193AB40B32;
	Fri, 10 Oct 2025 08:26:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 30E4414B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 08:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2320840AF0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 08:26:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vRzQ0wyUWr2R for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Oct 2025 08:26:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 122AC403F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 122AC403F0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 122AC403F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 08:26:09 +0000 (UTC)
X-CSE-ConnectionGUID: drOgGodiQrq3BuehGcTiNA==
X-CSE-MsgGUID: ukfHuQlpQ+2/ke0GkpB9Cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="62400961"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="62400961"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 01:26:09 -0700
X-CSE-ConnectionGUID: PnXd9u8QR9mVlWhiayP0mw==
X-CSE-MsgGUID: Itr0dvVFQzaiy6eGXKhDRg==
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO 6a630e8620ab) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 10 Oct 2025 01:26:08 -0700
Received: from kbuild by 6a630e8620ab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v78Ry-0002T7-1Y
 for intel-wired-lan@lists.osuosl.org; Fri, 10 Oct 2025 08:26:06 +0000
Date: Fri, 10 Oct 2025 16:25:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510101621.1IDjvshO-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760084770; x=1791620770;
 h=date:from:to:subject:message-id;
 bh=4ccleSUnjDo4qFkvL/YO10nPAix0QGDbCJpJmW4WIsY=;
 b=kCPJbRQQ4ZG+dk717RzWGxMBcNJUeE53AYzm/Zf8xwaYs8sbTH8CJ+GV
 lljyWHsE7LkuGdmgZ2TfRjISCL8ETv0UBRekAONMNBtY9R1728sAkxtou
 drsAwERXE+nwlvuiGHn8MnNTNffP+6UbRt4HvZz/RJR5N6gWQ4o+6N3ol
 7fmHDRqR9kaD4qzRYGYz+M2Sqg02vZluVgqcE7Wi2Q1yTcBULFqwVie0i
 2EggZ+DUSp05DVY3SktlS4ncKYpNgRAQDvzJzBtRmfGT7XiERmUIuX716
 WZqcYpxbXnQR6IwK7GDvBt1s+ISf3cNtWcILWk6zRTSJnpLkFLFpEa3m1
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kCPJbRQQ
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 cbbc9ad6caed63e32e8a4b10001b041f7294ffa6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: cbbc9ad6caed63e32e8a4b10001b041f7294ffa6  ice: fix destination CGU for dual complex E825

elapsed time: 1533m

configs tested: 99
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20251009    gcc-11.5.0
arc                   randconfig-002-20251009    gcc-14.3.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20251009    gcc-10.5.0
arm                   randconfig-002-20251009    gcc-11.5.0
arm                   randconfig-003-20251009    gcc-11.5.0
arm                   randconfig-004-20251009    gcc-12.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251009    gcc-8.5.0
arm64                 randconfig-002-20251009    gcc-14.3.0
arm64                 randconfig-003-20251009    gcc-9.5.0
arm64                 randconfig-004-20251009    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251009    gcc-13.4.0
csky                  randconfig-002-20251009    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251009    clang-16
hexagon               randconfig-002-20251009    clang-19
i386                             allmodconfig    gcc-14
i386        buildonly-randconfig-001-20251010    gcc-14
i386        buildonly-randconfig-002-20251010    clang-20
i386        buildonly-randconfig-003-20251010    clang-20
i386        buildonly-randconfig-004-20251010    gcc-14
i386        buildonly-randconfig-005-20251010    gcc-14
i386        buildonly-randconfig-006-20251010    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251009    gcc-15.1.0
loongarch             randconfig-002-20251009    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm47xx_defconfig    clang-18
mips                           gcw0_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20251009    gcc-8.5.0
nios2                 randconfig-002-20251009    gcc-11.5.0
openrisc                            defconfig    gcc-15.1.0
parisc                randconfig-001-20251009    gcc-8.5.0
parisc                randconfig-002-20251009    gcc-9.5.0
powerpc               randconfig-001-20251009    gcc-8.5.0
powerpc               randconfig-002-20251009    gcc-11.5.0
powerpc               randconfig-003-20251009    gcc-8.5.0
powerpc                    socrates_defconfig    gcc-15.1.0
powerpc64             randconfig-002-20251009    clang-22
powerpc64             randconfig-003-20251009    clang-22
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251009    gcc-8.5.0
riscv                 randconfig-002-20251009    clang-19
s390                             allmodconfig    clang-18
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251009    clang-22
s390                  randconfig-002-20251009    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251009    gcc-15.1.0
sh                    randconfig-002-20251009    gcc-12.5.0
sh                          sdk7786_defconfig    gcc-15.1.0
sh                           sh2007_defconfig    gcc-15.1.0
sh                          urquell_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20251009    gcc-8.5.0
sparc                 randconfig-002-20251009    gcc-8.5.0
sparc64               randconfig-001-20251009    clang-22
sparc64               randconfig-002-20251009    clang-22
um                               allmodconfig    clang-19
um                               allyesconfig    gcc-14
um                    randconfig-001-20251009    clang-17
um                    randconfig-002-20251009    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251010    clang-20
x86_64      buildonly-randconfig-002-20251010    clang-20
x86_64      buildonly-randconfig-003-20251010    clang-20
x86_64      buildonly-randconfig-004-20251010    clang-20
x86_64      buildonly-randconfig-005-20251010    gcc-14
x86_64      buildonly-randconfig-006-20251010    gcc-14
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251009    gcc-11.5.0
xtensa                randconfig-002-20251009    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
