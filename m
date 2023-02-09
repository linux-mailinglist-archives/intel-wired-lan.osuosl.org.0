Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7871A690223
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 09:27:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBD2F6118D;
	Thu,  9 Feb 2023 08:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBD2F6118D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675931261;
	bh=6vIQ/H6nc6Ar4AOYMAFMpk/QDH0enWMXzWXeeGTsz3c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AYKHAUDXZIkrbHK+P2wQmkCNrE/W33q7vOvVuB0FrB24R42+BNYJs6n2KFtg45X1J
	 bXeqsHZF10kQohRnQ1t11D8lM2EutItDgXBqVBniXoZmYWM0AJbcxiMCLEig0GMGB0
	 1a16INmrPoXKTHFpGKxOYA3LOcem3ZsDUWYTUg/VdxL+tVaT/jfkh+WSHIcsRGcjLv
	 k8JDcCJXvfyaQTcfdqLJ6SwkD34o5JacBvMXFkSLIxkrlzDOTJCzyS9s+vBisDKDG9
	 SPR4fSeqimDFJFTbSwuisNo+6tvU5amWyeGJWy9gtSppzla/L+QhqONSotKQU95Z5m
	 jKQkhCd23Gk5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o0flMq19kKCj; Thu,  9 Feb 2023 08:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F19A960C2E;
	Thu,  9 Feb 2023 08:27:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F19A960C2E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 695B41BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 08:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 418B961183
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 08:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 418B961183
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9zDlYzAvxEw9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Feb 2023 08:27:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2748C61122
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2748C61122
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 08:27:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="330074127"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="330074127"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 00:27:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="841507238"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="841507238"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 09 Feb 2023 00:27:32 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQ2HD-0004wE-1y;
 Thu, 09 Feb 2023 08:27:31 +0000
Date: Thu, 09 Feb 2023 16:26:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e4ae52.tdBzI8VOacc+83C5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675931254; x=1707467254;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sEvgK1aoiN9HQFpB2ecc5HYoCNFIfRyuZ3fiLoCe768=;
 b=d7xllrYLRWfUXWmhQaugJDx/2xDM7n1/wunVhtWIPy0T/rRQbDse3hJw
 dy4zdHxN12zbd0k0LzrLR3nSYCfZT9rD9i2xHsUYoj/8f/wdvmg/9IjWo
 7eqbGfNOH80xBcaRk40pd1LEDeZ2y8vupODTGRoG639OXfIz36gU7E/Ld
 wBfWZCvw8cTTaQDJU+HKhB4hO6Kbxuf6q4kZRuv23jhw8yw2XS9cTAc/d
 GV2dwXjnDEQ7L+jMx9NdJCsuhCtrMxTaEFo9qj91i9g0jfdGbaLNydmBt
 pJQzuDxvgSnVHBRFNSStKac4n/1rAnrIs1LWOTB1pitCpLXTd3cyziOuW
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d7xllrYL
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 2bce2cf2c1d34e71d1c1513545b7c575458dbb3b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 2bce2cf2c1d34e71d1c1513545b7c575458dbb3b  net/i40e: Replace 0-length array with flexible array

elapsed time: 725m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
arc                  randconfig-r043-20230209
arm                  randconfig-r046-20230209
s390                             allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arm                                 defconfig
ia64                             allmodconfig
x86_64                               rhel-8.3
i386                          randconfig-a014
i386                          randconfig-a012
x86_64                           rhel-8.3-bpf
i386                          randconfig-a016
x86_64                           rhel-8.3-syz
sh                               allmodconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           allyesconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
mips                             allyesconfig
powerpc                          allmodconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                        randconfig-a006

clang tested configs:
hexagon              randconfig-r041-20230209
hexagon              randconfig-r045-20230209
riscv                randconfig-r042-20230209
s390                 randconfig-r044-20230209
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                          rhel-8.3-rust
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
