Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0FA65D310
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jan 2023 13:51:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71D3A40488;
	Wed,  4 Jan 2023 12:51:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71D3A40488
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672836662;
	bh=oPEkw0WT+c/9UID/OQ+/l5nUsPpAEku/d+kaQUpRXTQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tESyTOpHNtFYHEQ+iCEs1oN982VDRfpSUPcwiuA/8BMqPEChdDT2ovZtt2ralL/oY
	 8yOPi51C/6byJdRGbrPNxC2fzybYMOKKycR33Hibe9kkC/bm9NvNWHCZ3p3i3ogt+3
	 vzLXb6OTMIWqxOhC6x+6dj7hJ4KzSoFiOdIES4kCPWRJ6JtuC+STlR/5VqtvtEn6Mt
	 RkwL0viLAJp1c1KPtnXTh22MPYwUrhpPvL9rcKJevMWGuXb59XKe0VN3HH6gk9iIWD
	 TDYH9S6IsYpsAfkjwWm40grozdwpgSA1CjSVp59uWNM0bVdPcfN4M3Y1gRZ1khnWJQ
	 k2CqxyxV8hH0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i2Wyr7FESny3; Wed,  4 Jan 2023 12:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5185A4012B;
	Wed,  4 Jan 2023 12:51:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5185A4012B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 374491BF406
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 12:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0FF3E4148D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 12:50:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FF3E4148D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3TPinksz-7It for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jan 2023 12:50:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C311E408BF
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C311E408BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 12:50:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="301616555"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="301616555"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 04:50:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="657101338"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="657101338"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 04 Jan 2023 04:50:50 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pD3EH-0000Mp-28;
 Wed, 04 Jan 2023 12:50:49 +0000
Date: Wed, 04 Jan 2023 20:50:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63b57601.q83R1hDxBlSyvBht%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672836655; x=1704372655;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=YomiDl1mDI6lcii3ZOo+B+oD/fW6ZX4S3xfbAETblpc=;
 b=XpFs8ZUUxZXTsy8rkTcLWHnJA8gnCGNr3gPULvtP6gg9i4Nkde3wzbsW
 E+bwkAdTO+UkTFuamhI8FSUzrsu+Md7fmOG0Cj0HhohOxIpno3HAqKdWj
 VG3aEOgr95ZGG7tsFEDFcfye/a1gLYCzXD9n7q+MGj0v7EDPqvyLIxjTw
 URlplNcbTTplFpPxloOJ8ZS4cafngf+vnWTHEsB1lZ0/B/RfjEiFq5tTd
 jH03sA7ezhQk3FiT71BMpDQyBBQN4JR/9esO9hXSOOf4W7zChO7Z6vdaP
 8/cCa/1um1pvIbsQ4NMPjZrQHNOyfJOoBdXhO91SxUF9R5LGnNl+ybjVY
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XpFs8ZUU
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 9bcf7def03f6094b388f7aa12fe4aed2812e7627
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
branch HEAD: 9bcf7def03f6094b388f7aa12fe4aed2812e7627  i40e: Fix crash when rebuild fails in i40e_xdp_setup

elapsed time: 721m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
mips                             allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
arm                                 defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
alpha                            allyesconfig
i386                 randconfig-a004-20230102
i386                 randconfig-a003-20230102
arc                              allyesconfig
x86_64                              defconfig
m68k                             allmodconfig
powerpc                          allmodconfig
m68k                             allyesconfig
i386                 randconfig-a001-20230102
i386                 randconfig-a002-20230102
i386                 randconfig-a005-20230102
i386                 randconfig-a006-20230102
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
arc                                 defconfig
s390                             allmodconfig
x86_64                    rhel-8.3-kselftests
alpha                               defconfig
s390                                defconfig
arm                              allyesconfig
s390                             allyesconfig
x86_64               randconfig-a003-20230102
x86_64               randconfig-a001-20230102
arm64                            allyesconfig
x86_64               randconfig-a004-20230102
x86_64               randconfig-a002-20230102
x86_64               randconfig-a006-20230102
x86_64                           allyesconfig
x86_64               randconfig-a005-20230102
i386                                defconfig
ia64                             allmodconfig
i386                             allyesconfig
riscv                randconfig-r042-20230101
arc                  randconfig-r043-20230102
arm                  randconfig-r046-20230102
arc                  randconfig-r043-20230101
s390                 randconfig-r044-20230101

clang tested configs:
i386                 randconfig-a013-20230102
i386                 randconfig-a012-20230102
i386                 randconfig-a011-20230102
i386                 randconfig-a014-20230102
x86_64                          rhel-8.3-rust
i386                 randconfig-a015-20230102
i386                 randconfig-a016-20230102
x86_64               randconfig-a011-20230102
x86_64               randconfig-a014-20230102
x86_64               randconfig-a012-20230102
x86_64               randconfig-a013-20230102
x86_64               randconfig-a015-20230102
x86_64               randconfig-a016-20230102
hexagon              randconfig-r041-20230102
hexagon              randconfig-r045-20230101
hexagon              randconfig-r045-20230102
arm                  randconfig-r046-20230101
riscv                randconfig-r042-20230102
hexagon              randconfig-r041-20230101
s390                 randconfig-r044-20230102

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
