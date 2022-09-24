Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6105E8DD2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Sep 2022 17:26:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD8B161087;
	Sat, 24 Sep 2022 15:26:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD8B161087
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664033209;
	bh=QQgOHe35ioES4qm4n1aN0PQdd5AM17RMgPetf+1NW0c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Pa8Ymy6B8PfWvkweXvwCzlwFwikMU7zoA9i88VDhMom6t975cQzoVfZSU8gzS2UCK
	 yr2nyXx3WrlvHk5uoyampgcdm42TH0EbhemBfFz8MMVLCx1bmXFQt3w10RDGevTnFF
	 PLcHnkinASv0VN3hlaVb9bxajNVnROYfx7Tl9s0o9IPgrmAXriu+U64wzPXW70rjoJ
	 BP7Xp3xA0BNlTSyzRWycSA3Lf2WNKET0RCXgE6Nzj2bJFqE4xLDZO5f35SGb/gTanB
	 pl91v3XY0PfrOp2cA5FUaR5Bo1Wx/kzUsPgSbkG+lWerqlcjoSh1RMtyjF1WroAUdw
	 AhMPyO1/tqf7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kc8Ee-FtYw0S; Sat, 24 Sep 2022 15:26:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9898660BBF;
	Sat, 24 Sep 2022 15:26:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9898660BBF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA52A1BF852
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 15:26:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0EEA41D14
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 15:26:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0EEA41D14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A4tmHMKINpKd for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Sep 2022 15:26:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A28741D12
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A28741D12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 15:26:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10480"; a="302243535"
X-IronPort-AV: E=Sophos;i="5.93,342,1654585200"; d="scan'208";a="302243535"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2022 08:26:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,342,1654585200"; d="scan'208";a="709642069"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Sep 2022 08:26:39 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oc738-0006ho-2v;
 Sat, 24 Sep 2022 15:26:38 +0000
Date: Sat, 24 Sep 2022 23:26:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632f21a7.q2WuraMPI/Lbitns%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664033201; x=1695569201;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZQVgLBbM+DKQ+iPrK7SMG3PuFk0LvV2apqRGcGEP31c=;
 b=Pfp5+AFs61r2SMlkMjZl7CHgGRl/hURAdpf932fx8W7Cu1hkeP6KhgKP
 hi+ccIIEmA0RYhNO8OxdlyAxpadQB2tE3ZRbS8elwcKVOUIktD+1Zq8F1
 7cE7fjwJv3JhCmWapWmURuVqtV05zj1NesVGepNyC5ixDt+b4f1UpucXn
 fl5fteu6MMvxttjcpxNasBlqn7QCy+4qx9/ywslTOFkbmCk2+zyvDGgtC
 k/p8caKN4h8AHWZ5gsasvG9A+52obF/+Kdk4e1/dQA5QhHxf1U1DsKe1s
 O1OY5gGp9wtuFKxo1cjumOnAy6oVQmXgcpTGyOl4p5ftfrQDEPla1EIti
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pfp5+AFs
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 8cb61616b04936db9cd9ba520e244affe1cb40e2
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
branch HEAD: 8cb61616b04936db9cd9ba520e244affe1cb40e2  i40e: Fix DMA mappings leak

elapsed time: 1383m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
arc                  randconfig-r043-20220923
riscv                randconfig-r042-20220923
s390                 randconfig-r044-20220923
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a004
x86_64                        randconfig-a011
x86_64                        randconfig-a002
x86_64                        randconfig-a015
x86_64                        randconfig-a006
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                                defconfig
i386                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
ia64                             allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
hexagon              randconfig-r041-20220923
hexagon              randconfig-r045-20220923
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a016
x86_64                        randconfig-a014
x86_64                        randconfig-a005
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
