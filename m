Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 629EABFB863
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 13:03:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB1ED40BE4;
	Wed, 22 Oct 2025 11:03:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lYb1Mht0er-8; Wed, 22 Oct 2025 11:03:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDA2F40AD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761131019;
	bh=d/Q5S+4bBkHypzW9M0p5vkqItmMpe0L//FU4y/6Q5ks=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AMyKHK5oV0K8AdAs2FwiaRl264eJ1TRXFJnIYETuAU6pArU/EsL/sJgAjCJegSE+M
	 COwRLzl/Ga8HLa0WVi/HdwzQTzWzKS3yFviXeB23YLRCXCRitBGmi36F28W3Ms7Moq
	 0tODNh5MIH3m+eH3bR8TvSYCbzmjInb98Y6fiFcg1MAnwXKZmkZpKDyZ7+tioNSPD1
	 E3Yvf4l+t67uWYXSy2u+ItnL2DvcUkIpKyZqMiJ+GZi6bHzkZkAIlR1auH1SsE1nPW
	 x+q3z8uzbr9w0ImsfidlP6DdyDjGoVR/ILf4RdZSjNj3O04Md1VIdy/IhQakhIvPXu
	 wkMLPvUJYHtRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDA2F40AD3;
	Wed, 22 Oct 2025 11:03:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 236A0DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 11:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D70040099
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 11:03:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VwrxjIzOMBCk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 11:03:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B425F40028
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B425F40028
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B425F40028
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 11:03:37 +0000 (UTC)
X-CSE-ConnectionGUID: yEyjFLW7RsilY9vQ/m8bwQ==
X-CSE-MsgGUID: RoKznSmoRXy9omEIYwj+Sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63369499"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="63369499"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 04:03:37 -0700
X-CSE-ConnectionGUID: yLg2aFeNTzKmVfgg65C85Q==
X-CSE-MsgGUID: FahZ49NxSwOge0c8Fq/JAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="188250836"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by fmviesa005.fm.intel.com with ESMTP; 22 Oct 2025 04:03:36 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vBWcw-000CHe-0B
 for intel-wired-lan@lists.osuosl.org; Wed, 22 Oct 2025 11:03:34 +0000
Date: Wed, 22 Oct 2025 19:03:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510221903.odzvA81n-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761131018; x=1792667018;
 h=date:from:to:subject:message-id;
 bh=wpIhTu/ELGZejzumFcfuEc5jIzMWpv6isLJSDoARXCE=;
 b=a9NSC63XVrJC/9ol+scM21XrmjusYR7knD+Tnp06dOJqTKTGxPeBXv/T
 qKAPR0puQ8fXaKN8GIn4XypSbSVcC8Q9m83stQwp1Nlz/l8UWiv6gR3Lw
 1dp5wLC006YgRpFiJPcsTx7dyoP4gwmRiT0bq4pT42WjrX4Oe5VdcS6hp
 ebYJTDtxn5hcaU74rD2hJSOmenBFqhPgJyfJYrrtbkFx4g1z1xiYr4e2C
 iwwn0pj7SsEh/luR5FAn6Arg/TC91qw+27jGrE0i6TaPZPMUqEeAb6yi1
 kn3tC7ivIi/aOTVPMbgjisrarUiM58bgjlIJBl5WtBYxUVcViTfPhKAIy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a9NSC63X
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7db905a774118d22f9cda604074e566466b367a1
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
branch HEAD: 7db905a774118d22f9cda604074e566466b367a1  libie: depend on DEBUG_FS when building LIBIE_FWLOG

elapsed time: 1037m

configs tested: 217
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                               allnoconfig    clang-22
arc                              allyesconfig    clang-19
arc                                 defconfig    clang-19
arc                   randconfig-001-20251022    clang-22
arc                   randconfig-001-20251022    gcc-13.4.0
arc                   randconfig-002-20251022    clang-22
arc                   randconfig-002-20251022    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                                 defconfig    clang-19
arm                   randconfig-001-20251022    clang-22
arm                   randconfig-001-20251022    gcc-11.5.0
arm                   randconfig-002-20251022    clang-22
arm                   randconfig-002-20251022    gcc-10.5.0
arm                   randconfig-003-20251022    clang-22
arm                   randconfig-003-20251022    gcc-10.5.0
arm                   randconfig-004-20251022    clang-22
arm                        spear6xx_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                               defconfig    clang-19
arm64                 randconfig-001-20251022    clang-22
arm64                 randconfig-001-20251022    gcc-9.5.0
arm64                 randconfig-002-20251022    clang-18
arm64                 randconfig-002-20251022    clang-22
arm64                 randconfig-003-20251022    clang-22
arm64                 randconfig-003-20251022    gcc-10.5.0
arm64                 randconfig-004-20251022    clang-22
arm64                 randconfig-004-20251022    gcc-12.5.0
csky                              allnoconfig    clang-22
csky                                defconfig    clang-19
csky                  randconfig-001-20251022    clang-22
csky                  randconfig-001-20251022    gcc-15.1.0
csky                  randconfig-002-20251022    clang-22
csky                  randconfig-002-20251022    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20251022    clang-22
hexagon               randconfig-002-20251022    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20251022    clang-20
i386        buildonly-randconfig-001-20251022    gcc-14
i386        buildonly-randconfig-002-20251022    clang-20
i386        buildonly-randconfig-002-20251022    gcc-14
i386        buildonly-randconfig-003-20251022    gcc-14
i386        buildonly-randconfig-004-20251022    clang-20
i386        buildonly-randconfig-004-20251022    gcc-14
i386        buildonly-randconfig-005-20251022    gcc-12
i386        buildonly-randconfig-005-20251022    gcc-14
i386        buildonly-randconfig-006-20251022    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20251022    gcc-14
i386                  randconfig-002-20251022    gcc-14
i386                  randconfig-003-20251022    gcc-14
i386                  randconfig-004-20251022    gcc-14
i386                  randconfig-005-20251022    gcc-14
i386                  randconfig-006-20251022    gcc-14
i386                  randconfig-007-20251022    gcc-14
i386                  randconfig-011-20251022    gcc-13
i386                  randconfig-012-20251022    gcc-13
i386                  randconfig-013-20251022    gcc-13
i386                  randconfig-014-20251022    gcc-13
i386                  randconfig-015-20251022    gcc-13
i386                  randconfig-016-20251022    gcc-13
i386                  randconfig-017-20251022    gcc-13
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251022    clang-22
loongarch             randconfig-001-20251022    gcc-12.5.0
loongarch             randconfig-002-20251022    clang-22
loongarch             randconfig-002-20251022    gcc-15.1.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                          amiga_defconfig    gcc-15.1.0
m68k                                defconfig    clang-19
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm47xx_defconfig    gcc-15.1.0
mips                       bmips_be_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20251022    clang-22
nios2                 randconfig-001-20251022    gcc-8.5.0
nios2                 randconfig-002-20251022    clang-22
nios2                 randconfig-002-20251022    gcc-10.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251022    clang-22
parisc                randconfig-001-20251022    gcc-13.4.0
parisc                randconfig-002-20251022    clang-22
parisc                randconfig-002-20251022    gcc-10.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc               randconfig-001-20251022    clang-22
powerpc               randconfig-001-20251022    gcc-8.5.0
powerpc               randconfig-002-20251022    clang-22
powerpc               randconfig-002-20251022    gcc-8.5.0
powerpc               randconfig-003-20251022    clang-22
powerpc               randconfig-003-20251022    gcc-8.5.0
powerpc64             randconfig-001-20251022    clang-22
powerpc64             randconfig-001-20251022    gcc-8.5.0
powerpc64             randconfig-002-20251022    clang-22
powerpc64             randconfig-002-20251022    gcc-8.5.0
powerpc64             randconfig-003-20251022    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                 randconfig-001-20251022    gcc-14.3.0
riscv                 randconfig-002-20251022    clang-22
riscv                 randconfig-002-20251022    gcc-14.3.0
s390                             alldefconfig    gcc-15.1.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251022    gcc-14.3.0
s390                  randconfig-002-20251022    clang-22
s390                  randconfig-002-20251022    gcc-14.3.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                            hp6xx_defconfig    gcc-15.1.0
sh                          lboxre2_defconfig    gcc-15.1.0
sh                    randconfig-001-20251022    gcc-10.5.0
sh                    randconfig-001-20251022    gcc-14.3.0
sh                    randconfig-002-20251022    gcc-14.3.0
sh                    randconfig-002-20251022    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251022    gcc-14.3.0
sparc                 randconfig-002-20251022    gcc-14.3.0
sparc64               randconfig-001-20251022    gcc-14.3.0
sparc64               randconfig-001-20251022    gcc-8.5.0
sparc64               randconfig-002-20251022    clang-22
sparc64               randconfig-002-20251022    gcc-14.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-14
um                    randconfig-001-20251022    gcc-14
um                    randconfig-001-20251022    gcc-14.3.0
um                    randconfig-002-20251022    gcc-14
um                    randconfig-002-20251022    gcc-14.3.0
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251022    clang-20
x86_64      buildonly-randconfig-002-20251022    clang-20
x86_64      buildonly-randconfig-002-20251022    gcc-14
x86_64      buildonly-randconfig-003-20251022    clang-20
x86_64      buildonly-randconfig-003-20251022    gcc-14
x86_64      buildonly-randconfig-004-20251022    clang-20
x86_64      buildonly-randconfig-005-20251022    clang-20
x86_64      buildonly-randconfig-005-20251022    gcc-14
x86_64      buildonly-randconfig-006-20251022    clang-20
x86_64      buildonly-randconfig-006-20251022    gcc-14
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20251022    clang-20
x86_64                randconfig-002-20251022    clang-20
x86_64                randconfig-003-20251022    clang-20
x86_64                randconfig-004-20251022    clang-20
x86_64                randconfig-005-20251022    clang-20
x86_64                randconfig-006-20251022    clang-20
x86_64                randconfig-007-20251022    clang-20
x86_64                randconfig-008-20251022    clang-20
x86_64                randconfig-071-20251022    clang-20
x86_64                randconfig-072-20251022    clang-20
x86_64                randconfig-073-20251022    clang-20
x86_64                randconfig-074-20251022    clang-20
x86_64                randconfig-075-20251022    clang-20
x86_64                randconfig-076-20251022    clang-20
x86_64                randconfig-077-20251022    clang-20
x86_64                randconfig-078-20251022    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251022    gcc-11.5.0
xtensa                randconfig-001-20251022    gcc-14.3.0
xtensa                randconfig-002-20251022    gcc-14.3.0
xtensa                randconfig-002-20251022    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
