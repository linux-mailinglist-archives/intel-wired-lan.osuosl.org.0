Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF445764DB8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 10:38:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5DE640960;
	Thu, 27 Jul 2023 08:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5DE640960
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690447088;
	bh=RliThbskj3jYlfpyQWKbDcxAF5LH5ILlXfhc0Mjnr6c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TFTLk7xQeT+zuup0alcls1OGfrXKc2S+aA8uqt9gG5Jz18hoIrt7EB55MxXjJhm0j
	 MF7ISn1hv8zL0C0TWyFw1XKbRxXA2MGnzIxDiFDPfGMruqwCCbvZDEIOrnFZf2Qq+K
	 CmkXiJw2fXN11RHb7D5qp1ufZSGHC3d6wz6FxLd3KLZx82FR5PWF+E5EkhIOrOoWI5
	 8bhwKhCnlfRR4m20RrBTB/fCFfH2LMiGrSaf9wM9sO6IoaKz58W9z23Z+Q8jI+jgiX
	 QoTOqBXXdjqwgqx0JuWV5pugMYDKXSMsMmLZXXgSyRUulRvmInyMTZyMEo+CvRzoi+
	 cR8YOsNFpv5iw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DKg3nlxXerYu; Thu, 27 Jul 2023 08:38:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 937A240948;
	Thu, 27 Jul 2023 08:38:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 937A240948
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E3A51BF59C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 08:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2030C40960
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 08:38:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2030C40960
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mbQ1o7XAx9wv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 08:38:01 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F37D2408CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 08:38:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F37D2408CA
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="371859453"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="371859453"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 01:38:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="726863641"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="726863641"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 27 Jul 2023 01:32:21 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qOwPZ-00025n-0K
 for intel-wired-lan@lists.osuosl.org; Thu, 27 Jul 2023 08:32:03 +0000
Date: Thu, 27 Jul 2023 16:31:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307271644.oCz65Mdn-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690447081; x=1721983081;
 h=date:from:to:subject:message-id;
 bh=1Xf5jYgv20ZiEovJ4xT80J6oQjMRM3a4rGkeTKGrpFs=;
 b=e4P35WHQYT8KxGvvpEUigEZmpSHzbQrC/fhfwo2+K0Ao2X9ig3Wkh/lm
 62cVj0S3e6dkT+BdLp7D7vZlHxzCtOt8bH3bVPjEJoBw+z8q3ouOQkjHz
 1dRqKiWZiEqGRVY63HS+i+XOQ11lI8xGpGMt5AnAi/OZ0hNDC2F9AdWmc
 qF16W6k4OcbSGOFkOBaOuAz7XUTdPdFO/33U9wf/WgZFtk4oJqtvZQXbm
 4M/D6IrRJkGFOhi70E2acqj90Jqr1Xgt1qRyJFt/fiI1Pp2En4Goa+xpu
 URsOgn49VzkzsDzYG0bAOXfvq3dINYSa832CHUgSv7WUQxNCjhDlU/Hf7
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e4P35WHQ
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 73cde88e546266db7b9c81d04247020b5246d766
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 73cde88e546266db7b9c81d04247020b5246d766  ice: update reset path for SRIOV LAG support

elapsed time: 821m

configs tested: 107
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230726   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r023-20230726   gcc  
arm                  randconfig-r046-20230726   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230726   gcc  
arm64                randconfig-r012-20230726   clang
csky                                defconfig   gcc  
hexagon              randconfig-r021-20230726   clang
hexagon              randconfig-r032-20230726   clang
hexagon              randconfig-r041-20230726   clang
hexagon              randconfig-r045-20230726   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230726   gcc  
i386         buildonly-randconfig-r005-20230726   gcc  
i386         buildonly-randconfig-r006-20230726   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230726   gcc  
i386                 randconfig-i002-20230726   gcc  
i386                 randconfig-i003-20230726   gcc  
i386                 randconfig-i004-20230726   gcc  
i386                 randconfig-i005-20230726   gcc  
i386                 randconfig-i006-20230726   gcc  
i386                 randconfig-i011-20230726   clang
i386                 randconfig-i012-20230726   clang
i386                 randconfig-i013-20230726   clang
i386                 randconfig-i014-20230726   clang
i386                 randconfig-i015-20230726   clang
i386                 randconfig-i016-20230726   clang
i386                 randconfig-r015-20230726   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r011-20230726   gcc  
m68k                 randconfig-r033-20230726   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r001-20230726   gcc  
openrisc             randconfig-r026-20230726   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r035-20230726   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230726   clang
powerpc              randconfig-r031-20230726   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r006-20230726   gcc  
riscv                randconfig-r042-20230726   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r024-20230726   clang
s390                 randconfig-r025-20230726   clang
s390                 randconfig-r044-20230726   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r016-20230726   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r022-20230726   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r036-20230726   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230726   gcc  
x86_64       buildonly-randconfig-r002-20230726   gcc  
x86_64       buildonly-randconfig-r003-20230726   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230726   clang
x86_64               randconfig-x002-20230726   clang
x86_64               randconfig-x003-20230726   clang
x86_64               randconfig-x004-20230726   clang
x86_64               randconfig-x005-20230726   clang
x86_64               randconfig-x006-20230726   clang
x86_64               randconfig-x011-20230726   gcc  
x86_64               randconfig-x012-20230726   gcc  
x86_64               randconfig-x013-20230726   gcc  
x86_64               randconfig-x014-20230726   gcc  
x86_64               randconfig-x015-20230726   gcc  
x86_64               randconfig-x016-20230726   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r003-20230726   gcc  
xtensa               randconfig-r005-20230726   gcc  
xtensa               randconfig-r014-20230726   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
