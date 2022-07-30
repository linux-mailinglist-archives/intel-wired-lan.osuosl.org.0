Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7974A5858E8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jul 2022 08:48:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52AC360F60;
	Sat, 30 Jul 2022 06:48:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52AC360F60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659163686;
	bh=x3Ryj9AarwCWKYpcXhy0/3Pn4Pan1CDeqtDG4pa1Ay8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Uxks2mLnc3HhJJiI49Tch28/GsyqrUNxZTLDrdWALdcCTmae8nBJ0XC/2+bEhWea3
	 xyQYHck0Mu0s5Iy20YWRLBrIKLcfXPzrX8rDtMezyAyJfN2wzO2ZncnJw00w8ogii+
	 bFQQVJrFB5e0zuBd7dj3t4CqWYqvhzXHHwYvZ3EocQARhlD6zHe+8bDS5lipogCRVh
	 zKBTu/aqU5qHJThsrOEevdPhnGXw/Fa9tj77rw/8Ttq/8dM47XlhPdYc8O3vdtWX6F
	 hxm0lEHA7OLcI7jP5kn6KWBC8tM1g+vdeaBom7E34TI8+3pZBUZJy5nDJhJXndmQF4
	 fs0M80/ZmBH7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H19VViEUbQUl; Sat, 30 Jul 2022 06:48:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4348560F47;
	Sat, 30 Jul 2022 06:48:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4348560F47
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C71AD1BF386
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jul 2022 06:47:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A00EF83E70
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jul 2022 06:47:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A00EF83E70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rMiylcB6DF2b for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jul 2022 06:47:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AEBD83E6C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6AEBD83E6C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jul 2022 06:47:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10423"; a="352900213"
X-IronPort-AV: E=Sophos;i="5.93,203,1654585200"; d="scan'208";a="352900213"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 23:47:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,203,1654585200"; d="scan'208";a="847330432"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2022 23:47:54 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oHgGP-000CYN-21;
 Sat, 30 Jul 2022 06:47:53 +0000
Date: Sat, 30 Jul 2022 14:47:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e4d3fe.dOjZKWjcQ+VI0Hqt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659163678; x=1690699678;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0L86yGVKwl6ZzQ4iWbV2uEemDnTOr1zzyQFLvNfpn5I=;
 b=BJy3of5e5UyNC/V9coXx8cQYmYvJVB9GlCy+qYPeguTwEY4Bjx6bUxPb
 XbSWZTic3K2dzKb7xZ1Hjkta7gh3v3n0+0aGR3g8h/BxjBP9FVSkC1UBM
 mrd104/IUDp38JscE2ft826OEsTQOfpyBTSJLe6c/d71Wy31/cfKUI3eN
 dyj9ne3+dE7QwSeDKgCMG+dqj+eOXDr3WcYuVBWwvjoUN7RV/9aNxn00y
 K61OI5BEoATrCaXossYFputnOTlKzjYyyr7so5KNkPqAxif+74YduAFmS
 aTPp3QjVdldi7OmRnICv9NSQpi7dAEd1FhKYY8YeKK6RXw57L3CyB4/tb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BJy3of5e
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d9f1e44c6661d48b49e667337ece489de96e3c61
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: d9f1e44c6661d48b49e667337ece489de96e3c61  ice: Add support for ip TTL & ToS offload

elapsed time: 716m

configs tested: 57
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                  randconfig-r043-20220729
i386                                defconfig
i386                             allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
arc                              allyesconfig
alpha                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                          randconfig-a001
arm                                 defconfig
i386                          randconfig-a003
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a005
x86_64                        randconfig-a006
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
alpha                             allnoconfig
arc                               allnoconfig
csky                              allnoconfig
riscv                             allnoconfig

clang tested configs:
hexagon              randconfig-r041-20220729
hexagon              randconfig-r045-20220729
s390                 randconfig-r044-20220729
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
i386                          randconfig-a002
i386                          randconfig-a006
x86_64                        randconfig-a005
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a003
riscv                randconfig-r042-20220729

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
