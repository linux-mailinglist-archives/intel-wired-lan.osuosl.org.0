Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD997B7E7B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 13:51:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E28BE41906;
	Wed,  4 Oct 2023 11:51:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E28BE41906
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696420317;
	bh=GepOhHIO7g/ng93ITYC3rkZ5La2ngt/lMrzbp/U1dnc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=exEXxgrbnC4BEcxzACC+zVXZgJfopgAZ98R/tJ4XKXnYAJzsiX79M/zDcsj/Dy6ce
	 PeONKBXCK6u2c2XOYQ38pssQx3x+2J2d4Ji6VF2XmEisCw/f4JV73N1r1VcsKgCuqZ
	 9Xz0KbU+q6daXWHiiV/mYzG1e/22kkS7piroi0YRN3Tk/0tYIyBMu9UqaMh+2gR956
	 V+LvFdB1hhwV22wBqlIcH+QlSTAM2lbWIOXIdrHP7ni+ek5EHJE0ZDv2U6KfxKdwui
	 odFyFKflp/Z+fHkTUSpgQBhJCtUCsjJwSQvLtQ1pvcQ14VQrvFuURc56M8I8QvD3eI
	 za2iiUM/yHFnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2li5TSv5Sua1; Wed,  4 Oct 2023 11:51:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BC2640586;
	Wed,  4 Oct 2023 11:51:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BC2640586
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6313E1BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 11:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 483EC605E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 11:51:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 483EC605E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dZ9dZclmFk2f for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 11:51:50 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 04 Oct 2023 11:51:50 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0671260017
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0671260017
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 11:51:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="4702311"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; 
   d="scan'208";a="4702311"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 04:44:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="817058797"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="817058797"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 04 Oct 2023 04:44:42 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qo0Iy-000IDm-14
 for intel-wired-lan@lists.osuosl.org; Wed, 04 Oct 2023 11:44:40 +0000
Date: Wed, 04 Oct 2023 19:43:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202310041949.W8J9Hufi-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696420310; x=1727956310;
 h=date:from:to:subject:message-id;
 bh=jqMkVKhHI9IPndBWl4ZXpQtUv8LUjn21nYwxaCyeto8=;
 b=LcKea2RX9LB7B11PGbfkzLRA9GYxHhMNZBbkotVvG61WWnMjPDEw8d/D
 Zq+lDESa3dZQAACK9mn09xEsmxdoQVFyDAGeoYy5R6R5MhppYe81MZnH7
 SnhMLWgHJHj+poFtB+p5bO5TCq7sTxpS2LkHbj7bhxF7gOO6++in3sdB/
 cnEiiJ8BJvdix0h1KTfbOrtgDt34knkHz0nTMVJpLhG6Cpq30KcdWyy60
 7lkriTVJc+6rRiYruAAlwrbsW6ZqyAUbKoPVg4StDLQzY8SYRlMPZuDBx
 gaYLX0oiweWwOjLnLlmEwZvkm26HMZ4k/Qv2kMCYnxXYpVA3yu6cY9smP
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LcKea2RX
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 70dc7ab7645a438600e05a0196dbaf251e7f7062
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 70dc7ab7645a438600e05a0196dbaf251e7f7062  iavf: remove "inline" functions from iavf_txrx.c

elapsed time: 776m

configs tested: 101
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
arc                   randconfig-001-20231004   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20231004   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231004   gcc  
i386         buildonly-randconfig-002-20231004   gcc  
i386         buildonly-randconfig-003-20231004   gcc  
i386         buildonly-randconfig-004-20231004   gcc  
i386         buildonly-randconfig-005-20231004   gcc  
i386         buildonly-randconfig-006-20231004   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231004   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
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
x86_64                randconfig-001-20231004   gcc  
x86_64                randconfig-002-20231004   gcc  
x86_64                randconfig-003-20231004   gcc  
x86_64                randconfig-004-20231004   gcc  
x86_64                randconfig-005-20231004   gcc  
x86_64                randconfig-006-20231004   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
