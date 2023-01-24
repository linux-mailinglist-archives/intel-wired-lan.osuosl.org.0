Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D4167986D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 13:48:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90C236108B;
	Tue, 24 Jan 2023 12:48:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90C236108B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674564486;
	bh=Lh7flhAWPSit72myygXZDm6XAHrZqa4396D4/lkpRFg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Cl/ZxWjpeKwCFZ/e6FMqLyvJi2yMrA30ENBmZJ04Au8phft+F6Vslhd6MXT3c8PbQ
	 1aYGEOgrnNrc0SdkbtpHml83iPvjMa7pEwrt7dN1N1zqPpnAiHTuuT2c8YpTG0qvfg
	 i7xDZFOmOCM1dZYbaZlxBJ8IFVbbwvwi61DIe2SHryZ68Vscd0xne73RlRKFbOGxS+
	 J8c4ri4+DpHvipR9pKGJTcDW5b+4334PrM/IoL/e00m++lf86XnXQtuUVeWix14Xzu
	 qhux8gJ+fVljb4NyN8NQynlaHh7aKonzodrMrEIKrSzMo67e4CwrY48jyS1tdIVhxj
	 IJx9cdRx2PIug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P31pJmfzV3Ma; Tue, 24 Jan 2023 12:48:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C01361047;
	Tue, 24 Jan 2023 12:48:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C01361047
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C53C1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43D27418C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:48:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43D27418C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r_XIBSZ10qbI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 12:47:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA279418C2
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA279418C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:47:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412517040"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412517040"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 04:47:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="612035255"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="612035255"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 24 Jan 2023 04:47:56 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKIiR-0006TK-1b;
 Tue, 24 Jan 2023 12:47:55 +0000
Date: Tue, 24 Jan 2023 20:47:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63cfd358.Y3t0ZQyTdSIhh3ea%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674564478; x=1706100478;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=OZpKnht3jsRInnlvFgIBPpyr2Hec68JJI6h5eW01AUE=;
 b=EmOvi0iH9c4G+Nzp8WV7iWXMKXUdbbQHvdpQ0WMs+HFAbSuVmOSMBLwp
 NzosgmqUN+pbz5OmT95S4Pmwf+adkokIMbBTFsaiW7SsgrsoNd/4zeGZ+
 3fgOhCsdCUClue/FdwZvyONWE3tCafuEia0jDBPeSAsG1Jg99xN3ipO/6
 7vxwZTrUBGHWJJxXwPQ0SLkQcD0X3qA00I3WS8jlh061Nlwx65noNjXX4
 LY6k1K0cHVewlquRmL+zRkP5HfaAHM7sUiMFJ+KJUwbW33nNDyRannVBW
 bDiCP6xzaruom2/l4DrD/pUh3KwnE6OjF9r7A8fxR91+GHpdUi7FLC8XI
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EmOvi0iH
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 8a13b896a600d7820004c49d14114987c76649b7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 8a13b896a600d7820004c49d14114987c76649b7  ixgbe: Remove redundant pci_enable_pcie_error_reporting()

elapsed time: 734m

configs tested: 77
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
alpha                            allyesconfig
x86_64                            allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
powerpc                           allnoconfig
ia64                             allmodconfig
i386                 randconfig-a003-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a001-20230123
i386                 randconfig-a005-20230123
i386                 randconfig-a006-20230123
x86_64                              defconfig
arc                  randconfig-r043-20230123
arm                  randconfig-r046-20230123
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64               randconfig-a002-20230123
x86_64               randconfig-a001-20230123
x86_64               randconfig-a004-20230123
arm                                 defconfig
x86_64               randconfig-a003-20230123
x86_64               randconfig-a005-20230123
arc                                 defconfig
x86_64               randconfig-a006-20230123
sh                               allmodconfig
i386                                defconfig
x86_64                           rhel-8.3-syz
alpha                               defconfig
x86_64                         rhel-8.3-kunit
arm                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
s390                             allmodconfig
arm64                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
s390                                defconfig
s390                             allyesconfig
i386                 randconfig-a004-20230123
sh                   sh7724_generic_defconfig
powerpc                     rainier_defconfig
arm                         vf610m4_defconfig
mips                          rb532_defconfig
um                                  defconfig
sh                             espt_defconfig
sh                          rsk7201_defconfig
m68k                        m5407c3_defconfig
arm                            lart_defconfig
arm                             rpc_defconfig
s390                          debug_defconfig
arc                    vdk_hs38_smp_defconfig
openrisc                       virt_defconfig
i386                 randconfig-c001-20230123

clang tested configs:
hexagon              randconfig-r045-20230123
hexagon              randconfig-r041-20230123
s390                 randconfig-r044-20230123
riscv                randconfig-r042-20230123
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a014-20230123
i386                 randconfig-a012-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a015-20230123
i386                 randconfig-a015-20230123
i386                 randconfig-a016-20230123
x86_64                          rhel-8.3-rust
x86_64               randconfig-k001-20230123

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
