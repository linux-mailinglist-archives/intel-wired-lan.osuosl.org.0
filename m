Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A6F55A77D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jun 2022 08:33:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 162C740A97;
	Sat, 25 Jun 2022 06:33:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 162C740A97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656138793;
	bh=LZ1iTewxXYlMnJVWpYx9RyDd72KBgNboOj+zDXPeRU8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n6ktugcHwWJufb/u/ndOby0nNeBgNKLG7uNlKmGLTGo/Zvs8eIGzRcpp/V+oQW51N
	 Y3hzUxpUpOODT79RbkY5/Z2rwtXD68c4B0RBM79bFFAMBmQeGFVJNdMlyo5oJ4MTaP
	 9kyyzUVcZDJcPvyOmrylcolwJwJ+NFx+wP+zsxzqZ/EBaTi77FnKkCg6Mvmof5p+5G
	 BqJ/lUHsob3RVU9RXzA5Qzcpg1UUPYD8aEraqCiEpGPPHaVkVe1qTUFZJR63clbVq6
	 FhlmLIbDthqFSLRkTtaMn3L28Ze7sr838jv/i+a996GWIohk3EnnVaZNj9mmC6t36r
	 SyplbKqfMb1eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ki5zC5QgXVs; Sat, 25 Jun 2022 06:33:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6B7240A91;
	Sat, 25 Jun 2022 06:33:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6B7240A91
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 17F171BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 06:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE4E241964
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 06:33:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE4E241964
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wuXBTSW7l5YP for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jun 2022 06:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C919D41841
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C919D41841
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jun 2022 06:33:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="261573897"
X-IronPort-AV: E=Sophos;i="5.92,221,1650956400"; d="scan'208";a="261573897"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 23:32:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,221,1650956400"; d="scan'208";a="645600027"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jun 2022 23:32:56 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o4zLj-0005TL-HY;
 Sat, 25 Jun 2022 06:32:55 +0000
Date: Sat, 25 Jun 2022 14:32:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62b6abee.1xLQxMv8DZhyzWrC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656138785; x=1687674785;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=WuSWaaOv7eFtdTSOs5MmOP3VBZiu16qw0q8wvFHDWCM=;
 b=K2s2YiijcEVDcjqJE9s9kd+aqqFoeVBsEzakcfPAUWIw14WZPVNspBhK
 ZYCprta1j6ZK7BY5JJUcKcR93Neojk8dJXc9fGBchflnEnhOCWKusF7G2
 4Ahot8XwYqk0zcUMHu20/UNWAfYnq65Mo/bDu+3OtWRqVBN8iS1anAQo2
 YXw7hAYdAUzpN+uPRi2auiojHT7znf8O+a6yaW3RNVKeWv9CjWLgB+OrN
 G/rfXi1uDisa/0hkapE8YhNhWn45VkOsrG09l9Ocqi7qtOBJ8sJpVoJAc
 xHR0vOio8mEew113e+wREC4vTP7JhAc85obQcrZRipZBmzDvAoAJbL1GE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K2s2Yiij
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 faaeb7eb8ecab7ff6d37d21d7970db075c63fb69
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
branch HEAD: faaeb7eb8ecab7ff6d37d21d7970db075c63fb69  ice: add write functionality for GNSS TTY

elapsed time: 727m

configs tested: 51
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
m68k                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220624
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220624
hexagon              randconfig-r045-20220624
s390                 randconfig-r044-20220624
riscv                randconfig-r042-20220624

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
