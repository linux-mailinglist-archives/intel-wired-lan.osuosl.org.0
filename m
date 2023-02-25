Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0666A282D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Feb 2023 10:17:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1DFC40640;
	Sat, 25 Feb 2023 09:17:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1DFC40640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677316655;
	bh=hiwLaM3j2zDzbHjtpGMLsKPD43b9b1LbwwlZ8AzKcOA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4bzbVRK2UytE1VTVxu+WlxXXwB6MZA6WgqMEGiRAanbdTRyauRISvw5/cXbm2EVf/
	 +HoSe29DwimOKL9ojVr5UFGJyTnM1xshl8irZmJZXLTkmv6VwE/wdtAd2rfyuzi2vR
	 mPvWUKejwL5VJYHlVSoAnlpNMrlYLgV7S5dFoxvYpQ0hqLcxSfUh84JJfPxBgZ1Rna
	 rI0tXYnRcHFHVYWdnU4woznrZtNC5V7OFQncqL/xY+zPn8T7G/1dtySV7tGxKec1I5
	 idW3qkO8uRqk92fuiukzsExE5Ss/Ba3TMsFg26EouBcDRTXqashvbFp5SjC+JmspZ+
	 ZH3BZHt+7r1JA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fyFeWC7tyqSI; Sat, 25 Feb 2023 09:17:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E307E4056E;
	Sat, 25 Feb 2023 09:17:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E307E4056E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E87FB1BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 09:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0FA8410EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 09:17:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0FA8410EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zk8fDV1Zr725 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Feb 2023 09:17:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 893FD4109F
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 893FD4109F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Feb 2023 09:17:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="361159774"
X-IronPort-AV: E=Sophos;i="5.97,327,1669104000"; d="scan'208";a="361159774"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2023 01:17:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="673160302"
X-IronPort-AV: E=Sophos;i="5.97,327,1669104000"; d="scan'208";a="673160302"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 25 Feb 2023 01:17:25 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pVqgG-00035I-31;
 Sat, 25 Feb 2023 09:17:24 +0000
Date: Sat, 25 Feb 2023 17:16:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63f9d1fe.+N9Yo957McFzK3xi%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677316647; x=1708852647;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=abP4fG//nOBbIAfH3CSSXHIENLkCnyQRRIDkuJl+TYw=;
 b=CJJB4OnjiKyv0GcmgQmJ8SQsjGKmGNhq+jyxAPO7FVO6DIxkjIixGAI7
 RByXA0JvUaf1KYtIC7+Dy4l/q+1HFp9EGgXX0Y1d80le4+FbcmjFsxkh8
 jqMnc9tnuMRBjYOurtZ2ZLT3OkphwMy7KWSsFWbrOuq3b8AcBXjnHiYvS
 nmlL4HBDe5jUuzRXwsPFvkW0OY96MGy3lwYr6LxLu7N7GWb3jQ1ysAmqs
 4b8hc7Ol1R2ZuJAaCDkR1JrMQcDCYxlN9mkaD0mwaQwQaYQ7yQ3Bhj6uf
 92D+G4nBRsueiEbSl/bI89RoVhwSqV/CgmF9qR7o5kA+9iAeIHxCZRC9z
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CJJB4Onj
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 766d1bdceb3290f83ecadd949cc0cd3ef08f8146
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
branch HEAD: 766d1bdceb3290f83ecadd949cc0cd3ef08f8146  Merge branch 'tools-ynl-gen-fix-glitches-found-by-chuck'

elapsed time: 724m

configs tested: 19
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
clang                                   alpha   defconfig
gcc                                       arc   defconfig
gcc                                       arm   defconfig
gcc                                     arm64   defconfig
gcc                                      csky   defconfig
gcc                                      i386   defconfig
gcc                                      ia64   defconfig
gcc                                 loongarch   defconfig
gcc                                      m68k   defconfig
gcc                                     nios2   defconfig
gcc                                    parisc   defconfig
gcc                                  parisc64   defconfig
gcc                                     riscv   defconfig
gcc                                     riscv   rv32_defconfig
gcc                                      s390   defconfig
gcc                                     sparc   defconfig
gcc                                        um   i386_defconfig
gcc                                        um   x86_64_defconfig
gcc                                    x86_64   defconfig
gcc                                                  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
