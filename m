Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE1A5A2406
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 11:18:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEB6B41833;
	Fri, 26 Aug 2022 09:18:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEB6B41833
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661505512;
	bh=OjKTDKTslr2P5dYW8N3B9MTmm6AvbARp7tvhtZCIWp0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cZYFMkWrZupk7+z+lqXkzkIzfpZBwIfog9BYYrIgluRdWNM5j0feUbODR1eKJdWpx
	 SS7DcDPomPolhqaL73Bim/RiN94gahqmiRfMWqEe/BtvJ0BG2JZTjF85uBuIDI11Zg
	 2+424KwF/rl5Ip7D3WULUanYHwb+61xPgCpMR3zUlLw6tNHY66NKuppKHnHyv9YY2J
	 Ga8rwsfGWAQUMYv2ONsOcu+JBE4sYaYa/l7TUED6cJMeS1tfEa+FaxVkw9anDFw4L+
	 Q2PKhV383gMvJKCV0g9wrtRr/NEOZ5LRTD8oDMWAE9u099gEp1SiwXOHx3DFKIOafJ
	 CtEv/uadTfNLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qouTCV1P2meH; Fri, 26 Aug 2022 09:18:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5257417E1;
	Fri, 26 Aug 2022 09:18:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5257417E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 23A7C1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B94A4048B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:18:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B94A4048B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qVffqkOghZPH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 09:18:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35052400E7
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 35052400E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:18:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="274216908"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="274216908"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 02:18:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="587235632"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 26 Aug 2022 02:18:18 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oRVTl-0003pJ-2Q;
 Fri, 26 Aug 2022 09:18:17 +0000
Date: Fri, 26 Aug 2022 17:17:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63088fa2.A7Q1TvslZzzS0XDz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661505500; x=1693041500;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=7v/bqohkQotgLMOEdak7YMenDvrgQQLMJPt7m7jd4BI=;
 b=iJLgt7N+iSLWPG3PWMx4jkeH6NXV5TKablKJzbaF+psHk+zOcvjgvFYm
 Yqz1i14sizXk/j9wyQB5y/ecphYJJSF85buzePTfrYB+BmL3gzEWtj6jk
 xzLD0cuWwq3Xt1i4ed3wkXQoU2ggx78zwU7lexb3N5PRmAVx0NLk6p1VT
 9NqUlTElExV+uLtK29I6s6VLMv2k2gvDGf7AMNPzRZ3O3DPDTClVJevUi
 4xKTlsp9tOSBnJ/08qSG6m13zHC+iqZkaFSVBW8j6/jQ48UgGEwWQSZLa
 6LrSiQy651r8+Wpv5uiY3TX9pM0imdLlKeq/mHgkaoL2UhZ3oZBl53TYb
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iJLgt7N+
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 d974730c8884cd784810b4f2fe903ac882a5fec9
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: d974730c8884cd784810b4f2fe903ac882a5fec9  Merge branch 'net-lantiq_xrx200-fix-errors-under-memory-pressure'

elapsed time: 800m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
sh                               allmodconfig
x86_64                        randconfig-a002
um                           x86_64_defconfig
arc                                 defconfig
loongarch                         allnoconfig
m68k                             allyesconfig
loongarch                           defconfig
powerpc                          allmodconfig
alpha                               defconfig
mips                             allyesconfig
powerpc                           allnoconfig
x86_64                              defconfig
x86_64                        randconfig-a004
i386                                defconfig
x86_64                        randconfig-a006
s390                                defconfig
x86_64                               rhel-8.3
s390                             allmodconfig
x86_64                           allyesconfig
alpha                            allyesconfig
s390                             allyesconfig
m68k                             allmodconfig
i386                             allyesconfig
x86_64                        randconfig-a015
arc                              allyesconfig
i386                          randconfig-a014
arc                  randconfig-r043-20220823
i386                          randconfig-a016
arc                  randconfig-r043-20220824
riscv                randconfig-r042-20220824
arc                  randconfig-r043-20220825
s390                 randconfig-r044-20220824
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a012
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r041-20220825
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220823
hexagon              randconfig-r045-20220825
i386                          randconfig-a015
s390                 randconfig-r044-20220823
i386                          randconfig-a006
riscv                randconfig-r042-20220825
hexagon              randconfig-r041-20220824
s390                 randconfig-r044-20220825
riscv                randconfig-r042-20220823
hexagon              randconfig-r045-20220824
hexagon              randconfig-r045-20220823
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a002
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
