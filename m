Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A82725EF3E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 13:06:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49D6B83F66;
	Thu, 29 Sep 2022 11:06:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49D6B83F66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664449597;
	bh=JiMk86wCkB+G41tGBIh04eNrCYpOWYcevv4G7O6GmsM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VGevqlC/t3ygUqYckptY+Dqv5xuKOdV02aDB0sR4xAxOF+n4Y+l0MkBYEY/3EnySS
	 ccJGowVREJisYDK0BoIfdoXVOSM+i6xq1eiL2DSJmXIcaux+Mbjd8a3RS3Q9ep100n
	 J9EX3C3nI9/jegsmhy0p3LGQZNSkuuzIBDJAbuH7MVF2IbceZa3EuFFLb9YYwqyjBG
	 YL2iAxi6ggTEVUrEu6bJpaApjeuBGIIYaPwctLDjK3vhRYJTd3kQYkBXRzeiaM0M+h
	 1sFLkXYfkVremMh35dPJpKATeJp8adGbK+nMYB5L2tI41+SLq+1RAI6lOG2+eBqP9S
	 FV937ObZeuCyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S2mtS8NhXfd7; Thu, 29 Sep 2022 11:06:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C4B583F6F;
	Thu, 29 Sep 2022 11:06:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C4B583F6F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BB471BF584
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 11:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6613040222
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 11:06:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6613040222
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6tPzKdSYt_K for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 11:06:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EBDE400F2
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4EBDE400F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 11:06:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="289025908"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="289025908"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="684796309"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="684796309"
Received: from lkp-server01.sh.intel.com (HELO 6126f2790925) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 29 Sep 2022 04:06:28 -0700
Received: from kbuild by 6126f2790925 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1odrN5-00012k-2O;
 Thu, 29 Sep 2022 11:06:27 +0000
Date: Thu, 29 Sep 2022 19:05:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63357bfa.HZT49B02FsoK0izv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664449590; x=1695985590;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GNnnlI2Y7Otqi/VE8NgCDsAWoZ/iy7x6ZbTDlXmZbI0=;
 b=MuQeYGuLT3A8R+3Gqq1P5vb/RaWR2lH2wB+HfQZWBI84021E2jMH8zgK
 4MKS8k/QGDkqH2DTN6ktHxotxhjSsnE9lCvQE5yD566oBLULRz0OcWVSS
 zTsnyDzkSkCVxwS/qWEixlUhQuZkq+EfwOMMS+PvpZOnUcqBVyr32QyMq
 yGAdMoTxbnJrnGt0TFwl/wrvn441BLhaj3ixQuziCLwe2C5sp86+jODla
 8/J317BtmQItAJ1L21lfYLnTq+rLsmCDMq9MDh9cASMJBrcnm0gr/2p8h
 MtcZv4sk8QPaIfbhhdgnj+Nl1ogALcqqkCrpEZ1VzZ+TFUIgy9nYOLcrV
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MuQeYGuL
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f26998146eaa43ea5703a96538af92ffbbf87cd5
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
branch HEAD: f26998146eaa43ea5703a96538af92ffbbf87cd5  ice: Add crosstimestamping on E823 devices

elapsed time: 967m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arc                                 defconfig
x86_64                           rhel-8.3-kvm
alpha                               defconfig
s390                             allmodconfig
x86_64                        randconfig-a002
s390                                defconfig
arc                  randconfig-r043-20220925
x86_64                        randconfig-a004
x86_64                        randconfig-a013
x86_64                        randconfig-a011
riscv                randconfig-r042-20220925
x86_64                        randconfig-a006
x86_64                        randconfig-a015
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
s390                             allyesconfig
x86_64                              defconfig
arm                                 defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                 randconfig-a001-20220926
m68k                             allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20220926
powerpc                          allmodconfig
alpha                            allyesconfig
i386                 randconfig-a002-20220926
mips                             allyesconfig
arc                              allyesconfig
i386                 randconfig-a003-20220926
arm64                            allyesconfig
m68k                             allyesconfig
sh                               allmodconfig
arm                              allyesconfig
i386                 randconfig-a006-20220926
i386                 randconfig-a005-20220926
i386                                defconfig
i386                             allyesconfig
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r045-20220925
x86_64                        randconfig-a005
hexagon              randconfig-r041-20220926
x86_64                        randconfig-a012
hexagon              randconfig-r045-20220926
x86_64                        randconfig-a014
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
x86_64                        randconfig-a016
s390                 randconfig-r044-20220926
i386                 randconfig-a011-20220926
i386                 randconfig-a014-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a016-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
