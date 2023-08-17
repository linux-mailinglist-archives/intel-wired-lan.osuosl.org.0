Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD58C77F4D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 13:14:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2608A4183E;
	Thu, 17 Aug 2023 11:14:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2608A4183E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692270895;
	bh=WGyZb55Xdzy3TMoyvHbnMeHfEpgr46c9IlHah/ZMEeM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rQpC1pJ1HQ2PMpO5M0lnUuN4rInIuhJZ8gMtdP/5CaBKvwjmttYwsahKm6tI0WALb
	 vpRUVnICVl533+lDmPK8ACF8z/y/w+K97auNG4GX+j9HBDBW9MywWRfN6X+IN3QA0m
	 vTvOzCejdxMcU3H9F+qAuDpy+a+z8fVtXHeeSa1wMFUB4kRcLNyflLwj7qizmrIzD+
	 BIQzw44Syh57liErH+u0oN11YsvCd3dPQJ4+oqKMYHij4cZp0kAmAOOFyaQ66Sd8gY
	 iioUX4aDDNtbEehVcyvTpbnN5AOk1sFSy5IXOVi7f8Mpj9lkejw5qqJurqJGa3Yk2R
	 TDfTniiq9ulDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRXsPqHaJjdE; Thu, 17 Aug 2023 11:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7EA641831;
	Thu, 17 Aug 2023 11:14:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7EA641831
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D87831BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 11:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0AEE83D1B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 11:14:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0AEE83D1B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1aBE_Gj1o5u9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 11:14:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DBE5C83D11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 11:14:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBE5C83D11
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="459137222"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="459137222"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 04:14:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="908367395"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="908367395"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 17 Aug 2023 04:14:45 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWaxh-00014x-0F
 for intel-wired-lan@lists.osuosl.org; Thu, 17 Aug 2023 11:14:45 +0000
Date: Thu, 17 Aug 2023 19:13:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308171943.VH18tt7w-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692270887; x=1723806887;
 h=date:from:to:subject:message-id;
 bh=6UGuGcle8NsdOjyBgwWdC8kAaRcuCaSMGCHcWuHmmRY=;
 b=d+i1IA7LIkUXbz7q75ipA7WWEf1k2wnjw4WilJ5vA18sXYbnTDJ4+l47
 x1WmUVMPCPy6b7hwwLE/HVNemr0LbhHqvsNAlqi9gzbL1FKF/nKe9fh46
 QnOOBW82JrRhbX+O9CW3PZ00aBFsl2PkZK3IDDAXS/+oJM05Jhma8fcYr
 2O7BQfRnYVgLZWwW20jGciTDRRrSE7bMDKokOjqQYVVarQW/w9lLsYDp7
 1cV9c8e4riBnbTpyy6dx9SRFs1EO32O3XzXGAUlq4jSyi/WwoTJ6KAqMq
 Pvl+C8UsmniZ14r/1sk6lGUGNokiE+1WeQgWwDR6cm0ATWpMKffZAmMBK
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d+i1IA7L
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 f1f16ca38b7cdf22b2d79d66dfb76a174f1289d4
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: f1f16ca38b7cdf22b2d79d66dfb76a174f1289d4  ice: split ice_aq_wait_for_event() func into two

elapsed time: 733m

configs tested: 111
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230817   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r026-20230817   gcc  
arc                  randconfig-r043-20230817   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230817   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230817   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r006-20230817   clang
hexagon              randconfig-r016-20230817   clang
hexagon              randconfig-r024-20230817   clang
hexagon              randconfig-r041-20230817   clang
hexagon              randconfig-r045-20230817   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230817   clang
i386         buildonly-randconfig-r005-20230817   clang
i386         buildonly-randconfig-r006-20230817   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230817   clang
i386                 randconfig-i002-20230817   clang
i386                 randconfig-i003-20230817   clang
i386                 randconfig-i004-20230817   clang
i386                 randconfig-i005-20230817   clang
i386                 randconfig-i006-20230817   clang
i386                 randconfig-i011-20230817   gcc  
i386                 randconfig-i012-20230817   gcc  
i386                 randconfig-i013-20230817   gcc  
i386                 randconfig-i014-20230817   gcc  
i386                 randconfig-i015-20230817   gcc  
i386                 randconfig-i016-20230817   gcc  
i386                 randconfig-r015-20230817   gcc  
i386                 randconfig-r024-20230817   gcc  
i386                 randconfig-r025-20230817   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230817   gcc  
microblaze           randconfig-r012-20230817   gcc  
microblaze           randconfig-r026-20230817   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230817   gcc  
mips                 randconfig-r034-20230817   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230817   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r031-20230817   gcc  
parisc               randconfig-r033-20230817   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230817   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230817   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230817   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230817   gcc  
sparc                randconfig-r023-20230817   gcc  
sparc                randconfig-r032-20230817   gcc  
sparc64              randconfig-r013-20230817   gcc  
sparc64              randconfig-r014-20230817   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r005-20230817   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230817   clang
x86_64       buildonly-randconfig-r002-20230817   clang
x86_64       buildonly-randconfig-r003-20230817   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r023-20230817   gcc  
x86_64               randconfig-x001-20230817   gcc  
x86_64               randconfig-x002-20230817   gcc  
x86_64               randconfig-x003-20230817   gcc  
x86_64               randconfig-x004-20230817   gcc  
x86_64               randconfig-x005-20230817   gcc  
x86_64               randconfig-x006-20230817   gcc  
x86_64               randconfig-x011-20230817   clang
x86_64               randconfig-x012-20230817   clang
x86_64               randconfig-x013-20230817   clang
x86_64               randconfig-x014-20230817   clang
x86_64               randconfig-x015-20230817   clang
x86_64               randconfig-x016-20230817   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r011-20230817   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
