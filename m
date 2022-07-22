Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9DA57E074
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 13:05:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D79640C00;
	Fri, 22 Jul 2022 11:05:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D79640C00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658487900;
	bh=gZAZUpErmo7rKZ5CA1fTUC35QBL15+PxC63bhKT+BsU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pkpXT2D6/77ERkppEADbwOhuliBA6EkA9UH1PgdpNvwBj1yz1WR1esbbr+W7wlirO
	 I0vHhu3ZADnpLkUv/iJE7+pyE9z3dFxO46t/8EjRwXin9QcqLqyY2l/vWGXi5lUJ1o
	 gRSrJbn43/39N9UqU6Sy1/+W5uX28Q/2TMlY9nSvqmrCcC70uEKOrGzaA83m1ztHVV
	 gcea4N2asQd/NSzkNOjbRpsnmDTFF+Uszl2oIHs+0F2ZXkkCUjF7D4NAgQTHZCTBky
	 PC6LWLu9310S1YXqsaC/DN5dpiFSKiH87/enuxv7fd+yWI6dMDBvQxJvPkB34+Q7xU
	 AHExiPml87h0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LiQG1A-IBK0K; Fri, 22 Jul 2022 11:04:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5378940154;
	Fri, 22 Jul 2022 11:04:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5378940154
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56FAA1BF312
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 11:04:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 30D494233D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 11:04:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30D494233D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2-EV7igbkd2p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 11:04:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 880D640931
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 880D640931
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 11:04:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="274146558"
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="274146558"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 04:04:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="657174501"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jul 2022 04:04:40 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oEqSW-0001My-0I;
 Fri, 22 Jul 2022 11:04:40 +0000
Date: Fri, 22 Jul 2022 19:04:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62da8438.tDRdLNK/S/nZcZ5C%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658487891; x=1690023891;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TchRBrsnKTPVuHYlGaW+Kbcdimnp29Evb4cLKSzzQho=;
 b=bJyNbxbWoAFR9QCyB6zvRyNift8f+5c6xLDSQVpbB54LrqVvaC4xtjwg
 fAXE3n2U/zln3qh6Ta/wEi3gSxHNYyGc7bhquKf6Iiym8LDpN06sfi8cU
 jYtdoSSl8JBDBiVvj8ytaKttiHzIUcJkCwy7BX/oMnSt859GOlFqDIOOD
 W0taEFK1850DS50AyxaPlSAaEgqDGazB1M1yeSW18TIM2wb8McenMTGWj
 EO3yTYVfHmdbfsgJL44E3ObWvF6B9I1YZl4USap3sYlOXqJXe0t6VQn9L
 d7jW2b7Ub5htn9dJjUBxuouid0xp/U3ruhlO+77fi1MowlUVhPe55yYqI
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bJyNbxbW
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 d6b98c8d242aee40e7b8919dd07b593b0739e38d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: d6b98c8d242aee40e7b8919dd07b593b0739e38d  ice: add write functionality for GNSS TTY

elapsed time: 731m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
mips                           xway_defconfig
m68k                                defconfig
s390                          debug_defconfig
nios2                         10m50_defconfig
powerpc                     tqm8555_defconfig
sh                               alldefconfig
arc                               allnoconfig
alpha                             allnoconfig
csky                              allnoconfig
riscv                             allnoconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a016
i386                          randconfig-a014
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
arc                  randconfig-r043-20220721
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
mips                      malta_kvm_defconfig
arm                       aspeed_g4_defconfig
powerpc                   lite5200b_defconfig
arm                        magician_defconfig
arm                         s5pv210_defconfig
powerpc                          g5_defconfig
x86_64                        randconfig-k001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r041-20220721
s390                 randconfig-r044-20220721
hexagon              randconfig-r045-20220721
riscv                randconfig-r042-20220721

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
