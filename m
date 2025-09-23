Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FB1B94AA0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Sep 2025 09:04:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D01A60B6A;
	Tue, 23 Sep 2025 07:04:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AxBXGnAIJAxx; Tue, 23 Sep 2025 07:04:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14D4060B6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758611045;
	bh=2iF4pVQPz6bUv0ehyDuYOhUEPIyz2tOHY6ZrxM7hmWs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xLqiXUhw9EBD8tIv5qAEXE87AdGBrLiCz5KKgJwhCwSx1se+tlWbkOWjgwX/mgla4
	 J9/tVftk5tfA90Tf0HkrKM9CO9RD1f2vQ6e2yThMlsd5d9+wjEVhkK2wriXADXTNid
	 Q+flKjpWGBn658439lwb61i/Juz1p3AgFOt8AJo4/EnjTHjj4sZT0MRWBS6WmLlmzj
	 iQO16yaBRxEpz02VZbFYYcRm1kEjlUDjZskMun2vpyVxFwc/I7dTiHCPjo1v4+JUfz
	 lB5VryWgRSAvMuvrGcmFKrVGD0Ehv1ExDxD5gDp6OwHPF7j4G5GCnQ3yhwdQXw513r
	 UXAG6VttxDdfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14D4060B6C;
	Tue, 23 Sep 2025 07:04:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 83F74200D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 07:04:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75CAA40335
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 07:04:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bz5D0t1Eoyt2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Sep 2025 07:04:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7600640363
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7600640363
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7600640363
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 07:04:01 +0000 (UTC)
X-CSE-ConnectionGUID: uzYWCvjJTa6cRUCguCoMOw==
X-CSE-MsgGUID: IFrVcA0JQuqDf90NeT0s/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60808587"
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="60808587"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 00:04:01 -0700
X-CSE-ConnectionGUID: xI9R73WJQha/ULi/xj8j8g==
X-CSE-MsgGUID: 3UUOvEIxS7aDYhiba/Zb3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="180699663"
Received: from lkp-server02.sh.intel.com (HELO 84c55410ccf6) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 23 Sep 2025 00:03:59 -0700
Received: from kbuild by 84c55410ccf6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v0x49-0002pz-0t
 for intel-wired-lan@lists.osuosl.org; Tue, 23 Sep 2025 07:03:57 +0000
Date: Tue, 23 Sep 2025 15:03:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509231513.11Ew4nlc-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758611042; x=1790147042;
 h=date:from:to:subject:message-id;
 bh=WOP3azJEphpGbrq8T5FnNdPj/UaGIagywqEumbMH1+c=;
 b=BpnI0NdGw+VMM1sGYrD3mNvnvSFrpdoBEeM8ekFkUCk6qfKofSxR5yFE
 ip8OqtzxwDQ3Y9dI2n/Z65A1PQbuyLhjOFhn+D+M8+l0W3ZDkBrw6abVg
 e2njaiecry5rjV8XTFUPFK52go6Ub9RQq7IpVMeiCpu7lBucpzCsQI2KI
 afYEQrSLq/imLP6dvNOtzdJwYL9U2V9Mo6fk49HyYlkh/gwaCqRxEtajx
 sXp+hZx0OTvUmUS83dEc0okBSplOShI1kiK531/34l+VuvL+xaY8i2umm
 xh7d8V6FOo1Ap1cHEQJ7Uar2CjoggkQ66g2fyoL/T3iPc0hxVEMiNQgBU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BpnI0NdG
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 1ab2bf0f8c45e30e1a564e9c5f7076e9dec68109
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
branch HEAD: 1ab2bf0f8c45e30e1a564e9c5f7076e9dec68109  ice: refactor to use helpers

elapsed time: 789m

configs tested: 106
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250923    gcc-12.5.0
arc                   randconfig-002-20250923    gcc-12.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                             pxa_defconfig    gcc-15.1.0
arm                   randconfig-001-20250923    gcc-12.5.0
arm                   randconfig-002-20250923    clang-17
arm                   randconfig-003-20250923    gcc-8.5.0
arm                   randconfig-004-20250923    clang-22
arm64                            alldefconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250923    gcc-8.5.0
arm64                 randconfig-002-20250923    clang-18
arm64                 randconfig-003-20250923    gcc-8.5.0
arm64                 randconfig-004-20250923    gcc-11.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250923    gcc-9.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250923    clang-22
hexagon               randconfig-002-20250923    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20250923    gcc-14
i386        buildonly-randconfig-002-20250923    clang-20
i386        buildonly-randconfig-003-20250923    clang-20
i386        buildonly-randconfig-004-20250923    gcc-14
i386        buildonly-randconfig-005-20250923    clang-20
i386        buildonly-randconfig-006-20250923    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        omega2p_defconfig    clang-22
nios2                         3c120_defconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                        icon_defconfig    gcc-15.1.0
powerpc                 mpc836x_rdk_defconfig    clang-22
powerpc                      pmac32_defconfig    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250923    gcc-12.5.0
riscv                 randconfig-002-20250923    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250923    gcc-8.5.0
s390                  randconfig-002-20250923    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250923    gcc-15.1.0
sh                    randconfig-002-20250923    gcc-10.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250923    gcc-8.5.0
sparc                 randconfig-002-20250923    gcc-12.5.0
sparc64               randconfig-001-20250923    clang-22
sparc64               randconfig-002-20250923    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250923    clang-22
um                    randconfig-002-20250923    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250923    gcc-14
x86_64      buildonly-randconfig-002-20250923    gcc-14
x86_64      buildonly-randconfig-003-20250923    gcc-14
x86_64      buildonly-randconfig-004-20250923    clang-20
x86_64      buildonly-randconfig-005-20250923    clang-20
x86_64      buildonly-randconfig-006-20250923    clang-20
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250923    gcc-8.5.0
xtensa                randconfig-002-20250923    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
