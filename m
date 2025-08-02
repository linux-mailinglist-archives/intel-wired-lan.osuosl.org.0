Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DC5B18DF7
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 12:37:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B05C460793;
	Sat,  2 Aug 2025 10:37:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ozBPfnPHOc70; Sat,  2 Aug 2025 10:36:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D446A60785
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754131019;
	bh=SBh4sUX66Z2mjnHNk2fPQwVQgwndI2NwxqO8Z9/xdA4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JPdZTMJmMOrBl4J9oLgl8co9a3GK+rf1GVjftFFKSKdM+SlgmYBqznNJDEU31PbGf
	 dRwl94cfkpP+ps25lmJdz0wBcsFCipzoB6YD/zvmkefG0KwsxY95S0JST+tzwmx+dZ
	 Jxv6jaGfoW94bmVZ/TKrxch5qvT3/bg+OCADmYSBSS7ScSLa2fEEYWh5lJIOwQqEuG
	 jfFHicJ4gn6mvuPNVEegvq8NLCV0YS8wJJfaWgD/5gv6drA7Z17dtDUeWPQknAYxLf
	 0d+OW88+SkiQsWF8nczGleSK71YOKmKkG1htrri7BXHV37od+RK1040RoFJkCMkj4L
	 0JHyzvFxP1hZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D446A60785;
	Sat,  2 Aug 2025 10:36:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 54379909
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 10:36:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47C3384071
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 10:36:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dHtL0RYHWt1l for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 10:36:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 439448406E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 439448406E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 439448406E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 10:36:56 +0000 (UTC)
X-CSE-ConnectionGUID: GflOl2+MQxOhzSyjkSD9ew==
X-CSE-MsgGUID: 1I9xbNfeTbuhd7rgFlz47A==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="60281806"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="60281806"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 03:36:56 -0700
X-CSE-ConnectionGUID: aYVSDktrSuGsCYpqnq1MOg==
X-CSE-MsgGUID: lkC2idMRQAuwFyZt7cPEkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163458355"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 02 Aug 2025 03:36:55 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ui9bg-0005JW-32
 for intel-wired-lan@lists.osuosl.org; Sat, 02 Aug 2025 10:36:52 +0000
Date: Sat, 02 Aug 2025 18:36:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508021859.cyqtZgZb-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754131017; x=1785667017;
 h=date:from:to:subject:message-id;
 bh=THIaVFZ/AwaQAEaOIvoE8248xk0zqVfpZvF38/ZdwCQ=;
 b=IxG860c5XQtxtG/No8hzK6ozhfjJc2rt5M52l9jLG+/TrcNnxuw+3ekC
 SNKbo4R6zTTIuILF3cLlIBbESFu0OPb07UjBNpI8LUt4gGrsxbHiJwIbE
 +3iyMxX24+Nm8Q60bSDag6iWuVIK+8KyztbpFtGoB5AESURX97hKQJeqY
 kI/EQVqqI2+Vcsw2N4CnusQz3ksyyweJEILss/5NLUznJAvyMVhPbI0Ti
 NlLT0JHfUsCeXTQx3sByM1Z+S25OM9cSVCSqsR3RgyDI4O4kca0sHJhEa
 5jOz6udgSnLP406Xh61ewssTbDdjzeRLPi5qZAlfZgYX14ZYBYdbvFDVF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IxG860c5
Subject: [Intel-wired-lan] [tnguy-net-queue:10GbE] BUILD SUCCESS
 0f1ebd70b525cf8ca4bc2629aa60131d374587c6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 10GbE
branch HEAD: 0f1ebd70b525cf8ca4bc2629aa60131d374587c6  ixgbe: prevent from unwanted interface name changes

elapsed time: 1018m

configs tested: 127
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20250802    gcc-11.5.0
arc                   randconfig-002-20250802    gcc-14.3.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                       netwinder_defconfig    gcc-15.1.0
arm                   randconfig-001-20250802    gcc-10.5.0
arm                   randconfig-002-20250802    clang-22
arm                   randconfig-003-20250802    clang-18
arm                   randconfig-004-20250802    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250802    gcc-12.5.0
arm64                 randconfig-002-20250802    gcc-8.5.0
arm64                 randconfig-003-20250802    clang-22
arm64                 randconfig-004-20250802    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250802    gcc-15.1.0
csky                  randconfig-002-20250802    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250802    clang-22
hexagon               randconfig-002-20250802    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250802    gcc-12
i386        buildonly-randconfig-002-20250802    gcc-12
i386        buildonly-randconfig-003-20250802    clang-20
i386        buildonly-randconfig-004-20250802    gcc-12
i386        buildonly-randconfig-005-20250802    clang-20
i386        buildonly-randconfig-006-20250802    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250802    clang-18
loongarch             randconfig-002-20250802    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                         rt305x_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250802    gcc-9.5.0
nios2                 randconfig-002-20250802    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250802    gcc-8.5.0
parisc                randconfig-002-20250802    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          g5_defconfig    gcc-15.1.0
powerpc                    gamecube_defconfig    clang-22
powerpc                  iss476-smp_defconfig    gcc-15.1.0
powerpc                 mpc836x_rdk_defconfig    clang-22
powerpc               randconfig-001-20250802    gcc-8.5.0
powerpc               randconfig-002-20250802    clang-20
powerpc               randconfig-003-20250802    gcc-10.5.0
powerpc                        warp_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250802    clang-16
powerpc64             randconfig-002-20250802    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20250802    gcc-10.5.0
riscv                 randconfig-002-20250802    gcc-9.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20250802    clang-22
s390                  randconfig-002-20250802    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250802    gcc-15.1.0
sh                    randconfig-002-20250802    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250802    gcc-8.5.0
sparc                 randconfig-002-20250802    gcc-8.5.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20250802    gcc-8.5.0
sparc64               randconfig-002-20250802    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250802    clang-22
um                    randconfig-002-20250802    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250802    gcc-12
x86_64      buildonly-randconfig-002-20250802    clang-20
x86_64      buildonly-randconfig-003-20250802    clang-20
x86_64      buildonly-randconfig-004-20250802    clang-20
x86_64      buildonly-randconfig-005-20250802    clang-20
x86_64      buildonly-randconfig-006-20250802    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250802    gcc-13.4.0
xtensa                randconfig-002-20250802    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
