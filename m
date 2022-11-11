Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AEA625898
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Nov 2022 11:45:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EED6B60A84;
	Fri, 11 Nov 2022 10:45:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EED6B60A84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668163514;
	bh=LYO6Hnijl/SbSWm0Hf9yZDZWeO9E6HXJB+BXQd27Yck=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hqfoA+K2TE9lT6SG3D3vyOVbQsnDxw6YTYixMC7vhTd+RfF2u4owHZIbbNKofXFgk
	 6wo9UEaPCmYIEPevFTuNhZOOfncrY6wDmc/30zHPD5KTBRNkNhtGZDGRt1NyCkj9al
	 0DPdUN+iI8s0HKkL+iXNLfmQwsT85yD0K7ZwNeB+tzeU/dDPs0ws5cQBf+R7bixN6r
	 1Tq0YFm/Yj8i2j1gnaJ/zmwueE1PRNKBMyKPZYt1RRjQDEVshWreScCpUANZkN5mbi
	 V/aPAo3lDsAm5lrBIJeblWF8LUIIuUGqvbgk9eYB9a02Hopwlq0bgJSE42BJgtaple
	 AtFlEfm8U4DHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H9rbzQExUPYv; Fri, 11 Nov 2022 10:45:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E231760B26;
	Fri, 11 Nov 2022 10:45:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E231760B26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33C7D1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 10:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DA414015F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 10:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DA414015F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wvqaRw2NesJf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Nov 2022 10:45:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BDE3400BB
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BDE3400BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 10:45:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="310288111"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="310288111"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 02:45:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="668777132"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="668777132"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 11 Nov 2022 02:45:04 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1otRWx-0003rh-2N;
 Fri, 11 Nov 2022 10:45:03 +0000
Date: Fri, 11 Nov 2022 18:44:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636e2787.f7+GcwBg4RixPUyO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668163506; x=1699699506;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ho5f/j4FG+3Hnz6b25+1Z7yuOzqUA0XZZEALQJChQsQ=;
 b=I9QteYlGNbRApv7N+uALPFdX+z4MzTuLWntmReAfK5WNMuf5S0mPnrVS
 Cev+SZo3fFnfHtcKrTw5nAWC6Rrwn3JnLigYmCg2CFmGQ0nT5jyrfhz59
 YqV9TLCZjU5Sio0F1Wz1WQIB3oEPAIOgJvIUfeg7vhxCMCN9h7ZMc4ttk
 +/Y2YVjXUZVm1AgXGEAd8MkyKyUmt1et6bnrKAtEXdnD/RKB+R/X4sNEW
 qRZFX4RGv47qw0u6Ll5cvkb046F74GUHTWCvuYbm50Vs+hKZ773aBg/Rr
 8vqLMtsci33OzdZSIPqzSlP2SJM7LVU2OrOTAj9YoxUnFtNtFINNB0Iq1
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I9QteYlG
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 aacee9e8cf1b66b37b8218cb646c2541af31c680
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
branch HEAD: aacee9e8cf1b66b37b8218cb646c2541af31c680  ice: Support drop action

elapsed time: 736m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arc                                 defconfig
s390                             allmodconfig
powerpc                           allnoconfig
x86_64                           rhel-8.3-syz
alpha                               defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
s390                                defconfig
s390                             allyesconfig
m68k                             allmodconfig
ia64                             allmodconfig
alpha                            allyesconfig
m68k                             allyesconfig
arc                              allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                              defconfig
arc                  randconfig-r043-20221110
x86_64                           allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                                defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                             allyesconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
riscv                randconfig-r042-20221110
hexagon              randconfig-r041-20221110
hexagon              randconfig-r045-20221110
s390                 randconfig-r044-20221110
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
