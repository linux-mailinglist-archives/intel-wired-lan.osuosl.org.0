Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12A05B3556
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Sep 2022 12:35:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF87440CF8;
	Fri,  9 Sep 2022 10:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF87440CF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662719724;
	bh=H9ceCmiw6xog4DuSl0X7N0m5Bp7/XnsaykJjjCRSF1w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3A11JeuvN0+8cXjCLrZvecopEsk3wLluzIPdEMyKuFMzN0QZRHxlTV69aNPBxJd+5
	 rvyBpUZif8tnqgn4bSHhqUC493O0JBr4Z1KKSUakNQWf403TVceAKeKSrpejv5rn53
	 D6/SZZ2P5Cv+MhZT3vdkGwwAkvP5vtmc0cBAiTex6GAricYsc3whw4555om+vd1R3s
	 M3ZeZ+7hM/dadPr+zwKgnxxShRYjnA9gFP3xIsvI0Qn7stWmXUIRJO2c7ExCPDE9TV
	 As2IeolgwUYzIQ55Zlm9lNZP+/R4Zytfx4WzPI+uhEs/GOR+3tL3aOql7D49WXv+tI
	 qQxj2ATjx6/wQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uK9yBQ3cTHo2; Fri,  9 Sep 2022 10:35:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2190405C2;
	Fri,  9 Sep 2022 10:35:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2190405C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C03C1BF327
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 10:35:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA7F060DE5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 10:35:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA7F060DE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JEFH3QbTO9B9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Sep 2022 10:35:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D24F60C2A
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D24F60C2A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 10:35:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="280471605"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="280471605"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 03:35:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="943732827"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 09 Sep 2022 03:35:09 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWbLo-00013x-2q;
 Fri, 09 Sep 2022 10:35:08 +0000
Date: Fri, 09 Sep 2022 18:34:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <631b16a0.JM6mPpnPTaPXBl/t%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662719716; x=1694255716;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uiMBSjgg2BUbuJ2izUwQ0mQjsNb/vVeEb3W4S9dJMyQ=;
 b=H9qjM9dtQAb98HBlvjWEY2yRCWlkRcRmQz1cUQijFZoQq/6qt3j33zk6
 71kdVnJS00mSmW2hfVbmGRzwg8gBl2J3qbrkWpSx1UuJSq1ZyO29OGPZW
 i06OA5Yme+kccTMeqS5xF5tZacEzz/HHvwlAi+m2jiYhx6NDjCFIoh8C7
 913LTsC6tDYEs+HdEgZHqY8jS1sOwgyxp5zEwUtcslXiv2ucnMC45nGHb
 It8RLZnQiZgX6ic3kYENhcEXVpMeyh1lTU1iuo9PVve3chEjItAJQ+J7h
 KHHZPhpv77f8fH/GFuXHHozmY99xnpXcRz9q+7ITFv8gBfOV9WBHWTE7Q
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H9qjM9dt
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ae96a613c97dda9f6ace29526772156259a8c2e7
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
branch HEAD: ae96a613c97dda9f6ace29526772156259a8c2e7  i40e: Fix ethtool rx-flow-hash setting for X722

elapsed time: 1142m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
alpha                            allyesconfig
x86_64                               rhel-8.3
arc                              allyesconfig
powerpc                           allnoconfig
i386                                defconfig
mips                             allyesconfig
x86_64                    rhel-8.3-kselftests
powerpc                          allmodconfig
x86_64                          rhel-8.3-func
sh                               allmodconfig
m68k                             allyesconfig
x86_64                         rhel-8.3-kunit
m68k                             allmodconfig
i386                          randconfig-a014
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a015
i386                          randconfig-a005
arc                  randconfig-r043-20220907
arm64                            allyesconfig
arm                              allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                             allyesconfig
x86_64                        randconfig-a006
ia64                             allmodconfig

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a012
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a006
hexagon              randconfig-r041-20220907
hexagon              randconfig-r045-20220907
s390                 randconfig-r044-20220907
riscv                randconfig-r042-20220907
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
