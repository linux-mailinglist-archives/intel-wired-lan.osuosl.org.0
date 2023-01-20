Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5236756B8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jan 2023 15:13:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA79361259;
	Fri, 20 Jan 2023 14:13:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA79361259
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674223996;
	bh=Giy0oicihb8HTvp4aOAKEOItifOFBbqiTjILVecvYmA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6sdMBQMHdO8n8oYk9lx7iRakh8LKP87wXY3Q3qQrf2g3xGg8nkRqzUImFA6EjkcE1
	 3sHDTIJQibBEI+vfw0npsXTJzrzmEI81kVjCozHviNJZhis2rFOhw1h5rgV34HG51w
	 J2aEhFhbsaDvI+R7vdDPpY1JjCsoyG/MlS7roq9p3sEvikIIhg6ibPQH5wc+/DryP+
	 jy8ZZ3qlRA7Z9pa/G9Ug3sjoPCZ29trpkj+VFpti90tEdc6FKafw9N6+paPPuPvk0y
	 4/+BYcG3zeQBkNT1hyC+bRaOImKuKGh6FMXn4JU2KiSWuYlxxThYIPFOFTwWJAP/wQ
	 WjU0oixulq+gQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wEMPHJWOpbmS; Fri, 20 Jan 2023 14:13:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0D1660E91;
	Fri, 20 Jan 2023 14:13:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0D1660E91
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C823A1BF328
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 14:13:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A218B60E91
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 14:13:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A218B60E91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9z-OAA5ATLct for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 14:13:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D2FD60760
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D2FD60760
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 14:13:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="305950850"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="305950850"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 06:13:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="660588760"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="660588760"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 20 Jan 2023 06:13:06 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIs8f-0002bu-09;
 Fri, 20 Jan 2023 14:13:05 +0000
Date: Fri, 20 Jan 2023 22:12:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63caa164.pHvsHOQo7ri6+2VZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674223988; x=1705759988;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FsWW+Z4cd7VMz/7ueq6R0Qanumzmmh0bPBQo6HLojEY=;
 b=IcVd5vRlKJfLzL+l/IXlUQjwzSFyf7Afvegwx7V53Q59/ac5yuMGKPqL
 BLhZlP9bwdfN/892EDb4EOJ1zLDbwzAPVBLCTfBK3Hsnk9OiA1ZOeWMG6
 X+Ps6E7rGRktEhPKQQZHnDT9ehG9UmoHXAiRBy8f7CC5YpbCVT1MLObZf
 2/kQ0XIWMdLpsJMQDthp/VV3id2VAAl6CxggfysKZzxIQybbuHP1AJfnj
 J6kpnrhJzr6Ydzn1y+jEQv1fYFBMa6GPij8TWXvCgQSnXaO3TB5Ug9cYb
 STSUe+V4N1lYc4ro/TT4ngX+Dru0V+Rfb64Zd+TTx9Pit1lLOP/aH/PGZ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IcVd5vRl
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 71c3a0ca162ecb5e0296a6e8d9acef547202d5cb
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
branch HEAD: 71c3a0ca162ecb5e0296a6e8d9acef547202d5cb  ice: Do not use WQ_MEM_RECLAIM flag for workqueue

elapsed time: 863m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
x86_64                            allnoconfig
s390                             allmodconfig
s390                                defconfig
arm                  randconfig-r046-20230119
arc                  randconfig-r043-20230119
s390                             allyesconfig
arm                                 defconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arm64                            allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a013
x86_64                           allyesconfig
x86_64                        randconfig-a011
um                             i386_defconfig
arm                              allyesconfig
um                           x86_64_defconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a006
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
ia64                             allmodconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
riscv                               defconfig
sh                           se7722_defconfig
powerpc                  storcenter_defconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig

clang tested configs:
hexagon              randconfig-r041-20230119
hexagon              randconfig-r045-20230119
riscv                randconfig-r042-20230119
s390                 randconfig-r044-20230119
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a006
x86_64                          rhel-8.3-rust
x86_64                        randconfig-k001
powerpc                 mpc8315_rdb_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
