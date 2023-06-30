Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D09A74336A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jun 2023 06:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AE896123D;
	Fri, 30 Jun 2023 04:14:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AE896123D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688098462;
	bh=G7Qt0pxQTZ9SwK2QKjsnugjqAUG+XlI3bzzegE8BfNQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zQnHgbeUmEFkaMBU3ugeHNf18xxUqfffErn35WkJvUFpwNsykNpvUGkGl953gOPTD
	 88wUiyE+YzYRDe179SqymJ63IqeRkP96y+9k1ClLDedZBWo3li68t7CWmvFSGxkiMI
	 khUwuyJgrGhOX7Ryr3YH0Ni09YselI+76d54hl9EtTLx36PQdvWON3m+IEVKUkRMYk
	 3i0ecCaFyo3gFm4H0tbDSAIjPvSHp0l5k5vQhgA8Q4fMnQi6zkvy6Bz18AzxErc52Q
	 4pg4bsNB+PLDORly+/ZZElA6A7A0pnoCMXlOHq//Vqdwar7hqrxwRooPqvXNp9e21Q
	 jk8F/OH5WVy0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ALBBNQilvweR; Fri, 30 Jun 2023 04:14:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2915F60D4C;
	Fri, 30 Jun 2023 04:14:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2915F60D4C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A248F1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 04:14:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A81681EC5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 04:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A81681EC5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AtOR1hVIqeg0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jun 2023 04:14:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F1A381E95
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F1A381E95
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 04:14:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="347086565"
X-IronPort-AV: E=Sophos;i="6.01,169,1684825200"; d="scan'208";a="347086565"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 21:14:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="752867787"
X-IronPort-AV: E=Sophos;i="6.01,169,1684825200"; d="scan'208";a="752867787"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 29 Jun 2023 21:14:12 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qF5WN-000EgP-2O
 for intel-wired-lan@lists.osuosl.org; Fri, 30 Jun 2023 04:14:11 +0000
Date: Fri, 30 Jun 2023 12:13:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306301223.MRJI2pIp-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688098454; x=1719634454;
 h=date:from:to:subject:message-id;
 bh=w+LPcqrtAHppmgFRSgKmm74BV0GzybAVKnt5YlabZD4=;
 b=TVldn2QCKWif4rAfQKXI9lIRKU1846dDAMLCeE+FTsf7lZOIBkf/zvW4
 qvKerqrR5lHJdbqZL6h7mEcPFvNg+LW9qrFYmpWzgu1lFyaVYuG9ACU23
 /WmVcOjmjbse+KIIFjOQB17ki49PJ1wqJF9FZy2V2C7jGy7mSyCxopFer
 kYkGefNKmg/NEF4ZtnNDBO9neEXCxvc6fccQZpmMeaVP1iMUVk97+g9K5
 3Hvn2V8txnDmE0iUfxMCQlzWSH9+JTft3jdNzxvBMAHrqKlFctKBEqvXt
 9+C2B23zfu7UXM/smeYHLlMUljV35KndW2h3bS7eaRcQa7ENjbBRTj3Ss
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TVldn2QC
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5cfd2883b7c45f86618545a5a573b39a250beca0
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
branch HEAD: 5cfd2883b7c45f86618545a5a573b39a250beca0  igc: Fix Kernel Panic during ndo_tx_timeout callback

elapsed time: 733m

configs tested: 107
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r025-20230629   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230629   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230629   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r024-20230629   clang
arm64                randconfig-r035-20230629   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230629   gcc  
csky                 randconfig-r014-20230629   gcc  
hexagon              randconfig-r041-20230629   clang
hexagon              randconfig-r045-20230629   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230629   gcc  
i386         buildonly-randconfig-r005-20230629   gcc  
i386         buildonly-randconfig-r006-20230629   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230629   gcc  
i386                 randconfig-i002-20230629   gcc  
i386                 randconfig-i003-20230629   gcc  
i386                 randconfig-i004-20230629   gcc  
i386                 randconfig-i005-20230629   gcc  
i386                 randconfig-i006-20230629   gcc  
i386                 randconfig-i011-20230629   clang
i386                 randconfig-i012-20230629   clang
i386                 randconfig-i013-20230629   clang
i386                 randconfig-i014-20230629   clang
i386                 randconfig-i015-20230629   clang
i386                 randconfig-i016-20230629   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r031-20230629   gcc  
microblaze           randconfig-r005-20230629   gcc  
microblaze           randconfig-r023-20230629   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r012-20230629   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r021-20230629   gcc  
openrisc             randconfig-r004-20230629   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230629   gcc  
parisc               randconfig-r022-20230629   gcc  
parisc               randconfig-r036-20230629   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r016-20230629   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r034-20230629   gcc  
riscv                randconfig-r042-20230629   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r006-20230629   gcc  
s390                 randconfig-r026-20230629   clang
s390                 randconfig-r032-20230629   gcc  
s390                 randconfig-r044-20230629   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r011-20230629   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r003-20230629   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230629   gcc  
x86_64       buildonly-randconfig-r002-20230629   gcc  
x86_64       buildonly-randconfig-r003-20230629   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230629   clang
x86_64               randconfig-x002-20230629   clang
x86_64               randconfig-x003-20230629   clang
x86_64               randconfig-x004-20230629   clang
x86_64               randconfig-x005-20230629   clang
x86_64               randconfig-x006-20230629   clang
x86_64               randconfig-x011-20230629   gcc  
x86_64               randconfig-x012-20230629   gcc  
x86_64               randconfig-x013-20230629   gcc  
x86_64               randconfig-x014-20230629   gcc  
x86_64               randconfig-x015-20230629   gcc  
x86_64               randconfig-x016-20230629   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r033-20230629   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
