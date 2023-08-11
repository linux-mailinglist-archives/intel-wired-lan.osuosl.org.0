Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 802017790A8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 15:21:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCC8441E61;
	Fri, 11 Aug 2023 13:21:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCC8441E61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691760060;
	bh=wlIo9BeTebF6xoLm7Um6PFPLu2lafml+cYHY5SZVNcE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5fnAdq6W0TdgIlLS+qrIxzZYKjqUgp5sSeAEITXv35h0omMnHBCfEg/XOppBYsXaY
	 RA/zFLAU9AV5DhGkTf6L4PGBYBIFAlJEFkkzGx5tQbzkom18ywfLP6J/xT5JLAnUl+
	 G23/xI31SV1ctwzhVHC3BdUmYDEogsfVWEPGiU5eq2ss3IUxAPKOadP1agS2IQ3vFq
	 VIQx5Jgu/keEKhlw4NCa1MFzK9xlDgLAPX6+NTXtEINwumbYrK4MkzQR+ohVZgaUKo
	 488bl0/cmWkNqkWyrL5uILGPCnb+mDEgB2VdqwwTbloNKXCx0ymY/B8oNrnVZhycG4
	 aQTzdsEujnJzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qtmUnjIabrhU; Fri, 11 Aug 2023 13:21:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 420FA41E4D;
	Fri, 11 Aug 2023 13:20:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 420FA41E4D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 509321BF473
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 13:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 28219402A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 13:20:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28219402A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TFz1fLzMC7N2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 13:20:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F41E540106
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 13:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F41E540106
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="361814970"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="361814970"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 06:20:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="979236211"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="979236211"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 11 Aug 2023 06:20:42 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qUS4I-0007oH-0z
 for intel-wired-lan@lists.osuosl.org; Fri, 11 Aug 2023 13:20:42 +0000
Date: Fri, 11 Aug 2023 21:20:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308112115.VzkAxhHn-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691760053; x=1723296053;
 h=date:from:to:subject:message-id;
 bh=9jkNHfU9FIfSvK9gAxjmHTPYob+Pi1Yfiz6a2vP4Pp8=;
 b=RYsuc5Kkka1SQe3mneGSe4YwfbHNu2SN54a5k1wDnvTEOHG8qguK3Ly+
 mB66fp40K9Ac+n8npxqsJ5KLNLo0MH11DHbb16Rx3Lb7dhrKkH/K3AKc0
 k8p2SPnt/8UUERlY/WEpS/PYpWBVfSaV1T81FLSX0xdmEFZbGyYxzFalc
 CGmXvD9gEFYGqhGnTxTt+RDDZjWItKL2wONrH/GpsatukxP/p/QfJbza6
 iwFZxBrkQfr3kk2rCw/TR1C8C9heFnH97dtN8BgAwEcOC1KGQ7MPQ7M7D
 gqymVoSLMm7LNiZ5/NvxkBNJNdIDUbpkW29an0nwxF7OuuaMST7v5R7/Y
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RYsuc5Kk
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 72c0c5ec9fabc3580c98c41a7dc913ad7747c561
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
branch HEAD: 72c0c5ec9fabc3580c98c41a7dc913ad7747c561  ice: refactor ice_vsi_is_vlan_pruning_ena

elapsed time: 881m

configs tested: 127
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r034-20230811   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r006-20230811   gcc  
arc                  randconfig-r043-20230811   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                                 defconfig   gcc  
arm                            dove_defconfig   clang
arm                       imx_v6_v7_defconfig   gcc  
arm                        mvebu_v5_defconfig   clang
arm                  randconfig-r014-20230811   clang
arm                  randconfig-r015-20230811   clang
arm                  randconfig-r046-20230811   clang
arm                         s5pv210_defconfig   clang
arm                       spear13xx_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r021-20230811   clang
hexagon              randconfig-r041-20230811   clang
hexagon              randconfig-r045-20230811   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230811   clang
i386         buildonly-randconfig-r005-20230811   clang
i386         buildonly-randconfig-r006-20230811   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230811   clang
i386                 randconfig-i002-20230811   clang
i386                 randconfig-i003-20230811   clang
i386                 randconfig-i004-20230811   clang
i386                 randconfig-i005-20230811   clang
i386                 randconfig-i006-20230811   clang
i386                 randconfig-i011-20230811   gcc  
i386                 randconfig-i012-20230811   gcc  
i386                 randconfig-i013-20230811   gcc  
i386                 randconfig-i014-20230811   gcc  
i386                 randconfig-i015-20230811   gcc  
i386                 randconfig-i016-20230811   gcc  
i386                 randconfig-r003-20230811   clang
i386                 randconfig-r031-20230811   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230811   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230811   gcc  
m68k                 randconfig-r032-20230811   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                     decstation_defconfig   gcc  
mips                           gcw0_defconfig   gcc  
mips                        qi_lb60_defconfig   clang
mips                   sb1250_swarm_defconfig   gcc  
nios2                         10m50_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r026-20230811   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r035-20230811   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                 canyonlands_defconfig   gcc  
powerpc                       holly_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                  mpc866_ads_defconfig   clang
powerpc                       ppc64_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r005-20230811   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r023-20230811   gcc  
riscv                randconfig-r042-20230811   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r036-20230811   clang
s390                 randconfig-r044-20230811   gcc  
sh                               allmodconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                   randconfig-r016-20230811   gcc  
sh                   randconfig-r033-20230811   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r022-20230811   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r012-20230811   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230811   clang
x86_64       buildonly-randconfig-r002-20230811   clang
x86_64       buildonly-randconfig-r003-20230811   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r011-20230811   gcc  
x86_64               randconfig-x001-20230811   gcc  
x86_64               randconfig-x002-20230811   gcc  
x86_64               randconfig-x003-20230811   gcc  
x86_64               randconfig-x004-20230811   gcc  
x86_64               randconfig-x005-20230811   gcc  
x86_64               randconfig-x006-20230811   gcc  
x86_64               randconfig-x011-20230811   clang
x86_64               randconfig-x012-20230811   clang
x86_64               randconfig-x013-20230811   clang
x86_64               randconfig-x014-20230811   clang
x86_64               randconfig-x015-20230811   clang
x86_64               randconfig-x016-20230811   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                          iss_defconfig   gcc  
xtensa               randconfig-r013-20230811   gcc  
xtensa               randconfig-r025-20230811   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
