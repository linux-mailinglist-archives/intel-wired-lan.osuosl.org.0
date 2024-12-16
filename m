Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E50A09F3E29
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 00:21:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 714186109A;
	Mon, 16 Dec 2024 23:21:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oUkZnNIY-Ew1; Mon, 16 Dec 2024 23:21:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D35F60B00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734391275;
	bh=Stta+VSdpv7NQ622tsg95Hhq1d9qwQIxB384nABn6UY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DJrUP+YQMHBbBOb+ywOu4w3Z7S/NoexRDmH2jSC/+mxCn8Q1yR5cQl5OEi667mObE
	 mcAKFzDjwhvEo3h+gds/1vjH5jsE4bTjYqGtxeRgHxsvmn/Zex4vmIVxWglUUgIYgj
	 VjsJD2wroMCsoKrpSRm1BJZyzzIJSPwphNBJ+77DSlAi88CIPlKEe5BAqjVgkaSAB0
	 maFtDumXtO7kpsT2OnkAfnTh7viTK1oj8OxE/Z7spUitRKJLsfbu/TJd4RLgRnrnx0
	 K14bLS1uOgO4n8+9KEVuyyzkjYReLpcc9GtH6XmDZ5/KF/iqPwf8AgMKQkEHzPkJgA
	 wv11X/rqEqAfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D35F60B00;
	Mon, 16 Dec 2024 23:21:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 84E97C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 23:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51ACF406C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 23:21:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wh8ZFnCTS1qb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 23:21:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1855C40695
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1855C40695
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1855C40695
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 23:21:11 +0000 (UTC)
X-CSE-ConnectionGUID: aB+9FTWXSK2+eR+XxYmimw==
X-CSE-MsgGUID: prv4plyjSIqqmsthV0I9nw==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34673592"
X-IronPort-AV: E=Sophos;i="6.12,240,1728975600"; d="scan'208";a="34673592"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 15:21:11 -0800
X-CSE-ConnectionGUID: LsOTbXvtTvS5BsC3sWukpQ==
X-CSE-MsgGUID: wT1HRaLIT3eq0idl5+DfIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120616951"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 16 Dec 2024 15:21:10 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tNKOh-000EXw-2l
 for intel-wired-lan@lists.osuosl.org; Mon, 16 Dec 2024 23:21:07 +0000
Date: Tue, 17 Dec 2024 07:20:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412170703.1PU7Vewy-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734391272; x=1765927272;
 h=date:from:to:subject:message-id;
 bh=SexcoyDYIl1rJ6uvV9fEb8c1cLojASnOyaGeJvj04Ng=;
 b=T3s7HbdsdCCgoZjtj1RjPbDlSB0hRb5FV3RBpR4DuptSVNT5OH+CrvEN
 QSFgE8WvbnzyIVlJOXC5VSINaiPEXXdFNpRpx6pPUNXyEQDVasVcKL44Y
 kg7xP1FxqV6mKom9qfQt3RUA+eVVUrBD9zXSCkDwOWjj7TevsrKahHUwM
 OsNbWqPlQXtISaWh2YSpb4WCxRGAGMym3Y2izXkMqTVdgqoQY9vljAbo2
 X6oN9F/4RJiCcSoFQ3il8e/tAvoWGIWH/udC6EYu4MvHLdlMODCGth+W6
 eZy3lYwgktdcrBnetxv0vdRI50mJaAy96UsBkzr6H26mOOms4G6aoF5ob
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T3s7Hbds
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 922b4b955a03d19fea98938f33ef0e62d01f5159
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 922b4b955a03d19fea98938f33ef0e62d01f5159  net: renesas: rswitch: rework ts tags management

elapsed time: 1447m

configs tested: 52
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc                  randconfig-001-20241216    gcc-13.2.0
arc                  randconfig-002-20241216    gcc-13.2.0
arm                  randconfig-001-20241216    clang-15
arm                  randconfig-002-20241216    gcc-14.2.0
arm                  randconfig-003-20241216    clang-20
arm                  randconfig-004-20241216    clang-17
arm64                randconfig-001-20241216    gcc-14.2.0
arm64                randconfig-002-20241216    clang-20
arm64                randconfig-003-20241216    gcc-14.2.0
arm64                randconfig-004-20241216    clang-15
csky                 randconfig-001-20241216    gcc-14.2.0
csky                 randconfig-002-20241216    gcc-14.2.0
hexagon              randconfig-001-20241216    clang-20
hexagon              randconfig-002-20241216    clang-20
i386       buildonly-randconfig-001-20241216    clang-19
i386       buildonly-randconfig-002-20241216    clang-19
i386       buildonly-randconfig-003-20241216    clang-19
i386       buildonly-randconfig-004-20241216    clang-19
i386       buildonly-randconfig-005-20241216    clang-19
i386       buildonly-randconfig-006-20241216    clang-19
loongarch            randconfig-001-20241216    gcc-14.2.0
loongarch            randconfig-002-20241216    gcc-14.2.0
nios2                randconfig-001-20241216    gcc-14.2.0
nios2                randconfig-002-20241216    gcc-14.2.0
parisc               randconfig-001-20241216    gcc-14.2.0
parisc               randconfig-002-20241216    gcc-14.2.0
powerpc              randconfig-001-20241216    clang-20
powerpc              randconfig-002-20241216    clang-20
powerpc              randconfig-003-20241216    gcc-14.2.0
powerpc64            randconfig-001-20241216    clang-20
powerpc64            randconfig-002-20241216    clang-15
powerpc64            randconfig-003-20241216    gcc-14.2.0
riscv                randconfig-001-20241216    clang-20
riscv                randconfig-002-20241216    clang-15
s390                 randconfig-001-20241216    gcc-14.2.0
s390                 randconfig-002-20241216    gcc-14.2.0
sh                   randconfig-001-20241216    gcc-14.2.0
sh                   randconfig-002-20241216    gcc-14.2.0
sparc                randconfig-001-20241216    gcc-14.2.0
sparc                randconfig-002-20241216    gcc-14.2.0
sparc64              randconfig-001-20241216    gcc-14.2.0
sparc64              randconfig-002-20241216    gcc-14.2.0
um                   randconfig-001-20241216    gcc-12
um                   randconfig-002-20241216    gcc-12
x86_64     buildonly-randconfig-001-20241216    gcc-12
x86_64     buildonly-randconfig-002-20241216    gcc-12
x86_64     buildonly-randconfig-003-20241216    clang-19
x86_64     buildonly-randconfig-004-20241216    clang-19
x86_64     buildonly-randconfig-005-20241216    clang-19
x86_64     buildonly-randconfig-006-20241216    clang-19
xtensa               randconfig-001-20241216    gcc-14.2.0
xtensa               randconfig-002-20241216    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
