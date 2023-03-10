Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEF46B39C4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 10:12:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8196B4118D;
	Fri, 10 Mar 2023 09:12:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8196B4118D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678439544;
	bh=52kgX7i0tZaaAEDVdF2bfJuN3Mce8S5HCuCdj7uhKQg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=V6SF6QwMY1Fjy7EhqDoHp7IgOH2WaRIQi9NSKp9Rrb7dwOcgpv9NDZeKDc+lO8QhV
	 6xTE3sgNT4nQhKpNj4rfLv10ckWv1CVnxuxFs0ZclvVhenfS0kIdmCtXIPx9zXk7Sz
	 5MjMdz9Lbb8rPOXWTIVjwTwKHVN92dyG8Q9TpGu2zIyjN0AAnf3ELcX9D706ijjYYz
	 RiZOeWIVnh/GtA5Hi5498T8DSNx05EmrrkMbiA4s36qyG8J+9CGOTInACD9L+c2Vn7
	 BRpFEGJEIhRAp7SgSH4o5r5VMgDbPKo3OvYZ/CMPpcr0Vk3x7X+GVH4OYDYZAGsiwZ
	 E3okfQSLtHQfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jNmAWSlNulmy; Fri, 10 Mar 2023 09:12:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F90741180;
	Fri, 10 Mar 2023 09:12:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F90741180
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2884C1BF389
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 09:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C92182006
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 09:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C92182006
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id klFPnoERKSg6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 09:12:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C9BE821B3
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7C9BE821B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 09:12:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="325037914"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="325037914"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 01:12:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="627743259"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="627743259"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 10 Mar 2023 01:12:11 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1paYnL-0003gy-08;
 Fri, 10 Mar 2023 09:12:11 +0000
Date: Fri, 10 Mar 2023 17:11:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <640af44a.C2b2e6USg3RA43yx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678439533; x=1709975533;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6U2q/5s/CBmtSvXI2HksWj3LRWH1bQaur5V+uOmLVGM=;
 b=CJ2qLJ1W6RTvzL7EF/0BbzVcm+PrvfwxhD5rBArAwmIoKqHfP832YD/F
 sgHRSdGnIzyUeoGS8/juxhea8NQCZQeYxQ8JBerQVQ0krtoY+QPjs/I9T
 H/cH3kEgKGGBkABmgpS+PbjRf4nzY6SUn+KVmBYlPvD92PLrJaYwTgEXI
 ODSorS7ul9/DGHHJlOL688HshEdmGUDuuedj1GbJJiyYpgGpf0ypSuRgh
 uy3mWTN/0lVdPI9RmvMLLGQqxzJ9PxE5ZZVrhwi26uYDbsoVidv5j7Hvd
 jxSGSeXQBHhrQrJeoKZnzV3STy8myVAehpF/igZG0CBRdJu3Qb7y2k/xU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CJ2qLJ1W
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 643b7521eea7eafb4fbe00bb1776ccffaf603c8a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 643b7521eea7eafb4fbe00bb1776ccffaf603c8a  igb: refactor igb_ptp_adjfine_82580 to use diff_by_scaled_ppm

elapsed time: 723m

configs tested: 114
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230308   gcc  
arc                              alldefconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r023-20230308   gcc  
arc                  randconfig-r043-20230308   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                          collie_defconfig   clang
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                  randconfig-r046-20230308   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230308   gcc  
arm64                randconfig-r013-20230308   clang
csky         buildonly-randconfig-r006-20230308   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r034-20230308   gcc  
hexagon              randconfig-r041-20230308   clang
hexagon              randconfig-r045-20230308   clang
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
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64                         bigsur_defconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230308   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r032-20230308   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r024-20230308   gcc  
microblaze           randconfig-r035-20230308   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r026-20230308   gcc  
mips                        vocore2_defconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         alldefconfig   gcc  
openrisc     buildonly-randconfig-r002-20230308   gcc  
openrisc             randconfig-r011-20230308   gcc  
openrisc             randconfig-r022-20230308   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r005-20230308   clang
powerpc                   currituck_defconfig   gcc  
powerpc                    gamecube_defconfig   clang
powerpc                      katmai_defconfig   clang
powerpc                      ppc40x_defconfig   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                     taishan_defconfig   gcc  
powerpc                     tqm8555_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230308   gcc  
riscv                randconfig-r012-20230308   clang
riscv                randconfig-r042-20230308   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230308   gcc  
s390                 randconfig-r021-20230308   clang
s390                 randconfig-r025-20230308   clang
s390                 randconfig-r044-20230308   clang
sh                               allmodconfig   gcc  
sh                               j2_defconfig   gcc  
sh                           se7721_defconfig   gcc  
sparc        buildonly-randconfig-r004-20230308   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r036-20230308   gcc  
sparc64              randconfig-r031-20230308   gcc  
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
x86_64                               rhel-8.3   gcc  
xtensa                          iss_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
