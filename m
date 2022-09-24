Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5A65E8DAA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Sep 2022 17:01:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E7D360C19;
	Sat, 24 Sep 2022 15:01:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E7D360C19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664031708;
	bh=Ecd8BNetj7aSYZkHxGh2C99EzON5nKhTkZECzBw6P3Q=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qIIErGLZodMDW0nTSh9FCXZ7Iy5taM+FA8z4y98F+z+gmvS3v6yWs/Q53++bgTjMT
	 SESskS0aTeHmGOGX0ZLplIas0EP1hw5jRkWfGiAXY6f6W/VVeZ6NXToOAHY7sNzfoX
	 YrVUkxPVKk00jbXEjFatLshTw/9dIeRvidFeI8X+VVeeYMM9y9/vwIbHehYsGcTm4N
	 dxCDk/dxRj0yQAxDsn0X3n//2AYKzyTQfbs5LOBIyZDQmGNnvzSegVPQJYuW12QBa0
	 9hZfuiwG/lCkcE8I7583rExTaFgkr8BOCEmAFquqiYneJeOQt7IFwYzAKZnuw6Tp1e
	 MLYH4Xf5D9bFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WOX984HlRTc9; Sat, 24 Sep 2022 15:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEC4960BF6;
	Sat, 24 Sep 2022 15:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEC4960BF6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FCD41BF325
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 15:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED3DD60BF6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 15:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED3DD60BF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nC08CT-weTfe for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Sep 2022 15:01:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EA5D60BBF
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4EA5D60BBF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Sep 2022 15:01:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10480"; a="362607705"
X-IronPort-AV: E=Sophos;i="5.93,342,1654585200"; d="scan'208";a="362607705"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2022 08:01:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,342,1654585200"; d="scan'208";a="651299661"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 24 Sep 2022 08:01:38 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oc6ev-0006fc-1w;
 Sat, 24 Sep 2022 15:01:37 +0000
Date: Sat, 24 Sep 2022 23:00:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632f1ba0.qWer9b9F5p5YLTDp%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664031700; x=1695567700;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CreYv56OecjbdfYMW8N1uTaNdvPyiBKG5NaANphm584=;
 b=ANEayHw+Tn8P/Od9l6AGtXUNRPq6/uNQ4UcSWPCLxRKobmuJKv72UXlK
 z/IrK91ziE6hIVg3gavYfNV4FhDnK2ej2NydCS3+xfN8hZu3hBmeU+nJM
 VBEEDRGdDaFvkRRfgtgw4XQo5nrfVkUT+mUSAuZPMcKu2wZ9wRxe6guQW
 ePPTXDuU7WYjKpvwH+zrNZSv0r6CwgxC0KlVQTwayMrqgF0k9LvkCdQKx
 nrBvHA0T0qhilLPMD1sRgXx57eKNshCCf9vizDc5N4HQT2+/W5lrVWNch
 j9k7oPxgMdZsYaAVkBQ8XvXuew/faI0ZjXDtAYAnf00GTWPIaL1gjSgb/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ANEayHw+
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 6bf8e846e4bf336db7e451a6b42ca8c02f99fb0f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 6bf8e846e4bf336db7e451a6b42ca8c02f99fb0f  Merge branch 'net-mt7531-pll-reset-fixes'

elapsed time: 1357m

configs tested: 113
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20220923
riscv                randconfig-r042-20220923
s390                 randconfig-r044-20220923
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
i386                             allyesconfig
i386                                defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
s390                             allyesconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
ia64                             allmodconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220923
i386                          randconfig-c001
s390                                defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sh                  sh7785lcr_32bit_defconfig
sh                         ap325rxa_defconfig
nios2                         10m50_defconfig
sh                          sdk7780_defconfig
m68k                         apollo_defconfig
arm                            hisi_defconfig
sh                          rsk7201_defconfig
nios2                         3c120_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
xtensa                              defconfig
powerpc                     tqm8555_defconfig
arc                      axs103_smp_defconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm64                               defconfig
ia64                             allyesconfig
arm                              allmodconfig
m68k                                defconfig
ia64                                defconfig
mips                             allmodconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sparc                       sparc32_defconfig
mips                         bigsur_defconfig

clang tested configs:
hexagon              randconfig-r041-20220923
hexagon              randconfig-r045-20220923
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-k001
powerpc                 mpc836x_mds_defconfig
mips                     cu1830-neo_defconfig
x86_64                        randconfig-c007
arm                  randconfig-c002-20220923
i386                          randconfig-c001
s390                 randconfig-c005-20220923
riscv                randconfig-c006-20220923
mips                 randconfig-c004-20220923
powerpc              randconfig-c003-20220923
arm                           sama7_defconfig
powerpc                    gamecube_defconfig
arm                         s3c2410_defconfig
mips                          rm200_defconfig
arm                          sp7021_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
