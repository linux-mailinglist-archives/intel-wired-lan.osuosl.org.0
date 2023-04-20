Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D196E8AAA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 08:55:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84AEC8415A;
	Thu, 20 Apr 2023 06:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84AEC8415A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681973739;
	bh=gyJDXDjgDeaJkFQ5XYxF/iiT+9NtXODmRjfF3phrqzQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ns9B3mq4Si+1XtzWrERY3BBzrhcTPkVIeuLC/tQmJajtbxLQCCs+PsoMClT529hcB
	 Ujp1nnhTGrZ9hiQ94cafTQ/R0TzZ6vufrF3ymi0jkTN/fWKU1byJ8g7jXC1AANoSE7
	 P2kDd8EVNNW1STq+XE5KVhoyybu6kS3BuKCvZRJXwDnQzOXT0monz1jcS0upE0qlUn
	 vmlQEX0AZAYJH3Ro9a2b7yCXW23sd56R0lpkEpBLPw8Q7atnlGyndE6a+IAM5cwB5+
	 fh6JNY/QEDtZLqGpGVwkmXcjw+mt7V/dDEiG3RPrtMuirVaDV6wjHjNwD7vhi6xTze
	 E99hmNgCU5jWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g3HasPGRCDvN; Thu, 20 Apr 2023 06:55:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51B2584130;
	Thu, 20 Apr 2023 06:55:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51B2584130
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F18F1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 06:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1035F84130
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 06:55:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1035F84130
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SXuGgjLjmRHR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 06:55:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20D1D83F0C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 20D1D83F0C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 06:55:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="373544844"
X-IronPort-AV: E=Sophos;i="5.99,211,1677571200"; d="scan'208";a="373544844"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 23:55:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="781135141"
X-IronPort-AV: E=Sophos;i="5.99,211,1677571200"; d="scan'208";a="781135141"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Apr 2023 23:55:30 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ppOCX-000fYv-29;
 Thu, 20 Apr 2023 06:55:29 +0000
Date: Thu, 20 Apr 2023 14:54:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6440e1c2.yf9asDdXLdKFQ3DY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681973732; x=1713509732;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=d+Fhc/IbfaVHxJpr4SC930mWrowh4b2FDbLNDuL/U+g=;
 b=HY/DFvop/2uiwGEUhVFftjB18mtxhPI2nfcn23E27c+UpycfXQ2Kwi3K
 WedSSS/CqS2dh4dwLrZUS9DDlxCZhi+5WWwbwTD4k51zcx8bp2j6G5KNG
 H1sMBOyqJ0i4PMBbcEVGpPb9cnFecvUyXkHA+8CQoE1TMkdJ6fzab3XO8
 h+mHcfcgyvN99NSbjOliPrrob8b9hg8CWU9sbop8rulzQjJgI1r/zotZP
 9iGe8fwDtJZLeJhBbZtzT+zU0xlkoy3tzcsQ3UNzKy3l8/FXv5xOhHQUR
 0ynx12z/xLp9r9MPSVSBSqyLtM4wQhwVsgI87Ciz+ilSYzuA9Wu3aMP/l
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HY/DFvop
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5e5884436945a64429cd10212a412d5961f486c8
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
branch HEAD: 5e5884436945a64429cd10212a412d5961f486c8  igc: Avoid transmit queue timeout for XDP

elapsed time: 726m

configs tested: 79
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230420   clang
arm          buildonly-randconfig-r003-20230420   clang
arm          buildonly-randconfig-r005-20230417   gcc  
arm          buildonly-randconfig-r006-20230418   clang
arm                                 defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230417   gcc  
i386                 randconfig-a002-20230417   gcc  
i386                 randconfig-a003-20230417   gcc  
i386                 randconfig-a004-20230417   gcc  
i386                 randconfig-a005-20230417   gcc  
i386                 randconfig-a006-20230417   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230420   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r002-20230416   gcc  
microblaze   buildonly-randconfig-r005-20230420   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r004-20230417   gcc  
parisc       buildonly-randconfig-r002-20230417   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r003-20230417   clang
powerpc      buildonly-randconfig-r003-20230418   gcc  
powerpc                      makalu_defconfig   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                     skiroot_defconfig   clang
powerpc                         wii_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r006-20230416   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230418   gcc  
s390         buildonly-randconfig-r004-20230418   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sparc        buildonly-randconfig-r001-20230416   gcc  
sparc        buildonly-randconfig-r002-20230420   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r006-20230417   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230417   gcc  
x86_64               randconfig-a002-20230417   gcc  
x86_64               randconfig-a003-20230417   gcc  
x86_64               randconfig-a004-20230417   gcc  
x86_64               randconfig-a005-20230417   gcc  
x86_64               randconfig-a006-20230417   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r005-20230418   gcc  
xtensa       buildonly-randconfig-r006-20230420   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
