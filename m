Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49C85BE3C9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Sep 2022 12:53:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CAED840BCA;
	Tue, 20 Sep 2022 10:53:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAED840BCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663671220;
	bh=VXu8PcQKkbKgRheCM+7fWXuEFwEOuo5IWwAeCxBbhMM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5j5y70njD+EM5ppFCIPT5GDpWaVzesEHS21kHJZZw4yXWCwfu+d2+EhGlNRB9Zg6k
	 5YlRlGcb/qfJSICTXLBAaz/kqB+EVrs3NeZXaeoO6+Ans3t1Fvdp+jUbllYnxQYCul
	 rZW/5hOwWSMODbMbqu5TI05E740tPCX/CeQWPpdFni1Z5Nzas8bcapFgSglnp0M5AO
	 qR2VJy0rGPSvtp6DNoO7gC8lTQ1kDYpJV4D8r9ijrzCXOiDPC0Qv+jdCwpkSvPQxJN
	 VKRtSZ3UAlrS/niQt1LE7fQdaWKYRNwHPMFw+x7x77NWhesFb0VpumvAoZt7fRlfcZ
	 kX4PaKfwghZhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z_2jFUhsVkML; Tue, 20 Sep 2022 10:53:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72C3B40BE9;
	Tue, 20 Sep 2022 10:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72C3B40BE9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D0ED1BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 10:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 76DBA415D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 10:53:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76DBA415D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKpfyXS-A4OP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Sep 2022 10:53:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A403541578
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A403541578
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 10:53:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="297254981"
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="297254981"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 03:53:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="947624171"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 20 Sep 2022 03:53:29 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oaasa-0002gn-1t;
 Tue, 20 Sep 2022 10:53:28 +0000
Date: Tue, 20 Sep 2022 18:53:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63299b96.GUtZFV135sND1lG7%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663671210; x=1695207210;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=DduqmuQQhLvfOKSYTdUea3rt4hA+MqZ/nAQPTaHoCrY=;
 b=VVBCqJSth3Q99ij+mz83dymqaMkh8o/kOPqDSbET4lcdJWbgh8no8vX8
 RuFPkw4OmjhMQl6O9/i/fTcmyW1vFQfxfGV5jBeIkxka6WJCRW9cZazMV
 dYfe4DO7Smpv2WWVUt5DuBKeg7Gt/j0Q7LRsJAnCpScwRAzVw2qVLaZZS
 dTGIln0PmnRg9YM17GAHAYXDB8aZQYQagESsoyy8QR5PnXVu2rtwUzIwv
 onfIElOCgxLvTJ/A4e9MOE4B0pzEB1xY+0q3hmlLUJmR3hnxDCBywOk7w
 kGnqj9tv3bywTmjgteXLbw6QdxFC737m8/7UvewOdS8WNEvSDJ6OUiXH1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VVBCqJSt
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 563f5e71a77622abd807c0cead60f40c4d85887d
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
branch HEAD: 563f5e71a77622abd807c0cead60f40c4d85887d  ice: use GNSS subsystem instead of TTY

elapsed time: 858m

configs tested: 79
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
arc                              allyesconfig
riscv                randconfig-r042-20220919
alpha                            allyesconfig
arc                  randconfig-r043-20220919
s390                             allyesconfig
s390                 randconfig-r044-20220919
x86_64                              defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                           allyesconfig
mips                             allyesconfig
m68k                             allyesconfig
sh                               allmodconfig
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a013-20220919
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
i386                 randconfig-a012-20220919
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a012-20220919
i386                 randconfig-a014-20220919
x86_64                           rhel-8.3-syz
i386                                defconfig
x86_64               randconfig-a016-20220919
i386                 randconfig-a011-20220919
x86_64               randconfig-a011-20220919
i386                 randconfig-a016-20220919
x86_64               randconfig-a014-20220919
i386                 randconfig-a015-20220919
x86_64               randconfig-a015-20220919
x86_64               randconfig-a013-20220919
arm                                 defconfig
ia64                             allmodconfig
m68k                             allmodconfig
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                             alldefconfig
arm                         s3c6400_defconfig
arm                         lpc18xx_defconfig
sh                          r7785rp_defconfig
powerpc                      chrp32_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sh                             shx3_defconfig
powerpc                       holly_defconfig
x86_64               randconfig-k001-20220919
sh                          sdk7786_defconfig
powerpc                   motionpro_defconfig
i386                 randconfig-c001-20220919
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220919
hexagon              randconfig-r045-20220919
i386                 randconfig-a001-20220919
i386                 randconfig-a002-20220919
i386                 randconfig-a003-20220919
i386                 randconfig-a004-20220919
i386                 randconfig-a005-20220919
i386                 randconfig-a006-20220919
x86_64               randconfig-a003-20220919
x86_64               randconfig-a001-20220919
x86_64               randconfig-a005-20220919
x86_64               randconfig-a002-20220919
x86_64               randconfig-a004-20220919
x86_64               randconfig-a006-20220919
powerpc                          g5_defconfig
mips                        qi_lb60_defconfig
arm                         palmz72_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
