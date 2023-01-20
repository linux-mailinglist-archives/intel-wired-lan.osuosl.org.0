Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE946754DE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jan 2023 13:46:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C29360D80;
	Fri, 20 Jan 2023 12:46:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C29360D80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674218773;
	bh=JeYBvTKZw1Wyds2oa6N44GFsO7LtmPU9MXgmfJuhdnQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kOKf6z9tYiqur+VfVlICRoLEx5fvCjNC4VsIuvunJ8TMIbiUKJoiimorWui6uA18J
	 G3uE4/HRvfpq7fM/aMhtnwQiLN5A+U8pjTypSTic/visa91rTxEgk01OJuOnAas8hV
	 AF/B15MmBnA755kwXcAnc4qvOzbHAxhAZ8151euOauPq2ZpqdOdQ0GGJmhgEuLQZ1t
	 r3P204+H24ynqJ7aoeTcbnmFQQta4h+7ggpzOWcTBfgugwLTOCq/T5/MjYpfTtBNvt
	 xt1/bRYSS7LJRZDPTA5uDdOhxVMBenz949NLM3Jqbf4wPyxhQENkpleTTE0mD9u42e
	 dnHjSDOIXwzhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IIHP9DiamoLs; Fri, 20 Jan 2023 12:46:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1230360EAA;
	Fri, 20 Jan 2023 12:46:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1230360EAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A60DD1BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 12:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76EAF60DFC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 12:46:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76EAF60DFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yHDKD29q8KYl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 12:46:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A37560D80
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A37560D80
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 12:46:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="411803214"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="411803214"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 04:46:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="653781376"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="653781376"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 20 Jan 2023 04:46:01 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIqmN-0002Yi-38;
 Fri, 20 Jan 2023 12:45:59 +0000
Date: Fri, 20 Jan 2023 20:45:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ca8cdc.OcehEXGHiuCxWXhP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674218762; x=1705754762;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xRiAwG2PVGoz/V0LvydV8GG6pIdMkd8PgY9DmEi3UdI=;
 b=dnMDWeUjKG2gJ+ldoOgSYffG5v4CUbIwFBW1R3SwCUDxZHfEBAcpf1+u
 41uqEwcHLK0h0zqgzIJUnGM06XdO04CgnVnH6v37QkswrRhSw/JhthXk2
 JvOY8PlJ3PKhss5AYlcf2xfwW+lQVYlR3ZxQXCb50C/GraKrFNY6EApO4
 FH8CgnKGHko+FljI0zXJX2wxtuqbjSoBd8wn1HyhTYQGrV6HPGuLuOQ2i
 LIR30W4nH0W3hGqJ8w02CF2Wex/msIhcnlbMeN8gg18KakjRpFfldFh3d
 Yu5R92sdbXZQx7LixL/2a8YKSfj6MUuZnEUwMmChvRGkm1QW3UyQImg4w
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dnMDWeUj
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 d52a6180c7466a3520ee42ae56315ee12a097e87
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
branch HEAD: d52a6180c7466a3520ee42ae56315ee12a097e87  ice: Remove excess space

elapsed time: 850m

configs tested: 30
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
s390                             allmodconfig
alpha                               defconfig
arc                                 defconfig
s390                                defconfig
s390                             allyesconfig
arm                                 defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
arm64                            allyesconfig
x86_64                              defconfig
arm                              allyesconfig
i386                                defconfig
x86_64                               rhel-8.3
i386                             allyesconfig
x86_64                           allyesconfig
powerpc                          allmodconfig
m68k                             allmodconfig
mips                             allyesconfig
arc                              allyesconfig
powerpc                           allnoconfig
alpha                            allyesconfig
sh                               allmodconfig
m68k                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
