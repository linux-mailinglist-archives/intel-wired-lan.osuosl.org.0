Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 687919F2031
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Dec 2024 18:55:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F05EA608B4;
	Sat, 14 Dec 2024 17:55:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ckep1V6Dbn5W; Sat, 14 Dec 2024 17:55:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 121AE6069A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734198924;
	bh=IqBw3cwg90RpcIQUENpjTaEkltSEinhor8KDcDWx+sI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=y2UsrcVuVj2d+fMFZNgvjNn/HyyoTyXTUBQ9AAXOfvjgqe+EiF4G9YutTSoZa7yej
	 2dHwW5s3rfsSdi8MF/kPF7+mPxzgVHACtfsd16rDh7Mizu4qRVFSXSHDXKcbq/BPlN
	 83z1qiZQY+47YuZR1X7I/mMIGShMZeY2XNfbQ1JjIjtE5VJhzNJ0ebscK5S2FjIruK
	 AdLrfi58Dsp8gxpxRvTugvsmJy8i8++TpTL1rxdgjS8L0Un/+g6R5xe0trF/Rxjsbx
	 Ap5N6OnqckuDRrRHeB7PHbYGsCUeU2HZGoqtl0DdYyZNVWscUQO+2MBFY3LT9EOtxP
	 xsPMlhaUI3Bsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 121AE6069A;
	Sat, 14 Dec 2024 17:55:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 13936CE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 17:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0188E40042
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 17:55:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ttR3h5Zmnok1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Dec 2024 17:55:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B65BD40287
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B65BD40287
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B65BD40287
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 17:55:21 +0000 (UTC)
X-CSE-ConnectionGUID: MtL4TcWlSpG5MpHMMgRkOg==
X-CSE-MsgGUID: /AOMAgU+SYuj5CKgZ7HIlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11286"; a="34777427"
X-IronPort-AV: E=Sophos;i="6.12,234,1728975600"; d="scan'208";a="34777427"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2024 09:55:21 -0800
X-CSE-ConnectionGUID: +TuEQjrnRmKXwfmFvLbwKA==
X-CSE-MsgGUID: pRdGYQmLTUClzTCDDJMLYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101404473"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 14 Dec 2024 09:55:20 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tMWMH-000D7f-2o
 for intel-wired-lan@lists.osuosl.org; Sat, 14 Dec 2024 17:55:17 +0000
Date: Sun, 15 Dec 2024 01:54:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412150153.QMvG5z1J-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734198922; x=1765734922;
 h=date:from:to:subject:message-id;
 bh=ZneDyjJhRwTwsQFKeXJ1UlpQOHec54xE/lIUGPqAQQY=;
 b=jLr6EBeNPuoIMbdKTSRtaO1CPCYsYjlGjYJCr53qXXYtb/X+nzwAz5cW
 y3/0XdTxQDix8WYh6qVn8VJIiDmqoo533kQ0nvWZoHEH93kTiAVCj2H+C
 ZsPuh2J1HHFRb1XEyc9wOSkdefV3aDigj7DSCaEAeO8sRSyPj9qLaR4Mz
 xS6QJzGft7i+Nj0vCFeWhGa1q1qf8g5gBO+2PoggbfQANubiIFJL3qLRX
 O70vSrisjVUXclBmCGmN5MbZKKySi6iEg11H8lqDODhL+eVfTcogzcIjI
 MMQgnGrICJi5ZHGYBwBf6dN4Q7OhAViUe3eSMsKyQAVngSm15H5/NDtnS
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jLr6EBeN
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 46773e40fb01b6d76ab63618d1ebf6a7a79682c6
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
branch HEAD: 46773e40fb01b6d76ab63618d1ebf6a7a79682c6  ice: do not configure destination override for switchdev

elapsed time: 1457m

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
