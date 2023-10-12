Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F6A7C6333
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 05:10:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A07F81290;
	Thu, 12 Oct 2023 03:10:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A07F81290
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697080200;
	bh=q8ma1JPHSwAcUtds3eQk+7gXZAaZ/QolcJqx3FpJZjo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oWrFDsDZVQELZggXiXHIpDrGdYtjnv8h/3q35sVI9wlhhicUVBupdiUP4oN25CGaB
	 duw1QieTvF5aIRclWi/o0RMi+GVejFUd/LFjlPktk4I4XJpxpxp5S7s1ZZpfRJqVXM
	 eVWWavUyQkH/DGeGxyyr9MgEHcTTLHVhVfWL6W+dMp/8oD19hwZHpQ/HKWAx3ocurj
	 QOLDRdBFhunaBtJ1GPJqFekP9FL+94CtuN09PM6abHcMrgpOyaj9Ba/CU97x0pB+O/
	 L+fGPFud5I0VnWrUWZv7qTuaPAn0XCRrSPeghWt6NeSq1Odo8YOT8R05/7hZ5Q82r/
	 MgvzBMwFvb6lw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gq7aja8QC6Cf; Thu, 12 Oct 2023 03:09:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E45E680C64;
	Thu, 12 Oct 2023 03:09:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E45E680C64
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82CB51BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 03:09:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56FEC410A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 03:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56FEC410A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xyfa9-aYuoW7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 03:09:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B541410A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 03:09:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B541410A4
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="383687065"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="383687065"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 20:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="783513436"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="783513436"
Received: from lkp-server02.sh.intel.com (HELO f64821696465) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 11 Oct 2023 20:09:44 -0700
Received: from kbuild by f64821696465 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qqm50-00034t-1I
 for intel-wired-lan@lists.osuosl.org; Thu, 12 Oct 2023 03:09:42 +0000
Date: Thu, 12 Oct 2023 11:09:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202310121114.JLulugaq-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697080187; x=1728616187;
 h=date:from:to:subject:message-id;
 bh=ZCJB7Li6SDbytWnkcGMza+IkvFGi1VsTcQ3m+4eKXNo=;
 b=GLKGEBHrTXn9gW6sX7g2d7swqmGDg2bMNUaE6EAPYrRduGJCsP2h6uLM
 FX6odW/nksq3mnwBI+nj4v+goQfNN+bDWXuLta2hh9//1gmzB0LzN5XlH
 n4yGOuoCyRdfQNfW3E7m7+SKvjPdpcaW3m68/rEZU+qBrC3q7RXH/sL+r
 KGFu7JNnLj9ButS6I7qC2xVXL0rgT9OpRMxXy/zbhDo7bxwIPbcduz4bi
 9eA2PS4UniRSurpJJ16ngt7eaVxOIMAHOEbPFI805DYkwdaX4RILbgWfG
 PwC5EVrxrfIRvnGqSWEXK7TkysUTDlsaTU55npq9AikZtyQ8CDJh7VO74
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GLKGEBHr
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 2318d58f358e7aef726c038aff87a68bec8f09e0
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
branch HEAD: 2318d58f358e7aef726c038aff87a68bec8f09e0  ice: Fix SRIOV LAG disable on non-compliant aggreagate

elapsed time: 1740m

configs tested: 133
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231011   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20231011   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231011   gcc  
i386         buildonly-randconfig-002-20231011   gcc  
i386         buildonly-randconfig-003-20231011   gcc  
i386         buildonly-randconfig-004-20231011   gcc  
i386         buildonly-randconfig-005-20231011   gcc  
i386         buildonly-randconfig-006-20231011   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231011   gcc  
i386                  randconfig-002-20231011   gcc  
i386                  randconfig-003-20231011   gcc  
i386                  randconfig-004-20231011   gcc  
i386                  randconfig-005-20231011   gcc  
i386                  randconfig-006-20231011   gcc  
i386                  randconfig-011-20231011   gcc  
i386                  randconfig-012-20231011   gcc  
i386                  randconfig-013-20231011   gcc  
i386                  randconfig-014-20231011   gcc  
i386                  randconfig-015-20231011   gcc  
i386                  randconfig-016-20231011   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231011   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231011   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231011   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231011   gcc  
x86_64       buildonly-randconfig-002-20231011   gcc  
x86_64       buildonly-randconfig-003-20231011   gcc  
x86_64       buildonly-randconfig-004-20231011   gcc  
x86_64       buildonly-randconfig-005-20231011   gcc  
x86_64       buildonly-randconfig-006-20231011   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231011   gcc  
x86_64                randconfig-002-20231011   gcc  
x86_64                randconfig-003-20231011   gcc  
x86_64                randconfig-004-20231011   gcc  
x86_64                randconfig-005-20231011   gcc  
x86_64                randconfig-006-20231011   gcc  
x86_64                randconfig-011-20231011   gcc  
x86_64                randconfig-012-20231011   gcc  
x86_64                randconfig-013-20231011   gcc  
x86_64                randconfig-014-20231011   gcc  
x86_64                randconfig-015-20231011   gcc  
x86_64                randconfig-016-20231011   gcc  
x86_64                randconfig-071-20231011   gcc  
x86_64                randconfig-072-20231011   gcc  
x86_64                randconfig-073-20231011   gcc  
x86_64                randconfig-074-20231011   gcc  
x86_64                randconfig-075-20231011   gcc  
x86_64                randconfig-076-20231011   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
