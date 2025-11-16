Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 847D0C61BE3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Nov 2025 20:38:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AD1482531;
	Sun, 16 Nov 2025 19:38:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rEYpTQL3z5zO; Sun, 16 Nov 2025 19:38:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34AB58258A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763321926;
	bh=2FiYopetOnjkxpVjMOk9dPCQrDPbpMFLTmB91b7uios=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YEBKPWxYnSOiIDoMGJBlhC/pdfMRJo/4UEGVTaDNbgNcdV9QQHgrDmCnvPXwImQaa
	 YDe2u6InZ1XlIwl5TjfYdWiDvecWT0kLc0nrFEPgxGdYUKVmHvUofkOYz3tWeQHKNY
	 wB8uGtFbsvp9XHSHCSZapz2cZjCwRxn6pVtL5v/N1bBlPyH2esxsfb25YVNMwFS8Vp
	 whqpjlai1VpDSaTOL8D5fimBb30sFP82TUnvX0r1FtK9vHVzSj69F/BewQ3bgfu8mc
	 fdXd+nAaa4jOCq0OUt1OCFc/hA5aLcSmxEAYocj3T7a7MnziiXSjNI1a+C6siPdLUq
	 cDSvxPVoeQ0Rw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34AB58258A;
	Sun, 16 Nov 2025 19:38:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C95DD5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 19:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7251582486
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 19:38:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jVKXeFgWr7Ku for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Nov 2025 19:38:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C26582479
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C26582479
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C26582479
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 19:38:42 +0000 (UTC)
X-CSE-ConnectionGUID: kjhfWqosScmVfuBRkoTdBA==
X-CSE-MsgGUID: M+rJ4IT0Tga27qYlmm8K7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65265711"
X-IronPort-AV: E=Sophos;i="6.19,310,1754982000"; d="scan'208";a="65265711"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 11:38:42 -0800
X-CSE-ConnectionGUID: n98DrJrmSCKnISZLmxpLfw==
X-CSE-MsgGUID: B9rcUcWdSuCFHB3WCTcjow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,310,1754982000"; d="scan'208";a="194597875"
Received: from lkp-server01.sh.intel.com (HELO 7b01c990427b) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 16 Nov 2025 11:38:41 -0800
Received: from kbuild by 7b01c990427b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vKia6-00092B-37
 for intel-wired-lan@lists.osuosl.org; Sun, 16 Nov 2025 19:38:38 +0000
Date: Mon, 17 Nov 2025 03:38:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511170358.bR2HJASB-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763321923; x=1794857923;
 h=date:from:to:subject:message-id;
 bh=zjLBiTQvDt63HvZHzj1i7eIRMmUXkv0TzPhhjDH6m44=;
 b=iqlWwPxPt+vU/LWIC0CQbSXGHHwJcDMD64HRaJ7cHAJ3lHX7X3V9VDER
 s2nx3tRulA90Tqh3u4Bl5kvy45ZxyLT4I09MUNGEiY/zevDc1A4kSws1v
 Goq5R//TlUpfllz6mwECf8GO9sY7KjnB6vl4+23otuBaOO/lrFo3GIruM
 zLrAW1DfivG443zb5GnmuAueikrCAj/TGw71Y83LtB5jSYBoWQvok0NHp
 Jw2dtCzU9/vS9T7oJ6wakCrGy8Yd3ll18EyhaTv0PNZmAE6nUOTkb+X9X
 9Cb0vlF4tPDBHG9CCQ23blbbc248eUTrwZIUI0MTfTK3DMNwPmrPYAaP1
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iqlWwPxP
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 df58ee7d8faf353ebf5d4703c35fcf3e578e9b1b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: df58ee7d8faf353ebf5d4703c35fcf3e578e9b1b  Merge branch 'net-phy-mscc-add-support-for-phy-led-control'

elapsed time: 3907m

configs tested: 71
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20251115    gcc-13.4.0
arc                   randconfig-002-20251115    gcc-11.5.0
arm                               allnoconfig    clang-22
arm                   randconfig-001-20251115    clang-22
arm                   randconfig-002-20251115    gcc-8.5.0
arm                   randconfig-003-20251115    gcc-10.5.0
arm                   randconfig-004-20251115    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251116    gcc-12.5.0
arm64                 randconfig-002-20251116    gcc-10.5.0
arm64                 randconfig-003-20251116    clang-22
arm64                 randconfig-004-20251116    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251116    gcc-12.5.0
csky                  randconfig-002-20251116    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251116    clang-22
hexagon               randconfig-002-20251116    clang-17
i386                              allnoconfig    gcc-14
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251116    gcc-15.1.0
loongarch             randconfig-002-20251116    clang-22
m68k                              allnoconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20251116    gcc-11.5.0
nios2                 randconfig-002-20251116    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20251115    gcc-8.5.0
parisc                randconfig-001-20251116    gcc-12.5.0
parisc                randconfig-002-20251115    gcc-8.5.0
parisc                randconfig-002-20251116    gcc-14.3.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20251115    clang-19
powerpc               randconfig-001-20251116    gcc-10.5.0
powerpc               randconfig-002-20251115    gcc-8.5.0
powerpc               randconfig-002-20251116    clang-22
powerpc64             randconfig-001-20251115    gcc-11.5.0
powerpc64             randconfig-001-20251116    clang-22
powerpc64             randconfig-002-20251115    gcc-14.3.0
powerpc64             randconfig-002-20251116    gcc-10.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20251115    clang-22
riscv                 randconfig-002-20251115    gcc-8.5.0
s390                              allnoconfig    clang-22
s390                  randconfig-001-20251115    clang-17
s390                  randconfig-002-20251115    gcc-8.5.0
sh                                allnoconfig    gcc-15.1.0
sh                    randconfig-001-20251115    gcc-12.5.0
sh                    randconfig-002-20251115    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
um                                allnoconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251116    clang-20
x86_64      buildonly-randconfig-002-20251116    clang-20
x86_64      buildonly-randconfig-003-20251116    clang-20
x86_64      buildonly-randconfig-004-20251116    gcc-13
x86_64      buildonly-randconfig-005-20251116    clang-20
x86_64      buildonly-randconfig-006-20251116    clang-20
x86_64                                  kexec    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
xtensa                            allnoconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
