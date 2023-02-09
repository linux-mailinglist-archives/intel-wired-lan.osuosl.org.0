Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE65F690018
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 06:58:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F7D14058E;
	Thu,  9 Feb 2023 05:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F7D14058E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675922314;
	bh=KGk18gapZFlxErbrwZpY7TkPkZoLPpkoq64HhX+EmSU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bLrps9uYDEHQ3XwAnTUaysK0FUAT+431Y6X2rw3bP/cnpEA5RI8EJVMHHo6Y7vYcC
	 zCQVaKIxDcEljBVKj7SUnxyx7Gs+sJXgoB9yjRFA9KYxFhiyctQkJF/QnrfdaZW2Nj
	 VRh533wkOwzLAyMjLpLEqb9ds92q/iszF64hjW/MAo1ilfJAGn7eb47o4f8t9y5Uof
	 VgIR1E9NhIb0NUQUq/QqzpeTfSLEEsYOKx0S+u7Yt8HcM46GK5vswylWr7fHkDspSO
	 zzLdcnxVD+3dh30hRcMZRdZqneSKqRn9L5O1mnuKZ6sR/gQLvoD98ZcTwmHkA1nJWs
	 vgM8P2oA+Jw/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CNyxKdxFN5_Q; Thu,  9 Feb 2023 05:58:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F6C8404D1;
	Thu,  9 Feb 2023 05:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F6C8404D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A06901BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 05:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A5B740336
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 05:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A5B740336
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hUtNn5QsLJn8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Feb 2023 05:58:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5F8B4031E
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5F8B4031E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 05:58:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="332145350"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="332145350"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 21:58:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="841472160"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="841472160"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 08 Feb 2023 21:58:25 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPzwu-0004rk-1c;
 Thu, 09 Feb 2023 05:58:24 +0000
Date: Thu, 09 Feb 2023 13:57:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e48b64.hTSQRzqtbRbjO69j%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675922306; x=1707458306;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=7fsiPBaJHmeVKeKwXWqJKsXmIXlxAlDuqk7UmZ7bDMo=;
 b=Svo2CCxxMo6f8o5XHixisgxnGrP2gU9VcJePM6/NPI5uzR2vngA5nhGF
 nZbhrYj4aNeNohaV54RYiRMkndjfR3/s9BQZ0zxlr2mC85pu7txD8zWlm
 DJ4l3I7uHBz2dKC71o2Xel4dMF/H0YHRk9xiZWlbceGRZ3cetqK8dsaVy
 3X3HysSCqxgFwiNuW2MgkXktmdWsU+feHzYwugLNKRMpNrfz0ZOMUNHxo
 ywsYjdjeu8hXYVCxGkiBr/xYvqPVPLpQU6o1kJb1+Wf+0lfHaFyLvSnMn
 EBpZCTn3Vq5D+k1rZfK3Mk5kbKykIemhJQRq/Q4ImzYoz0nj0tW3d1FUU
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Svo2CCxx
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 738c0972625e567f1cd7dbc8535361937da98521
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 738c0972625e567f1cd7dbc8535361937da98521  ice: use debugfs to output FW log data

elapsed time: 724m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                           rhel-8.3-bpf
x86_64                            allnoconfig
powerpc                           allnoconfig
i386                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
x86_64                              defconfig
alpha                               defconfig
s390                                defconfig
x86_64                               rhel-8.3
sh                               allmodconfig
ia64                             allmodconfig
mips                             allyesconfig
s390                             allyesconfig
powerpc                          allmodconfig
arm                                 defconfig
x86_64                           allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
alpha                            allyesconfig
x86_64                        randconfig-a015
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm64                            allyesconfig
arc                  randconfig-r043-20230209
arm                  randconfig-r046-20230209
arm                              allyesconfig
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a005
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20230209
hexagon              randconfig-r045-20230209
s390                 randconfig-r044-20230209
riscv                randconfig-r042-20230209
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
