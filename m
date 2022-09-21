Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E951C5BFE61
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 14:51:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9320C415DB;
	Wed, 21 Sep 2022 12:51:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9320C415DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663764692;
	bh=VgjM+zJKKSteaK56k9PRIsyFlq17UwFNFfi4B0xd2VU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HgJMIww/LguRHJjPjNGgLMO/y0E2czy0OmSkFFSrtqxbLuS8bekHlIYOrBVHdwhYD
	 AeO3lTlfcqCoMPlwDFdPWCwC9jbIJq/2DVGZGAFDUSTzdAT6FXg3U6P2ft9xyq2aa+
	 5666B+5a4eogz5Onnmq8iBU6Ux84ksg8cVmiwiKORBAjeMyYr0syUR/hq1mXNZyLbA
	 9453G+0qv76Wqy2w8o4KqS1AfXVPnNx7hVrmZeorqVvI+O7+v35GPCoByrJPPA960v
	 /2xIu2OVhKek26tEloeQBm66hICEguRSVemWTaJ8RfvSkF0SGwrHURW4fA9Lxm70Dv
	 dwZDeEpwAS+fQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q6GI2K8ZVdc6; Wed, 21 Sep 2022 12:51:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAF984157D;
	Wed, 21 Sep 2022 12:51:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAF984157D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 198771BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 12:51:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4CCD4049E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 12:51:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4CCD4049E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OiWjfaHlzF0D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Sep 2022 12:51:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBB2840017
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BBB2840017
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 12:51:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="287064521"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="287064521"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 05:51:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="708434262"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Sep 2022 05:51:22 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oazCD-0003bp-19;
 Wed, 21 Sep 2022 12:51:21 +0000
Date: Wed, 21 Sep 2022 20:50:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632b08b0.joseIFRu3r9LidJX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663764683; x=1695300683;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=l06MJzIVYsIi/SMAn8I6+gR4JPruAs5YExUyW4efQSg=;
 b=c7Pq2SYsL2iQ4u4EU5IBNmLGxzq6pUhTjbKSr+k5kTF9ItP6cks18s0k
 RkTtNwqNj9DAZ0P8LzRmCOkcLGUGUUdrIoxhVe5YFsoCVlI4XtVzEJg8P
 PqjqEEf0Haheh0dGxkf7Vbjsi9kDfzQdKIAhbTaoI55Up5T52ROnevdNl
 pwHqOgl6UZpJSU2j8lo2nBbpnAi9a3JiXE6nayrkFspgW5xlV75eV0gx3
 /IpW512PLvl3BsCO3dF35/W6jDYZo8dQ8UQnvURfTc8KIjlTlTrgAVLhh
 wi4JCMUAjzmD9Nm2iBqMPFGEbWfaW0EspwoaXozoeDx84sGM1e7G1BhWq
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c7Pq2SYs
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 54b9a2bb6c013a34cfdb5a6241367b003773662f
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
branch HEAD: 54b9a2bb6c013a34cfdb5a6241367b003773662f  octeontx2-pf: Fix unused variable build error

elapsed time: 723m

configs tested: 50
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20220921
riscv                randconfig-r042-20220921
s390                 randconfig-r044-20220921
x86_64                        randconfig-a006
um                           x86_64_defconfig
um                             i386_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                             allyesconfig
i386                                defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
ia64                             allmodconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a016
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
i386                          randconfig-a012
i386                          randconfig-a014

clang tested configs:
hexagon              randconfig-r041-20220921
hexagon              randconfig-r045-20220921
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
