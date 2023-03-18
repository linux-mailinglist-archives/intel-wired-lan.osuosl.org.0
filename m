Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EE16BF877
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Mar 2023 08:26:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F49C41C0A;
	Sat, 18 Mar 2023 07:26:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F49C41C0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679124413;
	bh=K2plT0p85vWOSlEFPgM67XvROdR7sAVAg5lpv0Tcu7c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Gyyk/k9ieyB8quoIRZt6MrxDhMxgadRaKcOYSQNZx9ifPUqOwuAMYww/BUXAo7ODL
	 QiBybcmPsGNgZlW7ri2p7MbLB7El7Q7aNDz3nV5zYN0sYMyvrDZN39Qq2lJJH5yyY2
	 hfhkURKmN2sWuHVqjzdaDSkEezocKqIZ/A6TdkLXJyq5eAd03lDngJAkUG+AkHRf/J
	 xb6FM5kURIU+l6LLqVsuGfmfCIKloletcFXcqEqgZroS4hvwIn03efIpdWyw1+HkCj
	 acdh7oE3qpw11eb5FCdaCmJlTFDCgH9wYqM6PTxVyOjh/ras/3qu2bnna10tTm7c0z
	 YS0Ns2nwWb4ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t27CrFMszyVG; Sat, 18 Mar 2023 07:26:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B35741BF0;
	Sat, 18 Mar 2023 07:26:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B35741BF0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9F2A1BF588
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Mar 2023 07:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9A6D60B65
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Mar 2023 07:26:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9A6D60B65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MT6zgTofACV1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Mar 2023 07:26:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B98D60AFD
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8B98D60AFD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Mar 2023 07:26:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="424689886"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="424689886"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2023 00:26:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="630535030"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="630535030"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 18 Mar 2023 00:26:42 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pdQxY-0009u0-36;
 Sat, 18 Mar 2023 07:26:36 +0000
Date: Sat, 18 Mar 2023 15:26:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64156799.5OYlMETfgNQajnm8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679124404; x=1710660404;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GyNFk1pavun8in7clrmJkeRFkMgf5vdCcVQH9jcMEAY=;
 b=TgR157ajdtNDR/3OtzS1JD6hUjDRIIIDGwG/pFAH6/CIry9/EVXuzpCW
 L+8xU8F5CxTO5yCr7Pbut7IdHx2RSq9iK/dBz+4K6Jqj8JuHJ7TR+x5gv
 6iZHglxxySkY8BF2IWgcYEZgJoOC8N4cRrhTEIHUoAo9dypuS8vHNlFvW
 J81h/SQoWAZLrSUnzVC9EgEADkzGY1NDYym+Hsu0Iq4JYpYiWXH2A2vI0
 SE9kGHbgqdd3X9YLMN/tcNM9E7s3bQ1rb9+iECbLQUTeP+B20eHBMRAfv
 8eby6nfo8qhLazN9aFYrZrEpmwtOYtoL0AmpHD0DzEa43uTLXQbhx72pw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TgR157aj
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 f3c2b472377ca0b45ef0ae86b89c247340459720
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: f3c2b472377ca0b45ef0ae86b89c247340459720  ice: identify aRFS flows using L3/L4 dissector info

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202303181356.6AePiBhC-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/net/ethernet/intel/ice/ice.h:888:1: warning: no previous prototype for 'ice_pf_fwlog_update_modules' [-Wmissing-prototypes]
drivers/net/ethernet/intel/ice/ice_main.c:4561:5: error: redefinition of 'ice_pf_fwlog_update_modules'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- riscv-randconfig-r042-20230318
    |-- drivers-net-ethernet-intel-ice-ice.h:warning:no-previous-prototype-for-ice_pf_fwlog_update_modules
    `-- drivers-net-ethernet-intel-ice-ice_main.c:error:redefinition-of-ice_pf_fwlog_update_modules

elapsed time: 723m

configs tested: 144
configs skipped: 9

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230312   gcc  
alpha                randconfig-r026-20230312   gcc  
alpha                randconfig-r034-20230313   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230312   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                         nhk8815_defconfig   gcc  
arm                  randconfig-r001-20230312   gcc  
arm                  randconfig-r036-20230312   gcc  
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230313   gcc  
csky         buildonly-randconfig-r005-20230313   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230313   gcc  
csky                 randconfig-r025-20230313   gcc  
hexagon              randconfig-r023-20230313   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386                         debian-10.3-func   gcc  
i386                   debian-10.3-kselftests   gcc  
i386                        debian-10.3-kunit   gcc  
i386                          debian-10.3-kvm   gcc  
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
i386                          randconfig-c001   gcc  
i386                 randconfig-r032-20230313   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230313   gcc  
ia64         buildonly-randconfig-r003-20230313   gcc  
ia64         buildonly-randconfig-r005-20230312   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r032-20230313   gcc  
ia64                 randconfig-r036-20230313   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch            randconfig-r031-20230313   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230312   gcc  
m68k                 randconfig-r011-20230312   gcc  
m68k                 randconfig-r031-20230313   gcc  
m68k                 randconfig-r033-20230313   gcc  
m68k                 randconfig-r034-20230313   gcc  
microblaze           randconfig-r021-20230313   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230312   gcc  
mips                         db1xxx_defconfig   gcc  
mips                           gcw0_defconfig   gcc  
mips                 randconfig-r002-20230312   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r022-20230312   gcc  
nios2                randconfig-r032-20230312   gcc  
openrisc             randconfig-r035-20230313   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r013-20230312   gcc  
parisc               randconfig-r025-20230312   gcc  
parisc               randconfig-r033-20230312   gcc  
parisc               randconfig-r036-20230313   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                mpc7448_hpc2_defconfig   gcc  
powerpc                 mpc8540_ads_defconfig   gcc  
powerpc              randconfig-r005-20230312   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230312   gcc  
riscv                randconfig-r022-20230313   clang
riscv                randconfig-r024-20230312   gcc  
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230313   gcc  
s390                 randconfig-r026-20230313   clang
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230312   gcc  
sh                   randconfig-r015-20230312   gcc  
sh                   randconfig-r024-20230313   gcc  
sh                   randconfig-r035-20230312   gcc  
sparc        buildonly-randconfig-r002-20230312   gcc  
sparc        buildonly-randconfig-r004-20230313   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r035-20230313   gcc  
sparc64      buildonly-randconfig-r002-20230313   gcc  
sparc64              randconfig-r006-20230312   gcc  
sparc64              randconfig-r034-20230312   gcc  
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
x86_64               randconfig-a011-20230313   clang
x86_64               randconfig-a012-20230313   clang
x86_64               randconfig-a013-20230313   clang
x86_64               randconfig-a014-20230313   clang
x86_64               randconfig-a015-20230313   clang
x86_64               randconfig-a016-20230313   clang
x86_64               randconfig-k001-20230313   clang
x86_64               randconfig-r002-20230313   gcc  
x86_64               randconfig-r033-20230313   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r006-20230313   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
