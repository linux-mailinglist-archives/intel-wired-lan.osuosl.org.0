Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A20A6EA2C8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 06:27:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D58BC42827;
	Fri, 21 Apr 2023 04:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D58BC42827
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682051241;
	bh=RxG5KU1b7ihm1sm7viurzlANs5St34BB3q3p45uzjbs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AIN0/ClL0022Po1w5C2wybTaeme2v/TAvSkGCZG0GbCeWg591x/koObtJHmLphSjl
	 fWuI5/9CsoxUmwNF6FbOnoczGm2QDJy23IAphdmNZcRSqV+A3UXzZklNDQpWsmj8M1
	 ppWp71PFdgY1XC63T2/zExCS04E2L8XvcT0AXmmBESfq9T3WfuDezRSzuKbZ2oWd/3
	 MzvRSqpI5Mz5BgRB5B7CurXfagOYTj9+ySkCI+0+2dyJGGJfEQ+Lo1019PaNt6dYgT
	 WykE8KGMlO8xAYrlbXoi7O2fPjJWJ6RdGk0VXQpjz6ifUPO40NRS7PWfYP5Ol89w5h
	 E6jGYc3WYKzdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pi1wlWP8KLyu; Fri, 21 Apr 2023 04:27:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C5A442791;
	Fri, 21 Apr 2023 04:27:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C5A442791
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D8FAB1BF33E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B056A6136B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B056A6136B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AJz1Z1x1kjEe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 04:27:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B88CC61382
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B88CC61382
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="334784510"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="334784510"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 21:27:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="816285589"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="816285589"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2023 21:27:03 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ppiMQ-000gJQ-2I;
 Fri, 21 Apr 2023 04:27:02 +0000
Date: Fri, 21 Apr 2023 12:26:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64421076.VByx4I3klKZ0dNrh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682051228; x=1713587228;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xhkt3Zu1nsnUNOtmx3pLve1vt2OvNQNT+0ZVgs32Tes=;
 b=itMcAPEl4y9YmkdqlB1h5CviEjRdl0Oi1t4YVat8SW8P7lxDUxxpUB+o
 j1ivL2ODMIEf78JlOiiH+RCwpHjBbfC41vjSJje6ljRGwoMqUiDk/gV3D
 jx1zV7pgCCoXiyqRB8fwlgwaGC4fMiswVrCBidmBiyR98kc561opXe+hY
 H59UEmQEMMh+Bru/AZnc5GxKO4vXHEZOU2sdqwZZtnNQDrIzjCOt3oq/7
 IX+f4BnpAluhV+z6HQLqxxU0HyWYFTukf/5Q6PNnCF60yTPePPksl00S8
 iRnvPZIhBk4pbUprZ6oY5eJmIyQ47emBEtq0mbeUzb1GRxqfJgjGw4bcu
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=itMcAPEl
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 e315e7b83a22043bffee450437d7089ef373cbf6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: e315e7b83a22043bffee450437d7089ef373cbf6  net: libwx: fix memory leak in wx_setup_rx_resources

elapsed time: 874m

configs tested: 109
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230419   gcc  
alpha        buildonly-randconfig-r003-20230417   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230416   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230416   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230416   gcc  
arc                  randconfig-r043-20230417   gcc  
arc                  randconfig-r043-20230419   gcc  
arc                  randconfig-r043-20230420   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230418   clang
arm                                 defconfig   gcc  
arm                  randconfig-r023-20230416   clang
arm                  randconfig-r046-20230416   clang
arm                  randconfig-r046-20230417   gcc  
arm                  randconfig-r046-20230419   gcc  
arm                  randconfig-r046-20230420   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r015-20230417   clang
arm64                randconfig-r022-20230416   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r024-20230416   gcc  
hexagon      buildonly-randconfig-r005-20230416   clang
hexagon              randconfig-r012-20230417   clang
hexagon              randconfig-r016-20230417   clang
hexagon              randconfig-r041-20230416   clang
hexagon              randconfig-r041-20230417   clang
hexagon              randconfig-r041-20230419   clang
hexagon              randconfig-r041-20230420   clang
hexagon              randconfig-r045-20230416   clang
hexagon              randconfig-r045-20230417   clang
hexagon              randconfig-r045-20230419   clang
hexagon              randconfig-r045-20230420   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230417   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-r022-20230417   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230416   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230416   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r024-20230417   gcc  
m68k                 randconfig-r026-20230417   gcc  
microblaze   buildonly-randconfig-r004-20230418   gcc  
microblaze   buildonly-randconfig-r006-20230418   gcc  
microblaze   buildonly-randconfig-r006-20230419   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230418   gcc  
mips         buildonly-randconfig-r003-20230419   clang
mips                 randconfig-r012-20230416   clang
mips                 randconfig-r014-20230417   gcc  
mips                 randconfig-r025-20230417   gcc  
nios2        buildonly-randconfig-r002-20230417   gcc  
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r002-20230416   gcc  
openrisc     buildonly-randconfig-r006-20230416   gcc  
openrisc             randconfig-r011-20230417   gcc  
parisc       buildonly-randconfig-r005-20230417   gcc  
parisc       buildonly-randconfig-r005-20230418   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r026-20230416   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230419   clang
riscv                               defconfig   gcc  
riscv                randconfig-r016-20230416   gcc  
riscv                randconfig-r042-20230416   gcc  
riscv                randconfig-r042-20230417   clang
riscv                randconfig-r042-20230419   clang
riscv                randconfig-r042-20230420   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230416   gcc  
s390                 randconfig-r044-20230417   clang
s390                 randconfig-r044-20230419   clang
s390                 randconfig-r044-20230420   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r011-20230416   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r023-20230417   gcc  
sparc64      buildonly-randconfig-r004-20230419   gcc  
sparc64              randconfig-r021-20230416   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a006-20230417   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230417   gcc  
xtensa       buildonly-randconfig-r002-20230418   gcc  
xtensa               randconfig-r015-20230416   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
