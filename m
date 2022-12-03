Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77577641462
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Dec 2022 06:55:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C15AC418F8;
	Sat,  3 Dec 2022 05:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C15AC418F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670046952;
	bh=Xq5JBQ2Tloc34Ns6yCj5SvFGoAK8Xm6iXDX68UPBPAA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YY2xZ9axrdNxdSZGu6Ug31LsOYJTDDIcE0rYmQ9QlFN4AhSymV1R8DuGdaINaIFpW
	 sPFiZDFDPEzX+g8yLsL5TWrT+wSA1PryiXZ37EMXWqnBNe5h0N6O1edKy6rh0Pcowz
	 LumoGIpmg5zhJR98oBZIJsLGndAT2h/S8GCTwFbbX51SWov1bniXHrVxdDPCaesyk9
	 2PCWRaMdaiwL/g5+gIJNiC008nL7L8dEcuFpTsAw6vmh0OhJ/COWP52CjOGVPxA24y
	 YLhW2rSmTaViSLhWP+cdc5X1O2DIWXXRSkvk1NuLxcQtnWACX16ALRJlsFRHWwd5SA
	 EaOLNimXP5MqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uxHIRApcmmZm; Sat,  3 Dec 2022 05:55:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FE99415FF;
	Sat,  3 Dec 2022 05:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FE99415FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D50C41BF421
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 05:55:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B659140286
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 05:55:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B659140286
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4yY6BL0NkNDD for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Dec 2022 05:55:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F24EE40165
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F24EE40165
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 05:55:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="317243160"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="317243160"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 21:55:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="890394530"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="890394530"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2022 21:55:40 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p1LUy-000EJz-0N;
 Sat, 03 Dec 2022 05:55:40 +0000
Date: Sat, 03 Dec 2022 13:54:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <638ae4aa.Z+odAi3hYGlXCHAo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670046943; x=1701582943;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6Js5ue6rSQTHrQUizjTTFWFN/Xh0F4yLOCpW4XbxrfA=;
 b=AyWVZ3kB+o0J7lSdHb66F3cynP+3uBi2rZb8+GZRHmIYmzbKiDx4qHm8
 qOzE+osumO4K55/n6o+PQfb2t7bSSoAE1kUO8Jlh/7OihyEj/wILihiE3
 qrIL9rX2sv0WVEQsRQqtrdBkDXBsY5yI/I7kN/Cv81YDOBuurNaZ4WUiz
 O9QTOfBkPBOESbA1awkv0VnRJTW46l+FNLm8VG2AJSCXKasiUt+uJD1gB
 WQkzSl5DaaQ79uN4SxAs4N+/zU3dZRy++GvB01ObcDAqi5jE79pg7gU8I
 xWPXLiPOPw0FIugXr6kLBYeyWjl/SKPY/35+KoIkmrENkmh9ZzG1ANPIW
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AyWVZ3kB
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 0d177446bf8f71c58de0084da383452306e46520
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
branch HEAD: 0d177446bf8f71c58de0084da383452306e46520  igc: Enhance Qbv scheduling by using first flag bit

elapsed time: 723m

configs tested: 58
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
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
s390                             allyesconfig
powerpc                           allnoconfig
m68k                             allyesconfig
x86_64                              defconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                               rhel-8.3
arc                  randconfig-r043-20221201
x86_64                           allyesconfig
riscv                randconfig-r042-20221201
i386                                defconfig
s390                 randconfig-r044-20221201
ia64                             allmodconfig
x86_64                        randconfig-a013
sh                               allmodconfig
x86_64                        randconfig-a011
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a002
i386                          randconfig-a001
x86_64                        randconfig-a015
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r045-20221201
hexagon              randconfig-r041-20221201
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a001
i386                          randconfig-a002
x86_64                        randconfig-a016
x86_64                        randconfig-a003
i386                          randconfig-a004
x86_64                        randconfig-a005
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
