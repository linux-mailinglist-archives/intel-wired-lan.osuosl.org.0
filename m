Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A679A4A637
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 23:54:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 865A586167;
	Fri, 28 Feb 2025 22:51:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZJpcS3p7fwD; Fri, 28 Feb 2025 22:51:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F99684F7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740782674;
	bh=bDFDxd1D56IOJeLAT5qqtaz/dR3lwg0mf4ZN9RG1rAY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3nIZZ7f3d0sezn+Qzqbojfjwzq4Cngf8jgwnlK0osSD2OXCvlO5nsl71keXiQnFmO
	 v3EQeSPa5/wGWwlPIIR4lSPojHDfTIsXcN/fXYV0ySqadVzH3KZlBQ0rpMCm0BcKfT
	 /5OMh5MxAlyfXtRBOecmpuYRYTGYwWMHd0GGVov4LSI0kXrhTFjTSv/hn7yBrrwEuc
	 q9xxB+HtHIC59/qb2fsdQtI/wKvR3QHOEv4DFH8dTK5/XeuauumtPa3ocd/Gqm87IU
	 neg+I5jnplBrE4WqupzbOUoMwqi3F4dLJ7NiYUZHC4eC2ZaNwleSEN+4yfUwF+YE6F
	 6DJFqT1VvUViQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F99684F7B;
	Fri, 28 Feb 2025 22:44:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B06E68
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 22:44:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65F3984BC3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 22:39:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dV1VIlTFxbig for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 22:39:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 078E281223
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 078E281223
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 078E281223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 22:36:59 +0000 (UTC)
X-CSE-ConnectionGUID: llYvFC6TSU+RBI1VKEyxAw==
X-CSE-MsgGUID: 8Va0ROb9TDqUy/aNm16kVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="41609232"
X-IronPort-AV: E=Sophos;i="6.13,323,1732608000"; d="scan'208";a="41609232"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 14:36:59 -0800
X-CSE-ConnectionGUID: DPEAkIUgQtuWNXZSLYhp2Q==
X-CSE-MsgGUID: TR7vGRo4TIyMKW1n2T6i6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,323,1732608000"; d="scan'208";a="117484995"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by orviesa006.jf.intel.com with ESMTP; 28 Feb 2025 14:36:58 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1to8yV-000Fag-2V
 for intel-wired-lan@lists.osuosl.org; Fri, 28 Feb 2025 22:36:55 +0000
Date: Sat, 01 Mar 2025 06:36:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503010616.uZqqY8jC-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740782221; x=1772318221;
 h=date:from:to:subject:message-id;
 bh=voVTw4woI4DI9ZZtW/daH+JaZCrYklbh2AacIFoIpnE=;
 b=QNolkqoaUdXX9Tn5Gx0zjV6vNRjwUMfyRJHNajNYesSSjQpOCb/BpIGM
 FEoq8gzLHLyQ1cGm4CvqtMC309zdmWNSjvFJU83/Gy0vPCoTsVfdtY94E
 K4EELzdwBf+iYhUicbLUlT37O63ylT9oGlebcyRS/RI4VqQhLYtD2j1yf
 d85SEFcdOklQdx7u3bpUtc7T2tNg5rzVNXIEuDDPZiIWcJxUrOJYmEB7H
 K/aY06ezywOf0S8kRUWmao55xDAAnSB/0tzhRqUiu6H8bc3cZFKeWYWgU
 CDbA/gaKwguoB+ZJCgpETPdvu+b49vusI3+MoMZgYnDYbkwJNkd4z+B9b
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QNolkqoa
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 bcfc46cf644e2a44fa73edd20b94b18ec088315d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: bcfc46cf644e2a44fa73edd20b94b18ec088315d  idpf: synchronize pending IRQs after disable

elapsed time: 1453m

configs tested: 62
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                           allyesconfig    gcc-14.2.0
arc                  randconfig-001-20250228    gcc-13.2.0
arc                  randconfig-002-20250228    gcc-13.2.0
arm                  randconfig-001-20250228    clang-21
arm                  randconfig-002-20250228    gcc-14.2.0
arm                  randconfig-003-20250228    gcc-14.2.0
arm                  randconfig-004-20250228    gcc-14.2.0
arm64                randconfig-001-20250228    gcc-14.2.0
arm64                randconfig-002-20250228    clang-21
arm64                randconfig-003-20250228    clang-16
arm64                randconfig-004-20250228    gcc-14.2.0
csky                 randconfig-001-20250228    gcc-14.2.0
csky                 randconfig-002-20250228    gcc-14.2.0
hexagon                         allmodconfig    clang-21
hexagon                         allyesconfig    clang-18
hexagon              randconfig-001-20250228    clang-19
hexagon              randconfig-002-20250228    clang-21
i386       buildonly-randconfig-001-20250228    clang-19
i386       buildonly-randconfig-002-20250228    clang-19
i386       buildonly-randconfig-003-20250228    gcc-12
i386       buildonly-randconfig-004-20250228    clang-19
i386       buildonly-randconfig-005-20250228    clang-19
i386       buildonly-randconfig-006-20250228    clang-19
loongarch            randconfig-001-20250228    gcc-14.2.0
loongarch            randconfig-002-20250228    gcc-14.2.0
nios2                randconfig-001-20250228    gcc-14.2.0
nios2                randconfig-002-20250228    gcc-14.2.0
parisc               randconfig-001-20250228    gcc-14.2.0
parisc               randconfig-002-20250228    gcc-14.2.0
powerpc              randconfig-001-20250228    gcc-14.2.0
powerpc              randconfig-002-20250228    clang-16
powerpc              randconfig-003-20250228    clang-18
powerpc64            randconfig-001-20250228    clang-16
powerpc64            randconfig-002-20250228    clang-18
powerpc64            randconfig-003-20250228    gcc-14.2.0
riscv                randconfig-001-20250228    gcc-14.2.0
riscv                randconfig-002-20250228    gcc-14.2.0
s390                            allmodconfig    clang-19
s390                            allyesconfig    gcc-14.2.0
s390                 randconfig-001-20250228    gcc-14.2.0
s390                 randconfig-002-20250228    clang-17
sh                              allmodconfig    gcc-14.2.0
sh                              allyesconfig    gcc-14.2.0
sh                   randconfig-001-20250228    gcc-14.2.0
sh                   randconfig-002-20250228    gcc-14.2.0
sparc                           allmodconfig    gcc-14.2.0
sparc                randconfig-001-20250228    gcc-14.2.0
sparc                randconfig-002-20250228    gcc-14.2.0
sparc64              randconfig-001-20250228    gcc-14.2.0
sparc64              randconfig-002-20250228    gcc-14.2.0
um                              allmodconfig    clang-21
um                              allyesconfig    gcc-12
um                   randconfig-001-20250228    clang-21
um                   randconfig-002-20250228    clang-21
x86_64     buildonly-randconfig-001-20250228    clang-19
x86_64     buildonly-randconfig-002-20250228    clang-19
x86_64     buildonly-randconfig-003-20250228    gcc-12
x86_64     buildonly-randconfig-004-20250228    clang-19
x86_64     buildonly-randconfig-005-20250228    gcc-12
x86_64     buildonly-randconfig-006-20250228    gcc-12
xtensa               randconfig-001-20250228    gcc-14.2.0
xtensa               randconfig-002-20250228    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
