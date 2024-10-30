Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2509B6C4A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 19:44:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4E80608F2;
	Wed, 30 Oct 2024 18:44:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uaSuQE1MdE3I; Wed, 30 Oct 2024 18:44:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 784B7608EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730313875;
	bh=8a7Vkp0l+KzltKBU6SMTufVwpwzanR/J4sj/RYMbSEM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qbs3osrFFDsPb/h6Oeq1GY9YZYGgEk2f0RJ/N4331sllbyYQMwQfcZaBtTRz6Wy6D
	 Don4hqxjJAtmL3htJ+oGzrvJ0qpq9baGOp1Ssp+Q5AE1MGH24bWwV7dnWkNll1O06V
	 EFBxeegD+bF78Sfd95sVj7igLbX2vfEWR7eCgg3KQq1WdxnfqKFUJ3nfG5C2TTllDa
	 4ZDMQLNAs3XNCGSBdhD0ZHmN2DSkPB/VsaLWy/FiUoPytab1uukn7IGI608EgvJW2b
	 +zxNjxPsx2MWwHNZuFQnQfhHOdikff7oPRAPUkdabd/gHBtRIRvWXFSIRj5Z8tXHge
	 VTNOBrmxykjzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 784B7608EB;
	Wed, 30 Oct 2024 18:44:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D4DA5E50
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 18:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF80C608DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 18:44:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 19-M9FVVRiAY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 18:44:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0427460682
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0427460682
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0427460682
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 18:44:30 +0000 (UTC)
X-CSE-ConnectionGUID: H/041K4SSCewF5CHSZcLpw==
X-CSE-MsgGUID: jRBqNjfAQdCG6bv81NO1OQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52590895"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52590895"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 11:44:30 -0700
X-CSE-ConnectionGUID: ndy/6hBkR3KfNGtc1SyvYg==
X-CSE-MsgGUID: V9lDfYplQom1+vcbvGmN1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82320042"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 30 Oct 2024 11:44:29 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t6DgA-000fCo-3D
 for intel-wired-lan@lists.osuosl.org; Wed, 30 Oct 2024 18:44:26 +0000
Date: Thu, 31 Oct 2024 02:44:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410310248.xR9O1Qnm-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730313871; x=1761849871;
 h=date:from:to:subject:message-id;
 bh=TwrNxi1rzVj+ubV/5LnQ0QbpGFAIHtp2bhuTrBZHv08=;
 b=B3vUX/Us99yndOaWi3qLAqQA7/rJ8NamTA/Fm2HnLLWs1YaRoy1G+Zgx
 gZlIGbRI7reV4Bm1UYEHYC1ccduB1hhpqQU630a21jUOV9yzqDYG6lruz
 ulbl8NxkFzUG5nGRDjT5aD7mfSsU9VZLUSAJCzonzMuu+isDxSuNQGKhZ
 solFl/ICyUyUeCgnVRuSjLnEiBn63gHnPLyQJuIDK1ZQ6/5ax9yfnox5G
 dZAWyh0NmJyk7tfcxsG7QyAWKxJvolrIEVlRRrNieW4CCuLkU/9JnxV94
 vvaC2Gy9ChmoqqLSgAOsYRz2meu1vFA4XsQolu83IKoeRlnm2TUExz99F
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B3vUX/Us
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 bacccddbbcc3c853828745be325b24f85c8714c6
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
branch HEAD: bacccddbbcc3c853828745be325b24f85c8714c6  Merge branch 'intel-wired-lan-driver-fixes-2024-10-21-igb-ice'

elapsed time: 1650m

configs tested: 106
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241030    gcc-13.2.0
arc                   randconfig-001-20241031    gcc-13.2.0
arc                   randconfig-002-20241030    gcc-13.2.0
arc                   randconfig-002-20241031    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                   randconfig-001-20241030    clang-14
arm                   randconfig-001-20241031    clang-17
arm                   randconfig-002-20241030    clang-20
arm                   randconfig-002-20241031    clang-20
arm                   randconfig-003-20241030    gcc-14.1.0
arm                   randconfig-003-20241031    gcc-14.1.0
arm                   randconfig-004-20241030    clang-14
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241030    gcc-14.1.0
arm64                 randconfig-002-20241030    gcc-14.1.0
arm64                 randconfig-003-20241030    gcc-14.1.0
arm64                 randconfig-004-20241030    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241030    gcc-14.1.0
csky                  randconfig-002-20241030    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241030    clang-20
hexagon               randconfig-002-20241030    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241031    gcc-12
i386        buildonly-randconfig-002-20241031    clang-19
i386        buildonly-randconfig-003-20241031    gcc-12
i386        buildonly-randconfig-004-20241031    gcc-12
i386        buildonly-randconfig-005-20241031    clang-19
i386        buildonly-randconfig-006-20241031    gcc-11
i386                                defconfig    clang-19
i386                  randconfig-001-20241031    gcc-12
i386                  randconfig-002-20241031    clang-19
i386                  randconfig-003-20241031    gcc-11
i386                  randconfig-004-20241031    clang-19
i386                  randconfig-005-20241031    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20241030    gcc-14.1.0
loongarch             randconfig-002-20241030    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20241030    gcc-14.1.0
nios2                 randconfig-002-20241030    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                randconfig-001-20241030    gcc-14.1.0
parisc                randconfig-002-20241030    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc               randconfig-001-20241030    gcc-14.1.0
powerpc               randconfig-002-20241030    gcc-14.1.0
powerpc               randconfig-003-20241030    gcc-14.1.0
powerpc64             randconfig-001-20241030    gcc-14.1.0
powerpc64             randconfig-002-20241030    clang-20
powerpc64             randconfig-003-20241030    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                 randconfig-001-20241030    clang-20
riscv                 randconfig-002-20241030    gcc-14.1.0
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                  randconfig-001-20241030    clang-20
s390                  randconfig-002-20241030    clang-15
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                    randconfig-001-20241030    gcc-14.1.0
sh                    randconfig-002-20241030    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64               randconfig-001-20241030    gcc-14.1.0
sparc64               randconfig-002-20241030    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
um                    randconfig-001-20241030    clang-20
um                    randconfig-002-20241030    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20241030    gcc-14.1.0
xtensa                randconfig-002-20241030    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
