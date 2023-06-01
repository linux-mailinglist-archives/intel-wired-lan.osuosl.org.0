Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B487197E8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 11:57:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DD44841AD;
	Thu,  1 Jun 2023 09:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DD44841AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685613455;
	bh=4xN3Fq2Yg94Z/O5rGFJ47t+73x91rgmvsUh1H755JFI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=52a8SX1WQqhZu7mFug6OR0ts1fkkE3ZLNPPU4mEbClOC2oxZckcX37RnlkOl/n3kz
	 rASGk3ZWuaLPvd0/1LqaAWkyKkcKirXOfpSq7vyTBMBT9dLtAmwEAHZNhxN3RPjI8b
	 0m8BFvi/j0OSbC+b0ik52rgNFUU0silRAtwJDAmGOifv94HoSLx1D7Y6qEauopUlpm
	 C6q3rw+i6lq495+/c5ExWPamfeJCZSpz08XHXChGriIPoa/4UGqmbgalhbdNNyK2n5
	 H/4eXQZ44sL5Dr+DEDuRAnFYbbmr6MSAn5w7bPNjpXwym8TLM9SUpg0VaOFvwxE9iK
	 vPd6UqOmQaiSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mtKrECKfB64i; Thu,  1 Jun 2023 09:57:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51A8A841A2;
	Thu,  1 Jun 2023 09:57:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51A8A841A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B2D31BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 09:57:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 72A05401A4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 09:57:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72A05401A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wvPRdLdsJuzP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 09:57:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B91C40122
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B91C40122
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 09:57:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="421299509"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="421299509"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 02:57:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="819704963"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="819704963"
Received: from lkp-server01.sh.intel.com (HELO fb1ced2c09fb) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2023 02:57:26 -0700
Received: from kbuild by fb1ced2c09fb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q4f3e-0002A2-09
 for intel-wired-lan@lists.osuosl.org; Thu, 01 Jun 2023 09:57:26 +0000
Date: Thu, 01 Jun 2023 17:56:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230601095620.ni72O%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685613448; x=1717149448;
 h=date:from:to:subject:message-id;
 bh=vpeIfEGLAwf97tuwuh5j9ILzdzslkPWZZ77tpdsPeBA=;
 b=FrhqRWp1Tgaw8tCxAgNO+lb/03FKJNspGbn8KE49BmexKybmlBYnzxxT
 +ddhfl9Vmmu3TF6G0hgpcp/C3QIcsWnWzz58e4PzaIQ/GPCKeQrqmcsMC
 ioDXMZq0BDSWa8pM6Mxik9g9HW7lbUc/ZCTplrXuJq8y+9jmEAotuWuDJ
 J8QdJ0tIti7vMSq/wgwLlIItdJnn2RGCGdkalgs8c69rrWol6gqAg0/vB
 /ULuFieo9/PSJrmu3c3phvpu78Ootbu1ct2OzkuMPfgb0fZI7mtfbOJru
 7Te4XutKWa0cNf7BDLTmnOKkhxFwF2fUXF5rdN9eTtFYa9MnXreu/1dFR
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FrhqRWp1
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 bd7e3ae010451761865da6f36e41c26846a01566
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
branch HEAD: bd7e3ae010451761865da6f36e41c26846a01566  ice: Don't dereference NULL in ice_gns_read error path

elapsed time: 1035m

configs tested: 133
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230531   gcc  
alpha                randconfig-r033-20230531   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsim_700_defconfig   gcc  
arc                  randconfig-r043-20230531   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                  randconfig-r046-20230531   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon      buildonly-randconfig-r003-20230531   clang
hexagon              randconfig-r022-20230531   clang
hexagon              randconfig-r041-20230531   clang
hexagon              randconfig-r045-20230531   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230531   gcc  
i386                 randconfig-i002-20230531   gcc  
i386                 randconfig-i003-20230531   gcc  
i386                 randconfig-i004-20230531   gcc  
i386                 randconfig-i005-20230531   gcc  
i386                 randconfig-i006-20230531   gcc  
i386                 randconfig-i011-20230531   clang
i386                 randconfig-i012-20230531   clang
i386                 randconfig-i013-20230531   clang
i386                 randconfig-i014-20230531   clang
i386                 randconfig-i015-20230531   clang
i386                 randconfig-i016-20230531   clang
i386                 randconfig-i051-20230531   gcc  
i386                 randconfig-i052-20230531   gcc  
i386                 randconfig-i053-20230531   gcc  
i386                 randconfig-i054-20230531   gcc  
i386                 randconfig-i055-20230531   gcc  
i386                 randconfig-i056-20230531   gcc  
i386                 randconfig-i061-20230531   gcc  
i386                 randconfig-i062-20230531   gcc  
i386                 randconfig-i063-20230531   gcc  
i386                 randconfig-i064-20230531   gcc  
i386                 randconfig-i065-20230531   gcc  
i386                 randconfig-i066-20230531   gcc  
i386                 randconfig-r004-20230531   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230531   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r023-20230531   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k         buildonly-randconfig-r004-20230531   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                           virt_defconfig   gcc  
microblaze           randconfig-r015-20230531   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230531   gcc  
nios2                randconfig-r026-20230531   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc             randconfig-r002-20230531   gcc  
parisc       buildonly-randconfig-r005-20230531   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230531   gcc  
parisc               randconfig-r006-20230531   gcc  
parisc               randconfig-r016-20230531   gcc  
parisc               randconfig-r035-20230531   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                       ebony_defconfig   clang
powerpc              randconfig-r025-20230531   clang
powerpc              randconfig-r031-20230531   gcc  
powerpc              randconfig-r034-20230531   gcc  
powerpc                    socrates_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230531   clang
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230531   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230531   clang
s390                 randconfig-r044-20230531   clang
sh                               allmodconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                ecovec24-romimage_defconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230531   gcc  
x86_64               randconfig-a002-20230531   gcc  
x86_64               randconfig-a003-20230531   gcc  
x86_64               randconfig-a004-20230531   gcc  
x86_64               randconfig-a005-20230531   gcc  
x86_64               randconfig-a006-20230531   gcc  
x86_64               randconfig-a011-20230531   clang
x86_64               randconfig-a012-20230531   clang
x86_64               randconfig-a013-20230531   clang
x86_64               randconfig-a014-20230531   clang
x86_64               randconfig-a015-20230531   clang
x86_64               randconfig-a016-20230531   clang
x86_64               randconfig-r011-20230531   clang
x86_64               randconfig-x051-20230531   clang
x86_64               randconfig-x052-20230531   clang
x86_64               randconfig-x053-20230531   clang
x86_64               randconfig-x054-20230531   clang
x86_64               randconfig-x055-20230531   clang
x86_64               randconfig-x056-20230531   clang
x86_64               randconfig-x061-20230531   clang
x86_64               randconfig-x062-20230531   clang
x86_64               randconfig-x063-20230531   clang
x86_64               randconfig-x064-20230531   clang
x86_64               randconfig-x065-20230531   clang
x86_64               randconfig-x066-20230531   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
