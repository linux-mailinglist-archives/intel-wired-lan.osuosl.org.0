Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0EE76452F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 06:58:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E64941EF3;
	Thu, 27 Jul 2023 04:58:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E64941EF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690433928;
	bh=Zx6kl4rTo4MGVDqZSGJiZm8SNxfSx93WCrMQGLAB1X8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=o95dftFEaX0Mgt9kOhRu9e5teg9UDmpzjWqr6d4S5wLxC4Ptzs9IrhBmyN7ztt6QB
	 la0R4sKH7MpI1y+RsggK12AHgMHxLXwCmPQhRMnUTSysnGzFcfZJP7/FU6kk28xuyM
	 10o+wfW9/XbGmGPPb4gkbLNEdVUDzHS/mWezfU9uLzCf5JVJu+M+ts475ed0j9dF1Z
	 zqzcIWrYKc8obaciC9FOGRVa6eGiGfSaI+Q/byBwDhl4iPmNizlDzQk2XG1M8OwhcT
	 2YK1BthlQ71jxlY2bDPhWwI6e3VivuYqAf8Mw8e1LwI0XXGFvVN5cMOhL3BRS0wmIa
	 jc/G1J/0Mw8xw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id isitw7lnnKiK; Thu, 27 Jul 2023 04:58:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E34A141EB3;
	Thu, 27 Jul 2023 04:58:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E34A141EB3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE6291BF853
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 04:58:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 96B1A80C42
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 04:58:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96B1A80C42
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Veco9_krfYxV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 04:58:35 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2332380C39
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 04:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2332380C39
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="454572356"
X-IronPort-AV: E=Sophos;i="6.01,233,1684825200"; d="scan'208";a="454572356"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 21:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="1057517272"
X-IronPort-AV: E=Sophos;i="6.01,233,1684825200"; d="scan'208";a="1057517272"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jul 2023 21:58:32 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qOt4x-0001vN-0F
 for intel-wired-lan@lists.osuosl.org; Thu, 27 Jul 2023 04:58:25 +0000
Date: Thu, 27 Jul 2023 12:57:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307271247.O7Hm4qmf-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690433915; x=1721969915;
 h=date:from:to:subject:message-id;
 bh=g0qUqCWgtImZ8J9gcFofUDory6Sul2UXuMiYQFUqs8o=;
 b=JnQbh72gndnL7lBZoifnVKRBrBa8gXkmH2W+cTvjxOzT4YS9GlLwN3dZ
 6BFDxyvJvjcGth7pduKUz+Qmv7XxgbRThfXXLB8Ix9LROQf62sfnWJ+5M
 jydBqy5SpRT9WepPlnxWvXAGPU2L14h3kVZICGxZxlRhCAIqFH+sDts84
 pKyaYjRej4kRcGi8geX2l9SHtzGjKBAccdJKdkfGYEXx4UNPxMbqnJOJo
 Rcs5rRECvezcGcbciRbLiVCwQAdZcOidrfYvlXRtnUO1IgUNGrBh0u3rH
 sOJs/L4pM3Yg2kFPbl2heEl80s9zA4YbgaGjzaYn/09oTAAgpOLiw/uzI
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JnQbh72g
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 adfc2495f825bd31c514db14fd5b05bd2985fff7
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
branch HEAD: adfc2495f825bd31c514db14fd5b05bd2985fff7  igb: Stop PTP related workqueues if aren't necessary

elapsed time: 755m

configs tested: 128
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230726   gcc  
alpha                randconfig-r013-20230726   gcc  
alpha                randconfig-r022-20230726   gcc  
alpha                randconfig-r032-20230726   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230726   gcc  
arc                  randconfig-r043-20230726   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230726   clang
arm                  randconfig-r004-20230726   clang
arm                  randconfig-r046-20230726   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r025-20230726   clang
arm64                randconfig-r034-20230726   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230726   gcc  
hexagon              randconfig-r013-20230726   clang
hexagon              randconfig-r014-20230726   clang
hexagon              randconfig-r036-20230726   clang
hexagon              randconfig-r041-20230726   clang
hexagon              randconfig-r045-20230726   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230726   gcc  
i386         buildonly-randconfig-r005-20230726   gcc  
i386         buildonly-randconfig-r006-20230726   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230726   gcc  
i386                 randconfig-i002-20230726   gcc  
i386                 randconfig-i003-20230726   gcc  
i386                 randconfig-i004-20230726   gcc  
i386                 randconfig-i005-20230726   gcc  
i386                 randconfig-i006-20230726   gcc  
i386                 randconfig-i011-20230726   clang
i386                 randconfig-i011-20230727   gcc  
i386                 randconfig-i012-20230726   clang
i386                 randconfig-i012-20230727   gcc  
i386                 randconfig-i013-20230726   clang
i386                 randconfig-i013-20230727   gcc  
i386                 randconfig-i014-20230726   clang
i386                 randconfig-i014-20230727   gcc  
i386                 randconfig-i015-20230726   clang
i386                 randconfig-i015-20230727   gcc  
i386                 randconfig-i016-20230726   clang
i386                 randconfig-i016-20230727   gcc  
i386                 randconfig-r034-20230726   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r016-20230726   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r023-20230726   gcc  
microblaze           randconfig-r011-20230726   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r026-20230726   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230726   gcc  
nios2                randconfig-r015-20230726   gcc  
nios2                randconfig-r032-20230726   gcc  
nios2                randconfig-r033-20230726   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230726   gcc  
parisc               randconfig-r006-20230726   gcc  
parisc               randconfig-r011-20230726   gcc  
parisc               randconfig-r014-20230726   gcc  
parisc               randconfig-r033-20230726   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r025-20230726   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r022-20230726   clang
riscv                randconfig-r036-20230726   gcc  
riscv                randconfig-r042-20230726   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230726   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r015-20230726   gcc  
sh                   randconfig-r016-20230726   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r013-20230726   gcc  
sparc64              randconfig-r031-20230726   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230726   gcc  
x86_64       buildonly-randconfig-r002-20230726   gcc  
x86_64       buildonly-randconfig-r003-20230726   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r021-20230726   clang
x86_64               randconfig-r031-20230726   gcc  
x86_64               randconfig-x001-20230726   clang
x86_64               randconfig-x002-20230726   clang
x86_64               randconfig-x003-20230726   clang
x86_64               randconfig-x004-20230726   clang
x86_64               randconfig-x005-20230726   clang
x86_64               randconfig-x006-20230726   clang
x86_64               randconfig-x011-20230726   gcc  
x86_64               randconfig-x012-20230726   gcc  
x86_64               randconfig-x013-20230726   gcc  
x86_64               randconfig-x014-20230726   gcc  
x86_64               randconfig-x015-20230726   gcc  
x86_64               randconfig-x016-20230726   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r015-20230726   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
