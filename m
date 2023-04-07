Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03AA6DAC64
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Apr 2023 13:55:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7824F41E23;
	Fri,  7 Apr 2023 11:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7824F41E23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680868556;
	bh=uWgBgdTi5HgYlQzbJivJdy7Dalhpi71FywKFQ7Ta628=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cx6RhCJRmF8+I1dHPgyMa7sId+A9+dx9oz6v54xlXmKnHBAMj18D+yTWq/MESQieZ
	 qkHO9ekm7WtPObTBZQjsV2RrmPyvJDvobS1cQqnIAZtR7s2rQKMT3H2fC1SWM3uobU
	 CPx76xUKiX78HSrHmevU12Rb2w/BbTX8UjmNkpMDx2Z6Kw2LAE2teRhAgUM2pRp4pY
	 JTxOjat5Tj1uy/2Y0aWSho+b0oLD/FAGrNlb6me+l55Ew68odeLEoaZRt/MlfNvGjl
	 29KT5tNjsJmAbAqXcVOziJK6Tf/3pQNIw+f5A1vlR9zQVmBW9V+gc8Rke1QEWTqXAN
	 U7eFdvFSL+Y4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6wuAYWbMweM3; Fri,  7 Apr 2023 11:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9085405F0;
	Fri,  7 Apr 2023 11:55:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9085405F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C1571C2E3B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 211C484553
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 211C484553
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H611Ds_rWNyq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Apr 2023 11:55:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1AE984552
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C1AE984552
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 11:55:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="370809671"
X-IronPort-AV: E=Sophos;i="5.98,326,1673942400"; d="scan'208";a="370809671"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2023 04:55:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="664865687"
X-IronPort-AV: E=Sophos;i="5.98,326,1673942400"; d="scan'208";a="664865687"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 07 Apr 2023 04:55:44 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pkkgx-000SSE-1A;
 Fri, 07 Apr 2023 11:55:43 +0000
Date: Fri, 07 Apr 2023 19:55:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <643004b1.hDX7efHbIjPsM4e6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680868547; x=1712404547;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=+guG529CIctqhlhShJU7NTUO0NvkdLL73iOVWF+if9g=;
 b=KpMyFV+JbGMpfp3J/nI+XFHjiUMF71pgwACi0aOtltESfwEJ1YLNLDoC
 ZQuH+ugqmqpXn7cYeP4PJE8zmEa4lwwUeCq9oZP2W7ITJ24nB7FWhrnw3
 AjKnGAoVfquXAYhPWGS5ugAy85SRRdW3XzXgtGymAhdViC87jzF+n/yK1
 PotbfRGWJeJieNDOGVwEPjnBHsAGfOmSAHbZLB8XSZDvTQLzTRGVXi824
 VnX9m5NHLdYXwfdRanx00k7gbVfQbpY6HwAkOgidf264d7vnDTdEY57F1
 muzeQRPlLQ97iiICLxbyVbyrIUVDgmRNelAwsOAUDYBhsNk8LL7iOz+gV
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KpMyFV+J
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e1da418893694508948fa7930a9f699027a25cfa
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
branch HEAD: e1da418893694508948fa7930a9f699027a25cfa  iavf: remove active_cvlans and active_svlans bitmaps

elapsed time: 728m

configs tested: 126
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r015-20230403   gcc  
alpha                randconfig-r023-20230403   gcc  
alpha                randconfig-r033-20230406   gcc  
alpha                randconfig-r036-20230403   gcc  
alpha                randconfig-r036-20230404   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r033-20230403   gcc  
arc                  randconfig-r034-20230403   gcc  
arc                  randconfig-r043-20230403   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r034-20230403   gcc  
arm                  randconfig-r046-20230403   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230403   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230403   gcc  
csky                 randconfig-r033-20230403   gcc  
hexagon      buildonly-randconfig-r001-20230403   clang
hexagon              randconfig-r035-20230403   clang
hexagon              randconfig-r041-20230403   clang
hexagon              randconfig-r045-20230403   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230403   clang
i386                 randconfig-a002-20230403   clang
i386                 randconfig-a003-20230403   clang
i386                 randconfig-a004-20230403   clang
i386                 randconfig-a005-20230403   clang
i386                 randconfig-a006-20230403   clang
i386                 randconfig-a011-20230403   gcc  
i386                 randconfig-a012-20230403   gcc  
i386                 randconfig-a013-20230403   gcc  
i386                 randconfig-a014-20230403   gcc  
i386                 randconfig-a015-20230403   gcc  
i386                 randconfig-a016-20230403   gcc  
i386                 randconfig-r022-20230403   gcc  
i386                 randconfig-r036-20230403   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r002-20230403   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r011-20230403   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r032-20230406   gcc  
loongarch            randconfig-r034-20230406   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
m68k                 randconfig-r016-20230403   gcc  
m68k                 randconfig-r024-20230403   gcc  
m68k                 randconfig-r034-20230404   gcc  
m68k                 randconfig-r036-20230406   gcc  
microblaze           randconfig-r031-20230403   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                          rb532_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230403   gcc  
nios2                randconfig-r014-20230403   gcc  
nios2                randconfig-r033-20230404   gcc  
openrisc     buildonly-randconfig-r006-20230403   gcc  
openrisc             randconfig-r026-20230403   gcc  
parisc       buildonly-randconfig-r003-20230403   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r025-20230403   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r006-20230403   clang
riscv                randconfig-r031-20230406   gcc  
riscv                randconfig-r042-20230403   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r031-20230404   gcc  
s390                 randconfig-r044-20230403   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230403   gcc  
sh           buildonly-randconfig-r005-20230403   gcc  
sh                        edosk7760_defconfig   gcc  
sh                         microdev_defconfig   gcc  
sh                   randconfig-r031-20230403   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230403   gcc  
sparc                randconfig-r004-20230403   gcc  
sparc                randconfig-r032-20230403   gcc  
sparc64              randconfig-r001-20230403   gcc  
sparc64              randconfig-r035-20230406   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230403   clang
x86_64               randconfig-a002-20230403   clang
x86_64               randconfig-a003-20230403   clang
x86_64               randconfig-a004-20230403   clang
x86_64               randconfig-a005-20230403   clang
x86_64               randconfig-a006-20230403   clang
x86_64               randconfig-a011-20230403   gcc  
x86_64               randconfig-a012-20230403   gcc  
x86_64               randconfig-a013-20230403   gcc  
x86_64               randconfig-a014-20230403   gcc  
x86_64               randconfig-a015-20230403   gcc  
x86_64               randconfig-a016-20230403   gcc  
x86_64               randconfig-k001-20230403   gcc  
x86_64               randconfig-r005-20230403   clang
x86_64               randconfig-r013-20230403   gcc  
x86_64               randconfig-r032-20230403   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230403   gcc  
xtensa               randconfig-r035-20230404   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
