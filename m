Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E312617AEF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 11:39:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9B9940B0E;
	Thu,  3 Nov 2022 10:39:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9B9940B0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667471961;
	bh=TRgxnyRbEnz9wfzPaoEIqZ6Jikx6vMZsTjerY2LOSCQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oM8Mg0w3Dx+8uTNIKQ3R+9zTJ7GRpWAg14qrBMKMXO2jzA3A060Xv0U1wgllXAs8t
	 +NkaQDnCgp23OlcG5gZZhBZFhg/xFP2/MuL8ZnK95TL2A7MrC1ZpbqclZbbygjgqsM
	 hrnUiuvqDA7IPNur2CU62md5hcpPh0T5ymPtqTWRnkNYXqZqOCNBdob6vFx4xDin96
	 9aSo28awfvead5cUAqOdO7B4UOLTmzEyuYoaEADoueQBQZgGwnNnm5wcoekINAod4t
	 lrYkHdIRk/BZI6esmvmjEXnoHctWAdikUiqM6MIB30puM7vlfBqNuUgGBMexCEb3pO
	 XMd5OQvX84/8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qQVIv5bSwfNN; Thu,  3 Nov 2022 10:39:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE75040459;
	Thu,  3 Nov 2022 10:39:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE75040459
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C1061BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 10:39:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63D484177A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 10:39:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63D484177A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gkFb7PH8etxG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 10:39:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4464B4175A
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4464B4175A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 10:39:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="290036093"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="290036093"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 03:38:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="612602461"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="612602461"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 03 Nov 2022 03:38:56 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oqXce-000Fpf-0O;
 Thu, 03 Nov 2022 10:38:56 +0000
Date: Thu, 03 Nov 2022 18:38:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63639a0d.Qcv0aiiH0oosIo3M%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667471952; x=1699007952;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FRPrWKCuF70YntA1LemUdODJ811h3xtrOi49btrgBdw=;
 b=l0fzC2daIhHOF/IGy9CHETnRZMNWXayoLfVMUepZQhnfGrAldAJ6ifa5
 1iZAdvlYxTRWKKANrTy0GcoNYjfX6TD7Uui2i//A4XDqJKr2pH0al7OIB
 S8ogycxkGBc8XQA2HfhNRjUk2YfP3lWMBtIOZ35PD7A/I4dsG5poeSNPD
 69UA6BsgRK258iYW1lpmX/yFAh380Xsg2PduwcKAQbD/V1mT647BAO+3i
 CieG4IQzVkrdn2KES8o3e5ZGVaNHIw1wjgqv0QAtrLegrNu32mKRP2/ij
 52LJvPbgJ/tuQpEN+tYef0xrpvqqTpsh/laN8leBFkvfl1M3m+LekSxpK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l0fzC2da
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 55f71c9f4e2ad7e15dd3506f69fe7346ee893f79
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
branch HEAD: 55f71c9f4e2ad7e15dd3506f69fe7346ee893f79  igc: Use strict cycles for Qbv scheduling

elapsed time: 720m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arc                                 defconfig
s390                             allmodconfig
ia64                             allmodconfig
alpha                               defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
s390                                defconfig
sh                               allmodconfig
s390                             allyesconfig
arc                  randconfig-r043-20221102
riscv                randconfig-r042-20221102
i386                          randconfig-a001
i386                          randconfig-a003
s390                 randconfig-r044-20221102
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                          randconfig-a005
x86_64                               rhel-8.3
x86_64                              defconfig
x86_64                           allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                          randconfig-a014
m68k                             allyesconfig
m68k                             allmodconfig
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
arm                                 defconfig
i386                                defconfig
x86_64                        randconfig-a004
arm64                            allyesconfig
x86_64                        randconfig-a002
arm                              allyesconfig
x86_64                        randconfig-a006
i386                             allyesconfig

clang tested configs:
hexagon              randconfig-r041-20221102
hexagon              randconfig-r045-20221102
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
