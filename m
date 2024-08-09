Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 616F794CF06
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 12:57:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 152524130D;
	Fri,  9 Aug 2024 10:57:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id egynJGMbdSe1; Fri,  9 Aug 2024 10:56:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2413241318
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723201018;
	bh=wD+I486hPsKj3Vf6CqbgOmBMaSAOpdaYvLE6qrUgu/I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RJCGj/ULiAIICcKiEytEwWepY+OEsHUYpA3c1DhfyfsQUc4sN12+qPDu3ernCNcWD
	 LGmzdRRj3Tgk3cS7pe7AIzDAwyIFH0jQmzdeTR9lhQUCdnKMJszcWtBU29aMlGIzYH
	 NhueDUbsSs+BuMK6CrkKeqtaen3+9Fv8X+Hxx4UkE4dooblfsXcdyB0HacOx9xKXmG
	 xBwyWyubXxXaGyIxA4Lbr9q8EWHjqMAK8kcYtyX3/dD/JnEbFcFakl8Z0hsUHGp6Jb
	 E3yw7ugvr4Wq0UyPHaXnJ0eUWLVrtkEx5OfLyuP2fN7z41dql3YrOv4QJLP2HfhIm/
	 XpriyuQDRc95A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2413241318;
	Fri,  9 Aug 2024 10:56:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDDD31BF36A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 10:56:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAEE64130B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 10:56:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ikegwvzBGIw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 10:56:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EF1F941305
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF1F941305
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF1F941305
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 10:56:53 +0000 (UTC)
X-CSE-ConnectionGUID: 8R80TBiyTEuxtAXEvCVpww==
X-CSE-MsgGUID: ryOp9audS6qiVOOQyJkU4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="24276807"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="24276807"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 03:56:52 -0700
X-CSE-ConnectionGUID: fKKQPwAgQjyi1NjYc4Q1Dw==
X-CSE-MsgGUID: RWkbksgzTw67xERXK2wv+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="57447348"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
 by orviesa009.jf.intel.com with ESMTP; 09 Aug 2024 03:56:51 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1scNIf-0007pi-0V
 for intel-wired-lan@lists.osuosl.org; Fri, 09 Aug 2024 10:56:49 +0000
Date: Fri, 09 Aug 2024 18:56:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408091804.0CBl2XwV-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723201014; x=1754737014;
 h=date:from:to:subject:message-id;
 bh=z0dm8RlwnIhxYUxSQ7kJr551kopOiqJIO1cITU9iMQk=;
 b=A5psDJLSxumGGQaTRT9uPC4zheS/ULP+cECOcJaZkJ3U5SnsTb7dlC1T
 azIy6JnF9GVwjLkVY4EH+D9yabcpswzWciO+nRrE+4mSJN9KA37Ks5tVN
 DMhQ8ZTOydLtdqBhyeS6t5A4XCNxndBVNp3EdT8c9+v/ly3EBqRLjgyH8
 axJtrc+ZocSB1+ffjfOa5iWMsObdo/xn8UFUCSCQ53uXJYYllaTNbhAPl
 R1+AtFwcACQ7PfidL8sY3WespL67yGCEhLf3Utv5xG9YUoabgw38e6u+w
 ZwUIsPyUQTwQqIVfeb4y+n3Z+0kF9brArEsBrLHFWAGBZkNW4e4IbJdKm
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A5psDJLS
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 91d516d4de48532d967a77967834e00c8c53dfe6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 91d516d4de48532d967a77967834e00c8c53dfe6  net: mvpp2: Increase size of queue_name buffer

elapsed time: 1890m

configs tested: 282
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240808   gcc-13.2.0
arc                   randconfig-001-20240809   gcc-13.2.0
arc                   randconfig-002-20240808   gcc-13.2.0
arc                   randconfig-002-20240809   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                         assabet_defconfig   clang-15
arm                          collie_defconfig   clang-15
arm                                 defconfig   gcc-13.2.0
arm                            mmp2_defconfig   clang-15
arm                            mmp2_defconfig   gcc-14.1.0
arm                          moxart_defconfig   clang-15
arm                        neponset_defconfig   gcc-13.2.0
arm                       netwinder_defconfig   gcc-14.1.0
arm                   randconfig-001-20240808   gcc-13.2.0
arm                   randconfig-001-20240809   gcc-13.2.0
arm                   randconfig-002-20240808   gcc-13.2.0
arm                   randconfig-002-20240809   gcc-13.2.0
arm                   randconfig-003-20240808   gcc-13.2.0
arm                   randconfig-003-20240809   gcc-13.2.0
arm                   randconfig-004-20240808   gcc-13.2.0
arm                   randconfig-004-20240809   gcc-13.2.0
arm                             rpc_defconfig   gcc-13.2.0
arm                         s3c6400_defconfig   clang-15
arm                         s3c6400_defconfig   gcc-13.2.0
arm                       spear13xx_defconfig   clang-15
arm                           spitz_defconfig   gcc-14.1.0
arm                           stm32_defconfig   gcc-13.2.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240808   gcc-13.2.0
arm64                 randconfig-001-20240809   gcc-13.2.0
arm64                 randconfig-002-20240808   gcc-13.2.0
arm64                 randconfig-002-20240809   gcc-13.2.0
arm64                 randconfig-003-20240808   gcc-13.2.0
arm64                 randconfig-003-20240809   gcc-13.2.0
arm64                 randconfig-004-20240808   gcc-13.2.0
arm64                 randconfig-004-20240809   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240808   gcc-13.2.0
csky                  randconfig-001-20240809   gcc-13.2.0
csky                  randconfig-002-20240808   gcc-13.2.0
csky                  randconfig-002-20240809   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240808   clang-18
i386         buildonly-randconfig-001-20240809   gcc-12
i386         buildonly-randconfig-002-20240808   clang-18
i386         buildonly-randconfig-002-20240809   gcc-12
i386         buildonly-randconfig-003-20240808   clang-18
i386         buildonly-randconfig-003-20240809   gcc-12
i386         buildonly-randconfig-004-20240808   clang-18
i386         buildonly-randconfig-004-20240809   gcc-12
i386         buildonly-randconfig-005-20240808   clang-18
i386         buildonly-randconfig-005-20240809   gcc-12
i386         buildonly-randconfig-006-20240808   clang-18
i386         buildonly-randconfig-006-20240809   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240808   clang-18
i386                  randconfig-001-20240809   gcc-12
i386                  randconfig-002-20240808   clang-18
i386                  randconfig-002-20240809   gcc-12
i386                  randconfig-003-20240808   clang-18
i386                  randconfig-003-20240809   gcc-12
i386                  randconfig-004-20240808   clang-18
i386                  randconfig-004-20240809   gcc-12
i386                  randconfig-005-20240808   clang-18
i386                  randconfig-005-20240809   gcc-12
i386                  randconfig-006-20240808   clang-18
i386                  randconfig-006-20240809   gcc-12
i386                  randconfig-011-20240808   clang-18
i386                  randconfig-011-20240809   gcc-12
i386                  randconfig-012-20240808   clang-18
i386                  randconfig-012-20240809   gcc-12
i386                  randconfig-013-20240808   clang-18
i386                  randconfig-013-20240809   gcc-12
i386                  randconfig-014-20240808   clang-18
i386                  randconfig-014-20240809   gcc-12
i386                  randconfig-015-20240808   clang-18
i386                  randconfig-015-20240809   gcc-12
i386                  randconfig-016-20240808   clang-18
i386                  randconfig-016-20240809   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240808   gcc-13.2.0
loongarch             randconfig-001-20240809   gcc-13.2.0
loongarch             randconfig-002-20240808   gcc-13.2.0
loongarch             randconfig-002-20240809   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5275evb_defconfig   gcc-14.1.0
m68k                       m5475evb_defconfig   gcc-13.2.0
m68k                       m5475evb_defconfig   gcc-14.1.0
m68k                        mvme16x_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                        bcm47xx_defconfig   gcc-13.2.0
mips                           ip30_defconfig   gcc-14.1.0
mips                           ip32_defconfig   clang-15
mips                       lemote2f_defconfig   gcc-13.2.0
mips                      pic32mzda_defconfig   gcc-13.2.0
mips                           rs90_defconfig   gcc-13.2.0
mips                   sb1250_swarm_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240808   gcc-13.2.0
nios2                 randconfig-001-20240809   gcc-13.2.0
nios2                 randconfig-002-20240808   gcc-13.2.0
nios2                 randconfig-002-20240809   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                       virt_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                generic-32bit_defconfig   gcc-13.2.0
parisc                randconfig-001-20240808   gcc-13.2.0
parisc                randconfig-001-20240809   gcc-13.2.0
parisc                randconfig-002-20240808   gcc-13.2.0
parisc                randconfig-002-20240809   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      arches_defconfig   gcc-14.1.0
powerpc                   bluestone_defconfig   clang-15
powerpc                 mpc8313_rdb_defconfig   gcc-14.1.0
powerpc               randconfig-001-20240808   gcc-13.2.0
powerpc               randconfig-001-20240809   gcc-13.2.0
powerpc               randconfig-002-20240808   gcc-13.2.0
powerpc                     redwood_defconfig   gcc-14.1.0
powerpc                     sequoia_defconfig   gcc-14.1.0
powerpc                     skiroot_defconfig   gcc-13.2.0
powerpc64                        alldefconfig   clang-15
powerpc64             randconfig-001-20240808   gcc-13.2.0
powerpc64             randconfig-001-20240809   gcc-13.2.0
powerpc64             randconfig-002-20240808   gcc-13.2.0
powerpc64             randconfig-002-20240809   gcc-13.2.0
powerpc64             randconfig-003-20240808   gcc-13.2.0
powerpc64             randconfig-003-20240809   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv             nommu_k210_sdcard_defconfig   clang-15
riscv                 randconfig-001-20240808   gcc-13.2.0
riscv                 randconfig-001-20240809   gcc-13.2.0
riscv                 randconfig-002-20240808   gcc-13.2.0
riscv                 randconfig-002-20240809   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240808   gcc-13.2.0
s390                  randconfig-001-20240809   gcc-13.2.0
s390                  randconfig-002-20240808   gcc-13.2.0
s390                  randconfig-002-20240809   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240808   gcc-13.2.0
sh                    randconfig-001-20240809   gcc-13.2.0
sh                    randconfig-002-20240808   gcc-13.2.0
sh                    randconfig-002-20240809   gcc-13.2.0
sh                           se7721_defconfig   gcc-13.2.0
sh                        sh7763rdp_defconfig   gcc-14.1.0
sparc                            alldefconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240808   gcc-13.2.0
sparc64               randconfig-001-20240809   gcc-13.2.0
sparc64               randconfig-002-20240808   gcc-13.2.0
sparc64               randconfig-002-20240809   gcc-13.2.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240808   gcc-13.2.0
um                    randconfig-001-20240809   gcc-13.2.0
um                    randconfig-002-20240808   gcc-13.2.0
um                    randconfig-002-20240809   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240808   gcc-12
x86_64       buildonly-randconfig-001-20240809   clang-18
x86_64       buildonly-randconfig-002-20240808   gcc-12
x86_64       buildonly-randconfig-002-20240809   clang-18
x86_64       buildonly-randconfig-003-20240808   gcc-12
x86_64       buildonly-randconfig-003-20240809   clang-18
x86_64       buildonly-randconfig-004-20240808   gcc-12
x86_64       buildonly-randconfig-004-20240809   clang-18
x86_64       buildonly-randconfig-005-20240808   gcc-12
x86_64       buildonly-randconfig-005-20240809   clang-18
x86_64       buildonly-randconfig-006-20240808   gcc-12
x86_64       buildonly-randconfig-006-20240809   clang-18
x86_64                              defconfig   clang-18
x86_64                                  kexec   clang-18
x86_64                randconfig-001-20240808   gcc-12
x86_64                randconfig-001-20240809   clang-18
x86_64                randconfig-002-20240808   gcc-12
x86_64                randconfig-002-20240809   clang-18
x86_64                randconfig-003-20240808   gcc-12
x86_64                randconfig-003-20240809   clang-18
x86_64                randconfig-004-20240808   gcc-12
x86_64                randconfig-004-20240809   clang-18
x86_64                randconfig-005-20240808   gcc-12
x86_64                randconfig-005-20240809   clang-18
x86_64                randconfig-006-20240808   gcc-12
x86_64                randconfig-006-20240809   clang-18
x86_64                randconfig-011-20240808   gcc-12
x86_64                randconfig-011-20240809   clang-18
x86_64                randconfig-012-20240808   gcc-12
x86_64                randconfig-012-20240809   clang-18
x86_64                randconfig-013-20240808   gcc-12
x86_64                randconfig-013-20240809   clang-18
x86_64                randconfig-014-20240808   gcc-12
x86_64                randconfig-014-20240809   clang-18
x86_64                randconfig-015-20240808   gcc-12
x86_64                randconfig-015-20240809   clang-18
x86_64                randconfig-016-20240808   gcc-12
x86_64                randconfig-016-20240809   clang-18
x86_64                randconfig-071-20240808   gcc-12
x86_64                randconfig-071-20240809   clang-18
x86_64                randconfig-072-20240808   gcc-12
x86_64                randconfig-072-20240809   clang-18
x86_64                randconfig-073-20240808   gcc-12
x86_64                randconfig-073-20240809   clang-18
x86_64                randconfig-074-20240808   gcc-12
x86_64                randconfig-074-20240809   clang-18
x86_64                randconfig-075-20240808   gcc-12
x86_64                randconfig-075-20240809   clang-18
x86_64                randconfig-076-20240808   gcc-12
x86_64                randconfig-076-20240809   clang-18
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                       common_defconfig   gcc-14.1.0
xtensa                randconfig-001-20240808   gcc-13.2.0
xtensa                randconfig-001-20240809   gcc-13.2.0
xtensa                randconfig-002-20240808   gcc-13.2.0
xtensa                randconfig-002-20240809   gcc-13.2.0
xtensa                    xip_kc705_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
