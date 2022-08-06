Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5789C58B3ED
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Aug 2022 07:26:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92AF783440;
	Sat,  6 Aug 2022 05:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92AF783440
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659763560;
	bh=HjH4mDPP8WSko9QhHQ4S9d05ordHGikC+ZqEv1IQIB0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WncSE3S46+0tA1T5pOKme8H8tRe7nOibmAPITVOWp8sNrfiSegCBNxZ/nMIyl09TM
	 iIrcTMnyfrMZtHbAr6NESnuY3Z529Wx+2TIgbMy0d1dOXt9LoALQJT/VKpmb4y4vBz
	 sVrfMbRO5JKX0j1raDvq+3lXPzulGGY/0UAOxig4aycAiRLmOU/pPiwOL5DLc8F1Up
	 l0EMiZ79JQc6R83OywxVgfaeHO48hrJI5v8xO5tN1GqhRquMEF5MQewHJ2U1wI7H85
	 sXo3iX04q2Ewr4GkcpWHQz6PvE0+axFynBLBiUyhteIRMbIZ8zNrCgo13v8nZ/mkOL
	 XvmHOCFk4Vj/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TE3g97gIVQOh; Sat,  6 Aug 2022 05:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E93983077;
	Sat,  6 Aug 2022 05:25:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E93983077
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA4DB1BF275
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Aug 2022 05:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB49A83077
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Aug 2022 05:25:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB49A83077
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YFkUtFXAvhj5 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Aug 2022 05:25:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 344DA83051
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 344DA83051
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Aug 2022 05:25:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="352065806"
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="352065806"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 22:25:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="663261494"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 05 Aug 2022 22:25:48 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oKCJl-000K4t-1e;
 Sat, 06 Aug 2022 05:25:45 +0000
Date: Sat, 06 Aug 2022 13:25:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62edfb3d.Cwn3IKP5zpjjdJja%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659763551; x=1691299551;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Q8rpSBCQbDRgVhD8ef+xnO5O3TuxSyWmS5Gt2oymtb0=;
 b=gWrsVbd2xV1k+0ww/jxFRkW+Ys1rjW0j+Q9KjDyTYXHEJK0Uhqd1dSAc
 /D/pMrfjtsJf3B/51MVuWx9J/zKk/EOmox380TZUFys1PpKy+clN4zVYL
 AdjVRoxA7T+WEjuSiRdKrLT5LFaEiwlZ8SlCo7UBc66RpwCn6SnmzfUuE
 2oWBfFHwPKXmKKG5+jnGxDW/F9EREGGAQO4fIh0WCo2WIiz2WfgLxjDdX
 IwOFaa3bvOO82e/2Q1A9g3ah9zHb1ten9nOzGJtSYGhB5i4n1OqMGPZMt
 6yGPuc1C8pN+u7rtYpacrBxTan46SM1CTEWVOtbbnaC6lgu+Bk8XCol2w
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gWrsVbd2
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c6bb0b8a70b36fded7ef215a4f7cb756c5b902d9
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
branch HEAD: c6bb0b8a70b36fded7ef215a4f7cb756c5b902d9  ice: Fix VF not able to send tagged traffic with no VLAN filters

elapsed time: 752m

configs tested: 84
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
i386                             allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
i386                          randconfig-a001
i386                          randconfig-a003
sh                               allmodconfig
arc                              allyesconfig
i386                          randconfig-a005
alpha                            allyesconfig
x86_64                        randconfig-a002
x86_64                           allyesconfig
arm                                 defconfig
m68k                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                               rhel-8.3
arm                              allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a015
i386                          randconfig-a014
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                              defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a013
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a011
i386                          randconfig-a012
x86_64                           rhel-8.3-syz
i386                          randconfig-a016
arm64                            allyesconfig
arc                  randconfig-r043-20220805
riscv                randconfig-r042-20220805
s390                 randconfig-r044-20220805
ia64                             allmodconfig
m68k                             allmodconfig
sh                          landisk_defconfig
sh                 kfr2r09-romimage_defconfig
arc                         haps_hs_defconfig
um                               alldefconfig
loongarch                 loongson3_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                      ppc6xx_defconfig
xtensa                    smp_lx200_defconfig
powerpc                     tqm8548_defconfig
openrisc                         alldefconfig
arm                     eseries_pxa_defconfig
csky                                defconfig
powerpc                 mpc8540_ads_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
um                                  defconfig
m68k                          amiga_defconfig
arc                            hsdk_defconfig
arm                      integrator_defconfig
powerpc                      chrp32_defconfig
nios2                         10m50_defconfig
arm                            zeus_defconfig
sh                        edosk7705_defconfig
i386                          randconfig-c001
sh                           se7619_defconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a005
i386                          randconfig-a006
x86_64                        randconfig-a001
i386                          randconfig-a013
x86_64                        randconfig-a003
x86_64                        randconfig-a014
i386                          randconfig-a011
x86_64                        randconfig-a016
i386                          randconfig-a015
x86_64                        randconfig-a012
hexagon              randconfig-r045-20220805
hexagon              randconfig-r041-20220805
powerpc                 mpc832x_mds_defconfig
mips                      maltaaprp_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
