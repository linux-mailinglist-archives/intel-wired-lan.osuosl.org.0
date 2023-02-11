Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569CB69303C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Feb 2023 12:18:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C85CE41742;
	Sat, 11 Feb 2023 11:18:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C85CE41742
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676114296;
	bh=yqkPgHoOdjGKt57nfqdZVbiKXn8YgMDGKgkis44Af0g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MX6IYSNecpfw4ogwTot+a+rTCx7R3fDZ+fjO1W1fiCPHEvKIRrJT1cvSoq0y4NfXt
	 Fp6L7SpaZzdQc6ZyUAvApLvaHWfQS55DAFltNLMDsXr/VQGVHRpxZIelcN3VP3mh2z
	 n4a3jQ6HkJhrDvTTDoHdqcFDgZ5N9SZrpIsAtUKA0poazsvT1pK4vmRM990/anaHCJ
	 p528keD+fmqkoteu+M+e8JPXJplT5aGz543gf5snCJoqiB2AUE6nWcACEjg1Y38qTQ
	 GM7u8XLoohLTV7nADi9T2NpkZf+97euO/gP3XqcH3jxy3GBh7L1PuQOhdMXptANWnX
	 qNChOCErRmBmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dn_i0A1jEaUU; Sat, 11 Feb 2023 11:18:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7C4340347;
	Sat, 11 Feb 2023 11:18:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7C4340347
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55BAE1BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 11:18:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36E5160A4F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 11:18:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36E5160A4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ts8yym7M_rq for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Feb 2023 11:18:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2DF860899
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2DF860899
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 11:18:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="318620920"
X-IronPort-AV: E=Sophos;i="5.97,289,1669104000"; d="scan'208";a="318620920"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2023 03:18:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="792243012"
X-IronPort-AV: E=Sophos;i="5.97,289,1669104000"; d="scan'208";a="792243012"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 11 Feb 2023 03:18:06 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQntN-0006S5-2f;
 Sat, 11 Feb 2023 11:18:05 +0000
Date: Sat, 11 Feb 2023 19:17:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e77956.vYpK/QwuLVa9DuGu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676114288; x=1707650288;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=O8B+q4EfQxAdKLPdiEm4ihdbB8JFECyA4/EkrbCoMTw=;
 b=TIhfBm9Epi9aiDCEJ4YcVW2uNkM+FLVVLrTW2DEjqCS1QQQkYwOYlxbX
 o5M+G02P9pHmi6vhh1oIxrWGd457F2fGyhFKyqy8Uh04vISc9/lYYpASJ
 nZnfdYUONGyN8Ajh9HFmf3Q2Q00gbqlk3qcbYovTF6mhxMkJ2Gyqo2pnM
 2kMs0Vs2WT7I3JP4dJlefoQPFFciDaulkMqeY83+qiC+lWVZCTUq6Dgss
 d1/WZnBPqNbVZSiSF53IY5iKoZ8Uob5e0v0rCgnKtkpGfGkDZgpQ7IjhJ
 QV3gBixwDY6rx9hCOgVeX6SzmYjmxIk2jF0eOY0ZcTAbDG4QWf6w6UzBY
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TIhfBm9E
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 101e948648d5aa686220308ac349d3ed5d2a1a74
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
branch HEAD: 101e948648d5aa686220308ac349d3ed5d2a1a74  ixgbe: add double of VLAN header when computing the max MTU

elapsed time: 774m

configs tested: 73
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230211
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
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
riscv                randconfig-r042-20230211
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230211
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3

clang tested configs:
arm                  randconfig-r046-20230211
hexagon              randconfig-r041-20230211
hexagon              randconfig-r045-20230211
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
