Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E943D6B8B46
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 07:34:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 093C661027;
	Tue, 14 Mar 2023 06:34:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 093C661027
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678775674;
	bh=Y1Y6Nyi8VVBZGDzg9OgJrT3pYS2mqwl/i+oi2d3OToE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=05vyoFwKpsDBk4Nwfd5AL0y60cN3mq0M3l96AQfzOvSoQ3cZrn1zuTMhPRRQWB3+q
	 lylfTPEWZ1eE3SJxOPa5mh3birppzzTvTBqyLwf0BwIFieCIG4hd7lGaK9htOmtxPZ
	 X0OLaMgawkfMXOgR7UB3zv5GMwL/q14CoqVSSXyVL5mSBx8gNdcB/UkeyJ1b2TsqY7
	 GCPU41HXCXAx9gHKEQ9mOfUAp01+I9KVRmvaTSjYb+g1+Sux324qqt7/E9J4NsE8t8
	 ABSKOixY/FOQqZ4xrU1HWnMoJScWfwvgT/9EwGYdIgoAxBE+vqkwfwfLDcrP3uVv2s
	 vmAAkJJrImlEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qD2_X8m_mWAS; Tue, 14 Mar 2023 06:34:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6D4960E83;
	Tue, 14 Mar 2023 06:34:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6D4960E83
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC5E71BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 06:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11440812FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 06:34:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11440812FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R1iHOksSQnaE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 06:34:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05B1A81404
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05B1A81404
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 06:34:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="334822443"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="334822443"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 23:34:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="924796349"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="924796349"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 13 Mar 2023 23:34:21 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pbyEn-0006cl-03;
 Tue, 14 Mar 2023 06:34:21 +0000
Date: Tue, 14 Mar 2023 14:34:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6410155e.l73hJECVtOdzbYcF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678775663; x=1710311663;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uvF64NuCDaJzM5+4/DyVtnkKvKpibTXxhsjXIM8aqSA=;
 b=Gw9Gl65oAZPj2XNG9TQehGad2F4RPJVP9NLWJyk+xSE7+nAQEYsnezUc
 AwChBy0qcjTTGvnaBmFIWQZB6UYkfiNV9wbNsziYvq5lEZJbwI9BRgRh3
 QV0S/fzZfkagy+T1+UFCZhcTfFcmFbwqbnCGZQ7IH/B/g0BgTzLHGokB6
 2lXrO7Dyf6ubeXxl/coNm4wfIeLc1arxbjvnRDsoxgUeevMSSBI5s87xd
 BzHT8vjfE9eSwEbwnoiS1SV3uhFz6oVplRNrwaJQSzE13p5HwDOSLI5uR
 lUtONrarIltbagKQjSfPrvxiHzOCT50CtnKbAnOa8Y0wlzHV1NC5Coz7N
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gw9Gl65o
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 62dd459e9c96463bdcb8d2d171cebe88ee0a37f2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 62dd459e9c96463bdcb8d2d171cebe88ee0a37f2  ice: check if VF exists before mode check

elapsed time: 727m

configs tested: 132
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230312   gcc  
alpha                randconfig-r011-20230313   gcc  
alpha                randconfig-r016-20230313   gcc  
alpha                randconfig-r025-20230312   gcc  
alpha                randconfig-r026-20230313   gcc  
alpha                randconfig-r031-20230313   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230312   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r014-20230312   gcc  
arc                  randconfig-r036-20230312   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230312   clang
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230312   gcc  
arm                  randconfig-r021-20230312   clang
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230313   gcc  
arm64                randconfig-r014-20230313   clang
csky         buildonly-randconfig-r005-20230313   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230313   gcc  
csky                 randconfig-r026-20230312   gcc  
hexagon      buildonly-randconfig-r006-20230313   clang
hexagon              randconfig-r033-20230312   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230313   gcc  
i386                 randconfig-a002-20230313   gcc  
i386                 randconfig-a003-20230313   gcc  
i386                 randconfig-a004-20230313   gcc  
i386                 randconfig-a005-20230313   gcc  
i386                 randconfig-a006-20230313   gcc  
i386                 randconfig-a011-20230313   clang
i386                 randconfig-a012-20230313   clang
i386                 randconfig-a013-20230313   clang
i386                 randconfig-a014-20230313   clang
i386                 randconfig-a015-20230313   clang
i386                 randconfig-a016-20230313   clang
i386                 randconfig-r032-20230313   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230313   gcc  
ia64         buildonly-randconfig-r003-20230313   gcc  
ia64         buildonly-randconfig-r005-20230312   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r013-20230313   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r033-20230313   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230312   gcc  
m68k                 randconfig-r025-20230313   gcc  
microblaze           randconfig-r035-20230313   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230312   gcc  
mips                 randconfig-r002-20230312   gcc  
mips                 randconfig-r022-20230312   clang
nios2                               defconfig   gcc  
nios2                randconfig-r013-20230312   gcc  
nios2                randconfig-r023-20230313   gcc  
openrisc             randconfig-r015-20230312   gcc  
openrisc             randconfig-r023-20230312   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r036-20230313   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r005-20230312   clang
powerpc              randconfig-r012-20230312   gcc  
powerpc              randconfig-r012-20230313   clang
powerpc              randconfig-r032-20230312   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230313   gcc  
s390                 randconfig-r015-20230313   clang
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230312   gcc  
sh                   randconfig-r016-20230312   gcc  
sh                   randconfig-r021-20230313   gcc  
sh                   randconfig-r034-20230312   gcc  
sparc        buildonly-randconfig-r002-20230312   gcc  
sparc        buildonly-randconfig-r004-20230313   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r024-20230312   gcc  
sparc                randconfig-r034-20230313   gcc  
sparc                randconfig-r035-20230312   gcc  
sparc64      buildonly-randconfig-r002-20230313   gcc  
sparc64              randconfig-r006-20230312   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a011-20230313   clang
x86_64               randconfig-a012-20230313   clang
x86_64               randconfig-a013-20230313   clang
x86_64               randconfig-a014-20230313   clang
x86_64               randconfig-a015-20230313   clang
x86_64               randconfig-a016-20230313   clang
x86_64               randconfig-r002-20230313   gcc  
x86_64               randconfig-r022-20230313   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r006-20230313   gcc  
xtensa               randconfig-r011-20230312   gcc  
xtensa               randconfig-r024-20230313   gcc  
xtensa               randconfig-r031-20230312   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
