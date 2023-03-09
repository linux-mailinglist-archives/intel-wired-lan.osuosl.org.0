Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EFA6B23AB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 13:09:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25F61820C1;
	Thu,  9 Mar 2023 12:09:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25F61820C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678363773;
	bh=e9YYMhESlejY5jivJFYfjv7h8wyUoS3dR75u906tYVk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lvve0NdYItN4oM6wJjX4Ko1Yd1Jsgf+BdMHRz6KOdbNdjP6Ya82LnxtUCWmOoykbB
	 lBUlMp1MFSp8v+nXuM4+RhtkE6jhkRxbel6Gx2FZdFacxS9Spc9Q6+60Okk2zny9UN
	 uHp7MeShK5EVIl0MrfGROk+MTv9D4OEpgw0aPqkb9RlezKLFSL1iD3+heZvrxkoeYT
	 lA9ylcy8w+L4l5iqFJveUyZ7D/Y9A8SuBerrHuSuPBKjbUe4cJ4PbjnJyibryUMMRH
	 Hf6QL0V6zHJYn9xtI39W/D2wnl8tXs06CMPlzx7hQ7F0O7PQp14SZCvkk2Olf/pYUN
	 iOdM4tYDNT8lQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1hZUWagzmhU; Thu,  9 Mar 2023 12:09:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08CB081FFD;
	Thu,  9 Mar 2023 12:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08CB081FFD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C3ED1BF281
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 12:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1D0D6123E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 12:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1D0D6123E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CB24LrsSWaZM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 12:09:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DF7D60DE5
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7DF7D60DE5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 12:09:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="337954907"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="337954907"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 04:09:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="627332001"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="627332001"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 09 Mar 2023 04:09:23 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1paF5H-0002vj-0c;
 Thu, 09 Mar 2023 12:09:23 +0000
Date: Thu, 09 Mar 2023 20:08:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6409cc4c.61W374PYiFsHY1QN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678363765; x=1709899765;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=gIlGWDJE6nsGD5YLlQTF1WzFvpJKlSjncM/M8KzYkLM=;
 b=XJG0NKfSRXZDU1TmIVpQSxlclc+IkBXVIQHo8prHRvc+V0GrouRUDU40
 NVLgLOVDrUchY/Axf8hsluWgx73OBpzRzPHilUVfKkLTKJUJ2jLh5vEAw
 COCAk+uGU+GZxR0TGT7vrmEcWMozPIrzbbedauf1TT6DbrZoYmmfQvRBG
 y4uzC6z9rDR0pQQTYMXvFvoXZ7yeUj9DZdhl4PoBJfp8SpBq9JhJvgHS2
 nCIW7WivqKM16rWkNJCy7boGfuHWuPkdlqH1ydR2kZfGYxgwy3dMg0AHN
 aYSdT5dV61kWKo6zLtm8vWSipVehZtk0uPujDIyaZTu5Op1ntQn8L3fww
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XJG0NKfS
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ef462ac0b85036ebb16dc3d5ee135742f92f5383
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
branch HEAD: ef462ac0b85036ebb16dc3d5ee135742f92f5383  igb: refactor igb_ptp_adjfine_82580 to use diff_by_scaled_ppm

elapsed time: 805m

configs tested: 82
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230309   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r023-20230308   gcc  
arc                  randconfig-r043-20230308   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230308   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230308   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230308   gcc  
arm64                               defconfig   gcc  
csky         buildonly-randconfig-r005-20230308   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230308   clang
hexagon              randconfig-r045-20230308   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a006   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230308   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230309   gcc  
loongarch            randconfig-r012-20230308   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230309   gcc  
m68k                 randconfig-r016-20230308   gcc  
m68k                 randconfig-r024-20230308   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r026-20230308   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r032-20230308   gcc  
openrisc     buildonly-randconfig-r006-20230308   gcc  
openrisc             randconfig-r022-20230308   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r013-20230308   clang
powerpc              randconfig-r033-20230308   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230308   clang
riscv                randconfig-r042-20230308   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r021-20230308   clang
s390                 randconfig-r025-20230308   clang
s390                 randconfig-r035-20230308   gcc  
s390                 randconfig-r044-20230308   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r031-20230308   gcc  
sh                   randconfig-r036-20230308   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r001-20230308   gcc  
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
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230309   gcc  
xtensa               randconfig-r005-20230309   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
