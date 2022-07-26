Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E06AC580ABC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 07:19:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03DBA612B5;
	Tue, 26 Jul 2022 05:19:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03DBA612B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658812793;
	bh=twrY1kgTE393Jddi1OSiANQdoMota4Q7H4CICHov7Xc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=44T/KCBCygL+I0J+0wbvRrKNldHlbwtjGh1wyxTSMkdPSRT24oh4rmokbpYrvF9yS
	 D0KOZ/kKLedpA9YgWfqDWLpe9wUXcjh01qHbLOhhST0MaMCxMkmcZOdBIUQzkzU40n
	 q0Doser3/eT/Ln1ntnt94SMqEg6xfVN4dfv8QRMScH/cecKHjHa+84InwIS4hV/MSd
	 IghjftpvdlRC/y+Sria0E5xS+4O9+MHiE3t+rUBD7AhnD4Q/CvNfF7aBHm9hNmHG5u
	 jNpXQaq0/v62TosIZC+fB8/NxE3m96/dFMGiEACvLMLCeV3qbzVYfcD/zbYON3hWt8
	 S3B2vQ3CSUqTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4AQAQRsH1OyO; Tue, 26 Jul 2022 05:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0BED610C1;
	Tue, 26 Jul 2022 05:19:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0BED610C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 196B41BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 05:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4A77419EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 05:19:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4A77419EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xdsl_WT8mNyK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 05:19:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAC64418B2
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EAC64418B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 05:19:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="351856038"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="351856038"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 22:19:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="627749135"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 25 Jul 2022 22:19:42 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oGCyr-00065W-2S;
 Tue, 26 Jul 2022 05:19:41 +0000
Date: Tue, 26 Jul 2022 13:18:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62df7933.SklJG1XeIfMcMQ4P%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658812783; x=1690348783;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=utUjAoMRxJ0M2nWQJQAn16FQUV9NbSXSXmVBBfXMEb4=;
 b=nuAbTRCUlCvtiDwZUjj2wrZ7RvXbUrl5UtITmMV9fPKyRGdFyd4tvGeO
 w48mjRkmQOVOBt3nDYq+KRC8IhZMq4+3Dy0na1WVFYay64hP/Z61nyavT
 pVbnzCu2ttHYXJv1kThWNMjE53fDBG19I5UMWpW7OrdEB7qjlOD5sxA4b
 7Eb148lxbs2UKv11/p11HaqHPZopJt4g6xhLOdb8P85b2HANj6ugR+h78
 hFx2cnJH/FVBtOJib7+3dRy8cc5GTHESfMep9Whkht2Kw+YdgQT6JAIK9
 n7nysNFuDu7yw9v2CkdzYb7cR0WlbC3rNLPT7ky27JI9+Aryovdn1AHd6
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nuAbTRCU
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 7fe92ae7ad36e4f034c43acddac3bb43f3c11953
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 7fe92ae7ad36e4f034c43acddac3bb43f3c11953  iavf: enable tc filter configuration only if hw-tc-offload is on

elapsed time: 727m

configs tested: 50
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                             allnoconfig
csky                              allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220724
s390                 randconfig-r044-20220724
riscv                randconfig-r042-20220724
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz

clang tested configs:
powerpc                      walnut_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                          moxart_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220724
hexagon              randconfig-r045-20220724

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
