Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3512D771090
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Aug 2023 18:29:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C377B60C2D;
	Sat,  5 Aug 2023 16:29:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C377B60C2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691252975;
	bh=Ej/Dge95IN/7i/svvHKMXC+DqqnS2LxTDDP367DrSlo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wURZZ75OCrpG+kXjNBEhGEoUodJkcMnrSmVupJJpBOxioGBkxqqkgEhDsfkKNheCX
	 QM9+ZBd7RP/9IRA+gq6SV21JWkW5y+vbjXBF3y42Ny388ID8zPiX/Ie8y7Jzi7aYJG
	 QyE2gYEebt+eltKULKRssIig2pmsoiQbXxjqmVNMRX4vWTDI6ScKE/8mhITdOq58LW
	 vV9sO8OMYmQbos5FJVs7aapBmcumbU4drvTX5iYmAl8I7Yt5TUtM/gXqhCXZKjvzjc
	 5+jbieR1dXphftfj7lw20KMqnNLTLYLpC0T7rXfQeempnodYy6769ZP3hdStcW6tsP
	 huZDdYLIcWexA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9wQe-4qZ0Enf; Sat,  5 Aug 2023 16:29:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7716C60F4B;
	Sat,  5 Aug 2023 16:29:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7716C60F4B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E746D1BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 16:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E77ED40298
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 16:28:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E77ED40298
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GtcVk1grrZXe for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Aug 2023 16:28:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A68BE403BE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 16:28:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A68BE403BE
X-IronPort-AV: E=McAfee;i="6600,9927,10793"; a="373073562"
X-IronPort-AV: E=Sophos;i="6.01,257,1684825200"; d="scan'208";a="373073562"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2023 09:28:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10793"; a="724014671"
X-IronPort-AV: E=Sophos;i="6.01,257,1684825200"; d="scan'208";a="724014671"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 05 Aug 2023 09:28:40 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qSK8u-0003kz-0L
 for intel-wired-lan@lists.osuosl.org; Sat, 05 Aug 2023 16:28:40 +0000
Date: Sun, 06 Aug 2023 00:27:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308060057.oEOX6EEw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691252922; x=1722788922;
 h=date:from:to:subject:message-id;
 bh=FStA6yUK845jD/+aZ1BqV0W2pqXY2APsRgKwT7o2UTc=;
 b=hODjQlXy0UWBHcW34/lOQbvUAV83EBjm0E2/cp+jyTelsYJ7xRPQAM/q
 nehJry6A0KuJUx0h8E0EpdG56R1He7x4jZKLTZ9GoNxQa9liiLyGl5vuj
 TCVjp9nHWoTJwyJtmH4VFofUD9TYpjL2CDFNE/eo9EMy9CmCKLKcUMgyd
 7mTEupt/yun8/1gBRK//R2bambSX35t9rBEmTMsq1aXVk1zseG5MHFEUQ
 hLAEAN13gAb+9QXeEpYUXopzHxSYzcQtgObQQKQnj2NRem3S7Vx244L2g
 5QJj/L7tnckHC+J+bDpWB+0/HwkqMR3RXfO8fr0InxiKSOOVZN61KRxFl
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hODjQlXy
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 1efaa6ca8af14114dafb99924bc922daa135f870
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
branch HEAD: 1efaa6ca8af14114dafb99924bc922daa135f870  virtchnl: fix fake 1-elem arrays for structures allocated as `nents`

elapsed time: 1082m

configs tested: 106
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230731   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r034-20230805   gcc  
arc                  randconfig-r043-20230805   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230805   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230731   clang
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230805   clang
hexagon              randconfig-r045-20230805   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230731   gcc  
i386         buildonly-randconfig-r005-20230731   gcc  
i386         buildonly-randconfig-r006-20230731   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230802   clang
i386                 randconfig-i002-20230802   clang
i386                 randconfig-i003-20230802   clang
i386                 randconfig-i004-20230802   clang
i386                 randconfig-i005-20230802   clang
i386                 randconfig-i006-20230802   clang
i386                 randconfig-i011-20230731   clang
i386                 randconfig-i012-20230731   clang
i386                 randconfig-i013-20230731   clang
i386                 randconfig-i014-20230731   clang
i386                 randconfig-i015-20230731   clang
i386                 randconfig-i016-20230731   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r016-20230731   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230801   gcc  
m68k                 randconfig-r006-20230801   gcc  
microblaze           randconfig-r036-20230805   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r001-20230801   clang
mips                 randconfig-r026-20230801   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230801   gcc  
nios2                randconfig-r022-20230801   gcc  
nios2                randconfig-r033-20230805   gcc  
openrisc             randconfig-r003-20230801   gcc  
openrisc             randconfig-r014-20230731   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r021-20230801   gcc  
parisc               randconfig-r031-20230805   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230805   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230801   gcc  
s390                 randconfig-r032-20230805   gcc  
s390                 randconfig-r044-20230805   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r023-20230801   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r015-20230731   gcc  
sparc64              randconfig-r025-20230801   gcc  
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
x86_64               randconfig-x001-20230731   clang
x86_64               randconfig-x002-20230731   clang
x86_64               randconfig-x003-20230731   clang
x86_64               randconfig-x004-20230731   clang
x86_64               randconfig-x005-20230731   clang
x86_64               randconfig-x006-20230731   clang
x86_64               randconfig-x011-20230805   gcc  
x86_64               randconfig-x012-20230805   gcc  
x86_64               randconfig-x013-20230805   gcc  
x86_64               randconfig-x014-20230805   gcc  
x86_64               randconfig-x015-20230805   gcc  
x86_64               randconfig-x016-20230805   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
