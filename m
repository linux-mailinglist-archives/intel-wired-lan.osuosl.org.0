Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BC770ED45
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 07:46:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30D3D840B3;
	Wed, 24 May 2023 05:46:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30D3D840B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684907160;
	bh=sbg8jXOZW2XUeEvqlo89/4dSLRo4AOmnhXZPLpoP53Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pMC88TtO3nXkFKLZdTwYRXSzY7BdRfHT2dooe629FPtKWgXmeTfNef1ZzXnPJLYRD
	 OexDGWiX3tZhK3/xTsR+0eWYmfi9FCUNA9CtvRiWPU51EwP0xG8AKyWendbbs5J+V5
	 rd6t/E+keaqI0ODHeHy7gZsivOWoKzmaR+A0wQppw03qAs27FMpflVK86FTcYohk7/
	 +f3Ux0NwzzuXuNeE1/qo8hNx/51qM4njui5aVWvZcNKbp+oLpDXqN3GvGscxqzsxoK
	 VDtPGMMV/Zj1cNg8GALEWiZelb9TmzJ9iChzxMNuQHNcd1KOt7Xdcpj4fIESekCeKE
	 eVpVY8lnuQDMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4HWH_jRHLqEj; Wed, 24 May 2023 05:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C066883EF4;
	Wed, 24 May 2023 05:45:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C066883EF4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A0961BF352
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 05:45:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D45D5418FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 05:45:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D45D5418FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ca7ORnMcevIQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 05:45:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4B404185D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D4B404185D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 05:45:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="355822360"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="355822360"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 22:45:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="816440095"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="816440095"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 23 May 2023 22:45:48 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q1hJk-000ESC-0H
 for intel-wired-lan@lists.osuosl.org; Wed, 24 May 2023 05:45:48 +0000
Date: Wed, 24 May 2023 13:45:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230524054531.fDnYh%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684907150; x=1716443150;
 h=date:from:to:subject:message-id;
 bh=olG+Xy8YR/heexmxbmWQeA/YMoYGlWXkb39M1j74W+Y=;
 b=VRySCsWy+3FtNiqkiB44Z3c+fWiKqjsuLSYJ0pz0EXeGj78e6WdRiDB8
 5gIzQmcanPftAhMJBaxTcT/wuEruRvWZEGSbQDMf0no431QGFKsp7/xMG
 CXxT2w8n5oue7FMaE0FNURGb9Mb7He/w+9wXVt6Nt9BrlC8SOUXQ+2LcT
 YrZFwPPODthSeHKFUf/2AHLO3vneXEQGwEVLcmSJ6qrsVNdQOlRAbV4W9
 6w5TJ0uPTig7YnD7FY+vKHPr7mpl7p80KDQ+WkXVbFQg5j8UnXe6GruPC
 LZhHrmo6+dmaBtSMrtnkbbVpJXjjwMPcANzR8B94bGLTl+G0umabqlmrQ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VRySCsWy
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 6ff8d6501454e90d756e06533dedc7a0be7808c9
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

tree/branch: INFO setup_repo_specs: /db/releases/20230524121217/lkp-src/repo/*/tnguy-next-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 6ff8d6501454e90d756e06533dedc7a0be7808c9  ice: Document txbalancing parameter

elapsed time: 732m

configs tested: 169
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230522   gcc  
alpha                randconfig-r012-20230521   gcc  
alpha                randconfig-r025-20230522   gcc  
arc                              allyesconfig   gcc  
arc                          axs101_defconfig   gcc  
arc                                 defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r005-20230521   gcc  
arc                  randconfig-r015-20230521   gcc  
arc                  randconfig-r043-20230521   gcc  
arc                  randconfig-r043-20230522   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230522   gcc  
arm          buildonly-randconfig-r005-20230521   clang
arm                                 defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                  randconfig-r003-20230521   gcc  
arm                  randconfig-r013-20230522   gcc  
arm                  randconfig-r046-20230521   clang
arm                  randconfig-r046-20230522   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r006-20230521   clang
arm64                               defconfig   gcc  
arm64                randconfig-r033-20230521   clang
csky         buildonly-randconfig-r003-20230522   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230521   gcc  
csky                 randconfig-r014-20230521   gcc  
csky                 randconfig-r022-20230522   gcc  
csky                 randconfig-r026-20230521   gcc  
csky                 randconfig-r031-20230521   gcc  
csky                 randconfig-r031-20230522   gcc  
csky                 randconfig-r032-20230522   gcc  
hexagon      buildonly-randconfig-r001-20230521   clang
hexagon              randconfig-r013-20230521   clang
hexagon              randconfig-r025-20230521   clang
hexagon              randconfig-r026-20230522   clang
hexagon              randconfig-r032-20230521   clang
hexagon              randconfig-r041-20230521   clang
hexagon              randconfig-r041-20230522   clang
hexagon              randconfig-r045-20230521   clang
hexagon              randconfig-r045-20230522   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230522   gcc  
i386                 randconfig-a002-20230522   gcc  
i386                 randconfig-a003-20230522   gcc  
i386                 randconfig-a004-20230522   gcc  
i386                 randconfig-a005-20230522   gcc  
i386                 randconfig-a006-20230522   gcc  
i386                 randconfig-i061-20230523   clang
i386                 randconfig-i062-20230523   clang
i386                 randconfig-i063-20230523   clang
i386                 randconfig-i064-20230523   clang
i386                 randconfig-i065-20230523   clang
i386                 randconfig-i066-20230523   clang
i386                 randconfig-r033-20230522   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230522   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230521   gcc  
ia64                 randconfig-r022-20230521   gcc  
ia64                 randconfig-r023-20230521   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230521   gcc  
loongarch            randconfig-r016-20230521   gcc  
loongarch            randconfig-r021-20230521   gcc  
loongarch            randconfig-r022-20230521   gcc  
loongarch            randconfig-r023-20230522   gcc  
loongarch            randconfig-r026-20230521   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r024-20230522   gcc  
m68k                 randconfig-r036-20230522   gcc  
microblaze           randconfig-r012-20230522   gcc  
microblaze           randconfig-r036-20230521   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230522   clang
mips                 randconfig-r011-20230522   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r025-20230521   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r023-20230521   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc              randconfig-r004-20230522   gcc  
powerpc              randconfig-r011-20230521   gcc  
powerpc              randconfig-r034-20230521   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230522   clang
riscv                randconfig-r022-20230522   clang
riscv                randconfig-r042-20230521   gcc  
riscv                randconfig-r042-20230522   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230521   gcc  
s390                 randconfig-r044-20230522   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r004-20230521   gcc  
sh           buildonly-randconfig-r005-20230522   gcc  
sh                   randconfig-r003-20230522   gcc  
sh                   randconfig-r006-20230521   gcc  
sh                   randconfig-r015-20230522   gcc  
sh                   randconfig-r035-20230522   gcc  
sh                           se7705_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r014-20230522   gcc  
sparc                randconfig-r023-20230522   gcc  
sparc                randconfig-r024-20230522   gcc  
sparc64              randconfig-r024-20230521   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230522   gcc  
x86_64               randconfig-a002-20230522   gcc  
x86_64               randconfig-a003-20230522   gcc  
x86_64               randconfig-a004-20230522   gcc  
x86_64               randconfig-a005-20230522   gcc  
x86_64               randconfig-a006-20230522   gcc  
x86_64               randconfig-a011-20230522   clang
x86_64               randconfig-a012-20230522   clang
x86_64               randconfig-a013-20230522   clang
x86_64               randconfig-a014-20230522   clang
x86_64               randconfig-a015-20230522   clang
x86_64               randconfig-a016-20230522   clang
x86_64               randconfig-x051-20230522   clang
x86_64               randconfig-x052-20230522   clang
x86_64               randconfig-x053-20230522   clang
x86_64               randconfig-x054-20230522   clang
x86_64               randconfig-x055-20230522   clang
x86_64               randconfig-x056-20230522   clang
x86_64               randconfig-x061-20230522   clang
x86_64               randconfig-x062-20230522   clang
x86_64               randconfig-x063-20230522   clang
x86_64               randconfig-x064-20230522   clang
x86_64               randconfig-x065-20230522   clang
x86_64               randconfig-x066-20230522   clang
x86_64               randconfig-x071-20230522   gcc  
x86_64               randconfig-x072-20230522   gcc  
x86_64               randconfig-x073-20230522   gcc  
x86_64               randconfig-x074-20230522   gcc  
x86_64               randconfig-x075-20230522   gcc  
x86_64               randconfig-x076-20230522   gcc  
x86_64               randconfig-x081-20230522   gcc  
x86_64               randconfig-x082-20230522   gcc  
x86_64               randconfig-x083-20230522   gcc  
x86_64               randconfig-x084-20230522   gcc  
x86_64               randconfig-x085-20230522   gcc  
x86_64               randconfig-x086-20230522   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
