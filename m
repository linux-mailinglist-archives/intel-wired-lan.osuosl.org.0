Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 591B072793F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 09:54:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94E4E613EF;
	Thu,  8 Jun 2023 07:54:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94E4E613EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686210895;
	bh=1rtazPvAhxl6vgTLfKsO1z9BonTzQxxP4I4dPMoyXiQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rZzDKA/cUOhRGZOXIWFbvKmUDDk+sCfN4viiCRF69aaVOeR4Z/RVGFt8T4/fv5TPx
	 aZEbxrCp2+0NE13FMJClAOJeGZDKaXcssb2FLqJpjyFBQw1DUHnzSMRI6z3S5tWLYq
	 biBF0q7/kREjG+cI7Z3cDZoKzD4F3XN2U1RlxSi7RLWrGjdQhc/Cs25/ing9eND81S
	 DQo9b3ysE3CRprbXUJ+PX0AwWoxIgJTiFXwHK8B4qyLy80lcr/qhW9NzBkWCu2637d
	 TVyWGCpQk0SBfdjjjN4lXS/lPRWu8h53GGqBFcGiFlXl+ZERZUiE9qf7GxO9nJQMnj
	 I0gnvAFpVcl4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPxBi-6ZKaSP; Thu,  8 Jun 2023 07:54:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D6F06137D;
	Thu,  8 Jun 2023 07:54:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D6F06137D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 526E41BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 07:54:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BFD86137D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 07:54:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BFD86137D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HHdRJmIfoU1L for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 07:54:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B01E760B06
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B01E760B06
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 07:54:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="443608502"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="443608502"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 00:54:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="703978355"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="703978355"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 08 Jun 2023 00:54:46 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q7ATl-0007Xk-0x
 for intel-wired-lan@lists.osuosl.org; Thu, 08 Jun 2023 07:54:45 +0000
Date: Thu, 08 Jun 2023 15:54:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306081515.OHPc5Bf2-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686210887; x=1717746887;
 h=date:from:to:subject:message-id;
 bh=szqXAxb0Nb+fX5KPQ4Wf2Z9OtcqhmWGsLmfBCHVukng=;
 b=Ejlsv66MKhQvCEyu7TFWcV742rE4wIDwIy8C/MEaNkLn7dCAdI/PzHeW
 jWrduwHhG1xu+R5HI6KtD7+fUAEMgxhhqIJ2umAYj8y4ldr5YosuLMdJX
 DF8OpCpfbEUEu8bjlIGESC/3qcBeIzacqetkiCVyHbe0Zp/mP4ofkk+lK
 Q7ab7q9wtwwon4mpfH1WJI2maQWv9mxoMUS+xOHhSEB+hNTG5T/FyNvGW
 D/tk2PG/uAfmo+nC6qKj3GOpHIHYI/YjdxBsUiSP/nLe2f7enNRGklmwP
 CcpFCEh/QgfEJxWpvg/hP7kk92ZU6Ua2NyzWMom96/ihc+wMvf0hmBIuq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ejlsv66M
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c27228db8fff17b8296e162e77668fa6b2c64c8b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: c27228db8fff17b8296e162e77668fa6b2c64c8b  igc: set TP bit in 'supported' and 'advertising' fields of ethtool_link_ksettings

elapsed time: 977m

configs tested: 160
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230607   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r036-20230607   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r012-20230607   gcc  
arc                  randconfig-r021-20230607   gcc  
arc                  randconfig-r022-20230607   gcc  
arc                  randconfig-r023-20230607   gcc  
arc                  randconfig-r025-20230607   gcc  
arc                  randconfig-r035-20230607   gcc  
arc                  randconfig-r043-20230607   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                                 defconfig   gcc  
arm                      jornada720_defconfig   gcc  
arm                       multi_v4t_defconfig   gcc  
arm                         nhk8815_defconfig   gcc  
arm                  randconfig-r006-20230607   gcc  
arm                  randconfig-r023-20230607   clang
arm                  randconfig-r046-20230607   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r024-20230607   gcc  
arm64                randconfig-r033-20230607   clang
csky         buildonly-randconfig-r006-20230607   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230607   gcc  
csky                 randconfig-r015-20230607   gcc  
hexagon              randconfig-r003-20230607   clang
hexagon              randconfig-r004-20230607   clang
hexagon              randconfig-r012-20230607   clang
hexagon              randconfig-r031-20230607   clang
hexagon              randconfig-r041-20230607   clang
hexagon              randconfig-r045-20230607   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r005-20230607   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230607   clang
i386                 randconfig-i002-20230607   clang
i386                 randconfig-i003-20230607   clang
i386                 randconfig-i004-20230607   clang
i386                 randconfig-i005-20230607   clang
i386                 randconfig-i006-20230607   clang
i386                 randconfig-i011-20230607   gcc  
i386                 randconfig-i012-20230607   gcc  
i386                 randconfig-i013-20230607   gcc  
i386                 randconfig-i014-20230607   gcc  
i386                 randconfig-i015-20230607   gcc  
i386                 randconfig-i016-20230607   gcc  
i386                 randconfig-i051-20230607   clang
i386                 randconfig-i052-20230607   clang
i386                 randconfig-i053-20230607   clang
i386                 randconfig-i054-20230607   clang
i386                 randconfig-i055-20230607   clang
i386                 randconfig-i056-20230607   clang
i386                 randconfig-i061-20230607   clang
i386                 randconfig-i062-20230607   clang
i386                 randconfig-i063-20230607   clang
i386                 randconfig-i064-20230607   clang
i386                 randconfig-i065-20230607   clang
i386                 randconfig-i066-20230607   clang
ia64                            zx1_defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230607   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230607   gcc  
microblaze   buildonly-randconfig-r002-20230607   gcc  
microblaze           randconfig-r003-20230607   gcc  
microblaze           randconfig-r034-20230607   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips         buildonly-randconfig-r001-20230607   gcc  
mips                     decstation_defconfig   gcc  
mips                 randconfig-r002-20230607   gcc  
mips                 randconfig-r032-20230607   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230607   gcc  
nios2                randconfig-r024-20230607   gcc  
openrisc             randconfig-r016-20230607   gcc  
openrisc             randconfig-r031-20230607   gcc  
parisc                           allyesconfig   gcc  
parisc       buildonly-randconfig-r001-20230607   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r005-20230607   clang
powerpc              randconfig-r006-20230607   clang
powerpc              randconfig-r036-20230607   clang
powerpc                     tqm8548_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r013-20230607   gcc  
riscv                randconfig-r015-20230607   gcc  
riscv                randconfig-r022-20230607   gcc  
riscv                randconfig-r026-20230607   gcc  
riscv                randconfig-r034-20230607   clang
riscv                randconfig-r042-20230607   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230607   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230607   clang
s390                 randconfig-r044-20230607   gcc  
sh                               allmodconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r003-20230607   gcc  
sparc64              randconfig-r014-20230607   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r004-20230607   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230607   clang
x86_64               randconfig-a002-20230607   clang
x86_64               randconfig-a003-20230607   clang
x86_64               randconfig-a004-20230607   clang
x86_64               randconfig-a005-20230607   clang
x86_64               randconfig-a006-20230607   clang
x86_64               randconfig-a011-20230607   gcc  
x86_64               randconfig-a012-20230607   gcc  
x86_64               randconfig-a013-20230607   gcc  
x86_64               randconfig-a014-20230607   gcc  
x86_64               randconfig-a015-20230607   gcc  
x86_64               randconfig-a016-20230607   gcc  
x86_64               randconfig-r004-20230607   clang
x86_64               randconfig-r025-20230607   gcc  
x86_64               randconfig-x051-20230607   gcc  
x86_64               randconfig-x052-20230607   gcc  
x86_64               randconfig-x053-20230607   gcc  
x86_64               randconfig-x054-20230607   gcc  
x86_64               randconfig-x055-20230607   gcc  
x86_64               randconfig-x056-20230607   gcc  
x86_64               randconfig-x061-20230607   gcc  
x86_64               randconfig-x062-20230607   gcc  
x86_64               randconfig-x063-20230607   gcc  
x86_64               randconfig-x064-20230607   gcc  
x86_64               randconfig-x065-20230607   gcc  
x86_64               randconfig-x066-20230607   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r003-20230607   gcc  
xtensa       buildonly-randconfig-r006-20230607   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
