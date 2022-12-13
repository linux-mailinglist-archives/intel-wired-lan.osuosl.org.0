Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFE564B124
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 09:29:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 208AA4048A;
	Tue, 13 Dec 2022 08:29:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 208AA4048A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670920170;
	bh=BPulCZSAn9ZFRsWQTaRbIEix5hrDQGlpr7DmmpWqN5g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vRWdvUcC0jQ+/nlfNwCX0erS+HZq4bc5VR/dVoUVRW2Z5a1Jm70l5ptbazeGk4fvh
	 e7bZDXzxK9cirHtdIR3Mkd+4VKwOUPcvPtDOgYyho7MGteHKH7c/dSb4b5OvIoIojp
	 5Ze3T3mU14n21+RNJT6x5jTXI+A5k/8YRaX2tXR5WmnOO9QeaftMgidK5fmqUS7sGQ
	 p8h++JkcatGxXobxqQaAp57pFGZD83B2M3Ehyz4NEdD2WAKJOw0Pc4H27gXKXJTT4F
	 z/o0yTZMNTzzGMHvwmZWm9OKoWSa0Nf//PN/SjiwFypMAH3aMdBR5BDTX8woRXHbwY
	 EZ4tV8jjYTZNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6PB_rto-8DP0; Tue, 13 Dec 2022 08:29:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B09540105;
	Tue, 13 Dec 2022 08:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B09540105
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 458DA1BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 08:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D75C80F44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 08:29:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D75C80F44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KAA0yc1dy55c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Dec 2022 08:29:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB09B80D41
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB09B80D41
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 08:29:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="297755261"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="297755261"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 00:25:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="712004884"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="712004884"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 13 Dec 2022 00:25:54 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p50bp-0004Bz-1L;
 Tue, 13 Dec 2022 08:25:53 +0000
Date: Tue, 13 Dec 2022 16:25:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63983707.w/jxI9IT3oQVR2j0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670920162; x=1702456162;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=djV2NwRmQsRCONS6zgsWTPmwfXiZyhYS/82PCiPOiXI=;
 b=eIlT8HQ1OZ5UiKnFJUzEN9g3fRjarx6VwivrwkW2RGxRH/rfYFxltvHh
 7BEfXSfqzasdFNxGCaQWq+JGyPiRBiIn7Ue8/t4JgX32zs3g3fbvMtpsD
 Gzty/bMvIj3d91suosYoy/hpV0fgXk59+B0cuPzEHYUVXrGW15ziXOVCj
 9d9wN7jUa80T3YCS1QoYpTj8ufvbvoVb7tdgoVEroXIt3AKEpw5E3Nx7t
 lXjIugTImSU2onQgmPN2RGd7/V+O0JkhWxUZbNICaOXjL47FC7Qp+bqVo
 5gO/mdPFI6LiVzc4csL3IUcCtom0XTFEMqky3hUmUhntGrT5pMWNTKlWJ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eIlT8HQ1
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 17251986c9c39d851f2a1d47374afeef3ed36cfe
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
branch HEAD: 17251986c9c39d851f2a1d47374afeef3ed36cfe  igb: conditionalize I2C bit banging on external thermal sensor support

elapsed time: 897m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
arc                                 defconfig
um                           x86_64_defconfig
alpha                               defconfig
um                             i386_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arm                                 defconfig
arc                              allyesconfig
x86_64                           rhel-8.3-bpf
alpha                            allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
i386                 randconfig-a013-20221212
x86_64                          rhel-8.3-rust
i386                 randconfig-a014-20221212
x86_64                           rhel-8.3-kvm
i386                 randconfig-a012-20221212
x86_64                          rhel-8.3-func
i386                 randconfig-a011-20221212
i386                                defconfig
i386                 randconfig-a016-20221212
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a015-20221212
x86_64                              defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
x86_64               randconfig-a013-20221212
x86_64               randconfig-a011-20221212
x86_64               randconfig-a015-20221212
x86_64               randconfig-a012-20221212
x86_64               randconfig-a014-20221212
x86_64                               rhel-8.3
x86_64               randconfig-a016-20221212
i386                             allyesconfig
x86_64                           allyesconfig
s390                                defconfig
riscv                randconfig-r042-20221212
arc                  randconfig-r043-20221211
arc                  randconfig-r043-20221212
arm                  randconfig-r046-20221211
s390                 randconfig-r044-20221212
s390                             allmodconfig
s390                             allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig

clang tested configs:
i386                 randconfig-a002-20221212
i386                 randconfig-a003-20221212
i386                 randconfig-a001-20221212
i386                 randconfig-a004-20221212
i386                 randconfig-a006-20221212
i386                 randconfig-a005-20221212
x86_64               randconfig-a002-20221212
x86_64               randconfig-a001-20221212
x86_64               randconfig-a004-20221212
x86_64               randconfig-a003-20221212
x86_64               randconfig-a006-20221212
x86_64               randconfig-a005-20221212
arm                  randconfig-r046-20221212
riscv                randconfig-r042-20221211
hexagon              randconfig-r045-20221211
hexagon              randconfig-r041-20221211
hexagon              randconfig-r045-20221212
s390                 randconfig-r044-20221211
hexagon              randconfig-r041-20221212

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
