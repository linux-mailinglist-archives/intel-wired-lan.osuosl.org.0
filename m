Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CA473F329
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 06:07:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E317B41020;
	Tue, 27 Jun 2023 04:07:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E317B41020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687838826;
	bh=JECkFeyYlax8HrLRCkcZYi9E8pG+niGypGZ2LIlApDk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sbcSrONQY1KBMaENx2zO2DafxmiJJw0PVy7hpxdF5My0cYFzzJULcnwKf/Ayw2/fN
	 U6bH5zJfD0dlUdX+0jMOMkhIsx//Kkp+K3bdJpqDxwiGLFxgI0sItcreGPB4vZo/Nn
	 1MO75viJcToOKCJUVpbrq+17GTkevmfhDi/oGyy2P22kIYeGX36For1yXFSIBhL5pA
	 rGMwdfQ+nhrTAFtDqqtTNh3snPWyaWsk64gXfvsGiPCp9BkFIbIbqnp0/RF29j0IcX
	 mPT876IlxhIuwggNsdg/oh4NkgppAsf5OaMNWDFpeb2Nope/XNwX8K4+TrYPxuFTgp
	 f4LuNjajuVJ3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 28FuMQrdQpAp; Tue, 27 Jun 2023 04:07:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 946804021C;
	Tue, 27 Jun 2023 04:07:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 946804021C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF2FD1BF33C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 04:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 892C741020
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 04:06:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 892C741020
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bEtejTL_ugr8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 04:06:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5ACA14021C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5ACA14021C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 04:06:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="427467472"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="427467472"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 21:06:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="860938123"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="860938123"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2023 21:06:55 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qDzyg-000BhF-2D
 for intel-wired-lan@lists.osuosl.org; Tue, 27 Jun 2023 04:06:54 +0000
Date: Tue, 27 Jun 2023 12:05:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306271258.zDy0CdXQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687838817; x=1719374817;
 h=date:from:to:subject:message-id;
 bh=4zCPubv/8iw9ClRjzoRON8hkRMRts8ZqckHBpm/zaqI=;
 b=QriNnIwsGsq9F1Q4ZPT9qLVqdMO7XcrxVvdXyvZIXpbZCaVFZ3N8u8SZ
 V/oLk9UZQfwjRdmoVq2+cZJ95as5bcAnPz0xzPZJ/Fj6Jnr0QgLAXn5tp
 Fwq7SWqUyXoryPLkGxVpdh6+aw2Trwp1fGuWDTuzRGVPi8kW5Z5YuUBLF
 HTfLBFoSr9e894+prAREyA+Y7bqc8jtir+nPVEo0h2SUS1jxClbiWRyxk
 d8umQajJp1IcDPLK27uSQk91tVPytBY4iuWu+jrGGAvlUqQXSscX4RAPe
 CyE/Aw/lqwEem7vuHzI8N8GOZu1Q3myk9EmVjWIWSc4ZkDI3NZyuF/13F
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QriNnIws
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 2c5b6150d38483c90b52dbfe6396d012ae1bcf22
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
branch HEAD: 2c5b6150d38483c90b52dbfe6396d012ae1bcf22  igc: Fix inserting of empty frame for launchtime

elapsed time: 721m

configs tested: 104
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230626   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230626   gcc  
arc                  randconfig-r025-20230626   gcc  
arc                  randconfig-r026-20230626   gcc  
arc                  randconfig-r043-20230626   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230626   gcc  
arm                  randconfig-r003-20230626   gcc  
arm                  randconfig-r046-20230626   clang
arm                           spitz_defconfig   clang
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r035-20230626   clang
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230626   clang
hexagon              randconfig-r045-20230626   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230626   clang
i386         buildonly-randconfig-r005-20230626   clang
i386         buildonly-randconfig-r006-20230626   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230626   clang
i386                 randconfig-i002-20230626   clang
i386                 randconfig-i003-20230626   clang
i386                 randconfig-i004-20230626   clang
i386                 randconfig-i005-20230626   clang
i386                 randconfig-i006-20230626   clang
i386                 randconfig-i011-20230626   gcc  
i386                 randconfig-i012-20230626   gcc  
i386                 randconfig-i013-20230626   gcc  
i386                 randconfig-i014-20230626   gcc  
i386                 randconfig-i015-20230626   gcc  
i386                 randconfig-i016-20230626   gcc  
i386                 randconfig-r031-20230626   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r023-20230626   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230626   gcc  
m68k                 randconfig-r024-20230626   gcc  
microblaze           randconfig-r021-20230626   gcc  
microblaze           randconfig-r022-20230626   gcc  
microblaze           randconfig-r033-20230626   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r034-20230626   gcc  
openrisc             randconfig-r036-20230626   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                        fsp2_defconfig   clang
powerpc                 mpc8313_rdb_defconfig   clang
powerpc              randconfig-r012-20230626   gcc  
powerpc                     redwood_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230626   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230626   clang
s390                 randconfig-r044-20230626   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r032-20230626   gcc  
sh                           se7724_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r006-20230626   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230626   clang
x86_64       buildonly-randconfig-r002-20230626   clang
x86_64       buildonly-randconfig-r003-20230626   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r014-20230626   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
