Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAF9767D60
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jul 2023 10:55:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C11AA83449;
	Sat, 29 Jul 2023 08:55:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C11AA83449
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690620943;
	bh=QcHLBQj1jOHRuJUVC3nrbTIfIGzjea68+EQJAYVrIUE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iY7oOFK+/DsX9hWkgPVYvOQ1AIad7+VXIr2T84qrfUkeSxuvMe3ZztgFSdkmjmZ0e
	 66MhE+iJvK30BSuvAgUMIIzGcOfzCwi9qZsHVKsdGsp+U3DK6fXtuvZqvaCEE/WuAD
	 MZ4jw0RRDswbvRZZW9no59e4YwHBVlGImaT2Rtxgs9ZG8STWIYvY+PmML7juyJp4bT
	 HVODmZSwlaB2E4ugq6uq2jPPSPkNXGH1Qv1gg4KWEh0Wnz0uy0ugL27uKg0eEmCI17
	 fCRkRVdfSisKTh6UW8wYKjum0P47OTy0F6Z9WaoeqR1rbYfi17uQ9pUOmlMr3tgrxX
	 CklzPkUIZ34uQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RniHP90Hiw9M; Sat, 29 Jul 2023 08:55:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AE6882285;
	Sat, 29 Jul 2023 08:55:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AE6882285
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D6551BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 08:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3186F82285
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 08:55:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3186F82285
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TA64KAfZWTz5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Jul 2023 08:55:20 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC48782281
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 08:55:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC48782281
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="435035876"
X-IronPort-AV: E=Sophos;i="6.01,240,1684825200"; d="scan'208";a="435035876"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2023 01:55:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="757425954"
X-IronPort-AV: E=Sophos;i="6.01,240,1684825200"; d="scan'208";a="757425954"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 29 Jul 2023 01:55:18 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qPfjI-0003wD-0A
 for intel-wired-lan@lists.osuosl.org; Sat, 29 Jul 2023 08:55:17 +0000
Date: Sat, 29 Jul 2023 16:54:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307291612.YooUEIny-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690620919; x=1722156919;
 h=date:from:to:subject:message-id;
 bh=rJVD7AQeECYcRHayk1yT22pujyKXAgUmBaixg1YaSk4=;
 b=Pu2YD7C2T52NhOtuPBAmeTug5PoYToQMNxVohQOVrhtcKm3Mzjaz2rAj
 KmvLYZjA1grCOhTFby9uNDF5hvwqWbGcW2Ce+DbSslNEiZ5N/3b2kKcqe
 u2OHDTRcT13iNVjLZeHJNSmbwSIlezlHoBXl73ZTx/kZlqf/9nP5lGj3a
 J/0df3OoO/jCOM6ggr+2WAMGywpn5yiEe/Fug9K+joTmVaXJoC3mNxE3c
 V0Q0emmY8hRZ917JcnOFmvbBICXRHkJ4Qv/ykNq9tCmySRGZDGWR97rjs
 8kNgSZggiQqAm7iLfk7hmbL62s+45iMKpDbIfEqApvEWgX2nb7EO4DuUC
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pu2YD7C2
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 70bfe4ebaf9fe3963391891bdce8cb7a1dad9f1c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 70bfe4ebaf9fe3963391891bdce8cb7a1dad9f1c  igc: Modify the tx-usecs coalesce setting

elapsed time: 927m

configs tested: 105
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230728   gcc  
arc                  randconfig-r014-20230728   gcc  
arc                  randconfig-r043-20230728   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230728   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230728   gcc  
csky                 randconfig-r016-20230728   gcc  
csky                 randconfig-r034-20230728   gcc  
hexagon              randconfig-r041-20230728   clang
hexagon              randconfig-r045-20230728   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230728   gcc  
i386         buildonly-randconfig-r005-20230728   gcc  
i386         buildonly-randconfig-r006-20230728   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230728   gcc  
i386                 randconfig-i002-20230728   gcc  
i386                 randconfig-i003-20230728   gcc  
i386                 randconfig-i004-20230728   gcc  
i386                 randconfig-i005-20230728   gcc  
i386                 randconfig-i006-20230728   gcc  
i386                 randconfig-i011-20230728   clang
i386                 randconfig-i012-20230728   clang
i386                 randconfig-i013-20230728   clang
i386                 randconfig-i014-20230728   clang
i386                 randconfig-i015-20230728   clang
i386                 randconfig-i016-20230728   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r005-20230728   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r015-20230728   gcc  
m68k                 randconfig-r021-20230728   gcc  
microblaze           randconfig-r004-20230728   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230728   clang
nios2                               defconfig   gcc  
nios2                randconfig-r031-20230728   gcc  
nios2                randconfig-r036-20230728   gcc  
openrisc             randconfig-r003-20230728   gcc  
openrisc             randconfig-r026-20230728   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230728   clang
powerpc              randconfig-r022-20230728   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230728   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230728   clang
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r011-20230728   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230728   gcc  
x86_64       buildonly-randconfig-r002-20230728   gcc  
x86_64       buildonly-randconfig-r003-20230728   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r023-20230728   clang
x86_64               randconfig-r024-20230728   clang
x86_64               randconfig-x001-20230728   clang
x86_64               randconfig-x002-20230728   clang
x86_64               randconfig-x003-20230728   clang
x86_64               randconfig-x004-20230728   clang
x86_64               randconfig-x005-20230728   clang
x86_64               randconfig-x006-20230728   clang
x86_64               randconfig-x011-20230728   gcc  
x86_64               randconfig-x012-20230728   gcc  
x86_64               randconfig-x013-20230728   gcc  
x86_64               randconfig-x014-20230728   gcc  
x86_64               randconfig-x015-20230728   gcc  
x86_64               randconfig-x016-20230728   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r035-20230728   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
