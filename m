Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D330BCE356
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Oct 2025 20:22:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD643407FC;
	Fri, 10 Oct 2025 18:22:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r2mpPuX9ebLv; Fri, 10 Oct 2025 18:22:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83EEC40818
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760120537;
	bh=cCcn5rVHIWzbwtHrU3dXsULy/Xl+4JeYkmhPomIZrmE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YzfcDsP5MXHCPmOCG5/2PWP5g9CGDeMpyNo+r/yLMH2Iq2HKFZ8g4zx5x2s22wM+U
	 qgYiZGDS3qa4SLW1kupypyAut6Ckb0+BkG3Dij/J3iMsQNwVY0ml8SkVvfCMun7kFF
	 Q7en1NjC2ICX5eW0NO0JnYsHZyevyCP4IQPvbHTIE7CWAZSGLUMtDsQkLJuGZHy1GX
	 Ne+O8L1ZYME7IayyGIOkX2R8++nG2iKREr4PmXgINueyGzyiix2W/gykPfn6nEcnr7
	 4rNRlTJu0NbJnls9orYusO94YAI92VIRFbYZYlzWMfysCo/FjOONrdOCKeqTzL+x5d
	 sP6RVu5uoEPDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83EEC40818;
	Fri, 10 Oct 2025 18:22:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 88843119
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 18:22:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A5A760675
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 18:22:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Bf2Pw1qORxF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Oct 2025 18:22:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6E8F660669
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E8F660669
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E8F660669
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 18:22:11 +0000 (UTC)
X-CSE-ConnectionGUID: K3hzTBO1SkqQa+xSjBPLNA==
X-CSE-MsgGUID: aEoYRgljSkGCwscghvyOCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="64964977"
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="64964977"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 11:22:11 -0700
X-CSE-ConnectionGUID: gruBeQsASCCBWkuw4GRrbw==
X-CSE-MsgGUID: CDii8fyATiyjpudKK7BEAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="181459905"
Received: from lkp-server01.sh.intel.com (HELO 6a630e8620ab) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 10 Oct 2025 11:22:10 -0700
Received: from kbuild by 6a630e8620ab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v7Hkm-00033G-0S
 for intel-wired-lan@lists.osuosl.org; Fri, 10 Oct 2025 18:22:08 +0000
Date: Sat, 11 Oct 2025 02:21:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510110249.KeslZoD0-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760120532; x=1791656532;
 h=date:from:to:subject:message-id;
 bh=5nWNhtbO/IV7mQ0ju7Jtm92k7Oj4D6zd+61GWHWyyyc=;
 b=oKhURfCdEF+ulz8wARNc9KYJIyrUqzka2qeyL7+ffXnauX7trj4RmC6l
 wPKjbRVwL0YbUyhIR1w/oZQ+DaOaN5x9G0djZVqLBzwUZt7k+tPRk0ZWC
 b8qxIkslK73zVnpmIJ6GJAHKv8kHZD82iE//pNanvxlPu440Eeb2FK/xf
 qXUQzuUTU31W+7LXQCmr0UzGHQrHAr5gu9jc2kAQGiY49pNiIesATqeMc
 hCLExGsmPH9mvBkLSdfshZ1HvALdC9j7hhBAp4pvcq33SjMXp2tvcWRVw
 tjJwDDxtS98POfIKuRRGClHmim8S9kxe+EaPIXk7wnbOLuLDnulU9sfG7
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oKhURfCd
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 cfdb3a5d77ac9cb089eacf85e7f1ca5b2c89305c
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
branch HEAD: cfdb3a5d77ac9cb089eacf85e7f1ca5b2c89305c  ice: fix usage of logical PF id

elapsed time: 1459m

configs tested: 207
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20251010    gcc-12.5.0
arc                   randconfig-001-20251010    gcc-8.5.0
arc                   randconfig-002-20251010    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                       aspeed_g5_defconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                   randconfig-001-20251010    gcc-8.5.0
arm                   randconfig-002-20251010    gcc-13.4.0
arm                   randconfig-002-20251010    gcc-8.5.0
arm                   randconfig-003-20251010    gcc-8.5.0
arm                   randconfig-004-20251010    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20251010    gcc-14.3.0
arm64                 randconfig-001-20251010    gcc-8.5.0
arm64                 randconfig-002-20251010    clang-19
arm64                 randconfig-002-20251010    gcc-8.5.0
arm64                 randconfig-003-20251010    clang-17
arm64                 randconfig-003-20251010    gcc-8.5.0
arm64                 randconfig-004-20251010    gcc-15.1.0
arm64                 randconfig-004-20251010    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20251010    gcc-14.3.0
csky                  randconfig-001-20251010    gcc-15.1.0
csky                  randconfig-002-20251010    gcc-10.5.0
csky                  randconfig-002-20251010    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20251010    clang-22
hexagon               randconfig-001-20251010    gcc-14.3.0
hexagon               randconfig-002-20251010    clang-18
hexagon               randconfig-002-20251010    gcc-14.3.0
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251010    gcc-14
i386        buildonly-randconfig-002-20251010    clang-20
i386        buildonly-randconfig-002-20251010    gcc-14
i386        buildonly-randconfig-003-20251010    clang-20
i386        buildonly-randconfig-003-20251010    gcc-14
i386        buildonly-randconfig-004-20251010    gcc-14
i386        buildonly-randconfig-005-20251010    gcc-14
i386        buildonly-randconfig-006-20251010    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20251010    clang-20
i386                  randconfig-002-20251010    clang-20
i386                  randconfig-003-20251010    clang-20
i386                  randconfig-004-20251010    clang-20
i386                  randconfig-005-20251010    clang-20
i386                  randconfig-006-20251010    clang-20
i386                  randconfig-007-20251010    clang-20
i386                  randconfig-011-20251010    gcc-14
i386                  randconfig-012-20251010    gcc-14
i386                  randconfig-013-20251010    gcc-14
i386                  randconfig-014-20251010    gcc-14
i386                  randconfig-015-20251010    gcc-14
i386                  randconfig-016-20251010    gcc-14
i386                  randconfig-017-20251010    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251010    clang-22
loongarch             randconfig-001-20251010    gcc-14.3.0
loongarch             randconfig-002-20251010    gcc-14.3.0
loongarch             randconfig-002-20251010    gcc-15.1.0
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
mips                           ip32_defconfig    gcc-15.1.0
mips                           jazz_defconfig    clang-17
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20251010    gcc-11.5.0
nios2                 randconfig-001-20251010    gcc-14.3.0
nios2                 randconfig-002-20251010    gcc-14.3.0
nios2                 randconfig-002-20251010    gcc-9.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-14
openrisc                       virt_defconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251010    gcc-14.3.0
parisc                randconfig-001-20251010    gcc-8.5.0
parisc                randconfig-002-20251010    gcc-12.5.0
parisc                randconfig-002-20251010    gcc-14.3.0
parisc64                         alldefconfig    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                      chrp32_defconfig    clang-19
powerpc               randconfig-001-20251010    clang-22
powerpc               randconfig-001-20251010    gcc-14.3.0
powerpc               randconfig-002-20251010    gcc-14.3.0
powerpc               randconfig-002-20251010    gcc-15.1.0
powerpc               randconfig-003-20251010    clang-22
powerpc               randconfig-003-20251010    gcc-14.3.0
powerpc                     redwood_defconfig    gcc-15.1.0
powerpc                     stx_gp3_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251010    clang-22
powerpc64             randconfig-001-20251010    gcc-14.3.0
powerpc64             randconfig-002-20251010    gcc-14.3.0
powerpc64             randconfig-003-20251010    gcc-13.4.0
powerpc64             randconfig-003-20251010    gcc-14.3.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    gcc-14
riscv                 randconfig-001-20251010    clang-22
riscv                 randconfig-001-20251010    gcc-9.5.0
riscv                 randconfig-002-20251010    gcc-9.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-14
s390                  randconfig-001-20251010    gcc-14.3.0
s390                  randconfig-001-20251010    gcc-9.5.0
s390                  randconfig-002-20251010    clang-22
s390                  randconfig-002-20251010    gcc-9.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20251010    gcc-15.1.0
sh                    randconfig-001-20251010    gcc-9.5.0
sh                    randconfig-002-20251010    gcc-15.1.0
sh                    randconfig-002-20251010    gcc-9.5.0
sh                          rsk7264_defconfig    gcc-15.1.0
sh                           se7619_defconfig    gcc-15.1.0
sh                           se7712_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251010    gcc-11.5.0
sparc                 randconfig-001-20251010    gcc-9.5.0
sparc                 randconfig-002-20251010    gcc-8.5.0
sparc                 randconfig-002-20251010    gcc-9.5.0
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20251010    clang-20
sparc64               randconfig-001-20251010    gcc-9.5.0
sparc64               randconfig-002-20251010    gcc-10.5.0
sparc64               randconfig-002-20251010    gcc-9.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251010    gcc-14
um                    randconfig-001-20251010    gcc-9.5.0
um                    randconfig-002-20251010    gcc-14
um                    randconfig-002-20251010    gcc-9.5.0
um                           x86_64_defconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251010    clang-20
x86_64      buildonly-randconfig-001-20251010    gcc-14
x86_64      buildonly-randconfig-002-20251010    clang-20
x86_64      buildonly-randconfig-002-20251010    gcc-14
x86_64      buildonly-randconfig-003-20251010    clang-20
x86_64      buildonly-randconfig-003-20251010    gcc-14
x86_64      buildonly-randconfig-004-20251010    clang-20
x86_64      buildonly-randconfig-004-20251010    gcc-14
x86_64      buildonly-randconfig-005-20251010    gcc-14
x86_64      buildonly-randconfig-006-20251010    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-071-20251010    clang-20
x86_64                randconfig-072-20251010    clang-20
x86_64                randconfig-073-20251010    clang-20
x86_64                randconfig-074-20251010    clang-20
x86_64                randconfig-075-20251010    clang-20
x86_64                randconfig-076-20251010    clang-20
x86_64                randconfig-077-20251010    clang-20
x86_64                randconfig-078-20251010    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251010    gcc-8.5.0
xtensa                randconfig-001-20251010    gcc-9.5.0
xtensa                randconfig-002-20251010    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
