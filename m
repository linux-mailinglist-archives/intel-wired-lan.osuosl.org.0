Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAEB771269
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Aug 2023 23:39:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DD6160D8E;
	Sat,  5 Aug 2023 21:39:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DD6160D8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691271543;
	bh=7+UF0G1aGlcEDTu1axDZIUmgtbPA2MxkGvVjkbC9GCI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AfMiCinCLxjp4hXrOeW/KdoyDswTmRc2kZzxHLwVPi3vaEApLp1MMdz3mJ6/AJGPl
	 YAhM4zBhiQY6orc7DsikkL+ZUdwq/ou+Ar1GgT7owo4gtwOW7c3KWsllBZIBdX+UAm
	 pVdSrCsMVMmhNVT1lK2xbL/xdPu9GApIRf2VFrTt9NqMbsSwkUK9WpT4T/qmLw5sQK
	 /WoB/jbWk0Xl+OkhCLLzRBYN6v2RqcYCq6G738M3/rjiww2Fr1XZD2tTAlnT1QbKOX
	 5+lngn85nktaaaMsRKgawadddhzXglG8WWbgUvYcuQKMZs4j/iRhnTqRtste50bZz/
	 ZR465sWXOf78A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2aQq_hKu1wun; Sat,  5 Aug 2023 21:39:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF26B60B06;
	Sat,  5 Aug 2023 21:39:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF26B60B06
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 459CD1BF86B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 21:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 59A41400C6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 21:37:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59A41400C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IpdOXK5HIL3N for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Aug 2023 21:37:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3441740185
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 21:37:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3441740185
X-IronPort-AV: E=McAfee;i="6600,9927,10793"; a="401302965"
X-IronPort-AV: E=Sophos;i="6.01,258,1684825200"; d="scan'208";a="401302965"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2023 14:37:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10793"; a="680351848"
X-IronPort-AV: E=Sophos;i="6.01,258,1684825200"; d="scan'208";a="680351848"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 05 Aug 2023 14:37:56 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qSOyB-0003tv-2n
 for intel-wired-lan@lists.osuosl.org; Sat, 05 Aug 2023 21:37:55 +0000
Date: Sun, 06 Aug 2023 05:37:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308060537.fNgMvu3Q-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691271478; x=1722807478;
 h=date:from:to:subject:message-id;
 bh=WJlHWBQDGFOJuCZwLXoTdFwI4203TWpdsPI/DvBIi2k=;
 b=XNekZfTAGXgdxj+QJu+ewnTNR+fUfoNw59YS1ISvkkZF2J8BTd6CHdP6
 zOigp5tpU4QCSBk0TFo5S71rE+XQp+6ZRoXw+G5Hmj2kHoL7LtEKI1MJz
 90p3nXu+r2cy5idXb20J2eDLi+QYlIzxEeI/1qU3sYrWsOqoHkqrbK/TT
 qtFUBfKtIFP8nkaSl73wrSK6cEpRlQC0NB7pdTFPGyMzSNvHpcU8s5C+7
 zBrXCK3veNPVPLzq3lIBWiyAZn/92Ma0pqb+rotTulBrexe9wFZkPprOd
 Khxi5fn7bJi5z8bllyqUhkqCHEbtNZVsugDCryMPrRrx2gjmJfCJhH32l
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XNekZfTA
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 373c8dfe53f5fc311a6afc08e8099dd395ea2af4
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
branch HEAD: 373c8dfe53f5fc311a6afc08e8099dd395ea2af4  i40e: fix misleading debug logs

elapsed time: 1392m

configs tested: 116
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r036-20230801   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230805   gcc  
arc                  randconfig-r043-20230731   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r012-20230731   gcc  
arm                  randconfig-r046-20230731   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230805   gcc  
arm64                randconfig-r013-20230731   clang
arm64                randconfig-r026-20230731   clang
csky                                defconfig   gcc  
hexagon              randconfig-r014-20230731   clang
hexagon              randconfig-r025-20230731   clang
hexagon              randconfig-r041-20230731   clang
hexagon              randconfig-r045-20230731   clang
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
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r015-20230731   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r024-20230731   gcc  
openrisc             randconfig-r034-20230801   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230731   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230805   gcc  
s390                 randconfig-r044-20230731   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r021-20230731   gcc  
sh                   randconfig-r022-20230731   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r033-20230801   gcc  
sparc64              randconfig-r031-20230801   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230731   gcc  
x86_64       buildonly-randconfig-r002-20230731   gcc  
x86_64       buildonly-randconfig-r003-20230731   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r002-20230805   gcc  
x86_64               randconfig-x001-20230731   clang
x86_64               randconfig-x001-20230806   gcc  
x86_64               randconfig-x002-20230731   clang
x86_64               randconfig-x002-20230806   gcc  
x86_64               randconfig-x003-20230731   clang
x86_64               randconfig-x003-20230806   gcc  
x86_64               randconfig-x004-20230731   clang
x86_64               randconfig-x004-20230806   gcc  
x86_64               randconfig-x005-20230731   clang
x86_64               randconfig-x005-20230806   gcc  
x86_64               randconfig-x006-20230731   clang
x86_64               randconfig-x006-20230806   gcc  
x86_64               randconfig-x011-20230731   gcc  
x86_64               randconfig-x011-20230806   clang
x86_64               randconfig-x012-20230731   gcc  
x86_64               randconfig-x012-20230806   clang
x86_64               randconfig-x013-20230731   gcc  
x86_64               randconfig-x013-20230806   clang
x86_64               randconfig-x014-20230731   gcc  
x86_64               randconfig-x014-20230806   clang
x86_64               randconfig-x015-20230731   gcc  
x86_64               randconfig-x015-20230806   clang
x86_64               randconfig-x016-20230731   gcc  
x86_64               randconfig-x016-20230806   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r001-20230805   gcc  
xtensa               randconfig-r023-20230731   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
