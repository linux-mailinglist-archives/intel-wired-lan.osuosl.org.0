Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FA7815073
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 20:58:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8EB9241761;
	Fri, 15 Dec 2023 19:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EB9241761
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702670311;
	bh=kYARrLjt/Ip4NR9TfBaLLNfc2Q+ORrmqL72LfB/nNwY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IMT2GK9oCoXg4Opi5lbyrngnjYeuL6NGpeenebciCHF2EAvn+DOd9/MUnXq+pV3+E
	 dPeQ9R2ekgD0WJnVw7kOq6h5xT1aE0eNIYeGW2Wna9OHUOEzZqUJsCaZsTdzmaJoZz
	 foU/KpvChQ1fTnWJL5sa0po4pHbRPB+e0CTxeRU0GmU98RGftADcffHCXItgqMDSlR
	 kD8jTpMTMct+hn57uPzq/m7n8PF42yj0Oo24Dxy7cUqK0Dzb1M2/PTylE+xGXn83MX
	 NBL7/qOY9Bmk83ehN61PPZFUdJIyVjHe5yBplYIqHHuxlZseQsoW44fBjvnZlmqcce
	 0JhrfNmDgwhiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WArIOuhkdZ9m; Fri, 15 Dec 2023 19:58:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9B87403AF;
	Fri, 15 Dec 2023 19:58:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9B87403AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F41421BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 19:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C438983E89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 19:58:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C438983E89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SOBDuBTTHvCt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 19:58:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 832A083ABA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 19:58:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 832A083ABA
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="2160967"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; 
   d="scan'208";a="2160967"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 11:58:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="803822328"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="803822328"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 15 Dec 2023 11:58:20 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rEEK9-0000ga-30
 for intel-wired-lan@lists.osuosl.org; Fri, 15 Dec 2023 19:58:17 +0000
Date: Sat, 16 Dec 2023 03:57:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312160344.3x73jho0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702670303; x=1734206303;
 h=date:from:to:subject:message-id;
 bh=J9cf2r4rX6m0CnSD+tTb+/u2vXul8YYerr5lguP5qoA=;
 b=oCJrjyrmfcd6GAZeS6SGrGvUP5UIrV4u5HKvBytl9PQrGg2zopicdovJ
 Rt1d1znsQrHyrC878HNNrfw/FJEcXCdJP4lUV2LGUl0nuXqNfrXoGFdeO
 1jz3czsvsBIhjbFg5UFm5osnBOZjVkioSghDH9VrJDWbN6QAfuCoHWLbu
 XY3lamesac3ep1hi8jZ5D1orVW61JimSbgyLyBYi0dogAR6b6Z1OgB9II
 2XwjanFHjoUIn9puRZ6QZ2Jg91ktTnqF8PJQDkz0fwuxseEkPp0Dsk5zp
 4jpMkp7zaYEvLi5KvNmkK4m4XEj5TdYnu2Q6j3SaUHxjET4b1z59kFnW9
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oCJrjyrm
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 d96f04e05f2634b2dea3cdfc9651f5704d829292
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
branch HEAD: d96f04e05f2634b2dea3cdfc9651f5704d829292  ice: add documentation for FW logging

elapsed time: 1504m

configs tested: 97
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                          axs101_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231216   gcc  
arc                   randconfig-002-20231216   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                          pxa168_defconfig   clang
arm                   randconfig-001-20231216   gcc  
arm                   randconfig-002-20231216   gcc  
arm                   randconfig-003-20231216   gcc  
arm                   randconfig-004-20231216   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231216   gcc  
arm64                 randconfig-002-20231216   gcc  
arm64                 randconfig-003-20231216   gcc  
arm64                 randconfig-004-20231216   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231216   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231215   clang
i386         buildonly-randconfig-002-20231215   clang
i386         buildonly-randconfig-003-20231215   clang
i386         buildonly-randconfig-004-20231215   clang
i386         buildonly-randconfig-005-20231215   clang
i386         buildonly-randconfig-006-20231215   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231215   clang
i386                  randconfig-002-20231215   clang
i386                  randconfig-003-20231215   clang
i386                  randconfig-004-20231215   clang
i386                  randconfig-005-20231215   clang
i386                  randconfig-006-20231215   clang
i386                  randconfig-011-20231215   gcc  
i386                  randconfig-012-20231215   gcc  
i386                  randconfig-013-20231215   gcc  
i386                  randconfig-014-20231215   gcc  
i386                  randconfig-015-20231215   gcc  
i386                  randconfig-016-20231215   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                             allnoconfig   clang
riscv                               defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
