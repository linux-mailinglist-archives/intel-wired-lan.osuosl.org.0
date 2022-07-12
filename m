Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC59571174
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 06:30:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E08C383FFE;
	Tue, 12 Jul 2022 04:30:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E08C383FFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657600206;
	bh=eIs/Qm+LS5N0TdF0F7IQCrZXMofKwIgZCdhv3ueN5Kg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=61k/F1zlVExsZDcHHZVzkyy5W66N4zkR/higi98zl3TdQTcGFePPKLDophPeRCSfS
	 GVEoteE+IcJU+8yTMISaNfPlhygKbJ4TYKsozs5IKlEtkxtMPDNxkH09y06KSQlEo2
	 jnbJ8bXHiI36wFnhtrWcQFI2kJ/JI4aoZPTFV0ZDl5xcyZpVadwUIr7bM6Uut3BJUa
	 6c8ocYXqNF0+rfxdu0HYIQJpCVT/p+s5CNww6piZveNPyGYtOASS7hOVrzeSpzBKEk
	 256jCeprx0LpS0XURMWkLE/1asdy72MEZgo7FDTT4KSLGSGAV0fkgE01MLN3bGoZA9
	 GBn0/ErQ5/hXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RuSqcGo3PN9w; Tue, 12 Jul 2022 04:30:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC45283EEF;
	Tue, 12 Jul 2022 04:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC45283EEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 179C91BF31B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 04:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E30B542224
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 04:29:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E30B542224
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wwFPeAURqeY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 04:29:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C0D442221
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C0D442221
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 04:29:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="371143422"
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="371143422"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 21:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="652748317"
Received: from lkp-server02.sh.intel.com (HELO 8708c84be1ad) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 11 Jul 2022 21:29:57 -0700
Received: from kbuild by 8708c84be1ad with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oB7X2-0001gB-G0;
 Tue, 12 Jul 2022 04:29:56 +0000
Date: Tue, 12 Jul 2022 12:29:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62ccf892.r+DDW10JAUh/Hypa%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657600198; x=1689136198;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xni/zBfEOKPlioi5du0VAf5wclTAfWFTsLogSzJamZI=;
 b=Kq3lU//S5Y92MvBD7jSerAJgHjr27ksvNctBun6t7iMgznqn3597IGoF
 dMUwfOBe44I3guZa5bxAGeLj6u4YMtUyHJSDVFxlaKUBZjsgM0+AzzrCe
 /SXclaDoKjeamtgYXHQfnJBuvbowJMp1vCDpF/aW5rSrh6/z7kRsNHAtL
 XARdziT6NXH7aawP/nozPaifDU2fu1Ta7O7fum3h/XwCwHpjLncQNGEMd
 v+Vlq65WIJoXVD/xTbPspxphq8yZtT6GhzAgYpuM88Dg1AIVMwhkIiw7r
 exbIiCMeFCVYftczsURcqrYjkuiiP0J8sEqd870e2g6W7m7q6Xbznpe/3
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kq3lU//S
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d62084383e48c8ef1f0f72e1bff0281170294ad3
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
branch HEAD: d62084383e48c8ef1f0f72e1bff0281170294ad3  ice: Remove pci_aer_clear_nonfatal_status() call

elapsed time: 725m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
powerpc                          allmodconfig
mips                             allyesconfig
i386                                defconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220710
s390                 randconfig-r044-20220710
riscv                randconfig-r042-20220710
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
hexagon              randconfig-r041-20220710
hexagon              randconfig-r045-20220710

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
