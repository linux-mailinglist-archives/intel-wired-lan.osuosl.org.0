Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7BD6672A7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 13:55:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C87E41607;
	Thu, 12 Jan 2023 12:55:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C87E41607
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673528100;
	bh=NiAdNIl8z9G78TXi8+qC5OasGROVDJHu2yrd05bkqv4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DMCo/Ufbs/D2EyCLAEM1xLdQr0X+I/KYQY7kmsLsSlll+vVcd2TzaJBeOFOTJzBJx
	 7/11Nx5rpq4ZHu4c+xlqhIo3bv7VeORxwMTA+HSdR/2NgPr5ReCSN442aKtoBgrowB
	 06VMynK6WNWIB/FNhXNLK23fl8YQyT3CjYssNeoHp9SSmZz5BSYd0m7bnl5eFGqXZA
	 fSiz0EJftkWWOQ08uQiicyOHSrPthYV8Rsf+bzwS6kqxu6fXqGSVxj0VkvTSEyAxqy
	 fjyDNkHYFJCLE9tUAMmZub4tgtDdGW3HDsijAWEpQTB+R/UukLAi2X2n5iNEwpci4n
	 jdmFWhtCyVhTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ePby09hv2Fls; Thu, 12 Jan 2023 12:54:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D343415E2;
	Thu, 12 Jan 2023 12:54:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D343415E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A71D1BF385
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 12:54:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19FFD40545
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 12:54:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19FFD40545
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Snd1YnLeybh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 12:54:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FEAE404B4
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FEAE404B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 12:54:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10587"; a="304073163"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="304073163"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 04:54:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10587"; a="765606693"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="765606693"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jan 2023 04:54:49 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFx6W-000A8B-3D;
 Thu, 12 Jan 2023 12:54:48 +0000
Date: Thu, 12 Jan 2023 20:54:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63c002fb.u7V8/NPh7sC7yUYQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673528091; x=1705064091;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=UX3iGlDoxVg2JIe6TPbjGqZNIDLdjsfaUV5vrQCeyI4=;
 b=kZpfOtBzqEDf+SgoolIbgPWEdbjWsyePFihkp1AZ3A/SF4rNqUe8XbnN
 ppvf6vFeKVEtcCc5hFkPk9+r8asUa71N/1di2MXi+5fx6AovjmmgCyaWy
 QyYYDL3gXk2Gv2AvX1+YtE64nEDE4ZUFs7MWr2+GKYAYcEa39ah/BvImc
 TG1/vw7AdSOZz1RpxyQfturtvLZh19Q/fUmQCg/PQg2ya2DTT24WQhgFW
 PG8Lpk4AjsTxpcco7q0tLBwrY7RdztAZcELspY3g2lGPnsG48x6ZcCJ9r
 MExp7UkWwuTWbI7Acu/L2mdMkxotSmZhLT+ihFkLjh1DPSLtznHtVsPxJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kZpfOtBz
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 00942706d9aade13e707007ea68e6b2b908d4d40
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
branch HEAD: 00942706d9aade13e707007ea68e6b2b908d4d40  ice: use GNSS subsystem instead of TTY

elapsed time: 726m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
x86_64                            allnoconfig
s390                             allmodconfig
alpha                               defconfig
powerpc                           allnoconfig
s390                                defconfig
alpha                            allyesconfig
arc                              allyesconfig
s390                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                              defconfig
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a004
x86_64                               rhel-8.3
x86_64                        randconfig-a013
x86_64                        randconfig-a002
x86_64                           rhel-8.3-syz
sh                               allmodconfig
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a005
x86_64                         rhel-8.3-kunit
arm                                 defconfig
i386                          randconfig-a012
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a015
x86_64                           rhel-8.3-bpf
x86_64                        randconfig-a006
i386                          randconfig-a016
x86_64                           allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
ia64                             allmodconfig
arm64                            allyesconfig
arm                              allyesconfig
mips                             allyesconfig
arc                  randconfig-r043-20230110
s390                 randconfig-r044-20230110
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
riscv                randconfig-r042-20230110
i386                             allyesconfig
powerpc                          allmodconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a013
x86_64                        randconfig-a012
i386                          randconfig-a011
x86_64                        randconfig-a001
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a015
x86_64                        randconfig-a003
i386                          randconfig-a006
x86_64                        randconfig-a005
hexagon              randconfig-r041-20230110
arm                  randconfig-r046-20230110
x86_64                          rhel-8.3-rust
hexagon              randconfig-r045-20230110

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
