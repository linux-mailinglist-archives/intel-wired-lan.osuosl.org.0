Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E137064CD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 12:00:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC15B4044D;
	Wed, 17 May 2023 10:00:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC15B4044D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684317625;
	bh=BgK7Zal5H5cH0feG2zIcCyC7KprjATXUP37xl9nSbHg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SFC6nMIma2+VrPbyGg3dlquv3QM0hNlInfJv2p6T2JtQhWMhma5xbZiqlf9u1qJh8
	 /QQ2tk+yc/71VDTjStF3EE+QfHGkUTrmVE4nfPW05X3OwdBW8Xu67I4ettgWy7sAFY
	 ZLNn8+FJC8958yaGKfJu5SKfyFvPe+h6dBC/8O/0lOUv4wwpojM/ii8D2phFCv5paR
	 d9fAivhX66mrv/du10JynikHnJb6SWeigvoGvPOo+uyo7SBhXRSQcKk0CfbQnHREqI
	 UmgHBSUX9b5dYEi1Hu4MT+/4SCEq8GWDFk0EyfjeUOSikp6xCK34o16y8fH4Per89s
	 9O673klhuj/+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z9qleabXmzKg; Wed, 17 May 2023 10:00:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEF1E40533;
	Wed, 17 May 2023 10:00:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEF1E40533
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 819141BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 10:00:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56CA641F04
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 10:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56CA641F04
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mtZT1NIXWqoL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 10:00:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4D2B41EF4
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4D2B41EF4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 10:00:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="415128607"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="415128607"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 03:00:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="1031650247"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="1031650247"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 17 May 2023 03:00:15 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pzDx9-0008m9-00
 for intel-wired-lan@lists.osuosl.org; Wed, 17 May 2023 10:00:15 +0000
Date: Wed, 17 May 2023 17:59:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230517095959.VTP2S%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684317617; x=1715853617;
 h=date:from:to:subject:message-id;
 bh=YkRod41PSBrykahguDya07qO/o7IzWaYF92cK7+9EM4=;
 b=m55OpM6NiYn5QIrJGfUOHwnEGiYIvFIV2g9LAbvUigjUBoB6Wqu4AMSK
 SCZkkVmolGEbMu86pD39neWOkTExFQa8iQ/YeJ7bQJVYrqi3jgFk0zo9/
 MA6MIaR6MA1K1+zhU1VOmpaRBzaTDJSBehT+dzeEYA/8UpL/7nSZHuqFM
 5w5XZD+EF9CS/WI/wvK0Tfqk6dHzmpR02ZmTtWi/IzKFAQ8Pd8QEB20xP
 z/vKHHF9LJ7xHX4YN4NLh2JDrlKksdcbIxGbGRDrEtx3wEUUZ0NGx6D05
 CLUb5bBBEKdF+F76gWMl+mtd7HCejYZAEQxuX13CLK1wUAIRimwHHYWih
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m55OpM6N
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 906e56b96462dca54470898fb43316c0d21e496b
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

tree/branch: INFO setup_repo_specs: /db/releases/20230517165648/lkp-src/repo/*/tnguy-next-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 906e56b96462dca54470898fb43316c0d21e496b  ice: Remove LAG+SRIOV mutual exclusion

elapsed time: 728m

configs tested: 164
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230515   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r015-20230516   gcc  
arc                  randconfig-r043-20230515   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r022-20230516   gcc  
arm                  randconfig-r025-20230515   clang
arm                  randconfig-r046-20230515   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230515   clang
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230517   clang
arm64                randconfig-r003-20230515   clang
arm64                randconfig-r004-20230517   clang
arm64                randconfig-r026-20230515   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230515   gcc  
csky                 randconfig-r012-20230516   gcc  
hexagon              randconfig-r016-20230516   clang
hexagon              randconfig-r021-20230515   clang
hexagon              randconfig-r023-20230515   clang
hexagon              randconfig-r041-20230515   clang
hexagon              randconfig-r045-20230515   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230515   clang
i386                 randconfig-a002-20230515   clang
i386                 randconfig-a003-20230515   clang
i386                 randconfig-a004-20230515   clang
i386                 randconfig-a005-20230515   clang
i386                 randconfig-a006-20230515   clang
i386                 randconfig-a011-20230515   gcc  
i386                 randconfig-a012-20230515   gcc  
i386                 randconfig-a013-20230515   gcc  
i386                 randconfig-a014-20230515   gcc  
i386                 randconfig-a015-20230515   gcc  
i386                 randconfig-a016-20230515   gcc  
i386                 randconfig-i051-20230515   clang
i386                 randconfig-i052-20230515   clang
i386                 randconfig-i053-20230515   clang
i386                 randconfig-i054-20230515   clang
i386                 randconfig-i055-20230515   clang
i386                 randconfig-i056-20230515   clang
i386                          randconfig-i071   clang
i386                          randconfig-i072   gcc  
i386                          randconfig-i073   clang
i386                          randconfig-i074   gcc  
i386                          randconfig-i075   clang
i386                          randconfig-i076   gcc  
i386                          randconfig-i081   gcc  
i386                          randconfig-i082   clang
i386                          randconfig-i083   gcc  
i386                          randconfig-i084   clang
i386                          randconfig-i085   gcc  
i386                          randconfig-i086   clang
i386                 randconfig-i091-20230515   clang
i386                 randconfig-i092-20230515   clang
i386                 randconfig-i093-20230515   clang
i386                 randconfig-i094-20230515   clang
i386                 randconfig-r006-20230515   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r004-20230515   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r036-20230516   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230516   gcc  
loongarch    buildonly-randconfig-r002-20230515   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230516   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230517   gcc  
m68k                 randconfig-r006-20230517   gcc  
m68k                 randconfig-r025-20230516   gcc  
m68k                 randconfig-r032-20230516   gcc  
m68k                 randconfig-r035-20230516   gcc  
microblaze           randconfig-r005-20230517   gcc  
microblaze           randconfig-r024-20230515   gcc  
microblaze           randconfig-r026-20230516   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r005-20230515   gcc  
mips                 randconfig-r022-20230515   clang
mips                 randconfig-r034-20230516   clang
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230517   gcc  
openrisc     buildonly-randconfig-r002-20230516   gcc  
openrisc             randconfig-r033-20230516   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r031-20230516   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r006-20230516   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230516   clang
riscv                randconfig-r042-20230515   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r004-20230516   clang
s390                                defconfig   gcc  
s390                 randconfig-r023-20230516   clang
s390                 randconfig-r044-20230515   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r011-20230516   gcc  
sh                   randconfig-r013-20230516   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r024-20230516   gcc  
sparc64              randconfig-r006-20230517   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64               randconfig-x051-20230515   gcc  
x86_64               randconfig-x052-20230515   gcc  
x86_64               randconfig-x053-20230515   gcc  
x86_64               randconfig-x054-20230515   gcc  
x86_64               randconfig-x055-20230515   gcc  
x86_64               randconfig-x056-20230515   gcc  
x86_64               randconfig-x061-20230515   gcc  
x86_64               randconfig-x062-20230515   gcc  
x86_64               randconfig-x063-20230515   gcc  
x86_64               randconfig-x064-20230515   gcc  
x86_64               randconfig-x065-20230515   gcc  
x86_64               randconfig-x066-20230515   gcc  
x86_64               randconfig-x071-20230515   clang
x86_64               randconfig-x072-20230515   clang
x86_64               randconfig-x073-20230515   clang
x86_64               randconfig-x074-20230515   clang
x86_64               randconfig-x075-20230515   clang
x86_64               randconfig-x076-20230515   clang
x86_64               randconfig-x081-20230515   clang
x86_64               randconfig-x082-20230515   clang
x86_64               randconfig-x083-20230515   clang
x86_64               randconfig-x091-20230515   gcc  
x86_64               randconfig-x092-20230515   gcc  
x86_64               randconfig-x093-20230515   gcc  
x86_64               randconfig-x094-20230515   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230515   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
