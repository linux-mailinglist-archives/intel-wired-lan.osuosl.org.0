Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E228C6A84F9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Mar 2023 16:13:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78EC441006;
	Thu,  2 Mar 2023 15:13:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78EC441006
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677770006;
	bh=KHkFpMnXGwZ0Tpmm+V9fpZAO4Eq3C2zEWyTWB4T1t5s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fcwcACVuB7KBPXe/HmxeXnTPPvIIMXqOlAn7rQMaTXkrIpYHBf4J/7uR0YlzqN40l
	 AH4JFnR/UjE3KpZ4JdT855dRpzt2w5lyiH0TJhoFFNGe2Tvwl3HAtNQL49LukLQo53
	 8gydloXtMLiSW7rE1ymndXoBRMX6yGB2h3c3EUT0PXFxbv/lDrWjL7jJJne91dMDrn
	 KNiz/bwXczVdr4vzOqn9ODoz1MWzHQND4aUBXGpaDoSYmrP+BP5vdm1M3DA6Bh7rEN
	 yd/NEccuLF1ru4nPZsQXy3NLFHJ11mjyvWnT6N35SikK51D2C8NgyeUAEjc/iXwfGP
	 UtDN2lC7iaIvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c2Lp-JJnle6O; Thu,  2 Mar 2023 15:13:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DFBC41005;
	Thu,  2 Mar 2023 15:13:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DFBC41005
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0576B1BF59D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 15:13:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD7CF612C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 15:13:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD7CF612C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6cSx6M0onC63 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Mar 2023 15:13:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D24D1612AC
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D24D1612AC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 15:13:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="333468000"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="333468000"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 07:13:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="677252470"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="677252470"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 02 Mar 2023 07:13:17 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pXkcO-0000YC-1E;
 Thu, 02 Mar 2023 15:13:16 +0000
Date: Thu, 02 Mar 2023 23:13:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6400bd0b.HBMm18/8IZZInuMD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677769998; x=1709305998;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xMH0mRFbsfcLwxvAWqlFOEXWKZEVEaTusjFV0LBJRaU=;
 b=grR1zVBaSB65sfaQcvJnZ4rThw6AbFzqsHiWMdvgGtaEy8EdJt0FvchW
 5Cjb5yRRndFCrxKj7eooVCh1uudAx00I+qtvfjEflPkG4xsGUV40iq4gY
 9Z0eKR1TYefGaWjoHDFVaBZRHzApmkjXbpSM7cZLbceXVCOCrYY+mkIvJ
 1yNObkVVVj4FRjiHaDqr2MnTXLF+qrCatvZIb0/I3JoS8iDQhbtQVSy9u
 6DSiWvgG+agGWqoNCCMvzewLbb0Yw1OQCJl0K2bVYenJkcjdGsQI73KuE
 Ruz93452DjqJ6ySFOaYboJxqXcNUmXk1Q7JSGC4B44aV8gtoIg/EfyQmm
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=grR1zVBa
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 9720e8b1250ff31687ada520211d3e5af5099a85
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
branch HEAD: 9720e8b1250ff31687ada520211d3e5af5099a85  ice: avoid bonding causing auxiliary plug/unplug under RTNL lock

elapsed time: 1014m

configs tested: 103
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r012-20230302   gcc  
arc                  randconfig-r036-20230302   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230302   clang
arm                  randconfig-r003-20230302   clang
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r025-20230302   clang
arm64                randconfig-r035-20230302   gcc  
csky         buildonly-randconfig-r006-20230302   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r022-20230302   gcc  
hexagon      buildonly-randconfig-r005-20230302   clang
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r045-20230302   clang
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
ia64                 randconfig-r014-20230302   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r026-20230302   gcc  
m68k                 randconfig-r032-20230302   gcc  
microblaze   buildonly-randconfig-r003-20230302   gcc  
microblaze           randconfig-r023-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r004-20230302   clang
mips                 randconfig-r005-20230302   clang
nios2                               defconfig   gcc  
nios2                randconfig-r015-20230302   gcc  
openrisc     buildonly-randconfig-r004-20230302   gcc  
openrisc             randconfig-r016-20230302   gcc  
parisc       buildonly-randconfig-r002-20230302   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r011-20230302   clang
powerpc              randconfig-r024-20230302   clang
powerpc              randconfig-r031-20230302   gcc  
powerpc              randconfig-r033-20230302   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r006-20230302   gcc  
s390                 randconfig-r021-20230302   clang
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230302   gcc  
sparc64              randconfig-r013-20230302   gcc  
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
xtensa       buildonly-randconfig-r001-20230302   gcc  
xtensa               randconfig-r034-20230302   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
