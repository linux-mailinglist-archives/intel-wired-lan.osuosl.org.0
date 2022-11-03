Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B01176179C6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 10:24:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D475C4175C;
	Thu,  3 Nov 2022 09:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D475C4175C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667467475;
	bh=P0L8O3HSSVP6kM8zVJBYuJmIT5ck9Wv/L8xBL8lJg+k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=72SeMgN8Quvl5yxajGqPEuhPLybmR+tx8BQZnLG+FlCGNVrQOJxD/l3ZNxE5csV8d
	 dBSvLFLw5k/y39sEjAiOKyaVP7rZDsMd4fW0dyhuCyzSGoQKEaLpd/VkBZb3yunH7z
	 r/ODI+uN//+15yqIVgi7GpULGuDOlBTtpFbi1q5xRUHF1E02qNcOembGqBdN5fnEKl
	 mvRqQ7TgeVQAV/RNwrEtej7IadSFKZOChW0jukWBwogCgwgBqcLaSWVFuzuIJ+PYSt
	 OAN335bsA/2zxe2t4mkWWQSSY07vSVky08TxAGgU79aVXvj2Mp1g2zO9ok2dFUaw6T
	 oyOWU5qluiUYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7eP_pdM79etJ; Thu,  3 Nov 2022 09:24:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9684341553;
	Thu,  3 Nov 2022 09:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9684341553
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CEFC1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 09:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 52C694175A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 09:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52C694175A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRpU-Za3oNQ6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 09:24:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34E7841553
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34E7841553
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 09:24:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="336325192"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="336325192"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 02:24:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="777233857"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="777233857"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 03 Nov 2022 02:24:18 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oqWSP-000FlI-2s;
 Thu, 03 Nov 2022 09:24:17 +0000
Date: Thu, 03 Nov 2022 17:24:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636388bf.7D8fuVH9H4B1llua%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667467468; x=1699003468;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Cctzkt6MVOjs71g1D6ckbTVKUsv4KaOsoYk8WStMaBE=;
 b=HS4eXQjAyOHTdArNLkJhbIf5T4MbE5pbcMlxDgem1JI+dazJSlVkwn09
 InIgr05X6iykC/DZaoTLpWcnDZM6jsmRjjatzy+rm1C9n+l1ytIa+oxM4
 lxQAn4DmzjMD9Ka560WnrVrHda7n1CAQOzdkiyn06bFEqm+LFT2bG9Hrx
 49gjLZ29GonoCe36zwJlrsEM6o0k0mLCAyrsrrCr27NU29KQ541xGaIoF
 RTHXKl3hOx+eY4uypG7Uul+qiCkUkJZrieCGLXofsrhgdvBWfX8NaPIbw
 m9o4PeQPlQs8740NT4ENQ8IixxyQTNRQxZmq7lsZEGUff/0URhbWUpYpX
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HS4eXQjA
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 790835fcc0cb9992349ae3c9010dbc7321aaa24d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 790835fcc0cb9992349ae3c9010dbc7321aaa24d  igc: Correct the launchtime offset

elapsed time: 723m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                        randconfig-a013
i386                                defconfig
x86_64                        randconfig-a011
powerpc                          allmodconfig
ia64                             allmodconfig
mips                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a015
x86_64                              defconfig
powerpc                           allnoconfig
sh                               allmodconfig
arc                                 defconfig
x86_64                           rhel-8.3-syz
s390                             allmodconfig
i386                          randconfig-a012
arm                                 defconfig
i386                          randconfig-a016
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
i386                          randconfig-a001
alpha                               defconfig
x86_64                          rhel-8.3-func
m68k                             allmodconfig
x86_64                           allyesconfig
s390                                defconfig
i386                          randconfig-a003
s390                 randconfig-r044-20221102
x86_64                    rhel-8.3-kselftests
arc                  randconfig-r043-20221102
x86_64                        randconfig-a004
i386                          randconfig-a014
i386                          randconfig-a005
riscv                randconfig-r042-20221102
x86_64                        randconfig-a002
s390                             allyesconfig
arc                              allyesconfig
x86_64                        randconfig-a006
arm                              allyesconfig
alpha                            allyesconfig
arm64                            allyesconfig
m68k                             allyesconfig
i386                             allyesconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
hexagon              randconfig-r041-20221102
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a002
hexagon              randconfig-r045-20221102
i386                          randconfig-a006
x86_64                        randconfig-a001
i386                          randconfig-a004
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
