Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA70F814D7A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 17:49:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2930F41D62;
	Fri, 15 Dec 2023 16:49:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2930F41D62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702658951;
	bh=44RJBKDkdQPKDHSoCeLygxlehTuL5/Gj+6DWqeEYyd0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=N+PfMNM0GnujRzhtcfvf8oMPGwB1zpHlhthqx+gedgxChZHL2ZtpPbsKEGL+9f1AN
	 IGGqxYEYXBzyzRPnKtYy5YVpRlZ/WPqZQvlE81OOCW3J20z3M7ipJ25cXonwuv0JJn
	 2K0juUg00WK7pDULukI3TQmkFJLvRyr+VuokMFkLRpCUV41nr9+aDfbufAUvUCTYAF
	 eHspSXztmsaPakWNFXJSyjapX/MyJ0oqLRq/k03YbJk6lb6O7szu7wcbDuiNcIzOqo
	 WecQoZMe08lMNJX19tyOmGLJ99cVqX91uCqlIOwL8Y6AiBX8oNhoQnms5k6CZJ5GTu
	 g9fKAWuTx5+1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qCkAkg6CES4B; Fri, 15 Dec 2023 16:49:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E28EC41BF2;
	Fri, 15 Dec 2023 16:49:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E28EC41BF2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 307781BF418
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 16:49:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0765941BF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 16:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0765941BF2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MHFwXwNi39XS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 16:49:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3552F41ADF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 16:49:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3552F41ADF
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="8656904"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; 
   d="scan'208";a="8656904"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 08:48:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="768039987"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="768039987"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 15 Dec 2023 08:48:49 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rEBMk-0000Tk-0V
 for intel-wired-lan@lists.osuosl.org; Fri, 15 Dec 2023 16:48:46 +0000
Date: Sat, 16 Dec 2023 00:48:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312160041.mdqxbZfp-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702658943; x=1734194943;
 h=date:from:to:subject:message-id;
 bh=lUNUIkl6Q5ktXAxuwwc67qFetWciybrhSab6TnD1lyc=;
 b=ATadUfs+X/zdT/fJOdlLVZot22cna4ZPRP5GP0ZQgmftA9ukH/ADZHtH
 2/ATR2J+JO6qlTfv9DDzUUEZck4s8UIorD96QYT4khtM1BEq5gKLKzJWw
 TsYfbC15GAOCsK/z7k2TU5Hd8/cvxZmYW1R3OPfgAO+tjmI1L1SsQib4o
 XUp86LOS38jYfHhXboHa7bcqhOFoHi1+U7jxchgqFBusKHP2oR5eigyN/
 Ybk8h/A7s+P8cAzAcD1wj1xhy/RkTCvYnr9rKuQnSh6XVCxRzG5rrFk0k
 gevAKdQP/WdY6XRCFjWNtRqNFqFV7MYYb98lz/x5X/RzoV4vzhbiASqhF
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ATadUfs+
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 7bb26ea74aa86fdf894b7dbd8c5712c5b4187da7
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 7bb26ea74aa86fdf894b7dbd8c5712c5b4187da7  net: atlantic: fix double free in ring reinit logic

elapsed time: 1751m

configs tested: 117
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231215   gcc  
arc                   randconfig-001-20231216   gcc  
arc                   randconfig-002-20231215   gcc  
arc                   randconfig-002-20231216   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                       imx_v6_v7_defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                   randconfig-001-20231216   gcc  
arm                           tegra_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231215   gcc  
csky                  randconfig-002-20231215   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231215   clang
i386         buildonly-randconfig-002-20231215   clang
i386         buildonly-randconfig-003-20231215   clang
i386         buildonly-randconfig-004-20231215   clang
i386         buildonly-randconfig-005-20231215   clang
i386         buildonly-randconfig-006-20231215   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231215   clang
i386                  randconfig-002-20231215   clang
i386                  randconfig-003-20231215   clang
i386                  randconfig-004-20231215   clang
i386                  randconfig-005-20231215   clang
i386                  randconfig-006-20231215   clang
i386                  randconfig-011-20231215   gcc  
i386                  randconfig-012-20231215   gcc  
i386                  randconfig-013-20231215   gcc  
i386                  randconfig-014-20231215   gcc  
i386                  randconfig-015-20231215   gcc  
i386                  randconfig-016-20231215   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231215   gcc  
loongarch             randconfig-002-20231215   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                       rbtx49xx_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                 randconfig-001-20231215   gcc  
nios2                 randconfig-002-20231215   gcc  
openrisc                         allmodconfig   gcc  
parisc                randconfig-001-20231215   gcc  
parisc                randconfig-002-20231215   gcc  
powerpc                 linkstation_defconfig   gcc  
powerpc                     stx_gp3_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                  randconfig-001-20231215   gcc  
s390                  randconfig-002-20231215   gcc  
sh                               allmodconfig   gcc  
sh                               allyesconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                    randconfig-001-20231215   gcc  
sh                    randconfig-002-20231215   gcc  
sparc                            alldefconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64               randconfig-001-20231215   gcc  
sparc64               randconfig-002-20231215   gcc  
um                               allmodconfig   clang
um                               allyesconfig   clang
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231215   clang
x86_64       buildonly-randconfig-002-20231215   clang
x86_64       buildonly-randconfig-003-20231215   clang
x86_64       buildonly-randconfig-004-20231215   clang
x86_64       buildonly-randconfig-005-20231215   clang
x86_64       buildonly-randconfig-006-20231215   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-011-20231215   clang
x86_64                randconfig-012-20231215   clang
x86_64                randconfig-013-20231215   clang
x86_64                randconfig-014-20231215   clang
x86_64                randconfig-015-20231215   clang
x86_64                randconfig-016-20231215   clang
x86_64                randconfig-071-20231215   clang
x86_64                randconfig-072-20231215   clang
x86_64                randconfig-073-20231215   clang
x86_64                randconfig-074-20231215   clang
x86_64                randconfig-075-20231215   clang
x86_64                randconfig-076-20231215   clang
x86_64                          rhel-8.3-rust   clang
xtensa                           allyesconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20231215   gcc  
xtensa                randconfig-002-20231215   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
