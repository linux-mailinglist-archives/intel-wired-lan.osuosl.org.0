Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B42A667155
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 12:55:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B6C881C21;
	Thu, 12 Jan 2023 11:55:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B6C881C21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673524507;
	bh=uPumJ05eHfoVz4M7FDG05HXgMTQReUrZSQNTCldcW7A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bwTlnnbE3Mcv5l3vqkndbyNjQ0cgkPkhaAVO/ZMwEtFQBECK8vb2Nkygh+UUeRvR9
	 2AswKpmmNbrK2KEVAVWF2o7HN5SN9FcsZyj0r/DCrqYMGjZzbaUSDHHsFeRZkXxZdW
	 /8+9Ui7yH9yMvvZ6OGcSluvn8l81aUc+UbUvwoWuToe4jzyx4oA0Ka/N9ADL9VNh6/
	 a3dFrMqMW0fLOJqzpXIBVBK/M5CfEzuubm0Z2mdWF56r8gVsfNZaLeOOVuGR7/yp9u
	 qBL7ZahSsJXRpGN3UljkKf/dr7M6CEZXwfwQ0Zv6B0Wtxz13hVor2aI6cs2MeR+mrU
	 /BTFIUAFuRgaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aim1dvU0ATUq; Thu, 12 Jan 2023 11:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8879F81B01;
	Thu, 12 Jan 2023 11:55:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8879F81B01
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E8DB1BF35F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 11:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 051F181B01
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 11:55:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 051F181B01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 95fGzGdjXelb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 11:55:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEEE381AF5
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EEEE381AF5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 11:54:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385999932"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="385999932"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 03:54:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="800176004"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="800176004"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2023 03:54:58 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFwAX-000A5q-1E;
 Thu, 12 Jan 2023 11:54:55 +0000
Date: Thu, 12 Jan 2023 19:54:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63bff4f8.N6Ucaa7uqqPgPO3s%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673524499; x=1705060499;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5t1il+PhS+ZeiRvygEVb9vzKrSKUusu7xpkrAwRNO+o=;
 b=JgJxbuIb8JbsoKpuLPq1ENyd4evbVFrVIexIER6lw6xURtWu2WtDmFNX
 mQSjC8vG9lMVMmdqpRqqn9RMXUzIsjy6uaVpnDJ2m4z7hUxESeiyBYsvh
 aoFBC/sDSrrLuYybntH1IT9HEcgge1vOB1YEpDHYYJUtBuQdUBCUBA+yG
 ewADh9l5Q4GXILaU0qfIpMalOvwL/caR/63JQgM2KTbKkTgCYmZS5sPXE
 MyTv3zV5AkTJsFEaAH9OFPhpFIFzH6mfYDcDAA0FqDydIUZTRXeOa8aAn
 6E9S4lHjezNv3WK5VLyx1CQE7X/2VkAYt458WFkyaDhdziaGIg3xA8aqm
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JgJxbuIb
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 be823fe4bcfc6180fd2168ac31a6fbcf40625d68
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
branch HEAD: be823fe4bcfc6180fd2168ac31a6fbcf40625d68  iavf: schedule watchdog immediately when changing primary MAC

elapsed time: 743m

configs tested: 100
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
x86_64                            allnoconfig
powerpc                           allnoconfig
s390                             allyesconfig
ia64                             allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                                defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
m68k                             allmodconfig
x86_64                           rhel-8.3-syz
alpha                            allyesconfig
x86_64                           rhel-8.3-kvm
m68k                             allyesconfig
x86_64                        randconfig-a006
arc                              allyesconfig
x86_64                           rhel-8.3-bpf
i386                          randconfig-a001
x86_64                         rhel-8.3-kunit
i386                          randconfig-a003
x86_64                           allyesconfig
i386                          randconfig-a005
x86_64                        randconfig-a013
i386                          randconfig-a014
i386                          randconfig-a012
x86_64                        randconfig-a011
sh                               allmodconfig
i386                          randconfig-a016
x86_64                        randconfig-a015
mips                             allyesconfig
um                             i386_defconfig
powerpc                          allmodconfig
um                           x86_64_defconfig
arm                                 defconfig
i386                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arc                  randconfig-r043-20230110
s390                 randconfig-r044-20230110
riscv                randconfig-r042-20230110
arm64                            allyesconfig
arm                              allyesconfig
m68k                         amcore_defconfig
arm                        multi_v7_defconfig
sh                              ul2_defconfig
m68k                             alldefconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                    klondike_defconfig
arm                          gemini_defconfig
powerpc                     tqm8548_defconfig
sh                ecovec24-romimage_defconfig
sparc                       sparc64_defconfig
powerpc                      mgcoge_defconfig
openrisc                 simple_smp_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
xtensa                         virt_defconfig
arc                        nsim_700_defconfig
loongarch                 loongson3_defconfig
mips                         rt305x_defconfig
arm                           tegra_defconfig
arm                          exynos_defconfig
arm                       multi_v4t_defconfig
x86_64                           alldefconfig
m68k                        stmark2_defconfig
sh                        edosk7705_defconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
x86_64                        randconfig-a005
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a006
i386                          randconfig-a011
x86_64                        randconfig-a016
i386                          randconfig-a004
x86_64                        randconfig-a012
i386                          randconfig-a015
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230110
arm                  randconfig-r046-20230110
hexagon              randconfig-r045-20230110
arm                      tct_hammer_defconfig
powerpc                        icon_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
