Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D659D72F444
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 07:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 019DE416B4;
	Wed, 14 Jun 2023 05:47:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 019DE416B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686721620;
	bh=nmwtWVM1UrTvhGVivvahYg5E99eIDRmv5xG9r2c3BJU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Jv4skPtXERty4ehq9URi/TN+5NDvxN2uWH5ckQixySUmxUoDkX8SxA+SAhJW6XPk0
	 7vPOiK5xMfkTzbeUsEYNwITA2RcdYdCGXwX28eHUUYWGkT4W5cp3HreHIWaFjRvWiP
	 O6pIz0kBpygoXoWUzFxGTlk3TPRKrMjX3tuWyHMZNrgiTS/q0niUDVUFpnkU09nVxI
	 lZ2kDdK4cGZ8idLZOVdx3yw0joipepaihvdnwcwgDdrCeqTZMjgDRk8mBpdIJhlE98
	 bZ3C4hIHA6Z2sB/6LpoDWGMcwuzeVzB2ncNDESsV46J8hwJODuj8iphm78LyICvy5X
	 QAfctuVd3LOYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XQTbhyEOcY-B; Wed, 14 Jun 2023 05:46:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D6E04099C;
	Wed, 14 Jun 2023 05:46:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D6E04099C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 625761BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 05:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3DE2D81F6D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 05:46:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DE2D81F6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xjaTTBFDAITl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 05:46:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4DAB81F6C
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4DAB81F6C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 05:46:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="343222707"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="343222707"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 22:46:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="781956995"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="781956995"
Received: from lkp-server02.sh.intel.com (HELO d59cacf64e9e) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 13 Jun 2023 22:46:30 -0700
Received: from kbuild by d59cacf64e9e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q9JKv-0000El-1j
 for intel-wired-lan@lists.osuosl.org; Wed, 14 Jun 2023 05:46:29 +0000
Date: Wed, 14 Jun 2023 13:45:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306141328.3mmJjt4S-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686721611; x=1718257611;
 h=date:from:to:subject:message-id;
 bh=hkCmX5k0Ji2z/nWB4lkwfaBN+mEkSc3gKCZ8PUuzw0s=;
 b=Yc7Xl0KVu33yAu15VNCgsCLapzoTQXOM1lzZnA2wmdC2d1sIDk525Ba/
 aHbUasJ07hXzA9gzP+xIVvGbHkmdfA5Ct2TYgQ23UVRf1JReTW+H+Pv4z
 aS7n+7QIBKPOdNU9eZcpX/lyxacs+3UsqQw4AN7ncJ1NWdarnCj8cYE/s
 ljPyXKXh9Hs483pzGiM6cF7mBUJsnd/myQ6EyoUB+alKpsyTdw5ApxuyY
 T/TDVuX7lIPlQ/SYMmTD2scNECCcp5oC//a+9yxXermRbWrAkdnskMVME
 bdIm7/xm/+1UfCVPXyTl/j+NdtdrulHz4zywlFgGTWqkDwS1LWEEv2BTj
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yc7Xl0KV
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 1f8e3c55e44127da61a8c7ef4ee447e63ba7d88a
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
branch HEAD: 1f8e3c55e44127da61a8c7ef4ee447e63ba7d88a  idpf: configure SRIOV and add other ndo_ops

elapsed time: 722m

configs tested: 100
configs skipped: 7

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
arm                  randconfig-r012-20230612   clang
arm                  randconfig-r046-20230612   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r025-20230613   clang
arm64                randconfig-r036-20230613   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r016-20230612   clang
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
i386                 randconfig-i011-20230613   clang
i386                 randconfig-i012-20230613   clang
i386                 randconfig-i013-20230613   clang
i386                 randconfig-i014-20230613   clang
i386                 randconfig-i015-20230613   clang
i386                 randconfig-i016-20230613   clang
i386                 randconfig-r024-20230613   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230612   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230612   gcc  
loongarch            randconfig-r005-20230612   gcc  
loongarch            randconfig-r022-20230613   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k         buildonly-randconfig-r004-20230612   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r023-20230613   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230612   gcc  
openrisc             randconfig-r035-20230613   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r003-20230612   gcc  
powerpc      buildonly-randconfig-r005-20230612   gcc  
powerpc              randconfig-r015-20230612   gcc  
powerpc              randconfig-r034-20230613   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230612   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230612   clang
s390                 randconfig-r013-20230612   gcc  
s390                 randconfig-r044-20230612   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r033-20230613   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r032-20230613   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r002-20230612   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230612   clang
x86_64               randconfig-a002-20230612   clang
x86_64               randconfig-a003-20230612   clang
x86_64               randconfig-a004-20230612   clang
x86_64               randconfig-a005-20230612   clang
x86_64               randconfig-a006-20230612   clang
x86_64               randconfig-a011-20230612   gcc  
x86_64               randconfig-a012-20230612   gcc  
x86_64               randconfig-a013-20230612   gcc  
x86_64               randconfig-a014-20230612   gcc  
x86_64               randconfig-a015-20230612   gcc  
x86_64               randconfig-a016-20230612   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
