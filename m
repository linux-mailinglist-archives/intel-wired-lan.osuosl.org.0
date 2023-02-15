Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D160369769A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 07:48:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 122D1813A5;
	Wed, 15 Feb 2023 06:48:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 122D1813A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676443729;
	bh=tHmtCtSqlMNDz5yxmy1AJFrt1kyvW7jFinEOFyWRv90=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ukru2QhPy7gXBFK1AjsTVz6KvUdTJyGKRwEPTA8dEGH3Z8g9Qj7U8QGJxx0Ae4dFf
	 TXFppFkPoZH1dyoFTq7nrDtRD5BwwwSF0n3cULQ6gpvkTUTHOH8X0pQ8nHrHrkpp2M
	 KAwF5FVbwqxhggiNNoqkA5o6lMCI6WsDnzSXPD4O4mZdMvm/l+S4iQnYLWBCmEjRw7
	 rJhUV4xhJ4q7L7h6YbOOfluUgwqqzltdXDDuSrgtm7RLNgu0L9iYBpMQ2Xq03lQuMo
	 BgL7FdYzTCUHgdiaG70KwDjL+v0W6EFGJc/MkYeFL1R+gRRv86qwbAxThVQMkbsk4B
	 PhErGAn2z1vGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fv4YA016-e6M; Wed, 15 Feb 2023 06:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AABA81376;
	Wed, 15 Feb 2023 06:48:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AABA81376
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68DA21BF84C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 06:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C02860BD3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 06:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C02860BD3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eRFjv--suGVD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Feb 2023 06:48:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE16660B3B
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE16660B3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 06:48:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="331362051"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="331362051"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 22:48:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="669497389"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="669497389"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 14 Feb 2023 22:48:36 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pSBak-000985-2A;
 Wed, 15 Feb 2023 06:48:34 +0000
Date: Wed, 15 Feb 2023 14:47:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ec801d.4CzRcNIQgATNYw+F%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676443722; x=1707979722;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=QOJJ40/sLPkNwRyLMOPERFnkAMJuZLPCWJgxsXy2da8=;
 b=Lu0gKma54bTgkOLFlNXxHI1/RgovEcZcBbiQ1Ti/qPeCFliTug4tsn00
 swFqiZKDi1/8Gnz5ewVCzdcRCi3ilkDmN+C2not+JsYmCvBKQa622r+Z3
 DkuJ8I/utLW0tTyhuagLp37DiKjK8MkDW0f2X/bz0CANwReEqnbnUILh0
 lVy/LVV5mAz+G2ML2xsjqD2mRg3myBDPHs+47veYupFCNc68qDP3J3o6q
 hVRi+Ns2gFHDN/EGMR3VOm2XZzunUVHOsU9hACQGMGy346gdaAXWJrjDz
 NbOez8qbyPfA4d3XcoVoRAIhJzKYHsLi7EdvaSxuQd1Rc678DUilY7t0/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lu0gKma5
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 2edd92570441dd33246210042dc167319a5cf7e3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 2edd92570441dd33246210042dc167319a5cf7e3  devlink: don't allow to change net namespace for FW_ACTIVATE reload action

elapsed time: 963m

configs tested: 61
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230212
arc                  randconfig-r043-20230213
arc                  randconfig-r043-20230214
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230212
arm                  randconfig-r046-20230214
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                randconfig-r042-20230213
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230213
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3

clang tested configs:
arm                  randconfig-r046-20230213
hexagon              randconfig-r041-20230212
hexagon              randconfig-r041-20230213
hexagon              randconfig-r041-20230214
hexagon              randconfig-r045-20230212
hexagon              randconfig-r045-20230213
hexagon              randconfig-r045-20230214
riscv                randconfig-r042-20230212
riscv                randconfig-r042-20230214
s390                 randconfig-r044-20230212
s390                 randconfig-r044-20230214

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
