Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84257648227
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Dec 2022 13:07:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1212F60E57;
	Fri,  9 Dec 2022 12:07:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1212F60E57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670587649;
	bh=ydF/NnBSbXbzcs3lCX9X/5fGO1PwIK7oxtDhET2PIeo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MbnKOHfa0J8Cb/g7OQxLwA98kE8NnC+KeF/jnCjpMOZalOwAIiujheYvuWLssPhF9
	 So+5j300Eqc7Du8Zk+6KQ4OFFqYjMjwr1MpmFHMpze2OlkqkUbmyvKqDAE3+K82SZk
	 f5KyCNp3R36G6cWkChV28X/R3/kqQpj88qz5xIeUV0n4nmON9TcspEnBaJoHtaES9O
	 NHx/tqlcGsnFFMkCUvkGdXhklKeglnKzDR/GnClVI0wVl0WGYTIhxhqI6ZZkc0aT7Z
	 tkuhWX8rDETWFbhuy2tWZ1B/CE17EbQcySrElRu+dXXH2UvBQ0at85IaojAicVa93M
	 jnb3oDROrHc5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V4pTLsTl3YQz; Fri,  9 Dec 2022 12:07:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6A3C60E56;
	Fri,  9 Dec 2022 12:07:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6A3C60E56
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 071481BF973
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 12:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D684582059
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 12:07:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D684582059
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cIggRUk-VYR7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Dec 2022 12:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAF3481E93
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BAF3481E93
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 12:07:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="381751955"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="381751955"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 04:07:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="647383475"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="647383475"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 09 Dec 2022 04:07:11 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3c9n-0001p9-0X;
 Fri, 09 Dec 2022 12:07:11 +0000
Date: Fri, 09 Dec 2022 20:06:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <639324c8.1qPzKq2E1IdIavUo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670587633; x=1702123633;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=QthrjGDB4JqzqnNJk0seiD0kI7nKZ1TlDbUE+uylXFA=;
 b=YF7NvaKxK0Q8ML8yu0J/QNr8dGtNrRZYEVZtUlTkeBSpPnn1W7Ejz1/n
 yjFYSikUowmAFslonlaFTxhfgLVM5VQAHX8jsMZ+ZrBkUCcf8kPcA+sXn
 EHNK71Zblwzc21u2MEojlG/Sn8TS4RVwFoL9Z/I18t3eOepX7skMkVlA2
 th/n9N+OuOVISSegBYITYL1Kgslgvz41UOyOHCuq5YG/zJNgnW91+fIJf
 sF+WnLdbhLAlY1pwcWQNQyb+8tOii4qgerM29Zbi1krhkJSrYFlV9qaYH
 vfwom2ZGpo6sAiX2iFXllNsHRxbkkbqbJSHdfI5rJbvtTXWKJunN7mJzC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YF7NvaKx
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 f8bac7f9fdb0017b32157957ffffd490f95faa07
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: f8bac7f9fdb0017b32157957ffffd490f95faa07  net: dsa: sja1105: avoid out of bounds access in sja1105_init_l2_policing()

elapsed time: 1095m

configs tested: 57
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
arc                  randconfig-r043-20221207
riscv                randconfig-r042-20221207
s390                 randconfig-r044-20221207
powerpc                           allnoconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
ia64                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-rust
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arm                                 defconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm64                            allyesconfig
arm                  randconfig-r046-20221208
arc                  randconfig-r043-20221208
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
mips                             allyesconfig
arm                              allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
hexagon              randconfig-r045-20221208
hexagon              randconfig-r041-20221208
riscv                randconfig-r042-20221208
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
s390                 randconfig-r044-20221208

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
