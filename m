Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F162B6ADE45
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 13:04:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2124A416C4;
	Tue,  7 Mar 2023 12:04:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2124A416C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678190653;
	bh=NZ7a1SLW4LZY7nmgSW22ATskJl5RIHJ5rFYSYifVZhs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pbamyNCx59wCJ9fGHT6qQKS80+9y8hD5vr4cWzpuzE2Lr9Kd7KW4ibIO+bmN8HMZO
	 lAlTGzS7dOxbvIPIgDY8jJYdRmop9UZdVJPyOl53iNqjlxWs9Gz6ec9QNnk1O+JKc/
	 t5R9PRXqmRZmSKVkSCw+wk5dy9rA1w8S8Vaq72AZnTUNg1k0shmUrFpik38sQkKsCk
	 qQGTw7TjL83fe9AdpMgxnt0wec84LpaiTjW2HkVx1g47ZJWm+WvhVsW5lZO7M+CuQ2
	 k/J6Jw289/j+WV1Jb8RfnSytZpMxZYqEi9bQ1QzThUio8QLZzuocPirJdjxtOlKUi8
	 w9O4k9OqopZ3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5zLls9TXLq7o; Tue,  7 Mar 2023 12:04:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF3494093F;
	Tue,  7 Mar 2023 12:04:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF3494093F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ACF4C1BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 12:04:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8567B60E1B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 12:04:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8567B60E1B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4V2-CkivYm6R for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 12:04:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F76C60B38
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F76C60B38
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 12:04:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="315487305"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="315487305"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 04:04:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="745438620"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="745438620"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 07 Mar 2023 04:04:03 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZW31-0001HT-01;
 Tue, 07 Mar 2023 12:04:03 +0000
Date: Tue, 07 Mar 2023 20:03:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6407280d.sR3ewI0/mml3In7B%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678190645; x=1709726645;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GzKh3+2giXfyVPrHiOn4M4A6tzIv43oqt8ZQ8122a9g=;
 b=BCWc93EO4QYRGCN9rRyzEtKr31qH1/V0snNiK5tW24FH6cD4vSDfaBfN
 +ktdU5BVlBcqfp44fpw+d/MI76DLGYGmwgSIsfxPVkYuEP0dGbtU5q/IH
 l5KxifZyfoDOg9DjNh+2zRIlzrVcN8vBKMzyAnEOa57ecxrOJp0j4P7tb
 8pZQvIH2aFzjr6ur+IiT04BJgEFL96WPExgdjTPvBNYqn38xi9524otXd
 /tsoF1YV+4J4JNMxa6c87VQqUC93G7nAhyjWuJNVqaxO3hg3C3SWcxSMn
 Iz+kMeUjRH10bxZLcTTWTyHjJkWSWQeOPPP8YuRicSPu1cSybYZ664GQJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BCWc93EO
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 043596d626329455dfb07233a8963a8fd94c5c37
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 043596d626329455dfb07233a8963a8fd94c5c37  i40e: add support for XDP multi-buffer Rx

elapsed time: 940m

configs tested: 132
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r031-20230305   gcc  
arc                  randconfig-r035-20230306   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230306   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230305   gcc  
arm                  randconfig-r013-20230305   clang
arm                  randconfig-r031-20230306   clang
arm                  randconfig-r033-20230306   clang
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230305   gcc  
arm64                randconfig-r026-20230306   clang
csky         buildonly-randconfig-r006-20230305   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r025-20230306   gcc  
csky                 randconfig-r033-20230305   gcc  
hexagon      buildonly-randconfig-r001-20230306   clang
hexagon              randconfig-r023-20230305   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r003-20230306   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230306   gcc  
i386                 randconfig-a002-20230306   gcc  
i386                 randconfig-a003-20230306   gcc  
i386                 randconfig-a004-20230306   gcc  
i386                 randconfig-a005-20230306   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a011-20230306   clang
i386                 randconfig-a012-20230306   clang
i386                 randconfig-a013-20230306   clang
i386                 randconfig-a014-20230306   clang
i386                 randconfig-a015-20230306   clang
i386                 randconfig-a016-20230306   clang
i386                 randconfig-r004-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r021-20230306   gcc  
ia64                 randconfig-r022-20230306   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r015-20230306   gcc  
loongarch            randconfig-r016-20230306   gcc  
loongarch            randconfig-r036-20230305   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r035-20230305   gcc  
microblaze           randconfig-r011-20230305   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r016-20230305   clang
mips                 randconfig-r022-20230305   clang
nios2        buildonly-randconfig-r006-20230306   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230305   gcc  
nios2                randconfig-r036-20230306   gcc  
openrisc     buildonly-randconfig-r001-20230305   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r012-20230305   gcc  
parisc               randconfig-r032-20230306   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r014-20230306   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r024-20230305   gcc  
riscv                randconfig-r032-20230305   clang
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230306   gcc  
s390                 randconfig-r013-20230306   clang
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230306   gcc  
sh                   randconfig-r001-20230305   gcc  
sh                   randconfig-r003-20230305   gcc  
sh                   randconfig-r012-20230306   gcc  
sh                   randconfig-r034-20230306   gcc  
sparc        buildonly-randconfig-r003-20230305   gcc  
sparc        buildonly-randconfig-r004-20230305   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230306   gcc  
sparc                randconfig-r006-20230305   gcc  
sparc                randconfig-r014-20230305   gcc  
sparc                randconfig-r023-20230306   gcc  
sparc64              randconfig-r024-20230306   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230306   gcc  
x86_64               randconfig-a002-20230306   gcc  
x86_64               randconfig-a003-20230306   gcc  
x86_64               randconfig-a004-20230306   gcc  
x86_64               randconfig-a005-20230306   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64               randconfig-a011-20230306   clang
x86_64               randconfig-a012-20230306   clang
x86_64               randconfig-a013-20230306   clang
x86_64               randconfig-a014-20230306   clang
x86_64               randconfig-a015-20230306   clang
x86_64               randconfig-a016-20230306   clang
x86_64               randconfig-r011-20230306   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230305   gcc  
xtensa               randconfig-r002-20230305   gcc  
xtensa               randconfig-r006-20230306   gcc  
xtensa               randconfig-r034-20230305   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
