Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D905E667157
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 12:55:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77664405CF;
	Thu, 12 Jan 2023 11:55:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77664405CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673524516;
	bh=zCvfnGlR2DBZwXGw9qm73XBwqR8slajEbEQWM2q+R00=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=D29rEa4v2au4D7dD/YihhAX8oLSJQqnoIF/fEXVHQXZAyP/cKBDchgIoYPKqmoYuq
	 5M2OTUFFY1b+uVy9cL5e+wUA3asikF80yzvP497r5KeT7GHqLGHG0RPdMdn5KKqRvj
	 z88PWvhMQSClFYOX5roSBV9u655UWhn78bEnwtKwTqkTqvBPqy8wpXjLopl1/X7E5X
	 qBd3hEhzpXx83OviwaBi+5c8a0QJhYfXvuG00JZ4IGbMHqrMXwx5XLK6tPKaxw5UE8
	 1i+4DEIwz0WimCHH9gjH79AV2dG4i/liB1Ij+XfUyiXva1daMauPy0yl4XG5CU/kJy
	 uqugHHXOhnL4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id owy7HDSMRV6m; Thu, 12 Jan 2023 11:55:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B3E240522;
	Thu, 12 Jan 2023 11:55:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B3E240522
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 485041BF35F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 11:55:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23B2660BFB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 11:55:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23B2660BFB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wfKM4BkkyIIv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 11:55:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 370F560BC8
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 370F560BC8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 11:55:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385999966"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="385999966"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 03:55:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="800176042"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="800176042"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2023 03:55:07 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFwAj-000A63-0Z;
 Thu, 12 Jan 2023 11:55:05 +0000
Date: Thu, 12 Jan 2023 19:54:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63bff4f6.2fmBkXe/lioDxZ/n%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673524509; x=1705060509;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZsXIQ5r/CKuppx177BIYf76by8FGg72spEUaL9KyU+0=;
 b=DTaEGKKs5paI0Dbxlaeusyj9vvJqVyt//zAzqCpOdeCXysPIQ91vLMh4
 sF8AsF7mxabHxSVTEYfYwJwRStPnzSY9ite/OM8t+bb9wxYi/3Z9W2tzO
 YhY4Cs27NCksAj7m4VQYcl0Z8UnwZ9sNBUzmXrwnLg/QbNv3Au4NyhKgH
 W8wTNv0RkuntwpmSOan/9NrDP67dM8sdJMij0cMlLhkq58VOEF069BKXC
 erZQeQ9ktrXYa7fPuFlw8M91npDegjKFtjGxiXb+CwCSYqrp32PnPQGJp
 9HkR47yvl+gPQpGsGr5VZ59RHsL0rwTFgOomNk8Pkid8d4AVuI0jkkIJq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DTaEGKKs
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 c2bfc4e555ddaae7accf242dd853d9f4eb542a33
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
branch HEAD: c2bfc4e555ddaae7accf242dd853d9f4eb542a33  iavf: schedule watchdog immediately when changing primary MAC

elapsed time: 743m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arc                                 defconfig
x86_64                            allnoconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
s390                             allyesconfig
x86_64                        randconfig-a006
i386                                defconfig
x86_64                              defconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a013
x86_64                        randconfig-a011
arm                                 defconfig
i386                          randconfig-a005
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
um                             i386_defconfig
arc                  randconfig-r043-20230110
arm64                            allyesconfig
x86_64                           rhel-8.3-kvm
um                           x86_64_defconfig
x86_64                           rhel-8.3-bpf
s390                 randconfig-r044-20230110
x86_64                        randconfig-a015
riscv                randconfig-r042-20230110
arm                              allyesconfig
ia64                             allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a006
hexagon              randconfig-r041-20230110
arm                  randconfig-r046-20230110
hexagon              randconfig-r045-20230110
x86_64                        randconfig-a016
x86_64                          rhel-8.3-rust
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
