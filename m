Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D518A80C6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 12:22:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 349ED40C94;
	Wed, 17 Apr 2024 10:22:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BIXvYXEh8CRk; Wed, 17 Apr 2024 10:22:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D22C941490
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713349329;
	bh=hnWFqZRUK5BVhhGYn+sqj7Xi9/qs7svD/Edm93wn2XQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RJUfzPGKeAeUo+BGRWOgA29N+plsbXhVp/CrnfpLx5PVv9Tt8zDtNDBTp/Hk8KFdJ
	 J5j6PgySvrBsfqYSjag1aXdMD8dLNz4FCDyFvs8aSo3vFVHnF7byziVVQZJUmYPSa+
	 N5nVNPT2sQ953YTngYUaKI+LRzQN2GCi0NfUZCRdAFPwhRYmOZqnd+q+j6HdQY6l/d
	 khQjjZGHSp9OluEZNwH7o0KCUWZVnlWZJfSPMWbOFa32UcNnF8GcHVoHNinMRBoJAL
	 sHbQunq9JaGRnlDvdhA2RhYqtoxnVdR0Wzo42AGOg4vD/xGWwSJ9yw7m3MbBxNbjKN
	 MHAz47QVMnmnA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D22C941490;
	Wed, 17 Apr 2024 10:22:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5110C1BF476
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 10:22:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3BA9C404A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 10:22:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CBvZuQCQJYf5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 10:22:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1183A40273
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1183A40273
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1183A40273
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 10:22:03 +0000 (UTC)
X-CSE-ConnectionGUID: 516LJLGpQpubpCz/FTnzCA==
X-CSE-MsgGUID: NwUL6G5MQf6rsCxIQOh90Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="20221093"
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; d="scan'208";a="20221093"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 03:22:03 -0700
X-CSE-ConnectionGUID: MX7CpO5ESeGVQO7gnRXa4A==
X-CSE-MsgGUID: jyZFxIrUQt+ARxOgOhSvOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; d="scan'208";a="27016434"
Received: from unknown (HELO 23c141fc0fd8) ([10.239.97.151])
 by fmviesa005.fm.intel.com with ESMTP; 17 Apr 2024 03:22:02 -0700
Received: from kbuild by 23c141fc0fd8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rx2QR-0006TC-24
 for intel-wired-lan@lists.osuosl.org; Wed, 17 Apr 2024 10:21:59 +0000
Date: Wed, 17 Apr 2024 18:21:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404171808.APN5pwv0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713349324; x=1744885324;
 h=date:from:to:subject:message-id;
 bh=ul2Pp3CqduNcfd9YeEDeh/LywG9zwce1IV5Zpisf+8Y=;
 b=IHFpuwdtjLRvwtNlAn9YlTK2R1wqPErhnkKAT8jb51YgwNsTvoHSPlav
 qRQxA1xivhi9WY1ZAUGdXMWOG3Z0tGW2c1gL+Ee4CAbV8hgg29RB2KudD
 yRVnYGtzgrb65VL4RcFha3flLZZtpnFb1QdcHMCOtIA+dbuFB4eJhiUXo
 3NkLGxLmiWNUzUGeQaTwMo8lDAXzGXWN77BJgkf1FNBFU4+7K/Y5AKTVC
 +mxH7uaJZXufAEeu6Ojcybje4PDRc9DPwwYenixC/9MhWXrAn+k9Tooyj
 oEzpYYATHnRTR/q4SgDuH5kA0vOPCFo/orXRb+B2YpsTKX7/sclqkAz+c
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IHFpuwdt
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 fd86344823b521149bb31d91eba900ba3525efa6
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
branch HEAD: fd86344823b521149bb31d91eba900ba3525efa6  af_unix: Try not to hold unix_gc_lock during accept().

elapsed time: 1302m

configs tested: 142
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240417   gcc  
arc                   randconfig-002-20240417   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-004-20240417   gcc  
arm64                            alldefconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-003-20240417   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240417   gcc  
csky                  randconfig-002-20240417   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240417   clang
i386         buildonly-randconfig-003-20240417   clang
i386                                defconfig   clang
i386                  randconfig-001-20240417   clang
i386                  randconfig-004-20240417   clang
i386                  randconfig-005-20240417   clang
i386                  randconfig-006-20240417   clang
i386                  randconfig-013-20240417   clang
i386                  randconfig-016-20240417   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240417   gcc  
loongarch             randconfig-002-20240417   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240417   gcc  
nios2                 randconfig-002-20240417   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240417   gcc  
parisc                randconfig-002-20240417   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     kmeter1_defconfig   gcc  
powerpc                     ksi8560_defconfig   gcc  
powerpc               randconfig-001-20240417   gcc  
powerpc               randconfig-002-20240417   gcc  
powerpc                  storcenter_defconfig   gcc  
powerpc                     tqm5200_defconfig   gcc  
powerpc64             randconfig-002-20240417   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240417   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                    randconfig-001-20240417   gcc  
sh                    randconfig-002-20240417   gcc  
sh                           se7721_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240417   gcc  
sparc64               randconfig-002-20240417   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-002-20240417   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240417   clang
x86_64       buildonly-randconfig-003-20240417   clang
x86_64       buildonly-randconfig-004-20240417   clang
x86_64       buildonly-randconfig-005-20240417   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-004-20240417   clang
x86_64                randconfig-005-20240417   clang
x86_64                randconfig-011-20240417   clang
x86_64                randconfig-012-20240417   clang
x86_64                randconfig-013-20240417   clang
x86_64                randconfig-015-20240417   clang
x86_64                randconfig-016-20240417   clang
x86_64                randconfig-072-20240417   clang
x86_64                randconfig-074-20240417   clang
x86_64                randconfig-075-20240417   clang
x86_64                randconfig-076-20240417   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240417   gcc  
xtensa                randconfig-002-20240417   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
