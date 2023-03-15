Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E526BA8F8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Mar 2023 08:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CD00813B0;
	Wed, 15 Mar 2023 07:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CD00813B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678865074;
	bh=9UZZJfwTMMaTb9LlKBYzYVCeAlnnAmcswn1NfuGmXdw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6SL5WYEe+YSDcJYUkcTdpJwYEsR2ZNTVIGOocMNn7QOid6/+RhNsaYOrputZrzkL+
	 aDh/vZ8tsUPdxJNyY4vu968omRrR9cztMq7P8jrky6cn/1wJU3jsJkqr+ax3Ehi/0G
	 TkF3pPMND5e6Br0qJCDB3L5ilsmmaDrNuKsKZYMSufn19+LysNVjaCOTHwNdJhdKw+
	 B257fFpyFAGlVrJnFfZ/fW40yiTdZRe9EL8Za1B6dRL0P9Va3+PeM/Fbe88l1nMag4
	 0mdPgnvaJLhp7wUxUsSCEPqYJmxS3jb9TZ8uxYBNyVe2/z/wSXiubJosZzMsPdhmi5
	 acukeZFJx3o0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s7Qp5xU2w1Jp; Wed, 15 Mar 2023 07:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD98B81241;
	Wed, 15 Mar 2023 07:24:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD98B81241
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 63F791BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 07:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B8B160BB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 07:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B8B160BB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HNZ8fAxsFsnm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Mar 2023 07:24:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EAE460BC3
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0EAE460BC3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 07:24:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="336322906"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="336322906"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 00:24:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="789687335"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="789687335"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 15 Mar 2023 00:24:25 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pcLUn-0007W0-06;
 Wed, 15 Mar 2023 07:24:25 +0000
Date: Wed, 15 Mar 2023 15:23:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6411727e.qJkiLImP6a50UdKh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678865067; x=1710401067;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5ak5rWXTwd+APn4aIFkmO/TkzxB0xLvBTVsN7LbJ2JY=;
 b=XWLYjph14Vo9Fm248ZL9vKhy8wm0LtQC2XiefR15T8P43T9AzhqKUK4g
 dzZ5WygSELVm8FNHb0qT7mLEWAU938lKyuFUwcfWR2VdrHYhL2MBop/LM
 aD/GtDbrGOVRKIBtN4d8d7gj1FebN++q0bmew3G/n/c7oeJKFJ8DFb8NC
 XYKc7cOOUcg5pzWMCn+upWB+YpHPXL/jTVxvb0ECr34FIFTqycQf93NHD
 XJli3pv+l9kDqYHnVACNB2JeMjnt01jWiCNZN4zviO0m2hr5WCk+UE/G4
 EIkApW32GVsojhNcX9KiRdGisfpcoxjKPTlH0hIP5ntg4opmvZsLO0mgR
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XWLYjph1
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 df302c5907005cd9bee329e3707ca6e430ce36bb
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
branch HEAD: df302c5907005cd9bee329e3707ca6e430ce36bb  ice: add ability to read FW logging data

elapsed time: 726m

configs tested: 130
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r034-20230313   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230312   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230313   gcc  
arm          buildonly-randconfig-r002-20230312   clang
arm          buildonly-randconfig-r005-20230313   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230312   gcc  
arm                  randconfig-r005-20230312   gcc  
arm                  randconfig-r016-20230313   gcc  
arm                  randconfig-r024-20230313   gcc  
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230312   clang
arm64                randconfig-r012-20230313   clang
arm64                randconfig-r021-20230312   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230312   gcc  
hexagon              randconfig-r003-20230313   clang
hexagon              randconfig-r025-20230312   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r002-20230313   gcc  
i386         buildonly-randconfig-r003-20230313   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230313   gcc  
i386                 randconfig-a002-20230313   gcc  
i386                 randconfig-a003-20230313   gcc  
i386                 randconfig-a004-20230313   gcc  
i386                 randconfig-a005-20230313   gcc  
i386                 randconfig-a006-20230313   gcc  
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
i386                 randconfig-r002-20230313   gcc  
i386                 randconfig-r005-20230313   gcc  
i386                 randconfig-r032-20230313   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r005-20230312   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r001-20230313   gcc  
ia64                 randconfig-r006-20230313   gcc  
ia64                 randconfig-r011-20230312   gcc  
ia64                 randconfig-r012-20230312   gcc  
ia64                 randconfig-r022-20230313   gcc  
ia64                 randconfig-r023-20230313   gcc  
ia64                 randconfig-r025-20230313   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r026-20230312   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230312   gcc  
m68k                 randconfig-r004-20230313   gcc  
m68k                 randconfig-r031-20230313   gcc  
microblaze           randconfig-r006-20230312   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r023-20230312   clang
mips                 randconfig-r024-20230312   clang
nios2        buildonly-randconfig-r003-20230312   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230312   gcc  
openrisc     buildonly-randconfig-r001-20230312   gcc  
openrisc             randconfig-r014-20230313   gcc  
parisc       buildonly-randconfig-r006-20230312   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r014-20230312   gcc  
parisc               randconfig-r036-20230313   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r015-20230313   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r004-20230313   clang
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230313   gcc  
sh                   randconfig-r016-20230312   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r015-20230312   gcc  
sparc                randconfig-r022-20230312   gcc  
sparc                randconfig-r035-20230313   gcc  
sparc64              randconfig-r021-20230313   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64               randconfig-a002-20230313   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64               randconfig-a004-20230313   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64               randconfig-a006-20230313   gcc  
x86_64               randconfig-a011-20230313   clang
x86_64               randconfig-a012-20230313   clang
x86_64               randconfig-a013-20230313   clang
x86_64               randconfig-a014-20230313   clang
x86_64               randconfig-a015-20230313   clang
x86_64               randconfig-a016-20230313   clang
x86_64               randconfig-r033-20230313   gcc  
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
