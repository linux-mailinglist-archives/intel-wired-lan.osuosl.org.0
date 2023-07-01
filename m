Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285D2744674
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Jul 2023 06:09:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F1D240528;
	Sat,  1 Jul 2023 04:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F1D240528
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688184547;
	bh=0lIs3fWZ11ORpagAFhygbjCEaodOxDaNSthA2zxiL5g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TE6h5k8G7IlgDfs7n5oaxbbo+4908rpNp1m+2wZoMcL/zpT2EP30twrqdc8aKfdJ5
	 A9vdbwkv3rD0k6e4o6ZlimjGo3BPitoGhzrKYkEmeJHfjC+oSwFlYlgJpOnoYstKWW
	 hDqkmV/RcB7y9ePCLSydIWFuWDLbD+6ZGyWQwiIUKV+UMqc2ATlz5n889513wMRfNx
	 Lef6hs4tl8oQcXAMRswhTbCIFA/MFB1UEzpJx7OtkpXnVKgaBlHtkX1KlD4z337eYh
	 GSRa882PVUqQ+vSzMz/L1/B1bl4cVs95IzXz/vsWTUHazF5hn4p2lD3UmhwwXe/mo4
	 YLeLwOGLPNqgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PwrkK_Kj57PX; Sat,  1 Jul 2023 04:09:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D210A4012D;
	Sat,  1 Jul 2023 04:09:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D210A4012D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7124E1BF314
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jul 2023 04:09:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48B3781DF5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jul 2023 04:09:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48B3781DF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FqnoHbkU8aHG for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Jul 2023 04:08:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF27B81384
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF27B81384
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jul 2023 04:08:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="342880921"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="342880921"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 21:08:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="891954862"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="891954862"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 30 Jun 2023 21:08:56 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qFRuq-000Fg8-0U
 for intel-wired-lan@lists.osuosl.org; Sat, 01 Jul 2023 04:08:56 +0000
Date: Sat, 01 Jul 2023 12:08:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307011222.2VcUXgcz-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688184538; x=1719720538;
 h=date:from:to:subject:message-id;
 bh=c1UiCUt+3o1vk07Iy24GgL/Tf0tMkxaM1q3A6SugFko=;
 b=gy4o93DV9eHB+6J2q1NntnfXiysA5uvd6s68u+kq/PmMvYukyPXkbVpH
 8orDEHOK4Ls5iqpVu0X5CaKPX3YpaxRXLFBQH9Ej3J7gJe1VpN25hLFvZ
 ZTCO/f6DXCAVXiUtR70dRnUD/PT0ABUOXQDicp91v1KqkP8rILAQ4nwRZ
 uL5uNJ7ksWV5YBPaz/5IHdzxgHDG/Zst7qa4bbF/HT5hbO+PAuZQcyp9b
 0hKl1JhYfLbvG1h6/rdFwDVqE6uE61NN9olpuxEQcPDAUcrC6TWc3EvkC
 P946ceT2Nd1SX7EOfvWkhLr4e7Y4qnfXtYl13OHq1WZu/q9n8PTCR+PHZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gy4o93DV
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d91bf630ba103c65b3a76519bf51d857821e5b6e
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
branch HEAD: d91bf630ba103c65b3a76519bf51d857821e5b6e  ice: add documentation for FW logging

elapsed time: 725m

configs tested: 53
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230630   clang
csky                                defconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r014-20230630   gcc  
microblaze           randconfig-r012-20230630   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r015-20230630   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
