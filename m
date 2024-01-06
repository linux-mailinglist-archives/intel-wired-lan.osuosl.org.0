Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A31B82625D
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Jan 2024 00:10:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B12E860F19;
	Sat,  6 Jan 2024 23:10:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B12E860F19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704582617;
	bh=OI/FFBcPPzc/V09p+P0CINhnT2h5oiUfs7Ea6dD75cI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VXj3mlOCUhwvSaYm8xQNMIFDWtqKntpQoFvGU2NMYkgCZTxME91To6S0KMBrhdvDv
	 6EskTrnEteiZW25fbryCkqoRj1P2llkLnj100miCTGxAV+S74EyFUlK09PrbHiHihg
	 juVyTVlDVr97Hoq8e5n8S0PPz0PsNSJmzHWuDsWA2VptKD4rr3hFyOPc4ZBCKHIBW4
	 XQgdu0CUoCaq+mKe/FUV3lEMUf25ghifknwWJ94VjjDIm/1Wjg+07pnGJmF9hjTo+n
	 8y0qkaBi8Tkd5Ck5RrG8rV4EY2swB2OpJyycekmyqpo2HYyV7dXpPoKXmo4Bfu752t
	 p/NiRgcY5sNBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T-RDKRUtLbzG; Sat,  6 Jan 2024 23:10:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6774260B74;
	Sat,  6 Jan 2024 23:10:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6774260B74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9BE881BF36E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jan 2024 23:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74CA641E7F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jan 2024 23:10:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74CA641E7F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iDUeDYixpMrP for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Jan 2024 23:10:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D720B41E75
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jan 2024 23:10:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D720B41E75
X-IronPort-AV: E=McAfee;i="6600,9927,10945"; a="397409683"
X-IronPort-AV: E=Sophos;i="6.04,338,1695711600"; d="scan'208";a="397409683"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2024 15:10:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10945"; a="1028067861"
X-IronPort-AV: E=Sophos;i="6.04,338,1695711600"; d="scan'208";a="1028067861"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jan 2024 15:09:59 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rMFng-00038S-21
 for intel-wired-lan@lists.osuosl.org; Sat, 06 Jan 2024 23:09:56 +0000
Date: Sun, 07 Jan 2024 07:09:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401070735.by9pqIQb-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704582605; x=1736118605;
 h=date:from:to:subject:message-id;
 bh=NTji/jCADUgXC6YixPr27GDbMBo6g3taduGk/TeIsoY=;
 b=T4XI7XD1NOAJ2cuDaKcp1d7MGPFwJqXIRlljlYs9UaOAwf0y8oOCgylb
 7U38aVPLASB9yNqKdyH/LhT2mDbDzFgCXtaD3KDbSpPjnSM0TYi9y37MB
 QN6sV10pjJKgeFgJ2a69k9V6+aRP4FiWfun5q7TqoX87uEyTz4tupm3uP
 CfHpEiETneM0LSgqsxLTzP/6OvwBWo+48+syTXmhIvvpklWwu9ZVO4KSk
 E9wWxtPn3Jxbya1ryhGbP+mSb7K6/gVxBQec/R1C3xK2kSB4AxNMv3iLL
 DUnrqlzQDObPOi0EgjaCm3vFN4Nqjv6jfAZCIDH+xwPlZopexqAw+Pbes
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T4XI7XD1
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e0adf692f2371878794f6bb35571bdac59225e1d
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
branch HEAD: e0adf692f2371878794f6bb35571bdac59225e1d  e1000e: Workaround for sporadic MDI error on Meteor Lake systems

elapsed time: 1443m

configs tested: 158
configs skipped: 2

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
arc                   randconfig-001-20240106   gcc  
arc                   randconfig-002-20240106   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240106   gcc  
arm                   randconfig-002-20240106   gcc  
arm                   randconfig-003-20240106   gcc  
arm                   randconfig-004-20240106   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240106   gcc  
arm64                 randconfig-002-20240106   gcc  
arm64                 randconfig-003-20240106   gcc  
arm64                 randconfig-004-20240106   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240106   gcc  
csky                  randconfig-002-20240106   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240106   clang
hexagon               randconfig-002-20240106   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240106   gcc  
i386         buildonly-randconfig-002-20240106   gcc  
i386         buildonly-randconfig-003-20240106   gcc  
i386         buildonly-randconfig-004-20240106   gcc  
i386         buildonly-randconfig-005-20240106   gcc  
i386         buildonly-randconfig-006-20240106   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20240106   gcc  
i386                  randconfig-002-20240106   gcc  
i386                  randconfig-003-20240106   gcc  
i386                  randconfig-004-20240106   gcc  
i386                  randconfig-005-20240106   gcc  
i386                  randconfig-006-20240106   gcc  
i386                  randconfig-011-20240106   clang
i386                  randconfig-012-20240106   clang
i386                  randconfig-013-20240106   clang
i386                  randconfig-014-20240106   clang
i386                  randconfig-015-20240106   clang
i386                  randconfig-016-20240106   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240106   gcc  
loongarch             randconfig-002-20240106   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240106   gcc  
nios2                 randconfig-002-20240106   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240106   gcc  
parisc                randconfig-002-20240106   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240106   gcc  
powerpc               randconfig-002-20240106   gcc  
powerpc               randconfig-003-20240106   gcc  
powerpc64             randconfig-001-20240106   gcc  
powerpc64             randconfig-002-20240106   gcc  
powerpc64             randconfig-003-20240106   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240106   gcc  
riscv                 randconfig-002-20240106   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20240106   clang
s390                  randconfig-002-20240106   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240106   gcc  
sh                    randconfig-002-20240106   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240106   gcc  
sparc64               randconfig-002-20240106   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240106   gcc  
um                    randconfig-002-20240106   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240106   gcc  
x86_64       buildonly-randconfig-002-20240106   gcc  
x86_64       buildonly-randconfig-003-20240106   gcc  
x86_64       buildonly-randconfig-004-20240106   gcc  
x86_64       buildonly-randconfig-005-20240106   gcc  
x86_64       buildonly-randconfig-006-20240106   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240106   clang
x86_64                randconfig-002-20240106   clang
x86_64                randconfig-003-20240106   clang
x86_64                randconfig-004-20240106   clang
x86_64                randconfig-005-20240106   clang
x86_64                randconfig-006-20240106   clang
x86_64                randconfig-011-20240106   gcc  
x86_64                randconfig-012-20240106   gcc  
x86_64                randconfig-013-20240106   gcc  
x86_64                randconfig-014-20240106   gcc  
x86_64                randconfig-015-20240106   gcc  
x86_64                randconfig-016-20240106   gcc  
x86_64                randconfig-071-20240106   gcc  
x86_64                randconfig-072-20240106   gcc  
x86_64                randconfig-073-20240106   gcc  
x86_64                randconfig-074-20240106   gcc  
x86_64                randconfig-075-20240106   gcc  
x86_64                randconfig-076-20240106   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240106   gcc  
xtensa                randconfig-002-20240106   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
