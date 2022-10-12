Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A205FC1E5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Oct 2022 10:23:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0117418A3;
	Wed, 12 Oct 2022 08:22:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0117418A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665562979;
	bh=Xd26B7ju8xke29fdTHOo8zuLtd0aErI4++klQlwz3ko=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Oc266Ub7QGRk36mGg5FLP27gziAwGN1BZLeNxC7XWdR4SGiWW/BC7kovLAmk9yHT2
	 7aQ2SzBYoFIXzlQ7u0XSzCu3dTshkhCalvZ0fmWI40lKmPURHJqt4nyYi2O6lcD7IP
	 9kDtrTXcSoaYm3Gb3kYZmZVV/4p/gpBJdIrq3C4wBxc4z6TavgLTlLUUD/ppTaxq8i
	 GzZdGZRSmwMZJ5MPSzqccnTXxxtNW7DYm9UNMjE47J2tGivOSb/LLgtzvOnW7bIdXt
	 ulKhP5TY+BrDNPIMFxBBdKvr3mmC+0Dm90uafmvPe1M5E0qKBX1J5UB4JasozoKBg8
	 MTr6agnC9Co7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qa1SKhUTbRvT; Wed, 12 Oct 2022 08:22:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45F0B4185A;
	Wed, 12 Oct 2022 08:22:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45F0B4185A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E70F81BF30D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 08:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C11D382AB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 08:22:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C11D382AB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TSUHEHctfAoT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Oct 2022 08:22:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B910882779
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B910882779
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 08:22:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="304720748"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="304720748"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 01:22:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="604468734"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="604468734"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 12 Oct 2022 01:22:49 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oiX0r-0003dK-05;
 Wed, 12 Oct 2022 08:22:49 +0000
Date: Wed, 12 Oct 2022 16:22:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63467953.IuFjsEeIOjJONY2V%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665562971; x=1697098971;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=wXHIgZij7KoGkm8oCHiFwXkpK6RoDMmR58HPN+kf35E=;
 b=EbPvRY3y+WLjsHE7DZYdLN2whvMcV7a7nt3mfaDzBuoDYtKWNwdbcplv
 tZ8C9CGa7cw1jergomlbyHqJCDFe/8vQNbSSDFxCEIVq2bTZFwCjY3U5f
 iUn07i6LbbZUG7sTY2l1BP3HZk9pc8GxzAVuwCC3AOgw9n/yDNlGsgkCC
 ql27KBAHWNr1eU2VRsRJvKlviuisCnKSHURWH4crwHTOdG4JYXOwyODDl
 YzR9DEhcHvn+ZY27RJNypiUk5uLOtehRlVlSfcb8kUc/PMqPBLLECa3zW
 TskPmX6VCW7RqLjIi1HOP3lAflcHTxgQWlZZkzfTL/AjIRIZ7ybhQn6q0
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EbPvRY3y
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3b86549f761b155e3c1acb8fdddcf8678606a7c7
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
branch HEAD: 3b86549f761b155e3c1acb8fdddcf8678606a7c7  i40e: Fix DMA mappings leak

elapsed time: 721m

configs tested: 76
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
arc                  randconfig-r043-20221010
arm64                            allyesconfig
m68k                             allyesconfig
s390                 randconfig-r044-20221010
x86_64                          rhel-8.3-func
arm                              allyesconfig
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
riscv                randconfig-r042-20221010
x86_64                              defconfig
x86_64                           rhel-8.3-syz
powerpc                           allnoconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
mips                             allyesconfig
i386                 randconfig-a012-20221010
x86_64                               rhel-8.3
powerpc                          allmodconfig
i386                 randconfig-a011-20221010
sh                               allmodconfig
i386                 randconfig-a013-20221010
i386                 randconfig-a015-20221010
i386                 randconfig-a014-20221010
i386                 randconfig-a016-20221010
i386                                defconfig
x86_64                           allyesconfig
x86_64               randconfig-a011-20221010
arc                  randconfig-r043-20221012
s390                 randconfig-r044-20221012
riscv                randconfig-r042-20221012
x86_64                        randconfig-a013
i386                             allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a015
ia64                             allmodconfig
sparc64                             defconfig
powerpc                     stx_gp3_defconfig
arc                            hsdk_defconfig
ia64                            zx1_defconfig
m68k                       m5208evb_defconfig
powerpc                     taishan_defconfig
powerpc                     sequoia_defconfig
sh                   rts7751r2dplus_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016

clang tested configs:
hexagon              randconfig-r045-20221010
hexagon              randconfig-r041-20221010
i386                 randconfig-a003-20221010
i386                 randconfig-a004-20221010
i386                 randconfig-a002-20221010
i386                 randconfig-a005-20221010
i386                 randconfig-a001-20221010
i386                 randconfig-a006-20221010
x86_64               randconfig-a002-20221010
x86_64               randconfig-a001-20221010
x86_64               randconfig-a003-20221010
x86_64               randconfig-a005-20221010
x86_64               randconfig-a006-20221010
x86_64               randconfig-a004-20221010
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
