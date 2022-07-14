Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42FB5741F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 05:35:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F41CD41641;
	Thu, 14 Jul 2022 03:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F41CD41641
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657769707;
	bh=tujGX8k4OkJoQI0iDrkVoCKF1pMzaWllsUI9nwGt9+U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PodqKmWVB1fydPDz7lZMnYsCq+JiY2jnIw70dwSY3ZT5MeS7cfGSAc4f/PqshvrKi
	 djvsdIhkl3WqkN2t76fdmhZP8YolHTke7+lWbIp86bl/KHdltRdvXCl7H1bveIBPPL
	 actBT1wzqbtRJ7C94obWFG7d2RTyK7bvRrBxrF7reEqsitlgjsfHhYCdF4VvGaHXHP
	 5HbPyhiz58tcyHzXsHpRcbWEmU+Mq5Qz+0O2eZieNmgqgoroLxL4tcESZrccoLp5jv
	 hbL6FbbJF/Gpn5MCtKjWhSS55KM3ENppcdGNVNHu/osFrf+KL0GnUqCkbgcK2RveML
	 Td68qYcPTjyig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qSocEqmMyEMe; Thu, 14 Jul 2022 03:35:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8C2A4163B;
	Thu, 14 Jul 2022 03:35:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8C2A4163B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82AA71BF9A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 03:35:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5737542533
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 03:35:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5737542533
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDhsxw-LpCDQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 03:35:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12B8742532
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12B8742532
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 03:34:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="286148148"
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="286148148"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 20:34:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="570892938"
Received: from lkp-server01.sh.intel.com (HELO fd2c14d642b4) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2022 20:34:57 -0700
Received: from kbuild by fd2c14d642b4 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oBpcu-000098-BU;
 Thu, 14 Jul 2022 03:34:56 +0000
Date: Thu, 14 Jul 2022 11:34:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62cf8eb3.8C6GZ+fY7S8Be72k%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657769700; x=1689305700;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=aVxsUMmkgfixks8LWipnpRhZt9/x3miFPZp5zos2kFE=;
 b=CnZfkThNdSNI1OL5Bzfowe1XjqA31j6oYMwcqr6XP7dptNCFSAhRDJ/O
 ROcgiEDXnOGer7m1/NY+4Ji2S9Of/2A8hnntYTrza7HLDkChDdCVPaFKD
 jFNBTwpb3JfIelYEawrB3uabNFMY9xNZtqljFFjmeEi70eFF/EodyEhEG
 4HXjsLFKorhKXeUW+j+s4niaZnow141RYS8pGFQx+t7EVjK0O3LB7PQl9
 VhXeXSyVISKHy8+7YaxpJJBW/Z20Mju8fCUuJLnBmH2E1GB/6nGyAfMdu
 6R/2UjJM3mGTW7LJ4Sew+dzksHiEChInA4tkKK/ZChktatgMpo1PmK+EI
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CnZfkThN
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 5022e221c98a609e0e5b0a73852c7e3d32f1c545
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 5022e221c98a609e0e5b0a73852c7e3d32f1c545  net: change the type of ip_route_input_rcu to static

elapsed time: 2274m

configs tested: 49
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
ia64                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
riscv                randconfig-r042-20220710
arc                  randconfig-r043-20220710
s390                 randconfig-r044-20220710
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220710
hexagon              randconfig-r045-20220710

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
