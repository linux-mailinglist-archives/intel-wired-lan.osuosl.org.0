Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2858976C5AA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 08:51:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B976240BDD;
	Wed,  2 Aug 2023 06:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B976240BDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690959098;
	bh=4yiO/a6k6TKEp+pc1fhv7NSkvvABvAyyjqVwTL8NcQ8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SqPUyKEe9mnVrpSoG8epWmT0AFCYN4XAjsYmyYZ+7bSl2jRybj608blV08p6uvDpv
	 2J2eMOG0wbADCJm+isvBshg/o/1E/wHbVGi4KT0e1IDol9HuFI+Rjzt6g73BMsPhy0
	 n9mEqlgC88dbScsfngJuZlnrRj3spkKwCUhaAhxYIYcwIoJALoOnIqA7MoL1FqobGI
	 uwKD4Gkf5hkRBRTjHUFqdVuIXAeiyzMADXWon+1joC5br1fhG7jhBVmpnVkXBNW7El
	 Iq8a2DlzMXFf4yQtbQs+d3ybpjzHPlTdr7M4lXl386Tnene4RYZLd7jp3gIilpIk7q
	 nxdujjm7HBrUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JB8k5SkbDcDm; Wed,  2 Aug 2023 06:51:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73744405A9;
	Wed,  2 Aug 2023 06:51:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73744405A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C76E1BF387
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:51:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC7376009C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC7376009C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jIuGxPyNPPG8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 06:51:19 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF5BD60B1B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 06:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF5BD60B1B
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="359539026"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="359539026"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 23:51:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="732263810"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="732263810"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 01 Aug 2023 23:51:17 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qR5hU-0000xp-2L
 for intel-wired-lan@lists.osuosl.org; Wed, 02 Aug 2023 06:51:16 +0000
Date: Wed, 02 Aug 2023 14:50:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308021455.f7JNBu0c-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690959079; x=1722495079;
 h=date:from:to:subject:message-id;
 bh=nZT4uzdDxowfP0HheIMxYdWyIZ1x+AmaIuXKuidDWV0=;
 b=kLF6dnk27s8I5VcF06JtvvdYBZskuCxrMbv2vGhoNxu/OHnibVJKigD6
 3NaK6KU8PhzjTKGjdh7uc5dVyh6TGLnROKDpgGHi9fNotreYE2JGBLT+C
 aysQ8Rh/xQwGtkJyXZbkMyNuDzCu4b8dSk/Hlol7XsVzp/BuXtpvNUZQ+
 lT8VpfWyPQL2F8zjC8dTqqL2GLBzamJ9+pqWwN3s4NpQLrzX9GfXcLWev
 07KdwLuU3CnSWf0D+P5Y1a8cfn0wMhsqKEGjgrnxEB2l0qg92jVvLY1mg
 EbNNXqC4SBZToswdAuPjV4W1rgnFJIbvtybWiwowr61D+7qA8r1536trh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kLF6dnk2
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 26dbbabc1331e574dbe5dad6544f40436b65b973
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
branch HEAD: 26dbbabc1331e574dbe5dad6544f40436b65b973  ice: clean up __ice_aq_get_set_rss_lut()

elapsed time: 726m

configs tested: 107
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r024-20230731   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230801   gcc  
arc                  randconfig-r033-20230731   gcc  
arc                  randconfig-r043-20230802   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230802   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r006-20230801   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230802   clang
hexagon              randconfig-r045-20230802   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230731   gcc  
i386         buildonly-randconfig-r005-20230731   gcc  
i386         buildonly-randconfig-r006-20230731   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230731   gcc  
i386                 randconfig-i002-20230731   gcc  
i386                 randconfig-i003-20230731   gcc  
i386                 randconfig-i004-20230731   gcc  
i386                 randconfig-i005-20230731   gcc  
i386                 randconfig-i006-20230731   gcc  
i386                 randconfig-i011-20230731   clang
i386                 randconfig-i012-20230731   clang
i386                 randconfig-i013-20230731   clang
i386                 randconfig-i014-20230731   clang
i386                 randconfig-i015-20230731   clang
i386                 randconfig-i016-20230731   clang
i386                 randconfig-r004-20230801   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230801   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r022-20230731   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r001-20230801   clang
mips                 randconfig-r016-20230801   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r035-20230731   gcc  
nios2                randconfig-r036-20230731   gcc  
openrisc             randconfig-r025-20230731   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r026-20230731   gcc  
parisc               randconfig-r031-20230731   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r015-20230801   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230802   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r011-20230801   clang
s390                 randconfig-r034-20230731   gcc  
s390                 randconfig-r044-20230802   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r003-20230801   gcc  
sh                   randconfig-r005-20230801   gcc  
sh                   randconfig-r014-20230801   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r013-20230801   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230731   gcc  
x86_64       buildonly-randconfig-r002-20230731   gcc  
x86_64       buildonly-randconfig-r003-20230731   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r021-20230731   clang
x86_64               randconfig-x001-20230731   clang
x86_64               randconfig-x002-20230731   clang
x86_64               randconfig-x003-20230731   clang
x86_64               randconfig-x004-20230731   clang
x86_64               randconfig-x005-20230731   clang
x86_64               randconfig-x006-20230731   clang
x86_64               randconfig-x011-20230731   gcc  
x86_64               randconfig-x012-20230731   gcc  
x86_64               randconfig-x013-20230731   gcc  
x86_64               randconfig-x014-20230731   gcc  
x86_64               randconfig-x015-20230731   gcc  
x86_64               randconfig-x016-20230731   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
