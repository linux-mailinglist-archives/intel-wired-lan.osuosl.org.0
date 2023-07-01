Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A016744675
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Jul 2023 06:09:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0C1040B64;
	Sat,  1 Jul 2023 04:09:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0C1040B64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688184551;
	bh=kzkK5mblcsYwPtcspowxYvNq5WNWv+o1KMpZoOAylJA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sStbHmauAHSsqirla5OdxhvzPAKr5rIJY+XoJ9/kXbjR3VETfL32tPGKuXW3fN9sD
	 2qBndttY0VgaJ0JuWLnEzGrGFFxKncJMn97gZQfZMpaZ7UkAXfpjH1TgGivj1krllw
	 cscmZCHIoPEox348Mo0U79Waf3Z3/TpHaFoSrlTtN3MoM6rYrH+GXeCB/8y9y/Y+4W
	 RgnfC301GtWifET5n09C+ZIo5kgJHQr2C1TngPqb3K1KiRbyV9wj8xoMdWbWdMmJi3
	 fG2+nR34l6/ql0uvTTpaYwXwuwiOSZFJdFj9sFfworDGMpQM+716KiFR8ERpyhk7T/
	 96ZML+nsXgKiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eldVCFS4Wh-x; Sat,  1 Jul 2023 04:09:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8DAB4011D;
	Sat,  1 Jul 2023 04:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8DAB4011D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F5551BF314
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jul 2023 04:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F89681D24
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jul 2023 04:09:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F89681D24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7i_wGBfz1KcH for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Jul 2023 04:08:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E88A181386
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E88A181386
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jul 2023 04:08:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="342132820"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="342132820"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 21:08:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="842081858"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="842081858"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 30 Jun 2023 21:08:56 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qFRuq-000Ffw-0E
 for intel-wired-lan@lists.osuosl.org; Sat, 01 Jul 2023 04:08:56 +0000
Date: Sat, 01 Jul 2023 12:08:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307011216.RIIEz5sX-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688184538; x=1719720538;
 h=date:from:to:subject:message-id;
 bh=C6RiX56A2yjBxUEs01c+mGOKg5dgDEOhcugfbl5dQKQ=;
 b=LWdyIJ1ZDwIlyeTVwxqh7e2PgFBb/4xCxCxJ1B+zIs0Zl5y5oVBtP6tD
 b2uV6P8/QB/PWbmCHSydq2sMo+cWhuyKaKm4N7scpmXclBwH/hlEO8t5e
 7j0BKvYrbXq+f8GlK6ULJnil2RtUrXYljQM0F+3WM6o/1iuGDnw43gxlo
 JJ9GQsXBoIVpkSfRwNAKZQ6vgzMe6NZFVuYYSjV3+Lkcn5uLy/iLwlIXi
 7dnd1puKy3q1Ihja6tqhXSKq0pOc5Gt+kSJ/UG3r0IpcVLXEYMLfaRLvv
 GR35XrPrt5f3mKXtrZ1251LU1T+cWq7KieZnXgkaL192ihkTYZCzewc5D
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LWdyIJ1Z
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 08fc75735fda3be97194bfbf3c899c87abb3d0fe
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 08fc75735fda3be97194bfbf3c899c87abb3d0fe  mlxsw: minimal: fix potential memory leak in mlxsw_m_linecards_init

elapsed time: 1452m

configs tested: 134
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230630   gcc  
alpha                randconfig-r024-20230630   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arc                  randconfig-r016-20230630   gcc  
arc                  randconfig-r043-20230630   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                  randconfig-r046-20230630   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230629   gcc  
arm64                randconfig-r031-20230629   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230630   gcc  
hexagon              randconfig-r014-20230630   clang
hexagon              randconfig-r041-20230630   clang
hexagon              randconfig-r045-20230630   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230629   gcc  
i386         buildonly-randconfig-r005-20230629   gcc  
i386         buildonly-randconfig-r006-20230629   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230629   gcc  
i386                 randconfig-i002-20230629   gcc  
i386                 randconfig-i003-20230629   gcc  
i386                 randconfig-i004-20230629   gcc  
i386                 randconfig-i005-20230629   gcc  
i386                 randconfig-i006-20230629   gcc  
i386                 randconfig-i011-20230629   clang
i386                 randconfig-i012-20230629   clang
i386                 randconfig-i013-20230629   clang
i386                 randconfig-i014-20230629   clang
i386                 randconfig-i015-20230629   clang
i386                 randconfig-i016-20230629   clang
i386                 randconfig-r013-20230630   clang
i386                 randconfig-r025-20230630   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230630   gcc  
loongarch            randconfig-r011-20230630   gcc  
loongarch            randconfig-r012-20230630   gcc  
loongarch            randconfig-r015-20230630   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
m68k                 randconfig-r016-20230630   gcc  
m68k                 randconfig-r026-20230630   gcc  
microblaze           randconfig-r003-20230629   gcc  
microblaze           randconfig-r024-20230630   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r006-20230629   clang
mips                 randconfig-r014-20230630   gcc  
mips                 randconfig-r032-20230629   clang
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230630   gcc  
nios2                randconfig-r032-20230629   gcc  
nios2                randconfig-r035-20230629   gcc  
openrisc                         alldefconfig   gcc  
openrisc             randconfig-r001-20230630   gcc  
openrisc             randconfig-r014-20230630   gcc  
openrisc             randconfig-r015-20230630   gcc  
openrisc             randconfig-r034-20230629   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r012-20230630   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   currituck_defconfig   gcc  
powerpc              randconfig-r023-20230630   clang
powerpc              randconfig-r025-20230630   clang
powerpc              randconfig-r026-20230630   clang
powerpc              randconfig-r034-20230629   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230630   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r011-20230630   clang
s390                 randconfig-r021-20230630   clang
s390                 randconfig-r044-20230630   clang
sh                               allmodconfig   gcc  
sh                                  defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                   randconfig-r022-20230630   gcc  
sh                          urquell_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r013-20230630   gcc  
sparc64              randconfig-r002-20230630   gcc  
sparc64              randconfig-r011-20230630   gcc  
sparc64              randconfig-r015-20230630   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r003-20230630   clang
um                   randconfig-r016-20230630   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230629   gcc  
x86_64       buildonly-randconfig-r002-20230629   gcc  
x86_64       buildonly-randconfig-r003-20230629   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r001-20230629   gcc  
x86_64               randconfig-r033-20230629   gcc  
x86_64               randconfig-r036-20230629   gcc  
x86_64               randconfig-x011-20230629   gcc  
x86_64               randconfig-x012-20230629   gcc  
x86_64               randconfig-x013-20230629   gcc  
x86_64               randconfig-x014-20230629   gcc  
x86_64               randconfig-x015-20230629   gcc  
x86_64               randconfig-x016-20230629   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230629   gcc  
xtensa               randconfig-r022-20230630   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
