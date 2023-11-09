Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AED3C7E62B7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 04:45:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C07E6129B;
	Thu,  9 Nov 2023 03:45:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C07E6129B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699501520;
	bh=NQpANonxbY8PFkcd34PiYbam26DRhQlPFmvonbi/8KQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cjsFQLjE6U5P2IavzY+hRzArZbhz2MGi6nomPqPGeZCblbuENc2nhCChwIsYdiO6H
	 SrBJPmIF41CuIGcMhE49LXSL6TIgLyuypFEfnfjIOGC/IuDRFNSniZnuQtnFBhU+99
	 TiaChav7RUGiSbooGIuhoVQO3ZbvJQzQRkTEN+Nngz8c22eRAwtklpqIFU9OiPciWu
	 DxLWWfxr4aufNp1Wz+Ii8dSLWXZbCcEJpvTWYQKJIOeqms2BE4173YJ18uOrQD3ncB
	 tGQrXviACdoc0VQNELy1miJGNNw4PRz5n7mvI7r7vmsWvdlvOqKlxv3wx/s4qKS/7h
	 WeTVikpiqsCVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dpRKXMShuZde; Thu,  9 Nov 2023 03:45:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20EBB6121A;
	Thu,  9 Nov 2023 03:45:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20EBB6121A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCC651BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 03:45:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 93BAB812B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 03:45:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93BAB812B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hxSxnnrcw_PJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 03:45:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D726812A8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 03:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D726812A8
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="2870242"
X-IronPort-AV: E=Sophos;i="6.03,288,1694761200"; 
   d="scan'208";a="2870242"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 19:45:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,288,1694761200"; 
   d="scan'208";a="4410956"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 08 Nov 2023 19:45:05 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r0vyY-0008TT-0s
 for intel-wired-lan@lists.osuosl.org; Thu, 09 Nov 2023 03:45:02 +0000
Date: Thu, 09 Nov 2023 11:44:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202311091112.2G1Bmf0X-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699501509; x=1731037509;
 h=date:from:to:subject:message-id;
 bh=motI3FutUfMS8Cb+z8CB9WiDOPpPFXOXR9NZjFg4Ki0=;
 b=TBmPLWqGhzALIH7BU1R968Xb1wZI2fyy/PhV7R2tNgWZBflBurUjLIxq
 3m36WfkfOPLH3OhXDqzYdQceL0dPDIfjonC9sRI0bkBVjg9uUDpelS7fh
 ht+SGPrKy4wmr39Ie11EdhfxTHGWFhy2W2kcFXW8IVGgQg0JaewYxMXlr
 IgcdbPDo+FokmTav5TiZle4H+gBsx8SZRY1stsO+HOCiSr7MzJumDy1dM
 dxH8/0GBDfHQ8mUMG6cUzdYhGEjdtzh5O4Ob56y8c2bVg4CiyRDnQPCPK
 ybph1JWv/j/qnFdod4Ff2lENPeQRjhawWqEqKXU9go+ihjw30k8a7euoV
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TBmPLWqG
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 68c51db3a16d258e730dd1c04a1de2f7ab038ddf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 68c51db3a16d258e730dd1c04a1de2f7ab038ddf  ice: Fix VF-VF direction matching in drop rule in switchdev

elapsed time: 3013m

configs tested: 95
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231108   gcc  
arc                   randconfig-002-20231108   gcc  
arm                                 defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231108   gcc  
csky                  randconfig-002-20231108   gcc  
i386                              allnoconfig   gcc  
i386         buildonly-randconfig-001-20231108   gcc  
i386         buildonly-randconfig-002-20231108   gcc  
i386         buildonly-randconfig-003-20231108   gcc  
i386         buildonly-randconfig-004-20231108   gcc  
i386         buildonly-randconfig-005-20231108   gcc  
i386         buildonly-randconfig-006-20231108   gcc  
i386                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231108   gcc  
loongarch             randconfig-002-20231108   gcc  
m68k                              allnoconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231108   gcc  
nios2                 randconfig-002-20231108   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231108   gcc  
parisc                randconfig-002-20231108   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231108   gcc  
riscv                 randconfig-002-20231108   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231108   gcc  
s390                  randconfig-002-20231108   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
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
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231108   gcc  
x86_64                randconfig-002-20231108   gcc  
x86_64                randconfig-003-20231108   gcc  
x86_64                randconfig-004-20231108   gcc  
x86_64                randconfig-005-20231108   gcc  
x86_64                randconfig-006-20231108   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
