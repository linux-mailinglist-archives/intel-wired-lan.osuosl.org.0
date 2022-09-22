Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF105E59C8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 06:01:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EB29400EA;
	Thu, 22 Sep 2022 04:01:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EB29400EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663819271;
	bh=dj1QfWTkKVeJACf12B5PLYF3mu3tCMyrxnhEN9hZfy0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TO1OerNTBtlecmlUh0czQrMaEB8DaseUIOKIiCPoPjqJOndLyPwCWWZTDBA9fbX5O
	 xrvYPZrSfEI7O8HrbPwrmlaxZ/LY8inRztOC1ar9UypPf6Hg2uCqtm1RC797tIlV9e
	 qhzFU+ExuFf0P1Quuq6rCQJVYqNorKBnPd5b2P27pQThNTw2JoWbSqInAW+qKxGciC
	 YT9VSABQtIQzmzYjsK02lMdfZKixAMFRQRQMS0pBzwPVJr8yDONGvMQhLlZE5OcgmU
	 hKd7lSKfH/EV09kM+GmRJ52f57OqGCs5VkBqT17sjqrsOdnZTrdTC9cW2w8b+tPWa0
	 BfE+87GLGAJjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q4RAPhA6n1HJ; Thu, 22 Sep 2022 04:01:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAAA04047C;
	Thu, 22 Sep 2022 04:01:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAAA04047C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23E9B1BF397
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 04:01:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 09DE041707
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 04:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09DE041707
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lFreJfHwZSfJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 04:01:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B95C541704
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B95C541704
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 04:01:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="287269263"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="287269263"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 21:01:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="688134298"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 21 Sep 2022 21:00:59 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1obDOV-0004H3-10;
 Thu, 22 Sep 2022 04:00:59 +0000
Date: Thu, 22 Sep 2022 12:00:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632bdde5.v/BC1StKEDcwi5xF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663819262; x=1695355262;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Wbq7MAJA/N9cwKSHiF+gpckZOpEgIHrU/w0ZyKXyKN0=;
 b=iD/4hvy60tix4isvFHMUbmpIsTVlu+4BvS5pMJcHnT9ZrqeMJpc9tNzD
 9Eb9Fg/lihUOdydV81TsqG8b2OWgL7hxg+VralpeqXgKl+wSm/bgyFLu/
 UlMn+jAL35C9a2IMqxxZubIfTbh8WjVKMvmBzsxvgDOxj4HVepnJjLvI7
 x+Kb8B2WHYkp2ksOE3Qh5zal6O1oEFlS4UTJ/kY/5eWpJ59r1cvq8/Rm9
 pfBaC0ROF7HUf70Ikt4XK/y8r46jsf9zYe/ZO2KzEpXQjRyt17Mddvood
 DiQTixxjMhQut2kyUNeOHGfBX8QqZvV8N5u61zpT0eBKXXRYc++2M1Z8C
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iD/4hvy6
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ae16ce9c89b49b5787c0fbb7f02bee5895bee216
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
branch HEAD: ae16ce9c89b49b5787c0fbb7f02bee5895bee216  e1000e: Remove unnecessary use of kmap_atomic()

elapsed time: 724m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
arc                  randconfig-r043-20220921
riscv                randconfig-r042-20220921
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                        randconfig-a011
s390                                defconfig
s390                 randconfig-r044-20220921
x86_64                        randconfig-a013
s390                             allyesconfig
x86_64                        randconfig-a015
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a004
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a002
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a006
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a005
i386                          randconfig-a016
x86_64                              defconfig
x86_64                           allyesconfig
i386                             allyesconfig
x86_64                               rhel-8.3
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220921
hexagon              randconfig-r045-20220921
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a013
i386                          randconfig-a004
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
