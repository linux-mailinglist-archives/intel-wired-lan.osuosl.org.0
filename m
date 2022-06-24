Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2F855975E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jun 2022 12:09:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFF3761302;
	Fri, 24 Jun 2022 10:09:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFF3761302
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656065343;
	bh=gFhk00g71JF6jFz1IqNIW9DZF3oi32D0dDw1nOXwb7g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hTRZFxiEf+Q70p9hdX+ek4BPg8tjJnBq4HNCR7kM/AeP+vaoEww7ITiwgu6/kJnA4
	 RKtv/3oFCd9su8ywsOH857AGn8M0rxUO59Sol9p8U72mEhFkndaa91G/EsK4p8dtQj
	 +vYQ9oyulgCXsA9QMkrfRdts1aucGS9mCujMfolwHK7xJOCjNHhpe3tBvSdOoTggsb
	 TmUKbQ7l1ll2gjffPre0KT/x0EVEehJUKIefmpIySwwDuDxGS0H/qpBeIymfCFtanu
	 gnbT2z3rBjxcC44+gv8UpWBJ1c2c19GjmN+pPlU79y5Q6fpinv3NPV6ix4XzQMjLAk
	 SIU5hIezbWtIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2oy9RpzeqZTd; Fri, 24 Jun 2022 10:09:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D02260AD2;
	Fri, 24 Jun 2022 10:09:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D02260AD2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10A0B1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CC9C360AD2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:08:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC9C360AD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PBplwTcrpJso for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jun 2022 10:08:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 459CC60AB0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 459CC60AB0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:08:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="344964935"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="344964935"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 03:08:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="621675470"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 24 Jun 2022 03:08:53 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o4gFA-0003ye-UG;
 Fri, 24 Jun 2022 10:08:52 +0000
Date: Fri, 24 Jun 2022 18:08:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62b58d30.IeCsx6zaP+NTmCLT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656065335; x=1687601335;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=gjF0prhxFz7d1vgYKTG0p5ecLrnM+XyrouSndskzPlU=;
 b=Ha1qM76Ucb4nkud7b3G/TajgFAnJ7F+fR5W61wutqXe0dqxIukvJG7VU
 5Ek7MALbL5sJQQEPQ/aDDgJWxaXj3eA4wVcsDd9vE2eZvyQBlCHtZRZPO
 BvuloZxTgZOUPQPoX4NxLuCK0zx6uTJnS1/Ta17MFcHfXOE5i+CPgmrfU
 XHvwa9z1cR5a29ybLOXTaINbAxVbe152gRqtc6LKdyexrpBD0d8Kk0BZ/
 YxoSr8YZP0bNcjJHVI8S0KKUabHBGSBZksQ89c7Nj3fSgGW+Ibz30qajR
 cwABEAqgMKvObYGppWTS3h2LK+Ovr09+g5qdiyb8ucTGC9b6LBQcRGXYR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ha1qM76U
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 978b98e276f66fdd3a551003e3ff221791c9d045
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
branch HEAD: 978b98e276f66fdd3a551003e3ff221791c9d045  i40e: Fix erroneous adapter reinitialization during recovery process

elapsed time: 725m

configs tested: 71
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                        realview_defconfig
arm                        keystone_defconfig
microblaze                          defconfig
arm                          iop32x_defconfig
m68k                            q40_defconfig
powerpc                      chrp32_defconfig
alpha                               defconfig
sh                         ecovec24_defconfig
arm                           viper_defconfig
mips                             allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
i386                              debian-10.3
i386                             allyesconfig
i386                   debian-10.3-kselftests
i386                                defconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a004
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220622
riscv                             allnoconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3

clang tested configs:
arm                                 defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220622
s390                 randconfig-r044-20220622
hexagon              randconfig-r045-20220622
riscv                randconfig-r042-20220622
hexagon              randconfig-r041-20220624
s390                 randconfig-r044-20220624
hexagon              randconfig-r045-20220624
riscv                randconfig-r042-20220624

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
