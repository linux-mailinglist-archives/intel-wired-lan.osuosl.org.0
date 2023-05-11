Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A16806FEC27
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 May 2023 09:02:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB388408DC;
	Thu, 11 May 2023 07:02:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB388408DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683788528;
	bh=asqSVFyA0SDMltFpQ5jcDSCdoDbEogWM2cYAMc8el+4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VsQtSJVmakZqxM/luP0acveQKW9ZzUsMFiZZPwYZz2hSjgpGmRV1irg50e2AXOWTh
	 e9EuLe1HnEG/MyUuhoGmBdEfr5FiAgwsBWEFJVgo2ZOBIqc7HNgjJlL7Qgm7dcVDXN
	 Ib33Vyg7twBjsAU00wS/zjvBRQtJ7+usVODdqE5A6d5MBEPu5ZGo9N76whNMpumQAJ
	 F1rP3mO1Epf42kraICLZ2Ru6Lhi8wOBII2tgcLzMVTZMUauRDFQGFt9p8XwFXx5x8k
	 5oiyn6wXwwtBbnhJqoL4f4bgZ8V+Q5tmqy+G9o4hDdEFs1c3MrZY/jBjhElVkp23LI
	 zVowWWS9eMyig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id whU5vg2BDUCw; Thu, 11 May 2023 07:02:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 832F64018F;
	Thu, 11 May 2023 07:02:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 832F64018F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 357A51BF350
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 07:02:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA571404A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 07:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA571404A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bz4Tep7gx6eA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 07:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4226A4018F
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4226A4018F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 07:02:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="352622068"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="352622068"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 00:01:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="769209842"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="769209842"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 11 May 2023 00:01:58 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1px0JJ-0003qO-1a
 for intel-wired-lan@lists.osuosl.org; Thu, 11 May 2023 07:01:57 +0000
Date: Thu, 11 May 2023 15:01:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230511070129.j6Dt4%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683788520; x=1715324520;
 h=date:from:to:subject:message-id;
 bh=A2y0Vi67p0tRp8+LidYoQDvwSU6eyw372392F4xG3Rc=;
 b=EskNnE6kL8Wre6yN41WoUhoHUaErgYKzRbdkyYNMrsxSXaizlbSCvUHW
 yUvgdcMrRAw0o4PZvgN4UyhdUu54onDBJW7B7YBjcGnluH5PP/3Sbw5PE
 RYtQ0d8oj7JUDP0/i1TgburImHDryLCMBbJrUwzoxiHy56y8iNjRsr7Zp
 klPNdQiis5cOyamcXKTCBP1xKFlf4/QX0/w8TZSqT8hbcs3ZqAtgpUlE2
 NpYoQtCT/KNkRb98eUWq5W+CHwdxdxCT/J0qb3UkPD+JAXB3jYA5Pv/2r
 RB0pTgkPHD5qXpHtXKJ+jwPZoOZ8zsjcXC8dbB+Fk9wPMjxTvNkOwZD4r
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EskNnE6k
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 42cabdc3aa2eed43094aaff87ca48d857959f2ed
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
branch HEAD: 42cabdc3aa2eed43094aaff87ca48d857959f2ed  iavf: Fix out-of-bounds when setting channels on remove

elapsed time: 723m

configs tested: 110
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r031-20230509   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230509   gcc  
arc                  randconfig-r043-20230509   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r035-20230509   clang
arm                  randconfig-r046-20230509   gcc  
arm                             rpc_defconfig   gcc  
arm                         s3c6400_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230509   gcc  
arm64                randconfig-r026-20230509   clang
csky                                defconfig   gcc  
csky                 randconfig-r032-20230509   gcc  
hexagon              randconfig-r041-20230509   clang
hexagon              randconfig-r045-20230509   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                        generic_defconfig   gcc  
ia64                 randconfig-r005-20230509   gcc  
ia64                 randconfig-r023-20230509   gcc  
ia64                 randconfig-r025-20230509   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r006-20230509   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230510   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230510   clang
mips         buildonly-randconfig-r006-20230510   clang
mips                      maltasmvp_defconfig   gcc  
mips                    maltaup_xpa_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         alldefconfig   gcc  
openrisc     buildonly-randconfig-r005-20230510   gcc  
openrisc             randconfig-r003-20230509   gcc  
openrisc             randconfig-r022-20230509   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r024-20230509   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     mpc83xx_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r033-20230509   gcc  
riscv                randconfig-r042-20230509   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r021-20230509   clang
s390                 randconfig-r044-20230509   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230509   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                           se7750_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r001-20230510   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
