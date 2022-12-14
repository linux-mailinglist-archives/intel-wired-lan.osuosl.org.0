Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E7F64CB33
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 14:24:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4BFF41719;
	Wed, 14 Dec 2022 13:24:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4BFF41719
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671024248;
	bh=ez5U93NlYVRcm9wDtsi0e72cHKgCL1DYY/LtLUuMTGc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Zm2U8GcogLWIZAQQ121shC/W0OhTKpKilS8jWdl0+985aHrn+NOqKR6QhW+iHavQO
	 L7KblAIhtBGBGnx5Q3eECP9M+qw5r3g8lYaVEUnmqDLy8Vjc93rO0bYT7/Jhgc0K5W
	 A45BbRZb0/bMXiqivfjqUNJ38mfBBGNyq/tz9iavBMvCLwrnNa1uKAaczmCF2gmK47
	 r0SpSg6pZbxT2BArn30LAYePqVxWNZXmKEwM1037INylDps9fYE3kv05M/nqAeYqgx
	 xsJ+gcY0UqTD4wUE9AvRAxMAZpX2dR7/UR1EfoQZj4HyThX29lP7Cw35Y7PQioKCJ0
	 4XrZxk+aj7Feg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id juNIalwp0lSX; Wed, 14 Dec 2022 13:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FA97416AB;
	Wed, 14 Dec 2022 13:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FA97416AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B4B21BF33F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 13:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0FF4981E5C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 13:24:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FF4981E5C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JWfTsv0LFwXM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Dec 2022 13:24:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02B5B81E53
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02B5B81E53
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 13:24:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="319542284"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="319542284"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 05:24:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="649017728"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="649017728"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 14 Dec 2022 05:23:59 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p5Rjq-0005V8-1E;
 Wed, 14 Dec 2022 13:23:58 +0000
Date: Wed, 14 Dec 2022 21:23:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6399ce66.4ZYKgarFk2XicWqA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671024241; x=1702560241;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9Ld46BUadYDyoyLbHIV+ga/gjRIXnBvOZt9WmK+70iI=;
 b=BjHQZJi/PXZdMa0+8UWiMfdZD+AYdjwpKi5bmhLA9B7y6BzKXUJARd14
 /tmU4LsS1m+l5NaP9ibpsNMXPl6Y3lHCdYbVNaB25FArjiGA/WCwKdoqU
 xhMEDeRHXUTglbsICftBK/PUmU0RVVfhLGgpAvi7aP4AeIn2587DYAta9
 3haARyZKmnvut8dkjl/STIJyLhzX7QZsZS1YQcugxRt2vGovyqsLvbOJ6
 KGIT04PzY4NyykifoWALCbJYqmgL8CXds8Qug4jYU4ikOUewOM7mkwJDI
 gpfU619JXTNeY4Lm6zo10yVFO+/D9FaGfPXMtqLqMH4z49P4SBDeBfBXC
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BjHQZJi/
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 65c21cdf15d24651a0a1db389dce08e64498df36
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
branch HEAD: 65c21cdf15d24651a0a1db389dce08e64498df36  ice: switch: fix potential memleak in ice_add_adv_recipe()

elapsed time: 724m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
arc                  randconfig-r043-20221213
arc                                 defconfig
arm                  randconfig-r046-20221213
s390                             allmodconfig
alpha                               defconfig
s390                             allyesconfig
i386                          randconfig-a001
i386                                defconfig
i386                          randconfig-a003
s390                                defconfig
i386                          randconfig-a005
x86_64                              defconfig
x86_64                          rhel-8.3-rust
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
ia64                             allmodconfig
x86_64                           rhel-8.3-kvm
arm                                 defconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                        randconfig-a011
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016

clang tested configs:
hexagon              randconfig-r041-20221213
hexagon              randconfig-r045-20221213
riscv                randconfig-r042-20221213
s390                 randconfig-r044-20221213
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
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
