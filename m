Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FE572EAEA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 20:26:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAD4440A18;
	Tue, 13 Jun 2023 18:26:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAD4440A18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686680786;
	bh=xJnxWArmLJj8cArHsllHQzo0jVzzbwxmmyLcJMnUvM4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mGC1xRe8IxvZS2M/Mslt3pvAWT1qhiCBlGsgsS6Gx3zlh2HU139FIFwcgdZfJrx+u
	 hPFgJmmQYVa4D4Eq6qidfvoOETQIOUFbAMblH9zph46vJNzYjBJtQu2IJ9sO9Xuqq+
	 +DXKk1Tng0XcTy6gi1OvqemKC+5nOdpGBJNpJKtFQ0mC6vk+3oru2Wf3RK6MHNY/qK
	 HSspAxk35OVT5nRHRbNOZspTXxJQd4RaEJplROlNBRZ9VArUDjdcio+iBx7K+yQEWt
	 jjc7eJr+OQw+UUENOf/XbEvDDqLB9spLNV7AFruj/XRkSJPCWFpyU2h3dPcpHhqVEK
	 0Sz4WILOnMFXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MzngSaIcOEfs; Tue, 13 Jun 2023 18:26:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BACC408DD;
	Tue, 13 Jun 2023 18:26:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BACC408DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 197891BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 18:26:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E56C9405E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 18:26:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E56C9405E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KS2zcUbC3Uaj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 18:26:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C091408A8
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C091408A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 18:26:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="424305272"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="424305272"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 11:26:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="885938674"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="885938674"
Received: from lkp-server01.sh.intel.com (HELO 211f47bdb1cb) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 13 Jun 2023 11:26:15 -0700
Received: from kbuild by 211f47bdb1cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q98ic-0001du-33
 for intel-wired-lan@lists.osuosl.org; Tue, 13 Jun 2023 18:26:14 +0000
Date: Wed, 14 Jun 2023 02:25:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306140221.ItdwQJcs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686680777; x=1718216777;
 h=date:from:to:subject:message-id;
 bh=LNTwLPSJdQY32snjx+go0Q70f+HwECf+qHYmwb9t+6U=;
 b=f/8mgCJo5YcWncudPUSwFJPSoe97UrO+9ptY8OoMa5RtSsfAwZRk8F8o
 b7bdDQGvIo3EEPMEDOMu9DJ0AHcYzew2MonJE1wx9xf7LyXxEp609DgXW
 ivH5fg2ido+wH4zExcIt64YrrKqcTZupcAuogUCBT3iB0121PvDEE2iGb
 a35kJnbTj72orxXwt2EEqpt9+wwc1ZK4Gc0ZxMylaxbu7sygv+6Q4CgSI
 dGYfIr+HLEurfqJZ8PtWZ5vceNXj2yXlo4Mc9npAawKliWUXC6W/iFBwa
 9mMV+OHPMy/drV8S0GeDzFzxhUVObfhmX1eqdluocB29lZfusMsh4tZmF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f/8mgCJo
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 48a821fd58837800750ec1b3962f0f799630a844
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 48a821fd58837800750ec1b3962f0f799630a844  igb: fix nvm.ops.read() error handling

elapsed time: 1241m

configs tested: 121
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230612   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230612   gcc  
arc                  randconfig-r043-20230612   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r036-20230612   gcc  
arm                  randconfig-r046-20230612   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230612   clang
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230612   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r002-20230612   gcc  
csky                 randconfig-r031-20230612   gcc  
hexagon              randconfig-r003-20230612   clang
hexagon              randconfig-r025-20230612   clang
hexagon              randconfig-r032-20230612   clang
hexagon              randconfig-r041-20230612   clang
hexagon              randconfig-r045-20230612   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230612   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230612   clang
i386                 randconfig-i002-20230612   clang
i386                 randconfig-i003-20230612   clang
i386                 randconfig-i004-20230612   clang
i386                 randconfig-i005-20230612   clang
i386                 randconfig-i006-20230612   clang
i386                 randconfig-i011-20230612   gcc  
i386                 randconfig-i012-20230612   gcc  
i386                 randconfig-i013-20230612   gcc  
i386                 randconfig-i014-20230612   gcc  
i386                 randconfig-i015-20230612   gcc  
i386                 randconfig-i016-20230612   gcc  
i386                 randconfig-r021-20230612   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r006-20230612   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230612   gcc  
loongarch            randconfig-r005-20230612   gcc  
loongarch            randconfig-r024-20230612   gcc  
loongarch            randconfig-r031-20230612   gcc  
loongarch            randconfig-r035-20230612   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k         buildonly-randconfig-r004-20230612   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r033-20230612   gcc  
microblaze           randconfig-r016-20230612   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230612   gcc  
mips                 randconfig-r001-20230612   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230612   gcc  
nios2                randconfig-r034-20230612   gcc  
openrisc     buildonly-randconfig-r001-20230612   gcc  
openrisc     buildonly-randconfig-r004-20230612   gcc  
openrisc             randconfig-r014-20230612   gcc  
parisc                           allyesconfig   gcc  
parisc       buildonly-randconfig-r003-20230612   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230612   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv        buildonly-randconfig-r005-20230612   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r023-20230612   gcc  
riscv                randconfig-r042-20230612   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r012-20230612   gcc  
s390                 randconfig-r044-20230612   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r013-20230612   gcc  
sh                   randconfig-r031-20230612   gcc  
sh                   randconfig-r036-20230612   gcc  
sparc                            allyesconfig   gcc  
sparc        buildonly-randconfig-r005-20230612   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r026-20230612   gcc  
sparc64              randconfig-r015-20230612   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230612   clang
x86_64               randconfig-a001-20230613   gcc  
x86_64               randconfig-a002-20230612   clang
x86_64               randconfig-a002-20230613   gcc  
x86_64               randconfig-a003-20230612   clang
x86_64               randconfig-a003-20230613   gcc  
x86_64               randconfig-a004-20230612   clang
x86_64               randconfig-a004-20230613   gcc  
x86_64               randconfig-a005-20230612   clang
x86_64               randconfig-a005-20230613   gcc  
x86_64               randconfig-a006-20230612   clang
x86_64               randconfig-a006-20230613   gcc  
x86_64               randconfig-a011-20230612   gcc  
x86_64               randconfig-a012-20230612   gcc  
x86_64               randconfig-a013-20230612   gcc  
x86_64               randconfig-a014-20230612   gcc  
x86_64               randconfig-a015-20230612   gcc  
x86_64               randconfig-a016-20230612   gcc  
x86_64               randconfig-r033-20230612   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
