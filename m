Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4009580F77
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 11:00:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84EA883211;
	Tue, 26 Jul 2022 09:00:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84EA883211
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658826018;
	bh=iU69TAo/y/lyTFxZoyMHcNqRym0lK1rtfaN7XjFK7Fw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Za8rzWkxOi1WOl+N/zWEFaYmwJGZWICA5gRrXLNhDgNZ9pTHiLRVh6AesIesKwjB8
	 HncHHc8ObG+gbpmhJyQrAKw8XIxGjpJV6/Vu1CJUIuObykjBua9LSpJSPvix+rw+MR
	 fYA8qB44bUjGOS6/MsT0QIAyYE2l/22+AoOKs4YkcI2cPgS/SEzBATEByaEUjvWzYS
	 zwhhN/WYirERIjpO5KDo9WKnzP/TP1whaGraFCjxDvWfJgktnxqQA08R9DA8qILTD5
	 Jv0B6JHHMQK30U/jOndPpRJH4p4QbSQMM49HbH84GzrqZGE0wCdXT+Hc76NNA1PFbB
	 tLKFWTW+N+9XQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gcJHbgTLJG9A; Tue, 26 Jul 2022 09:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B69F8308A;
	Tue, 26 Jul 2022 09:00:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B69F8308A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 76BD01BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 09:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F4C48308A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 09:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F4C48308A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eOS98ZoW06Ev for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 09:00:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 324F783026
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 324F783026
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 09:00:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="349602085"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="349602085"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 02:00:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="550324359"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 26 Jul 2022 02:00:09 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oGGQA-0006dY-1Q;
 Tue, 26 Jul 2022 09:00:06 +0000
Date: Tue, 26 Jul 2022 16:59:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62dfacda.rp8Xq6vF2lSYrfXA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658826011; x=1690362011;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zPy3leKsfwKzBt96XCdsfqlQ4Yt+aSLL4XhbgS1RSoM=;
 b=d/kH5vmm61IEf63gLb4DEksSJLN2UBcoCCk0fZ+1TIJ4vtZn4hCC46O5
 LQnh4VDyu9H32EkNHfx019DdUXNiIp410opaykeNGkjSy/0W4UhUqEG1M
 p8JeZQTrMaxPoqtMH84FFM/JN5OekYG3/gQDHnCV/4QT37wtV1W9Mo/1O
 OpRjyzyBST2xpE/9Og+wghRmLIWyGpa5UOHoJLuh2BSIo5/6ihk+j9B5n
 x3On//g9VOnJcUJtcQEMUA8v6rfFGe8ThbV4rvpfgrqHCXQ/t0YuJJnkX
 ob7bhp6iqPJNZOvE9Tdoet2PIBB9OBhAj2aVB58rffTn8T/7D2qgBVMt5
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d/kH5vmm
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5245eb4f3cf8ba1e9e0e6d58d810eceae9edc0c1
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
branch HEAD: 5245eb4f3cf8ba1e9e0e6d58d810eceae9edc0c1  ice: Document txbalancing parameter

elapsed time: 723m

configs tested: 74
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                            shmin_defconfig
parisc                generic-32bit_defconfig
mips                         rt305x_defconfig
loongarch                 loongson3_defconfig
alpha                               defconfig
loongarch                           defconfig
sh                             espt_defconfig
m68k                                defconfig
mips                           gcw0_defconfig
mips                         tb0226_defconfig
sh                     sh7710voipgw_defconfig
m68k                          atari_defconfig
mips                 decstation_r4k_defconfig
powerpc                      tqm8xx_defconfig
powerpc                     tqm8555_defconfig
mips                      fuloong2e_defconfig
arm                        oxnas_v6_defconfig
ia64                             allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                 randconfig-r044-20220724
riscv                randconfig-r042-20220724
arc                  randconfig-r043-20220724
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                          moxart_defconfig
powerpc                      walnut_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                      tct_hammer_defconfig
x86_64                           allyesconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
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
