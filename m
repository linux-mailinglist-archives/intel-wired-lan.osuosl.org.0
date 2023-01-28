Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBAF67FB27
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 22:33:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2750F40990;
	Sat, 28 Jan 2023 21:33:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2750F40990
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674941583;
	bh=edTAICBd/UEsqBa2J5QuJJBEpI0uOG26j0pWvj3q7yA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=apXKBGcZz/+fAXy2WxO40hILw5U/Ug2k2ah2t/IcBzEv7LVt/oBV/Xhqk49ofTQ7t
	 YFI9xMJRirGDJdWjzRV+XZJo3ndiGh4hxPMikzuseaJRsEXlVkc62tu8MvaAPJiFkZ
	 s1TcppczZ/ZLCCufsUAOdULOkKkru9WOlwSCrSJy72xhFAfeFXyCVCbX1xOtEe6ii2
	 rJGunNAcV66KuDvFS2KxzP3SjPQShGQputsmI61pBxrMTzeM6DY7kcfeCpoY75eNKX
	 bGID35X/kQf+7Vob3PEK0KDoxWr+PCx3W1a3gQ5iPlgdwzSa9qT8/bngX6ZTYjkD3j
	 gGOt6CxrCA4RA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FZwHon-6Bl1S; Sat, 28 Jan 2023 21:33:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A25C408B7;
	Sat, 28 Jan 2023 21:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A25C408B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DE5F1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 21:32:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3479581B17
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 21:32:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3479581B17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wsAwANEYj_iK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 21:32:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FF848140C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2FF848140C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 21:32:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="391894625"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="391894625"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2023 13:32:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="663665005"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="663665005"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 28 Jan 2023 13:32:53 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pLsoe-000186-2L;
 Sat, 28 Jan 2023 21:32:52 +0000
Date: Sun, 29 Jan 2023 05:31:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d5944d.JAaqdwPRyCeWV2/y%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674941575; x=1706477575;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/VtN2hpJ7RgnDKepQ4gTMuufo5N9j/alHg0khbIJbh4=;
 b=GBCjKHhKHQm7QeLpP9eMUO1Vr0Z+2WdfTdizV6QavFRbxTvRkswf7++R
 tdnzya71bnDkEv4JmCLIH1vxcfT4H+2JWzNEqTQhYCxQR8FZ8SsjyDPtU
 DF6f6BSeLDdUjSS9pzTXWL4wjKt7dRtnbrUGxuhkGz7rw3a0J8x6GdIRr
 PQPOu7JO8i2ykgW3eHsEBMYdRe/RGz3W23q9cNzxC/n0SYSJWQm3jBFg9
 QpmXl8FtYI3x1Iz47WOabgtiJKWoVzxxv0kwE9Qb8YMWQp1y5Ak89zQtA
 UDNxjggKhAU47D4t6zbYoza0wxVVu84sk/VkxP+m62tuDRhTQ6BlzGQdL
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GBCjKHhK
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 adf7aba3ecfd01c0125ada15475bd681b2a163a5
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
branch HEAD: adf7aba3ecfd01c0125ada15475bd681b2a163a5  ice: Fix check for weight and priority of a scheduling node

elapsed time: 1165m

configs tested: 29
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
powerpc                           allnoconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
sh                               allmodconfig
m68k                             allmodconfig
m68k                             allyesconfig
alpha                            allyesconfig
arc                              allyesconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
um                             i386_defconfig
mips                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                                defconfig
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
