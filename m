Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A135C778C6B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 12:50:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 045B160BEC;
	Fri, 11 Aug 2023 10:50:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 045B160BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691751007;
	bh=DAExGEBy3SovkKP58OwfLmDEZYVmE5nxK/8MlMCsrRc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1pe7B7xLjvyvC0DBiIZWEgYS5tqtBK3+undSDJIAykrJvJB1HJD4IuquLIA7T2g1p
	 Xys+deRHX1KkZee+0OnpfQLRF7P0OaM0iC7i6eiLW6FzGUdy+PlpLdED17QITitYgY
	 dIUFBiSxgxZhDITvuraoEYQavfzjel+IZYDipqveIoFbWWBYNxDpmB/b6ehgqfKul0
	 dnjf7BAfEuEU5NAko1Ftw1gfesbqmE7EPweiHvXVaCRnSzfW5IBZ1TPQKRITeCwmEB
	 h+k0AIJ1DTSOGUsx+Ciu3EGnA9xKHSwvMDMlLBNizoSQ74b1iQkS9hHB/+eBfyb1Kt
	 N2tGDO6z/PZmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iX3VeMjXPHlt; Fri, 11 Aug 2023 10:50:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8FC160B9B;
	Fri, 11 Aug 2023 10:50:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8FC160B9B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 370081BF289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 10:50:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B99D8308B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 10:50:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B99D8308B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bh-zCTcqUhmO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 10:49:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90F7E8308A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 10:49:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90F7E8308A
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="369120679"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="369120679"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 03:49:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="735743135"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="735743135"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 11 Aug 2023 03:45:39 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qUPeE-0007iG-34
 for intel-wired-lan@lists.osuosl.org; Fri, 11 Aug 2023 10:45:38 +0000
Date: Fri, 11 Aug 2023 18:44:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308111845.JFTBqlJe-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691750998; x=1723286998;
 h=date:from:to:subject:message-id;
 bh=5AKb0S1Dt1zOK/hbGTsqwd/OVKjJ3UuQ78ip5Vl85vY=;
 b=Qz8LmG0L6MzSamn4oV92WvVZ5aGqNB6QB1RnEGmF8KBPfJfn9k0azf1o
 jjDUonIHqJNUvf86nP1Ah2ZPLpen5PZR7aB5d5jVr/VgUgvKRQ11nyrjY
 3q0du8h55J37B5Gnekvmfluck1KvRrVTr7U75eDY2uDnj7jYNYKJJmC09
 KwlUnZrYnxXkS482aQ8zqKtUvIKUd1fgQmKCp7+i63po2u+HNnuPTe7VX
 RNaX9tXyKH9V/LXVEbRw2911D86mKMMH8TNUzhZzodFCgWVTPJFM+LM3+
 DdCxiTdWez/qHOeyKG/I1B3/NvFtOCpcp3RGbYc6aXKUZONDhQ2oIA0uQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qz8LmG0L
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 370692f9e5c9f9bc7c1047568e9b02691ba69d80
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
branch HEAD: 370692f9e5c9f9bc7c1047568e9b02691ba69d80  ice: Block switchdev mode when ADQ is active and vice versa

elapsed time: 722m

configs tested: 121
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arc                  randconfig-r043-20230811   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                            dove_defconfig   clang
arm                        mvebu_v5_defconfig   clang
arm                           omap1_defconfig   gcc  
arm                  randconfig-r004-20230811   gcc  
arm                  randconfig-r005-20230811   gcc  
arm                  randconfig-r026-20230811   clang
arm                  randconfig-r046-20230811   clang
arm                    vt8500_v6_v7_defconfig   clang
arm64                            allyesconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r031-20230811   clang
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230811   clang
hexagon              randconfig-r045-20230811   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230811   clang
i386         buildonly-randconfig-r005-20230811   clang
i386         buildonly-randconfig-r006-20230811   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230811   clang
i386                 randconfig-i002-20230811   clang
i386                 randconfig-i003-20230811   clang
i386                 randconfig-i004-20230811   clang
i386                 randconfig-i005-20230811   clang
i386                 randconfig-i006-20230811   clang
i386                 randconfig-i011-20230811   gcc  
i386                 randconfig-i012-20230811   gcc  
i386                 randconfig-i013-20230811   gcc  
i386                 randconfig-i014-20230811   gcc  
i386                 randconfig-i015-20230811   gcc  
i386                 randconfig-i016-20230811   gcc  
i386                 randconfig-r002-20230811   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230811   gcc  
m68k                 randconfig-r024-20230811   gcc  
m68k                 randconfig-r033-20230811   gcc  
m68k                 randconfig-r035-20230811   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
mips                 randconfig-r011-20230811   clang
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230811   gcc  
parisc               randconfig-r022-20230811   gcc  
parisc               randconfig-r036-20230811   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                      ppc44x_defconfig   gcc  
powerpc                 xes_mpc85xx_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230811   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230811   gcc  
s390                 randconfig-r015-20230811   gcc  
s390                 randconfig-r034-20230811   clang
s390                 randconfig-r044-20230811   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r013-20230811   gcc  
sh                   randconfig-r021-20230811   gcc  
sh                          urquell_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r032-20230811   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r006-20230811   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230811   clang
x86_64       buildonly-randconfig-r002-20230811   clang
x86_64       buildonly-randconfig-r003-20230811   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230811   gcc  
x86_64               randconfig-x002-20230811   gcc  
x86_64               randconfig-x003-20230811   gcc  
x86_64               randconfig-x004-20230811   gcc  
x86_64               randconfig-x005-20230811   gcc  
x86_64               randconfig-x006-20230811   gcc  
x86_64               randconfig-x011-20230811   clang
x86_64               randconfig-x012-20230811   clang
x86_64               randconfig-x013-20230811   clang
x86_64               randconfig-x014-20230811   clang
x86_64               randconfig-x015-20230811   clang
x86_64               randconfig-x016-20230811   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r012-20230811   gcc  
xtensa               randconfig-r016-20230811   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
