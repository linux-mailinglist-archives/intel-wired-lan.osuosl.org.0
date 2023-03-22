Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798836C4402
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 08:25:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 180D140CBB;
	Wed, 22 Mar 2023 07:25:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 180D140CBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679469943;
	bh=wG6ijP+e4Nf9cQzTB9lUgZZb0cqxv86cLNdF1T9R0EU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tmF+gbD6WuHrRqjpI06R9C0ElG4bV2L99ztPKp93trzrByPxhvMq+XN4FP5KZYcWP
	 alqoZgYKEpqIDrP04IMFERH46lfRiVKObET5ArassNN+DvWaEJxKzprZsoujpIhq0i
	 Fim4h3Mqk04W+xWYHqKU2jUELkVYuaGKEtDXiJgUbnMktInOYBMYAYFiNiukVRyqVa
	 J+8Y0lyoBnY4miPE1+9BJev7R+ffWQdAe7/F6e4k21ehzs1ZZrLRPu2qI+upEyE2dQ
	 WflOwxORdzeO/XnJ83KbgcG1yZ7bVmXY8aV9UOy7hV29YtWvzG6ZLicL3kWRFTB1zQ
	 JB29PW3T3rpTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W8-UU_VJWWXz; Wed, 22 Mar 2023 07:25:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3BA340CB8;
	Wed, 22 Mar 2023 07:25:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3BA340CB8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F13DE1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 07:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C890081D5A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 07:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C890081D5A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lwL-Jne2E9m4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 07:25:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4CB283EDC
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4CB283EDC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 07:25:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="401715232"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="401715232"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 00:25:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="746200368"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="746200368"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 22 Mar 2023 00:25:26 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pesqb-000D2w-1m;
 Wed, 22 Mar 2023 07:25:25 +0000
Date: Wed, 22 Mar 2023 15:24:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <641aad33.XR6IVDRnJVPl7K2G%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679469931; x=1711005931;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=D7tuLk8Fe4bGwjo90byB7EREauOd/qJb6b9hizMaO+k=;
 b=Hzl1Q5OBUJ9RrB5zItHlnhTf2qXUVt/p9y6nYx34ABzHWiJ4il3McPyF
 Dh28urhjicackkVIQUE414cNNmga7LYUDMDUS2hmvzFTi5VqDG698OXSk
 urknwInDt5BWKiCos78/RMOoJN/TXBYqVFaCOdjX+A+J5GF8XFaPNPmOC
 zQOnRNit5Lw8Mt+9ex0DXYXDlVX9YRQsIzf18lj6lPJuHk1vyo9ZYkqio
 MLDqhmqMNLFsSOsYEnT74mhxQ4FV/jnbNLHU0em9agvMeH/TXnI2M/YGa
 FWn8COdsRy9O7bGaGaLvzNb3oXvgQX1tCdZzX3+ExbEWYUq/HLRtRdtCA
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hzl1Q5OB
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 7d46c0e670d5f646879b52bacc387bf48ff0e7f1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 7d46c0e670d5f646879b52bacc387bf48ff0e7f1  ice: remove filters only if VSI is deleted

elapsed time: 732m

configs tested: 111
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
i386                          randconfig-a001   gcc  
i386                 randconfig-a002-20230320   clang
i386                          randconfig-a002   clang
i386                 randconfig-a003-20230320   clang
i386                          randconfig-a003   gcc  
i386                 randconfig-a004-20230320   clang
i386                          randconfig-a004   clang
i386                 randconfig-a005-20230320   clang
i386                          randconfig-a005   gcc  
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
