Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 415EE576D46
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Jul 2022 12:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D58A60E85;
	Sat, 16 Jul 2022 10:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D58A60E85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657966636;
	bh=Z4VIVMU4rfr3i+CST9pWslqrfo8tgkZG667gBfQafnk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=C1wj44LHE2nsuIpAXFLh+uis+64x8XqJR1PkuvM0sUanp6aac/CmBs/YgcHJt/dII
	 xxbw8AJg0i6vgferkhw5ynSYkwMVu7nXw8suxYKKwsyWp9yoZTWYBD6EFTRwcEGjav
	 UCCDVZPrQCmWE7A0wuyRL7Ye/fVxoGUvXXecDNtWQ9/PJXcG1EdCNR3NjSeVMvEoQT
	 riNelaH6YFB709iYWx5617Zkys+NB5cWvexAFC7FbgpcWh2nJy3wUsTpbPrnkQv7K1
	 TMVxM2YieRBLATkEmt7a9LI11peDLwVf+y3OTRPM2wa0MwcDagBBcpdijSwOJqUGoi
	 OBYa6zGVK497g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q7MsZEr-wG26; Sat, 16 Jul 2022 10:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D7C160D8C;
	Sat, 16 Jul 2022 10:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D7C160D8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3220F1BF329
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jul 2022 10:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0BD738001F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jul 2022 10:17:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BD738001F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o9OYhEKIXvPW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Jul 2022 10:17:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AB2784E12
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AB2784E12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jul 2022 10:17:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="372277952"
X-IronPort-AV: E=Sophos;i="5.92,276,1650956400"; d="scan'208";a="372277952"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2022 03:17:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,276,1650956400"; d="scan'208";a="546948869"
Received: from lkp-server02.sh.intel.com (HELO ff137eb26ff1) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 16 Jul 2022 03:17:06 -0700
Received: from kbuild by ff137eb26ff1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oCerB-0001MK-EA;
 Sat, 16 Jul 2022 10:17:05 +0000
Date: Sat, 16 Jul 2022 18:16:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62d2900f.g3zoj8SfCYvp+UHN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657966628; x=1689502628;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=rSXWc1TGzkyhqXij0j7WJ7+xck2FJ//TOAPmaV+bRlU=;
 b=cInTlljhbv+bOCfqkc65GZC4SsxHyc5P3gh2lT5KuX0MhZQtm8i51VSR
 hFl5PTxvRabf5LY/iLF5+fsOqT3Isol14A0sFYKnZCJIiGt2EUnYLct5B
 xgWvca4izFvccIYhYrKn6grj15+8ZhRURodASnSMhqU6yk6p4LsbVF5H8
 k2ZOU8d8xnXtukV9TZ7zxHMQWLYFydJRXtYkpYz2pB8hU820/E9KWO36S
 iG9tGiRQC7X6s/24MH6Fyt8Oj+INdbzEJtMKGoOeYY8QiaOa3wS5zcrh0
 T8Ka4Gk/tgL7Ujw9/cMaSdl2F5B2x9SZ0/fToPG5jKtk51K4uN0PYzri3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cInTlljh
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 ca415ea1f03abf34fc8e4cc5fc30a00189b4e776
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
branch HEAD: ca415ea1f03abf34fc8e4cc5fc30a00189b4e776  ice: Remove pci_aer_clear_nonfatal_status() call

elapsed time: 723m

configs tested: 60
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
s390                       zfcpdump_defconfig
m68k                             alldefconfig
powerpc                     ep8248e_defconfig
sh                        sh7763rdp_defconfig
xtensa                              defconfig
mips                    maltaup_xpa_defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220715
x86_64                           allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                       aspeed_g4_defconfig
arm                          moxart_defconfig
powerpc                     ppa8548_defconfig
mips                      maltaaprp_defconfig
arm                          collie_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r045-20220715
s390                 randconfig-r044-20220715
hexagon              randconfig-r041-20220715
riscv                randconfig-r042-20220715

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
