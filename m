Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03266C2AF6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 08:00:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A91D40981;
	Tue, 21 Mar 2023 07:00:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A91D40981
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679382027;
	bh=ySfgOZJ0Lj6xpWV77udvHRhUlc0A6dJubxpeiGmR4+8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Dm1mYOP8cAI9NWRe3CkB2cr6kXHzLaxp0qH8UqK+pu6ezqZ0Q/HDwMYPkwfKKIRXM
	 /eGk0aVzgpPVFFnyovixpBBZcfPIAGnJ2oyDHUoVGZtQjxVhk2NBbHpf9IyVURn65d
	 B5w0o1GWwXUoQVoqXmJTFv/aLbKRX0e4o1TvZzR7F6RvKTXJxF7/j9LsEx4sgZ/nN5
	 0zEi6YRfcgopIwgb7/ec/yaK7hRoSWzzUJ4w5H8Q729662BuYzdk647MciLbRe8SfZ
	 2CXbQn2K+x0UApUuTOo+UhKGZfhwD7vilvP0vHlpFqLXvZL33THCtzslQPQYrDl9k8
	 T8PnnlaSxJpag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0_ANyRznEPfR; Tue, 21 Mar 2023 07:00:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4029E4026F;
	Tue, 21 Mar 2023 07:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4029E4026F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FAEA1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 07:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8493F41780
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 07:00:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8493F41780
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7eMeHoDBDXJY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 07:00:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1111341772
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1111341772
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 07:00:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="336369317"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="336369317"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 00:00:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="658663973"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="658663973"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 21 Mar 2023 00:00:18 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1peVyj-000BhY-11;
 Tue, 21 Mar 2023 07:00:17 +0000
Date: Tue, 21 Mar 2023 14:59:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <641955ca.2TUKySm/1g5Xh5zQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679382020; x=1710918020;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=yZkaN4qYvPkjK+AJQ8KxKJxko7N9QSCa92sHgTIlH34=;
 b=nXNs98SnM9U8YyIAPC6GiG1CSSiDdOjeWAmk0k7NFh0YyDNOEYwCb0fS
 eY9o0exx7XWuIHHll1dLx46V6117Npvy1n2EdHEJCoxmXWUBhTx9rg7Uq
 xC1duQ05M+UAXqTj0nAMAl7/O2QTD0Ekq+2s9sxMXhTDDvvIwAiEXfw5g
 /yF/bY4MDopdfTPlcUeWAvixTbvFKl/rcdj1h26HN2iwpdAR5tTxyFKas
 VtTscXic3VOysYbOaTluRDLMcqW5K0yxFY54e00pu56NhHMP75PoZWJEt
 73LKD9aVVXYPykM+KxBMG2b55AwTHmX0dn7gEvC3tDEtmuSlcuSpmJV9M
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nXNs98Sn
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0a0ade6364b5f807cb787f099c28a877f58ee287
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
branch HEAD: 0a0ade6364b5f807cb787f099c28a877f58ee287  ice: add ability to read FW logging data

elapsed time: 735m

configs tested: 198
configs skipped: 20

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230319   gcc  
alpha        buildonly-randconfig-r005-20230319   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230319   gcc  
alpha                randconfig-r015-20230319   gcc  
alpha                randconfig-r024-20230319   gcc  
alpha                randconfig-r025-20230320   gcc  
alpha                randconfig-r031-20230319   gcc  
alpha                randconfig-r036-20230319   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230319   gcc  
arc                  randconfig-r024-20230319   gcc  
arc                  randconfig-r043-20230319   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230319   gcc  
arm          buildonly-randconfig-r004-20230319   gcc  
arm                                 defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                  randconfig-r025-20230319   gcc  
arm                  randconfig-r036-20230319   clang
arm                  randconfig-r046-20230319   gcc  
arm                  randconfig-r046-20230320   clang
arm                         socfpga_defconfig   clang
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r023-20230321   clang
arm64                randconfig-r032-20230319   gcc  
csky         buildonly-randconfig-r003-20230319   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230319   gcc  
csky                 randconfig-r006-20230319   gcc  
csky                 randconfig-r021-20230320   gcc  
csky                 randconfig-r031-20230319   gcc  
hexagon      buildonly-randconfig-r001-20230319   clang
hexagon              randconfig-r003-20230319   clang
hexagon              randconfig-r006-20230319   clang
hexagon              randconfig-r041-20230319   clang
hexagon              randconfig-r041-20230320   clang
hexagon              randconfig-r045-20230319   clang
hexagon              randconfig-r045-20230320   clang
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
i386                          randconfig-a011   clang
i386                 randconfig-a012-20230320   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230320   gcc  
i386                          randconfig-a013   clang
i386                 randconfig-a014-20230320   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230320   gcc  
i386                          randconfig-a015   clang
i386                 randconfig-a016-20230320   gcc  
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64                             allyesconfig   gcc  
ia64         buildonly-randconfig-r002-20230319   gcc  
ia64         buildonly-randconfig-r003-20230319   gcc  
ia64                                defconfig   gcc  
ia64                        generic_defconfig   gcc  
ia64                 randconfig-r001-20230319   gcc  
ia64                 randconfig-r022-20230320   gcc  
ia64                          tiger_defconfig   gcc  
ia64                            zx1_defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r022-20230319   gcc  
loongarch            randconfig-r032-20230319   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r004-20230319   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r023-20230320   gcc  
m68k                 randconfig-r031-20230319   gcc  
m68k                 randconfig-r034-20230319   gcc  
microblaze           randconfig-r005-20230319   gcc  
microblaze           randconfig-r011-20230319   gcc  
microblaze           randconfig-r014-20230319   gcc  
microblaze           randconfig-r026-20230319   gcc  
microblaze           randconfig-r033-20230319   gcc  
microblaze           randconfig-r034-20230319   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230319   clang
mips                 randconfig-r005-20230320   gcc  
mips                 randconfig-r021-20230319   gcc  
mips                 randconfig-r023-20230319   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230319   gcc  
nios2                randconfig-r022-20230319   gcc  
openrisc                  or1klitex_defconfig   gcc  
openrisc             randconfig-r021-20230319   gcc  
openrisc             randconfig-r022-20230319   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230319   gcc  
parisc               randconfig-r023-20230319   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                mpc7448_hpc2_defconfig   gcc  
powerpc                      ppc40x_defconfig   gcc  
powerpc              randconfig-r002-20230319   gcc  
powerpc              randconfig-r033-20230319   gcc  
powerpc              randconfig-r036-20230319   gcc  
powerpc                     tqm8555_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230320   gcc  
riscv        buildonly-randconfig-r002-20230320   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230319   gcc  
riscv                randconfig-r014-20230320   gcc  
riscv                randconfig-r015-20230320   gcc  
riscv                randconfig-r016-20230319   clang
riscv                randconfig-r016-20230320   gcc  
riscv                randconfig-r025-20230319   clang
riscv                randconfig-r026-20230320   gcc  
riscv                randconfig-r035-20230319   gcc  
riscv                randconfig-r042-20230319   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230319   clang
s390                       zfcpdump_defconfig   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r004-20230319   gcc  
sh           buildonly-randconfig-r004-20230320   gcc  
sh                            hp6xx_defconfig   gcc  
sh                   randconfig-r002-20230319   gcc  
sh                   randconfig-r011-20230319   gcc  
sh                   randconfig-r032-20230319   gcc  
sh                          rsk7269_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc        buildonly-randconfig-r006-20230319   gcc  
sparc        buildonly-randconfig-r006-20230320   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230319   gcc  
sparc                randconfig-r024-20230319   gcc  
sparc                randconfig-r025-20230319   gcc  
sparc                randconfig-r035-20230319   gcc  
sparc64              randconfig-r001-20230320   gcc  
sparc64              randconfig-r033-20230319   gcc  
sparc64              randconfig-r035-20230319   gcc  
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
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230320   gcc  
xtensa               randconfig-r003-20230319   gcc  
xtensa               randconfig-r013-20230320   gcc  
xtensa               randconfig-r024-20230320   gcc  
xtensa               randconfig-r026-20230319   gcc  
xtensa               randconfig-r034-20230319   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
