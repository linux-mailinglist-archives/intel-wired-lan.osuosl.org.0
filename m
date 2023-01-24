Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D31679823
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 13:33:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8712D61069;
	Tue, 24 Jan 2023 12:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8712D61069
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674563585;
	bh=FdT2PruuBy02kBurnDXuYqUDbrXYHaD7dgzBo3irFEk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=842kmerGzTQiRVrG0osKpB2LP8TSzcddradzipwtzesY5v/a82n6Oxyn5vXZo282X
	 rixY5hLF/aEQgC89swy2nvCfk64fePQ+I5dhUEFTk6Rzh+eXiL0OFRCmF0bWMrY++3
	 ak/VC9wNqwvNKdsl8CKUFL1YZjjmQb5RdWFTuOQVoH6YX4MG8foIlUkmrozuEePumu
	 cA8nFjIDAMeKz7oOevVlyi6cp2lO10GoOv37RyE87I2vKlI+4cPgWp25zgR3m1/3Fy
	 ind+2n/vukxw0SyozQxUlr4rc46TKvh3y5hA9VS17bz9X2pvWOv7YYjTaU6LTXAzeU
	 vpvb/Y5VC668g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6blNmQTdkqqH; Tue, 24 Jan 2023 12:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E71361048;
	Tue, 24 Jan 2023 12:33:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E71361048
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6AC631BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:32:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4435E40644
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:32:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4435E40644
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l34-GgSUQUom for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 12:32:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45E7540157
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 45E7540157
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:32:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="309857737"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="309857737"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 04:32:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="692584611"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="692584611"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 24 Jan 2023 04:32:56 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKITv-0006SY-0P;
 Tue, 24 Jan 2023 12:32:55 +0000
Date: Tue, 24 Jan 2023 20:32:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63cfcfe3.AnTtzn6QUFheKGb4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674563578; x=1706099578;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uAXz48X24VNBqd8cBmXZOi/pSDG5O+rDdD/6AKX4Zwc=;
 b=hPb6CgDH3unSyikTqmRGA+rrGAmuy9uol6RcAroq/vpvD1SnEccZ0x6x
 6+XdmQuMqI3zqmpV2V1LqnlD/nwixUOpmLhlKwgf3B7DPMZwggYeqhan6
 BDSWkTbkmKvlHuaf4YUUL1OtO9qZeVA6RzvocUUH6ZU6w5C4+J1gkXlu2
 Zem5lCzyzs01BlIJl/kwujw+0qAmFLk8ZRprw7h3hcakwwYqpTBqd9gFE
 QbC3cPhhZrDPlSK7Uvd6lTE9DrcJiXnOZj4wGsxR59QTe2TEj12sq542O
 CVtpOxuIklJ+BdUeP+R9lmxu3tqSssAfp8ktELJZNqVA/Ggrgu0R/c+C0
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hPb6CgDH
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f8a89392bfd62eb92a9843e04055f7b9ffaed1dd
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
branch HEAD: f8a89392bfd62eb92a9843e04055f7b9ffaed1dd  ice: Do not use WQ_MEM_RECLAIM flag for workqueue

elapsed time: 720m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
x86_64               randconfig-a002-20230123
s390                             allmodconfig
x86_64               randconfig-a001-20230123
sh                               allmodconfig
x86_64               randconfig-a006-20230123
alpha                               defconfig
i386                 randconfig-a004-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a002-20230123
s390                                defconfig
m68k                             allyesconfig
x86_64                              defconfig
m68k                             allmodconfig
arc                              allyesconfig
i386                 randconfig-a001-20230123
s390                             allyesconfig
x86_64                               rhel-8.3
mips                             allyesconfig
x86_64               randconfig-a004-20230123
powerpc                          allmodconfig
alpha                            allyesconfig
i386                 randconfig-a005-20230123
i386                 randconfig-a006-20230123
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
arm                                 defconfig
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a003-20230123
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a005-20230123
x86_64                           allyesconfig
x86_64                           rhel-8.3-bpf
ia64                             allmodconfig
arc                  randconfig-r043-20230123
arm                  randconfig-r046-20230123
i386                                defconfig
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
i386                 randconfig-a012-20230123
x86_64               randconfig-a012-20230123
hexagon              randconfig-r041-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
x86_64                          rhel-8.3-rust
x86_64               randconfig-a016-20230123
x86_64               randconfig-a015-20230123
x86_64               randconfig-a014-20230123
i386                 randconfig-a016-20230123
hexagon              randconfig-r045-20230123
s390                 randconfig-r044-20230123
i386                 randconfig-a015-20230123
riscv                randconfig-r042-20230123

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
