Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30F3723C82
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 11:06:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBDA540124;
	Tue,  6 Jun 2023 09:06:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBDA540124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686042385;
	bh=SHYuwXXAga4fbFaNcWP8N9ThcTfZU/JC6jiCnJ3OCgY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FtaAKsC0EocOvrM9+48IolAhVO84PII0VkpjmrkTEXwOX2uBiuLikfoXLeLN7Mwja
	 cVE14ywY7THa+bpRFulQGvAy2+b1sd4NaLYT1kcyiUIFcIM0zr/c3rM+LBXHvozYUL
	 ocVb7avWIfU6NvJb4M3r1D3v3AFu/IwvxCFPTvAj81BgLV5Tvz0GsMxtXb4oOuNsj/
	 IqTdRwVCohXNsELZhgnc6pW2QrXe0xnd+UTm+7/19noNsADLpUyNWxyLr33dCrtxBZ
	 Ygz6th+oi7X6K2X20ij7e7OkoMmwMwMSqll+AoxMoo+Z9b8TH/yWlSXp5Ah/f5FU7w
	 Dr7/fcDDwmrGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6GOdLIhDtk1W; Tue,  6 Jun 2023 09:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 886944011B;
	Tue,  6 Jun 2023 09:06:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 886944011B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17AE21BF33B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 09:06:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E44794011B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 09:06:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E44794011B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NtPkD1gQNG6X for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 09:06:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09C27400D3
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 09C27400D3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 09:06:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336967414"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="336967414"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 02:06:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="955673439"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="955673439"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jun 2023 02:06:12 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q6Sdn-00054d-28
 for intel-wired-lan@lists.osuosl.org; Tue, 06 Jun 2023 09:06:11 +0000
Date: Tue, 06 Jun 2023 17:05:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230606090556.Z7sir%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686042375; x=1717578375;
 h=date:from:to:subject:message-id;
 bh=BO6krpVul0E0QKQom78Bu8ZpUgXVACZ5QiFO6gYrnlU=;
 b=hWIdCkZ96L4RsriKO9FmZnJ9yDAqKEIcm09Bsij07TR7XLWajWkiYH59
 Lz0PXhUe8ZdsggrSob+8A6UDFyD5nyxWuDghOmOz5K4lqmV7tFeA1NXcV
 yXx0j7l4JvBH2OlxGdcjFdn9ii848jJGKY6QLIZ995mMoca22jNHMPd+/
 laaOL90ElXwNvQhjHX1fsR3EmczU21PeJj1FyKtgpY2mNTdSyDDOup/fa
 wPRO//YNqbYXxJXv4JVDsiMfaYJ5UXQu8s0sKwHNrnZYjQ8YPBJiWmFl2
 AKNsP4geQt9zlgHJNzVHTJ4kMH7gsYKFAAgx8e5G6nJuO37EGaT7EI8jB
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hWIdCkZ9
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 6548877ce01e7a53df7739c7e74ebe5a800553f9
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
branch HEAD: 6548877ce01e7a53df7739c7e74ebe5a800553f9  igc: Fix TX Hang issue when QBV Gate is closed

elapsed time: 724m

configs tested: 136
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r026-20230605   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r022-20230605   gcc  
arc                  randconfig-r026-20230605   gcc  
arc                  randconfig-r043-20230605   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230605   clang
arm                                 defconfig   gcc  
arm                  randconfig-r021-20230605   clang
arm                  randconfig-r046-20230605   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230605   clang
arm64                randconfig-r035-20230605   clang
csky                                defconfig   gcc  
csky                 randconfig-r004-20230605   gcc  
csky                 randconfig-r014-20230605   gcc  
csky                 randconfig-r025-20230605   gcc  
csky                 randconfig-r034-20230605   gcc  
hexagon              randconfig-r003-20230605   clang
hexagon              randconfig-r041-20230605   clang
hexagon              randconfig-r045-20230605   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230605   clang
i386                 randconfig-i002-20230605   clang
i386                 randconfig-i003-20230605   clang
i386                 randconfig-i004-20230605   clang
i386                 randconfig-i005-20230605   clang
i386                 randconfig-i006-20230605   clang
i386                 randconfig-i011-20230605   gcc  
i386                 randconfig-i012-20230605   gcc  
i386                 randconfig-i013-20230605   gcc  
i386                 randconfig-i014-20230605   gcc  
i386                 randconfig-i015-20230605   gcc  
i386                 randconfig-i016-20230605   gcc  
i386                 randconfig-i051-20230605   clang
i386                 randconfig-i052-20230605   clang
i386                 randconfig-i053-20230605   clang
i386                 randconfig-i054-20230605   clang
i386                 randconfig-i055-20230605   clang
i386                 randconfig-i056-20230605   clang
i386                 randconfig-i061-20230605   clang
i386                 randconfig-i062-20230605   clang
i386                 randconfig-i063-20230605   clang
i386                 randconfig-i064-20230605   clang
i386                 randconfig-i065-20230605   clang
i386                 randconfig-i066-20230605   clang
i386                 randconfig-r006-20230605   clang
i386                 randconfig-r023-20230605   gcc  
i386                 randconfig-r035-20230605   clang
i386                 randconfig-r036-20230605   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230605   gcc  
loongarch    buildonly-randconfig-r004-20230605   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r001-20230605   gcc  
microblaze           randconfig-r032-20230605   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r013-20230605   clang
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230605   gcc  
openrisc     buildonly-randconfig-r002-20230605   gcc  
parisc       buildonly-randconfig-r003-20230605   gcc  
parisc       buildonly-randconfig-r005-20230605   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r025-20230605   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r023-20230605   gcc  
riscv                randconfig-r042-20230605   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r015-20230605   gcc  
s390                 randconfig-r033-20230605   clang
s390                 randconfig-r044-20230605   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230605   gcc  
sh                   randconfig-r024-20230605   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230605   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230605   clang
x86_64               randconfig-a001-20230606   gcc  
x86_64               randconfig-a002-20230605   clang
x86_64               randconfig-a002-20230606   gcc  
x86_64               randconfig-a003-20230605   clang
x86_64               randconfig-a003-20230606   gcc  
x86_64               randconfig-a004-20230605   clang
x86_64               randconfig-a004-20230606   gcc  
x86_64               randconfig-a005-20230605   clang
x86_64               randconfig-a005-20230606   gcc  
x86_64               randconfig-a006-20230605   clang
x86_64               randconfig-a006-20230606   gcc  
x86_64               randconfig-a011-20230605   gcc  
x86_64               randconfig-a012-20230605   gcc  
x86_64               randconfig-a013-20230605   gcc  
x86_64               randconfig-a014-20230605   gcc  
x86_64               randconfig-a015-20230605   gcc  
x86_64               randconfig-a016-20230605   gcc  
x86_64               randconfig-r016-20230605   gcc  
x86_64               randconfig-r022-20230605   gcc  
x86_64               randconfig-r032-20230605   clang
x86_64               randconfig-x051-20230605   gcc  
x86_64               randconfig-x052-20230605   gcc  
x86_64               randconfig-x053-20230605   gcc  
x86_64               randconfig-x054-20230605   gcc  
x86_64               randconfig-x055-20230605   gcc  
x86_64               randconfig-x056-20230605   gcc  
x86_64               randconfig-x061-20230605   gcc  
x86_64               randconfig-x062-20230605   gcc  
x86_64               randconfig-x063-20230605   gcc  
x86_64               randconfig-x064-20230605   gcc  
x86_64               randconfig-x065-20230605   gcc  
x86_64               randconfig-x066-20230605   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r031-20230605   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
