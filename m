Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A62C9695EC6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 10:19:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF341605B3;
	Tue, 14 Feb 2023 09:19:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF341605B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676366350;
	bh=DWmgK74kWU0985Jil41ld6DeNnEMicmmo/2vLOPkscQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xZmn3bdt7O7def06gwZkcsgden8NrZqVAjRGPXmHIkhMXIJvUpQp1s0aOH69tNzyZ
	 0qhnPR3bcsSfi4CDyDGad1PTHqglWUz60ZpYA4Lzz6tRQ9VJ4IeaszAf6mfMx9Uhg3
	 QLp7w1+8hXMS3pdMeNSeM95+GDH6QBxLDfcDobqsOizdlN+tH2256QQybcyxlxhxCL
	 bUwzGpMcIdu7l8a7s1q8JJZ3FTN8pwAgxUtqra2KSgA2HyCCdry7zCu93RNAvHVLhq
	 230RdjK/BoWyKyHn6Z0U9JM3dQ7Ozh/paVPUxBvvIwpKaAk0eJJJjMd7j82bKcawbk
	 XN7k9uHWL7XQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h5lpcJVmoIY5; Tue, 14 Feb 2023 09:19:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3EFA61069;
	Tue, 14 Feb 2023 09:19:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3EFA61069
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B839C1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 09:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 918B840ACD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 09:19:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 918B840ACD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TvcHbJRseyoC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 09:19:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6E07405F4
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6E07405F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 09:19:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="393520685"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="393520685"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:19:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="914679186"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="914679186"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 14 Feb 2023 01:19:01 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pRrSn-0008MB-04;
 Tue, 14 Feb 2023 09:19:01 +0000
Date: Tue, 14 Feb 2023 17:18:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63eb51d2.EzM+PQGQZcB+YEz0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676366343; x=1707902343;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3ZFbEO3gVDucVaL27XMMrOLMFli2MD6aJN7F/ykqiA4=;
 b=Q+b+DWQ0rNyvrvsCefFQ7P0x1yKFwVas4aJx3DlgUgC1/Cx9zFMzevHI
 Gg5B8cTXy3vln3tjsLAAo9Ni/A6GFT3sXp4gYvYVTRc+FU9TpVNv7aXJQ
 Sq1qhpVcIX7DSjphiT2dD/inR9pf/xFwaZnh+65PUvJ+p4Ut9fZkI32EQ
 uJ28n9+doOCTgobhEgmNMOTRPq0LMxZMginEYtsWL9cXhHMnMGy6aXGFK
 De7cXxRKC5TzpVl+V+ZbnUk2NAj2+0QRp2D7ZDB3iQi21npXLQ57vDmos
 8dBaN5h35FturVdpBkaIZ+M+5vuEP31FhOwHd9T/lqsOcK4Dp2f2AMojk
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q+b+DWQ0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 43fbca02c2ddc39ff5879b6f3a4a097b1ba02098
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 43fbca02c2ddc39ff5879b6f3a4a097b1ba02098  ice: fix lost multicast packets in promisc mode

elapsed time: 871m

configs tested: 42
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
