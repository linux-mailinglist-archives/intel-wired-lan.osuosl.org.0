Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 930A171FFDC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 12:59:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10127426E3;
	Fri,  2 Jun 2023 10:59:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10127426E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685703576;
	bh=Cmmb/B9Zg8fhVTn2k71lanOMzb0BNhZQXU82tIy7mbE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9yRS+V/ci+6p23ikhpQdkMl6mw6U3q+eTSDlT+R1KpLzqBvh1XNfr5pvGwpyi20c8
	 NdKwMiUJJlAXdExaRhHEqC6hS4kcB3KsM00AVPXQZDUbohJiwlI8HMbGpUXZhxiuTk
	 ncJcrdaoK5KziY0sC0AI4s/1g5EdCYnI1EJiyK899G5NK5TLJjh8M1DdTP58WJ+azc
	 VKiSfNGmHZlBJ/56z4u0EY1MODTqTRcitCjl0Ab+C69IIkBp8EQE6D3gWwcPmnSdZb
	 U9ADV5uJjx51bHykfv+Yin//V6FrYO0soGH+7HEE0xBeIykc1fq72gqCwlR4X2a6Yz
	 gR6epjTFy90eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 30BlFcyT8SOA; Fri,  2 Jun 2023 10:59:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 436CC426BB;
	Fri,  2 Jun 2023 10:59:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 436CC426BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C57F1BF215
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 10:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7594426BB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 10:59:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7594426BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tgE_68fw4L_s for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 10:59:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A84EF426B6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A84EF426B6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 10:59:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="353337078"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="353337078"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 03:59:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="740797209"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="740797209"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 02 Jun 2023 03:59:25 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q52VB-0000Mr-0m
 for intel-wired-lan@lists.osuosl.org; Fri, 02 Jun 2023 10:59:25 +0000
Date: Fri, 02 Jun 2023 18:59:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230602105907.u-pXE%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685703567; x=1717239567;
 h=date:from:to:subject:message-id;
 bh=ND+pyqB//gg1QHmk+ykjms0DJRGVhCzcKp9zfRTWBvo=;
 b=iFP8oPCBjPBuy5g07crCU4eedbyLZCs0vxqeIPMqT/sXQfddipDe1tIU
 BVuNwZvZxyCDFELQPiqU2Q/STEW+Ck2jvGFDPlGXd2SWIH4xnii2mMMJx
 Pgoy+bnkj/hRUOWrtC/FqQmTLfMtRlQV+WSpbGr5PIeazqAkXJ+pSOgDY
 GfuUHYMQAJp2XCHJptcWTndT5Eds5vYeGvVZtcd5IwglJYm/6KeCamKEq
 ko7rBRqJEsTIW9Kpgg8Zre+9kh/wztZk+AUIxdCmTgPqHEz80GDIbqG8R
 718Phr3xfljxebBJDJa19CNmYQTBsqJTvEfQSB0VnYMbugN3ZvOdDzU67
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iFP8oPCB
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 11afcbf316aa60a6aebb99de8fda48df81116a72
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
branch HEAD: 11afcbf316aa60a6aebb99de8fda48df81116a72  ice: remove null checks before devm_kfree() calls

elapsed time: 724m

configs tested: 98
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r014-20230531   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r025-20230531   gcc  
arc                  randconfig-r043-20230531   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230531   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230602   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230602   gcc  
hexagon      buildonly-randconfig-r001-20230531   clang
hexagon              randconfig-r003-20230602   clang
hexagon              randconfig-r041-20230531   clang
hexagon              randconfig-r045-20230531   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230531   gcc  
i386                 randconfig-i002-20230531   gcc  
i386                 randconfig-i003-20230531   gcc  
i386                 randconfig-i004-20230531   gcc  
i386                 randconfig-i005-20230531   gcc  
i386                 randconfig-i006-20230531   gcc  
i386                 randconfig-i051-20230531   gcc  
i386                 randconfig-i052-20230531   gcc  
i386                 randconfig-i053-20230531   gcc  
i386                 randconfig-i054-20230531   gcc  
i386                 randconfig-i055-20230531   gcc  
i386                 randconfig-i056-20230531   gcc  
i386                 randconfig-i061-20230602   gcc  
i386                 randconfig-i062-20230602   gcc  
i386                 randconfig-i063-20230602   gcc  
i386                 randconfig-i064-20230602   gcc  
i386                 randconfig-i065-20230602   gcc  
i386                 randconfig-i066-20230602   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r016-20230531   gcc  
microblaze           randconfig-r021-20230531   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r006-20230531   clang
mips                 randconfig-r001-20230602   clang
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r003-20230531   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r026-20230531   gcc  
parisc               randconfig-r032-20230531   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r002-20230602   gcc  
powerpc              randconfig-r022-20230531   clang
powerpc              randconfig-r023-20230531   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r031-20230531   gcc  
riscv                randconfig-r042-20230531   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r015-20230531   clang
s390                 randconfig-r033-20230531   gcc  
s390                 randconfig-r044-20230531   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230531   gcc  
sh                   randconfig-r005-20230602   gcc  
sh                   randconfig-r034-20230531   gcc  
sh                   randconfig-r035-20230531   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230531   gcc  
sparc                randconfig-r012-20230531   gcc  
sparc64      buildonly-randconfig-r002-20230531   gcc  
sparc64      buildonly-randconfig-r004-20230531   gcc  
sparc64              randconfig-r024-20230531   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230531   gcc  
x86_64               randconfig-a002-20230531   gcc  
x86_64               randconfig-a003-20230531   gcc  
x86_64               randconfig-a004-20230531   gcc  
x86_64               randconfig-a005-20230531   gcc  
x86_64               randconfig-a006-20230531   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
