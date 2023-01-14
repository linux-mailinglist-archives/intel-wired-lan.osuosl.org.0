Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A45D166A9FF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 08:53:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C82A607F1;
	Sat, 14 Jan 2023 07:53:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C82A607F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673682827;
	bh=zYRTeGQVhUKBiDaueZPLpyCeg7Cadga2PYszQkkhTes=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=o82nBYA6DgDDt0DbyOQXh/ul9QHHSauqSZIArG4Y+3xKYk8CUQ9APBWOzsrOmUREz
	 plY05woP2oISgIuwpiFhNkyXSPn44F5SoVcwgUWEHojYq1wCpPdpPLK52Pk6kEeecn
	 TWhnDUNgQzxPDFDrUOnbTbsWeSv7XK67trFm+sZjSCXA3vrzIqP1gi7mnuAVtiUyn+
	 clnKqCs6s+/ZRY7FscX0Qu4o/rUk/xXu8ylV1TIIWlhSfG+gAVUUNIZJ/xag1JAqPD
	 sQnVVSeiWMqk+//6cMoGIPR1xR8AyueahAeD7D9NH84uxlE2U4wQOwNTL7zN9hsBjI
	 xa+O+xZ2UsC6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sBjIPNaGSn3Y; Sat, 14 Jan 2023 07:53:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A69F5607C1;
	Sat, 14 Jan 2023 07:53:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A69F5607C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E8031BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 07:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0275607C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 07:53:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0275607C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4qnuNgLeJC7i for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jan 2023 07:53:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFF7A605A9
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CFF7A605A9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 07:53:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="307726083"
X-IronPort-AV: E=Sophos;i="5.97,216,1669104000"; d="scan'208";a="307726083"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 23:53:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="651766236"
X-IronPort-AV: E=Sophos;i="5.97,216,1669104000"; d="scan'208";a="651766236"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 13 Jan 2023 23:53:38 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pGbM4-000Btu-11;
 Sat, 14 Jan 2023 07:53:32 +0000
Date: Sat, 14 Jan 2023 15:53:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63c25f5e.UWBrog6g2AXq2akQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673682820; x=1705218820;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=PyBhz/ZH8oG+SdpbVXttXIPxfE6mvZcUh2OoFmTZgXM=;
 b=KUEIRbJnTZHNrSh/llEcgpNo6sj2KUejN2nTjwSfSlWVlONY7OjVP7YF
 cpNn+Ezj9VwPD3BU6vb/Hw0MDRmOFWcCLq2Ju2f9ZB6mLQX+1AFqF8Ien
 fkUijQLsbCeAj0EEtm6xdrS+UGji9lN+GI1ivGdpVsvBUF2vdYHA7Hs/5
 Rb1BPvUR/Am7ijChLgXCjAGrtzverIS9KJcwKmCcmYf/otsuNHgxAG91H
 XjRwluoibVaPocbEON3FdL/nWSENBd+ohpbevI3gEraJcdWOUV5lXFF/6
 CRUFYDILluMe86dFyqV74IeqvHhjt0DW9RlOAsumBEZDDjAfp0BWxHnop
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KUEIRbJn
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 af3c75e77e4f76fb9da5568ea721c3de7792d703
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: af3c75e77e4f76fb9da5568ea721c3de7792d703  ice: use GNSS subsystem instead of TTY

elapsed time: 722m

configs tested: 80
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
x86_64                            allnoconfig
s390                                defconfig
s390                             allmodconfig
arm                  randconfig-r046-20230113
arc                  randconfig-r043-20230112
arc                  randconfig-r043-20230113
s390                 randconfig-r044-20230112
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                              defconfig
i386                                defconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a006
s390                             allyesconfig
riscv                randconfig-r042-20230112
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
i386                          randconfig-a001
x86_64                           rhel-8.3-kvm
i386                          randconfig-a003
x86_64                           rhel-8.3-bpf
i386                          randconfig-a005
x86_64                        randconfig-a013
ia64                             allmodconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
m68k                       m5249evb_defconfig
mips                  decstation_64_defconfig
arc                      axs103_smp_defconfig
mips                       bmips_be_defconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
arm                           corgi_defconfig
mips                           xway_defconfig
mips                        vocore2_defconfig

clang tested configs:
hexagon              randconfig-r041-20230113
arm                  randconfig-r046-20230112
hexagon              randconfig-r041-20230112
hexagon              randconfig-r045-20230113
hexagon              randconfig-r045-20230112
riscv                randconfig-r042-20230113
x86_64                        randconfig-a001
s390                 randconfig-r044-20230113
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a014
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-k001
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
