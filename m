Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA27D75CB75
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 17:20:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47D0961355;
	Fri, 21 Jul 2023 15:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47D0961355
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689952856;
	bh=mGygx5XtCJ1x78sLcm1IIV60RIS8E9RkN9YYthveAfs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BC9qJpztMkbf+X5xGYdKYsViV9aMJfBiZxrAlj6KXT8yr2YxLO4qMZmEGckG4ATrp
	 3bPEGWcbg0FW+QZhmkhxo3LbrOxL3bkqlRVwiRxx68pHxZnfC5QUiSpGTPGOAaoc28
	 Ex+kkMo42JtRIFMXxuWrZCib7/4rAqaA+X2NRGHO1d1Y04Q+KsLg8Vo2BmnqXr2W4C
	 XSj1jQ5dRnkPMyLbN6yBNJDE2QVgXaluDOGuqXo/M74jhSF9+eOyXlVIzRV9vgVT/P
	 JcA4qnUg5G5rVwiYndmYQZKn2nlQd++axPTSndGtorSe85zV8kEyZzE18Q4fbiOhdS
	 u4yLGybUav3CQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uX28U6i4Yjw5; Fri, 21 Jul 2023 15:20:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 091036134B;
	Fri, 21 Jul 2023 15:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 091036134B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D51A1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 44CA1417C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:20:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44CA1417C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GbFR7IIXItnG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 15:20:48 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 05E2240577
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:20:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05E2240577
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="357037475"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="357037475"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 08:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="971466137"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="971466137"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jul 2023 08:20:25 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qMrvd-0007Op-07
 for intel-wired-lan@lists.osuosl.org; Fri, 21 Jul 2023 15:20:25 +0000
Date: Fri, 21 Jul 2023 23:20:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307212300.S7xlC1jT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689952848; x=1721488848;
 h=date:from:to:subject:message-id;
 bh=HtunqO9gRXsO35lN3pYM1c//NCSgRlQidVfbvtiW/AI=;
 b=exPsvtCoOLFIe2EPKu3Wtkz2NZa9nO3nrua6grRK9+7zSPWlpwVK0wxc
 O5CbQrAIz+OK4oO5l9fwSSu9yE8YVkrXcLMWxGyIEEB7nBDupsq7vPlLG
 tIqGuwUdg6rbiin0FskVRiLCpnIQllDksxC5FnlMAM3X2YqeIdzdYsTM0
 nOVpwPoA7rqQH5YWD2EoPzmcPNTtqLPeHmwYQEUYugJjYorqvBhvDTYEI
 hZ4520FjvSSIUzaHYZyuU4p7UgDUdttAXC8vlN0WToq5QE4CB/JZwdvGp
 oIqIFLVrPcAAjmnSXXXysMjHGoGDdtvzvJdG3cwRlL2utdebwfv5OGOd+
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=exPsvtCo
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d030d481742306ea805bf833bb38a787b4e44bcb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: d030d481742306ea805bf833bb38a787b4e44bcb  i40e: Fix an NULL vs IS_ERR() bug for debugfs_create_dir()

elapsed time: 948m

configs tested: 102
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230720   gcc  
arc                  randconfig-r043-20230720   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r014-20230720   gcc  
arm                  randconfig-r046-20230720   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230720   clang
arm64                randconfig-r023-20230720   clang
arm64                randconfig-r026-20230720   clang
arm64                randconfig-r032-20230720   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r033-20230720   gcc  
csky                 randconfig-r035-20230720   gcc  
hexagon              randconfig-r022-20230720   clang
hexagon              randconfig-r041-20230720   clang
hexagon              randconfig-r045-20230720   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230720   gcc  
i386         buildonly-randconfig-r005-20230720   gcc  
i386         buildonly-randconfig-r006-20230720   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230720   gcc  
i386                 randconfig-i002-20230720   gcc  
i386                 randconfig-i003-20230720   gcc  
i386                 randconfig-i004-20230720   gcc  
i386                 randconfig-i005-20230720   gcc  
i386                 randconfig-i006-20230720   gcc  
i386                 randconfig-i011-20230720   clang
i386                 randconfig-i012-20230720   clang
i386                 randconfig-i013-20230720   clang
i386                 randconfig-i014-20230720   clang
i386                 randconfig-i015-20230720   clang
i386                 randconfig-i016-20230720   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r034-20230720   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r012-20230720   gcc  
microblaze           randconfig-r005-20230720   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r016-20230720   gcc  
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230720   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r024-20230720   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230720   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230720   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230720   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230720   gcc  
x86_64       buildonly-randconfig-r002-20230720   gcc  
x86_64       buildonly-randconfig-r003-20230720   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230720   clang
x86_64               randconfig-x002-20230720   clang
x86_64               randconfig-x003-20230720   clang
x86_64               randconfig-x004-20230720   clang
x86_64               randconfig-x005-20230720   clang
x86_64               randconfig-x006-20230720   clang
x86_64               randconfig-x011-20230720   gcc  
x86_64               randconfig-x012-20230720   gcc  
x86_64               randconfig-x013-20230720   gcc  
x86_64               randconfig-x014-20230720   gcc  
x86_64               randconfig-x015-20230720   gcc  
x86_64               randconfig-x016-20230720   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r025-20230720   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
