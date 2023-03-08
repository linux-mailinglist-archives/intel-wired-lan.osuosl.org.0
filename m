Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0516B152E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 23:36:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D375181FE6;
	Wed,  8 Mar 2023 22:36:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D375181FE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678314974;
	bh=ZcjJeBmUdwbJk4opdrIbRr5gKmyqS48Mhi6w9k3y3Mg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=A8V2gGfJk9FnkCa+4P0AtxJuQClRkWHTlpIMe7X/mWBKmXe+SdUAvCEJBj/HjbcXU
	 z/AieFjoY3tQLm4EJuEza8pr+CCD2n4HssYZEkM0zfn4Rd2bimXwwS3E4qW1IXYDBJ
	 hTwa7XFKkYrTUHLseI+DM4uqqaQFXoInQLVoKFjw7nBzT+QWjlnmzOFwsNorAleJh/
	 M1et+S7DPul2YA3jlIHioQSwr6NxDLutfapSaarcsBtSUPhFNHQe66p/Jtw65uvd1e
	 vSMIOgC7c0Iot64NxRjokPkLVmaaAQU8NGjhmNTgDBPtEry6GfFlLgctj6OcWQOJbL
	 aNgUg4MXjRGAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4y3YWf7985Ua; Wed,  8 Mar 2023 22:36:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACCDF81FB2;
	Wed,  8 Mar 2023 22:36:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACCDF81FB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE7781BF423
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 22:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96C0C611C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 22:36:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96C0C611C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k6Z3VX_qMqi4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 22:36:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B87D60AFD
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B87D60AFD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 22:36:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="334997930"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="334997930"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 14:36:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="654518203"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="654518203"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 08 Mar 2023 14:36:01 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pa2O8-0002Rt-2K;
 Wed, 08 Mar 2023 22:36:00 +0000
Date: Thu, 09 Mar 2023 06:36:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64090dd0.+Ee2ITMzuIxJOSuk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678314963; x=1709850963;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=BZEole5JqwA347RlB8XRtWct9KFrDuev0aM0pebHVd8=;
 b=jBU8W6xO3H3ZA88iVMKJVsoGnQNvtxeFLPWofa3NHNLZnb9UBjQhj/G5
 hJDO/NVl7dyi4lduh3U1+toS0Xth4GwJAWLFyNuzgERRZSOVVsc7EBS8+
 QL+8/IJlnrh3U6A5ue3Tw8zC7Uk3jgLfTcmf3cgSd0snxL2TLgBr0c5RT
 wbtgpjiKHX8vcKprtmbyRSlfmWmFvQRHr95TLXLicgXqI2WRPQp9CZU9q
 SCGZ8jP1slaCX1W6Y8AqzZrq1l01mywbEYGO3xFru5cN2EKOfFCquvQHc
 tcOVA6BdtSl3AYqokp3dYvhXQBU6jX3VAs/Agy4kYabLx7GUfDH3MNR46
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jBU8W6xO
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 8f5c5a790e3025d6eca96bf7ee5e3873dc92373f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 8f5c5a790e3025d6eca96bf7ee5e3873dc92373f  ethernet: ice: avoid gcc-9 integer overflow warning

elapsed time: 1446m

configs tested: 129
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230305   gcc  
alpha                randconfig-r015-20230306   gcc  
alpha                randconfig-r016-20230305   gcc  
alpha                randconfig-r024-20230305   gcc  
alpha                randconfig-r026-20230306   gcc  
alpha                randconfig-r034-20230306   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r035-20230305   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r005-20230306   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r025-20230306   gcc  
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230306   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230306   gcc  
arm64                randconfig-r013-20230306   clang
csky         buildonly-randconfig-r001-20230305   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230306   gcc  
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230306   gcc  
i386                 randconfig-a002-20230306   gcc  
i386                 randconfig-a003-20230306   gcc  
i386                 randconfig-a004-20230306   gcc  
i386                 randconfig-a005-20230306   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a011-20230306   clang
i386                 randconfig-a012-20230306   clang
i386                 randconfig-a013-20230306   clang
i386                 randconfig-a014-20230306   clang
i386                 randconfig-a015-20230306   clang
i386                 randconfig-a016-20230306   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230305   gcc  
ia64                 randconfig-r006-20230305   gcc  
ia64                 randconfig-r013-20230305   gcc  
ia64                 randconfig-r033-20230306   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230306   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r014-20230305   gcc  
loongarch            randconfig-r016-20230306   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230305   gcc  
microblaze   buildonly-randconfig-r001-20230306   gcc  
microblaze           randconfig-r003-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r004-20230305   gcc  
mips                 randconfig-r005-20230305   gcc  
mips                 randconfig-r006-20230306   clang
nios2                               defconfig   gcc  
nios2                randconfig-r031-20230305   gcc  
openrisc             randconfig-r015-20230305   gcc  
openrisc             randconfig-r024-20230306   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r021-20230305   gcc  
parisc               randconfig-r032-20230305   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r035-20230306   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230305   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r021-20230306   clang
s390                 randconfig-r031-20230306   gcc  
s390                 randconfig-r032-20230306   gcc  
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sparc        buildonly-randconfig-r006-20230305   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230306   gcc  
sparc                randconfig-r014-20230306   gcc  
sparc                randconfig-r034-20230305   gcc  
sparc                randconfig-r036-20230305   gcc  
sparc64              randconfig-r005-20230306   gcc  
sparc64              randconfig-r012-20230306   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230306   gcc  
x86_64               randconfig-a002-20230306   gcc  
x86_64               randconfig-a003-20230306   gcc  
x86_64               randconfig-a004-20230306   gcc  
x86_64               randconfig-a005-20230306   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64               randconfig-a011-20230306   clang
x86_64               randconfig-a012-20230306   clang
x86_64               randconfig-a013-20230306   clang
x86_64               randconfig-a014-20230306   clang
x86_64               randconfig-a015-20230306   clang
x86_64               randconfig-a016-20230306   clang
x86_64               randconfig-r022-20230306   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230305   gcc  
xtensa       buildonly-randconfig-r005-20230305   gcc  
xtensa               randconfig-r022-20230305   gcc  
xtensa               randconfig-r023-20230306   gcc  
xtensa               randconfig-r025-20230305   gcc  
xtensa               randconfig-r026-20230305   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
