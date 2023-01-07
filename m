Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C955660E3F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Jan 2023 12:16:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15CFA41BE3;
	Sat,  7 Jan 2023 11:16:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15CFA41BE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673090199;
	bh=LdJDzaFJ08pKEQ0QJhhx7Tk80EWspcWuQqWFXXRIkvU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gGQlbmbH7OsmWXhoUOkYqkAfk6/YonjWhKQ7T+9rx/lIHM8oHcw+GqG2vLntxNjdy
	 3gmYEJDweYi9Up9gkSah7l/wI/ClbNl4WQZU9d4aettz3NYpwUGgBbXTMdFKCXZkxk
	 ODzTG4Fnakk5qv6HkG0Pk5H9IpahtocauXV+1YmqDbpgTqCPAFlclobAozul4OQVXn
	 RcAkUNweyVJLgD7+qaLDDD2druaCRRWOplv5HfqLIEFuVt2X10TJxMC3QT8pdTmDgd
	 o+kQQoevgmfG9vpMbs4CiMqlyyYxKKBzSZgRwKRzpe485JKF6Z9HnWHx/aKuQOf59C
	 M67pMfXb67snw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 74kjWNLc-z4b; Sat,  7 Jan 2023 11:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B637241B65;
	Sat,  7 Jan 2023 11:16:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B637241B65
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6ADA21BF479
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Jan 2023 11:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 417C68201A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Jan 2023 11:16:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 417C68201A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xvgJ5gPLZRu0 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Jan 2023 11:16:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AEBC82003
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2AEBC82003
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Jan 2023 11:16:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="310422333"
X-IronPort-AV: E=Sophos;i="5.96,308,1665471600"; d="scan'208";a="310422333"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2023 03:16:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="744881360"
X-IronPort-AV: E=Sophos;i="5.96,308,1665471600"; d="scan'208";a="744881360"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Jan 2023 03:16:28 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pE7Bc-0004XK-0A;
 Sat, 07 Jan 2023 11:16:28 +0000
Date: Sat, 07 Jan 2023 19:16:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63b95473.e9IRKcqkwg/ucZtG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673090191; x=1704626191;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=NRaALqYkZ5pOJ/3B9TMGu87RWxSr6+bWvTdhFa8l3As=;
 b=DfrVbLBaHfES5csynCit6OnU2hkCU1LoWEJ3ogZLrbTGd6LSl7k2uLWF
 XUIiJaRmaS2Ooa5I7B82aREFhImTK2yK9ohnKZ2GIMBXRmOGePtGGmQFi
 osYR1VSP/os1WezPrPiRXzxSylY3eJvSX+70TXDD0mO2LDx/AoI/37gnQ
 o+tYjvdOsHCHoN27WBJxsoCSW5WU9Q9RcpJgh21Aj22IDsHszjrkSoqI7
 BIj3d4NvJ04dvTBWQwf1mGKyOWJ+GSlD0Bd6cCG7Ep7MQdzRsmAA+NFex
 Hf5NwJeSgafjV6SA4CelUShLXLt0OWXl7AHe7Cc38FWMdJrcfwm+iyPj3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DfrVbLBa
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 b5e87f01fdc67439b941b87e944915926bf87dbc
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
branch HEAD: b5e87f01fdc67439b941b87e944915926bf87dbc  ice: fix out-of-bounds KASAN warning in virtchnl

elapsed time: 721m

configs tested: 73
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                  randconfig-r043-20230106
arm                  randconfig-r046-20230106
arc                                 defconfig
um                             i386_defconfig
x86_64                           rhel-8.3-bpf
s390                             allmodconfig
i386                          randconfig-a001
powerpc                           allnoconfig
x86_64                        randconfig-a004
x86_64                           rhel-8.3-syz
ia64                             allmodconfig
sh                               allmodconfig
i386                          randconfig-a003
mips                             allyesconfig
um                           x86_64_defconfig
alpha                               defconfig
s390                             allyesconfig
x86_64                        randconfig-a002
s390                                defconfig
arm                                 defconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-a014
x86_64                        randconfig-a013
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
powerpc                          allmodconfig
i386                          randconfig-a005
i386                          randconfig-a012
arm                              allyesconfig
i386                          randconfig-a016
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                        randconfig-a011
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                        randconfig-a006
x86_64                               rhel-8.3
x86_64                        randconfig-a015
i386                                defconfig
i386                             allyesconfig
x86_64                           alldefconfig
sh                          rsk7264_defconfig
m68k                        mvme147_defconfig
arc                              alldefconfig
mips                           ci20_defconfig
arm                        cerfcube_defconfig
powerpc                      ppc40x_defconfig

clang tested configs:
hexagon              randconfig-r041-20230106
hexagon              randconfig-r045-20230106
x86_64                        randconfig-a014
riscv                randconfig-r042-20230106
s390                 randconfig-r044-20230106
i386                          randconfig-a002
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a005
i386                          randconfig-a011
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a003
hexagon              randconfig-r041-20230107
hexagon              randconfig-r045-20230107
arm                  randconfig-r046-20230107
powerpc                 mpc836x_mds_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
