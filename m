Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF10A5EF7CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 16:40:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFF0241B3A;
	Thu, 29 Sep 2022 14:40:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFF0241B3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664462452;
	bh=zqblDymT0HAxrDjOBsUVrsW2nyccl2JDMNfxetSh4wo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Yjpq72KkNN019D3cP9PurT3lgnASyw0iSGh49dQFp3XQy7RtGBbn6Ad4nxf6ODrZB
	 l44iY3uLyqIOECLu7WrSpg9Gmy/6vL+CcnPJrR3LteRXHC2pGugR8lIR4fqCP6wds6
	 7pMZuerMc5gwNVBfF/gpEFMAniXy6zoL5+PX9ZqWAS60pIYCQmioENDnjw1tLmz7T9
	 92PJwnyBNBEKxWKsx3d6hspeQO+4IkG/6XjUR+tHH77xqsrf/L0VbWX3QxOrqTD4Gt
	 LoXvyCeVx+q+mw5rWlWQlVtS5N0NKsDmDWPD/48COiUhXI/YDBKA2Bs9pOfwBJWEey
	 09jM0KNUdWphQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3EsZSIgNn5El; Thu, 29 Sep 2022 14:40:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 281B941B3B;
	Thu, 29 Sep 2022 14:40:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 281B941B3B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B8EF1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 14:40:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2347441050
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 14:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2347441050
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q-1joEjvauPX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 14:40:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 956D04015A
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 956D04015A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 14:40:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="300631197"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="300631197"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 07:40:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="653137984"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="653137984"
Received: from lkp-server01.sh.intel.com (HELO 6126f2790925) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 29 Sep 2022 07:40:36 -0700
Received: from kbuild by 6126f2790925 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oduiJ-0001DS-1n;
 Thu, 29 Sep 2022 14:40:35 +0000
Date: Thu, 29 Sep 2022 22:40:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6335ae4e.IY9Il3fxmnLIm4jl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664462442; x=1695998442;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vrtubKNDhx7Z1UdruvGhzOYzmMZNLU7bsWVxH8BObv4=;
 b=bBAHFalWo76ag2vvc/FhEDrsazx8UNB1EOLRiEAE0vHId1rmodUgWLy0
 eqZ+7+MBwPwf9EFRljGAhxZr1SDsGipVPimOK24NH5CU912DNypnCBtAN
 wfELalulNgOQx13aRsnJSp3eCGCRM4D7bXFWKMHVSBNzV7/0q7fIGXn8v
 3j532H5FZqJ4sMM+Qn4FAXJ2IjoXVQAT3ieS+Ab++YHXCfQu4xIHb1iWO
 jxVqnGziS/EYI1zjDz5gcsgx7+SvrXmriFL/rZJNJhlJ/urVDIjiP8ADy
 52ZfWPNo7L/tSS8CfRJaBdd36YDkEAVedg/2BBfqQ8PpFgcSRCqQIXdvS
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bBAHFalW
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 929a6cdfaeac9de6a1004eb18999e1439527cfb4
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 929a6cdfaeac9de6a1004eb18999e1439527cfb4  Merge branch 'master' of git://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf-next

elapsed time: 1258m

configs tested: 115
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arc                  randconfig-r043-20220925
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220925
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
x86_64               randconfig-a002-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a001-20220926
x86_64               randconfig-a003-20220926
x86_64               randconfig-a005-20220926
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                        m5407c3_defconfig
powerpc                      chrp32_defconfig
powerpc                 mpc8540_ads_defconfig
riscv                    nommu_k210_defconfig
x86_64               randconfig-a006-20220926
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                 randconfig-a003-20220926
i386                 randconfig-a001-20220926
i386                 randconfig-a006-20220926
i386                 randconfig-a004-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a002-20220926
i386                          randconfig-c001
i386                             allyesconfig
i386                                defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
xtensa                  audio_kc705_defconfig
sh                         ap325rxa_defconfig
xtensa                generic_kc705_defconfig
sh                          urquell_defconfig
arm                         nhk8815_defconfig
sh                          landisk_defconfig
sh                           sh2007_defconfig
sh                            hp6xx_defconfig
sh                      rts7751r2d1_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-c001
arm                  randconfig-c002-20220925
m68k                         amcore_defconfig
mips                           xway_defconfig
sh                          lboxre2_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                      ppc6xx_defconfig
arm                           tegra_defconfig
powerpc                      tqm8xx_defconfig
ia64                             allmodconfig

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
hexagon              randconfig-r045-20220925
i386                          randconfig-a015
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
x86_64               randconfig-a013-20220926
s390                 randconfig-r044-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a016-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a015-20220926
i386                 randconfig-a011-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a014-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a016-20220926
x86_64                        randconfig-k001
hexagon                          alldefconfig
mips                      malta_kvm_defconfig
hexagon                             defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
