Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 355926D7372
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Apr 2023 06:39:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B74F54088D;
	Wed,  5 Apr 2023 04:39:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B74F54088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680669549;
	bh=N7x6nTOdcS3t9A95NSzAjkwyNOJI6BqoMKxENY06tS4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=48RGQEkI/mnKbYkCv1fiX6T5PM594GhjOiUAdg7DJK9rnSvmSaNohtpdo2/OQGvDu
	 Xt4wDxyX4AdR0jYlvOMxy5qJMmOD+h/anQtHdvt/loYjYqtlypGkf1fRoDexjdnlkH
	 HBrVEnezuQjx0zR4lTGL0OR4uT8KQgutqjccijtpvf1IY8HF5P7oah8dtuWShho1dh
	 viy/7uxveh0hzdxx/MHiM7IvRVnylV6A4bCbLf75YS7BfMNw9ssu0rMG/9PxerD6Ye
	 Nuub1l+NEm2LyrLOMVBfmxmNkiAD0ZPf2OYMk/OFZOtkpv8gMfqGMtkj+c9OGPiZgx
	 2V7y/cYvkCqVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TtJmcXT-2gW5; Wed,  5 Apr 2023 04:39:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F415405A6;
	Wed,  5 Apr 2023 04:39:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F415405A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F23811C29C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 04:39:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C8ED540457
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 04:39:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8ED540457
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kf1WCiEDUwH5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Apr 2023 04:39:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8047E40185
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8047E40185
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 04:39:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="405140767"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="405140767"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 21:39:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="797762245"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="797762245"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2023 21:38:59 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pjuvC-000QJE-1B;
 Wed, 05 Apr 2023 04:38:58 +0000
Date: Wed, 05 Apr 2023 12:38:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <642cfb2e.CeEGDyBapZGdJUtB%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680669541; x=1712205541;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=LQiItaW5Xx4EvmolQFu2PY9xkELMyJjbt7LJmhfxW5U=;
 b=B/sy+iVg1uJljdzG4mxWOA/+4DeG2h5jMZ6opg9G1koXbmpeXS070s9A
 om2bzkfoygIOW8O64ImKUdrn8+e+HY62U4TnIqNXPPsbzbNV+SPqatr7f
 S72ye42szFpRCQyzMtcrn/xWloNWvG6XPfY8JRvkykiIRp1iPWIKboAuB
 pNgitwi3yw0161i6/1Dpj5S/X02Xcu+0Lnk2+gyC4C+h4EjggzwYlzZ6S
 bQxLGzIGbv6bnCttohku8O6sgNG2UK0N6Mk4eQd0FmICBvfZtLXLqmJFK
 fg84TQRYsu7n1L65/PkM3rgzPNb5BA24OR9sOe7U6R1cr8qrvCnMIdxbJ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B/sy+iVg
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 b103bab0944be030954e5de23851b37980218f54
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: b103bab0944be030954e5de23851b37980218f54  Merge branch 'vsock-return-errors-other-than-enomem-to-socket'

elapsed time: 958m

configs tested: 146
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r021-20230403   gcc  
alpha                randconfig-r024-20230403   gcc  
alpha                randconfig-r026-20230403   gcc  
alpha                randconfig-r036-20230403   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230403   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r021-20230403   gcc  
arc                  randconfig-r022-20230403   gcc  
arc                  randconfig-r025-20230403   gcc  
arc                  randconfig-r033-20230403   gcc  
arc                  randconfig-r043-20230403   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230403   clang
arm                                 defconfig   gcc  
arm                  randconfig-r015-20230403   clang
arm                  randconfig-r034-20230403   gcc  
arm                  randconfig-r046-20230403   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230403   clang
arm64        buildonly-randconfig-r004-20230403   clang
arm64                               defconfig   gcc  
arm64                randconfig-r022-20230403   gcc  
arm64                randconfig-r035-20230403   clang
csky         buildonly-randconfig-r002-20230403   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230403   gcc  
hexagon      buildonly-randconfig-r004-20230403   clang
hexagon      buildonly-randconfig-r006-20230404   clang
hexagon              randconfig-r041-20230403   clang
hexagon              randconfig-r045-20230403   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r002-20230403   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230403   clang
i386                 randconfig-a002-20230403   clang
i386                 randconfig-a003-20230403   clang
i386                 randconfig-a004-20230403   clang
i386                 randconfig-a005-20230403   clang
i386                 randconfig-a006-20230403   clang
i386                 randconfig-a011-20230403   gcc  
i386                 randconfig-a012-20230403   gcc  
i386                 randconfig-a013-20230403   gcc  
i386                 randconfig-a014-20230403   gcc  
i386                 randconfig-a015-20230403   gcc  
i386                 randconfig-a016-20230403   gcc  
i386                 randconfig-r003-20230403   clang
i386                 randconfig-r021-20230403   gcc  
i386                 randconfig-r022-20230403   gcc  
i386                 randconfig-r023-20230403   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r004-20230404   gcc  
ia64         buildonly-randconfig-r006-20230403   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r026-20230403   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230403   gcc  
loongarch            randconfig-r022-20230403   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r005-20230403   gcc  
m68k         buildonly-randconfig-r006-20230403   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r012-20230403   gcc  
m68k                 randconfig-r023-20230403   gcc  
m68k                 randconfig-r024-20230403   gcc  
microblaze   buildonly-randconfig-r006-20230403   gcc  
microblaze           randconfig-r016-20230403   gcc  
microblaze           randconfig-r023-20230403   gcc  
microblaze           randconfig-r024-20230403   gcc  
microblaze           randconfig-r031-20230403   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r021-20230403   clang
mips                 randconfig-r024-20230403   clang
nios2        buildonly-randconfig-r005-20230403   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230403   gcc  
nios2                randconfig-r014-20230403   gcc  
nios2                randconfig-r023-20230403   gcc  
nios2                randconfig-r032-20230403   gcc  
nios2                randconfig-r034-20230403   gcc  
openrisc     buildonly-randconfig-r005-20230404   gcc  
openrisc             randconfig-r011-20230403   gcc  
openrisc             randconfig-r035-20230403   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230403   gcc  
parisc               randconfig-r022-20230403   gcc  
parisc               randconfig-r025-20230403   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r003-20230404   clang
powerpc              randconfig-r012-20230403   gcc  
powerpc              randconfig-r025-20230403   gcc  
powerpc              randconfig-r036-20230403   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r015-20230403   gcc  
riscv                randconfig-r042-20230403   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230403   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r035-20230403   clang
s390                 randconfig-r044-20230403   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r034-20230403   gcc  
sparc        buildonly-randconfig-r001-20230403   gcc  
sparc        buildonly-randconfig-r001-20230404   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r032-20230403   gcc  
sparc64              randconfig-r005-20230403   gcc  
sparc64              randconfig-r014-20230403   gcc  
sparc64              randconfig-r031-20230403   gcc  
sparc64              randconfig-r033-20230403   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230403   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230403   clang
x86_64               randconfig-a002-20230403   clang
x86_64               randconfig-a003-20230403   clang
x86_64               randconfig-a004-20230403   clang
x86_64               randconfig-a005-20230403   clang
x86_64               randconfig-a006-20230403   clang
x86_64               randconfig-a011-20230403   gcc  
x86_64               randconfig-a012-20230403   gcc  
x86_64               randconfig-a013-20230403   gcc  
x86_64               randconfig-a014-20230403   gcc  
x86_64               randconfig-a015-20230403   gcc  
x86_64               randconfig-a016-20230403   gcc  
x86_64               randconfig-r013-20230403   gcc  
x86_64               randconfig-r026-20230403   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r026-20230403   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
