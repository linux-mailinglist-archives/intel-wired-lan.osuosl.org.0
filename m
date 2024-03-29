Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1083989173D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 11:58:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A021960EDC;
	Fri, 29 Mar 2024 10:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aBhQpUQeO_Yo; Fri, 29 Mar 2024 10:58:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D92160EDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711709931;
	bh=lXb1U2PwAqy1dApS9PHmdJGrSLmKLW58aQN5L4kQaMM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eAc1MVCxqOqzQUaTDwSqqEn6u+63yqylytLBei0fOAItM+21geBs0qp0GwlUNBPLu
	 MWpQUO+FHVAm4/cHlY0+ViVQpWCbLWcvdHzGQxHARo55LEZadiBFTOeMoCPX/+GyBs
	 jcM0H7N6JLOL1TAlnqFVaxianX0Cudi/3m0g/l+KQRq9tDaGKm2JbPNg4ov9+o0bh/
	 8xdKcu/wUPRqCc3TbtlS0fNISr/z4vuXnHbmHgWzvxQiHleDIg7YNYJ35+wOwS1jXK
	 hDJVFBWoQxOGYO1pBKjQjXwoZYZb9Xgdi7Fk2zPhTXV9U0NhT2Z8Xwcqy3NKGwvf4H
	 9WNT/WZhMTjDg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D92160EDE;
	Fri, 29 Mar 2024 10:58:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C96E71BF311
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 10:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4AAB820C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 10:58:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XRRWn2pJNcwb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 10:58:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7276981EE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7276981EE8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7276981EE8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 10:58:46 +0000 (UTC)
X-CSE-ConnectionGUID: FI4D6Nf3Suu+vJR7Y5pVJg==
X-CSE-MsgGUID: X/ZlVckORLCGYDVzBiuhNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6791229"
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; 
   d="scan'208";a="6791229"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 03:58:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="21683276"
Received: from lkp-server01.sh.intel.com (HELO be39aa325d23) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 29 Mar 2024 03:58:46 -0700
Received: from kbuild by be39aa325d23 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rq9wZ-00037c-0Q
 for intel-wired-lan@lists.osuosl.org; Fri, 29 Mar 2024 10:58:43 +0000
Date: Fri, 29 Mar 2024 18:58:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403291839.F7pu9CgY-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711709928; x=1743245928;
 h=date:from:to:subject:message-id;
 bh=4gv9l11U02/VBPGTlX/uXh9ED7QviGBs8ePO6CuOkT0=;
 b=UoBBZsrvouLeT464W/hLG9NJ1CETnUJrkMRoZyNz4EK243LflnzUqFKT
 V24t8y6BKM/m2x4Pd0hHLUFCXlDIhJ/6V4h/I+cnZTw0Ti/SK1Av71u7E
 pLXKMBeHsWfwLkZaRiozHHOnuP1aZTuc+YjkVxjIT1jHnTvA8o+9s681Q
 m6QWxqJJyvUCpktLk6ERd5KSnzAHhG9sLWr1qgoqCv9yQ/jEsv5mXhBAJ
 oxqNFeYN+/yF8YZZn1Vc5Aa7sVEMhscqWr5vc5jzqJtKk7ORAIU6wJFJz
 D3zzbqa5ztwwcE9Ukq9hJrFLpwFXEGz7rzF9/D1WG+z/6DlnjRQsJE8Ol
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UoBBZsrv
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f93ea9eac75a7fa76bd941a541cd4ecd6bfecb48
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: f93ea9eac75a7fa76bd941a541cd4ecd6bfecb48  i40e: Report MFS in decimal base instead of hex

elapsed time: 794m

configs tested: 155
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
arc                   randconfig-001-20240329   gcc  
arc                   randconfig-002-20240329   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240329   gcc  
arm                   randconfig-002-20240329   clang
arm                   randconfig-003-20240329   clang
arm                   randconfig-004-20240329   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240329   gcc  
arm64                 randconfig-002-20240329   clang
arm64                 randconfig-003-20240329   clang
arm64                 randconfig-004-20240329   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240329   gcc  
csky                  randconfig-002-20240329   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240329   clang
hexagon               randconfig-002-20240329   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240329   gcc  
i386         buildonly-randconfig-002-20240329   clang
i386         buildonly-randconfig-003-20240329   clang
i386         buildonly-randconfig-004-20240329   clang
i386         buildonly-randconfig-005-20240329   clang
i386         buildonly-randconfig-006-20240329   clang
i386                                defconfig   clang
i386                  randconfig-001-20240329   clang
i386                  randconfig-002-20240329   clang
i386                  randconfig-003-20240329   clang
i386                  randconfig-004-20240329   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240329   gcc  
loongarch             randconfig-002-20240329   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240329   gcc  
nios2                 randconfig-002-20240329   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240329   gcc  
parisc                randconfig-002-20240329   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240329   clang
powerpc               randconfig-002-20240329   gcc  
powerpc               randconfig-003-20240329   clang
powerpc64             randconfig-001-20240329   gcc  
powerpc64             randconfig-002-20240329   clang
powerpc64             randconfig-003-20240329   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240329   gcc  
riscv                 randconfig-002-20240329   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240329   clang
s390                  randconfig-002-20240329   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240329   gcc  
sh                    randconfig-002-20240329   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240329   gcc  
sparc64               randconfig-002-20240329   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240329   clang
um                    randconfig-002-20240329   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240329   clang
x86_64       buildonly-randconfig-002-20240329   gcc  
x86_64       buildonly-randconfig-003-20240329   gcc  
x86_64       buildonly-randconfig-004-20240329   clang
x86_64       buildonly-randconfig-005-20240329   gcc  
x86_64       buildonly-randconfig-006-20240329   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240329   gcc  
x86_64                randconfig-002-20240329   gcc  
x86_64                randconfig-003-20240329   clang
x86_64                randconfig-004-20240329   gcc  
x86_64                randconfig-005-20240329   clang
x86_64                randconfig-006-20240329   gcc  
x86_64                randconfig-011-20240329   clang
x86_64                randconfig-012-20240329   gcc  
x86_64                randconfig-013-20240329   clang
x86_64                randconfig-014-20240329   clang
x86_64                randconfig-015-20240329   gcc  
x86_64                randconfig-016-20240329   clang
x86_64                randconfig-071-20240329   gcc  
x86_64                randconfig-072-20240329   gcc  
x86_64                randconfig-073-20240329   clang
x86_64                randconfig-074-20240329   gcc  
x86_64                randconfig-075-20240329   clang
x86_64                randconfig-076-20240329   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240329   gcc  
xtensa                randconfig-002-20240329   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
