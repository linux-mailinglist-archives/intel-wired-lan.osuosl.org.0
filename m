Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EDC55942D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jun 2022 09:29:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25EA8848CA;
	Fri, 24 Jun 2022 07:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25EA8848CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656055737;
	bh=i4ZTHhWpRNcbq0xx6QJsClRuWm+rR4bBwwVyDMmJUC0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6FlcmFzLKV1UrechyTTlb/ZilkNMdR+JIvgBHrh5R5XtUspFM1k3En/R9hva6UY7L
	 pvdwyfN4fIY21R5TwELEQ0rMdTzuFmybl5wpzTFd3yLX0kQ5YFGZBc0//GCHUQdQKd
	 AeFnZeqoQ7Hiis9bKNuI6aP8NRDm2VKSWjL95fvQqvRPKrq9wb/Ujv2aoXMsF2r55k
	 86EoaepFFOu3pWpviKpFk0V/ot1OX9SazYt2IyNenScV5QcwNNlVrBjrNHsbtEIDNr
	 SCRPm67/x1Ud4wd8uyagXiW6KXij4Uc6ygtWlrwZ2so0RD5VKfGIZ0mqn9lPUiNqeN
	 jaFKn0rbNf4EA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K4l9zeNu5Gay; Fri, 24 Jun 2022 07:28:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09C5F848C5;
	Fri, 24 Jun 2022 07:28:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09C5F848C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9EBC1BF301
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 07:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D068E61302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 07:28:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D068E61302
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d7tnwL1Tkt2K for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jun 2022 07:28:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBB64612D8
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DBB64612D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 07:28:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="342632063"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="342632063"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 00:28:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="915574273"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jun 2022 00:28:48 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o4dkF-0003pj-JC;
 Fri, 24 Jun 2022 07:28:47 +0000
Date: Fri, 24 Jun 2022 15:27:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62b5677f.4mxuRP55UkLzBCHQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656055729; x=1687591729;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fufHWLZrN93kyyd+ivHfSQkhkJCsrL8pR0z4cIWs2Ys=;
 b=elXyCbc6VbuNurK0qGxoHd3Xop3zzBnX8z0o5W3TeAQKoRcyzM7vp/DE
 VJUwPlh4qSBKcCkdLKP3uu4DLwqz1iqhWiFX3Xp0syrY8Ls2CGEqFICtH
 wQrEDnEDmSVUnCxUK/m8H+ZOIbVsHD4qB0AdDZMapphKEpEkXDDMeY8AK
 F6vai7bYS7EMfgETXkS/k45GZiFAvrBkLW8OJ/XkIYSPRButNMKABuaBq
 qr5JRyvNh6XdSBjTXr44KQPD9/2vA3dc52BuzSGysWANs4GE+g18rXdlE
 e9bG0l7NCUWDMC/JyTNcyhT5HJu1Ux6lwMdgBD7+ri0zGuYxV7JcDm4ZW
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=elXyCbc6
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5d94404da92439a2a66e1f5358ef18d901282340
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
branch HEAD: 5d94404da92439a2a66e1f5358ef18d901282340  i40e: read the XDP program once per NAPI

elapsed time: 728m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                   debian-10.3-kselftests
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220622
arc                  randconfig-r043-20220623
riscv                randconfig-r042-20220623
s390                 randconfig-r044-20220623
riscv                             allnoconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220622
s390                 randconfig-r044-20220622
hexagon              randconfig-r045-20220622
riscv                randconfig-r042-20220622
hexagon              randconfig-r041-20220623
hexagon              randconfig-r045-20220623

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
