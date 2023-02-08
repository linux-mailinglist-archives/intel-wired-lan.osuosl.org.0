Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 635EC68E90C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 08:35:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E84BA6109E;
	Wed,  8 Feb 2023 07:35:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E84BA6109E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675841706;
	bh=6mkFcXQAUFTEGzZ+djfFu97LPRXO8byHCDzVyWYUGQg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KAlw6oJn2KtQ66VhY39ZDyvh8AZFNcDbwd3yPdNDfG+QaycKvxQ0XG4dJOByaXZ50
	 cPjxAH5H6/JNesf7yYtVssUYilh0Y8SNKdfjnKnSb2UcHLQPd3ilW/drgsBwKqwLMy
	 4Z+pKqz//F2Zep029YJ8NpmcoNNp8JpQfavTMjw2mDIIjn1YRrIVldVdxAOwuP9+av
	 vpo7u7r+WQiS51dNHg9uvB8aDN26XKA5CzQPiYToC7dneP9PRJLUVfxIqXzDRCZaJw
	 20cYLIso4/oyBepoVY+0MruVhYs4+e34mo6Na8wuU+GolXWCQWXeY7rGRnweTLovgt
	 YE7bZWTnGdqfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pcMJwJuMjaV4; Wed,  8 Feb 2023 07:35:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D57F96109A;
	Wed,  8 Feb 2023 07:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D57F96109A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA5CC1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 07:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE5406109A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 07:34:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE5406109A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q-QEr9OupKwh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 07:34:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 891B060EB3
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 891B060EB3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 07:34:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="392129781"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="392129781"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 23:34:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="912641448"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="912641448"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 07 Feb 2023 23:34:55 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPeyl-0004HM-0j;
 Wed, 08 Feb 2023 07:34:55 +0000
Date: Wed, 08 Feb 2023 15:34:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e35074.lBkn5SoKGht0D4IB%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675841698; x=1707377698;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6cJC6Jx/Xk3F/6mspB8l4u85ADeHPjUmBF0Qow09qww=;
 b=Ru5hGM69xK1B4Yscqd9ycDIO8fb1smfy9tUS2tMCMLDbjoA/USKsnbxb
 WswW7TGFWlnwzDck3F3ePhwNB4nAp0Z07TZnc8XCtkPJHAiJ6iXhaB9PF
 +JcqgRmrOlQC7dP5t8feir54fBDuuzEgbheDUxUREkb+5GCqf3jp9dNdX
 7tsC/tRoEdg+0T7pkc407AC7zumyo8P8eVDJ866iAhhu50V91uctyPpHE
 BSE3yYIk1BA6DzIlhpMUUi6xWPzvLVJcgRoqtCGIrthJkrdPirRLZWVVS
 9L1YcUpoRIGH5GB4aHSQ6+LaqqJulpJdUiVdlCOF03+0UyV7yJccnsDOb
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ru5hGM69
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5444bf1ab6306df5052f1be6a3f9351114697643
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
branch HEAD: 5444bf1ab6306df5052f1be6a3f9351114697643  ice: fix lost multicast packets in promisc mode

elapsed time: 725m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                           rhel-8.3-bpf
s390                                defconfig
powerpc                           allnoconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
s390                             allyesconfig
ia64                             allmodconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                              defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                               rhel-8.3
alpha                            allyesconfig
arm                                 defconfig
x86_64                           allyesconfig
i386                                defconfig
arm64                            allyesconfig
i386                             allyesconfig
i386                 randconfig-a011-20230206
i386                 randconfig-a014-20230206
arm                              allyesconfig
i386                 randconfig-a012-20230206
i386                 randconfig-a013-20230206
i386                 randconfig-a015-20230206
i386                 randconfig-a016-20230206
x86_64               randconfig-a013-20230206
x86_64               randconfig-a011-20230206
x86_64               randconfig-a012-20230206
x86_64               randconfig-a014-20230206
x86_64               randconfig-a015-20230206
x86_64               randconfig-a016-20230206
arc                  randconfig-r043-20230205
arm                  randconfig-r046-20230205
arc                  randconfig-r043-20230206
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
riscv                randconfig-r042-20230206
s390                 randconfig-r044-20230206

clang tested configs:
x86_64               randconfig-a002-20230206
x86_64               randconfig-a004-20230206
x86_64               randconfig-a003-20230206
x86_64               randconfig-a001-20230206
x86_64               randconfig-a005-20230206
i386                 randconfig-a005-20230206
i386                 randconfig-a004-20230206
i386                 randconfig-a001-20230206
i386                 randconfig-a002-20230206
x86_64               randconfig-a006-20230206
hexagon              randconfig-r041-20230205
i386                 randconfig-a003-20230206
riscv                randconfig-r042-20230205
hexagon              randconfig-r045-20230206
hexagon              randconfig-r041-20230206
i386                 randconfig-a006-20230206
arm                  randconfig-r046-20230206
x86_64                          rhel-8.3-rust
s390                 randconfig-r044-20230205
hexagon              randconfig-r045-20230205

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
