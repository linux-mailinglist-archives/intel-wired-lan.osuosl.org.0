Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4280959EE0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:39:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 692DD4012F;
	Wed, 21 Aug 2024 13:39:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xOs2xqH86Z65; Wed, 21 Aug 2024 13:39:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 889BE40201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724247578;
	bh=ZDgOsXrDRXG8B+/3PI9haiH9RMTfvI7+jNbl5u0nTgk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BMcLuzmNVVAWDpgEI/68kP2TcHM+76ZlVZB/fVxWlJsF1kMzr659LD753vAM+PlTE
	 5JMi3ij/EDb5PToy7VauaBj7AtmJUXfChaROKRqm6vGUYxJdO7DaGoxJx3SHa5rd4k
	 SaKIKVwFavKxxev0+Krh9DE29aifT80Msp4YWTsYc7J+7qy1Wx0Fv1icK/gsXDnpR8
	 uqHzPK//y50VUw/zoMsrDLbGeHpS7ZDhNN3y8knajf1hvWiKSBlYayp3nPcvRA0nOY
	 KcxTtMEpIH/QfvCu9zdOAumUMjrsBKfza8LCnkwBlGlqnzotXyWDyW3p+z8OBXLn3B
	 CuFKeZxy04Vag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 889BE40201;
	Wed, 21 Aug 2024 13:39:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D00E1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:39:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 797DA4011A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:39:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gWWQaXAEHH1c for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:39:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B28CB400F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B28CB400F3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B28CB400F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:39:34 +0000 (UTC)
X-CSE-ConnectionGUID: HJ89BQsiQzmXrNiKprYBzg==
X-CSE-MsgGUID: LmPGK2r2TnG9TJCyunN+8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="13133238"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="13133238"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:39:34 -0700
X-CSE-ConnectionGUID: y2xMTl9JQeiMYwN929O0QA==
X-CSE-MsgGUID: y9+F7NppT4adEBmmExnG1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65930646"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 21 Aug 2024 06:39:33 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sglYh-000BPa-0E
 for intel-wired-lan@lists.osuosl.org; Wed, 21 Aug 2024 13:39:31 +0000
Date: Wed, 21 Aug 2024 21:38:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408212129.TmmhOtAH-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724247575; x=1755783575;
 h=date:from:to:subject:message-id;
 bh=ped2yNV0Vr88z1+30VHXIU9PYcZy8CpkW00Ol/JMSQs=;
 b=YXrVjhVX9IWU7DMteGGbq+KZSPetOj0GSKTu7NVpaVIaelLIyLMoa/xy
 TrFZaB239LaOWQ1Xs8Xuv6WR0nWQABZxEXhgpEh+YslBxAT2pcOMA7+Qg
 Oy1xMbz0hj4LZxXUQWTt+r/faZ1pHIdfyMsuo1LIfPMo8fQaNAOE8cuFV
 g4pSpAFVnLZKAd2ymjAhESePiTVe5nDWIwyygsQkXqhRF/lTL/1hdzN2b
 BedBKZY/3Gw/4Q8yZi6wD0Nbuatpt1Z8q8wuyMBs1ry9aZefBQhptcODi
 xFXTvs4MQ62K3qaKpt/plbc2S21MbEHOecAvk9f+K08S6Y2u+HdXDWo5Q
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YXrVjhVX
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 797653865b982d53ecca517dd2b0ffb8bd967022
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
branch HEAD: 797653865b982d53ecca517dd2b0ffb8bd967022  net: ethernet: ibm: Simpify code with for_each_child_of_node()

elapsed time: 1406m

configs tested: 223
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240821   gcc-13.2.0
arc                   randconfig-002-20240821   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                            mmp2_defconfig   gcc-14.1.0
arm                            mps2_defconfig   gcc-14.1.0
arm                        multi_v5_defconfig   gcc-14.1.0
arm                             mxs_defconfig   gcc-14.1.0
arm                   randconfig-001-20240821   gcc-13.2.0
arm                   randconfig-001-20240821   gcc-14.1.0
arm                   randconfig-002-20240821   gcc-13.2.0
arm                   randconfig-002-20240821   gcc-14.1.0
arm                   randconfig-003-20240821   clang-20
arm                   randconfig-003-20240821   gcc-13.2.0
arm                   randconfig-004-20240821   gcc-13.2.0
arm                   randconfig-004-20240821   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240821   gcc-13.2.0
arm64                 randconfig-001-20240821   gcc-14.1.0
arm64                 randconfig-002-20240821   gcc-13.2.0
arm64                 randconfig-002-20240821   gcc-14.1.0
arm64                 randconfig-003-20240821   gcc-13.2.0
arm64                 randconfig-003-20240821   gcc-14.1.0
arm64                 randconfig-004-20240821   clang-20
arm64                 randconfig-004-20240821   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240821   gcc-13.2.0
csky                  randconfig-001-20240821   gcc-14.1.0
csky                  randconfig-002-20240821   gcc-13.2.0
csky                  randconfig-002-20240821   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240821   clang-20
hexagon               randconfig-002-20240821   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240821   gcc-12
i386         buildonly-randconfig-002-20240821   clang-18
i386         buildonly-randconfig-002-20240821   gcc-12
i386         buildonly-randconfig-003-20240821   clang-18
i386         buildonly-randconfig-003-20240821   gcc-12
i386         buildonly-randconfig-004-20240821   gcc-12
i386         buildonly-randconfig-005-20240821   gcc-12
i386         buildonly-randconfig-006-20240821   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240821   clang-18
i386                  randconfig-001-20240821   gcc-12
i386                  randconfig-002-20240821   gcc-12
i386                  randconfig-003-20240821   clang-18
i386                  randconfig-003-20240821   gcc-12
i386                  randconfig-004-20240821   gcc-12
i386                  randconfig-005-20240821   clang-18
i386                  randconfig-005-20240821   gcc-12
i386                  randconfig-006-20240821   gcc-12
i386                  randconfig-011-20240821   gcc-11
i386                  randconfig-011-20240821   gcc-12
i386                  randconfig-012-20240821   gcc-12
i386                  randconfig-013-20240821   clang-18
i386                  randconfig-013-20240821   gcc-12
i386                  randconfig-014-20240821   clang-18
i386                  randconfig-014-20240821   gcc-12
i386                  randconfig-015-20240821   gcc-12
i386                  randconfig-016-20240821   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240821   gcc-13.2.0
loongarch             randconfig-001-20240821   gcc-14.1.0
loongarch             randconfig-002-20240821   gcc-13.2.0
loongarch             randconfig-002-20240821   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                        stmark2_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                          ath79_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240821   gcc-13.2.0
nios2                 randconfig-001-20240821   gcc-14.1.0
nios2                 randconfig-002-20240821   gcc-13.2.0
nios2                 randconfig-002-20240821   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                 simple_smp_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240821   gcc-13.2.0
parisc                randconfig-001-20240821   gcc-14.1.0
parisc                randconfig-002-20240821   gcc-13.2.0
parisc                randconfig-002-20240821   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                     asp8347_defconfig   gcc-14.1.0
powerpc                   bluestone_defconfig   gcc-14.1.0
powerpc                   currituck_defconfig   gcc-14.1.0
powerpc                       holly_defconfig   gcc-14.1.0
powerpc               randconfig-001-20240821   gcc-13.2.0
powerpc               randconfig-001-20240821   gcc-14.1.0
powerpc               randconfig-002-20240821   clang-20
powerpc               randconfig-002-20240821   gcc-13.2.0
powerpc                     taishan_defconfig   gcc-14.1.0
powerpc64             randconfig-001-20240821   gcc-13.2.0
powerpc64             randconfig-001-20240821   gcc-14.1.0
powerpc64             randconfig-002-20240821   clang-20
powerpc64             randconfig-002-20240821   gcc-13.2.0
powerpc64             randconfig-003-20240821   gcc-13.2.0
powerpc64             randconfig-003-20240821   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240821   gcc-13.2.0
riscv                 randconfig-001-20240821   gcc-14.1.0
riscv                 randconfig-002-20240821   clang-16
riscv                 randconfig-002-20240821   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240821   clang-17
s390                  randconfig-001-20240821   gcc-13.2.0
s390                  randconfig-002-20240821   clang-20
s390                  randconfig-002-20240821   gcc-13.2.0
sh                               alldefconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240821   gcc-13.2.0
sh                    randconfig-001-20240821   gcc-14.1.0
sh                    randconfig-002-20240821   gcc-13.2.0
sh                    randconfig-002-20240821   gcc-14.1.0
sh                           se7619_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240821   gcc-13.2.0
sparc64               randconfig-001-20240821   gcc-14.1.0
sparc64               randconfig-002-20240821   gcc-13.2.0
sparc64               randconfig-002-20240821   gcc-14.1.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240821   clang-20
um                    randconfig-001-20240821   gcc-13.2.0
um                    randconfig-002-20240821   gcc-12
um                    randconfig-002-20240821   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240821   gcc-12
x86_64       buildonly-randconfig-002-20240821   gcc-12
x86_64       buildonly-randconfig-003-20240821   gcc-12
x86_64       buildonly-randconfig-004-20240821   gcc-12
x86_64       buildonly-randconfig-005-20240821   gcc-12
x86_64       buildonly-randconfig-006-20240821   gcc-12
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240821   gcc-12
x86_64                randconfig-002-20240821   gcc-12
x86_64                randconfig-003-20240821   gcc-12
x86_64                randconfig-004-20240821   gcc-12
x86_64                randconfig-005-20240821   gcc-12
x86_64                randconfig-006-20240821   gcc-12
x86_64                randconfig-011-20240821   gcc-12
x86_64                randconfig-012-20240821   gcc-12
x86_64                randconfig-013-20240821   gcc-12
x86_64                randconfig-014-20240821   gcc-12
x86_64                randconfig-015-20240821   gcc-12
x86_64                randconfig-016-20240821   gcc-12
x86_64                randconfig-071-20240821   gcc-12
x86_64                randconfig-072-20240821   gcc-12
x86_64                randconfig-073-20240821   gcc-12
x86_64                randconfig-074-20240821   gcc-12
x86_64                randconfig-075-20240821   gcc-12
x86_64                randconfig-076-20240821   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                generic_kc705_defconfig   gcc-14.1.0
xtensa                  nommu_kc705_defconfig   gcc-14.1.0
xtensa                randconfig-001-20240821   gcc-13.2.0
xtensa                randconfig-001-20240821   gcc-14.1.0
xtensa                randconfig-002-20240821   gcc-13.2.0
xtensa                randconfig-002-20240821   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
