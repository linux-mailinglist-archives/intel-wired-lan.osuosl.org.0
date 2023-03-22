Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8F06C43F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 08:24:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF89340CBC;
	Wed, 22 Mar 2023 07:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF89340CBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679469875;
	bh=5CkIbCw5/fK8/wTwIUGMaLqC+B2lA6nACyJ6d563n70=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3NHmDv+OvOAkdz9NQGZR3bGD07z33Omj4DrVfzdWoXvX1LZe5RzvKfObNuc8ZdsY3
	 wxZ4FFJL7acpvPEPhTo2XQT1544jvkLWB9KwYLnzibFEo7rocHinevb/nTbMCKwkBx
	 optOZqENSVZVnh+jtGY/PQwcmiSw+U1382E/tbBCKNNzc+f29BYr2YiBisIaYjlUiC
	 +1McWgumPh3GbXKEgdrpwqPg3+KqAK+8UcxHOR3PfyL9HEowvu5Ow9SMwcj5G33iEZ
	 pvO7PesRLPkw7JmeBz+bjAaQqyfOtdX8Afa1J2Kwu5rMAAqNv2Yc6iwrsXhYSfhtuy
	 KbNSuAMLTZhUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2qOEODVR2rgt; Wed, 22 Mar 2023 07:24:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7FDA4031F;
	Wed, 22 Mar 2023 07:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7FDA4031F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E4C3F1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 07:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD3FD81F94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 07:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD3FD81F94
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WljnNnKO-d4p for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 07:24:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5688081767
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5688081767
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 07:24:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340684170"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340684170"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 00:24:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="750937939"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="750937939"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 22 Mar 2023 00:24:26 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pespd-000D2g-1O;
 Wed, 22 Mar 2023 07:24:25 +0000
Date: Wed, 22 Mar 2023 15:24:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <641aad1e.4x8ZtRkVllXUGUkW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679469868; x=1711005868;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=X6PcYpP5IdOhEsdvACUGFML7OCkgchJD6qQe5KPV7Qo=;
 b=Rf2qZefdbdvIvQOgr+9C0I8iwAJQj0KSVp/20pI8E4ySeNUzTcU2A82E
 w8VirPecyBz3gc3o9dkYzz5niRRSsQZ+GynlOh4Pn2uQ01GsMmA2+SPWI
 tu2FiLeb2IBhAq3wI7rtLX0fEQl4tr6ZkW+b0rRycEl8NiMXMXIpkPmkM
 NZ64DNP55ixxfkCT3lJ1fvStftprOsLOPXZ2WoZgXxM4GTCR9KOrF8Hy2
 BD5wPji53Z2nOKyYYdHVbvAfBNYTB0/zvFjiYcIYuFLYvQA5xfpq1UaMg
 MFjj10ichQS7uxu0gc6Z8zqh45fjPvgxI7mnYQ5YZm7QcnsdfZiw09cDs
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rf2qZefd
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 65364bbe0b022f397142e2486d0296203c45f0bd
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 65364bbe0b022f397142e2486d0296203c45f0bd  igc: Remove obsolete DMA coalescing code

elapsed time: 732m

configs tested: 108
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r023-20230319   gcc  
alpha                randconfig-r031-20230319   gcc  
alpha                randconfig-r033-20230319   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230319   gcc  
csky                 randconfig-r022-20230319   gcc  
csky                 randconfig-r035-20230319   gcc  
hexagon                             defconfig   clang
hexagon              randconfig-r004-20230320   clang
hexagon              randconfig-r041-20230319   clang
hexagon              randconfig-r045-20230319   clang
i386                             allyesconfig   gcc  
i386                         debian-10.3-func   gcc  
i386                   debian-10.3-kselftests   gcc  
i386                        debian-10.3-kunit   gcc  
i386                          debian-10.3-kvm   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230320   clang
i386                 randconfig-a002-20230320   clang
i386                          randconfig-a002   clang
i386                 randconfig-a003-20230320   clang
i386                 randconfig-a004-20230320   clang
i386                          randconfig-a004   clang
i386                 randconfig-a005-20230320   clang
i386                 randconfig-a006-20230320   clang
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230320   gcc  
i386                 randconfig-a012-20230320   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230320   gcc  
i386                 randconfig-a014-20230320   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230320   gcc  
i386                 randconfig-a016-20230320   gcc  
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r036-20230319   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r026-20230319   gcc  
microblaze           randconfig-r014-20230319   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      bmips_stb_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r034-20230319   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r025-20230319   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230319   clang
powerpc                   microwatt_defconfig   clang
powerpc                     mpc5200_defconfig   clang
powerpc              randconfig-r002-20230319   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230319   gcc  
riscv                randconfig-r042-20230319   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230319   clang
s390                                defconfig   gcc  
s390                 randconfig-r044-20230319   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r011-20230319   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230319   gcc  
sparc                randconfig-r021-20230319   gcc  
sparc                randconfig-r032-20230319   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230320   clang
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230320   clang
x86_64               randconfig-a003-20230320   clang
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230320   clang
x86_64               randconfig-a005-20230320   clang
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230320   clang
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64               randconfig-r006-20230320   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
