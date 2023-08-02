Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 198D976CA9E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 12:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D45F8164A;
	Wed,  2 Aug 2023 10:18:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D45F8164A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690971531;
	bh=d0/VOpe3hCdYuE6ZUA/VI+uvmYB+kQeLzk0DYjCxEYo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=25mFMqr1aKxbVhdEZaNMakokaDOJldwfFfuSTEMJwoo42oNFLZSmrUrZ8M3WJkCJM
	 hENVk8SIkvczPHtcgKbJVi68V6grojkYbgutG111P3lM2E733/INEmxw4MpLCFHBKB
	 IG9Lr1uLhcWe1NKypPhVloYLNlp6moBE4j7VYWAoWRI2Wp/rnc5o7ohMpd2tVcbjZ3
	 bPSeYxsiRQ9kbqYVjOhg9P5FbGefIsaXuyxLcUUN40luBdNCpihWGmBEF5/+s9bqkV
	 9k4OSLeVe0Gnzbuh2K29RLOcS7Wp234oAB1PRMVHMgtqlRdi5Qczg/J1+Gt0PlR/1T
	 dQbbUPqpa+HCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ibk67mJa42Y; Wed,  2 Aug 2023 10:18:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D6B380B81;
	Wed,  2 Aug 2023 10:18:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D6B380B81
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 97F631BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 10:18:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2BD0681656
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 10:18:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BD0681656
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YxKMHY3ZCqPV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 10:18:27 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30A618137E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 10:18:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30A618137E
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="373183587"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="373183587"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 03:18:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="843079333"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="843079333"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2023 03:18:24 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qR8vw-00017I-0e
 for intel-wired-lan@lists.osuosl.org; Wed, 02 Aug 2023 10:18:24 +0000
Date: Wed, 02 Aug 2023 18:17:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308021832.zXK7oNSt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690971507; x=1722507507;
 h=date:from:to:subject:message-id;
 bh=RhHgx0F/HdKXRiIymTlmmL0I3JxQVLwyoI6Eg4Js/gM=;
 b=VBHIvD1JtDzQNBTwP5/mNcsnkvZZq6iqM4/sUb2DR1kgP3dhI8/zvAh/
 7K/eLLn+/lO6jiFhkV8LByHwelm9bzL+25FsnOSgWp0rL8jXqGz6kLb2x
 HwdYj6cYWBuk38n8HRf0MLJCk5H/6N6ZLmXmUUez9V81ZJksk6UevXd36
 HyETqWzg7OgJQbqK38UOKrsN/MC3WMlmJIRRtnhlWVuaK4qNha/K+MPwf
 A3pnihcylu7cLHQGsMSFRE7KyESRsMxrWcLJ5V7235mbHtb481NKT49+v
 wabgvAMYXxSs0ODKJkHSnjpHZopB2mM5yVcVkNYmZFyURaZ/dG51A02ad
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VBHIvD1J
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 7ee0a2c40bd5c73ee8ad6363f3c5ea76ac13ceb4
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
branch HEAD: 7ee0a2c40bd5c73ee8ad6363f3c5ea76ac13ceb4  igc: Modify the tx-usecs coalesce setting

elapsed time: 1007m

configs tested: 113
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230731   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                  randconfig-r031-20230731   gcc  
arc                  randconfig-r043-20230731   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230801   clang
arm                  randconfig-r046-20230731   gcc  
arm                         socfpga_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230731   clang
csky                                defconfig   gcc  
hexagon              randconfig-r021-20230731   clang
hexagon              randconfig-r041-20230731   clang
hexagon              randconfig-r045-20230731   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230731   gcc  
i386         buildonly-randconfig-r005-20230731   gcc  
i386         buildonly-randconfig-r006-20230731   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230731   gcc  
i386                 randconfig-i002-20230731   gcc  
i386                 randconfig-i003-20230731   gcc  
i386                 randconfig-i004-20230731   gcc  
i386                 randconfig-i005-20230731   gcc  
i386                 randconfig-i006-20230731   gcc  
i386                 randconfig-i011-20230731   clang
i386                 randconfig-i012-20230731   clang
i386                 randconfig-i013-20230731   clang
i386                 randconfig-i014-20230731   clang
i386                 randconfig-i015-20230731   clang
i386                 randconfig-i016-20230731   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r016-20230731   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r005-20230801   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        omega2p_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230801   gcc  
openrisc             randconfig-r014-20230731   gcc  
openrisc             randconfig-r036-20230731   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r023-20230731   gcc  
parisc               randconfig-r024-20230731   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                    sam440ep_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r034-20230731   gcc  
riscv                randconfig-r042-20230731   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230731   clang
sh                               allmodconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                               j2_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                   randconfig-r006-20230801   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230801   gcc  
sparc64              randconfig-r015-20230731   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r032-20230731   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230731   gcc  
x86_64       buildonly-randconfig-r002-20230731   gcc  
x86_64       buildonly-randconfig-r003-20230731   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230731   clang
x86_64               randconfig-x002-20230731   clang
x86_64               randconfig-x003-20230731   clang
x86_64               randconfig-x004-20230731   clang
x86_64               randconfig-x005-20230731   clang
x86_64               randconfig-x006-20230731   clang
x86_64               randconfig-x011-20230731   gcc  
x86_64               randconfig-x012-20230731   gcc  
x86_64               randconfig-x013-20230731   gcc  
x86_64               randconfig-x014-20230731   gcc  
x86_64               randconfig-x015-20230731   gcc  
x86_64               randconfig-x016-20230731   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r022-20230731   gcc  
xtensa               randconfig-r033-20230731   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
