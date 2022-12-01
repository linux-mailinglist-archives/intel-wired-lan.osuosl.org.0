Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A7063ED26
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 11:03:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79B2C40393;
	Thu,  1 Dec 2022 10:03:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79B2C40393
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669889009;
	bh=RB6xLhFdKYdRGotMzayKcBKEw2888n9WxhGDq4gPx8g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Rt9gIZhMWvlHa/LvYymPn+DtuY/ht4KK6SM8qXI4KVSNXpFK3kf0JipAX3n6CQwbV
	 wtIfSGqIXJi+wjzbPbtI+ZjJxxR+b77b3118RINbK4WzaJLUhER2Y8r1MUqk3iWDar
	 aFUOPaODiQ6UmQLnGx5u4Mj2ffbrvxDQcWZZRuzDpK42kgqaqFsZuMkgx3K+crYG7m
	 r7kTn3EIiaEDp8Okm6E5BIpSbD4HDx8xWu1NnKs4ejCR5+q7mFdq/OikeS6+eBIl6T
	 XjgHtigjXrp3CqkzL0ZTH/XDrdF0SCSdIQG96KZbhII+ZMj8nj6tvV2QqU+eSYYHFT
	 Z4zzd9to+zLPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bnQptuPdHxpe; Thu,  1 Dec 2022 10:03:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AD8840157;
	Thu,  1 Dec 2022 10:03:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AD8840157
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99D7C1BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 10:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7120A81F32
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 10:03:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7120A81F32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kxl-PfS1oqeG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 10:03:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 793E981F31
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 793E981F31
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 10:03:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="299011531"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="299011531"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 02:03:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="818985947"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="818985947"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 01 Dec 2022 02:03:20 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p0gPX-000CQx-2j;
 Thu, 01 Dec 2022 10:03:19 +0000
Date: Thu, 01 Dec 2022 18:02:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63887bc4.KzrXB6o8z0C+UAS3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669889002; x=1701425002;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Whi/oyD+xBV6xbubMIVO9Sspo/oKxitm8Dnv4XctSOE=;
 b=bE8vaiTgbmhkZHGUE0BnkL4h1zmN7alxfbIbFLjtqtxmSRuT2YwXCpCv
 1+lI1UFWLsLWk71mib3eFrvel1yhTPeDlMf64AwTA0yh3FJSoaQLoSBGv
 6D7NcC804ghL6pmFXWcl3TlbX/XKwA4/DlAHaBy6cSgLFqUDRfKjpBysN
 nS1MH5uV7e8ZCZnvFd83eYRwkfiuwlNnjOQzaDO9cagNwhQpF7ddnHK2h
 r14tSYueobOdVnxI+LAkKbFTdJZNrXJbj6sn1h3t0OH+/xgIEn+6Sj9f/
 bBUnKVp5IO8+ZirnVIk4ia4sXfJdjdDNHen1vTaca4eJdlYolwlai1pSk
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bE8vaiTg
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 28e96556baca7056d11d9fb3cdd0aba4483e00d8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 28e96556baca7056d11d9fb3cdd0aba4483e00d8  igb: Allocate MSI-X vector when testing

elapsed time: 720m

configs tested: 47
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                            allnoconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
ia64                             allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                           allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                             allyesconfig
i386                                defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-a001-20221128
i386                 randconfig-a005-20221128
i386                 randconfig-a006-20221128
i386                 randconfig-a004-20221128
i386                 randconfig-a003-20221128
i386                 randconfig-a002-20221128

clang tested configs:
s390                 randconfig-r044-20221128
hexagon              randconfig-r041-20221128
riscv                randconfig-r042-20221128
hexagon              randconfig-r045-20221128
x86_64               randconfig-k001-20221128
i386                 randconfig-a014-20221128
i386                 randconfig-a011-20221128
i386                 randconfig-a013-20221128
i386                 randconfig-a016-20221128
i386                 randconfig-a012-20221128
i386                 randconfig-a015-20221128

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
