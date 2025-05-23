Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0415AC26D3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 17:51:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60046614A9;
	Fri, 23 May 2025 15:51:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J3QYwTSqS0qt; Fri, 23 May 2025 15:51:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7111260EAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748015470;
	bh=NgNpgc+R7spBsBs7ucf64JHzPtH5EFQbiT6fJdlpwYE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hbVn963WXGyRxZGMTDKFMAEyQSAI/U//dBd00rYsaQjiYxKpSiedmkwGKlqQDMwkU
	 cLGXCQLsIHLpK/96Eoh1MxbmsDTCIJBAM0VVSZfnL8fMtjtfBXrCHruiQHDN6jqKMS
	 0xogNtnP9GmwyoEfBKVJyMB9YwCZLIZ6437lZ8lU1uiCu1aMZexTB1pT0Y6cEzgNX+
	 zn1FVlL0HCYuYbr7JoXU8EADebOCLDQN+Sv4Fz/chVbVAeh4sw9VIAj5njZFRkYD8D
	 UrqUK5f7c24XAaCS0qqSEDEMmEuNg5cpfRoZFEeHB5FRtfk6YVGAGmatylzjUMhK9Y
	 kOzulmgLQuOaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7111260EAF;
	Fri, 23 May 2025 15:51:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 38C2368
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 15:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 359E060BD9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 15:51:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z6wHDCCC3YYB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 15:51:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5F22C60AD0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F22C60AD0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F22C60AD0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 15:51:08 +0000 (UTC)
X-CSE-ConnectionGUID: a8vOplV3TPqNeDe/WQBwuQ==
X-CSE-MsgGUID: FEk4BZoAQLmyiyGKUl/iLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="49969638"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="49969638"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 08:51:07 -0700
X-CSE-ConnectionGUID: UkwAF3xxQXOuch33ZevpCA==
X-CSE-MsgGUID: MRUTvESUQ0GMZCthUvH86Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="141691215"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 23 May 2025 08:51:07 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uIUfo-000QWi-2t
 for intel-wired-lan@lists.osuosl.org; Fri, 23 May 2025 15:51:04 +0000
Date: Fri, 23 May 2025 23:51:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505232351.T40iSnK1-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748015468; x=1779551468;
 h=date:from:to:subject:message-id;
 bh=TmiM2SyL8L2dGCPTVhrB+XcYlKrM+ykGmlT5J8ENIiQ=;
 b=arm+Tp9Pl8ia0ApjE6WgX02RasK57HDwG7cDlUjY/Fsz0urDVwdIBhyw
 MyrV2Q0vOpqgc2IN6XYqv2eHwoS1SKhgMRWz/FqmoIaOAweNhFpymunmL
 CzLFXE82f5+qhJM076UN0MIPb1BMeHQd5fRSymOxtNPDBFDbBM/zfatc8
 YW9IuOrPf6HnMoI+Ich8A3YzaNZGzZhE2Rt+OB+OwP9Dk3v/AfNO11/Ib
 Vn0Z1Q2sWMK0f0B5lV5cxXyBbz+rNFj3Ka5VdmTcFsa7OrGVWd6oJFdSn
 gfBPv13ojvBygam1sUaQAKHLi3TX65K5k7doPn0dXDyWrQ1v4WZsiL3Rw
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=arm+Tp9P
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 fb410e4f084c2a89970476ea60f88a173a310763
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
branch HEAD: fb410e4f084c2a89970476ea60f88a173a310763  ixd: add devlink support

elapsed time: 1452m

configs tested: 98
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250523    gcc-15.1.0
arc                   randconfig-002-20250523    gcc-10.5.0
arm                               allnoconfig    clang-21
arm                            dove_defconfig    gcc-14.2.0
arm                   randconfig-001-20250523    clang-16
arm                   randconfig-002-20250523    gcc-8.5.0
arm                   randconfig-003-20250523    gcc-7.5.0
arm                   randconfig-004-20250523    clang-21
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250523    gcc-8.5.0
arm64                 randconfig-002-20250523    clang-16
arm64                 randconfig-003-20250523    clang-21
arm64                 randconfig-004-20250523    gcc-8.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250523    gcc-10.5.0
csky                  randconfig-002-20250523    gcc-14.2.0
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250523    clang-21
hexagon               randconfig-002-20250523    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250523    clang-20
i386        buildonly-randconfig-002-20250523    clang-20
i386        buildonly-randconfig-003-20250523    clang-20
i386        buildonly-randconfig-004-20250523    clang-20
i386        buildonly-randconfig-005-20250523    clang-20
i386        buildonly-randconfig-006-20250523    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250523    gcc-15.1.0
loongarch             randconfig-002-20250523    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250523    gcc-10.5.0
nios2                 randconfig-002-20250523    gcc-10.5.0
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250523    gcc-9.3.0
parisc                randconfig-002-20250523    gcc-7.5.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                      mgcoge_defconfig    clang-21
powerpc               randconfig-001-20250523    clang-21
powerpc               randconfig-002-20250523    clang-21
powerpc               randconfig-003-20250523    clang-20
powerpc64             randconfig-001-20250523    clang-21
powerpc64             randconfig-002-20250523    clang-19
powerpc64             randconfig-003-20250523    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250523    gcc-8.5.0
riscv                 randconfig-002-20250523    clang-17
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250523    gcc-6.5.0
s390                  randconfig-002-20250523    clang-21
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250523    gcc-12.4.0
sh                    randconfig-002-20250523    gcc-6.5.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250523    gcc-10.3.0
sparc                 randconfig-002-20250523    gcc-10.3.0
sparc64               randconfig-001-20250523    gcc-9.3.0
sparc64               randconfig-002-20250523    gcc-7.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250523    gcc-12
um                    randconfig-002-20250523    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250523    gcc-12
x86_64      buildonly-randconfig-002-20250523    clang-20
x86_64      buildonly-randconfig-003-20250523    clang-20
x86_64      buildonly-randconfig-004-20250523    clang-20
x86_64      buildonly-randconfig-005-20250523    clang-20
x86_64      buildonly-randconfig-006-20250523    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250523    gcc-9.3.0
xtensa                randconfig-002-20250523    gcc-11.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
