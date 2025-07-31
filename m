Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6244FB17095
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 13:50:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D342484274;
	Thu, 31 Jul 2025 11:50:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2JRups4OFtJX; Thu, 31 Jul 2025 11:50:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 978E184227
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753962646;
	bh=15W7D8zAS1cgTHPDiHFGDCKK1WdmECxugH9AJnOtswk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oczzz/p2dLYRQTsz+fBZPAUv478a34j34asgNGtwNOVswdmdkx+ENxri15v/4X00C
	 4bYVVpNwxymntxwMdrDfh4rtdwgviFpd6L24PlrLWBolYA3uVyV58LLcAz4BKYUb7H
	 uPkHKvAP28X+xZcTzXqwH3vmJlh8bJ5Jno5RZZenvUDeAx9AlDE2hLrZ6ddlcuuLoY
	 aXGaoqhzvH4c47DXWPK2VZwwxp6rWk8foZDSJQkwvPCgaXar79sJiK1xsjnnP37iGu
	 S86j9LVO8ceKLcgs2i5NjrmkCcD85Gk0P3VRYKTYY0Z+RzQDEWZswvrM/ppHoWgkeV
	 gs9GKtcEJm0BQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 978E184227;
	Thu, 31 Jul 2025 11:50:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4792D160
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:50:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31B6461B05
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:50:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gYcpR8loUM6V for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 11:50:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 589E5617A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 589E5617A7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 589E5617A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:50:43 +0000 (UTC)
X-CSE-ConnectionGUID: 7mNnmrg7TsaseyizcddgDA==
X-CSE-MsgGUID: vNMh65D2Q0SVJXaJgT/eMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="55981705"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="55981705"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 04:50:43 -0700
X-CSE-ConnectionGUID: 2LR/O2ZMS5udEv0+mwADVA==
X-CSE-MsgGUID: dgUQLWO2QgG+Hzm65xrb/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="163263549"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 31 Jul 2025 04:50:42 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uhRnz-0003jm-2Q
 for intel-wired-lan@lists.osuosl.org; Thu, 31 Jul 2025 11:50:39 +0000
Date: Thu, 31 Jul 2025 19:49:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507311945.wTuGkcpm-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753962644; x=1785498644;
 h=date:from:to:subject:message-id;
 bh=SU7Q8rzJAo06fbE+pG8hLbRMt6/B8gXQOGpzqERv5d0=;
 b=gevXbJ3mFn3HILuphQ0ZMTyVODMJ2gz34D2wAhKeTXlA+iz7ThUTyr4b
 JZT85w8xvZ3mudjVpWjW6nLC6SCuk3znayxb6m31RWQcJkoLeWzrM4e1H
 aPuVKLPcKtMk7pkSd0onkhtuo4DrCjIHwZPUfioEhoScsbg2zLYZyodwt
 F49nQyAO5G6mFaHvrghQY2YjMa5cAMsY/B12Rf+y4k2A+T043XJLkeIe5
 3x0ongDN3CnuvioCesvQV5wk/izUAQr7vjv4opf86xGcASBiY/xGguSG2
 DZr2VZuWFtqsOEcNRBcms/oVp7t+3ogr8Wr0oPxe0DZm3iQfVbngQSbCT
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gevXbJ3m
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 bd6c1d82a5485f0370dfb300d4170c452b9bf761
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
branch HEAD: bd6c1d82a5485f0370dfb300d4170c452b9bf761  igc: fix disabling L1.2 PCI-E link substate on I226 on init

elapsed time: 729m

configs tested: 112
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250731    gcc-13.4.0
arc                   randconfig-002-20250731    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250731    gcc-14.3.0
arm                   randconfig-002-20250731    gcc-8.5.0
arm                   randconfig-003-20250731    gcc-8.5.0
arm                   randconfig-004-20250731    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250731    gcc-8.5.0
arm64                 randconfig-002-20250731    gcc-13.4.0
arm64                 randconfig-003-20250731    gcc-10.5.0
arm64                 randconfig-004-20250731    gcc-10.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250731    gcc-12.5.0
csky                  randconfig-002-20250731    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250731    clang-16
hexagon               randconfig-002-20250731    clang-17
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250731    gcc-12
i386        buildonly-randconfig-002-20250731    gcc-12
i386        buildonly-randconfig-003-20250731    clang-20
i386        buildonly-randconfig-004-20250731    gcc-12
i386        buildonly-randconfig-005-20250731    gcc-12
i386        buildonly-randconfig-006-20250731    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250731    gcc-13.4.0
loongarch             randconfig-002-20250731    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250731    gcc-11.5.0
nios2                 randconfig-002-20250731    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250731    gcc-8.5.0
parisc                randconfig-002-20250731    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250731    gcc-13.4.0
powerpc               randconfig-002-20250731    gcc-13.4.0
powerpc               randconfig-003-20250731    gcc-15.1.0
powerpc64             randconfig-001-20250731    clang-22
powerpc64             randconfig-002-20250731    gcc-12.5.0
powerpc64             randconfig-003-20250731    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250731    gcc-13.4.0
riscv                 randconfig-002-20250731    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250731    clang-22
s390                  randconfig-002-20250731    gcc-10.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250731    gcc-10.5.0
sh                    randconfig-002-20250731    gcc-9.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250731    gcc-8.5.0
sparc                 randconfig-002-20250731    gcc-11.5.0
sparc64               randconfig-001-20250731    gcc-8.5.0
sparc64               randconfig-002-20250731    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250731    clang-22
um                    randconfig-002-20250731    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250731    gcc-12
x86_64      buildonly-randconfig-002-20250731    clang-20
x86_64      buildonly-randconfig-003-20250731    gcc-12
x86_64      buildonly-randconfig-004-20250731    gcc-12
x86_64      buildonly-randconfig-005-20250731    gcc-12
x86_64      buildonly-randconfig-006-20250731    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250731    gcc-14.3.0
xtensa                randconfig-002-20250731    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
