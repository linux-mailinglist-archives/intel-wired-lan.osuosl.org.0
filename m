Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBA6643FE0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 10:31:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2808A813CD;
	Tue,  6 Dec 2022 09:31:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2808A813CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670319067;
	bh=okC69IpGgb5y2T8fZlBnPpzveaRX2Cn99cMfde/7+UE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cX4OEtqfT2ErlZaBLpoCjS0x8J6/GcHDNSjuC8uwAgbqkHRbAVey/fEdjkhNeK1/k
	 M5lURDVwsPhfSMK8HtHfu8HfymPJylmAcmt4t3LK168FYUdm4S6sJLYShqKWpI2714
	 MDlHa9cu+OvSx0UOUSIQevjwiQAY2JSifErr9Dm8i4IKyHS68lcm7DEV1ychp+zex8
	 POosT7YjeZHyyDOaIgV7NVpCiJk6ce2GyZqP7JuzeK0l7LRPIzqQ2pN/f4dJtlxf5s
	 tIbghmjV187KrHJV5UG3WOuvtZ01HbX6YkWhyprctHrfPRVVruzVpvF92osA0nS74g
	 Qh0UpqRMb3GuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7A_4eQGRDc2o; Tue,  6 Dec 2022 09:31:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C2718133A;
	Tue,  6 Dec 2022 09:31:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C2718133A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2C951BF289
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 09:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CCD4240150
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 09:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCD4240150
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gYQ8pSFA8Izm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 09:30:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C468540477
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C468540477
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 09:30:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="300002541"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="300002541"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 01:30:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714735025"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="714735025"
Received: from lkp-server01.sh.intel.com (HELO b3c45e08cbc1) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 06 Dec 2022 01:30:57 -0800
Received: from kbuild by b3c45e08cbc1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p2UHx-0000oc-0u;
 Tue, 06 Dec 2022 09:30:57 +0000
Date: Tue, 06 Dec 2022 17:30:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <638f0bb1.UqW8Wrp5qhe9DcO+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670319059; x=1701855059;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=llrtI3kW3l9SVstDb/lMcNrL8WInctVgZL8r4c9IgGQ=;
 b=TWkBO3xGct8Bbhhj7M8WEH0ngX/hqxXBaL4FrXyMoKIoJfeKFXXh00L1
 duQJ6ODKq9r3zQnF/5lj889BiIcxrEVgczzXbjkeVMbjxBWlyVn/QpFQa
 9nuSWnkgwclDnKU+zo8nlvnAfl6U7ljV9dOrtBsNfhvLOWJWfsNEjf7Zv
 ixKPw8s5ldnU/5+eZydPX7I55Gh4fh7GABTzvoGt4DpCi+DebftvKOqRf
 qEw6e3RWCBIloQAs/BpbbgYGQu9VFjq/xv8sRF1QCmmngD3iZAALiLxi9
 ouMZIeuUspOSsLPuOYPlgEU8zLAVj8zZEcggILmRKrt4LGd0xnV1c66Yj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TWkBO3xG
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 d64aaf3f7869f915fd120763d75f11d6b116424d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: d64aaf3f7869f915fd120763d75f11d6b116424d  i40e: Disallow ip4 and ip6 l4_4_bytes

elapsed time: 729m

configs tested: 64
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
x86_64                          rhel-8.3-func
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
i386                                defconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
m68k                             allyesconfig
i386                 randconfig-a014-20221205
x86_64                           rhel-8.3-kvm
i386                 randconfig-a013-20221205
x86_64                         rhel-8.3-kunit
i386                 randconfig-a012-20221205
i386                 randconfig-a015-20221205
i386                 randconfig-a011-20221205
x86_64                           allyesconfig
i386                             allyesconfig
x86_64               randconfig-a011-20221205
i386                 randconfig-a016-20221205
x86_64               randconfig-a012-20221205
x86_64               randconfig-a014-20221205
x86_64               randconfig-a013-20221205
x86_64               randconfig-a015-20221205
arc                  randconfig-r043-20221205
x86_64               randconfig-a016-20221205
s390                 randconfig-r044-20221205
riscv                randconfig-r042-20221205
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
x86_64                            allnoconfig

clang tested configs:
x86_64               randconfig-a003-20221205
x86_64               randconfig-a004-20221205
x86_64               randconfig-a001-20221205
x86_64               randconfig-a002-20221205
x86_64               randconfig-a005-20221205
arm                  randconfig-r046-20221205
x86_64               randconfig-a006-20221205
hexagon              randconfig-r041-20221205
hexagon              randconfig-r045-20221205
i386                 randconfig-a001-20221205
i386                 randconfig-a002-20221205
i386                 randconfig-a005-20221205
i386                 randconfig-a004-20221205
i386                 randconfig-a003-20221205
i386                 randconfig-a006-20221205
hexagon              randconfig-r041-20221206
riscv                randconfig-r042-20221206
hexagon              randconfig-r045-20221206
s390                 randconfig-r044-20221206

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
