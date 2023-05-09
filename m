Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8996FBEC4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 07:37:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90C11614B0;
	Tue,  9 May 2023 05:37:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90C11614B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683610631;
	bh=YBcketIDOjsZMvrlbiGq7sPrrbipSxni4WW0QeH0da8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bSAhUrWdD2s8YoOtzdU2L/+h20uU8iTuAluXFzInur++7B7tjeCYDuJev+QYl/rGK
	 7mwNN+rAUtlz2/af0B4mLRkPWT3kT9ky/x2ZMBgxM5y0aMYD5Tqc6rxx22WJ+Ik5fy
	 1mYz+CX7gulidknqLdiYwz/sk0i4siQE3jUabOr3mcdYnpgCedOf2/JIiFaGOQ/B6P
	 RYezsTxbvIDmFzc+9qOcH8YH14/N67Q/JTIfbJwkAQ7HioYgWjXhEQ6oZm2peFzhwf
	 JuWYMC4gJfmsigg6FZ+nDmB5xb8nhIehe5reR2j9zCf4TbyyWuuT0SkUp3SL+coF35
	 Cw3vk7NO+IXsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ZxjUWIt36sc; Tue,  9 May 2023 05:37:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D77261485;
	Tue,  9 May 2023 05:37:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D77261485
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 191AD1BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 05:37:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6596844DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 05:37:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6596844DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KFr27p-zCcOf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 05:37:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C480384488
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C480384488
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 05:37:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="330173211"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="330173211"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 22:37:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="945135027"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="945135027"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 08 May 2023 22:37:00 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pwG1z-0001lM-2G
 for intel-wired-lan@lists.osuosl.org; Tue, 09 May 2023 05:36:59 +0000
Date: Tue, 09 May 2023 13:36:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230509053658.OnEUC%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683610622; x=1715146622;
 h=date:from:to:subject:message-id;
 bh=SVVyP2eR6yqcLd/ZCCD3tyQLO3LcCkB5Izh/mjFHueM=;
 b=ZDt34b28sHYGIfvaOZU7yOGi2KDWXKvF5rFaoJ3yDZmRkVm/PtgB/22/
 jK5jbHDILSS0Gs5KPQWawQSduJ9izpUXnwLYvBLp+R64tcrryr89/PJmW
 6L06Oe9k5ZaMrs2lnK4+dOGq466bjtHQ2dUrjnnRMjaZQoz+fRU33mMAM
 HELRfBRd+u9SyoFnxe6V6oyNqLEacuIMVP9Jotjol8WgjnRxmwakJuLNq
 MtXi2VEnd4sltzQArzc29vGq6/j3k26RqW7RWoUi1FIL2Z5ULCviX19+M
 +nagNTvg7eJFLDn6LOHlMsVFFoGxCYdgBqZxcnOqve4HQAdmAkoPPtR3b
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZDt34b28
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 33700b2cb9dfaeb422417851c999cc7f400c9744
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
branch HEAD: 33700b2cb9dfaeb422417851c999cc7f400c9744  ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()

elapsed time: 721m

configs tested: 129
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r032-20230507   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230508   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r014-20230507   gcc  
arc                  randconfig-r016-20230508   gcc  
arc                  randconfig-r043-20230507   gcc  
arc                  randconfig-r043-20230508   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230508   gcc  
arm                  randconfig-r015-20230507   gcc  
arm                  randconfig-r046-20230507   gcc  
arm                  randconfig-r046-20230508   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230508   clang
arm64                               defconfig   gcc  
arm64                randconfig-r016-20230507   clang
arm64                randconfig-r031-20230507   gcc  
csky         buildonly-randconfig-r001-20230508   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230508   gcc  
csky                 randconfig-r012-20230508   gcc  
csky                 randconfig-r013-20230507   gcc  
csky                 randconfig-r024-20230508   gcc  
hexagon      buildonly-randconfig-r006-20230508   clang
hexagon              randconfig-r005-20230508   clang
hexagon              randconfig-r034-20230507   clang
hexagon              randconfig-r041-20230507   clang
hexagon              randconfig-r041-20230508   clang
hexagon              randconfig-r045-20230507   clang
hexagon              randconfig-r045-20230508   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r005-20230508   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230508   clang
i386                 randconfig-a002-20230508   clang
i386                 randconfig-a003-20230508   clang
i386                 randconfig-a004-20230508   clang
i386                 randconfig-a005-20230508   clang
i386                 randconfig-a006-20230508   clang
i386                 randconfig-a011-20230508   gcc  
i386                 randconfig-a012-20230508   gcc  
i386                 randconfig-a013-20230508   gcc  
i386                 randconfig-a014-20230508   gcc  
i386                 randconfig-a015-20230508   gcc  
i386                 randconfig-a016-20230508   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230507   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230507   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230507   gcc  
loongarch            randconfig-r011-20230507   gcc  
loongarch            randconfig-r026-20230508   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r006-20230507   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r001-20230507   gcc  
microblaze           randconfig-r022-20230508   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r022-20230507   gcc  
nios2                randconfig-r025-20230507   gcc  
nios2                randconfig-r033-20230507   gcc  
nios2                randconfig-r036-20230507   gcc  
openrisc     buildonly-randconfig-r002-20230507   gcc  
parisc       buildonly-randconfig-r004-20230507   gcc  
parisc       buildonly-randconfig-r005-20230507   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r014-20230508   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r002-20230508   clang
powerpc              randconfig-r025-20230508   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r023-20230507   clang
riscv                randconfig-r042-20230507   clang
riscv                randconfig-r042-20230508   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230508   clang
s390                 randconfig-r006-20230508   clang
s390                 randconfig-r021-20230507   clang
s390                 randconfig-r044-20230507   clang
s390                 randconfig-r044-20230508   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r004-20230507   gcc  
sh                   randconfig-r023-20230508   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r035-20230507   gcc  
sparc64              randconfig-r012-20230507   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r003-20230508   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230508   clang
x86_64               randconfig-a002-20230508   clang
x86_64               randconfig-a003-20230508   clang
x86_64               randconfig-a004-20230508   clang
x86_64               randconfig-a005-20230508   clang
x86_64               randconfig-a006-20230508   clang
x86_64               randconfig-a011-20230508   gcc  
x86_64               randconfig-a012-20230508   gcc  
x86_64               randconfig-a013-20230508   gcc  
x86_64               randconfig-a014-20230508   gcc  
x86_64               randconfig-a015-20230508   gcc  
x86_64               randconfig-a016-20230508   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r005-20230507   gcc  
xtensa               randconfig-r006-20230507   gcc  
xtensa               randconfig-r021-20230508   gcc  
xtensa               randconfig-r024-20230507   gcc  
xtensa               randconfig-r026-20230507   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
