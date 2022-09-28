Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D80215ED420
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Sep 2022 07:10:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D33B4155E;
	Wed, 28 Sep 2022 05:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D33B4155E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664341830;
	bh=ssxjb6Ts2N+0E4Q/6ZvG+Ji4IQa+IKn+5aZlnP1aQ34=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9nKu55A73OHMDPBFPkBmxf+PRsggJh82ZbKlu2iv8xoQMQlPXvHpjcPiPyKhpW6jX
	 3gpikTzmYYoeZWj/A/ZkG+RjwvuN+V0ilYYu3fsX6Tuo2al1tmlruw1hImiGceiqCW
	 WgvuYjQaJ9xW7jQZUYLKjaisC6XPxfH7mVsmZ/cKrOa06J/Rl+b4WMJowcbAJfOMeE
	 gLW2D0xvqRbtPkdeq4seU5aH7/C4JDrNcGHwpAyVKMXq07CCUo2swjJSWmjmW1/ebT
	 pG5ldqSw3VsJQHfc3DO6gC9BlKBRuaG+yblcAhQx8U2EK5Q+DrJBse+Ub2lmmB/cbE
	 FTYjCE405eBng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8nuFOHytCcWo; Wed, 28 Sep 2022 05:10:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDDE741508;
	Wed, 28 Sep 2022 05:10:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDDE741508
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D3521BF909
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 05:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FB9D41508
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 05:10:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FB9D41508
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id krvtD2MPTtX0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Sep 2022 05:10:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1799040888
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1799040888
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 05:10:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="284638204"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="284638204"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 22:10:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572899236"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="572899236"
Received: from lkp-server02.sh.intel.com (HELO dfa2c9fcd321) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 27 Sep 2022 22:10:07 -0700
Received: from kbuild by dfa2c9fcd321 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1odPKg-000208-35;
 Wed, 28 Sep 2022 05:10:06 +0000
Date: Wed, 28 Sep 2022 13:09:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6333d703.WOKEWvpaA8faF4Iz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664341822; x=1695877822;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=h5HW1ROARTsaWb/Z0F1rQ3ostVHWB9qMzf6NwHONTU8=;
 b=gIrRoDKU3Wv7gPaAaJb7Fx3uhGYliPDlnZIacVU51J5XXFXQurYUf8Lo
 BLTuopI2+vRgqlXaCmlCGaB/r++qem9Y/WJe9tuDsQ4LjeoyuBqpHYpDy
 EdEyq6Vy3C5e9CT671wipNMOr/mCFQKwKuzdQBd8M3duBZvBrh6FHDXQ/
 hT1/ceMxycWAzNVcDaTyWeUWrD9XBNPOTIJ+U+kADkp5+sLRlpLkiEawA
 TrVQg5EDcS9wr6ebS/+SqUyjeApvCnPJPUh9jO+zovyJBVTaNtHw7k4LA
 TGB52zcyynBWTifKuHmm8Yj6RDJSCg4woO9iXv95ivHtaZ5uVB4xPJvZe
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gIrRoDKU
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 2d6357e19147767e01fd817fb4d9e624d4ea97f1
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
branch HEAD: 2d6357e19147767e01fd817fb4d9e624d4ea97f1  i40e: Fix DMA mappings leak

elapsed time: 835m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64               randconfig-a002-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a001-20220926
x86_64               randconfig-a003-20220926
x86_64               randconfig-a006-20220926
x86_64               randconfig-a005-20220926
arc                  randconfig-r043-20220925
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
arc                  randconfig-r043-20220926
riscv                randconfig-r042-20220925
s390                 randconfig-r044-20220925
i386                                defconfig
i386                 randconfig-a001-20220926
i386                 randconfig-a002-20220926
i386                 randconfig-a003-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a004-20220926
i386                 randconfig-a006-20220926
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220925
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
hexagon              randconfig-r041-20220926
s390                 randconfig-r044-20220926
i386                 randconfig-a011-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a014-20220926
i386                 randconfig-a016-20220926
i386                 randconfig-a015-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a016-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a015-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
