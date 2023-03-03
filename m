Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF1A6A971F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Mar 2023 13:18:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11F4D402E0;
	Fri,  3 Mar 2023 12:18:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11F4D402E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677845905;
	bh=+cpHvp+KkTayLTbT41hrtVOYbyNmVuJfEzmTlJ0FVfg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=J7OtDjKUb37MPJ/wWn0R2+ZNPVdE22009jaMvoRuFhlnzzvBGW1KmbHKX0Re2rMSX
	 NkpEDu1H+LxKTy/MIGUJLnrzK/By8kSFbGIIm6Io1b2O2oRXqdSVaVVLy9lz6Rnhsb
	 M7njk0qbRrd3r0ABWpfU2QhHmc0XwDUtVVKl8Sz1/iSjFZc9SkjxoiLt9O/Jh+sMtu
	 BXIqLH2o+3/Iz+f9xCUjoaqNpPMBWWnziaHxMT3fHk2PaQuPiH7ARVBpoO0jk+zzph
	 IITjRxCNImgzDLNwGu6hFCHD0fJW97mF2uCU7y1xrxCQ3tB86OxGQ1vDUPiDa8gvPa
	 hxoAfM8npEUzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PP5w6PyG9yKJ; Fri,  3 Mar 2023 12:18:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A61AA402C0;
	Fri,  3 Mar 2023 12:18:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A61AA402C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 652461BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 12:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4956161397
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 12:18:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4956161397
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7U64tVWFEtOM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 12:18:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D517612D1
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D517612D1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 12:18:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="336547674"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400"; d="scan'208";a="336547674"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 04:18:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="921096577"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400"; d="scan'208";a="921096577"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 03 Mar 2023 04:18:13 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pY4MX-0001Qp-1E;
 Fri, 03 Mar 2023 12:18:13 +0000
Date: Fri, 03 Mar 2023 20:17:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6401e575.hHK3a3X2KdBFSKE/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677845896; x=1709381896;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/veGYWpLrFzCmzLQchIr1u9pj/s7tWOYaJ5aTl8nC4o=;
 b=Vh2RPMLwePCRYlggLtJucTBM67gVEnhmD8zPrT8KX8yngE85t54u5bXB
 SSprT/nmjjzf/u4RcAOale3m2gmKIavbBpVDkReHRg8/0NTQO1A1UubWy
 9fhJ5EojmE7Ng14MwBFEtwCngnq0g1pvwtYjjZm9APuBRhTPudFTpr93D
 QySgENQ1MBglbRjMczEdrmoGhDzyN4wvTc6d3+ZJPjwTdi/8K1FGETFv1
 Ews1aFkdDefUXPlvcqfYwIwxg3l7XhFvZ6osvdmPrwPRWGHPVk8tpbpf+
 AduDiRgp23T/c0mh6DvFKGSnxt1VbfNU4MGgp6Q0/vvZ2ZaafkaucfdZm
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vh2RPMLw
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 dea8af15beea805a058f760993b6f816c4c45d08
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
branch HEAD: dea8af15beea805a058f760993b6f816c4c45d08  igbvf: add PCI reset handler functions

elapsed time: 825m

configs tested: 79
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r036-20230302   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230302   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r024-20230302   gcc  
arm                  randconfig-r031-20230302   clang
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230302   gcc  
arm64                randconfig-r013-20230302   clang
arm64                randconfig-r034-20230302   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r021-20230302   gcc  
csky                 randconfig-r022-20230302   gcc  
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r045-20230302   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r014-20230302   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r015-20230302   gcc  
loongarch            randconfig-r016-20230302   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r035-20230302   gcc  
microblaze   buildonly-randconfig-r001-20230302   gcc  
microblaze           randconfig-r023-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230302   clang
mips                 randconfig-r003-20230302   clang
nios2                               defconfig   gcc  
openrisc             randconfig-r032-20230302   gcc  
parisc       buildonly-randconfig-r003-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230302   gcc  
parisc               randconfig-r006-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230302   clang
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230302   clang
s390                                defconfig   gcc  
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230302   gcc  
sh                   randconfig-r002-20230302   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r026-20230302   gcc  
sparc64              randconfig-r011-20230302   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a006   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r025-20230302   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
