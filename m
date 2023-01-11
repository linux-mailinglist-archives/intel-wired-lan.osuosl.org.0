Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C25665910
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 11:33:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9113419BC;
	Wed, 11 Jan 2023 10:32:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9113419BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673433178;
	bh=5GuI3fzWeDNglwRVb1j0lDmgLyy+04mTyba7azfGylA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=d20m2Ti01zSFOyynMMKYBH/KuQx5AQ8K3Fonirp2g4weHv827aGfyHJsD7g87374a
	 Skf+5BSgad5/BSTk8relqJmBzFnA86TSvzhYLrNokgEE3YaGVUVJtMcyXGrXidSyjk
	 RuuVEyy1AzDuw3QEm8ToE0lFXKqknGI0T3Tupnl1tdNdU33OSpZcs14iHNDMqAZa5f
	 wM2+qedeZu2HFKY2abHtZsjJWu8ZC5uSsPLK+y6eL9WtL/zSAeG7X6Y1MJiOM1KKZH
	 hjFGEaLuihdFRk0yonzdR2n3ZIuuR59p9lnM5RvQLivT1k8AhxnCDbCjk7owCM1Jh5
	 ehfzV8dyMEnFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YxcatEazyQ3l; Wed, 11 Jan 2023 10:32:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CA09419B1;
	Wed, 11 Jan 2023 10:32:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CA09419B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BA941BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 10:32:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02DA0403FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 10:32:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02DA0403FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U7IkMlvaeckA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 10:32:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF99740135
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF99740135
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 10:32:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="350610263"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="350610263"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 02:32:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="687889031"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="687889031"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 11 Jan 2023 02:32:48 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFYPW-00090l-06;
 Wed, 11 Jan 2023 10:32:47 +0000
Date: Wed, 11 Jan 2023 18:32:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63be903c.tClbDaAXFwzQyiSj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673433170; x=1704969170;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=udBMd1E9HXbvIwT8ktPGiXhDtEepH32pQ/dYYuALUgU=;
 b=f1hQgfzGG7IhB0/o2mWwD5d6lSEfeYEJiqwyDmaOnFbTUguYi/kLSSej
 nsfnm5fAIO3OwyZ0E04MkoqqqgzcEicJX3PyW2BE7zZrMSAV9CvHtuzBE
 rErxhTkgIBEFYQ7ESVCNLzZ73NnakDCPEbv3v9f0uX6zVYYo+REPxEr7S
 VVJeNdyeWbj/Hu6WQiUU294/uXUIJ5Bm1ENF47kpHphVukpBXz0oW3bQD
 FXybcgRJaEyGZDugqdG209oinHk2xwmz/FnMcxvvcOS3IVIb5hV6P25KJ
 VsHCK6fdU7b/dBIVgpLjZ7eEvnMEVK/ty0m2trei3PKuWY8+b7cgc8g5K
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f1hQgfzG
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 57ed1c186d98d4d9fb6725cbad69016e808aee2c
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
branch HEAD: 57ed1c186d98d4d9fb6725cbad69016e808aee2c  ice: fix out-of-bounds KASAN warning in virtchnl

elapsed time: 721m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
x86_64                            allnoconfig
alpha                            allyesconfig
m68k                             allmodconfig
powerpc                           allnoconfig
arc                              allyesconfig
arc                  randconfig-r043-20230110
powerpc                          allmodconfig
mips                             allyesconfig
s390                 randconfig-r044-20230110
x86_64                           rhel-8.3-bpf
sh                               allmodconfig
x86_64                           rhel-8.3-syz
ia64                             allmodconfig
m68k                             allyesconfig
x86_64                         rhel-8.3-kunit
riscv                randconfig-r042-20230110
x86_64                           rhel-8.3-kvm
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
i386                                defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                           allyesconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a006
arm                                 defconfig
i386                             allyesconfig
arm64                            allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
arm                              allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016

clang tested configs:
hexagon              randconfig-r041-20230110
arm                  randconfig-r046-20230110
hexagon              randconfig-r045-20230110
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
