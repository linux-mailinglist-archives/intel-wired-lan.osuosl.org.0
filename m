Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF996B0479
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 11:33:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C19F4813A8;
	Wed,  8 Mar 2023 10:33:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C19F4813A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678271631;
	bh=rPwV9m9y0AY2BDQrOIw2WFq8xOwf+1cgJ5NaxVOcmTs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jRwuwyWAkROR+MSR6htnMcgEGT2DT4ZGwExXXgm+Cmat/y6tnYqmJazPVl0UjaPUU
	 KAtGnyliwX1LK/kvUIbwl7WiNTX11hgOPJLWauS4pPzPMOe3pbyvdxxDl3RBUPEO0x
	 Z4+1IgjOYaEEiwvpY3Ad21FUYCQaE+umg1DCSUvXN1X+w2xPnSwJaTrSoGIMeP2azV
	 9L/48jrCvouvCIX5iOHJ4Xete94t5Skh8fHL6HqCFnqq5Vp1kPmEnKRBMMawzH2NOo
	 gBE/4/ZD1ISSw1Qn0rba+t+mg3LsL3twJef+c66s91DdQvDXckZYK8WLrF7+gkooZQ
	 R5a08td2/QWFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BTrxse4CDE2v; Wed,  8 Mar 2023 10:33:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF81381351;
	Wed,  8 Mar 2023 10:33:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF81381351
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6DE201BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 10:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4680B60C14
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 10:33:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4680B60C14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wg7L1DPILCYe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 10:33:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26D1A60A70
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26D1A60A70
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 10:33:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="363755605"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="363755605"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 02:33:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="800708637"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="800708637"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 08 Mar 2023 02:33:43 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZr78-00023x-1n;
 Wed, 08 Mar 2023 10:33:42 +0000
Date: Wed, 08 Mar 2023 18:32:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64086459.x8u08AbzFbpceO3F%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678271625; x=1709807625;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=iX+dfq9xaltcMet0TpBwymh5VXmIZtoC16ms3/Ne4vw=;
 b=QEge+8+oM6xjjgdYDDJjE8jGO09NAjd93SaWig6h32vatLwplCXv35ng
 4hNa4g8LQb18IM0cVSdBzv7MKf35mAOlk/5BKAZ4+N4e+LlhEf+KXorfE
 241DopSFERrUf4a9ytW1aI6AbuOKXj2xn+wLOFpNm3+m3yheV3LvT5RIg
 XLM95JMocHyy/rfkxZMtTcQhVdnzhRALtCwdZrD2oBLGyhCRLJbRlmbhB
 CDuy/PKOyuyCJJf4siVBK5sDRi5kpfo3GyFsTPv2n8SE/G2EKvAiCfFeQ
 NUe4sIXw0QKj+1JHsxtpjVNb5SQmXMBXBuzApI7eRrD0GmRejKcFfSY8n
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QEge+8+o
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e4519b03922f4f6388064e6069c1bf9e7a7aeffc
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
branch HEAD: e4519b03922f4f6388064e6069c1bf9e7a7aeffc  igbvf: add PCI reset handler functions

elapsed time: 721m

configs tested: 102
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230305   gcc  
arc                  randconfig-r014-20230305   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230305   clang
arm          buildonly-randconfig-r005-20230305   clang
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230305   gcc  
arm                  randconfig-r031-20230306   clang
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230306   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r012-20230306   clang
arm64                randconfig-r015-20230305   gcc  
csky         buildonly-randconfig-r004-20230305   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-r004-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r013-20230305   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230306   clang
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230305   gcc  
nios2                randconfig-r021-20230308   gcc  
openrisc     buildonly-randconfig-r001-20230305   gcc  
openrisc     buildonly-randconfig-r002-20230306   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230306   gcc  
parisc               randconfig-r024-20230308   gcc  
parisc               randconfig-r034-20230305   gcc  
parisc               randconfig-r035-20230305   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r003-20230305   gcc  
powerpc              randconfig-r014-20230306   clang
powerpc              randconfig-r016-20230305   gcc  
powerpc              randconfig-r023-20230308   clang
powerpc              randconfig-r033-20230306   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r006-20230305   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r032-20230306   gcc  
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230306   gcc  
s390                 randconfig-r025-20230308   clang
s390                 randconfig-r033-20230305   clang
s390                 randconfig-r034-20230306   gcc  
s390                 randconfig-r035-20230306   gcc  
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230305   gcc  
sh                   randconfig-r003-20230305   gcc  
sh                   randconfig-r022-20230308   gcc  
sh                   randconfig-r031-20230305   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230306   gcc  
sparc                randconfig-r006-20230305   gcc  
sparc                randconfig-r036-20230305   gcc  
sparc64              randconfig-r036-20230306   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230306   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r006-20230306   gcc  
xtensa               randconfig-r002-20230305   gcc  
xtensa               randconfig-r006-20230306   gcc  
xtensa               randconfig-r011-20230306   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
