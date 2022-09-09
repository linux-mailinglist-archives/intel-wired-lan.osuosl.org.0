Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6D55B35F8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Sep 2022 13:03:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96411415D3;
	Fri,  9 Sep 2022 11:03:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96411415D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662721403;
	bh=bQgV7FVwV3Jx6/XBkfZWKxsuzjkVKB5gp758WTiPXPo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AixILgnYaztKOB3NvOhbTjoSJI5A779U848Wkfd+fMgh1RFypw3SVXRFqxo78q5Vv
	 oVUc1hvjKlK+lns96pHXjfPki5hzldt0xta7sgTxMjNw/1tX6AWBsWUm938+9cJ3dc
	 R1BYFme/jHpr6YOktdqjhlcIEQzJB0WJDrkxdhIFS0xavUm65NqFHuW0uxBPuTNHP8
	 kczkvHBQAsGjbYqP0M7ZbOWoxQchSCXKrkGHd0TNsTONnhgN4sctWTb+i35X2YwTCu
	 DJm/kIiq4SXb7v7QqrDaIHKlm/LQmaCtJZydJAYgTu+CLpDpkXd2aFaZzPSOlLfSqh
	 dz4xSoE+eQzPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y_g7r0OlUl3H; Fri,  9 Sep 2022 11:03:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D68240222;
	Fri,  9 Sep 2022 11:03:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D68240222
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79AB91BF327
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 11:03:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 52F43400A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 11:03:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52F43400A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-FToGi9jP30 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Sep 2022 11:03:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00C1F4019F
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00C1F4019F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 11:03:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="297450113"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="297450113"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 04:03:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="645497109"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 09 Sep 2022 04:03:12 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWbmy-00015L-0U;
 Fri, 09 Sep 2022 11:03:12 +0000
Date: Fri, 09 Sep 2022 19:02:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <631b1d41.xw6K0JM0QYN7bCZQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662721394; x=1694257394;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=RmsVMoPJAwp0y4I/sWkwnNVWfG3wFzJBi/Y9bqMAvkg=;
 b=PnqclA+GcyEZHj9cqoAEOLyYqDnmlaZbP0k6e2R2jSGbTdf/Y0Cd1CYT
 XKJy1KrljN6qBJsnQsM50COv6mS894pQfv9nrXSJAbZqMMq+nz4qFEkrJ
 d9hZQ1XHAqXyuDAeFioNizdZol3VuyFdJFTGT34j9Vu2mXDx1kJpTRvie
 k1cPf9zqxvAfDv7mNkyHDeODzk/PmV0hN4IfIBT/ETQiFcl3Cgp0ZlnEG
 +JQM43dt/QmMn+Mr9wN7zK4imYU7AS1K4w/OCKixeOnQEMGX9f8J/ju1p
 spXyc63OkTppTN82RoM68iUr7sa0aKpj5cXjiTwX9cNC709OFtgTCNTmq
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PnqclA+G
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 2c5e5abf1c4278d5768a79b6bfc7d54cdc96e8df
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 2c5e5abf1c4278d5768a79b6bfc7d54cdc96e8df  igc: Remove IGC_MDIC_INT_EN definition

elapsed time: 1021m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
m68k                             allmodconfig
powerpc                          allmodconfig
arc                              allyesconfig
mips                             allyesconfig
alpha                            allyesconfig
sh                               allmodconfig
m68k                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                                defconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a004
x86_64                        randconfig-a015
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                             allyesconfig
arm                                 defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a014
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220908
arc                  randconfig-r043-20220907
s390                 randconfig-r044-20220908
riscv                randconfig-r042-20220908
mips                     decstation_defconfig
powerpc                     stx_gp3_defconfig
sh                          sdk7780_defconfig
i386                          randconfig-c001
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a013
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a015
s390                 randconfig-r044-20220907
hexagon              randconfig-r041-20220907
hexagon              randconfig-r041-20220908
riscv                randconfig-r042-20220907
hexagon              randconfig-r045-20220908
hexagon              randconfig-r045-20220907

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
