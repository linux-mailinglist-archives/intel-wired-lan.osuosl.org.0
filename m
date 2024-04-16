Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9862A8A61DC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 05:51:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAB1A4068F;
	Tue, 16 Apr 2024 03:51:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o4wcA8Ir09cd; Tue, 16 Apr 2024 03:51:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7568406A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713239492;
	bh=xBsV4Qtg2SPyJL/HGfImjkQhtUGCwGc4TwDTZeEp+zA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sAO9g93KW4pMe1/SIZUEMa/G3rOZQ/oLtfDtRL/fQyTcOz88jB35QZvDg8rTFePz0
	 DPkdEjcJ3P5EN7uXzole122CdwAVYXrpPghPOmwqLZCZJYdgsAQrlfdWCGzkZKMFkd
	 xS1PENXAEsCuqyWsYZl9iUHOs8XbDdPKapdB4LdG2LWJLKJxtXppFIoMV0R349H8xG
	 Vizo8hi1US1QMpuGNSH2PgoS9dNc5RjuG5FdLxOR4tpc8gvyoFCTIwK+NGWF1+7IO6
	 fR1UfJRe73V+6taUC1Ig5kCMeHYa3MN6h+qhLX+eA6c5xyRPZcNzEU7Dmn1LCazjsx
	 pk+OIHfehoxkQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7568406A2;
	Tue, 16 Apr 2024 03:51:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93C301BF487
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 03:51:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D51960807
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 03:51:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BPC4WXj4K8CR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 03:51:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9FF0460796
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FF0460796
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9FF0460796
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 03:51:29 +0000 (UTC)
X-CSE-ConnectionGUID: W8K6OS+lSD+76ncTr9fTvw==
X-CSE-MsgGUID: K8X5Wx1gQpeugG7aUK/YKQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="11600397"
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="11600397"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 20:51:27 -0700
X-CSE-ConnectionGUID: zW2oMu9RSZC2OECRIGk2fg==
X-CSE-MsgGUID: mFjQojeQRtyf+5N1fjpoBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="53083495"
Received: from unknown (HELO 23c141fc0fd8) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 15 Apr 2024 20:51:27 -0700
Received: from kbuild by 23c141fc0fd8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rwZqu-0004vi-1P
 for intel-wired-lan@lists.osuosl.org; Tue, 16 Apr 2024 03:51:24 +0000
Date: Tue, 16 Apr 2024 11:50:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404161149.nC02YuRO-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713239489; x=1744775489;
 h=date:from:to:subject:message-id;
 bh=oAh3tq6uz/Q90y9bQjnpKGc+HoyaIif7cTkfdlRUAD8=;
 b=kUunUShEUN8aw/mcnOk98dnEjd/U9Ff6QIUsQyJWQKDFkOJlQW7sSavI
 aX2ZNV31FrX2nVI8nU4N18DffIacdtx+uq4XtPls1l+afwGrYiCl1HEUt
 EfYei+FkGOP61Ki5fntZGk7ZuOrEmUCaTxWFy+Y6qNwQfGmDU4VvYo2bW
 h5Fx0IyqSfsH7Wuev8DppCxIWiu4EPoNmmAI69aW32eusSxMSUKkPcn58
 73Xqh8fqjFTs9feA9P/Nxm8j65zwC3O24a1lCqBF+fUUkPLhYuM05kL39
 mU9Vrpk2f13LMaT9txQ3nR/IUyhu1/pcVIqOHKnnN6m5m1naDPn9A3KVj
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kUunUShE
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 083c113c913223a4e979bb8c2fe8bce15cea65ca
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 083c113c913223a4e979bb8c2fe8bce15cea65ca  ice: Fix checking for unsupported keys on non-tunnel device

elapsed time: 723m

configs tested: 129
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc  
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                   randconfig-001-20240416   gcc  
arc                   randconfig-002-20240416   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          ep93xx_defconfig   clang
arm                          exynos_defconfig   clang
arm                      jornada720_defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                            qcom_defconfig   clang
arm                   randconfig-001-20240416   clang
arm                   randconfig-002-20240416   clang
arm                   randconfig-003-20240416   gcc  
arm                   randconfig-004-20240416   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240416   gcc  
arm64                 randconfig-002-20240416   clang
arm64                 randconfig-003-20240416   gcc  
arm64                 randconfig-004-20240416   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240416   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240416   gcc  
i386         buildonly-randconfig-002-20240416   gcc  
i386         buildonly-randconfig-003-20240416   clang
i386         buildonly-randconfig-004-20240416   clang
i386         buildonly-randconfig-005-20240416   clang
i386         buildonly-randconfig-006-20240416   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240416   clang
i386                  randconfig-002-20240416   clang
i386                  randconfig-003-20240416   gcc  
i386                  randconfig-004-20240416   clang
i386                  randconfig-005-20240416   gcc  
i386                  randconfig-006-20240416   gcc  
i386                  randconfig-011-20240416   clang
i386                  randconfig-012-20240416   gcc  
i386                  randconfig-013-20240416   clang
i386                  randconfig-014-20240416   gcc  
i386                  randconfig-015-20240416   clang
i386                  randconfig-016-20240416   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                         db1xxx_defconfig   clang
mips                      pic32mzda_defconfig   gcc  
mips                         rt305x_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                       eiger_defconfig   clang
powerpc                   microwatt_defconfig   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
