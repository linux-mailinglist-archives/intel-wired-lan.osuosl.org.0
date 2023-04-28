Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE376F10DC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Apr 2023 05:41:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9397C4187D;
	Fri, 28 Apr 2023 03:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9397C4187D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682653287;
	bh=EKqj6h9N0m9IJak7kzU9THAdlg+jprGvHe6q8HpkRWs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=h8hZCglEpyUWJTjYmA9z7iDCDqCtIhwMyxxSbQpKg4J06nEnvL6qjE4f9RSBUG8nq
	 DjMi0LR1JUmVLy35n+A8AF1erO/k778oFNbs74Ic2QmcjekMpJgYXqbpfSACr1ZmKt
	 jUX7If5ZurTX5sT6utXaVWBC52jbgZT+VjH1OM51x5XoPYgG3aFV6sJ+PJfJBtWUH5
	 0QDDJTJ1y4QBaox7VBQzKAtcz2kojP4aBxyjBoq/Z2jRRkidpQPw45M4w0l9ii75xq
	 LkvcxfR83XM/GeUB4osDCgd4EGiHMjH6vtnlUtK9NUDt3doF6a8NZlgOHZFJjIDOmf
	 oTYNHKKPACSkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id evkO4xTZKrQA; Fri, 28 Apr 2023 03:41:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1388408C3;
	Fri, 28 Apr 2023 03:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1388408C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A472C1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 03:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C01684044
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 03:41:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C01684044
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NCt2LDkEdGxA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Apr 2023 03:41:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D77684042
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D77684042
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 03:41:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="350545219"
X-IronPort-AV: E=Sophos;i="5.99,233,1677571200"; d="scan'208";a="350545219"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 20:41:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="672003431"
X-IronPort-AV: E=Sophos;i="5.99,233,1677571200"; d="scan'208";a="672003431"
Received: from lkp-server01.sh.intel.com (HELO 5bad9d2b7fcb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 27 Apr 2023 20:41:17 -0700
Received: from kbuild by 5bad9d2b7fcb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1psEyy-00004r-2h
 for intel-wired-lan@lists.osuosl.org; Fri, 28 Apr 2023 03:41:16 +0000
Date: Fri, 28 Apr 2023 11:41:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230428034106.8YyWP%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682653279; x=1714189279;
 h=date:from:to:subject:message-id;
 bh=g7ZTKmJStZiUxmu8IWA7Oht3TZmsL46pcumtpka1CFs=;
 b=DkBi5XWULRdxrSdNO/Kfwo/hrkt68/vMK04kLgdbcymbfmyBRu9Tylk7
 5zBiPLCGIXmkXB9+ka8NA8eUycVlf9LA3XRcgsMU/haOf22GWqhy0D/yt
 2edSBxrQ89TmdCgq3NnNoGNBNVloiLlm9pM8gfpSXmAMuC1chF7Vx807i
 aeYMX7swwq95IeFS2V+xNGsFl82Jeg13PMn4DFzEQ6KDuBz91yPrkbrgq
 AohXZ8cfjn5leBs/EKVkoDhG3UltNTcrLPoWMIUjM4fZLGU4J78J9ptNE
 KZWeeOrAwEr61ZoheiHlEXVf69dtBzg2JO+i7QA82B5VDfnmsFGS/JRHd
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DkBi5XWU
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 075cafffce2429dfa0085c98162657e88d11aa1d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 075cafffce2429dfa0085c98162657e88d11aa1d  Merge branch 'macsec-fixes-for-cn10kb'

elapsed time: 953m

configs tested: 156
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230427   gcc  
alpha        buildonly-randconfig-r002-20230427   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r031-20230427   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r025-20230427   gcc  
arc                  randconfig-r043-20230427   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230427   gcc  
arm                                 defconfig   gcc  
arm                       imx_v4_v5_defconfig   clang
arm                         orion5x_defconfig   clang
arm                  randconfig-r011-20230427   gcc  
arm                  randconfig-r046-20230427   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230427   gcc  
csky         buildonly-randconfig-r006-20230427   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230427   gcc  
csky                 randconfig-r015-20230427   gcc  
csky                 randconfig-r024-20230427   gcc  
csky                 randconfig-r024-20230428   gcc  
hexagon      buildonly-randconfig-r006-20230427   clang
hexagon              randconfig-r002-20230427   clang
hexagon              randconfig-r034-20230427   clang
hexagon              randconfig-r041-20230427   clang
hexagon              randconfig-r045-20230427   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a004   clang
i386                          randconfig-a006   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r005-20230427   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r022-20230428   gcc  
ia64                 randconfig-r024-20230427   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230427   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230427   gcc  
loongarch            randconfig-r013-20230427   gcc  
loongarch            randconfig-r016-20230427   gcc  
loongarch            randconfig-r023-20230428   gcc  
loongarch            randconfig-r025-20230427   gcc  
loongarch            randconfig-r033-20230427   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230427   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230427   gcc  
m68k                 randconfig-r023-20230427   gcc  
m68k                 randconfig-r026-20230428   gcc  
m68k                           virt_defconfig   gcc  
microblaze           randconfig-r003-20230427   gcc  
microblaze           randconfig-r004-20230427   gcc  
microblaze           randconfig-r012-20230427   gcc  
microblaze           randconfig-r025-20230427   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                     loongson2k_defconfig   clang
mips                 randconfig-r002-20230427   clang
mips                 randconfig-r036-20230427   clang
nios2        buildonly-randconfig-r002-20230427   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230427   gcc  
nios2                randconfig-r016-20230427   gcc  
nios2                randconfig-r023-20230427   gcc  
nios2                randconfig-r035-20230427   gcc  
openrisc             randconfig-r013-20230427   gcc  
openrisc             randconfig-r014-20230427   gcc  
openrisc             randconfig-r015-20230427   gcc  
parisc       buildonly-randconfig-r004-20230427   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc               randconfig-r005-20230427   gcc  
parisc               randconfig-r006-20230427   gcc  
parisc               randconfig-r016-20230427   gcc  
parisc               randconfig-r022-20230427   gcc  
parisc               randconfig-r024-20230427   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230427   clang
powerpc              randconfig-r005-20230427   gcc  
powerpc              randconfig-r021-20230427   clang
powerpc              randconfig-r026-20230427   clang
powerpc              randconfig-r033-20230427   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv        buildonly-randconfig-r003-20230427   clang
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230427   clang
riscv                randconfig-r022-20230427   clang
riscv                randconfig-r025-20230428   gcc  
riscv                randconfig-r042-20230427   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230427   gcc  
s390                 randconfig-r003-20230427   gcc  
s390                 randconfig-r011-20230427   clang
s390                 randconfig-r026-20230427   clang
s390                 randconfig-r035-20230427   gcc  
s390                 randconfig-r036-20230427   gcc  
s390                 randconfig-r044-20230427   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230427   gcc  
sh                        dreamcast_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                   randconfig-r013-20230427   gcc  
sh                   randconfig-r021-20230427   gcc  
sh                   randconfig-r032-20230427   gcc  
sh                        sh7757lcr_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r006-20230427   gcc  
sparc                randconfig-r032-20230427   gcc  
sparc64              randconfig-r014-20230427   gcc  
sparc64              randconfig-r021-20230428   gcc  
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
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230427   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
