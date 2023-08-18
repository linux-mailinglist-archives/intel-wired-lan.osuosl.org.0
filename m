Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D90780624
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 09:08:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 506D142228;
	Fri, 18 Aug 2023 07:08:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 506D142228
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692342536;
	bh=hLJnIUBS64TdFDmaMsEth6JhIqeeAXR46ERe7+cWk3s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JafS/GfZ4zSB1sL6Gsp7gu4yBoDuC15yPS6rWsYFLmKCE+XV3/riJnEzMle9/yBn8
	 FonjfEteQY7wf6SUh4gsNeQ6z5LDA/Utj2EuNJLMALx+D003uU6zvjbbaLlkHgWK4f
	 PO/rOP90drnC2zkV+8gok7SC6XkoNz62QEe568fR3wa/Neg7/QGh2UF1cC0e8bmzlJ
	 G9AcytApozcnE6zsFwgCQ1lbWSlwd/YOXwxKIjHEo71WWug6z1TRha0gRmY7RUJImw
	 QXyXMCwbY2U4xFioKpewJgLPb5tzTe8nnqRvUnoXBlgCXLTtMUDa+cNh70urRw/zTW
	 g/Y1IRmpDejKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fYjos3oDTvcV; Fri, 18 Aug 2023 07:08:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF0D441B68;
	Fri, 18 Aug 2023 07:08:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF0D441B68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 666E21BF378
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 07:08:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3389760ADF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 07:08:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3389760ADF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bM2kURwelVj7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 07:08:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BB62607A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 07:08:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BB62607A3
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="404016224"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="404016224"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 00:08:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="981536877"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="981536877"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 18 Aug 2023 00:08:46 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWtb1-0002CP-28
 for intel-wired-lan@lists.osuosl.org; Fri, 18 Aug 2023 07:08:39 +0000
Date: Fri, 18 Aug 2023 15:07:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308181529.QPTf3skR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692342528; x=1723878528;
 h=date:from:to:subject:message-id;
 bh=efa+s1rQ+7KSRV8VC41SCaBMTkDVZC3FBX04V2ogO44=;
 b=fAAXQR00I/M/uQ3q1VIo96/KBU1y7x06MoDgGJ70im7QgRIivezp+USw
 po32v8NVIK6sWE8j2rNSDcP9EvJ5MzS2T2J9u05xS6uTHWtZpbWMrUNF2
 xRa3HY4z9joRri1lZFt+IklvIw7qjZzGuKkg7oap8u6GDH2M27I444svl
 r76UXQbnxohDB/N3gTeOnt6BiC44e+mg/AGVCLUlgJNn/crZTuJOzCe7+
 1XTtaIlGwN4GNRwNSEs44aeqwCrQZbp4js6eWVSzPn+peL3o8V1Bi9gsY
 umNjP7qZGS9brA8aE7zgyJj8bOzylClTFBPYlZmDEZm3NfkLlpdZrkArA
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fAAXQR00
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 52d0f297b37b44066ca22abdcc164766ea49ac18
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
branch HEAD: 52d0f297b37b44066ca22abdcc164766ea49ac18  ice: check netlist before enabling ICE_F_GNSS

elapsed time: 722m

configs tested: 95
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r025-20230818   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230818   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r034-20230818   clang
arm                  randconfig-r035-20230818   clang
arm                  randconfig-r046-20230818   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230818   clang
csky                                defconfig   gcc  
csky                 randconfig-r006-20230818   gcc  
csky                 randconfig-r031-20230818   gcc  
hexagon              randconfig-r021-20230818   clang
hexagon              randconfig-r041-20230818   clang
hexagon              randconfig-r045-20230818   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230818   gcc  
i386         buildonly-randconfig-r005-20230818   gcc  
i386         buildonly-randconfig-r006-20230818   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230818   gcc  
i386                 randconfig-i002-20230818   gcc  
i386                 randconfig-i003-20230818   gcc  
i386                 randconfig-i004-20230818   gcc  
i386                 randconfig-i005-20230818   gcc  
i386                 randconfig-i006-20230818   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r005-20230818   gcc  
loongarch            randconfig-r026-20230818   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r012-20230818   gcc  
microblaze           randconfig-r013-20230818   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230818   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230818   clang
riscv                randconfig-r022-20230818   clang
riscv                randconfig-r032-20230818   gcc  
riscv                randconfig-r042-20230818   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230818   clang
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r001-20230818   gcc  
sparc64              randconfig-r004-20230818   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230818   gcc  
x86_64       buildonly-randconfig-r002-20230818   gcc  
x86_64       buildonly-randconfig-r003-20230818   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r023-20230818   clang
x86_64               randconfig-x001-20230818   clang
x86_64               randconfig-x002-20230818   clang
x86_64               randconfig-x003-20230818   clang
x86_64               randconfig-x004-20230818   clang
x86_64               randconfig-x005-20230818   clang
x86_64               randconfig-x006-20230818   clang
x86_64               randconfig-x016-20230818   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r016-20230818   gcc  
xtensa               randconfig-r033-20230818   gcc  
xtensa               randconfig-r036-20230818   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
