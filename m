Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8438B6F12F0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Apr 2023 10:00:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21A436167C;
	Fri, 28 Apr 2023 08:00:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21A436167C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682668844;
	bh=6dkCcPhz+NT42Ylw2F7W9LOyMY6ga1r/iXJ8y9EPt8o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aHziILJwuiZWeoxUJquoFOjVh+MlZciOk0Wxs9S7ISg76YkZN3Bf7y5mEFcGIVQIs
	 gM3ovvOUzsxAKOzqp2leoyoN0efU4Z8vYiMVMP2N/6xi40zEJYSFY7a0U7kTTOeKxq
	 S4oSUn5Aw1bnMDTi0xclwn9CaeopfWS0m7uajXhOrQb2QnViQOwV6dnN0OybLhB+wD
	 HOyM34B0uEuIq+kGGUrm/dWo06OVwLAyDhXlZrh0LAL5JdYqz/UgSS7T4p32fqlc/c
	 +uVTmdKb9u5b4BgcbOHaSqYVbQtue9KUX9rWkyO+63OFqE5+tHsVyzKFAtXhJFHXN0
	 HmKq6b2or4apQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OO_zs8cZdt6H; Fri, 28 Apr 2023 08:00:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDF346166E;
	Fri, 28 Apr 2023 08:00:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDF346166E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 11B1E1BF589
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 08:00:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DCD424209D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 08:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCD424209D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDLOLZKpHKdF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Apr 2023 08:00:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D90142126
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9D90142126
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 08:00:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="413061377"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="413061377"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 01:00:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="725274473"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="725274473"
Received: from lkp-server01.sh.intel.com (HELO 5bad9d2b7fcb) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2023 01:00:26 -0700
Received: from kbuild by 5bad9d2b7fcb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1psJ1m-0000IG-0c
 for intel-wired-lan@lists.osuosl.org; Fri, 28 Apr 2023 08:00:26 +0000
Date: Fri, 28 Apr 2023 16:00:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230428080017.J31n9%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682668828; x=1714204828;
 h=date:from:to:subject:message-id;
 bh=FyfZBrV0AbG5D+YGZHR6n1KpqEvaHgyCigxRQgKxun8=;
 b=i0zdeuhS7lpfh9/44UsTtftQLQRnqC31LIgvJEFr7Qjp5OMxnWAyoXXB
 6TRf06yNEJpv+Jc6pfotZUs2yB/WOHSdAVtkk0Ef/UKHsLKuPMlZu4zEL
 DvDjT2t/V1MPPen8bVavKO9wyU9V1Kppy6Q/FtMznA9AYVD227ddJuph1
 czrlWe+DXr+/e/+7Z838HBbp1Cn606ATT/h3uVqJDF0GBQ4nC207oHP3X
 R7Pw3484E8OQ3tEIthHlVulfBRJqeHkg/ueY5oeYP0xrBAtZDexKUp8yq
 Y+m6x3iZFmEvWP6Hwyp0dq3YcD7YaTMnUhu9TJuZdJMuTSQNSj3+40RwE
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i0zdeuhS
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 969e69c3f113ee53b67860ebea1f077f5fb02a86
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 969e69c3f113ee53b67860ebea1f077f5fb02a86  igb: fix bit_shift to be in [1..8] range

elapsed time: 831m

configs tested: 121
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230427   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230428   gcc  
alpha                randconfig-r013-20230427   gcc  
alpha                randconfig-r034-20230427   gcc  
arc                              allyesconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230428   gcc  
arc                  randconfig-r032-20230427   gcc  
arc                  randconfig-r043-20230427   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230427   gcc  
arm                     davinci_all_defconfig   clang
arm                                 defconfig   gcc  
arm                           h3600_defconfig   gcc  
arm                         orion5x_defconfig   clang
arm                  randconfig-r046-20230427   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230428   gcc  
hexagon      buildonly-randconfig-r006-20230427   clang
hexagon              randconfig-r015-20230427   clang
hexagon              randconfig-r041-20230427   clang
hexagon              randconfig-r045-20230427   clang
i386                             alldefconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r012-20230427   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch            randconfig-r001-20230427   gcc  
loongarch            randconfig-r014-20230427   gcc  
loongarch            randconfig-r031-20230427   gcc  
m68k                             allmodconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k         buildonly-randconfig-r003-20230427   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230428   gcc  
m68k                 randconfig-r006-20230428   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ip27_defconfig   clang
mips                        maltaup_defconfig   clang
mips                 randconfig-r035-20230427   clang
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230427   gcc  
nios2                randconfig-r025-20230427   gcc  
nios2                randconfig-r036-20230427   gcc  
openrisc             randconfig-r033-20230427   gcc  
parisc       buildonly-randconfig-r004-20230427   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230427   gcc  
parisc               randconfig-r024-20230427   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                        fsp2_defconfig   clang
powerpc                       maple_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc              randconfig-r011-20230427   clang
powerpc                     stx_gp3_defconfig   gcc  
powerpc                     tqm8548_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230427   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230427   clang
sh                               allmodconfig   gcc  
sh                                  defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                   randconfig-r026-20230427   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230428   gcc  
sparc                randconfig-r006-20230427   gcc  
sparc64                             defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
