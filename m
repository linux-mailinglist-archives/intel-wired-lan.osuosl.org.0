Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 334DC643FE1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 10:31:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FF21408C9;
	Tue,  6 Dec 2022 09:31:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FF21408C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670319071;
	bh=r0PfNXZtLhsapA+u0MLNFu+uctQhevyGpXe60b6DUbc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=X2o7n7JTIQ1l+Sw6MwxhpY6cjzqUqRRuJzmE6Oo6FRMUUPDSeqDkag64jdYjHhXPp
	 0ReO7h14zTyWzqbCHd1cOwW0WYOu0BOJBu48E36vMvorVbdlirDRwB7nVH2U7hyqoj
	 A+wSl6UcyKXd4ehVXjcrR9yZ/eI+A4n0zRl7I3P8BtKlCRnx3wBx4uEuYIgPC/Q2D1
	 C8UCd60/UKqmwUk3t4WE7GPqiyjfTiVfyE1FUz82/9/bODpZzTI1bX+hT3NSir/EK2
	 z8Av0pWeZ0lqxRhvXBXnqbdnH0Aq4eQEjNHNRnSs1ShcTITledC43Hx1wszZGRxkxw
	 /uUOMa786cdhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2LQuIKOkF1V2; Tue,  6 Dec 2022 09:31:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60D09408C5;
	Tue,  6 Dec 2022 09:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60D09408C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6471A1BF289
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 09:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A501813AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 09:31:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A501813AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WQ0pczJu3eBX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 09:31:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E265C812C0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E265C812C0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 09:31:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="378744206"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="378744206"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 01:31:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="678687017"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="678687017"
Received: from lkp-server01.sh.intel.com (HELO b3c45e08cbc1) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 06 Dec 2022 01:30:57 -0800
Received: from kbuild by b3c45e08cbc1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p2UHx-0000oZ-0q;
 Tue, 06 Dec 2022 09:30:57 +0000
Date: Tue, 06 Dec 2022 17:30:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <638f0bac.UfUD3eT0s8LVVYPs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670319061; x=1701855061;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=RDMF2dJ85OR4G1PklKKMBkIkERVyN2K58uI1kotHElo=;
 b=NhIp2bUzTIzz+D5kHse2gumtRVOaRiwDzL9MMrNgqrhzNb9dNyJAry5S
 Dgg6pbga1xzJ6r9W9vfIcWoC3bN4Rio53favQQOyGvmfTvzwRrEGhPhiE
 uvf6J/i0B6ykF8lqlmn78oQUgWIt2eXIt+OUqGq1kH43uAzhfuI5YZU8l
 E7vnWGMsPRKo9bSDPghCZz9tA0ft9lJPUwQ71ycrjDjWq3cCfP8/oIAEG
 vdueX1LAv8aEyvUC5owTWufOLybhqZcnJaekeOF15tnm0rIgd1G/b0fCv
 dTt5fF3p0RvG/ySkbzI10fQf0wS2gCgZoDK+8pPcoHg/lycgDy3c/h1iQ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NhIp2bUz
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 bb8fcf89e6d8132d6ff930e024a5276f1ffb5bfe
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: bb8fcf89e6d8132d6ff930e024a5276f1ffb5bfe  igc: Enhance Qbv scheduling by using first flag bit

elapsed time: 729m

configs tested: 69
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
um                             i386_defconfig
m68k                             allmodconfig
um                           x86_64_defconfig
m68k                             allyesconfig
alpha                            allyesconfig
arc                              allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
i386                 randconfig-a013-20221205
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
i386                 randconfig-a012-20221205
i386                 randconfig-a015-20221205
i386                 randconfig-a011-20221205
i386                                defconfig
i386                 randconfig-a014-20221205
i386                             allyesconfig
i386                 randconfig-a016-20221205
x86_64                              defconfig
x86_64               randconfig-a011-20221205
x86_64               randconfig-a012-20221205
x86_64                               rhel-8.3
x86_64               randconfig-a013-20221205
x86_64                           allyesconfig
x86_64               randconfig-a014-20221205
x86_64               randconfig-a015-20221205
x86_64               randconfig-a016-20221205
arc                  randconfig-r043-20221205
arm                  randconfig-r046-20221204
arm                                 defconfig
arc                  randconfig-r043-20221204
riscv                randconfig-r042-20221205
s390                 randconfig-r044-20221205
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
x86_64               randconfig-a003-20221205
x86_64               randconfig-a001-20221205
x86_64               randconfig-a002-20221205
x86_64               randconfig-a004-20221205
x86_64               randconfig-a006-20221205
x86_64               randconfig-a005-20221205
hexagon              randconfig-r041-20221204
hexagon              randconfig-r045-20221204
hexagon              randconfig-r045-20221205
arm                  randconfig-r046-20221205
hexagon              randconfig-r041-20221205
riscv                randconfig-r042-20221204
i386                 randconfig-a001-20221205
s390                 randconfig-r044-20221204
i386                 randconfig-a002-20221205
i386                 randconfig-a005-20221205
i386                 randconfig-a004-20221205
i386                 randconfig-a006-20221205
i386                 randconfig-a003-20221205
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
