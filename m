Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DBD7E161D
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Nov 2023 20:39:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 233A48209C;
	Sun,  5 Nov 2023 19:39:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 233A48209C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699213177;
	bh=3j35G3xs3WRd6KQeRDFeXlC1nD15k7XpjwkIqk5g1gg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SwX2wSPx7qnkX75R3tFgcYYhbGgMrLWR64tfMXcuNiz7mjFSu8DYN1CJmfq+OCh5I
	 DZBX+OtCEMWK1ztvgdbwxGlarFylp7M3jSSdqmP0Dh/q5PqYCAcs8+/S5ZkbMPfHcO
	 1waoHbkBK2yJe8M2Ph/mSsofqN60Plr9sTKHpkxilueZJH9wrC4MHsweSWNmOpS1aM
	 V3aLsjNvxfROYsTBM+KFQBv0NntNMHyc/c8i92Y1gv/MU191ENMDe80m4n8BePQuEi
	 oXDi/Vz1Cjglqpz4gR9/SDNKD/J+WCAMVsMVKeEKDSW2riKdZENvu7PFFWOmbnzohC
	 OfltcZ7SFywbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mqd--rlwNID7; Sun,  5 Nov 2023 19:39:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A10E8209B;
	Sun,  5 Nov 2023 19:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A10E8209B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C03BF1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Nov 2023 19:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 95396400F2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Nov 2023 19:39:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95396400F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GrD99xEsEkGw for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Nov 2023 19:39:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B26E0400D8
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Nov 2023 19:39:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B26E0400D8
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="388986463"
X-IronPort-AV: E=Sophos;i="6.03,279,1694761200"; d="scan'208";a="388986463"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2023 11:39:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="765767164"
X-IronPort-AV: E=Sophos;i="6.03,279,1694761200"; d="scan'208";a="765767164"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 05 Nov 2023 11:39:26 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qzixw-0005k2-2r
 for intel-wired-lan@lists.osuosl.org; Sun, 05 Nov 2023 19:39:24 +0000
Date: Mon, 06 Nov 2023 03:38:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202311060305.HUNKbciS-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699213168; x=1730749168;
 h=date:from:to:subject:message-id;
 bh=eyIYwklGtvZ0w90RbI482utkJSLUq4Fk9UsAWoGSfw0=;
 b=TrG2gG3/QzZCCGoX0LosvKkM2XhNHRHhUVYH8rWi0HXZg0WenHj8v663
 aB0eLO1oWro4iXAdkOASacr/PEREzwWNSnfjfb+2vWpOzU0c+0jzHZhO7
 j3uw3sYiGPLECvJDcQUOXUbmb8AVBryEzgdp1WbOM2AlsMz5GsFWBAnGl
 XMgG5SkdfAXuO1AsCV2M3lkwP1FXfauRT6nwXl3UmL23PQZDrvROXmNlh
 +ePsGMdK1VzhsKoHCYe4hnaT0pdeSmEldYziDYtSxvCFmX8dqYTws/hnj
 d96N70AenGYIBaIYNruqbb42Dri70Ekc9dm7ZfD/UawnMShWQaydVP2NJ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TrG2gG3/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 3740264edb0e1ded57cd0ec30e639b41d82df502
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
branch HEAD: 3740264edb0e1ded57cd0ec30e639b41d82df502  ice: dpll: fix output pin capabilities

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-randconfig-004-20231104
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- arm64-randconfig-003-20231104
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- arm64-randconfig-004-20231104
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- csky-randconfig-002-20231104
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- i386-buildonly-randconfig-006-20231104
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- m68k-defconfig
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- nios2-randconfig-001-20231104
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- parisc-randconfig-002-20231104
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
`-- sh-randconfig-002-20231104
    |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
    |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
    |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
    |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
    `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter

elapsed time: 2938m

configs tested: 234
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231104   gcc  
arc                   randconfig-001-20231105   gcc  
arc                   randconfig-002-20231104   gcc  
arc                   randconfig-002-20231105   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20231104   gcc  
arm                   randconfig-001-20231105   gcc  
arm                   randconfig-002-20231104   gcc  
arm                   randconfig-002-20231105   gcc  
arm                   randconfig-003-20231104   gcc  
arm                   randconfig-003-20231105   gcc  
arm                   randconfig-004-20231104   gcc  
arm                   randconfig-004-20231105   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231104   gcc  
arm64                 randconfig-001-20231105   gcc  
arm64                 randconfig-002-20231104   gcc  
arm64                 randconfig-002-20231105   gcc  
arm64                 randconfig-003-20231104   gcc  
arm64                 randconfig-003-20231105   gcc  
arm64                 randconfig-004-20231104   gcc  
arm64                 randconfig-004-20231105   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231104   gcc  
csky                  randconfig-001-20231105   gcc  
csky                  randconfig-002-20231104   gcc  
csky                  randconfig-002-20231105   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231104   gcc  
i386         buildonly-randconfig-001-20231105   gcc  
i386         buildonly-randconfig-002-20231104   gcc  
i386         buildonly-randconfig-002-20231105   gcc  
i386         buildonly-randconfig-003-20231104   gcc  
i386         buildonly-randconfig-003-20231105   gcc  
i386         buildonly-randconfig-004-20231104   gcc  
i386         buildonly-randconfig-004-20231105   gcc  
i386         buildonly-randconfig-005-20231104   gcc  
i386         buildonly-randconfig-005-20231105   gcc  
i386         buildonly-randconfig-006-20231104   gcc  
i386         buildonly-randconfig-006-20231105   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231105   gcc  
i386                  randconfig-002-20231105   gcc  
i386                  randconfig-003-20231105   gcc  
i386                  randconfig-004-20231105   gcc  
i386                  randconfig-005-20231105   gcc  
i386                  randconfig-006-20231105   gcc  
i386                  randconfig-011-20231104   gcc  
i386                  randconfig-011-20231105   gcc  
i386                  randconfig-012-20231104   gcc  
i386                  randconfig-012-20231105   gcc  
i386                  randconfig-013-20231104   gcc  
i386                  randconfig-013-20231105   gcc  
i386                  randconfig-014-20231104   gcc  
i386                  randconfig-014-20231105   gcc  
i386                  randconfig-015-20231104   gcc  
i386                  randconfig-015-20231105   gcc  
i386                  randconfig-016-20231104   gcc  
i386                  randconfig-016-20231105   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231104   gcc  
loongarch             randconfig-001-20231105   gcc  
loongarch             randconfig-001-20231106   gcc  
loongarch             randconfig-002-20231104   gcc  
loongarch             randconfig-002-20231105   gcc  
loongarch             randconfig-002-20231106   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231104   gcc  
nios2                 randconfig-001-20231105   gcc  
nios2                 randconfig-002-20231104   gcc  
nios2                 randconfig-002-20231105   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231104   gcc  
parisc                randconfig-001-20231105   gcc  
parisc                randconfig-002-20231104   gcc  
parisc                randconfig-002-20231105   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc               randconfig-001-20231104   gcc  
powerpc               randconfig-001-20231105   gcc  
powerpc               randconfig-002-20231104   gcc  
powerpc               randconfig-002-20231105   gcc  
powerpc               randconfig-003-20231104   gcc  
powerpc               randconfig-003-20231105   gcc  
powerpc64             randconfig-001-20231104   gcc  
powerpc64             randconfig-001-20231105   gcc  
powerpc64             randconfig-002-20231104   gcc  
powerpc64             randconfig-002-20231105   gcc  
powerpc64             randconfig-003-20231104   gcc  
powerpc64             randconfig-003-20231105   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231104   gcc  
riscv                 randconfig-001-20231105   gcc  
riscv                 randconfig-002-20231104   gcc  
riscv                 randconfig-002-20231105   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231104   gcc  
s390                  randconfig-001-20231105   gcc  
s390                  randconfig-002-20231104   gcc  
s390                  randconfig-002-20231105   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231104   gcc  
sh                    randconfig-001-20231105   gcc  
sh                    randconfig-002-20231104   gcc  
sh                    randconfig-002-20231105   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231104   gcc  
sparc                 randconfig-001-20231105   gcc  
sparc                 randconfig-002-20231104   gcc  
sparc                 randconfig-002-20231105   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231104   gcc  
sparc64               randconfig-001-20231105   gcc  
sparc64               randconfig-002-20231104   gcc  
sparc64               randconfig-002-20231105   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231104   gcc  
um                    randconfig-001-20231105   gcc  
um                    randconfig-002-20231104   gcc  
um                    randconfig-002-20231105   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231104   gcc  
x86_64       buildonly-randconfig-001-20231105   gcc  
x86_64       buildonly-randconfig-002-20231104   gcc  
x86_64       buildonly-randconfig-002-20231105   gcc  
x86_64       buildonly-randconfig-003-20231104   gcc  
x86_64       buildonly-randconfig-003-20231105   gcc  
x86_64       buildonly-randconfig-004-20231104   gcc  
x86_64       buildonly-randconfig-004-20231105   gcc  
x86_64       buildonly-randconfig-005-20231104   gcc  
x86_64       buildonly-randconfig-005-20231105   gcc  
x86_64       buildonly-randconfig-006-20231104   gcc  
x86_64       buildonly-randconfig-006-20231105   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231105   gcc  
x86_64                randconfig-002-20231105   gcc  
x86_64                randconfig-003-20231105   gcc  
x86_64                randconfig-004-20231105   gcc  
x86_64                randconfig-005-20231105   gcc  
x86_64                randconfig-006-20231105   gcc  
x86_64                randconfig-011-20231104   gcc  
x86_64                randconfig-011-20231105   gcc  
x86_64                randconfig-012-20231104   gcc  
x86_64                randconfig-012-20231105   gcc  
x86_64                randconfig-013-20231104   gcc  
x86_64                randconfig-013-20231105   gcc  
x86_64                randconfig-014-20231104   gcc  
x86_64                randconfig-014-20231105   gcc  
x86_64                randconfig-015-20231104   gcc  
x86_64                randconfig-015-20231105   gcc  
x86_64                randconfig-016-20231104   gcc  
x86_64                randconfig-016-20231105   gcc  
x86_64                randconfig-071-20231104   gcc  
x86_64                randconfig-071-20231105   gcc  
x86_64                randconfig-072-20231104   gcc  
x86_64                randconfig-072-20231105   gcc  
x86_64                randconfig-073-20231104   gcc  
x86_64                randconfig-073-20231105   gcc  
x86_64                randconfig-074-20231104   gcc  
x86_64                randconfig-074-20231105   gcc  
x86_64                randconfig-075-20231104   gcc  
x86_64                randconfig-075-20231105   gcc  
x86_64                randconfig-076-20231104   gcc  
x86_64                randconfig-076-20231105   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                randconfig-001-20231104   gcc  
xtensa                randconfig-001-20231105   gcc  
xtensa                randconfig-002-20231104   gcc  
xtensa                randconfig-002-20231105   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
