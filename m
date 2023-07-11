Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EBF74E5B8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 06:10:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AB45404C9;
	Tue, 11 Jul 2023 04:10:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AB45404C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689048651;
	bh=Evdr/5tRDQAo99+ydnbSVARhyMCcMavWbiJUj8fOBHc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cl9B6p+PlGmMslKIBzER/QjQqbbVSwvRzH2OYYBZ+p34TIhaie0VZmA3AFnB2av4i
	 qaTJFy1KeihJxaKUSZyLiFfLSw3RY9lVC84FasY5efYPbpTwdyMBhNaGkseKeq8bzG
	 24rup5WPBErfvGHGseCYgKxnIanJDXMFWHWfe0GRAzbqxzTSBnoXvZiSGaNPPJWWwT
	 xQuAbAftKNNV+eqT68o+giq6mjF+/1C+HL2soSQpt/wDPEpkU/ipSM6uHjpvyqvzlU
	 Ay/IFK6Rie2lQMhTI9hNX0J4ulqQwepfxmFyNYYy4NMRisUMWqVxGnhqwP7gYnI6n/
	 8Ub9Y5vu30XIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UVKCfNSZ344g; Tue, 11 Jul 2023 04:10:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E57A640354;
	Tue, 11 Jul 2023 04:10:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E57A640354
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B9F61BF36B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 04:10:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33EE681F68
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 04:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33EE681F68
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cqh5rjveY-pe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 04:10:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E57181F65
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E57181F65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 04:10:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="364556427"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364556427"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 21:10:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="715038154"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="715038154"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2023 21:10:40 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qJ4i0-0004IK-0T
 for intel-wired-lan@lists.osuosl.org; Tue, 11 Jul 2023 04:10:40 +0000
Date: Tue, 11 Jul 2023 12:10:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307111202.lDzEtWwC-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689048643; x=1720584643;
 h=date:from:to:subject:message-id;
 bh=TM34xg2mxhXiuknFT/37du5fneiBK+YkzSfBLnq9zIc=;
 b=Vbshcxq9pvjgFjzSgBppVw+HoVLgLowf2oTy0wJzfzFyswmQluX8Noho
 KK+XVchnNYmFX5i/asAl0mUIyGkUqZJfv6F+5aOIDHQULTfLejZ6onGTI
 NpdVal2+I6mL/qSqT46YuibhdM9tsAZ0cKg5SZsJpfUKzJI07v4JTB3yu
 RPLeDSnM4TYuCv6/xZHp9+4jN1hScxu91T4IDZq8LuS4wdIJEbyZmouhS
 eTsy9sJNs29TZGTv7/G2LZfe7fK0aPGTMSHAfipRUK8VquoaRZUMz5bGo
 Rn6ihbb0tUkaDuYQwwgi6YjfWhImMRvIheNArLDRxF7rrz0d8RRpQIr+P
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vbshcxq9
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b4e87f37b7fc4e0408a1a67b60839c4f2e6fa40f
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
branch HEAD: b4e87f37b7fc4e0408a1a67b60839c4f2e6fa40f  igc: Fix Kernel Panic during ndo_tx_timeout callback

elapsed time: 726m

configs tested: 129
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230710   gcc  
alpha                randconfig-r025-20230710   gcc  
alpha                randconfig-r034-20230710   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230710   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g4_defconfig   clang
arm                                 defconfig   gcc  
arm                   milbeaut_m10v_defconfig   clang
arm                        mvebu_v7_defconfig   gcc  
arm                  randconfig-r046-20230710   gcc  
arm                         s5pv210_defconfig   clang
arm                        spear3xx_defconfig   clang
arm                       versatile_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230710   gcc  
arm64                randconfig-r006-20230710   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r024-20230710   gcc  
csky                 randconfig-r036-20230710   gcc  
hexagon                             defconfig   clang
hexagon              randconfig-r041-20230710   clang
hexagon              randconfig-r045-20230710   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230710   gcc  
i386         buildonly-randconfig-r005-20230710   gcc  
i386         buildonly-randconfig-r006-20230710   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230710   gcc  
i386                 randconfig-i002-20230710   gcc  
i386                 randconfig-i003-20230710   gcc  
i386                 randconfig-i004-20230710   gcc  
i386                 randconfig-i005-20230710   gcc  
i386                 randconfig-i006-20230710   gcc  
i386                 randconfig-i011-20230710   clang
i386                 randconfig-i012-20230710   clang
i386                 randconfig-i013-20230710   clang
i386                 randconfig-i014-20230710   clang
i386                 randconfig-i015-20230710   clang
i386                 randconfig-i016-20230710   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230710   gcc  
loongarch            randconfig-r015-20230710   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                 randconfig-r003-20230710   gcc  
m68k                           virt_defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath25_defconfig   clang
mips                 randconfig-r002-20230710   clang
mips                 randconfig-r011-20230710   gcc  
mips                 randconfig-r014-20230710   gcc  
mips                 randconfig-r026-20230710   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r006-20230710   gcc  
openrisc             randconfig-r022-20230710   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r013-20230710   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     asp8347_defconfig   gcc  
powerpc                 linkstation_defconfig   gcc  
powerpc                       ppc64_defconfig   gcc  
powerpc              randconfig-r021-20230710   clang
powerpc              randconfig-r035-20230710   gcc  
powerpc                     sequoia_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r016-20230710   clang
riscv                randconfig-r023-20230710   clang
riscv                randconfig-r031-20230710   gcc  
riscv                randconfig-r032-20230710   gcc  
riscv                randconfig-r042-20230710   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230710   gcc  
s390                 randconfig-r044-20230710   clang
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230710   gcc  
sparc64              randconfig-r002-20230710   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r012-20230710   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230710   gcc  
x86_64       buildonly-randconfig-r002-20230710   gcc  
x86_64       buildonly-randconfig-r003-20230710   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r033-20230710   gcc  
x86_64               randconfig-x001-20230710   clang
x86_64               randconfig-x002-20230710   clang
x86_64               randconfig-x003-20230710   clang
x86_64               randconfig-x004-20230710   clang
x86_64               randconfig-x005-20230710   clang
x86_64               randconfig-x006-20230710   clang
x86_64               randconfig-x011-20230710   gcc  
x86_64               randconfig-x012-20230710   gcc  
x86_64               randconfig-x013-20230710   gcc  
x86_64               randconfig-x014-20230710   gcc  
x86_64               randconfig-x015-20230710   gcc  
x86_64               randconfig-x016-20230710   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                           alldefconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
