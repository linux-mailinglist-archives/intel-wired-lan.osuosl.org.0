Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 103145A2405
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 11:18:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C486417D5;
	Fri, 26 Aug 2022 09:18:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C486417D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661505507;
	bh=h8d+69sIIs1PMyii26VX3y2GuDpuKFLkMxJyl+hmhDU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MPIB8I+H22rtAdg3942ChPEDKkU+puxzVMto59kXqme3T1EDg/rKLqtdrscnshLTb
	 Qysq6OsDGc0hfKYMgixKbnex7h5us8g3TeSc+O6pbvgq/lnMLgwhQwhRxhFP4vXg21
	 C4Q+6IFlf9TAH3e/3DYnrYJvwlBxXSL0CIsvAa34EUG/3E4vEpA59SAx9LkIawyM00
	 mpafGHKlUqnu1ZK7WQhB4QIlmtaXT652zPBkTdc24wzk3wgTP/fLYwPUE0D+/dhc4m
	 4S3p/o6vtOFMa2hE5fkRJbyDecVZuvP0qagEywdcfdDAyc1iCNnj12c8fHh25+vzwz
	 D9dH6O6AXQKCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ff2Q8DB7CpkT; Fri, 26 Aug 2022 09:18:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03926417D8;
	Fri, 26 Aug 2022 09:18:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03926417D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE7CA1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:18:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A58CE610AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:18:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A58CE610AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q-vd9Ux2B1Ha for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 09:18:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B18A360B19
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B18A360B19
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:18:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="281435949"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="281435949"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 02:18:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="606709074"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 26 Aug 2022 02:18:18 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oRVTl-0003pH-2O;
 Fri, 26 Aug 2022 09:18:17 +0000
Date: Fri, 26 Aug 2022 17:17:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63088fa3.yYTXyrcy+oaj6qUh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661505499; x=1693041499;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ev6OtV3vF6tEwxLzeUgZonzH+QwCQ15L8GAQlWNh4q4=;
 b=VIKDKL/R9ChqpPvM0e+9/KdyMd6EhEkrW+AMmMx9Cx8GW1ojUen2ksZA
 nus7Z0lIh8dm1uE9JAUy2t00ttnsHmKX+8HaQvNPS87pKSlOBk0fmI68d
 OE4YAxw6gwxQg1g+KOmUn6LFU6HsVnjYGlZQxyi3enW8R8UyTgBiLwpfz
 /tDOfGS1bY+LAr8e9u32IhXq5JuvLScJL8HotHD2dcUM2QhRtWKi6Js6r
 kmKIIqVhEb4EQrGS/Gf4Ztc60UWWbluFqlTB4OZSRZJUXNlUryN8DNTWf
 g0b4O0cbDIf75qxnF5axkKvyA39EOXHUUZ7zL+puK5vU9J1nKFjtd/aIV
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VIKDKL/R
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 88e500affe72fb704c4f201974b5199ca6f51e6c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 88e500affe72fb704c4f201974b5199ca6f51e6c  selftests/net: fix reinitialization of TEST_PROGS in net self tests.

elapsed time: 724m

configs tested: 54
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                        randconfig-a006
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
x86_64                        randconfig-a015
sh                               allmodconfig
i386                          randconfig-a005
i386                          randconfig-a014
arc                  randconfig-r043-20220824
riscv                randconfig-r042-20220824
s390                 randconfig-r044-20220824
arc                  randconfig-r043-20220823
arc                  randconfig-r043-20220825
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
um                           x86_64_defconfig
um                             i386_defconfig
i386                                defconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
i386                             allyesconfig
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a006
i386                          randconfig-a013
hexagon              randconfig-r041-20220825
hexagon              randconfig-r041-20220823
i386                          randconfig-a015
hexagon              randconfig-r045-20220825
hexagon              randconfig-r041-20220824
hexagon              randconfig-r045-20220824
s390                 randconfig-r044-20220823
riscv                randconfig-r042-20220825
s390                 randconfig-r044-20220825
riscv                randconfig-r042-20220823
hexagon              randconfig-r045-20220823
x86_64                        randconfig-a012
i386                          randconfig-a002
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
