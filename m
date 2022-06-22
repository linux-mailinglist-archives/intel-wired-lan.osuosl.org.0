Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0F65542EC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jun 2022 08:36:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B112A40C67;
	Wed, 22 Jun 2022 06:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B112A40C67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655879807;
	bh=ZyZ0vvv8g0hGPw2MAAoSxgJ4k11u1Oz3QEzdsN8R+Zg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oHql2LAw20K8jUTTHeLA9oBg+/QhPZAIeTVs4hJ84GeAjHfJe3vm0iXYkVhPz2V/B
	 JZjTw+gIEtwYaL0qjbRhEPo8izME+HLnFI71mvQcvJ+cxgxZ5A/kQX5o4tqQm0Qt8l
	 9/rb1OiU//QnVxz0n/yCgL8s5JzlBZMGVYZyxqUEQHSnI1g/iLvtb5F+ccnQPJ53i0
	 O6dof2c/1urQy/p2IXFSqa0V9Td/3nbLDp1b8TwYjGDpqLDYHcA34yg9cw9M0FDmGa
	 nRbqVv0GkK+BbNQThhSF4F7y3gEG9X+92EqCYZz7Mwf/DsDM7Y9QPuSqxwLugCHl0v
	 q68WbL+2sgd8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u7HvIJvSkV5d; Wed, 22 Jun 2022 06:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA50D400DD;
	Wed, 22 Jun 2022 06:36:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA50D400DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC8151BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 06:36:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A546883F70
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 06:36:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A546883F70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJUvw6pFBChl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jun 2022 06:36:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68D4383EC7
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68D4383EC7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 06:36:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="269048043"
X-IronPort-AV: E=Sophos;i="5.92,211,1650956400"; d="scan'208";a="269048043"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 23:36:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,211,1650956400"; d="scan'208";a="538332504"
Received: from lkp-server02.sh.intel.com (HELO a67cc04a5eeb) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 21 Jun 2022 23:36:35 -0700
Received: from kbuild by a67cc04a5eeb with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o3tyc-0000wD-Ol;
 Wed, 22 Jun 2022 06:36:34 +0000
Date: Wed, 22 Jun 2022 14:36:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62b2b85e.rDDqTL6wSfwld2EF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655879799; x=1687415799;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dGOib1m81zePurZD1Z6H5M24R1AinhbvZBc85JIX/ng=;
 b=Y/72rc+wY1yTbjSSTIJcpchRyKYsUuejAARpGk6iRc8SijdfLidNAUH+
 DJI92v4g1YmwMhSL3azCwhNSZcGbyiwlFacrlhRyo151ixRBZa3F47ilD
 bMHvyEHDpVcK0HhwF8AphCCwjSUqp4ix/LZhjtLaPs5GJpkd4T6vMhMCR
 YosfdKPaWFpaMnprB1s6bkPLI8KbEQlD7N1Quxfv8lg+sfY4DCsYqAQiy
 sOcuSsGjQeqDsz8J/YuAV0qo5sTO60l17rnTD8tuuFId2mcesWKiP3ywP
 jDxR6v4CKX7Q4zcS8BicJY+iHY4iNDe+x+BXu4H6COJGkzkkdWjoyTUX9
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y/72rc+w
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 a5ed3a38b257bbe299ad41b9fb840edb69b6824e
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
branch HEAD: a5ed3a38b257bbe299ad41b9fb840edb69b6824e  igb: remove unexpected word "the"

elapsed time: 723m

configs tested: 69
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-c001
powerpc                      mgcoge_defconfig
arm                        shmobile_defconfig
arc                          axs103_defconfig
mips                       bmips_be_defconfig
arm                           stm32_defconfig
arm                      integrator_defconfig
xtensa                  nommu_kc705_defconfig
um                             i386_defconfig
arm                         vf610m4_defconfig
powerpc                      pasemi_defconfig
ia64                             allmodconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
sh                               allmodconfig
mips                             allyesconfig
i386                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220622
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
mips                      maltaaprp_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220622
s390                 randconfig-r044-20220622
hexagon              randconfig-r045-20220622
riscv                randconfig-r042-20220622

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
