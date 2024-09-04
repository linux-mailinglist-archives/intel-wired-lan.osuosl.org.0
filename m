Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C2B96BB64
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 14:00:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69C4C404CE;
	Wed,  4 Sep 2024 12:00:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3RJMwDd7IDfm; Wed,  4 Sep 2024 12:00:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1CE4404BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725451220;
	bh=xFi3LPtsQ+LalkUX/fAdWD7g2OK8iP8RHXapY2LvTX8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=A4+cuhjhXgaMWCEcLXX3zFXFhjeQh/DNK+5oeG1RUXnGgUnii91iTL3b8nLGRgXtZ
	 58+57QZEGPMqCYYh4FW6ViIM9TAW4xvHZeXjEdd2Hg8wka1yL/D98IDIwIDCg4oWed
	 Y5FiafU8NRlAdpCF+N/TJu3kmzFb9RbcvXVRMYe7ttYsArD21niGcoNbS6rR4kaJkK
	 /OoLTJpRauG9r+hIFYiY112HENdtW9cQJVdsFXXYjUiraEGGaR7+LzYavwX8XrcuNT
	 rwGeMEyU19B/E1hl/3Gh2yCg23xv0wpqeNjFJeLLcoCcrOvHIR8D0YHI0UuXEOaETy
	 GrOcPh8nuTmRg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1CE4404BF;
	Wed,  4 Sep 2024 12:00:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F13691BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DAF7740129
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:00:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8hdwZiyHWciq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 12:00:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C9F9F4047B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9F9F4047B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C9F9F4047B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:00:15 +0000 (UTC)
X-CSE-ConnectionGUID: K9OgbChmTqmtX1mTkKbvLg==
X-CSE-MsgGUID: s6k4GXN1SB6iIrD4w+QeKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="34768019"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="34768019"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:00:15 -0700
X-CSE-ConnectionGUID: JoFLVgrHSkanjEZydQBepw==
X-CSE-MsgGUID: /fp35J10RkCQIIINfR10Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="70117206"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 04 Sep 2024 05:00:12 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1slogC-0007w4-2u
 for intel-wired-lan@lists.osuosl.org; Wed, 04 Sep 2024 12:00:08 +0000
Date: Wed, 04 Sep 2024 19:59:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409041927.tkt4FYMc-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725451216; x=1756987216;
 h=date:from:to:subject:message-id;
 bh=dEffqNcXnl4BrITzzvG8L+Rj3/+ZrM3Uoma4TkBD/0Q=;
 b=kx+1V3gg02L+/W823Sv07siFtJrPGIIibQZR5TvVLRukF9RcYpGBmHsp
 2uD+IOlTh1vsrlgbV+sevtJvmL9du+eePtpdM/8eatiZ1Q21JWtp4mivq
 UgcStu7HdzTtIH33XOiZRoBXSPvld4mruTguZzxMgWDb7gs5m13iEjNj+
 t4jhEW5+JfqKU1HOLVKTEOjTuIW/SyjNMJ3MIXG8Px55rMfBWX+JEzJ/p
 EB3F1mjNdLs/S6OyP14Q/RsWxt9+ZLHxFaf9chF8Vx+Z7mNWnGzOxlmmO
 jft3mrw4XXNU5q7SkElV2QgOWIe/4sMfSBUeynF29nLWNEC6nk7NeTKVF
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kx+1V3gg
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 cfd433cecef929b4d92685f570f1a480762ec260
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: cfd433cecef929b4d92685f570f1a480762ec260  Merge branch 'ptp-ocp-fix-serial-port-information-export'

elapsed time: 1293m

configs tested: 110
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                            allyesconfig   clang-20
alpha                               defconfig   gcc-14.1.0
arc                              allmodconfig   clang-20
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   clang-20
arc                                 defconfig   gcc-14.1.0
arm                              allmodconfig   clang-20
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                                 defconfig   gcc-14.1.0
arm                        neponset_defconfig   gcc-14.1.0
arm                         socfpga_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
csky                             alldefconfig   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   gcc-14.1.0
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   gcc-14.1.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240904   gcc-12
i386         buildonly-randconfig-002-20240904   gcc-12
i386         buildonly-randconfig-003-20240904   gcc-12
i386         buildonly-randconfig-004-20240904   gcc-12
i386         buildonly-randconfig-005-20240904   gcc-12
i386         buildonly-randconfig-006-20240904   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240904   gcc-12
i386                  randconfig-002-20240904   gcc-12
i386                  randconfig-004-20240904   gcc-12
i386                  randconfig-005-20240904   gcc-12
i386                  randconfig-006-20240904   gcc-12
i386                  randconfig-011-20240904   gcc-12
i386                  randconfig-012-20240904   gcc-12
i386                  randconfig-013-20240904   gcc-12
i386                  randconfig-014-20240904   gcc-12
i386                  randconfig-015-20240904   gcc-12
i386                  randconfig-016-20240904   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
m68k                          multi_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                           gcw0_defconfig   gcc-14.1.0
mips                           ip28_defconfig   gcc-14.1.0
mips                           jazz_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-12
openrisc                 simple_smp_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   clang-20
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-12
parisc64                            defconfig   gcc-14.1.0
powerpc                     akebono_defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      ep88xc_defconfig   gcc-14.1.0
powerpc                          g5_defconfig   gcc-14.1.0
powerpc                    ge_imp3a_defconfig   gcc-14.1.0
powerpc                 xes_mpc85xx_defconfig   gcc-14.1.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-12
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
s390                                defconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sh                          sdk7786_defconfig   gcc-14.1.0
sh                           se7724_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc                       sparc32_defconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
um                               allmodconfig   clang-20
um                                allnoconfig   clang-20
um                               allyesconfig   clang-20
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   clang-18
x86_64                                  kexec   gcc-12
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   gcc-12
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
