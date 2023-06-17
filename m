Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0BD733DD4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jun 2023 05:41:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79E7A402CE;
	Sat, 17 Jun 2023 03:41:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79E7A402CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686973289;
	bh=g82Eg+aAYAqG6XuLOTwJ6yQGNklT64j5qRWAn67DAhQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=abMn+5rNikso9zykDUufmcGjNq6YJ/eOJubKh4iU7vPMje44PPI9oPtmVhtkdbUHK
	 k0rGAtmNGviyJn/tzy/ttbHyq/Rys2b+BIEA+uCVlrYB7XWLwEolvlbIzFMgkqSGdt
	 fOf5r8toftRBi18wznQ4Ul7u+NE66yHIMNBzh65TsLFPfb1ftNOfFt9jasFGT117n7
	 c9FT9O1frrFCK3gZnrDqD3ZI+OIPZ5akJNRePyHh31X49mBAfnVH1+fXgb/USZAu3Q
	 KyvZO7Lc6hvcaGZ41FCEev91E4PMvW36fAdCAesVf7E9lLELyg5731B2hz5jw1Zyrf
	 VD7u+xADIRXUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JyHBdInm9KFp; Sat, 17 Jun 2023 03:41:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F1D4400EF;
	Sat, 17 Jun 2023 03:41:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F1D4400EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B104F1BF836
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 03:41:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F674400EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 03:41:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F674400EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EUCBVLV3Nnms for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jun 2023 03:41:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B77C400CC
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B77C400CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 03:41:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="445738424"
X-IronPort-AV: E=Sophos;i="6.00,249,1681196400"; d="scan'208";a="445738424"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 20:41:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="837236931"
X-IronPort-AV: E=Sophos;i="6.00,249,1681196400"; d="scan'208";a="837236931"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 16 Jun 2023 20:41:11 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qAMoI-0002Bz-2X
 for intel-wired-lan@lists.osuosl.org; Sat, 17 Jun 2023 03:41:10 +0000
Date: Sat, 17 Jun 2023 11:40:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306171118.fLEa9pph-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686973281; x=1718509281;
 h=date:from:to:subject:message-id;
 bh=+4yj8CcyAWt7iNO6qM5Wub5Y3V4OzS1rzog+C/yND7k=;
 b=c5q3yHhSSb9EU01/tLVp+3JabhXRGR44Qoq/HhM6O6wFD8vdilAIunxP
 kQuj3ffs9smrtkGn898Xh9Yzh0RM/65xKHlwm6hx15hEpkjv/4D0l++V9
 Gpk2jm4z4tYzoyoFz3ZdfCDWywL08FU+Yml9ALwDNFaPBBri1CyB0yS4g
 5qNZPkgGmPGJ5EDj2hwCWax/TfV1V5O0l/ni3rD9JMRqF5t7tctWDeVKv
 sSddZPwy6h1u+6fKmHDkhl1PdtYSUaGYXUFKvQU8kRmo4YxKGyAmO+kID
 H8Xa3orZc3HFbRbVe6AK85ZXqzMwpvObjHomB92twxZqhx2lmVBJ9XNDv
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c5q3yHhS
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 d4e067287b41b9eba278533d32afda35b25fbdd5
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
branch HEAD: d4e067287b41b9eba278533d32afda35b25fbdd5  Merge branch 'check-if-fips-mode-is-enabled-when-running-selftests'

elapsed time: 1332m

configs tested: 117
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230615   gcc  
alpha                randconfig-r025-20230614   gcc  
alpha                randconfig-r033-20230616   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r032-20230616   gcc  
arc                  randconfig-r036-20230616   gcc  
arc                  randconfig-r043-20230616   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r023-20230614   clang
arm                  randconfig-r033-20230616   gcc  
arm                  randconfig-r046-20230616   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r022-20230615   clang
csky                                defconfig   gcc  
csky                 randconfig-r026-20230614   gcc  
hexagon              randconfig-r004-20230615   clang
hexagon              randconfig-r035-20230616   clang
hexagon              randconfig-r041-20230616   clang
hexagon              randconfig-r045-20230616   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230616   clang
i386                 randconfig-i002-20230616   clang
i386                 randconfig-i003-20230616   clang
i386                 randconfig-i004-20230616   clang
i386                 randconfig-i005-20230616   clang
i386                 randconfig-i006-20230616   clang
i386                 randconfig-i011-20230616   gcc  
i386                 randconfig-i012-20230616   gcc  
i386                 randconfig-i013-20230616   gcc  
i386                 randconfig-i014-20230616   gcc  
i386                 randconfig-i015-20230616   gcc  
i386                 randconfig-i016-20230616   gcc  
i386                 randconfig-r024-20230616   gcc  
i386                 randconfig-r036-20230616   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230615   gcc  
loongarch            randconfig-r004-20230615   gcc  
loongarch            randconfig-r012-20230616   gcc  
loongarch            randconfig-r014-20230616   gcc  
loongarch            randconfig-r015-20230616   gcc  
loongarch            randconfig-r031-20230616   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230615   gcc  
microblaze           randconfig-r021-20230614   gcc  
microblaze           randconfig-r032-20230616   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r023-20230615   gcc  
mips                 randconfig-r023-20230616   clang
mips                 randconfig-r036-20230616   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230615   gcc  
nios2                randconfig-r032-20230616   gcc  
nios2                randconfig-r034-20230616   gcc  
openrisc             randconfig-r024-20230615   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230616   gcc  
parisc               randconfig-r011-20230616   gcc  
parisc               randconfig-r016-20230616   gcc  
parisc               randconfig-r025-20230615   gcc  
parisc               randconfig-r025-20230616   gcc  
parisc               randconfig-r034-20230616   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230616   gcc  
riscv                randconfig-r042-20230616   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r013-20230616   gcc  
s390                 randconfig-r026-20230615   clang
s390                 randconfig-r044-20230616   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r003-20230616   gcc  
sh                   randconfig-r004-20230616   gcc  
sh                   randconfig-r006-20230616   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230616   gcc  
sparc                randconfig-r031-20230616   gcc  
sparc64              randconfig-r001-20230615   gcc  
sparc64              randconfig-r002-20230615   gcc  
sparc64              randconfig-r006-20230615   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r026-20230616   clang
um                   randconfig-r031-20230616   gcc  
um                   randconfig-r035-20230616   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r022-20230614   gcc  
x86_64               randconfig-r034-20230616   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r022-20230616   gcc  
xtensa               randconfig-r035-20230616   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
