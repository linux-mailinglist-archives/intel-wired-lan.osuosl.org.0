Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2927B6E8AAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 08:55:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE0D684167;
	Thu, 20 Apr 2023 06:55:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE0D684167
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681973747;
	bh=1jm8/RBprwZSZyRXoqFd459HnqHbDeBAFueHUOfammg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ITRXCq+3WvFXvHHbaXBXsX+KQNmAGHzOopDHXS32qOcwODV+mNS5Rv0wDog12XpDa
	 agTJGK6zAHoxj8JfUn+cOkJcoQcaGrYdJ16gdR8WsgAbWHH6XburkqE6hVy1x7qvg+
	 Pd2xdYCwB34zgYhK2+DQLveWjdDzpNwV2LSMz9Xo9RvncDn38ojuGeHyq5kTx5KuLa
	 mK8H6QbHA6TDHLWPIToEOQYRFmzdK0wJn3vvCqbDsFcxhtMYqnKTHbh7c7nBoSdJIB
	 jIcMER/9q4s1LMiG2/20Hc3oREIOKAJ+42dgKNST+LNUe09VVLtDlp4sSbI43Qwz8C
	 sv+CNTKZC4gag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 61dcRQRvnHyx; Thu, 20 Apr 2023 06:55:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7821B83F0C;
	Thu, 20 Apr 2023 06:55:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7821B83F0C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBA7B1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 06:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A144B40127
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 06:55:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A144B40127
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12tUjMRLIpyA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 06:55:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1F2B400D1
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1F2B400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 06:55:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="348408946"
X-IronPort-AV: E=Sophos;i="5.99,211,1677571200"; d="scan'208";a="348408946"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 23:55:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="803233255"
X-IronPort-AV: E=Sophos;i="5.99,211,1677571200"; d="scan'208";a="803233255"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 19 Apr 2023 23:55:30 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ppOCX-000fYs-1z;
 Thu, 20 Apr 2023 06:55:29 +0000
Date: Thu, 20 Apr 2023 14:55:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6440e1ca.TDSAy55Mm+yNkr3r%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681973740; x=1713509740;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Qujo4eKEbw3SlbvmLi61HXA6cjSWvKh8kDU7ueOEpsc=;
 b=JoEf/lPHoMVY/KxCCrIMrhn7mQxrHQQc6PqlurxWpdtGmj2Oj0KOHf3h
 45ZXsWG8d9S+8v/NUXZtq1DgbP1Q3jWnWmdgRU3b+fro9F+z2gT3ZYiD4
 CxFY/MTjU+hj8GSFGSpW8lmTC7h7YxPm8X2fgliCcTlaJ8oSyph1zoebu
 KIlCvGr0HJv/utMaPGX3a3QfHz7ZeE2ST1XFDPbKJHtIbQ+2lp7Y915ds
 A+U1M+SrqSDcFOkHWgmMObn0W5DMXKYE1sIPYLU4PpCyqwF9UpVA+odTG
 ZRoMqq88JvP3LLmKaV5WytNXNYnT2YO5xyU3mdUxL6cnSN3527XQHa36Z
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JoEf/lPH
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7cac6642a5ad2082cd3987ec0cda2c38b8f47b01
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
branch HEAD: 7cac6642a5ad2082cd3987ec0cda2c38b8f47b01  ice: Fix ice VF reset during iavf initialization

elapsed time: 727m

configs tested: 55
configs skipped: 3

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
csky                                defconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230417   gcc  
x86_64               randconfig-a002-20230417   gcc  
x86_64               randconfig-a003-20230417   gcc  
x86_64               randconfig-a004-20230417   gcc  
x86_64               randconfig-a005-20230417   gcc  
x86_64               randconfig-a006-20230417   gcc  
x86_64               randconfig-a011-20230417   clang
x86_64               randconfig-a012-20230417   clang
x86_64               randconfig-a013-20230417   clang
x86_64               randconfig-a014-20230417   clang
x86_64               randconfig-a015-20230417   clang
x86_64               randconfig-a016-20230417   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
