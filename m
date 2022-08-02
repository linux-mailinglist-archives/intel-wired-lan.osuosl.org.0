Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3793E587943
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 10:44:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADF8560B5A;
	Tue,  2 Aug 2022 08:44:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADF8560B5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659429860;
	bh=KY1K4PGob0BwAKCHP0yAqeuiBuhucZyqgrnipFK2jY0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NoNH1CJ9ZFxMjVdnCsAzOFFQgsb5dxkYrHj8XlkrrdJoI9aR4wMBMdoP1bBbqUbFh
	 y6Del7Li+PVn3B94VniuPArHLVxrfjXjdQ2wGia4q3Hb6K9kxfc2LdB3wU6jZp8jmW
	 qepxon34iLidUUEgLBzshsxYo1iliLdU8UxoyWLB06vpA89V0A/Lj9d3BSmyveidN0
	 NZBHFAHHWVuVhi21c+xW+LVdrmh0VnNN49LMFUVmg4b1SciBATkFE87Kmubryoe7V6
	 7nHQBOG3cAYb8UVpPJdx0tEbBAe10LjHX5SsX4NNsEAwKWeEqXC9mQiCKtPAnz3COy
	 5W5sqQcik7lqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dy1H3_DBEOQx; Tue,  2 Aug 2022 08:44:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B6D860B49;
	Tue,  2 Aug 2022 08:44:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B6D860B49
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 241921BF37E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 08:44:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 09B7040386
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 08:44:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09B7040386
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jZnbBUH1y1D9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 08:44:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA69940324
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA69940324
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 08:44:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="286918264"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="286918264"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 01:44:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="552843406"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 02 Aug 2022 01:44:12 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oInVb-000Fsl-1H;
 Tue, 02 Aug 2022 08:44:11 +0000
Date: Tue, 02 Aug 2022 16:43:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e8e3a1.YELCE7mcVEmXS+O0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659429853; x=1690965853;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kpkXGH8jMmPhtRsYp6iwyM3/BUmsvb0VkN3UhMjyHJM=;
 b=nOg6qfsnPdd9zeuZCghgfXrj2qOYbWyYYfUVY66utPT9PdpuE8rnBNuX
 A3wm3XFbe6GYJ+cFbbGaDI6gIWyOlALSjjyNkQZX2foNORedNkdS4jUZL
 3/m3DJViJlIWi94DFqBtJ4oTHIA4Ndv8aLtr5IURPBIKbOBokVISvu1s9
 gVEXvlp38TK/k7/GvvfD5oF1xDFFPkoRBNs94YpvBVBGz5glnqLNJGRuI
 1Fpn6Uyc1OLoD1Mkj68oyAtXkLjbzq+F4PbDStaOY1dkB5QvETDwsUDFN
 XHSp+kQOemOdOD9ND1AQpVcdJtzAF+uih9CddqiKpk+wVND4SIpulUg6j
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nOg6qfsn
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 05e2f0e1dbd7e8d0a879d6cd0a9c6e3458f8b794
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
branch HEAD: 05e2f0e1dbd7e8d0a879d6cd0a9c6e3458f8b794  ice: Add support for ip TTL & ToS offload

elapsed time: 716m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220801
i386                             allyesconfig
i386                                defconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
s390                 randconfig-r044-20220801
riscv                randconfig-r042-20220801
x86_64                           allyesconfig
i386                 randconfig-a012-20220801
i386                 randconfig-a013-20220801
m68k                             allmodconfig
arc                              allyesconfig
x86_64                               rhel-8.3
i386                 randconfig-a011-20220801
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                              defconfig
arm                                 defconfig
i386                 randconfig-a014-20220801
i386                 randconfig-a015-20220801
i386                 randconfig-a016-20220801
arm                              allyesconfig
x86_64               randconfig-a011-20220801
arm64                            allyesconfig
x86_64               randconfig-a012-20220801
x86_64               randconfig-a013-20220801
x86_64               randconfig-a014-20220801
x86_64               randconfig-a015-20220801
x86_64               randconfig-a016-20220801
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz

clang tested configs:
hexagon              randconfig-r041-20220801
hexagon              randconfig-r045-20220801
i386                 randconfig-a001-20220801
i386                 randconfig-a002-20220801
i386                 randconfig-a003-20220801
i386                 randconfig-a005-20220801
i386                 randconfig-a004-20220801
i386                 randconfig-a006-20220801
x86_64               randconfig-a002-20220801
x86_64               randconfig-a001-20220801
x86_64               randconfig-a003-20220801
x86_64               randconfig-a006-20220801
x86_64               randconfig-a004-20220801
x86_64               randconfig-a005-20220801

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
