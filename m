Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8823574FFC2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 08:55:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1894C822E8;
	Wed, 12 Jul 2023 06:55:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1894C822E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689144954;
	bh=1FeDxxDzkuizqvS8Megc9qdRYYDYVW36hLTCjdFm/pY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZasxGBUKU+ZpxBvEQPtcG9FYW63wkXTw0vhzTrnGrsCnXY7TNN/0R2zQ0QgJ6GGE6
	 LoTFhStCPw+L0AI/zVdLxNp4B9mav4GQrLmjlGgxdFOKNp5XsI3cMdReptqIQpV+aT
	 EBo/VFhgxRURcPfWH5Gpwqw+G6MeBoa2ptF7v55kHiOhvBYRwi41pAPnpoxcxSZixi
	 IZrQxUX6s3oh4UWAmPeLqAVRbKcsHCIaDOHEFinE9R8iZp7BOA56hHm1UN6ffcqRLr
	 XEnR9JlTuhDxAF4EZUeEAe0J4Goylg+jDPBEIWLQSzYJtsAPb2b7yh0X8WylrAkvEN
	 zU/GDH59+HChQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yoDKtYz2eJdJ; Wed, 12 Jul 2023 06:55:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C32C4822E3;
	Wed, 12 Jul 2023 06:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C32C4822E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 220A51BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 06:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 05C8241925
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 06:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05C8241925
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aOxts6Cj0xGh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 06:55:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1B8D4183B
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A1B8D4183B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 06:55:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="344419338"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="344419338"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 23:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="791502447"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="791502447"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jul 2023 23:55:44 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qJTlH-0005U3-21
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Jul 2023 06:55:43 +0000
Date: Wed, 12 Jul 2023 14:54:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307121453.B6m6xwTk-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689144946; x=1720680946;
 h=date:from:to:subject:message-id;
 bh=HxSxD9M1qqJZXIE4kaaZE5T3o1j2Q3CEAd/jLEZHINg=;
 b=WfP0IH3OtcZveKHn1Cw1yjcib1i1Ge9kWkKDx+xiYbjeiqgdZolx2wgD
 4N0W0D15edM2Kx/IMQLvh9VgUOS8RY9teoSWCnzvfpWs/uz/kMX4/m4XB
 SWJVaLWzygePcVR3Va8eb5cY20hJvUoOUBkaAvzw1oxIhCGzPnxQbPzjS
 lRdG/rFuELNmk3vJVxzgLHh//YhJTgj3H12SwLfLw+OXcCyVXZXBkHZOw
 EEozlCHsV0+Z7OYTBAZLbWXD8JCbCxlz/wOWrpOHxWcs8jq5RPQSILhzJ
 du1tyywqyGxqkLZvh+orhkSfOqrNswxOePgOoT+1kCWRqTfBFtfVNnxll
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WfP0IH3O
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0572a21298b7287350b586bff95ef7cf2f6c6d5b
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
branch HEAD: 0572a21298b7287350b586bff95ef7cf2f6c6d5b  iavf: check for removal state before IAVF_FLAG_PF_COMMS_FAILED

elapsed time: 726m

configs tested: 105
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230712   gcc  
alpha                randconfig-r024-20230712   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230710   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r012-20230711   clang
arm                  randconfig-r046-20230710   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r034-20230712   gcc  
hexagon              randconfig-r014-20230711   clang
hexagon              randconfig-r035-20230712   clang
hexagon              randconfig-r041-20230710   clang
hexagon              randconfig-r045-20230710   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230712   gcc  
i386         buildonly-randconfig-r005-20230712   gcc  
i386         buildonly-randconfig-r006-20230712   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230710   gcc  
i386                 randconfig-i002-20230710   gcc  
i386                 randconfig-i003-20230710   gcc  
i386                 randconfig-i004-20230710   gcc  
i386                 randconfig-i005-20230710   gcc  
i386                 randconfig-i006-20230710   gcc  
i386                 randconfig-i011-20230711   gcc  
i386                 randconfig-i012-20230711   gcc  
i386                 randconfig-i013-20230711   gcc  
i386                 randconfig-i014-20230711   gcc  
i386                 randconfig-i015-20230711   gcc  
i386                 randconfig-i016-20230711   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r031-20230712   clang
mips                 randconfig-r032-20230712   clang
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230712   gcc  
openrisc             randconfig-r022-20230712   gcc  
openrisc             randconfig-r023-20230712   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r036-20230712   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r011-20230711   gcc  
riscv                randconfig-r015-20230711   gcc  
riscv                randconfig-r016-20230711   gcc  
riscv                randconfig-r026-20230712   clang
riscv                randconfig-r042-20230710   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230710   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r033-20230712   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r021-20230712   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230712   gcc  
x86_64       buildonly-randconfig-r002-20230712   gcc  
x86_64       buildonly-randconfig-r003-20230712   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230710   clang
x86_64               randconfig-x002-20230710   clang
x86_64               randconfig-x003-20230710   clang
x86_64               randconfig-x004-20230710   clang
x86_64               randconfig-x005-20230710   clang
x86_64               randconfig-x006-20230710   clang
x86_64               randconfig-x011-20230710   gcc  
x86_64               randconfig-x012-20230710   gcc  
x86_64               randconfig-x013-20230710   gcc  
x86_64               randconfig-x014-20230710   gcc  
x86_64               randconfig-x015-20230710   gcc  
x86_64               randconfig-x016-20230710   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r006-20230712   gcc  
xtensa               randconfig-r013-20230711   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
