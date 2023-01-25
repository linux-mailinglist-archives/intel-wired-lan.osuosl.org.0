Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4C467AB76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 09:16:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36D676111F;
	Wed, 25 Jan 2023 08:15:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36D676111F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674634544;
	bh=4Mhhj1vbcRYmf6ek/5ElLQ3vFZIZpuN9zklMulb0tpw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YddfohIrNCXWu3xQZj/EG6RS6w4wjVna354lY1/M9lf1tPCAfuMwPA4vvhEBBBo1I
	 Y7QnfCVp4kDAA9qam81ywxT61bEWfBR2DmU73Fj4xhIZjcYQWc4JC3SgVkE1iVN25j
	 ktaMDmFDCxhMKLkqAtLMxkXDP4fvtxyJEBK7zBovU11HevlRuwWsBBjLPMwygrKhHq
	 U5LDKRHjxZ6hMcatvBwgzisEHTbsP6P+uBcPQhIqWFJGkfnqcmXyoLyXEUhV28L9+k
	 2+ouRqr8n04djY7EBIvc0d8sfLPOfnHLQrNu+hwFWoC/XFut9Egvi6ou3fXNl3VjDT
	 yjnDxtPqZG1Gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3U7myvCtNPpA; Wed, 25 Jan 2023 08:15:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C73361112;
	Wed, 25 Jan 2023 08:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C73361112
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CABED1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 08:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2484417C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 08:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2484417C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JYNlSayN1mCQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 08:15:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C10324173A
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C10324173A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 08:15:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="327759033"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="327759033"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 00:11:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="664375497"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="664375497"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jan 2023 00:09:55 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKaqr-0007AC-2B;
 Wed, 25 Jan 2023 08:09:49 +0000
Date: Wed, 25 Jan 2023 16:08:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d0e396.iHVuJmu/ahrjfCQ7%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674634528; x=1706170528;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Szdjxq8oYV5002M8t73VpiCNk2eA7+xHNfCtjqflcfg=;
 b=F4u8fy9rELVIzdB5jCzcumOisexP3JbeWgGbJrGUas4kErAdicpDsiNG
 vtgE36p7kDIDi6VtDs2bL5G/H0AC4VNTWSKOs8jJ6TU0Cf6foJ1YfWDk+
 xKcG68MoWtF+MP6+J8YD+gzX4AKnsZPwKmhhub1Xpk+eNT3crrJef6Uqt
 lclHetStxH/iaObv0GqMXyCLiHumvENKwGEe6+YHfBGOjtqB5Vbrc0NeN
 noHhDOtkwstOfE9jEWrVeGVaLa548E5RgLDFon4JgT2n8h+kzVflihAHq
 D0IPzyW9oFWZe+vQIU02CQ3U0cc7f7mZbVK+sI+qUd3TuXeyxMGlC4yV0
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F4u8fy9r
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 d968117a7e8e5572762eacbdbca13bc96710e9a3
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
branch HEAD: d968117a7e8e5572762eacbdbca13bc96710e9a3  Revert "Merge branch 'ethtool-mac-merge'"

elapsed time: 876m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                  randconfig-r043-20230123
arm                  randconfig-r046-20230123
x86_64               randconfig-a006-20230123
um                             i386_defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arc                                 defconfig
sh                               allmodconfig
alpha                               defconfig
x86_64                           rhel-8.3-syz
s390                             allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
mips                             allyesconfig
s390                                defconfig
i386                                defconfig
powerpc                          allmodconfig
s390                             allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
arm                                 defconfig
x86_64                           allyesconfig
m68k                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
x86_64                          rhel-8.3-func
ia64                             allmodconfig
i386                 randconfig-a004-20230123
i386                 randconfig-a006-20230123
i386                 randconfig-a005-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a001-20230123
x86_64               randconfig-a002-20230123
x86_64               randconfig-a005-20230123
x86_64               randconfig-a001-20230123
x86_64               randconfig-a003-20230123
x86_64               randconfig-a004-20230123
i386                          randconfig-c001
sh                           se7724_defconfig
sh                          kfr2r09_defconfig
x86_64                           rhel-8.3-bpf

clang tested configs:
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230123
s390                 randconfig-r044-20230123
riscv                randconfig-r042-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a016-20230123
i386                 randconfig-a012-20230123
i386                 randconfig-a015-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
x86_64               randconfig-k001-20230123
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a015-20230123
x86_64               randconfig-a014-20230123
x86_64                          rhel-8.3-rust
mips                   sb1250_swarm_defconfig
mips                     cu1000-neo_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
