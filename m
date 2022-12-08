Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA4D6471BB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 15:27:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1278541923;
	Thu,  8 Dec 2022 14:26:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1278541923
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670509619;
	bh=OeFTJ1IN389oT0VlEaB1qcTEadN+3i3YMfmqLB/UXxk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=J0jeBiQ2AyQsrQRixLqViaFS/8/vAKFQuoD/b892C2cQ4xo9v+QU7qo16mBt23c18
	 d6SWmANzXJY5zn+IGJrARaTXNB8/h7X9CJOwOSromGsMaspSpSYMa0N1VEp2vKUaR+
	 /CO/lgpBS/l7X3vMJL63IEjm03qtregk8AJ538xI1PdE2/Jg3fiGBoIdrAQ9y+5AED
	 oE39u63OLl1wjncYssA1dYjBI/J5egK/dBxRHGE8eavGYLec9Tp8DeH8G99sfg+Mbe
	 /KTTOdu5wvLEHHzJ/BhhvsFE7LemdvSt7YU+AgWfJ/iPba4/b+LsSU7N8kQ4LqKzkJ
	 3v71aYp9moQhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HlFV_HfO_pxV; Thu,  8 Dec 2022 14:26:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2997041908;
	Thu,  8 Dec 2022 14:26:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2997041908
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C6CDF1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 14:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A07438205D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 14:26:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A07438205D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NGAuS73inPC4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 14:26:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 983F982057
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 983F982057
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 14:26:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="314829596"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="314829596"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 06:26:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="975877091"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="975877091"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 08 Dec 2022 06:26:46 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3HrJ-0001CX-2N;
 Thu, 08 Dec 2022 14:26:45 +0000
Date: Thu, 08 Dec 2022 22:25:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6391f3f3.s/ktmFQkDTi2m8WY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670509608; x=1702045608;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=02xoKomJ/U0DukduLWu603NbkhAt2e7qNDEYu1ElgBc=;
 b=DURYmjI4yBGwpL0QcmxEb54RiDa+2ZNxcZpvtpDxatTpmKwp0qI/gHeV
 N1xjz7L6PTVUDPkuc/E7VQGAIZix8koHgP4fHvdJH7NCblgOoqeiX8IqE
 AbVjuWDyJ4iwoS93kEw4VHWdWDggO2VooySir22DNw7n9gHkg/3tPOLo3
 kFd3eQL7DPk5tbVdykbHk8g731MhMtyMVWfKqxBPauZngIPqCt/sv2haz
 /0kH112MPjIT1HzBP64cR3U8jEAbzA1n+oT+c4RHFuNU1Vl2Pfz+qAXP+
 m7DbYB166VIlS5nc/vPGhwpFXIxfI2Tf1IN/Oz84dvu1C+V53P25X1k+d
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DURYmjI4
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 833f555ad4c64770f948880d57972e766e51ed77
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 833f555ad4c64770f948880d57972e766e51ed77  i40e: Fix the inability to attach XDP program on downed interface

elapsed time: 721m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                           x86_64_defconfig
m68k                             allyesconfig
um                             i386_defconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
arc                  randconfig-r043-20221207
x86_64                              defconfig
i386                                defconfig
riscv                randconfig-r042-20221207
s390                 randconfig-r044-20221207
x86_64                           allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                               rhel-8.3
i386                          randconfig-a005
ia64                             allmodconfig
x86_64                           rhel-8.3-syz
sh                               allmodconfig
i386                          randconfig-a014
x86_64                         rhel-8.3-kunit
i386                          randconfig-a012
x86_64                        randconfig-a013
x86_64                           rhel-8.3-kvm
i386                          randconfig-a016
x86_64                        randconfig-a011
i386                             allyesconfig
x86_64                        randconfig-a015
arm                                 defconfig
mips                             allyesconfig
x86_64                        randconfig-a004
powerpc                          allmodconfig
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a002
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                        randconfig-a006
arm64                            allyesconfig
arm                              allyesconfig
x86_64                            allnoconfig

clang tested configs:
arm                  randconfig-r046-20221207
hexagon              randconfig-r041-20221207
hexagon              randconfig-r045-20221207
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a013
x86_64                        randconfig-a014
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a012
x86_64                        randconfig-a016
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
