Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B8EB10A38
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 14:31:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2973821FB;
	Thu, 24 Jul 2025 12:31:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 571dDMypuppi; Thu, 24 Jul 2025 12:31:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9809F821FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753360284;
	bh=jalWsXcjLT0WARrESv+y2hcaTXlckvpTo/HmnxOL9J8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s68UeObCRQc6MNn8J+zueXHAmz1uDw7DNdZhKLocPpY1PNMi+H1FDtgGZVelRD8+B
	 x4ObT4pkkGQdcJ9+5TwxJh+Q3gSTBY8BmUZVdxXvtFcR9FRL1VpC1Oswd/BsHQCrmv
	 5b7OqAOcwteU6sID5QofltFYSpCg8JZK09NgKTzDiTObY9F1aJjacG2gqdvcegktLT
	 wTJihCihri+1qx2bu0h0jBBGC3rLVkE6lVaCZsBCoqp2wemgXWl3px1EVN6my+A4Fu
	 SbKkC25K40D1QwEFnza2uuDyYryOgilhS4w9+NxrWETbpJb0OGEFWs9Wvebr0fKiSb
	 lRp5A4KIbDu5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9809F821FD;
	Thu, 24 Jul 2025 12:31:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EE2E3115
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 12:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB045821F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 12:31:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YP8LIcTJA_1W for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 12:31:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1F062821F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F062821F5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F062821F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 12:31:21 +0000 (UTC)
X-CSE-ConnectionGUID: nw8NGrS9TwC3Ly63Dc1dag==
X-CSE-MsgGUID: w2EynfDuRHqQloU2hHuoXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="66744405"
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="66744405"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 05:31:21 -0700
X-CSE-ConnectionGUID: mlRzGlmUSS2YjR6aoDwPxA==
X-CSE-MsgGUID: cutl0F/MS9e33aBdzxlTVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="191124015"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 24 Jul 2025 05:31:20 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uev6U-000KQh-1c
 for intel-wired-lan@lists.osuosl.org; Thu, 24 Jul 2025 12:31:18 +0000
Date: Thu, 24 Jul 2025 20:31:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507242002.EIq0q3F3-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753360282; x=1784896282;
 h=date:from:to:subject:message-id;
 bh=hri6Oo8j5jqlB2wL1jxRHybVNRnfLK9U89p1HD133lc=;
 b=iib/7+tC/GxPmXyi2u8Nr45JfGuQl7/R5OlpQm3LoX7kkoQ2jhi+m4GR
 Uk7dVfsURFrzQRv0kpFWFbtmvGbx8o3ROaVeHeTOku1lcBXBrKUj44ZMF
 gq79tuyytgO5STlpMV0jea8MJQv6BAt2iX35HluQpa/3Bxe8zAt3nKXhD
 sUib5UPsdSFXszIov4oEwppEI/M2uUsooM0DERClFZuoZ6uTaDur84ELj
 OlIakAE1Vi4vr0ZMHL/j7Cw9nvlT9t4y4hZt7NQC+pNqry2f2qmrtmClr
 02am+VA7LUJ4MtVZGtqtridVwU7iZjxBZqDFzit0bYfB7NPAsWL+HiWSs
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iib/7+tC
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5fb0bdeb3117bc5da7917e7938b75fe47585a294
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
branch HEAD: 5fb0bdeb3117bc5da7917e7938b75fe47585a294  idpf: remove obsolete stashing code

elapsed time: 1279m

configs tested: 120
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250724    gcc-13.4.0
arc                   randconfig-002-20250724    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                         at91_dt_defconfig    clang-22
arm                   randconfig-001-20250724    gcc-10.5.0
arm                   randconfig-002-20250724    clang-22
arm                   randconfig-003-20250724    gcc-8.5.0
arm                   randconfig-004-20250724    gcc-12.5.0
arm                           tegra_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250724    gcc-8.5.0
arm64                 randconfig-002-20250724    clang-22
arm64                 randconfig-003-20250724    gcc-13.4.0
arm64                 randconfig-004-20250724    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250724    gcc-13.4.0
csky                  randconfig-002-20250724    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250724    clang-22
hexagon               randconfig-002-20250724    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250724    gcc-12
i386        buildonly-randconfig-002-20250724    clang-20
i386        buildonly-randconfig-003-20250724    clang-20
i386        buildonly-randconfig-004-20250724    clang-20
i386        buildonly-randconfig-005-20250724    clang-20
i386        buildonly-randconfig-006-20250724    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250724    clang-22
loongarch             randconfig-002-20250724    gcc-13.4.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                          hp300_defconfig    gcc-15.1.0
m68k                       m5475evb_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250724    gcc-11.5.0
nios2                 randconfig-002-20250724    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250724    gcc-14.3.0
parisc                randconfig-002-20250724    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                      chrp32_defconfig    clang-19
powerpc               randconfig-001-20250724    clang-22
powerpc               randconfig-002-20250724    gcc-8.5.0
powerpc               randconfig-003-20250724    clang-22
powerpc64             randconfig-001-20250724    clang-22
powerpc64             randconfig-002-20250724    gcc-13.4.0
powerpc64             randconfig-003-20250724    gcc-15.1.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250724    gcc-13.4.0
riscv                 randconfig-002-20250724    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20250724    clang-22
s390                  randconfig-002-20250724    gcc-10.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250724    gcc-13.4.0
sh                    randconfig-002-20250724    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250724    gcc-15.1.0
sparc                 randconfig-002-20250724    gcc-8.5.0
sparc                       sparc32_defconfig    gcc-15.1.0
sparc64               randconfig-001-20250724    gcc-8.5.0
sparc64               randconfig-002-20250724    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250724    clang-22
um                    randconfig-002-20250724    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250724    gcc-12
x86_64      buildonly-randconfig-002-20250724    clang-20
x86_64      buildonly-randconfig-003-20250724    gcc-12
x86_64      buildonly-randconfig-004-20250724    gcc-12
x86_64      buildonly-randconfig-005-20250724    clang-20
x86_64      buildonly-randconfig-006-20250724    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250724    gcc-12.5.0
xtensa                randconfig-002-20250724    gcc-12.5.0
xtensa                    smp_lx200_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
