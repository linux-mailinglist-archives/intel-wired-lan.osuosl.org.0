Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27569749DC8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 15:32:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 880F041863;
	Thu,  6 Jul 2023 13:32:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 880F041863
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688650357;
	bh=lFLqn72Auq/uQ3WzOsp/fw6PQ6JQwa2dJhv9e7P2mm0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SIJLSNShCUqBYFyi5VHNMxk8LaqiHeXcgV7vL1IZlerBLhiUxkLR/S704AnOMmq6+
	 eHh6qnZOIl2VIFMwsNjD2w0lyVa0O5I46vHXYeyzUPpmWMt67MUUhW05Zc3x1Z0NWw
	 s/mXrdt09IkbFf3x8uA9kDLWRkAEdybOprZiOs+6FXrIzizWz4hhOWSaylpfHgk+9j
	 9buSSc+cly9A3Qx/ZgufIwuyErzZCM0DJ+GitM/tKaR2AsRCxHI/G6RlCObhs8AJAj
	 6iTFARH8PS2O1uYP4US5GYiQxlHNT7MX0fzhFExGvcw3RmaD19JtCiDLrw/6TLyO9g
	 NrE7S4YCcqCLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dNBccOj_coW7; Thu,  6 Jul 2023 13:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03C744185F;
	Thu,  6 Jul 2023 13:32:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03C744185F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A09871BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 834384185F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 834384185F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nggesh4WJO43 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 13:32:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4795741859
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4795741859
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 13:32:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="348391628"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="348391628"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 06:32:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="754756676"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="754756676"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 06 Jul 2023 06:32:26 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qHP5t-0001LQ-1M
 for intel-wired-lan@lists.osuosl.org; Thu, 06 Jul 2023 13:32:25 +0000
Date: Thu, 06 Jul 2023 21:32:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307062108.DLXwFM7K-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688650348; x=1720186348;
 h=date:from:to:subject:message-id;
 bh=rY1TDVwF/Yp7d5owd5vaH9DgO7lM0eRm+S2nyRU1BWQ=;
 b=l3ftUWFxlh8FHds82vjcwi7j4zKZyob269tALebt++j8ZeaYudcYkVIq
 RDSZ7UW7RHkIcOHWGw/LFyyS5GWN2HlAS4e7UjwErbXrnItrtQVlLo1Cp
 A7x+9VQAPFkxcgOzfUFC56ne7dk6E0lEKG6W21ifyAzJx8lO4PpC4hplV
 NPyLszQAoJhbBIUMOwzgdW5SWb2qRZo2J4jhNuzcb7O5a2El2tpQSUmkj
 NVA5HOx+CambHeOE/RlufweyZGt2UeH3Z1ajCsjtk94zZdAVcaATOr0Jf
 IzZNF0BFnbmiRj3ZxxJPUrfPqSw6zv+cY0J3o+TM3f3NlA4VqTIiCbdUm
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l3ftUWFx
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 29440df3d52b4ac7909e75c3094da1ede0286e91
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
branch HEAD: 29440df3d52b4ac7909e75c3094da1ede0286e91  igc: Prevent garbled TX queue with XDP ZEROCOPY

elapsed time: 720m

configs tested: 132
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230706   gcc  
arc                  randconfig-r006-20230706   gcc  
arc                  randconfig-r043-20230706   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                                 defconfig   gcc  
arm                       imx_v4_v5_defconfig   clang
arm                         lpc18xx_defconfig   gcc  
arm                   milbeaut_m10v_defconfig   clang
arm                        multi_v7_defconfig   gcc  
arm                         mv78xx0_defconfig   clang
arm                  randconfig-r046-20230706   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r036-20230706   clang
csky                                defconfig   gcc  
csky                 randconfig-r001-20230706   gcc  
csky                 randconfig-r023-20230706   gcc  
hexagon                          alldefconfig   clang
hexagon              randconfig-r016-20230706   clang
hexagon              randconfig-r021-20230706   clang
hexagon              randconfig-r035-20230706   clang
hexagon              randconfig-r041-20230706   clang
hexagon              randconfig-r045-20230706   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230706   clang
i386         buildonly-randconfig-r005-20230706   clang
i386         buildonly-randconfig-r006-20230706   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230706   clang
i386                 randconfig-i002-20230706   clang
i386                 randconfig-i003-20230706   clang
i386                 randconfig-i004-20230706   clang
i386                 randconfig-i005-20230706   clang
i386                 randconfig-i006-20230706   clang
i386                 randconfig-i011-20230706   gcc  
i386                 randconfig-i012-20230706   gcc  
i386                 randconfig-i013-20230706   gcc  
i386                 randconfig-i014-20230706   gcc  
i386                 randconfig-i015-20230706   gcc  
i386                 randconfig-i016-20230706   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                            q40_defconfig   gcc  
m68k                 randconfig-r011-20230706   gcc  
m68k                           sun3_defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1000-neo_defconfig   clang
mips                          malta_defconfig   clang
mips                 randconfig-r022-20230706   clang
mips                           rs90_defconfig   clang
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230706   gcc  
nios2                randconfig-r025-20230706   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                          g5_defconfig   clang
powerpc                  iss476-smp_defconfig   gcc  
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                     mpc83xx_defconfig   gcc  
powerpc                    sam440ep_defconfig   gcc  
powerpc                     tqm8541_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                    nommu_virt_defconfig   clang
riscv                randconfig-r042-20230706   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230706   clang
s390                 randconfig-r014-20230706   gcc  
s390                 randconfig-r034-20230706   clang
s390                 randconfig-r044-20230706   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r012-20230706   gcc  
sh                   randconfig-r015-20230706   gcc  
sh                           se7751_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r033-20230706   gcc  
sparc64              randconfig-r031-20230706   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r024-20230706   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230706   clang
x86_64       buildonly-randconfig-r002-20230706   clang
x86_64       buildonly-randconfig-r003-20230706   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230706   gcc  
x86_64               randconfig-x002-20230706   gcc  
x86_64               randconfig-x003-20230706   gcc  
x86_64               randconfig-x004-20230706   gcc  
x86_64               randconfig-x005-20230706   gcc  
x86_64               randconfig-x006-20230706   gcc  
x86_64               randconfig-x011-20230706   clang
x86_64               randconfig-x012-20230706   clang
x86_64               randconfig-x013-20230706   clang
x86_64               randconfig-x014-20230706   clang
x86_64               randconfig-x015-20230706   clang
x86_64               randconfig-x016-20230706   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                          iss_defconfig   gcc  
xtensa               randconfig-r013-20230706   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
