Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 846346B8B45
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 07:34:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 010CF61014;
	Tue, 14 Mar 2023 06:34:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 010CF61014
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678775670;
	bh=BjPTxFC49tLPXqyvNVrrNybe+fwge0aKvGhZfe6VuBQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jaOfPgwznYrwTTw7YZbZUN2GGPKPJLDkofg4l1maeWcQf5UZGMT+FtrPfq26Vp30z
	 D9ZoDkPUjagplml6PI+7NdyHzLzzyRXwDL9e+ap6KgddFlHu75AzqQW1VS8dlpea60
	 aehugNuPYp/PkSNERFncisHvjgVRoQQyLS0jM8I3g2z1iqEA8dCvbnHMlQiWGU5r8Q
	 gtHgKA6o275EQh0xPiGKTn6IE7eRmYYCAL1PcGfQItTdO1PlJlbI6qeDtvNrF8ZzL3
	 LPaJgacLHCyQbsSwtrVG/MR4pFayv8DHJliep51j/6i+NBPa0zrb/kFyJh3+F58Kkq
	 t1lKIaoUyMVzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EnWgGskkc8ji; Tue, 14 Mar 2023 06:34:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD42E60E83;
	Tue, 14 Mar 2023 06:34:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD42E60E83
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 075231BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 06:34:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDF1B8194A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 06:34:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDF1B8194A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w44P48YgVWIr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 06:34:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4351812FC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4351812FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 06:34:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="334822441"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="334822441"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 23:34:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="924796346"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="924796346"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 13 Mar 2023 23:34:21 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pbyEm-0006cf-2p;
 Tue, 14 Mar 2023 06:34:20 +0000
Date: Tue, 14 Mar 2023 14:34:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64101567.kKXEcVjrbbIiG9hQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678775662; x=1710311662;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=cawUF7SQgyugbp0bou+nFE3+XR4ZJJqfVOFQKZL+WyU=;
 b=JJSL+U8Td2TQTxtTiW+Mgm+9Cibm13RKQ8plwwha8uRs1BJlj6997Kou
 fhAZ23zJAEOa5oUcuhZJPGRhEyNXN6dN08W5u7Q9ZLX9FxcwPRhI/EEry
 QFaUkjzmrYv3wMA2atlZdQ394hPLzikH8rizXdqrt2uJrBJT3PjCjfOwY
 xOqA7AxptyKgWIkWjWzmfjle6xoqBSRAGFth+GaJ1EcfNGgqaiPewFRG9
 N9VjDrb1ei7ME7CQOtqNmTTBUxgTTW2o7gZkgUff/6+ISpaiX9RSFNAYR
 djFowEiFIjDcS6/TCmoU3zI/t0W2HbZbtfEYvPAq68dyvNyV9vCT63b4v
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JJSL+U8T
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 be96815c616822d3800405b8fbebe3e069d6eed2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: be96815c616822d3800405b8fbebe3e069d6eed2  ice: call ice_is_malicious_vf() from ice_vc_process_vf_msg()

elapsed time: 728m

configs tested: 115
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230314   gcc  
alpha                randconfig-r004-20230314   gcc  
alpha                randconfig-r016-20230312   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r023-20230313   gcc  
arc                  randconfig-r031-20230313   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r032-20230313   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r022-20230313   gcc  
csky                 randconfig-r023-20230312   gcc  
csky                 randconfig-r025-20230313   gcc  
hexagon              randconfig-r012-20230313   clang
hexagon              randconfig-r016-20230313   clang
hexagon              randconfig-r022-20230312   clang
hexagon              randconfig-r033-20230313   clang
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
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r003-20230312   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230312   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r011-20230313   gcc  
m68k                 randconfig-r013-20230312   gcc  
microblaze   buildonly-randconfig-r005-20230312   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r015-20230312   clang
mips                 randconfig-r025-20230312   clang
nios2        buildonly-randconfig-r006-20230312   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r036-20230313   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r021-20230313   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r011-20230312   gcc  
powerpc              randconfig-r013-20230313   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230312   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r024-20230313   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r002-20230313   gcc  
sparc64              randconfig-r014-20230312   gcc  
sparc64              randconfig-r014-20230313   gcc  
sparc64              randconfig-r021-20230312   gcc  
sparc64              randconfig-r026-20230312   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64               randconfig-a002-20230313   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64               randconfig-a004-20230313   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64               randconfig-a006-20230313   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64               randconfig-r026-20230313   clang
x86_64               randconfig-r035-20230313   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230313   gcc  
xtensa               randconfig-r015-20230313   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
