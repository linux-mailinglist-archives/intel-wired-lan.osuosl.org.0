Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C87EB731277
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 10:42:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B8B2418E9;
	Thu, 15 Jun 2023 08:41:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B8B2418E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686818518;
	bh=OfjPfnVDevB4t3XI+jcySKHOQOzHTfwnpyr1n97MbiM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=L2/d/NoALWufC5Un+NEm44gDMb0JSwCYSAwdDfUT8h/MNwjEm2WcOR0/RFLYpq6pG
	 IvqMAuOxv3fh24kZqGplLYi9gnipuL5PJUgzTQWgUNAnd07nQw7e2HCLaDyFcSz6gF
	 H3Vre43j33yMhBhoUDyA9jQxmC3dMNivDqSJFrEWFo9XqheRswv90cCCulyhQ05+G3
	 UEm1nJO8xhmucFCJBcg1zeW4wdNe0XkDDgiWa/lZ1/z6NuZdvEMn72sQQPXsYAsUI+
	 ykJJ5/3Okc0AlDDoBCI7wEJeHzy0FMJrYfkycYfEdIMTinL4ivXk8wrS5q+oEhBp1C
	 NV61VB8mlRKwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JLDiDtJRReLy; Thu, 15 Jun 2023 08:41:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B0A640017;
	Thu, 15 Jun 2023 08:41:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B0A640017
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 958CF1BF283
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 08:41:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A99D83AD2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 08:41:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A99D83AD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IEraccXnbGAD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 08:41:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E01783ACD
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E01783ACD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 08:41:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="445221368"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="445221368"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 01:41:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="745414310"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="745414310"
Received: from lkp-server02.sh.intel.com (HELO d59cacf64e9e) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 15 Jun 2023 01:41:48 -0700
Received: from kbuild by d59cacf64e9e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q9iY7-0001fP-0v
 for intel-wired-lan@lists.osuosl.org; Thu, 15 Jun 2023 08:41:47 +0000
Date: Thu, 15 Jun 2023 16:41:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306151610.qlRdlwGR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686818510; x=1718354510;
 h=date:from:to:subject:message-id;
 bh=A83jZDbcxMiwzzFOALkIduO8GTgr/cTycic8iGoBO9E=;
 b=UFtX8icDMz+AoIF80JvP8tgbqRC3jNPKkAa3cu24wg7svpzLIDS00wx3
 nRB0jKPVUT3FiGZ64FMWmWtLPBBnHHQUT+0tzaJU7c6O3/Gx6FIUiNzIg
 ka41+6ErJQuvMNtTnxXj6SIfs0ruJCCG41FrG9HfTXbpLY1x+r20cYb1v
 U2AVWGQokWYmL4FlSnO4QSXUDdV9Bydtg8MagZeJGIslKU1yl5JXOw63U
 FnI/+HlXOdMcR9iqejFVJyvbBnFS6TVeWY6fxg5mnQ/IFkbQz9Pg7haqn
 FRtFAFDmqCDgz+7a+G5YmYKozlSHbampKkk79APyNV0VlN5FZBv3nPYzL
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UFtX8icD
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 2ae3defbd3b7268a0f3754a9729574f951f8c0e8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 2ae3defbd3b7268a0f3754a9729574f951f8c0e8  idpf: configure SRIOV and add other ndo_ops

elapsed time: 886m

configs tested: 104
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230614   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230612   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230612   gcc  
arm                  randconfig-r046-20230612   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r005-20230614   clang
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230612   clang
arm64                randconfig-r012-20230614   gcc  
arm64                randconfig-r013-20230614   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230612   gcc  
hexagon              randconfig-r032-20230612   clang
hexagon              randconfig-r041-20230612   clang
hexagon              randconfig-r045-20230612   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230614   clang
i386                 randconfig-i002-20230614   clang
i386                 randconfig-i003-20230614   clang
i386                 randconfig-i004-20230614   clang
i386                 randconfig-i005-20230614   clang
i386                 randconfig-i006-20230614   clang
i386                 randconfig-i011-20230612   gcc  
i386                 randconfig-i012-20230612   gcc  
i386                 randconfig-i013-20230612   gcc  
i386                 randconfig-i014-20230612   gcc  
i386                 randconfig-i015-20230612   gcc  
i386                 randconfig-i016-20230612   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r031-20230612   gcc  
loongarch            randconfig-r035-20230612   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r024-20230612   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230614   gcc  
mips                 randconfig-r015-20230614   clang
nios2                               defconfig   gcc  
nios2                randconfig-r023-20230612   gcc  
nios2                randconfig-r034-20230612   gcc  
openrisc             randconfig-r001-20230612   gcc  
openrisc             randconfig-r006-20230612   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r022-20230612   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r003-20230614   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230612   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230614   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r011-20230614   gcc  
s390                 randconfig-r044-20230612   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r016-20230614   gcc  
sh                   randconfig-r021-20230612   gcc  
sh                   randconfig-r036-20230612   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r004-20230612   gcc  
sparc64              randconfig-r026-20230612   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230612   clang
x86_64               randconfig-a002-20230612   clang
x86_64               randconfig-a003-20230612   clang
x86_64               randconfig-a004-20230612   clang
x86_64               randconfig-a005-20230612   clang
x86_64               randconfig-a006-20230612   clang
x86_64               randconfig-a011-20230612   gcc  
x86_64               randconfig-a012-20230612   gcc  
x86_64               randconfig-a013-20230612   gcc  
x86_64               randconfig-a014-20230612   gcc  
x86_64               randconfig-a015-20230612   gcc  
x86_64               randconfig-a016-20230612   gcc  
x86_64               randconfig-r025-20230612   gcc  
x86_64               randconfig-r033-20230612   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r006-20230614   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
