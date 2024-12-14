Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFBD9F2029
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Dec 2024 18:42:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 422CD608C8;
	Sat, 14 Dec 2024 17:42:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i_6Q8qaXEH5z; Sat, 14 Dec 2024 17:42:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41981608B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734198174;
	bh=OJh5Me07FiVMXEgenMZr1wb28RRq8wbFbdYi4yGjAZU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IV4orp0xdeMZSovamKs1j09vyLsdD2BYUoUs8NeqIl6MOMXen2/9FDlTPBN9XAlNo
	 cWFTmr4t8j1U7dLGJrWb8KcDEr3/cF3rYqr5pXLO+9dExNwqb8m7MY2VlL8gw0ViTY
	 1+ffJ1DlKBivuiKZPf8nS06aGG3/9sSep3foYG+27fprbOCvAObJzbevccVvR7jBB/
	 Rr4u2kVBLk4r4bIwdpzPHflY7oDM++8GhXuOAWOJ+7W0MoX9njyJnphC5/BnEHH34W
	 ID5zLFO6xrRyRWlRbCXEnxzeonM+2f2kr3Hwrdiodu0DH/km0R640pbfnBq7xnMgmf
	 gjDKZhj74IcGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41981608B7;
	Sat, 14 Dec 2024 17:42:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BC11FD0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 17:42:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B5CC40481
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 17:42:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zenoDlmHx09n for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Dec 2024 17:42:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 54BC640470
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54BC640470
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54BC640470
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 17:42:51 +0000 (UTC)
X-CSE-ConnectionGUID: 0eAsOTiYSqmSRNdV3OsHBA==
X-CSE-MsgGUID: +h2M3V91SCyeirwRzMtyzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="46038637"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="46038637"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2024 09:42:51 -0800
X-CSE-ConnectionGUID: R/+qgak6TPSCVJAbSyw1Fw==
X-CSE-MsgGUID: cHOq9doBSYqGAG8YerfiEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,234,1728975600"; d="scan'208";a="96725006"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 14 Dec 2024 09:42:51 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tMWAB-000D7F-39
 for intel-wired-lan@lists.osuosl.org; Sat, 14 Dec 2024 17:42:47 +0000
Date: Sun, 15 Dec 2024 01:42:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412150115.Pgs8RC9N-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734198171; x=1765734171;
 h=date:from:to:subject:message-id;
 bh=sUSLlt5DEibfivXIwoVGORRtC/Dv/XATUJlUKVS1OGU=;
 b=OJNvRhfMJoHBk0NVjYTG79/9K0CtO9TADWY8MH+e+AN1wK1/tJ8KeYTV
 6oVxOxzAAQ838KAyIuk7WCDxsenUK6r7CWSYwtZ4xNLTnUxP+aanPVOQW
 MaZ5Bsos1rCNOqYhUJ6dqbb64cjBxAOok1yb1EhmMSw1NLr2W/JhVl175
 S3/EZetEaUTsGHdBdbL73ifnqGC1gYwsjldK+lkP5awu59G7If8GRJw2P
 OS67rCNarYEjITL2aWrLElwJL9VVOZYuxCYHDcezdlAL6gUSGlg2RBvSM
 NQDehkWVTLLHvasne5A+hCco7EDWgICsdgsMiFcPzTLhdilL092kjRTfZ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OJNvRhfM
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 a0e86f02aeddd87b8297b8088e354b5c8117282b
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
branch HEAD: a0e86f02aeddd87b8297b8088e354b5c8117282b  ice: do not configure destination override for switchdev

elapsed time: 1446m

configs tested: 56
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc                  randconfig-001-20241214    gcc-13.2.0
arc                  randconfig-002-20241214    gcc-13.2.0
arm                  randconfig-001-20241214    gcc-14.2.0
arm                  randconfig-002-20241214    clang-15
arm                  randconfig-003-20241214    gcc-14.2.0
arm                  randconfig-004-20241214    gcc-14.2.0
arm64                randconfig-001-20241214    clang-15
arm64                randconfig-002-20241214    clang-20
arm64                randconfig-003-20241214    clang-15
arm64                randconfig-004-20241214    gcc-14.2.0
csky                 randconfig-001-20241214    gcc-14.2.0
csky                 randconfig-002-20241214    gcc-14.2.0
hexagon              randconfig-001-20241214    clang-20
hexagon              randconfig-002-20241214    clang-14
i386       buildonly-randconfig-001-20241214    gcc-12
i386       buildonly-randconfig-002-20241214    gcc-12
i386       buildonly-randconfig-003-20241214    clang-19
i386       buildonly-randconfig-004-20241214    clang-19
i386       buildonly-randconfig-005-20241214    gcc-11
i386       buildonly-randconfig-006-20241214    gcc-12
loongarch            randconfig-001-20241214    gcc-14.2.0
loongarch            randconfig-002-20241214    gcc-14.2.0
nios2                randconfig-001-20241214    gcc-14.2.0
nios2                randconfig-002-20241214    gcc-14.2.0
parisc               randconfig-001-20241214    gcc-14.2.0
parisc               randconfig-002-20241214    gcc-14.2.0
powerpc              randconfig-001-20241214    clang-20
powerpc              randconfig-002-20241214    clang-15
powerpc              randconfig-003-20241214    clang-20
powerpc64            randconfig-001-20241214    gcc-14.2.0
powerpc64            randconfig-003-20241214    clang-20
riscv                randconfig-001-20241214    clang-20
riscv                randconfig-002-20241214    clang-20
s390                            allmodconfig    clang-19
s390                            allyesconfig    gcc-14.2.0
s390                 randconfig-001-20241214    gcc-14.2.0
s390                 randconfig-002-20241214    gcc-14.2.0
sh                              allmodconfig    gcc-14.2.0
sh                              allyesconfig    gcc-14.2.0
sh                   randconfig-001-20241214    gcc-14.2.0
sh                   randconfig-002-20241214    gcc-14.2.0
sparc                           allmodconfig    gcc-14.2.0
sparc                randconfig-001-20241214    gcc-14.2.0
sparc                randconfig-002-20241214    gcc-14.2.0
sparc64              randconfig-001-20241214    gcc-14.2.0
sparc64              randconfig-002-20241214    gcc-14.2.0
um                   randconfig-001-20241214    clang-20
um                   randconfig-002-20241214    clang-17
x86_64     buildonly-randconfig-001-20241214    gcc-11
x86_64     buildonly-randconfig-002-20241214    clang-19
x86_64     buildonly-randconfig-003-20241214    gcc-12
x86_64     buildonly-randconfig-004-20241214    gcc-12
x86_64     buildonly-randconfig-005-20241214    gcc-12
x86_64     buildonly-randconfig-006-20241214    clang-19
xtensa               randconfig-001-20241214    gcc-14.2.0
xtensa               randconfig-002-20241214    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
