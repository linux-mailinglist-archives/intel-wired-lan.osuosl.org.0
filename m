Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D78D77EFDB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 06:38:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3CDE83BDE;
	Thu, 17 Aug 2023 04:38:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3CDE83BDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692247107;
	bh=t8luT6jvoxm0m1VsNm3U4Sbp8DhtWxD9LCorlAi2yXY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ggYUn3pHdpP8XT3dDopweQdjqQTLfcaYF4fTzmys3fVtxAaesochjV9V0w2ZjOIhR
	 vz1HY6u8RZLVQMsKAcHpwZuxYRYuukUK9CmpaljuldHWoVKjmT1cZ2F3LEMssHW3XW
	 ZweRjfZSV7+QueBhA0tC+zvdExLmEZ4JI53MSZC3ZszAvZPLCW7KxKXEANonqa/xgC
	 5DLACb2z7lO2SnsHVag4PsOumqUl5X2El2ryXhsj1lLzQklV8u3FnlZsfBhN+bwBP2
	 gS3FrBKS34tyd+zZXSJlhIckbK0Lj7hgVPv8eCOGDM9Q8FwknR0tiI7oxKKR8U+3K7
	 P3IkZiy3E1RzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sMV_xgUDEXTS; Thu, 17 Aug 2023 04:38:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD89F83BD3;
	Thu, 17 Aug 2023 04:38:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD89F83BD3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B5E61BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 04:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0E3CE4086B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 04:38:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E3CE4086B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6C3rJTvossLK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 04:38:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A220740865
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 04:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A220740865
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371609931"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="371609931"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 21:38:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="980989713"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="980989713"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 16 Aug 2023 21:38:17 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWUm0-0000mt-0a
 for intel-wired-lan@lists.osuosl.org; Thu, 17 Aug 2023 04:38:16 +0000
Date: Thu, 17 Aug 2023 12:37:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308171238.doAQWMpo-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692247098; x=1723783098;
 h=date:from:to:subject:message-id;
 bh=LHfL3lC8aHTX/nrUEaxU4r7XjDpWxlmuCnmuxi3gFLM=;
 b=cdnIrrX1TGb7yECqBSt+XhGQEsDdfbW7qiI8n502FSbagsrCMS0rluIn
 An3dUwlMFnvg5ye9P/EZS8skyem8Qvg5AJUoLF97AwaEghRAdSMYio7m7
 f7G8NF+VmHcLgUXnYJkbduCZ1eytJBa5c0fwyncA/q889QZaLpISHJgir
 EFHVx0wXS6oIYm6oOMIV+Cdp3QIjk/omsSGfw9OAdhJlfhIlewoXozfZO
 Pl9L0vNJp27lnrGsV1//fAjPUmex/OmknXzGddzwv3TNWHX5Ev/jjDedx
 kS2fa6hHifxkmmL3hhuO2jTbDovrcu+kIqhyHdg9hxiZLQR14LXplUpHc
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cdnIrrX1
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 2df3a4f28361c6c148507e194bd7867144b6ce48
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
branch HEAD: 2df3a4f28361c6c148507e194bd7867144b6ce48  idpf: configure SRIOV and add other ndo_ops

elapsed time: 735m

configs tested: 82
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r032-20230817   gcc  
arc                  randconfig-r043-20230817   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230817   gcc  
arm                  randconfig-r046-20230817   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230817   gcc  
hexagon              randconfig-r041-20230817   clang
hexagon              randconfig-r045-20230817   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230817   clang
i386         buildonly-randconfig-r005-20230817   clang
i386         buildonly-randconfig-r006-20230817   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i006-20230817   clang
i386                 randconfig-i016-20230817   gcc  
i386                 randconfig-r002-20230817   clang
i386                 randconfig-r015-20230817   gcc  
i386                 randconfig-r025-20230817   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r016-20230817   gcc  
microblaze           randconfig-r026-20230817   gcc  
microblaze           randconfig-r036-20230817   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r013-20230817   clang
nios2                               defconfig   gcc  
openrisc             randconfig-r005-20230817   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r022-20230817   gcc  
riscv                randconfig-r033-20230817   clang
riscv                randconfig-r042-20230817   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230817   gcc  
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r021-20230817   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r023-20230817   clang
um                   randconfig-r035-20230817   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230817   clang
x86_64       buildonly-randconfig-r002-20230817   clang
x86_64       buildonly-randconfig-r003-20230817   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r003-20230817   clang
x86_64               randconfig-r012-20230817   gcc  
x86_64               randconfig-r031-20230817   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
