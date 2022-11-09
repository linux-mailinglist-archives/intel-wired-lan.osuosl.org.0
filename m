Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ADD6224F3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 08:54:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2318B41762;
	Wed,  9 Nov 2022 07:54:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2318B41762
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667980484;
	bh=SvUZyJetj2Jr56TJraEtrxRzUhBsgF8fOGHSauPAW00=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6BBIJWBnMfMblqjaKiSYw+voiG2hCH7CnTht0CH7PDIsxAcHo/Pfynh6tJTmQJejJ
	 Dc6z150pEpKFw7BpggVA+WZddQIzE4iSzdFS2JuPG+MCjvwpwFpY2Oi0SNnHpliPQb
	 afWYzI7F2JL9+ez0LgfJ1oQW6uUoxCGG5Aglm34BPuuVKtllS46GQjKW4rt+On7J9f
	 xRuQThIQoGyqvS1JRXqAnKBH7kOJC1SaMPUk9Qr0TW0NM95hXaKlDKmyM8r74wnsbc
	 +hGzqg+/XVsEzuzOkgwOHH7REVno0AvaYZcMMpZlxOZsJcDwuV2P2MMetGFd2iOm2t
	 HOkWHaD3wwS4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tcbh8tqbRf2r; Wed,  9 Nov 2022 07:54:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC95A416CD;
	Wed,  9 Nov 2022 07:54:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC95A416CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E7F21BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 07:54:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 761FA416CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 07:54:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 761FA416CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r9u8AeQZHkZ0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 07:54:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A707416CA
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A707416CA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 07:54:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="308535313"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="308535313"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 23:54:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="761794455"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="761794455"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 08 Nov 2022 23:54:24 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1osfui-0001F6-10;
 Wed, 09 Nov 2022 07:54:24 +0000
Date: Wed, 09 Nov 2022 15:54:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636b5c9c.gXCHC1vZQYbZGFAT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667980472; x=1699516472;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Q3x59Kuvj8g+1l7IosqePXaAJtdl7KGZ3YSvgjBIQVs=;
 b=Gnz1PsD6xJ9rB7CjmcKFv6rf/mgyekP81kh/4WeakGrK157oE2UPWBf7
 RBIZxIEs2krtC1b0gvbO5wewtCF9IgvNfVzz5CPHtZU57g47uxhYBfqUn
 UKIRqFBOM5tevdWQ/Rml2KhVIqoyrqvHoSL6p3vLZBSspbrB7T2rjNLje
 bH8HrY/s9dVXdIhgCdoPNH500ytBo2uwZGoSrViS0NUEwpgmSLP64Pp3T
 IQeeCgvmaQheXVicCsufa23z1dhOpgaQ+2v7L3L23DCazlrse/gMQ26+d
 zgxrQaQWb/37sgKsfzyRT1+VbtYQaDAd5q0lXQhA26T72ZuZh74oWl7TW
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gnz1PsD6
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 30fad01aac8c17483f8203b4ea0f0aebb75d8918
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
branch HEAD: 30fad01aac8c17483f8203b4ea0f0aebb75d8918  ice: fix handling of burst Tx timestamps

elapsed time: 723m

configs tested: 85
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                          randconfig-a001
um                             i386_defconfig
i386                          randconfig-a003
um                           x86_64_defconfig
i386                          randconfig-a005
arc                                 defconfig
ia64                             allmodconfig
alpha                               defconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
s390                                defconfig
x86_64                          rhel-8.3-func
s390                             allmodconfig
x86_64                    rhel-8.3-kselftests
arc                  randconfig-r043-20221108
s390                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a015
s390                 randconfig-r044-20221108
x86_64                        randconfig-a013
x86_64                        randconfig-a011
riscv                randconfig-r042-20221108
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
m68k                             allmodconfig
alpha                            allyesconfig
i386                                defconfig
arc                              allyesconfig
m68k                             allyesconfig
i386                             allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                            allnoconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
sparc                       sparc32_defconfig
csky                             alldefconfig
sh                           se7712_defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
powerpc                        warp_defconfig
m68k                        m5272c3_defconfig
sh                           se7722_defconfig
mips                            ar7_defconfig
parisc                generic-64bit_defconfig
arc                              alldefconfig
sh                           se7751_defconfig
powerpc                 linkstation_defconfig
arm                             ezx_defconfig
mips                        bcm47xx_defconfig
riscv                               defconfig
openrisc                 simple_smp_defconfig
arm                        clps711x_defconfig
arm                      footbridge_defconfig
m68k                       m5275evb_defconfig
nios2                            alldefconfig
powerpc                    klondike_defconfig
arm                        trizeps4_defconfig
arm                           sunxi_defconfig
sh                  sh7785lcr_32bit_defconfig
arc                        vdk_hs38_defconfig
sh                          rsk7269_defconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20221108
hexagon              randconfig-r045-20221108
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
mips                          ath25_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
