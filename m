Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8724655BDDE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 05:36:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7870B82C84;
	Tue, 28 Jun 2022 03:36:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7870B82C84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656387373;
	bh=ejxL5VOKvGJOWbFjCiE3S29xHrm797sbaOTE1NMCTfs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s/MxlI9MWSLrjV8zlb3+LY5mVA2QGUuGHayUzg0vyUbLvYD6A+a+Ra9WlYwLjiNCb
	 +cS+BkXZTDKZNw/pXkPDjdIGHelO92gPs48xdLKDxtD1+vHdbcoAcRH3rDpeFBRqbp
	 YMVngFwaYikYdJtbkhqkWMlj8/LvbAQquGCsS4+0kx53IpgKRDe87WECBa9QrUG0qr
	 JUqhdjGeF0mOhfVltdRO1v8lE6d6s9Rz+Gm1EfgEZf7lvUFUY3mQJTNWG1fzmiNwJV
	 eNpH0bKvulXFPnN3cKjbb7NavV1zo/hjDeSgR199Yyt9XgL5Hu8I3PYsAqrsjYsZJ0
	 lwHtzFAZjf/lA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UdlZcFRqvmsD; Tue, 28 Jun 2022 03:36:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6340882BEB;
	Tue, 28 Jun 2022 03:36:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6340882BEB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A074D1BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 03:36:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 872DA4010D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 03:36:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 872DA4010D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eXHzTmCzoLdt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 03:36:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90F6740017
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 90F6740017
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 03:36:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="281660537"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="281660537"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 20:36:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="916996328"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jun 2022 20:36:01 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o621A-0009Sw-NL;
 Tue, 28 Jun 2022 03:36:00 +0000
Date: Tue, 28 Jun 2022 11:35:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62ba76fe.Jm69rLF8UJSCxMJa%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656387363; x=1687923363;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=biDRLz39QEbXtJTdqhzvMBnkNqTftxaGds4Pj4iZ3QA=;
 b=mSiK5oZqsYL8lkixtcPJ4G31gDNbYWpjCtT/h0zzzs7v+0xOs8V0rLd6
 GmmKckhk9UcuK57tf+grsWsasCLlhMum7xfpJMSqi7MtwnJChygT7zPU+
 XMIqARQLXJl1nyoqTgNSQL73ZkTnoedOqRZhJ4QJMEdSrRiGR6OgWeQrX
 go9WxhPN1Qcyi0X47sfJHt61T3lNkwsQR+6J833o7fxpD4vd+caUCUM/y
 NnHyIcB+IWn0YsvAt3fyrcdqhP7BilAcuMgqMyPsqFn5l7l0lJCEnk+XB
 H2p0dZsPGbs3a7zdFBnnQ3eGwRid2WCDS0Lc3jAITXfbnqobF/PT+0VId
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mSiK5oZq
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ae05a2fb275c3ddcedc2a8892389f89181c4f113
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
branch HEAD: ae05a2fb275c3ddcedc2a8892389f89181c4f113  i40e: Fix erroneous adapter reinitialization during recovery process

elapsed time: 724m

configs tested: 69
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-c001-20220627
s390                          debug_defconfig
arm                          gemini_defconfig
arc                        nsim_700_defconfig
arc                           tb10x_defconfig
sh                   sh7770_generic_defconfig
arm                          iop32x_defconfig
sh                           sh2007_defconfig
arm                       omap2plus_defconfig
powerpc                         ps3_defconfig
arm                        realview_defconfig
m68k                          sun3x_defconfig
x86_64               randconfig-k001-20220627
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
i386                             allyesconfig
i386                                defconfig
x86_64               randconfig-a013-20220627
x86_64               randconfig-a012-20220627
x86_64               randconfig-a016-20220627
x86_64               randconfig-a015-20220627
x86_64               randconfig-a011-20220627
x86_64               randconfig-a014-20220627
i386                 randconfig-a014-20220627
i386                 randconfig-a011-20220627
i386                 randconfig-a012-20220627
i386                 randconfig-a015-20220627
i386                 randconfig-a016-20220627
i386                 randconfig-a013-20220627
arc                  randconfig-r043-20220627
s390                 randconfig-r044-20220627
riscv                randconfig-r042-20220627
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                        multi_v5_defconfig
powerpc                     skiroot_defconfig
powerpc                     ppa8548_defconfig
mips                           rs90_defconfig
arm                           spitz_defconfig
x86_64               randconfig-a002-20220627
x86_64               randconfig-a003-20220627
x86_64               randconfig-a001-20220627
x86_64               randconfig-a006-20220627
x86_64               randconfig-a005-20220627
x86_64               randconfig-a004-20220627
i386                 randconfig-a002-20220627
i386                 randconfig-a003-20220627
i386                 randconfig-a001-20220627
i386                 randconfig-a004-20220627
i386                 randconfig-a006-20220627
i386                 randconfig-a005-20220627
hexagon              randconfig-r041-20220627
hexagon              randconfig-r045-20220627

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
