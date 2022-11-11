Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056266254DB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Nov 2022 09:04:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6777F4056E;
	Fri, 11 Nov 2022 08:04:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6777F4056E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668153859;
	bh=2MQO48GmfLSTPnAHHHAhy9Jdmnw2Vlhv+F4z8mHM0bY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TN+X9z7Jz9SqBY2C0uTGn747NFAKmM/0lEZmnYKldSlYzOk7GwsZStD9zF/JvOwz0
	 R4yUvrVanlQ065fWCC6w8fs5vUyZfXdkbQwN0ozUMI9O8VNA6Qr3nmNMwkpjzqpxAV
	 COQZPnFUu4qXurPXomAnVGB1f3Ca9WLZFZUF8ZG37Ljn3zcIi/v8YSOMIwzFGifQBS
	 n4dWzyAhsJ0km545L+mU9rYa1/P4Re6yeWQy9ARLJlrh8H//ngkabgye9q5aA9gfBS
	 5R3vYrPAzCEySqcI8qaAhopa16ZT6LlTjg4IvYs0gW0crxPv5d5MvQg+urR51OwSvy
	 f+4fPKj7LR1Dg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yRhhRKEw4oV7; Fri, 11 Nov 2022 08:04:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 644E3404E0;
	Fri, 11 Nov 2022 08:04:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 644E3404E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16D571BF85D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 08:04:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5457409A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 08:04:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5457409A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UqmpeTIGuSfT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Nov 2022 08:04:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C71944161E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C71944161E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 08:04:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="291272507"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="291272507"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 00:04:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="780100033"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="780100033"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 11 Nov 2022 00:03:59 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1otP14-0003kd-3C;
 Fri, 11 Nov 2022 08:03:58 +0000
Date: Fri, 11 Nov 2022 16:03:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636e01bb.415Dvb+CgplghCUf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668153849; x=1699689849;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=+xYLXrn/oUy4lPI2/qhGSHNB/O5XTo3qPMbY8FkFUx4=;
 b=cGZI+BltZSCwhPYkym/DGBgFbvEMe0W4G8prOKkVpznVM+srpggrTrU6
 W8YNitJeu9flNbkUa9NZqd7tyc6DQHoi82o/saDGMsn3QFSDf0GY8El2Y
 Ti//7vux5+k9C09HMab7zQFn02zXyl7lqlt/RNxhKSWmyIB69Q9FzKU/c
 1x5vznPRJt7dUVxNe9hfTmAMlwpy93E0gpujKhPSnJzQriZetOaTSCSsN
 181zc+2NghZZAWbtNPI+LO2AQzq7v3LkZg7htCQz0ybdi421IHSER+gmu
 ta223Tfv8j8ZujG6vW8ihk56ptp93pd6rzcK4FO4FRcEXTfyp7X8YM9SH
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cGZI+Blt
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 23569b5652ee8e8e55a12f7835f59af6f3cefc30
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 23569b5652ee8e8e55a12f7835f59af6f3cefc30  net: macvlan: fix memory leaks of macvlan_common_newlink

elapsed time: 999m

configs tested: 90
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                            allnoconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
powerpc                    amigaone_defconfig
arc                        nsimosci_defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
s390                             allyesconfig
powerpc                       ppc64_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
alpha                               defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
sh                           se7724_defconfig
microblaze                          defconfig
parisc                           alldefconfig
arm                          pxa910_defconfig
sh                           se7722_defconfig
arm                         cm_x300_defconfig
i386                                defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                             allyesconfig
sh                   secureedge5410_defconfig
parisc                generic-64bit_defconfig
powerpc                 mpc837x_rdb_defconfig
xtensa                    xip_kc705_defconfig
xtensa                          iss_defconfig
powerpc                 mpc834x_mds_defconfig
arc                              allyesconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
ia64                        generic_defconfig
openrisc                         alldefconfig
i386                          randconfig-c001
xtensa                           alldefconfig
parisc                generic-32bit_defconfig
sh                               allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
m68k                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
powerpc                     taishan_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                         vf610m4_defconfig
s390                 randconfig-r044-20221111
arm                           viper_defconfig
powerpc              randconfig-c003-20221110
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc              randconfig-c003-20221111

clang tested configs:
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20221110
hexagon              randconfig-r045-20221110
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
s390                 randconfig-r044-20221110
riscv                randconfig-r042-20221110
x86_64                        randconfig-k001
hexagon              randconfig-r041-20221111
hexagon              randconfig-r045-20221111
arm                       aspeed_g4_defconfig
mips                      pic32mzda_defconfig
arm                         lpc32xx_defconfig
powerpc                      obs600_defconfig
mips                malta_qemu_32r6_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
