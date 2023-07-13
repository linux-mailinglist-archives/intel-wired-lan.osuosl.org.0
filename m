Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B98752061
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 13:50:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01C8561379;
	Thu, 13 Jul 2023 11:50:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01C8561379
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689249003;
	bh=l1cNj0MGKX7KuP7ujYma4568fXD+/Ap+zxWktDYZsDs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=debNQF7E6ac6qfojUEMrQFOBLC6NF0UZbXUe5pr4ph6uh7LqYfMXhazBBIu7o826u
	 S9lc3+egxDGvgNpTv2XlP7TILlto4IvJJc+7mDLyIyARas7Cc2oc78UqVkANjItd1+
	 xjQVyh8GLpU+gwHKf93WSFufvO+X9kgvlXsgHQTPwV7zgGHCVLOh3x13YL3Co9pFko
	 0o9m/LUHoqrCWuM3mtgkuSl40l+Q4ldzGtc4ENAFe76rSK53bzpFwrOCAj97+/PIwF
	 LyZL96oUNB6S2UPfMJTXzQrMdaO9Sw/attB44JYqYc/pNi4fGtY51gcIIWQGaU0f7j
	 DLJTeXIrl7DJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bi7H0WCOxuee; Thu, 13 Jul 2023 11:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5A0F6135C;
	Thu, 13 Jul 2023 11:50:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5A0F6135C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C8151BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 11:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8A4761364
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 11:49:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8A4761364
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HmbVtBAcsQ9Q for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 11:49:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB5696134B
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB5696134B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 11:49:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="365196823"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="365196823"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 04:49:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="866520506"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="866520506"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jul 2023 04:49:53 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qJupU-0006au-1A
 for intel-wired-lan@lists.osuosl.org; Thu, 13 Jul 2023 11:49:52 +0000
Date: Thu, 13 Jul 2023 19:49:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307131933.zYz3tik5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689248994; x=1720784994;
 h=date:from:to:subject:message-id;
 bh=jIc1wPrbG33Sqm6ipkhaTtlCMch8IE8ux7bODua0BQ0=;
 b=LrHf5mvXlVLOs9MniNtAz3MxSarof5p/N7wV8Vt9LGrAf/Pxuzdra3DR
 bHL6MDO25/MVelLDNCeRlU9AuTzPikFKBbgmNpb2s82d+KzycjoPftXHi
 8ngNpYiP6l9ayx/MhZMi8k/D6a/bVJNgyWec+snapZog26Ojzh2D3i4H4
 7BqFA11rbrycFaM43MsNIF4wYdSXYFYg1lbAV+fobnYeAenxvNUomezEr
 26f9eHCzrsKLDdiVM7qJ8SFHCm4FBGUzBeR8V9hOE3UtnHvP8cWKWolV+
 2WqKzpCpdjI+G7q8qhmRkN6zJt9R6AXGPjD9Hewmbcc1NepsLZVV8k6N+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LrHf5mvX
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d4de1753b091a634a65cad29ac65bbb4e74bf3ae
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
branch HEAD: d4de1753b091a634a65cad29ac65bbb4e74bf3ae  ice: move E810T functions to before device agnostic ones

elapsed time: 721m

configs tested: 112
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r015-20230713   gcc  
alpha                randconfig-r016-20230713   gcc  
alpha                randconfig-r024-20230710   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230713   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                                 defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                  randconfig-r046-20230713   clang
arm                             rpc_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r034-20230713   clang
arm64                randconfig-r036-20230713   clang
csky                                defconfig   gcc  
hexagon              randconfig-r025-20230710   clang
hexagon              randconfig-r041-20230713   clang
hexagon              randconfig-r045-20230713   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230712   gcc  
i386         buildonly-randconfig-r005-20230712   gcc  
i386         buildonly-randconfig-r006-20230712   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230712   gcc  
i386                 randconfig-i002-20230712   gcc  
i386                 randconfig-i003-20230712   gcc  
i386                 randconfig-i004-20230712   gcc  
i386                 randconfig-i005-20230712   gcc  
i386                 randconfig-i006-20230712   gcc  
i386                 randconfig-i011-20230713   gcc  
i386                 randconfig-i012-20230713   gcc  
i386                 randconfig-i013-20230713   gcc  
i386                 randconfig-i014-20230713   gcc  
i386                 randconfig-i015-20230713   gcc  
i386                 randconfig-i016-20230713   gcc  
i386                 randconfig-r013-20230713   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r023-20230710   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r002-20230713   gcc  
microblaze           randconfig-r021-20230710   gcc  
microblaze           randconfig-r031-20230713   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath25_defconfig   clang
mips                         bigsur_defconfig   gcc  
mips                     loongson1c_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230713   gcc  
nios2                randconfig-r035-20230713   gcc  
openrisc             randconfig-r032-20230713   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r006-20230713   clang
riscv                randconfig-r012-20230713   gcc  
riscv                randconfig-r042-20230713   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r033-20230713   clang
s390                 randconfig-r044-20230713   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r014-20230713   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                       sparc32_defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r003-20230713   gcc  
um                   randconfig-r004-20230713   gcc  
um                   randconfig-r005-20230713   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230712   gcc  
x86_64       buildonly-randconfig-r002-20230712   gcc  
x86_64       buildonly-randconfig-r003-20230712   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230712   clang
x86_64               randconfig-x002-20230712   clang
x86_64               randconfig-x003-20230712   clang
x86_64               randconfig-x004-20230712   clang
x86_64               randconfig-x005-20230712   clang
x86_64               randconfig-x006-20230712   clang
x86_64               randconfig-x011-20230712   gcc  
x86_64               randconfig-x012-20230712   gcc  
x86_64               randconfig-x013-20230712   gcc  
x86_64               randconfig-x014-20230712   gcc  
x86_64               randconfig-x015-20230712   gcc  
x86_64               randconfig-x016-20230712   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
