Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FBE6EDB5E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Apr 2023 07:52:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AECC0409A4;
	Tue, 25 Apr 2023 05:52:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AECC0409A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682401954;
	bh=JO7DV+F7ViHaW8NloiAJrkNIqI3r/rlU3Fp0R7orxo0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Olob5BzykoQEkjya1npNKzcEAAiqU6BlEtFGTfaWhTU9h+X4VJ42VSPwtoe0bPEtT
	 VLwAGF/EhRZEA2iiwPCSLmNiCmeBcnrocjKCXcaUloUTlleVHy/LKDWQCgHPXGdU+W
	 uj/5u8bZRwxlN1LHLDU/yO5ZUbyn2FuNUmzA/ORIi0ChVIuqkHYZyO/olIjTzKt1C4
	 DBvxCAv80UZwalHmcQAJ1GqwakKUfybhzfXhw4NR3JsF8AXL9EoXI4zGSe9IxZ9qGb
	 6JXocKMlzSuNZ+SMG0w7A4NcuKjY/7oxbtQI1qQOj+DSHO6CsorhiIYuTxkOMmm0Y6
	 aJ38ZwmiZ9nVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VWGc0MSSRY_i; Tue, 25 Apr 2023 05:52:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE98D409A3;
	Tue, 25 Apr 2023 05:52:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE98D409A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A5B71BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 05:52:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58C8681E52
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 05:52:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58C8681E52
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5SIdcO86r-YE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Apr 2023 05:52:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E7F681E45
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E7F681E45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 05:52:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="348579386"
X-IronPort-AV: E=Sophos;i="5.99,224,1677571200"; d="scan'208";a="348579386"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 22:52:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="1023002993"
X-IronPort-AV: E=Sophos;i="5.99,224,1677571200"; d="scan'208";a="1023002993"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 24 Apr 2023 22:52:24 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1prBb8-000j3c-2u;
 Tue, 25 Apr 2023 05:52:18 +0000
Date: Tue, 25 Apr 2023 13:52:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64476a80./zBdcwsA24/rzOdo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682401947; x=1713937947;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3r1XvGZCNGTloMYswyHEobs9H9/13j6XI442aw7ZAJw=;
 b=OqKcJxdJBwYYBBGDNvZXlr0q6ijZ7iscLJCbixr1ORtgoxl5tp8fNwz6
 VGDan9/W1gVCRgTqo6dQHfDqE+n2ZbAvfHKCNVRB7u/UghE76ytoxEkPG
 E65+/GFyazdp4c8aamTtxVu1ePQIRsa3gZzdnZ57NvpWEQdKDYOfXUNwC
 m9dpFKSSp9kcqUvJ+NeyfMETA0pylRn+iJAoByRyAqY22bANZFUFuuZ2O
 Eb7HIdWXBeLPEkeog5yHig3XB1PW2yfRhSUjcD0u4P5EYA8+URlY7wpnj
 jH4gNzuZm0YY8viaOtHrYhvyrRppiweiX3vQMp+xr9TyaElXY8H3R27QX
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OqKcJxdJ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1ddbd680c67cbfff192cdebb8c93185ce77cd106
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
branch HEAD: 1ddbd680c67cbfff192cdebb8c93185ce77cd106  iavf: Fix out-of-bounds when setting channels on remove

elapsed time: 725m

configs tested: 151
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r021-20230423   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r006-20230423   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230423   gcc  
arc                  randconfig-r016-20230424   gcc  
arc                  randconfig-r022-20230425   gcc  
arc                  randconfig-r033-20230424   gcc  
arc                  randconfig-r043-20230423   gcc  
arc                  randconfig-r043-20230424   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r023-20230425   gcc  
arm                  randconfig-r046-20230423   gcc  
arm                  randconfig-r046-20230424   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230423   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230424   clang
arm64                randconfig-r016-20230423   clang
csky         buildonly-randconfig-r005-20230424   gcc  
csky         buildonly-randconfig-r006-20230424   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230424   gcc  
csky                 randconfig-r022-20230423   gcc  
csky                 randconfig-r025-20230423   gcc  
hexagon      buildonly-randconfig-r001-20230423   clang
hexagon              randconfig-r041-20230423   clang
hexagon              randconfig-r041-20230424   clang
hexagon              randconfig-r045-20230423   clang
hexagon              randconfig-r045-20230424   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230424   clang
i386                 randconfig-a002-20230424   clang
i386                 randconfig-a003-20230424   clang
i386                 randconfig-a004-20230424   clang
i386                 randconfig-a005-20230424   clang
i386                 randconfig-a006-20230424   clang
i386                 randconfig-a011-20230424   gcc  
i386                 randconfig-a012-20230424   gcc  
i386                 randconfig-a013-20230424   gcc  
i386                 randconfig-a014-20230424   gcc  
i386                 randconfig-a015-20230424   gcc  
i386                 randconfig-a016-20230424   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r004-20230424   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r011-20230424   gcc  
ia64                 randconfig-r012-20230424   gcc  
ia64                 randconfig-r025-20230425   gcc  
ia64                 randconfig-r036-20230424   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230423   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230423   gcc  
loongarch            randconfig-r002-20230424   gcc  
loongarch            randconfig-r003-20230423   gcc  
loongarch            randconfig-r014-20230423   gcc  
loongarch            randconfig-r014-20230424   gcc  
loongarch            randconfig-r032-20230424   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230423   gcc  
m68k         buildonly-randconfig-r002-20230424   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r002-20230424   gcc  
microblaze   buildonly-randconfig-r003-20230423   gcc  
microblaze           randconfig-r013-20230424   gcc  
microblaze           randconfig-r016-20230424   gcc  
microblaze           randconfig-r026-20230425   gcc  
microblaze           randconfig-r033-20230423   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2        buildonly-randconfig-r006-20230423   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r024-20230423   gcc  
nios2                randconfig-r026-20230423   gcc  
openrisc     buildonly-randconfig-r003-20230423   gcc  
openrisc     buildonly-randconfig-r003-20230424   gcc  
openrisc             randconfig-r013-20230423   gcc  
parisc       buildonly-randconfig-r002-20230423   gcc  
parisc       buildonly-randconfig-r003-20230424   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r012-20230423   gcc  
parisc               randconfig-r014-20230424   gcc  
parisc               randconfig-r034-20230424   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r006-20230424   gcc  
powerpc              randconfig-r013-20230423   clang
powerpc              randconfig-r031-20230424   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230424   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r011-20230424   gcc  
riscv                randconfig-r042-20230423   clang
riscv                randconfig-r042-20230424   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230424   gcc  
s390         buildonly-randconfig-r002-20230423   clang
s390                                defconfig   gcc  
s390                 randconfig-r004-20230423   gcc  
s390                 randconfig-r006-20230423   gcc  
s390                 randconfig-r011-20230423   clang
s390                 randconfig-r014-20230423   clang
s390                 randconfig-r015-20230424   gcc  
s390                 randconfig-r035-20230423   gcc  
s390                 randconfig-r044-20230423   clang
s390                 randconfig-r044-20230424   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r013-20230423   gcc  
sh                   randconfig-r031-20230423   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r006-20230424   gcc  
sparc                randconfig-r013-20230424   gcc  
sparc                randconfig-r034-20230423   gcc  
sparc64              randconfig-r012-20230423   gcc  
sparc64              randconfig-r015-20230423   gcc  
sparc64              randconfig-r023-20230423   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230424   clang
x86_64               randconfig-a002-20230424   clang
x86_64                        randconfig-a002   gcc  
x86_64               randconfig-a003-20230424   clang
x86_64               randconfig-a004-20230424   clang
x86_64                        randconfig-a004   gcc  
x86_64               randconfig-a005-20230424   clang
x86_64               randconfig-a006-20230424   clang
x86_64                        randconfig-a006   gcc  
x86_64               randconfig-a011-20230424   gcc  
x86_64               randconfig-a012-20230424   gcc  
x86_64               randconfig-a013-20230424   gcc  
x86_64               randconfig-a014-20230424   gcc  
x86_64               randconfig-a015-20230424   gcc  
x86_64               randconfig-a016-20230424   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r035-20230424   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
