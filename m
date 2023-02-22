Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E70F69EE48
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 06:26:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3AD940207;
	Wed, 22 Feb 2023 05:26:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3AD940207
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677043566;
	bh=aj2hbTm2UkREl+ImsPZBwTsCZJNQcpJfCInBmLpUArU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=x+d8Jh8noINCRjSKocba/FvLSUbyly7FpABdqPARS2WDz/ozykmmaxYquDks5aP2V
	 uED07G4BiasF4oY1XYBHboA/6xp83R4MaCkAjiJZ+DzSmQVQ3XqGsbY9s3XgEaFqhM
	 Cb6qeP5kO99H0Eg52k3+A9L9kKfcz0rahW6/poDZHg3IIKVDzjKT1yK2ZbvcJQ+X5G
	 QSUcPV+yTWl0LZ192cUxOJWquh+f8wHL/cVzNWjXyALL8YT2IN/vosPzXkTPCDGQUJ
	 VVZmsK7r04GMLWCBaXZzXiQUvspfOUV4x3LexhI8phKPEvOvRc8D4PWjt10qIPq6Rw
	 DA5IO4XCyrv+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0bFZrW63Vt1Y; Wed, 22 Feb 2023 05:26:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96CC34017B;
	Wed, 22 Feb 2023 05:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96CC34017B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE7181BF294
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 05:26:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CEA324017B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 05:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEA324017B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ll31D3XCZisS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 05:25:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9924740138
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9924740138
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 05:25:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="419066790"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="419066790"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 21:25:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="704335890"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="704335890"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 21 Feb 2023 21:25:56 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pUhdb-00001D-1b;
 Wed, 22 Feb 2023 05:25:55 +0000
Date: Wed, 22 Feb 2023 13:25:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63f5a75c.sIsY20eqr0MSXvOV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677043558; x=1708579558;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mWo0uQXWZ+cnCtBb4Wbjmxigg3UmBEU5JEHkt4ukdnM=;
 b=d/8lHFjXXqucPmqXHiGw7gMhfj94sCvZ3Mq3dS3o0hYrCJZvlGB5u7CR
 ACqRCw6m1dLJlLTYwRidemN+HnYTbe+XAIKVU2d2WqUnozkD9E6AWuIhI
 H3JGA6IpJeiTlYkAVQzkq8Tm2VAnUdMmBpS/dpt+zajuCfkI9LHEQgJbe
 DgC7yas/Q1/Sn0zuI9J5QfOyvnAbbcqHplkJmukE2ShqXCsauab51KtdZ
 nMRQo6oXSMqbYXK+zcjnv3bOMQKhXTDG9hp30vgxXOHhCFZ9Mlqi6qItN
 +dEA5asTVPmb2RT5/iz6AEcV/2Ky3QGmoCLMBDUV6Pnbh5s2Xc+YtkTgm
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d/8lHFjX
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 96eae21db57d1013116a708c7a6db051becf218f
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
branch HEAD: 96eae21db57d1013116a708c7a6db051becf218f  ice: Write all GNSS buffers instead of first one

elapsed time: 720m

configs tested: 79
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230219
arc                  randconfig-r043-20230220
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230220
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                 randconfig-a001-20230220
i386                 randconfig-a002-20230220
i386                 randconfig-a003-20230220
i386                 randconfig-a004-20230220
i386                 randconfig-a005-20230220
i386                 randconfig-a006-20230220
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
riscv                randconfig-r042-20230219
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230219
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64               randconfig-a001-20230220
x86_64               randconfig-a002-20230220
x86_64               randconfig-a003-20230220
x86_64               randconfig-a004-20230220
x86_64               randconfig-a005-20230220
x86_64               randconfig-a006-20230220
x86_64                               rhel-8.3

clang tested configs:
arm                  randconfig-r046-20230219
hexagon              randconfig-r041-20230219
hexagon              randconfig-r041-20230220
hexagon              randconfig-r045-20230219
hexagon              randconfig-r045-20230220
i386                 randconfig-a011-20230220
i386                 randconfig-a012-20230220
i386                 randconfig-a013-20230220
i386                 randconfig-a014-20230220
i386                 randconfig-a015-20230220
i386                 randconfig-a016-20230220
riscv                randconfig-r042-20230220
s390                 randconfig-r044-20230220
x86_64               randconfig-a011-20230220
x86_64               randconfig-a012-20230220
x86_64               randconfig-a013-20230220
x86_64               randconfig-a014-20230220
x86_64               randconfig-a015-20230220
x86_64               randconfig-a016-20230220

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
