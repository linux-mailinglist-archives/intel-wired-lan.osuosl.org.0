Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFED64C3A1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 06:55:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 816BE81E8D;
	Wed, 14 Dec 2022 05:55:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 816BE81E8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670997325;
	bh=OsdUeXDZFYIZedn0biYj96BETjNvqHdEcRmuKbUVi/w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Kb4/MG7ZfakhsurzSuwc2/geIFNOIl4mhrng/w8Dqvn5sA7jw+WUVaPaxCBf2vxDz
	 lwOdMtjGWVBn/a8b3027Xcy6O8i2E01HphUWw9UHb+azoL06EV4Qnh4RZPt54DOapE
	 LlZzbHQNJHxDvWk/ufX6OW1Zx1aC/pxyvty4QRlsoUSstinkq/Hc9v/R81+fW9XDQr
	 oHmPDBjNRPY49j1vozLriMwuOVcFECfszY8r1dIRLnnBxePsHUAOq4aokJ59UdoEYM
	 A2ag6+5MoJVS3ZiLtvYphO0YbFpGuqNeu4cLZeTaE6kTI4kxcoe3wrLU1djkzEEYOm
	 jZi/7UfBTTPxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dyJ281v4dxv9; Wed, 14 Dec 2022 05:55:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7714C81E36;
	Wed, 14 Dec 2022 05:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7714C81E36
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 405CC1BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 05:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1A1AC60FC6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 05:55:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A1AC60FC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E0_ehySKnO_d for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Dec 2022 05:55:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC5E160B25
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC5E160B25
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 05:55:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="298000486"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="298000486"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 21:55:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="681407623"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="681407623"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 13 Dec 2022 21:55:14 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p5KjZ-0005Df-2z;
 Wed, 14 Dec 2022 05:55:13 +0000
Date: Wed, 14 Dec 2022 13:55:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63996538.KCSXOSxcJ/wkj5so%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670997317; x=1702533317;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=aavi8c3MgtIHJSAJ3Js/X+FdvR6x11sudapqvCXBlYc=;
 b=i8vuoD8Pw1M9TDvJEU0sZ+NOy1pXgQAFhwHho+mhEW27K2BjIUYScerK
 rZt0hV4laeA8g9jgvG+32GJt8MAQxTOh12Vksgm6gPnA9f5/YkMsT9A+i
 NANSlxoMw8Nb+LExqaSzHTebNsHcuQkd6Ei86BMiFR/ik0AzTPRiC3gCM
 0rl9kG3Ua1UuCAebP6IXHSe3P/dknx7UkpTtf5KnkkRkY2oWgK55E2dUq
 M90yGne1KSAYFtBfWi65UQR5eMOCSoHwxdd/CjO0dGRoiMNo5J+WyQsLl
 7dZPOJ/V38WHyuyN/ADqQQ1ADQW+OWu3ognvbtUjMqGGb+nvdVF4MA7NJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i8vuoD8P
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 7c4a6309e27f411743817fe74a832ec2d2798a4b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 7c4a6309e27f411743817fe74a832ec2d2798a4b  ipvs: fix type warning in do_div() on 32 bit

elapsed time: 1132m

configs tested: 42
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
sh                               allmodconfig
s390                             allmodconfig
m68k                             allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
s390                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-rust
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arc                  randconfig-r043-20221213
arm                  randconfig-r046-20221213
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                                defconfig
arm                                 defconfig
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r041-20221213
hexagon              randconfig-r045-20221213
riscv                randconfig-r042-20221213
s390                 randconfig-r044-20221213
x86_64               randconfig-a002-20221212
x86_64               randconfig-a001-20221212
x86_64               randconfig-a004-20221212
x86_64               randconfig-a003-20221212
x86_64               randconfig-a005-20221212
x86_64               randconfig-a006-20221212

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
