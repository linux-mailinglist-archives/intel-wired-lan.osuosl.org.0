Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B89704C82
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 13:40:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1226540926;
	Tue, 16 May 2023 11:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1226540926
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684237225;
	bh=Gh8MR1ARYUKrqp4BWNrNUN9H8EiAOPy21ii9XREZ2Yg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WZ5zFRAZ2jKJAwHyX8y82+YGZvNOkVtXbLlZEtPQ6KbqbgeJXI8TWlhmmfzZkfdPM
	 kF3vsZ5jIY7Z43LD+GXLg5fS9YHG/E3JE7ulKje6fEgUlmNGc9vDmiJ+zoOA2QQtD1
	 MhPXFlYcfWGkC4cWCZ/Ivm6PkE77suwp8s7wi7PuZ0jvhoUp9tt/aUpfNLymodBGT8
	 QgFBWO41ZNx1qvM9pui/jzoc+ekgpiMr9e+6yykhFcL5pR+TPm8IyKZMMNtTxehP+d
	 RhjrD1eDh9U7iOL+8p94mTxNVIXsfvNyWS/8U9eBCjRNY5JXbBpC0ECpxVI19sMe76
	 fkfagso2FLeaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rjw4mVa5hAxG; Tue, 16 May 2023 11:40:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DFD740935;
	Tue, 16 May 2023 11:40:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DFD740935
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E5F71BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 11:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5E8140926
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 11:40:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5E8140926
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ifAj0tZ9iQoE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 11:40:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A434340911
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A434340911
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 11:40:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="437795301"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="437795301"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 04:40:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="678824930"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="678824930"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 16 May 2023 04:40:13 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pyt2K-0007Oq-1P
 for intel-wired-lan@lists.osuosl.org; Tue, 16 May 2023 11:40:12 +0000
Date: Tue, 16 May 2023 19:39:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230516113932.DuV3l%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684237214; x=1715773214;
 h=date:from:to:subject:message-id;
 bh=5BrnQGzjDHujRDEE6AOg6i48x1rKDJzcZXIlWfCBenk=;
 b=lnhg4tl4fFAfQ6bWxx18PCTVtuznj3MXtbLA2avdOm76JC7yvZ8UXfKk
 WH0x+7S/HtadYAMb19hHuOJw2SutP41IOBZJQZd+D6eURRrayiQHwP+Sy
 3q4NLaBx20epNXy7d/s7zpU8u8yb3hCkXSRgJR1AuzEohuSzaimjpcslC
 Q435e3a1NaGa3OJDP6GLeJohyRIWEX4HbNm8DvlcuHyg64eNqpekBhpdo
 Zmpf2iuVaew6+t4o7jF0FuJtH+Ki6uCmZHfo+oRPmS8zcW3oaFKFFHOlv
 9GHPdG1w8x22sevWEZMdFCAoVUlSkkV305m+q8sMBU1XQUjSprRHSiUst
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lnhg4tl4
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e5bf2e286e8488ea827e6ecf876d9256caf879e8
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

tree/branch: INFO setup_repo_specs: /db/releases/20230516180935/lkp-src/repo/*/tnguy-net-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: e5bf2e286e8488ea827e6ecf876d9256caf879e8  igc: Clean the TX buffer and TX descriptor ring

elapsed time: 801m

configs tested: 99
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230515   gcc  
arc                  randconfig-r043-20230516   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230516   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r033-20230515   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230515   clang
i386                 randconfig-a002-20230515   clang
i386                 randconfig-a003-20230515   clang
i386                 randconfig-a004-20230515   clang
i386                 randconfig-a005-20230515   clang
i386                 randconfig-a006-20230515   clang
i386                 randconfig-i051-20230515   clang
i386                 randconfig-i052-20230515   clang
i386                 randconfig-i053-20230515   clang
i386                 randconfig-i054-20230515   clang
i386                 randconfig-i055-20230515   clang
i386                 randconfig-i056-20230515   clang
i386                          randconfig-i062   clang
i386                          randconfig-i064   clang
i386                          randconfig-i066   clang
i386                          randconfig-i071   clang
i386                          randconfig-i073   clang
i386                          randconfig-i075   clang
i386                 randconfig-i081-20230515   gcc  
i386                 randconfig-i082-20230515   gcc  
i386                 randconfig-i083-20230515   gcc  
i386                 randconfig-i084-20230515   gcc  
i386                 randconfig-i085-20230515   gcc  
i386                 randconfig-i086-20230515   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230516   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230516   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r006-20230516   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r004-20230516   gcc  
riscv                randconfig-r042-20230515   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r035-20230515   clang
s390                 randconfig-r044-20230515   gcc  
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a011-20230515   gcc  
x86_64               randconfig-a012-20230515   gcc  
x86_64               randconfig-a013-20230515   gcc  
x86_64               randconfig-a014-20230515   gcc  
x86_64               randconfig-a015-20230515   gcc  
x86_64               randconfig-a016-20230515   gcc  
x86_64               randconfig-x061-20230515   gcc  
x86_64               randconfig-x062-20230515   gcc  
x86_64               randconfig-x063-20230515   gcc  
x86_64               randconfig-x064-20230515   gcc  
x86_64               randconfig-x065-20230515   gcc  
x86_64               randconfig-x066-20230515   gcc  
x86_64               randconfig-x071-20230515   clang
x86_64               randconfig-x072-20230515   clang
x86_64               randconfig-x073-20230515   clang
x86_64               randconfig-x074-20230515   clang
x86_64               randconfig-x075-20230515   clang
x86_64               randconfig-x076-20230515   clang
x86_64                        randconfig-x092   gcc  
x86_64                        randconfig-x094   gcc  
x86_64                        randconfig-x096   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
