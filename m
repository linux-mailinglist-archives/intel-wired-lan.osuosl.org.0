Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5EA5E8E8D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Sep 2022 18:44:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E5E641D18;
	Sat, 24 Sep 2022 16:44:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E5E641D18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664037894;
	bh=/K5GUKnkc39Gx9ZKuOFEwJCh78IjVt+wbJeBtfFTKnM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TBhMJgx8deimZdwCMcpOqV6Pp95cHGiOMbCodu4WBleg771uiJ65oX0l4M70mdo9V
	 JOelmNFMjKYuOppddYATpJl9EjaiOo/kMgaiL6SEZwbNibtcsw50qAggZ048QhLyo4
	 1BMUR4czVvvyCd0RckxKhvRkwmRDksMJknLw47q60aSBGsTTGoL/YcfdV4AmobWYsB
	 rJU7kaRvEmt36hZ4PSVqYNlSxW4S60TLP+vG4jSaH4XFq28nTeeuIDtucJ5ETAKdWv
	 JYP/ECFKnaPTy02m86OczAIy2OdCqL6+tJj1VQWNasConK43UD7sBBxhjjv9lw528c
	 SxUN5JSPXvijA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0DeJcD2XHVro; Sat, 24 Sep 2022 16:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D83B41848;
	Sat, 24 Sep 2022 16:44:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D83B41848
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 491C11BF83E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 16:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 203B140B56
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 16:44:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 203B140B56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5uZZ7QCR4Nyo for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Sep 2022 16:44:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 145514059D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 145514059D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 16:44:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10480"; a="387082132"
X-IronPort-AV: E=Sophos;i="5.93,342,1654585200"; d="scan'208";a="387082132"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2022 09:44:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,342,1654585200"; d="scan'208";a="689071486"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 24 Sep 2022 09:44:45 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oc8Gi-0006n8-28;
 Sat, 24 Sep 2022 16:44:44 +0000
Date: Sun, 25 Sep 2022 00:44:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632f33f7.d6B5k4pgEJZlgtG4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664037887; x=1695573887;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=O4uVid4aa4sxqWCNsdUzomvECI0TDwdbtJDDlyFXxJk=;
 b=BRH2n4iLR2/wVc3+NzitYpBjqcc+a5qtKwBhQfsC+sEV5lQ03t4NoImt
 4yJIXHYMKZWl3Sy9Guy2g9+k6TnWDyhow28Xgxk4PnKNYL5tkyxfhIlA9
 z6Hgid/gYpDwDh1CFeEm+OqtO39NBRrDIA1HACNtd6HZ7p2Cfs3Xtqkj4
 A+kUgSBhUA4nz99kNV4wTg8FZb/V82i5jt3OE2+12wSou4IQEFoiyUXtn
 3uSZ2BfhusArNzT/MUt6HQfT3OzIHSBu53Qol2e2YrD3uvnwoah3SYVC2
 zBA5wC5ecmiSFdLFYpQruaZtklhP4sF7Jx+uM3RGgajqEFeRRVXucf7fV
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BRH2n4iL
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3b6e432cc1a6bed5e932e7f10cba47f821cb5a1f
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
branch HEAD: 3b6e432cc1a6bed5e932e7f10cba47f821cb5a1f  ice: Add crosstimestamping on E823 devices

elapsed time: 1387m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
arc                  randconfig-r043-20220923
s390                 randconfig-r044-20220923
riscv                randconfig-r042-20220923
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a014
i386                          randconfig-a012
x86_64                              defconfig
i386                          randconfig-a016
i386                          randconfig-a005
x86_64                           allyesconfig
i386                                defconfig
x86_64                               rhel-8.3
i386                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm                                 defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a015
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm

clang tested configs:
hexagon              randconfig-r041-20220923
hexagon              randconfig-r045-20220923
i386                          randconfig-a002
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a004
i386                          randconfig-a015
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a016
x86_64                        randconfig-a014

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
