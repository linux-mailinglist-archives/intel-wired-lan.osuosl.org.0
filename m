Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61073641748
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Dec 2022 15:28:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1DE8812E9;
	Sat,  3 Dec 2022 14:28:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1DE8812E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670077729;
	bh=mPYCuoseNmSwm/XYdqEMEBTiluwrKEh/w5q1tXf2Yzk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RMbSJr+fRLjaaplTIBoU5zTmPcD/F3KiY1QJIn8FA9YavHD+UBcNjqDE8vdLqwb/3
	 W+1J3Ddu4diBxo1OSK+tahqVua029dq+CABzekFbnZTSrzpz10ltjK7cJbS9ty7tu6
	 P4tgmwSfYowJhgbQup2H4xdmX9ZqVoHNCleHOG9IxU3SICfLdCR1zkMI5yP90z6X2h
	 FfQUKaX4UaTXx4+SRyir6kdsdPa5RQU1j/TDbXLC0lnbQHpLsGH/pAY8fOdXsd4tbo
	 /mpebWTYjuGGSp8VVdytvJZA/Lbu5kxN4M2zoc/4CqXhdxzFU1B+HKJKMMZAV2+cd0
	 p8o96yjTQHfWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qm1ng3jVX7aW; Sat,  3 Dec 2022 14:28:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1775812F8;
	Sat,  3 Dec 2022 14:28:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1775812F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19E831BF36A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 14:28:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EFD9B4010F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 14:28:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFD9B4010F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Hylzi1IH695 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Dec 2022 14:28:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91225400E2
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91225400E2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 14:28:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="303736744"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="303736744"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2022 06:28:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="890468124"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="890468124"
Received: from lkp-server01.sh.intel.com (HELO 4d912534d779) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 03 Dec 2022 06:28:40 -0800
Received: from kbuild by 4d912534d779 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p1TVP-00007X-29;
 Sat, 03 Dec 2022 14:28:39 +0000
Date: Sat, 03 Dec 2022 22:27:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <638b5cee.hcKIEabe7tNVeMkv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670077722; x=1701613722;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TXNSKYox0f6cOuEG43I2rJcYYAmg2y5j1YAN82dmw8A=;
 b=GZkV1QpLey3/uNXqoR61LBlY2Hqp8O1Gj5qwsh5GlxZ/mM9JH2ldNwSk
 Fvj8GoWd8NsOK4clOMk+5nE6QsPE0aLBJ9ucxCBAllPQbpJ5mtmEbM3Y9
 S+xyk8TOn/EeuoThzN83H+bMoeE+YRTQ8L/NDWI4GIgDEZ9/u6P5tGAmj
 s+G2XfkJ5mJ9Cs8cq7xkvsONqBAmXYYi3XFrTGjy5tk2yrU+CX0tEqWq3
 r/Sved+P5Gv1BKN2Ay/wCSgpNmKvSjzv4yzQBh3gk0ucvyWXRecU+d6MY
 E7CpxAuIeVPDwWOHXcJdU74+r2G+x8yqUeRmySLHhFg4NBgTMAybJe4EQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GZkV1QpL
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 24317172e2c79ba9816ee2b637ad4e925959b702
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
branch HEAD: 24317172e2c79ba9816ee2b637ad4e925959b702  ice: Do not use WQ_MEM_RECLAIM flag for workqueue

elapsed time: 787m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
powerpc                           allnoconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arc                                 defconfig
m68k                             allyesconfig
alpha                               defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
s390                             allmodconfig
arc                  randconfig-r043-20221201
x86_64                               rhel-8.3
s390                                defconfig
riscv                randconfig-r042-20221201
s390                 randconfig-r044-20221201
x86_64                           allyesconfig
s390                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a015
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a014
ia64                             allmodconfig
i386                          randconfig-a012
i386                          randconfig-a005
i386                          randconfig-a016
x86_64                        randconfig-a006
i386                                defconfig
sh                               allmodconfig
mips                             allyesconfig
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
powerpc                          allmodconfig

clang tested configs:
hexagon              randconfig-r045-20221201
hexagon              randconfig-r041-20221201
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a001
i386                          randconfig-a013
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a015
i386                          randconfig-a011
x86_64                        randconfig-a005
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
