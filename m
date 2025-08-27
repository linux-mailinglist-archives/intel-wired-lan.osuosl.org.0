Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8387B37E8B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 11:16:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 570DD4054D;
	Wed, 27 Aug 2025 09:16:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HM9kK5hjCcn1; Wed, 27 Aug 2025 09:16:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81BD7404E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756286168;
	bh=vgNPuhCHtib9hmUcjtdpPatJZN8lx4laHAx0NgmnIOo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i35A2G3J8sbWtZPOj0bRzMjkSNiVN5z1BcBIlgKZWFB5gPilePk3MwoCOOSZ8Lt6A
	 wTD3Ud/ap7YfCyNTjruZKYQH/axu1QS0wf0tZx0r9Dh3rSeHaZ1EQSE/6K5ha4n/14
	 7D10HttsFXVA12YmV0Rg4YGAWClCsMX/EoW2QSJ17YYNKcr/vNkXdJUUV0k1W7wFs+
	 oe8tw2QbDtrjlcani1QAFKbFF9XO+P/BBt1fgiVYkCVVElUafZMmngFF3m8Q27JLnq
	 X3YXBpWitbXUzAdIuUmHIfFTLrcz2jztqMETQ8swuhK5KXGj3qx1Rd5x3D8GxjGvck
	 kQt3iT8SUBXEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81BD7404E3;
	Wed, 27 Aug 2025 09:16:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 87F6B114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 09:16:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7893280B7B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 09:16:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DtVJMHe7sbaL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 09:16:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0B6F780B4D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B6F780B4D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B6F780B4D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 09:16:00 +0000 (UTC)
X-CSE-ConnectionGUID: xqhiPzgYSIKxlQUU/3eN7g==
X-CSE-MsgGUID: T6QHenkiSZ6aYFu+pWBTZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="62349335"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="62349335"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 02:15:49 -0700
X-CSE-ConnectionGUID: HgDebwCCS+Wul4RGIvBnfg==
X-CSE-MsgGUID: ZjFMaIgbR6GyzUeffz4pSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="174193932"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa004.jf.intel.com with ESMTP; 27 Aug 2025 02:15:47 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1urCFs-000SpP-32
 for intel-wired-lan@lists.osuosl.org; Wed, 27 Aug 2025 09:15:44 +0000
Date: Wed, 27 Aug 2025 17:15:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508271723.bYIB3sj9-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756286161; x=1787822161;
 h=date:from:to:subject:message-id;
 bh=mXaG8n/vfEIeOBFDQljzomH6byU0g8XSGnJH8ykbHQs=;
 b=AD+FQyw99yNw/fHxw/PCJirhgREb3NCwhSxe5IRnJzsYhEiacwprKrxp
 6eGGvMhjUQ2piEBdNHoj+oPfpuXMXFC5JIapRPg8dGNvYfDk2wWuIYmxr
 Z93w2bvs/Nv76MvTR8CbJNv4Z+coVhq2RWBd8CZfbQGyVQu8MfZ7nGHzI
 O00vAt4pPB0+MyJldrBQ++OG6w/AT4DVvJ64OsjUXgsBOkZ54uruaTU+k
 VQKAk4sSuolcP/knxoy4D1CaBEelPBfzFDMLu0y479WtQLYSEaHBEQzwB
 I7oc7+Ofn4DkZ+jOLcLYNvVSleKkx8nxiQgEQYSIlLLxwq+DF5vWKCglO
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AD+FQyw9
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 3c14917953a51a22f4fa7e13dfc13a4ec09bf348
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
branch HEAD: 3c14917953a51a22f4fa7e13dfc13a4ec09bf348  ibmvnic: Increase max subcrq indirect entries with fallback

elapsed time: 1495m

configs tested: 141
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                   randconfig-001-20250827    gcc-12.5.0
arc                   randconfig-002-20250827    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                        clps711x_defconfig    clang-22
arm                           imxrt_defconfig    clang-22
arm                      integrator_defconfig    clang-22
arm                             pxa_defconfig    gcc-15.1.0
arm                   randconfig-001-20250827    clang-22
arm                   randconfig-002-20250827    clang-22
arm                   randconfig-003-20250827    clang-22
arm                   randconfig-004-20250827    clang-22
arm                           sunxi_defconfig    gcc-15.1.0
arm                           tegra_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250827    gcc-11.5.0
arm64                 randconfig-002-20250827    gcc-8.5.0
arm64                 randconfig-003-20250827    clang-22
arm64                 randconfig-004-20250827    gcc-9.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250827    gcc-10.5.0
csky                  randconfig-002-20250827    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250827    clang-22
hexagon               randconfig-002-20250827    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250826    gcc-12
i386        buildonly-randconfig-001-20250827    clang-20
i386        buildonly-randconfig-002-20250826    gcc-12
i386        buildonly-randconfig-002-20250827    clang-20
i386        buildonly-randconfig-003-20250826    clang-20
i386        buildonly-randconfig-003-20250827    clang-20
i386        buildonly-randconfig-004-20250826    gcc-12
i386        buildonly-randconfig-004-20250827    clang-20
i386        buildonly-randconfig-005-20250826    clang-20
i386        buildonly-randconfig-005-20250827    clang-20
i386        buildonly-randconfig-006-20250826    gcc-12
i386        buildonly-randconfig-006-20250827    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250827    gcc-15.1.0
loongarch             randconfig-002-20250827    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           ip22_defconfig    gcc-15.1.0
mips                           ip27_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250827    gcc-8.5.0
nios2                 randconfig-002-20250827    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250827    gcc-12.5.0
parisc                randconfig-002-20250827    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                 canyonlands_defconfig    clang-22
powerpc                    ge_imp3a_defconfig    gcc-15.1.0
powerpc                   lite5200b_defconfig    clang-22
powerpc                      pasemi_defconfig    clang-22
powerpc                     ppa8548_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250827    clang-22
powerpc               randconfig-002-20250827    clang-22
powerpc               randconfig-003-20250827    clang-22
powerpc64             randconfig-001-20250827    gcc-11.5.0
powerpc64             randconfig-002-20250827    gcc-11.5.0
powerpc64             randconfig-003-20250827    gcc-13.4.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20250827    clang-19
riscv                 randconfig-002-20250827    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20250827    gcc-13.4.0
s390                  randconfig-002-20250827    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250827    gcc-15.1.0
sh                    randconfig-002-20250827    gcc-9.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250827    gcc-15.1.0
sparc                 randconfig-002-20250827    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20250827    gcc-11.5.0
sparc64               randconfig-002-20250827    gcc-8.5.0
um                               alldefconfig    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250827    gcc-12
um                    randconfig-002-20250827    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250827    clang-20
x86_64      buildonly-randconfig-002-20250827    clang-20
x86_64      buildonly-randconfig-003-20250827    gcc-12
x86_64      buildonly-randconfig-004-20250827    gcc-12
x86_64      buildonly-randconfig-005-20250827    clang-20
x86_64      buildonly-randconfig-006-20250827    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250827    gcc-10.5.0
xtensa                randconfig-002-20250827    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
