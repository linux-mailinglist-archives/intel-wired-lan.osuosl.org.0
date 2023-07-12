Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDA374FEC3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 07:38:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70C8540227;
	Wed, 12 Jul 2023 05:38:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70C8540227
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689140331;
	bh=ec2HHK2MMz6Kie/mIxriqEwyJiCM9vK4Vxnf3EeJxpU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hVEijBkTy8yg4exAtmEpCk2F991sbDkWCBB142MKOrTy/0rA1FzYS4l9YtvM0z7Dn
	 xS+5514SN4A/rFg7TmJZxX0kv9ObjiruWS9WFmrmls7AKaRXmWcSs2LWvUigjfINje
	 S9mAOwveUINTw/gu4PtJrfTvAG+/Ivs/CfpjFKh4F2SgoT8Nc6NPtC/WZob5UnNWKa
	 wU6+RIihq3Sn6VYccdk65mM7hHWwRrlmSjdnVlQhkR0GV02L0KihfrmiG1x39qiqbz
	 EDx17+v/GXajF0xSO+NBZVjQmho75ggF7RN9etnL1mYplHt1h5OzayN3Z0B3EvaPyG
	 +peMJeTNDqvUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bAZoBmvyfLHG; Wed, 12 Jul 2023 05:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E88A3401C9;
	Wed, 12 Jul 2023 05:38:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E88A3401C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 006C11BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 05:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CBCEA401C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 05:38:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBCEA401C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mfiV6cyNETfa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 05:38:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E6C240194
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E6C240194
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 05:38:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="368342016"
X-IronPort-AV: E=Sophos;i="6.01,198,1684825200"; d="scan'208";a="368342016"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 22:38:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="724743963"
X-IronPort-AV: E=Sophos;i="6.01,198,1684825200"; d="scan'208";a="724743963"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 11 Jul 2023 22:38:41 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qJSYi-0005QX-2x
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Jul 2023 05:38:40 +0000
Date: Wed, 12 Jul 2023 13:37:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307121343.UBa8L4og-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689140323; x=1720676323;
 h=date:from:to:subject:message-id;
 bh=GPjxJOq0oQMkkTaoU5NmkIe/LcopLNFrubD9aOY51Oo=;
 b=Qhywd4xzDTI8yu57EoAjUI9sqq4BjLK2BxkhV7d60EXgYGoUVZ8g1fzF
 CePL1tB48ViS7No8kvpZoO/vZjeqcYWkmXRwyy9/o4ddWaYcRRlTEdHw5
 S62xLv8oMIJwQ1dlpEjl7gYpAIENizo+QuDBIaRFM/cAtFval3hNgosIv
 e/+rH0f/f5uMioyb3Sf2+vchiS6drIDCOHTWbKpW48kBjH7VYky3+G68f
 nq+Y9jgbo0yRw6NFS4TdFWP1UvoLNVxxynrRanwegatO8zprWp7VVjosj
 o85/hqMAMNrBwRoU9tDJz5eercvGHa/nqG/HrimneDpLvI/1iRfPMigbh
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qhywd4xz
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 8278ee2a2646b9acf747317895e47a640ba933c9
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 8278ee2a2646b9acf747317895e47a640ba933c9  octeontx2-pf: Add additional check for MCAM rules

elapsed time: 1098m

configs tested: 219
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230710   gcc  
alpha                randconfig-r014-20230710   gcc  
alpha                randconfig-r022-20230712   gcc  
alpha                randconfig-r025-20230710   gcc  
alpha                randconfig-r034-20230710   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230710   gcc  
arc                  randconfig-r024-20230710   gcc  
arc                  randconfig-r034-20230712   gcc  
arc                  randconfig-r043-20230710   gcc  
arc                  randconfig-r043-20230711   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r012-20230711   clang
arm                  randconfig-r012-20230712   gcc  
arm                  randconfig-r015-20230712   gcc  
arm                  randconfig-r046-20230710   gcc  
arm                  randconfig-r046-20230711   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230712   gcc  
arm64                randconfig-r025-20230710   clang
arm64                randconfig-r034-20230710   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230712   gcc  
csky                 randconfig-r006-20230710   gcc  
csky                 randconfig-r006-20230712   gcc  
csky                 randconfig-r015-20230711   gcc  
csky                 randconfig-r015-20230712   gcc  
csky                 randconfig-r036-20230710   gcc  
hexagon              randconfig-r002-20230710   clang
hexagon              randconfig-r024-20230712   clang
hexagon              randconfig-r041-20230710   clang
hexagon              randconfig-r041-20230711   clang
hexagon              randconfig-r041-20230712   clang
hexagon              randconfig-r045-20230710   clang
hexagon              randconfig-r045-20230711   clang
hexagon              randconfig-r045-20230712   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230710   gcc  
i386         buildonly-randconfig-r004-20230711   clang
i386         buildonly-randconfig-r004-20230712   gcc  
i386         buildonly-randconfig-r005-20230710   gcc  
i386         buildonly-randconfig-r005-20230711   clang
i386         buildonly-randconfig-r005-20230712   gcc  
i386         buildonly-randconfig-r006-20230710   gcc  
i386         buildonly-randconfig-r006-20230711   clang
i386         buildonly-randconfig-r006-20230712   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230710   gcc  
i386                 randconfig-i001-20230711   clang
i386                 randconfig-i001-20230712   gcc  
i386                 randconfig-i002-20230710   gcc  
i386                 randconfig-i002-20230711   clang
i386                 randconfig-i002-20230712   gcc  
i386                 randconfig-i003-20230710   gcc  
i386                 randconfig-i003-20230711   clang
i386                 randconfig-i003-20230712   gcc  
i386                 randconfig-i004-20230710   gcc  
i386                 randconfig-i004-20230711   clang
i386                 randconfig-i004-20230712   gcc  
i386                 randconfig-i005-20230710   gcc  
i386                 randconfig-i005-20230711   clang
i386                 randconfig-i005-20230712   gcc  
i386                 randconfig-i006-20230710   gcc  
i386                 randconfig-i006-20230711   clang
i386                 randconfig-i006-20230712   gcc  
i386                 randconfig-i011-20230711   gcc  
i386                 randconfig-i011-20230712   clang
i386                 randconfig-i012-20230711   gcc  
i386                 randconfig-i012-20230712   clang
i386                 randconfig-i013-20230711   gcc  
i386                 randconfig-i013-20230712   clang
i386                 randconfig-i014-20230711   gcc  
i386                 randconfig-i014-20230712   clang
i386                 randconfig-i015-20230711   gcc  
i386                 randconfig-i015-20230712   clang
i386                 randconfig-i016-20230711   gcc  
i386                 randconfig-i016-20230712   clang
i386                 randconfig-r001-20230710   gcc  
i386                 randconfig-r014-20230711   gcc  
i386                 randconfig-r021-20230712   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r021-20230712   gcc  
loongarch            randconfig-r022-20230710   gcc  
loongarch            randconfig-r026-20230712   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230710   gcc  
m68k                 randconfig-r011-20230712   gcc  
m68k                 randconfig-r013-20230712   gcc  
m68k                 randconfig-r016-20230710   gcc  
m68k                 randconfig-r026-20230710   gcc  
m68k                 randconfig-r035-20230712   gcc  
microblaze           randconfig-r003-20230710   gcc  
microblaze           randconfig-r005-20230712   gcc  
microblaze           randconfig-r015-20230711   gcc  
microblaze           randconfig-r033-20230710   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r013-20230711   clang
mips                 randconfig-r022-20230712   gcc  
mips                 randconfig-r033-20230710   clang
mips                 randconfig-r035-20230710   clang
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230710   gcc  
nios2                randconfig-r012-20230712   gcc  
nios2                randconfig-r013-20230710   gcc  
nios2                randconfig-r023-20230710   gcc  
openrisc             randconfig-r021-20230710   gcc  
openrisc             randconfig-r031-20230710   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230712   gcc  
parisc               randconfig-r014-20230712   gcc  
parisc               randconfig-r016-20230712   gcc  
parisc               randconfig-r021-20230712   gcc  
parisc               randconfig-r023-20230712   gcc  
parisc               randconfig-r033-20230712   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r014-20230711   gcc  
powerpc              randconfig-r023-20230710   clang
powerpc              randconfig-r035-20230710   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r011-20230711   gcc  
riscv                randconfig-r031-20230710   gcc  
riscv                randconfig-r032-20230710   gcc  
riscv                randconfig-r035-20230710   gcc  
riscv                randconfig-r036-20230710   gcc  
riscv                randconfig-r042-20230710   clang
riscv                randconfig-r042-20230711   gcc  
riscv                randconfig-r042-20230712   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230712   gcc  
s390                 randconfig-r013-20230711   gcc  
s390                 randconfig-r016-20230711   gcc  
s390                 randconfig-r032-20230710   gcc  
s390                 randconfig-r036-20230710   gcc  
s390                 randconfig-r044-20230710   clang
s390                 randconfig-r044-20230711   gcc  
s390                 randconfig-r044-20230712   clang
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230711   gcc  
sparc                randconfig-r014-20230712   gcc  
sparc                randconfig-r016-20230711   gcc  
sparc                randconfig-r031-20230710   gcc  
sparc64              randconfig-r012-20230711   gcc  
sparc64              randconfig-r034-20230710   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r003-20230710   clang
um                   randconfig-r016-20230712   gcc  
um                   randconfig-r022-20230710   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230710   gcc  
x86_64       buildonly-randconfig-r001-20230711   clang
x86_64       buildonly-randconfig-r001-20230712   gcc  
x86_64       buildonly-randconfig-r002-20230710   gcc  
x86_64       buildonly-randconfig-r002-20230711   clang
x86_64       buildonly-randconfig-r002-20230712   gcc  
x86_64       buildonly-randconfig-r003-20230710   gcc  
x86_64       buildonly-randconfig-r003-20230711   clang
x86_64       buildonly-randconfig-r003-20230712   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r024-20230712   clang
x86_64               randconfig-r033-20230710   gcc  
x86_64               randconfig-x001-20230710   clang
x86_64               randconfig-x001-20230712   clang
x86_64               randconfig-x002-20230710   clang
x86_64               randconfig-x002-20230712   clang
x86_64               randconfig-x003-20230710   clang
x86_64               randconfig-x003-20230712   clang
x86_64               randconfig-x004-20230710   clang
x86_64               randconfig-x004-20230712   clang
x86_64               randconfig-x005-20230710   clang
x86_64               randconfig-x005-20230712   clang
x86_64               randconfig-x006-20230710   clang
x86_64               randconfig-x006-20230712   clang
x86_64               randconfig-x011-20230710   gcc  
x86_64               randconfig-x011-20230712   gcc  
x86_64               randconfig-x012-20230710   gcc  
x86_64               randconfig-x012-20230712   gcc  
x86_64               randconfig-x013-20230710   gcc  
x86_64               randconfig-x013-20230712   gcc  
x86_64               randconfig-x014-20230710   gcc  
x86_64               randconfig-x014-20230712   gcc  
x86_64               randconfig-x015-20230710   gcc  
x86_64               randconfig-x015-20230712   gcc  
x86_64               randconfig-x016-20230710   gcc  
x86_64               randconfig-x016-20230712   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r004-20230710   gcc  
xtensa               randconfig-r013-20230712   gcc  
xtensa               randconfig-r016-20230712   gcc  
xtensa               randconfig-r024-20230712   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
