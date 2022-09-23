Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAE35E78CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 12:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2D9B60593;
	Fri, 23 Sep 2022 10:53:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2D9B60593
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663930434;
	bh=lZYf9Rp7ktBj8XeCvNPmCux+KvpTFG5Re1G+5avY7S8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uP2eXpzpsoX3XIRkgkLFchj+p9031fJOsDmHFp3Ynbl7bD/U3hle/66582n3MrFQu
	 fiBtNRfqzNvNhI4CqO6Qlb6htXOOi6V+QiZyXkbZqsY01dqo2Y6v4c4ms5AumKZ3KT
	 Zs6iPkGZ0yCClP/TtBhgslFVc2wE95g4BSo7ODNBUx+sz1iB9Z7+X/nY8ouiW/x1eK
	 NPHD0e7+7pfFwYXrG/5l8EcWAqa81qYSkvN/IftyJptHevSNVaJrq7noWwqb6vPekH
	 jKT26Ejn4o6NNBofC3vqjKfqNpRwmjYcYV5wdyr5lEFs+5CeoV485JEPMGhyhIQvol
	 fp5wAhXGM9rRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RGyZ6njZncYz; Fri, 23 Sep 2022 10:53:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD79060D6A;
	Fri, 23 Sep 2022 10:53:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD79060D6A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 44F971BF378
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 10:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D013812FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 10:53:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D013812FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4GQpS0Bre6ok for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 10:53:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4CB6812CF
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4CB6812CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 10:53:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="280290856"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="280290856"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 03:53:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="650912966"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 23 Sep 2022 03:53:46 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1obgJV-0005aj-1f;
 Fri, 23 Sep 2022 10:53:45 +0000
Date: Fri, 23 Sep 2022 18:52:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632d9003.qpvrcG96ateOS+Au%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663930427; x=1695466427;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=AcPOY8om9b9iF7t5KKsDpyEl6bJfE9jJFrKR8sy+PaQ=;
 b=WsXVJKT4nV1DSqUGIkAsencOoXZrIWK663n+HTYwYKffr5sdZOQgWU/l
 tCH5H0RicTssCC9gDCTv8rtHKU76dVXkf4RZr2z2ovHjJ8s2sXUl0BkKT
 xnzykq4qqb36R4uNZw7gtf4XsAZCwJX4hF1eWf+Waqog4tNvIio9u5s2c
 c/+Kv2COLaAF+pWqguzsj9/wov37dP3EdeKT8waJBhpDtznIqm6Y7+3sD
 egdr7BLa/P1ZsnfYbUwT+8+F4Pwr5s6hvufeJ/qKkYurUeXpCsgT3daYZ
 Pwz4/AVn/OKrdWEd5w8k9l9hiZVlFHherq3ciLohzlbfwiWNIK+RRbj23
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WsXVJKT4
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 2b9977470b39e011ee5fbc01ca55411a7768fb9d
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
branch HEAD: 2b9977470b39e011ee5fbc01ca55411a7768fb9d  net: ethernet: adi: Fix invalid parent name length

elapsed time: 1115m

configs tested: 47
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                        randconfig-a006
arc                  randconfig-r043-20220922
m68k                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
arc                                 defconfig
x86_64                              defconfig
alpha                               defconfig
arm                                 defconfig
x86_64                               rhel-8.3
s390                             allmodconfig
s390                                defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
alpha                            allyesconfig
m68k                             allmodconfig
x86_64                          rhel-8.3-func
arc                              allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
sh                               allmodconfig
s390                             allyesconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
x86_64                           rhel-8.3-syz
arm                              allyesconfig
arm64                            allyesconfig
sh                           se7705_defconfig
powerpc                      tqm8xx_defconfig
csky                             alldefconfig
xtensa                    smp_lx200_defconfig
arc                               allnoconfig
alpha                             allnoconfig
csky                              allnoconfig
riscv                             allnoconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220922
x86_64                        randconfig-a005
riscv                randconfig-r042-20220922
hexagon              randconfig-r045-20220922
s390                 randconfig-r044-20220922
x86_64                        randconfig-a016
mips                     loongson1c_defconfig
powerpc                  mpc885_ads_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
