Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 729A972A918
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 06:59:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6B5A42592;
	Sat, 10 Jun 2023 04:59:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6B5A42592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686373165;
	bh=Z3S7DMHw7wT8dH+2EadkO1xcWcniHDYPydZxlz0pHBs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kcaWK3dXhlQGvcZ5eYDPiOnIftMy33PSCNgDGCBZgIDnmg7aL1F/pW8DIi3hBx6o4
	 NZL7ut2av+ODWcZR2wc6uf7nCP5/06vfM1fWPli1GnqK7rLBPtrNhcfz2LrksPF4UL
	 93zjHaSV4KZw4O18b8jw3A9JJsktXgz2eT7KIfmSWBYP6kq8Fjx4NdjzaGFz/f7yTg
	 PCV3vZF0aoP1pOZ62ReU0bcDHg4dONZzANZHXi3Gc3Z2n+xcsQVMWgGbyZmZe4XJNi
	 50uLMmHBHaoPfFWZ7cm+6lSDVkYHA6Lxxv0ZIgrQ2/ycXKfeMdZBszFRLj5BpmqzlI
	 dWGefe2CctjLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AYbC_u0OYdEc; Sat, 10 Jun 2023 04:59:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9243A4258F;
	Sat, 10 Jun 2023 04:59:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9243A4258F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31E9E1BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 04:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 09F6B83A75
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 04:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09F6B83A75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nDXmHiNzOk4B for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 04:59:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C4438220C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C4438220C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 04:59:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="386102737"
X-IronPort-AV: E=Sophos;i="6.00,231,1681196400"; d="scan'208";a="386102737"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 21:59:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="704766790"
X-IronPort-AV: E=Sophos;i="6.00,231,1681196400"; d="scan'208";a="704766790"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 09 Jun 2023 21:59:15 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q7qh0-0009k2-1i
 for intel-wired-lan@lists.osuosl.org; Sat, 10 Jun 2023 04:59:14 +0000
Date: Sat, 10 Jun 2023 12:59:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306101204.8oWrDb5o-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686373157; x=1717909157;
 h=date:from:to:subject:message-id;
 bh=ZAbC5P0PIfcqz5xEy+z8Pu/zbFBZCg0v4DuSGOr3B8E=;
 b=dxppwO0/CL0qKPU813J5Yw7aZ6kJ0tFmYkuG/0Bm4vtxblofRZs2hHqS
 2e4ARgx4tuk6+Eybw6AJ7F15sPeeWoAdjVvzd56uZFShXXvO5XkGP09qd
 oR/XfelrrQlgzBUw1XAZ0nOCP1J1A3p4CZyJkDBdkJlDaoXnivAxEYgll
 2wKDyJHOeYgBTZIgA+edIu4CH/lluxZ1VvpdU6GYllOWAt7XHPD7d7eq5
 hkQkxC5MriOEzQ8opemh0Mr4ZPs1HLlMHbUvXAE2TNjNSIb8/XbFJLMF2
 8fOIR5nY1KLcfP7HV9zAY44yLBwYrRhE+Lww2hxB5p3iE1Zey3t1rgX/C
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dxppwO0/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 99faff6dea0a13884af3a6fc8145c1f5351e0fbe
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
branch HEAD: 99faff6dea0a13884af3a6fc8145c1f5351e0fbe  ice: clean up __ice_aq_get_set_rss_lut()

elapsed time: 730m

configs tested: 55
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r036-20230608   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r026-20230608   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r025-20230608   clang
powerpc              randconfig-r034-20230608   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r031-20230608   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r023-20230608   clang
s390                 randconfig-r033-20230608   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r035-20230608   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r032-20230608   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r021-20230608   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
