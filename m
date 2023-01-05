Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4232965E51E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 06:33:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1395C820B8;
	Thu,  5 Jan 2023 05:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1395C820B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672896788;
	bh=c6bKC1mzZ4oJtu5wwvbzUZbF7Ti0eeYyXjAxA/ckWc8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=66VlhE8xVKUz6xevQxJ9SKUOj9Kpr19nnJlc7pFoDX4x7np4MlHHOmV1LW4AB+RQl
	 CfxngmzUfsHY/eGuFkzOuDtHjBwXSfvyqJWT49Wr3Ha6gzT++rJD3Nv8YY2XVv76aL
	 C9UaYhi++r4n5IkaGfODJF4ovBPbNZqMew6nwLoD5TsjyqIOMJsaMRx5g9bFn+TQbz
	 T4pFqk23Ei4m+kBis38nOUYvdSgLh2G6gsuIR/aU5lcxcvu8udkHvC/6adDrnu3vHt
	 5zyQBCC5y3daq02+qmtSV1p4qVt8nkPMEvQcjwMOjpyC6LRe5EXPz4A78RrTMYSt3K
	 n+zOWGFDSHyqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gd1w1W6CXpa2; Thu,  5 Jan 2023 05:33:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD51A820B3;
	Thu,  5 Jan 2023 05:33:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD51A820B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B38E1BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:33:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 360DC41959
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 360DC41959
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aG4qa8dBzuwm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 05:33:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDEE541954
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDEE541954
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:33:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="349340260"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="349340260"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 21:32:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="685975948"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="685975948"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 04 Jan 2023 21:32:57 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pDIs4-00019T-2d;
 Thu, 05 Jan 2023 05:32:56 +0000
Date: Thu, 05 Jan 2023 13:32:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63b66101.WCSL3kj3uhAuamy5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672896780; x=1704432780;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=NtEcU0pGPLTSNApkUeW26RfHX0SQg6jWrNCZ5HERxjg=;
 b=hO+ONKe6D2E5qr2V7Tvl4LamioxOUx5V16Og0JiY0JXVh3kGYnuaACxm
 CB/CqUTvYhcQ7hY2WciQ2H8f50LyKCUvs5l+tMrHoMZXnvWJZMaiMKjwI
 wqoeVPAtQg5ZEZtp97+EH/F8kXP+rRxTPh9QZ4xXFhkfVQC58SxoX+2Yp
 tTaK6/7HGbW4F15H2TgtwBYWsOXzCt+7KgCkeEhRMg7CxW+FuCgWMUPB1
 sau2al7T3Hj9i6O+z9T2zSgBJz8rxbIjM/YQK6IpEbaTnGmluCuo7gZ2q
 uUMYRD8anNGao1jR2Noy+I6qR/mmtVF0MI+BT0u3JSPtxg5BGBhe448FR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hO+ONKe6
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ed145d0a3bdc74466c65ea28662ed856890ae4f2
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
branch HEAD: ed145d0a3bdc74466c65ea28662ed856890ae4f2  ice: Remove excess space

elapsed time: 721m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
powerpc                           allnoconfig
x86_64                              defconfig
i386                                defconfig
x86_64                            allnoconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                 randconfig-a004-20230102
x86_64                           rhel-8.3-bpf
i386                 randconfig-a003-20230102
m68k                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64               randconfig-a003-20230102
x86_64               randconfig-a005-20230102
x86_64                         rhel-8.3-kunit
i386                 randconfig-a002-20230102
x86_64                           rhel-8.3-kvm
sh                               allmodconfig
x86_64               randconfig-a001-20230102
i386                 randconfig-a001-20230102
x86_64               randconfig-a004-20230102
mips                             allyesconfig
x86_64               randconfig-a002-20230102
i386                 randconfig-a005-20230102
powerpc                          allmodconfig
i386                 randconfig-a006-20230102
x86_64               randconfig-a006-20230102
arm                                 defconfig
riscv                randconfig-r042-20230101
arc                  randconfig-r043-20230102
arm64                            allyesconfig
i386                             allyesconfig
arm                  randconfig-r046-20230102
arm                              allyesconfig
arc                  randconfig-r043-20230101
s390                 randconfig-r044-20230101

clang tested configs:
x86_64                          rhel-8.3-rust
i386                 randconfig-a013-20230102
i386                 randconfig-a012-20230102
i386                 randconfig-a011-20230102
i386                 randconfig-a014-20230102
i386                 randconfig-a015-20230102
i386                 randconfig-a016-20230102
hexagon              randconfig-r041-20230102
hexagon              randconfig-r045-20230101
hexagon              randconfig-r045-20230102
arm                  randconfig-r046-20230101
riscv                randconfig-r042-20230102
x86_64               randconfig-a014-20230102
hexagon              randconfig-r041-20230101
x86_64               randconfig-a012-20230102
x86_64               randconfig-a013-20230102
s390                 randconfig-r044-20230102
x86_64               randconfig-a011-20230102
x86_64               randconfig-a015-20230102
x86_64               randconfig-a016-20230102

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
