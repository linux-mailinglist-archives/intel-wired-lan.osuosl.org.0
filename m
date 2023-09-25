Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B403E7ACE3C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Sep 2023 04:38:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E9D060F62;
	Mon, 25 Sep 2023 02:38:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E9D060F62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695609513;
	bh=B7r+Z9nqgDaagmxjP+4ZG2wp6bpX4t2HwQpARkq3eHo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=efj/8WmniY1LhmwLKHd+Qgkh7AuDS2K6JMaUT5ptHQYWNbQeHjuYfev2Av2FYqZfz
	 FlDXse9aRlRgGfck/2ax1gPz5stXMl/2yKXlaWh55YfIbCWIuVuUrBy+3fxD4yFx4w
	 0t74twZ8RwnKRKDxV7zaBp+X8+bU11qqypAvW3IeoUpygiKEt0sJcH95p+TC5jUPPJ
	 xg0ctSGXluz2n9FU+z1PN9hLWsjt8T0YrwhECWtsW94Uu12x4HIb2wmYWglauf7j+2
	 d1N78wx9cEd3kK5tlyLdKND9ws4NUEnqluDId3T2PxXZQG3ymyEPpape0gI44ztDL0
	 25yT6Y8XesmkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W2_H05s0aPLl; Mon, 25 Sep 2023 02:38:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3A2960F45;
	Mon, 25 Sep 2023 02:38:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3A2960F45
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 489BD1BF330
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 02:38:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2009560F45
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 02:38:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2009560F45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ev8lKun9hAlS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Sep 2023 02:38:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFE2760F3F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 02:38:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFE2760F3F
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="378421286"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="378421286"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2023 19:38:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="748193958"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="748193958"
Received: from lkp-server02.sh.intel.com (HELO 32c80313467c) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 24 Sep 2023 19:38:23 -0700
Received: from kbuild by 32c80313467c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qkbUK-0000vl-2N
 for intel-wired-lan@lists.osuosl.org; Mon, 25 Sep 2023 02:38:20 +0000
Date: Mon, 25 Sep 2023 10:38:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309251011.o0ETl19r-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695609506; x=1727145506;
 h=date:from:to:subject:message-id;
 bh=aOMLsytLhXiBRgqF/m7JfIFTClpdkPVjCKo0C+GXtcw=;
 b=lSC7YCx9Psgf4rX3iPe+2SuTjuN3VGvMJ2JBjWEisH49Uzd1R/FuD16S
 szOti2MSZD/jgyUw6y02+W6WDLsVowJZTIZhcQNDvVNTrCGVrA3SIKX7F
 tsug8fkove2Lbsm2U6Uc4FexV3rhhAX1tIZStkOdKTtDD8Xr4ZRLx2U4g
 k1SCbwCAZRCieoZYmigGxBkaYIwTna0KY+83h6qErjg4WE00FUqA/U48X
 EByW1vOsUYKANrfi+AreOT7f2XBybC7vO2fk0fnJGYIos//agHYEmNggf
 RGVnN9NLOkRRm9fqkGjFTrdP73V3c9zWx3CxpjxPjvBtKLx+I7wLiyfbD
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lSC7YCx9
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 c1735368c670faae047e41c815474d5b64837072
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: c1735368c670faae047e41c815474d5b64837072  ice: cleanup ice_find_netlist_node

elapsed time: 3295m

configs tested: 173
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
arc                   randconfig-001-20230923   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230923   gcc  
arm                   randconfig-001-20230924   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230923   gcc  
i386         buildonly-randconfig-001-20230924   gcc  
i386         buildonly-randconfig-002-20230923   gcc  
i386         buildonly-randconfig-002-20230924   gcc  
i386         buildonly-randconfig-003-20230923   gcc  
i386         buildonly-randconfig-003-20230924   gcc  
i386         buildonly-randconfig-004-20230923   gcc  
i386         buildonly-randconfig-004-20230924   gcc  
i386         buildonly-randconfig-005-20230923   gcc  
i386         buildonly-randconfig-005-20230924   gcc  
i386         buildonly-randconfig-006-20230923   gcc  
i386         buildonly-randconfig-006-20230924   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230923   gcc  
i386                  randconfig-001-20230924   gcc  
i386                  randconfig-002-20230923   gcc  
i386                  randconfig-002-20230924   gcc  
i386                  randconfig-003-20230923   gcc  
i386                  randconfig-003-20230924   gcc  
i386                  randconfig-004-20230923   gcc  
i386                  randconfig-004-20230924   gcc  
i386                  randconfig-005-20230923   gcc  
i386                  randconfig-005-20230924   gcc  
i386                  randconfig-006-20230923   gcc  
i386                  randconfig-006-20230924   gcc  
i386                  randconfig-011-20230923   gcc  
i386                  randconfig-011-20230924   gcc  
i386                  randconfig-012-20230923   gcc  
i386                  randconfig-012-20230924   gcc  
i386                  randconfig-013-20230923   gcc  
i386                  randconfig-013-20230924   gcc  
i386                  randconfig-014-20230923   gcc  
i386                  randconfig-014-20230924   gcc  
i386                  randconfig-015-20230923   gcc  
i386                  randconfig-015-20230924   gcc  
i386                  randconfig-016-20230923   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230923   gcc  
loongarch             randconfig-001-20230924   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
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
powerpc                          allyesconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230923   gcc  
riscv                 randconfig-001-20230924   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230923   gcc  
s390                  randconfig-001-20230924   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230923   gcc  
sparc                 randconfig-001-20230924   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230923   gcc  
x86_64       buildonly-randconfig-001-20230924   gcc  
x86_64       buildonly-randconfig-002-20230924   gcc  
x86_64       buildonly-randconfig-003-20230923   gcc  
x86_64       buildonly-randconfig-003-20230924   gcc  
x86_64       buildonly-randconfig-004-20230924   gcc  
x86_64       buildonly-randconfig-005-20230923   gcc  
x86_64       buildonly-randconfig-005-20230924   gcc  
x86_64       buildonly-randconfig-006-20230923   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230923   gcc  
x86_64                randconfig-001-20230924   gcc  
x86_64                randconfig-002-20230923   gcc  
x86_64                randconfig-002-20230924   gcc  
x86_64                randconfig-003-20230923   gcc  
x86_64                randconfig-003-20230924   gcc  
x86_64                randconfig-004-20230923   gcc  
x86_64                randconfig-004-20230924   gcc  
x86_64                randconfig-005-20230923   gcc  
x86_64                randconfig-005-20230924   gcc  
x86_64                randconfig-006-20230923   gcc  
x86_64                randconfig-006-20230924   gcc  
x86_64                randconfig-011-20230924   gcc  
x86_64                randconfig-012-20230924   gcc  
x86_64                randconfig-013-20230924   gcc  
x86_64                randconfig-014-20230924   gcc  
x86_64                randconfig-015-20230924   gcc  
x86_64                randconfig-016-20230924   gcc  
x86_64                randconfig-071-20230923   gcc  
x86_64                randconfig-071-20230924   gcc  
x86_64                randconfig-072-20230923   gcc  
x86_64                randconfig-072-20230924   gcc  
x86_64                randconfig-073-20230923   gcc  
x86_64                randconfig-073-20230924   gcc  
x86_64                randconfig-074-20230923   gcc  
x86_64                randconfig-074-20230924   gcc  
x86_64                randconfig-075-20230923   gcc  
x86_64                randconfig-075-20230924   gcc  
x86_64                randconfig-076-20230923   gcc  
x86_64                randconfig-076-20230924   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
