Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433198258D2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jan 2024 18:04:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 648D3436D3;
	Fri,  5 Jan 2024 17:04:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 648D3436D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704474270;
	bh=q3hM6fzA5VPuV9cvC1ITm1rmLbvFXEy28VZYKfhvpq8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=c4YeWS8ICYKVfd3lIO3RDMIpUyl6grvWwIPsrAlkW7hHXiFE/O7D2IyY0K7PcmkTH
	 kWSPzzuNR3hZ03S6P34EJUeMazMQH1NlcJro2jG8pmwhJ90p6QGJbbnYqOdx9hI1GF
	 0vXgDjZGEVEqzmoVs/YxrXq+gIeg1RRFWLACbFU/0yV+ELFFxXmH4JWbU9yF2jrF11
	 fXA7FQh+Kbeemv1MRkS7Geg2HG0FZGJcebE0Rw0E/wzDcGJjWI6X4WXovLPDzN1FN7
	 jwMGfLgy4ZOFHkc7bSbR2jlXWC29ZJNCpNARvumVRH2FVoJgyJrFHH7f1aF2oQiPR0
	 +85Yz0E0GIt4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 65v0ngbQ9HMg; Fri,  5 Jan 2024 17:04:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E55464027F;
	Fri,  5 Jan 2024 17:04:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E55464027F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E51521BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 17:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BCECA41E4F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 17:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCECA41E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FsOD8OIyOSqs for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jan 2024 17:04:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C163041DE6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 17:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C163041DE6
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="4309065"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; 
   d="scan'208";a="4309065"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 09:04:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="904192884"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="904192884"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 05 Jan 2024 09:04:08 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rLnc6-0001Uh-11
 for intel-wired-lan@lists.osuosl.org; Fri, 05 Jan 2024 17:04:06 +0000
Date: Sat, 06 Jan 2024 01:04:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401060158.QkEjsHXh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704474263; x=1736010263;
 h=date:from:to:subject:message-id;
 bh=CYTkaSZEU+TuUI6AQH13Ild8Hv6ER1xkdNdxWcdDh5Q=;
 b=itXJH0KZpoEOkUGf4bnzpCyu6YG0bmK1Fv1AjzeqUJu/wK7Ncx1qjCES
 NW9Ex5asW3aF/MBW30rV7BwU53rDMdOqvZUaljzo497jgE0UkTnMZNpaH
 Qxe1KG49HGbUJCpnNU9Vxle+36/f28qOl8Mq/G+C7MpCV/RvdPw3PNtfK
 yJhhV+2R4dLK6OVXYClCA3+79+2gCPgcp0NXHeyrkt8jCmld8cSimRFhB
 y7DAeqdl5UDzDuRVTGJV7PHjzjd8KPCJEu3ECUk4EyRHmoNu+PGIgRS6J
 D/9n44iTo/s/wSDHMFIRHBfvwU6kd7Y3XWm1J4j+vnv5UdPJhj0Q6A1mu
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=itXJH0KZ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e69668b12cf647b2d0883bef3a79eb1963d0314d
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: e69668b12cf647b2d0883bef3a79eb1963d0314d  e1000e: remove force SMBUS from ULP enable flow to avoid PHY loss issue

elapsed time: 1458m

configs tested: 143
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                   randconfig-001-20240105   gcc  
arc                   randconfig-002-20240105   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                       multi_v4t_defconfig   gcc  
arm                   randconfig-001-20240105   clang
arm                   randconfig-002-20240105   clang
arm                   randconfig-003-20240105   clang
arm                   randconfig-004-20240105   clang
arm                          sp7021_defconfig   clang
arm64                            allmodconfig   clang
arm64                 randconfig-001-20240105   clang
arm64                 randconfig-002-20240105   clang
arm64                 randconfig-003-20240105   clang
arm64                 randconfig-004-20240105   clang
csky                             allmodconfig   gcc  
csky                             allyesconfig   gcc  
csky                  randconfig-001-20240105   gcc  
csky                  randconfig-002-20240105   gcc  
hexagon                          allmodconfig   clang
hexagon                          allyesconfig   clang
hexagon               randconfig-001-20240105   clang
hexagon               randconfig-002-20240105   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240105   clang
i386         buildonly-randconfig-002-20240105   clang
i386         buildonly-randconfig-003-20240105   clang
i386         buildonly-randconfig-004-20240105   clang
i386         buildonly-randconfig-005-20240105   clang
i386         buildonly-randconfig-006-20240105   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20240105   clang
i386                  randconfig-002-20240105   clang
i386                  randconfig-003-20240105   clang
i386                  randconfig-004-20240105   clang
i386                  randconfig-005-20240105   clang
i386                  randconfig-006-20240105   clang
i386                  randconfig-011-20240105   gcc  
i386                  randconfig-012-20240105   gcc  
i386                  randconfig-013-20240105   gcc  
i386                  randconfig-014-20240105   gcc  
i386                  randconfig-015-20240105   gcc  
i386                  randconfig-016-20240105   gcc  
loongarch                        allmodconfig   gcc  
loongarch             randconfig-001-20240105   gcc  
loongarch             randconfig-002-20240105   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                       allyesconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                 randconfig-001-20240105   gcc  
nios2                 randconfig-002-20240105   gcc  
openrisc                         allyesconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                randconfig-001-20240105   gcc  
parisc                randconfig-002-20240105   gcc  
parisc64                         alldefconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                          allyesconfig   clang
powerpc                          g5_defconfig   clang
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                     powernv_defconfig   clang
powerpc               randconfig-001-20240105   clang
powerpc               randconfig-002-20240105   clang
powerpc               randconfig-003-20240105   clang
powerpc                     redwood_defconfig   gcc  
powerpc64             randconfig-001-20240105   clang
powerpc64             randconfig-002-20240105   clang
powerpc64             randconfig-003-20240105   clang
riscv                            allmodconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                 randconfig-001-20240105   clang
riscv                 randconfig-002-20240105   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                  randconfig-001-20240105   gcc  
s390                  randconfig-002-20240105   gcc  
sh                               allmodconfig   gcc  
sh                               allyesconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                    randconfig-001-20240105   gcc  
sh                    randconfig-002-20240105   gcc  
sh                          rsk7269_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64               randconfig-001-20240105   gcc  
sparc64               randconfig-002-20240105   gcc  
um                               allmodconfig   clang
um                               allyesconfig   clang
um                    randconfig-001-20240105   clang
um                    randconfig-002-20240105   clang
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240105   clang
x86_64       buildonly-randconfig-002-20240105   clang
x86_64       buildonly-randconfig-003-20240105   clang
x86_64       buildonly-randconfig-004-20240105   clang
x86_64       buildonly-randconfig-005-20240105   clang
x86_64       buildonly-randconfig-006-20240105   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240105   gcc  
x86_64                randconfig-002-20240105   gcc  
x86_64                randconfig-003-20240105   gcc  
x86_64                randconfig-004-20240105   gcc  
x86_64                randconfig-005-20240105   gcc  
x86_64                randconfig-006-20240105   gcc  
x86_64                randconfig-011-20240105   clang
x86_64                randconfig-012-20240105   clang
x86_64                randconfig-013-20240105   clang
x86_64                randconfig-014-20240105   clang
x86_64                randconfig-015-20240105   clang
x86_64                randconfig-016-20240105   clang
x86_64                randconfig-071-20240105   clang
x86_64                randconfig-072-20240105   clang
x86_64                randconfig-073-20240105   clang
x86_64                randconfig-074-20240105   clang
x86_64                randconfig-075-20240105   clang
x86_64                randconfig-076-20240105   clang
x86_64                          rhel-8.3-rust   clang
xtensa                randconfig-001-20240105   gcc  
xtensa                randconfig-002-20240105   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
