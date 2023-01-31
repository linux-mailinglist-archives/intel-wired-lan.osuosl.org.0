Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E807682644
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 09:21:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B24A60736;
	Tue, 31 Jan 2023 08:21:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B24A60736
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675153315;
	bh=cLL+4ZAyIiE7HFLGh4Vo2g4j2LO+twqguz/R0As7+Ko=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AiJ0AV6sH17T6zmn7ZfAILM6H+pdHhYXFlDfOReRqRE0lLzNtNHaTWrHQhOact48z
	 0RBHhx58XTDD0Vq446VtX7obG4uuA0SIVyRDmq3H8jmSNyPMhZIdpxmfoyfiKbvie4
	 YfUiFz8mypaE2CZMkHqfAd7SKgszrXsZ0h63PvKTkt1+761fOXbIMHqS/ZqV3gYyQv
	 8v+Rww7r48YZkqCOe4ai+5IgrDo4T7WQS52ewMtOIBQQxC8FDNqenPK9q9YJa/7aB6
	 A28DPNbsFB12gD+/PHhXZzws2hwC40Tl/X1vIgycs3iCb/qTnwY4LsWmkKOWk5P8ZQ
	 TngqxRoshto6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 43yh6NsDb6_o; Tue, 31 Jan 2023 08:21:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94E9660709;
	Tue, 31 Jan 2023 08:21:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94E9660709
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74FE31BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 08:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56E7F40239
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 08:21:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56E7F40239
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C-fkNzY6pmXP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 08:21:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88EED40225
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88EED40225
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 08:21:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="327800052"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="327800052"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 00:21:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="664415448"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="664415448"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 31 Jan 2023 00:21:44 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMltf-0004Ih-2a;
 Tue, 31 Jan 2023 08:21:43 +0000
Date: Tue, 31 Jan 2023 16:21:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d8cf86.vgghDuIFdZXj8J0h%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675153308; x=1706689308;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mVxCyc8Ppf6CUwSiuFfpJrHm9UAhsFN97w8o65LEg4w=;
 b=k1st9zB3saFJUEIYH3TkpgHq2zUZYuGql/lBnRPWCcUk5TZWfMJ/rhVm
 wk0LiZphbOp8fxh1fHtewJ064CJZ1iKooqwg4eW+shsgnLfFXp6y5mbbs
 2/1/kkc29KcJsOnZDxCrndypVFnMPviyWh+FooB6XGcfzSBy11+UJrwTy
 MeRoiFgBLzlwaYaWKatsETotf6TyV0UxtLJQ5CPZ4dJ7S3gFnmKe+6kZ2
 Ujdmtg2kFluB3u/URH3t96la+jXVL9uzBiF9Z+qfWVurKLJJMCiwfZ03V
 Vw6PfyYSEU2dT2C93g6soUcp5LsPqTwjDv3iPVoMixFlNAv5ts7NfET0k
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k1st9zB3
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 dec6b801644518d3fac0686a580d10f5b1730afc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: dec6b801644518d3fac0686a580d10f5b1730afc  ixgbe: Remove redundant pci_enable_pcie_error_reporting()

elapsed time: 726m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
um                             i386_defconfig
sh                               allmodconfig
powerpc                          allmodconfig
x86_64                    rhel-8.3-kselftests
mips                             allyesconfig
arc                                 defconfig
m68k                             allyesconfig
m68k                             allmodconfig
s390                             allmodconfig
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
x86_64                              defconfig
s390                                defconfig
x86_64                               rhel-8.3
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64                           allyesconfig
ia64                             allmodconfig
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64               randconfig-a004-20230130
x86_64               randconfig-a002-20230130
i386                 randconfig-a002-20230130
i386                                defconfig
i386                 randconfig-a001-20230130
x86_64               randconfig-a005-20230130
i386                 randconfig-a004-20230130
x86_64               randconfig-a006-20230130
i386                 randconfig-a003-20230130
i386                 randconfig-a005-20230130
i386                 randconfig-a006-20230130
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                          rhel-8.3-func

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a014-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
hexagon              randconfig-r041-20230129
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130
x86_64               randconfig-a015-20230130
hexagon              randconfig-r045-20230130
x86_64               randconfig-a016-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a011-20230130
i386                 randconfig-a016-20230130

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
