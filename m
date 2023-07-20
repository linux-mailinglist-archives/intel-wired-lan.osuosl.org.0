Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FA175BAA7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 00:32:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2093813BF;
	Thu, 20 Jul 2023 22:32:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2093813BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689892354;
	bh=Nm0GDYc6d195VUKCsOs+P1v2yv7Ph7vQOWy7BOMGQNw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GHL3e7iL+1E1qiOzhJxBC2LAmWJPGNDuQ2wmFZSPw2ZbRKQLb7uVxMgXDfCcq/Jcq
	 dObbvyLlbXxLWmmoVNn+mDh5jkLgwU+P87JwofMYQdmzDKRCa2qA/n6iSHm1M6osxe
	 H8xuz2F8Bps8VAQcY4am50fqP0H39S29td2g3DhrHR8ehW7ZmTB0ZNo/PAogh2+5Om
	 4ohNmNZw8wXs9RkE7NenW2uHg9vWC5DreDGuKkgm1hyjKX5jaH416TyRmEHoLfqvHl
	 5ENJpU5zZ3XdDJiNdMfNEp20AEAHtJIu6vNXaBP4XgFV483/n0ARBDuJQFRpenSnaT
	 T8/scAVaN8r9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CvK69B6ZBbOe; Thu, 20 Jul 2023 22:32:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9158981397;
	Thu, 20 Jul 2023 22:32:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9158981397
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 109931BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 22:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3FBE40191
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 22:32:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3FBE40191
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HEWsXw_boaK3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 22:32:27 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 912F24015E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 22:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 912F24015E
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="364345834"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="364345834"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 15:32:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="868010265"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jul 2023 15:32:26 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qMcC8-0006aD-2X
 for intel-wired-lan@lists.osuosl.org; Thu, 20 Jul 2023 22:32:24 +0000
Date: Fri, 21 Jul 2023 06:31:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307210637.EtsPDF7T-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689892347; x=1721428347;
 h=date:from:to:subject:message-id;
 bh=Z9kY6iQvyOLZ1s+J6x20GtFKSYEGHoS6AumokNfhi4o=;
 b=BYCP5NOCJSO6I6bd3+rJN3pFt3U8BHGFDW3VK2zemCA844DdqZMPoKJF
 8fdMaypkO5zMI5E1KqyieV7YC4g06Mb80Cjf8WWG6jcLwEP36t0/AxpnF
 9WRHyUcGRiQ543gK8MivjCmqzxNht6Y4sSvESDORpNeJwVWLd3qor9a6A
 lxy69wV949H9I6Hx+qGsE/J//vIC4oN6Ge7HVT8H2qTO7oKFsmkylA287
 MiyeK6VWm9Gkh9WovYLOSfSyFCc+JLAMMPD7RShLU7szGJOogWiz6U1ZC
 /ume7N+rBl/G/M/dn6ULZukbqsywNjUZlkk8KOTNvr/65fdNl594nZUbj
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BYCP5NOC
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 14587ba2aab220817c0c5f96e2b5b39d71f41ccf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 14587ba2aab220817c0c5f96e2b5b39d71f41ccf  ice: introduce hw->phy_model for handling PTP PHY differences

elapsed time: 1441m

configs tested: 93
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230720   gcc  
alpha                randconfig-r033-20230720   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230720   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230720   clang
arm                  randconfig-r021-20230720   gcc  
arm                  randconfig-r022-20230720   gcc  
arm                  randconfig-r046-20230720   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230720   gcc  
csky                 randconfig-r004-20230720   gcc  
csky                 randconfig-r026-20230720   gcc  
hexagon              randconfig-r035-20230720   clang
hexagon              randconfig-r041-20230720   clang
hexagon              randconfig-r045-20230720   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230720   gcc  
i386         buildonly-randconfig-r005-20230720   gcc  
i386         buildonly-randconfig-r006-20230720   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230720   gcc  
i386                 randconfig-i002-20230720   gcc  
i386                 randconfig-i003-20230720   gcc  
i386                 randconfig-i004-20230720   gcc  
i386                 randconfig-i005-20230720   gcc  
i386                 randconfig-i006-20230720   gcc  
i386                 randconfig-r011-20230720   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r036-20230720   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r016-20230720   gcc  
m68k                 randconfig-r031-20230720   gcc  
microblaze           randconfig-r032-20230720   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r013-20230720   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r014-20230720   gcc  
openrisc             randconfig-r015-20230720   gcc  
openrisc             randconfig-r023-20230720   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r034-20230720   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r006-20230720   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230720   gcc  
riscv                randconfig-r042-20230720   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230720   clang
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r025-20230720   gcc  
sparc64              randconfig-r012-20230720   gcc  
sparc64              randconfig-r024-20230720   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230720   gcc  
x86_64       buildonly-randconfig-r002-20230720   gcc  
x86_64       buildonly-randconfig-r003-20230720   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x011-20230720   gcc  
x86_64               randconfig-x012-20230720   gcc  
x86_64               randconfig-x013-20230720   gcc  
x86_64               randconfig-x014-20230720   gcc  
x86_64               randconfig-x015-20230720   gcc  
x86_64               randconfig-x016-20230720   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
