Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3672A75738B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 08:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C785260E83;
	Tue, 18 Jul 2023 06:04:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C785260E83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689660265;
	bh=wQg7GlEqXzkpyRTbxGEP9uh0vy2WjhkpVKGeTqBq7v8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eGHjw7g3G6lS0glLGuD95Jp0ge74nKgj+ZZGdNChIhBdSscXaMaj+2tN4BnePY4nA
	 bZ5GLSgGaAIdHb+Md54BYJ1GX2KS7PA7qV6qzfBCAZkHb3CihibUL+JMaUQb5UjiFP
	 ap9xOW3ALNK7FKtvjS/teTmQbf7nqohI2y2xa/o45J4Mu01kw/3wHZ5mlJeU60Wm+F
	 pygRxB4wld7j83nkjg4xeiTlgYO0fxQXHq0GP5f2xX6ciYx5E7nOsMbkaepPNzrq5y
	 FC7fH4EgE9ErMe8mqE42j23hpvUizq0oHnyXXmqJQIARho0wNXM8/v6z8blaKdbLF6
	 5OAHTgoBmjE+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v1BpZswE-3rF; Tue, 18 Jul 2023 06:04:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7865260E1D;
	Tue, 18 Jul 2023 06:04:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7865260E1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3157D1BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 06:04:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 09E8A81286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 06:04:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09E8A81286
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T_PHzg6Du1rD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 06:04:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7B33812CB
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7B33812CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 06:04:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="345713257"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="345713257"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 23:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="970112795"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="970112795"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jul 2023 23:04:15 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qLdok-0000G7-0p
 for intel-wired-lan@lists.osuosl.org; Tue, 18 Jul 2023 06:04:14 +0000
Date: Tue, 18 Jul 2023 14:04:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307181458.jPOCsHEY-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689660256; x=1721196256;
 h=date:from:to:subject:message-id;
 bh=h6WBq3uVDOPzq409IZf7NZJ8lcak5LyEi7MCrXQMsN4=;
 b=RtJMqpSKiY2SBCOt4Lv8sYJOTrluHsughhs1DiuN5+G4l36ucO+BdQ6z
 4cfUVuTxsTc4KblhdJkXP8a9iFyh4JD2jXXCYOLvGxQ4xwUqFyJvBzYs4
 rzRbwz79COMF5G2QOgdkHon/pZyXN5hogHPrwOMUvwnBI2KdWHoae3DaG
 9i309blL4o47ruQdGFzZ3BQgmqHVL4G5tBS9ZMHIQbOriKIB95qE/IBPV
 80BnoAliBG2TGab6KHKg4XdK6F2t6sYhb0WUxbhyfhi4GVIDCU0lDY98n
 ik2w3XN3i08t/KJDcQWfbpc7KgmuU7M1DP3EpsyEdr9hH6grBEVOYAMoG
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RtJMqpSK
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 c34743daca0eb1dc855831a5210f0800a850088e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: c34743daca0eb1dc855831a5210f0800a850088e  iavf: fix reset task race with iavf_remove()

elapsed time: 725m

configs tested: 118
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r024-20230717   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                  randconfig-r021-20230717   gcc  
arc                  randconfig-r043-20230717   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          moxart_defconfig   clang
arm                  randconfig-r013-20230717   clang
arm                  randconfig-r046-20230717   clang
arm                         s3c6400_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230718   gcc  
csky                 randconfig-r026-20230717   gcc  
csky                 randconfig-r031-20230717   gcc  
hexagon              randconfig-r034-20230717   clang
hexagon              randconfig-r041-20230717   clang
hexagon              randconfig-r045-20230717   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230717   clang
i386         buildonly-randconfig-r005-20230717   clang
i386         buildonly-randconfig-r006-20230717   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230717   clang
i386                 randconfig-i002-20230717   clang
i386                 randconfig-i003-20230717   clang
i386                 randconfig-i004-20230717   clang
i386                 randconfig-i005-20230717   clang
i386                 randconfig-i006-20230717   clang
i386                 randconfig-i011-20230717   gcc  
i386                 randconfig-i012-20230717   gcc  
i386                 randconfig-i013-20230717   gcc  
i386                 randconfig-i014-20230717   gcc  
i386                 randconfig-i015-20230717   gcc  
i386                 randconfig-i016-20230717   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r032-20230717   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
microblaze           randconfig-r002-20230718   gcc  
microblaze           randconfig-r004-20230718   gcc  
microblaze           randconfig-r012-20230717   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r011-20230717   clang
mips                       rbtx49xx_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230718   gcc  
openrisc             randconfig-r015-20230717   gcc  
openrisc             randconfig-r016-20230717   gcc  
openrisc             randconfig-r025-20230717   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     asp8347_defconfig   gcc  
powerpc               mpc834x_itxgp_defconfig   clang
powerpc              randconfig-r023-20230717   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230717   gcc  
riscv                randconfig-r022-20230717   gcc  
riscv                randconfig-r042-20230717   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230718   gcc  
s390                 randconfig-r044-20230717   gcc  
sh                               allmodconfig   gcc  
sh                               j2_defconfig   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r035-20230717   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230717   clang
x86_64       buildonly-randconfig-r002-20230717   clang
x86_64       buildonly-randconfig-r003-20230717   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230717   gcc  
x86_64               randconfig-x002-20230717   gcc  
x86_64               randconfig-x003-20230717   gcc  
x86_64               randconfig-x004-20230717   gcc  
x86_64               randconfig-x005-20230717   gcc  
x86_64               randconfig-x006-20230717   gcc  
x86_64               randconfig-x011-20230717   clang
x86_64               randconfig-x012-20230717   clang
x86_64               randconfig-x013-20230717   clang
x86_64               randconfig-x014-20230717   clang
x86_64               randconfig-x015-20230717   clang
x86_64               randconfig-x016-20230717   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
