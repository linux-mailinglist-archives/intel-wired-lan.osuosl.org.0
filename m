Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFFB5919D8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Aug 2022 12:30:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A35C4086D;
	Sat, 13 Aug 2022 10:30:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A35C4086D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660386625;
	bh=lnxftSAjcaewbfZmkHtfxEzn6vJbXeZCxp5sWLddUco=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=58hjxuuaYl8oiSlp4sVp3eIIvVQP2k7LvddIXWqJxXt0rvDLHhP7kxdJbv74rKXP4
	 cfHGyLw/8LLBZ3U02Ew8NRY1jLmPLPjtKowe0M87oBHiyB7neDASP0QiYiy5K4PHhz
	 UUN0XXMOaI+OlOIUV/6RpN0K2L+kQiCBYQXYTgsoxZAa6UR2Oii5u1vPoF5XuNgbqQ
	 Q1SEuxUBF7pEZAvAoyn+CdKFi5uUAxlkdu757FfQUPLha1kKLYL6kw6BK00voC2x3Q
	 G7vhgMq1c3jlx/swfhenoQOR+UbvH8+beefkd06nKyj2F3uKfIZgT3sOM51+JTPPuG
	 B0WCglEAHmoYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 18FUSus16iPI; Sat, 13 Aug 2022 10:30:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D27B5410D3;
	Sat, 13 Aug 2022 10:30:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D27B5410D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 52B5F1BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 10:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38837410D3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 10:30:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38837410D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id osRcJgv4DLNw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Aug 2022 10:30:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 140CE4086D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 140CE4086D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 10:30:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="289313330"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="289313330"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2022 03:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="634940161"
Received: from lkp-server02.sh.intel.com (HELO 8745164cafc7) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 13 Aug 2022 03:30:15 -0700
Received: from kbuild by 8745164cafc7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oMoPG-0001Zp-37;
 Sat, 13 Aug 2022 10:30:14 +0000
Date: Sat, 13 Aug 2022 18:29:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62f77d23./cjWpM+lMRi/vfey%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660386618; x=1691922618;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=U0oac8mkXdqfllweAU6Z15c3I0hSRncEVd3BMXa5agk=;
 b=TZZ25lekuQeUzuuVMu0OOoZkna+RKZb17jW6M/s185Rr2ZFyIk/VBDb8
 Stjqhya6c+lG4ZWjaPzQxPgxYogeiNQe3iIj63fvuUiZSqLse1IC9Jlf5
 mTbd4WAK1EnrJrJk8FR9gsKyd2wG/nhx+ZQKr2n1MBd6fafp4mM38U9GU
 rFRfoCouSGfry6EWnqhdCD9xUaaLdC+K0NIiA+w4YIqIoOirCd5oJRArw
 ShEklidMjhfdAW+WlZx1EqRl+tjJx0sM6+MVuPxJES4EMgjoUGZppCPby
 DHZDn3Pktox14lTffKMN8yR//Dp6nfd3Zs30DhRVhCTuDE4bZnZqzJtGQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TZZ25lek
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4fd9707da9a3c31e0bfa31b91e90f18c595e5861
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 4fd9707da9a3c31e0bfa31b91e90f18c595e5861  ice: Ignore error message when setting same promiscuous mode

elapsed time: 717m

configs tested: 73
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a002
x86_64                        randconfig-a011
i386                             allyesconfig
m68k                             allmodconfig
i386                          randconfig-a001
arc                              allyesconfig
i386                          randconfig-a003
alpha                            allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a015
i386                          randconfig-a005
arm                                 defconfig
sh                               allmodconfig
m68k                             allyesconfig
mips                             allyesconfig
arc                  randconfig-r043-20220812
powerpc                           allnoconfig
i386                          randconfig-a014
x86_64                          rhel-8.3-func
x86_64                        randconfig-a004
x86_64                         rhel-8.3-kunit
i386                          randconfig-a012
x86_64                           rhel-8.3-kvm
i386                          randconfig-a016
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
s390                 randconfig-r044-20220812
riscv                randconfig-r042-20220812
arm64                            allyesconfig
arm                              allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
ia64                             allmodconfig
arc                           tb10x_defconfig
sparc                       sparc32_defconfig
xtensa                  cadence_csp_defconfig
sh                        edosk7705_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sh                  sh7785lcr_32bit_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                 kfr2r09-romimage_defconfig
sh                   secureedge5410_defconfig
m68k                       m5475evb_defconfig
csky                             alldefconfig
arc                         haps_hs_defconfig
mips                           xway_defconfig
openrisc                  or1klitex_defconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a012
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a013
x86_64                        randconfig-a003
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a005
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220812
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220812
powerpc                     mpc512x_defconfig
mips                  cavium_octeon_defconfig
powerpc               mpc834x_itxgp_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
