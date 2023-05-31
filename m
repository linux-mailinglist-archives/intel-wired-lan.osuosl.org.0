Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC78717F62
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 14:00:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48BC460D94;
	Wed, 31 May 2023 12:00:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48BC460D94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685534425;
	bh=7M594w5To75cosdXmNTP2De/jOfK017KjAn+5UV0sdA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=J1EULfh69x5EJHtJegzGQ3PsfVi0hLY7CM9cXIYbjo46SLTeJypTTpb5LlB+qJcz1
	 /8aqmODo4Sv40w2oIOWOjovuSULL4o/R7qc7BhXTj+h6n9aYUWktEapd7TgiNRAaqy
	 Od1Bk7vCZ16mx0EFBnuQx7uLssLrLTJgleK0qvOyhvFtwrh0BmL0tvumb1VOxmM3CA
	 mf4cZw6q36Kf+ePadA7HXL9rZVpvJcel4QmviUDJtbF0WzTnYcIDc5tlRVuTOcgB8y
	 qaMlLcZtiFHCUaf4BJK8hSjdHHONDgqNRiTKP+D6ozWb2NSIg4hg/V1mcosugQL2Gq
	 NC/j+vvnPJumQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 26ijf_TVVUVJ; Wed, 31 May 2023 12:00:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AD65608D8;
	Wed, 31 May 2023 12:00:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AD65608D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDB731BF41F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 12:00:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C504A40E47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 12:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C504A40E47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I2WwSbPqln62 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 12:00:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 698D9410B0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 698D9410B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 12:00:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="354058990"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="354058990"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 05:00:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="1037013940"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="1037013940"
Received: from lkp-server01.sh.intel.com (HELO fb1ced2c09fb) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 31 May 2023 05:00:17 -0700
Received: from kbuild by fb1ced2c09fb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q4KUy-0001IN-2E
 for intel-wired-lan@lists.osuosl.org; Wed, 31 May 2023 12:00:16 +0000
Date: Wed, 31 May 2023 19:59:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230531115938.hx8rq%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685534418; x=1717070418;
 h=date:from:to:subject:message-id;
 bh=Y/hPr21ZbCPxqtd+ZSpZnYPZrJ+1AsrkhR9o97gxix8=;
 b=KwOB3bkYRv9pPTe0u6Or7rhy3Arviz+0vdnVQZhl6S5R5w9PLchZBUb2
 ceIQWy6uoqLRXKgVU4Im5DPWGHtxzlGJ8yATHJheveWCs3NtSOqaockv2
 cTTPKGobkQkk6GtrBVGxKkFassDsx2PkKaNQFMaWduyiWJMe2vnIQECl7
 ZnfdA1zWO9PnAkH9GKnaM/b31int4/qks/Kln0UcENO5s5bwU3FGDPrrv
 FNPVpC3a1iv3N2VzvWPS4avyWOWFuLOAkWCWrrnKiGiJlZlKxp6Ru/Vkn
 zmlOSPtzSjQyBWIjmnM0d3hpt2keDsffjALxRkdYpCUdqGjaWpz2j0Vwi
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KwOB3bkY
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 2e246bca986598bdc9d7cae64cf0995257328a5d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 2e246bca986598bdc9d7cae64cf0995257328a5d  Merge branch 'devlink-move-port-ops-into-separate-structure'

elapsed time: 1004m

configs tested: 71
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230531   gcc  
alpha                randconfig-r032-20230531   gcc  
alpha                randconfig-r035-20230531   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230531   gcc  
arc                  randconfig-r022-20230531   gcc  
arc                  randconfig-r043-20230531   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230531   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230531   gcc  
arm64                randconfig-r003-20230531   gcc  
arm64                randconfig-r024-20230531   clang
arm64                randconfig-r025-20230531   clang
arm64                randconfig-r026-20230531   clang
csky                                defconfig   gcc  
hexagon              randconfig-r034-20230531   clang
hexagon              randconfig-r041-20230531   clang
hexagon              randconfig-r045-20230531   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-r003-20230531   gcc  
i386                 randconfig-r006-20230531   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230531   gcc  
loongarch            randconfig-r012-20230531   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r021-20230531   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r001-20230531   clang
mips                 randconfig-r016-20230531   gcc  
nios2                               defconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r031-20230531   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230531   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230531   gcc  
s390                 randconfig-r044-20230531   clang
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r014-20230531   clang
x86_64               randconfig-r036-20230531   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r011-20230531   gcc  
xtensa               randconfig-r015-20230531   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
