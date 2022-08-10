Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A48C358E6BA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 07:26:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 706D461011;
	Wed, 10 Aug 2022 05:26:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 706D461011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660109180;
	bh=RKHC3D52Oba5algIMZw5GrJpiGVUz3y7iSM2rpvRchs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=F/NcdgyEtlmvq+YjBfAhJcPuQ2Xghuy4GhW9epGcgs/aADuotg3NM1z/6IZScktYE
	 xrTbGoEuDfGyozyw0vgcGn6sy0mZmzrooOrojbx2RJo81cqzpPEB2BHztFpIp4kftk
	 11eWwqbkyMNvRHMX0f7C2fRPNRpTgpscKN6UPh2zefTfQ1B4ZHTsSt3WTYL2OBpw5j
	 TqT/UmnFDUOT2fliTMp4wPG468aM3YpZRSZ71f83Dr+uOskkAKmLgS0KfZKfNdaChL
	 sK85v6RYi+1wN9Ubp2W/4yBTp4EO7kK2COAlG9enkR7+MzpjQzdUwWEbeJBS1Z11nh
	 6mfkL9eXrYnhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VHQoXniwVC_q; Wed, 10 Aug 2022 05:26:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 780E461006;
	Wed, 10 Aug 2022 05:26:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 780E461006
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14BB51BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 05:26:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF56840B59
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 05:26:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF56840B59
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g4pFb6aASSL0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 05:26:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F289940347
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F289940347
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 05:26:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="316945011"
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="316945011"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 22:26:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="555606460"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 09 Aug 2022 22:26:11 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oLeEM-000NYo-2P;
 Wed, 10 Aug 2022 05:26:10 +0000
Date: Wed, 10 Aug 2022 13:25:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62f34165.D4+GlV4vZbY1bsj8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660109172; x=1691645172;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=VONEy6Ww3aOnjxfonLaz+lVIplwbZ5gVlxfFMAe2rNc=;
 b=e6p+bIYFaKzeVW+bSViraBIOL29WE6D9X2jokoa21HH35V501wTxdbgJ
 7NzanGS/aEOiZxQHcy+klfNtD9gXMOCPQTUW8+QPxURKs3m7pDMQmihGb
 2dUHjyc3P2QmEop+1N3jvsBm4k0o86ZVNdLpvnE1vaIZGl2GCGLBxntWd
 5pMQA4iQxGiEFoe+u8BwE/HgXux2fV97DlT2tuCBBdDfPXj0QGuFbXOpZ
 oCRUz+MleMrGpo646A8gHtsprpWK6yAJazMwl4CnfmTjvIwyj2iZnnxMs
 YdtcPIEuA/NUWA/osTuloWdcx3c2yHK74ND+gKEw4L68Iu0wuQsN+ONJH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e6p+bIYF
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f8dd3cf101f2f75ce7ce24d2970ce509d530b078
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
branch HEAD: f8dd3cf101f2f75ce7ce24d2970ce509d530b078  ice: config netdev tc before setting queues number

elapsed time: 718m

configs tested: 69
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arm                                 defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arc                              allyesconfig
x86_64                         rhel-8.3-kunit
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a006
m68k                             allmodconfig
arm                              allyesconfig
i386                                defconfig
arm64                            allyesconfig
riscv                randconfig-r042-20220810
arc                  randconfig-r043-20220810
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                 randconfig-r044-20220810
i386                             allyesconfig
sh                               allmodconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                              defconfig
powerpc                           allnoconfig
x86_64                               rhel-8.3
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                           allyesconfig
loongarch                           defconfig
loongarch                         allnoconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                        m5407c3_defconfig
sh                ecovec24-romimage_defconfig
sh                          polaris_defconfig
arm                          badge4_defconfig
i386                          randconfig-c001

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r041-20220810
i386                          randconfig-a013
i386                          randconfig-a011
hexagon              randconfig-r045-20220810
i386                          randconfig-a015
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a016
i386                          randconfig-a006
x86_64                        randconfig-k001
arm                        mvebu_v5_defconfig
powerpc                      acadia_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                     tqm5200_defconfig
hexagon                          alldefconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
