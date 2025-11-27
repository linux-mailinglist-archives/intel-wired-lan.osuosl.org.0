Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3466EC8C9F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 02:58:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E07838419D;
	Thu, 27 Nov 2025 01:58:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kN62NTWlF6BM; Thu, 27 Nov 2025 01:58:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27B4D8419E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764208718;
	bh=wkP2InfKf6DSIyNCULuefKonUD6Y7zKWfZPUSN2owSc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zMdfaB8/xOmfvPBx71CxtaPkZpzdvKO8E1QKuvhyivFUwc0P0AUQJwm9K3lQ6HW4R
	 xZvAL0DNBcJ9/5Lf32UDckPNhjQiXqWU28jNTR3AMPt56Ss0olpLf/PoEf9Y4Ikwip
	 lYVOg2niTW4CefIladyQk81pwQIHMKYLJcu/aBCPm9w9rd28Yz+cZmDzU1hmg2jWWJ
	 su0GYje0DGXz1FCQRuyEsmmyhRvWvOgVcSCWQgOrTHZ86ll6umCLleRZsOHSgGpBQY
	 svNoxZ6gtG9QJb8AGKyOQziVd/vGrPjhhGDxqNQusBRuNpBi5XcHZlrTgrO0G5umZg
	 V9lUKLCEKYMJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27B4D8419E;
	Thu, 27 Nov 2025 01:58:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 54F81708
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 01:58:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DF794102F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 01:58:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TAW6aXD7wBLH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 01:58:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4556F40EDE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4556F40EDE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4556F40EDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 01:58:35 +0000 (UTC)
X-CSE-ConnectionGUID: SQPXt9qOS9+mIRJx2phKNg==
X-CSE-MsgGUID: 88OddzMzRV+M26NmAVC3cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="76580363"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="76580363"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 17:58:36 -0800
X-CSE-ConnectionGUID: +YyT9mghR2OxkImP1GsSaA==
X-CSE-MsgGUID: VSVnrN1JRIOhFLhaFVLP8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="224056865"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 26 Nov 2025 17:58:34 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vORHE-000000003YS-1eT8
 for intel-wired-lan@lists.osuosl.org; Thu, 27 Nov 2025 01:58:32 +0000
Date: Thu, 27 Nov 2025 09:58:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511270955.SuodSXp5-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764208717; x=1795744717;
 h=date:from:to:subject:message-id;
 bh=d59rxHr9ietxicYzOzEkeWEoWFqsbGwk79Ih93x7fnc=;
 b=UDPijvbslzDTDm4ZHjBf0hEBl3s3fUGxzAJwGugsyeN+fttceqoAY/hi
 28t+1Mgbkq7XSOJ3X7FI5qgEZmEpMDKcl9a5oa3oYShkw2sJ8KbAlhP7z
 SHbOdjXuAm2SNVZHnfA/kMXkLxy6b8W0GLLKVCSneX6hCvT5TyGPfVQOG
 TQGno6a56w2JEp08yjLvCoxBe/xyMFLgQetPauTA7QfBgtAURFD1R0BcR
 y8HGm91WXShzEeysbJxAfy+l0Dx7ekHWWFtrtqzgEGDx7551jGJtsImWO
 Nf6VwTptFYSCC9wmcpNLsdgNSlRzyJkPekH9Mufo/8Io05OJDlQub1IT5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UDPijvbs
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d3b972a04b5bf630b57b48a652e91f9860f18004
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
branch HEAD: d3b972a04b5bf630b57b48a652e91f9860f18004  igc: Restore default Qbv schedule when changing channels

elapsed time: 1582m

configs tested: 105
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20251126    gcc-13.4.0
arc                   randconfig-002-20251126    gcc-11.5.0
arm                               allnoconfig    clang-22
arm                         axm55xx_defconfig    clang-22
arm                          collie_defconfig    gcc-15.1.0
arm                       imx_v4_v5_defconfig    clang-22
arm                          ixp4xx_defconfig    gcc-15.1.0
arm                   randconfig-001-20251126    clang-22
arm                   randconfig-002-20251126    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251127    gcc-8.5.0
arm64                 randconfig-002-20251127    clang-22
arm64                 randconfig-003-20251127    gcc-9.5.0
arm64                 randconfig-004-20251127    gcc-14.3.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251127    gcc-15.1.0
csky                  randconfig-002-20251127    gcc-15.1.0
hexagon                           allnoconfig    clang-22
i386                              allnoconfig    gcc-14
i386                  randconfig-001-20251127    gcc-14
i386                  randconfig-002-20251127    gcc-14
i386                  randconfig-003-20251127    clang-20
i386                  randconfig-004-20251127    gcc-12
i386                  randconfig-005-20251127    clang-20
i386                  randconfig-006-20251127    clang-20
i386                  randconfig-007-20251127    clang-20
i386                  randconfig-011-20251127    gcc-13
i386                  randconfig-012-20251127    gcc-14
i386                  randconfig-013-20251127    clang-20
i386                  randconfig-014-20251127    clang-20
i386                  randconfig-015-20251127    gcc-14
i386                  randconfig-016-20251127    clang-20
i386                  randconfig-017-20251127    gcc-14
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
m68k                              allnoconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                            q40_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251126    gcc-8.5.0
parisc                randconfig-002-20251126    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20251126    gcc-10.5.0
powerpc               randconfig-002-20251126    gcc-8.5.0
powerpc                    socrates_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251126    clang-19
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251126    gcc-10.5.0
riscv                 randconfig-002-20251126    clang-22
s390                              allnoconfig    clang-22
s390                                defconfig    clang-22
s390                  randconfig-001-20251126    gcc-8.5.0
s390                  randconfig-002-20251126    gcc-8.5.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                         ecovec24_defconfig    gcc-15.1.0
sh                    randconfig-001-20251126    gcc-14.3.0
sh                    randconfig-002-20251126    gcc-11.5.0
sh                        sh7757lcr_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251126    gcc-8.5.0
sparc                 randconfig-002-20251126    gcc-14.3.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251126    gcc-8.5.0
sparc64               randconfig-002-20251126    clang-22
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251126    clang-19
um                    randconfig-002-20251126    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251126    clang-20
x86_64      buildonly-randconfig-002-20251126    gcc-14
x86_64      buildonly-randconfig-003-20251126    clang-20
x86_64      buildonly-randconfig-004-20251126    clang-20
x86_64      buildonly-randconfig-005-20251126    gcc-14
x86_64      buildonly-randconfig-006-20251126    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-003-20251127    gcc-14
x86_64                randconfig-011-20251127    clang-20
x86_64                randconfig-012-20251127    gcc-14
x86_64                randconfig-013-20251127    gcc-14
x86_64                randconfig-014-20251127    gcc-14
x86_64                randconfig-015-20251127    gcc-14
x86_64                randconfig-016-20251127    gcc-14
x86_64                randconfig-071-20251127    gcc-12
x86_64                randconfig-074-20251127    gcc-14
x86_64                randconfig-075-20251127    gcc-14
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251126    gcc-14.3.0
xtensa                randconfig-002-20251126    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
