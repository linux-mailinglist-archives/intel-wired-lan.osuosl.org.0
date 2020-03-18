Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC67189569
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2020 06:40:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D003860EA;
	Wed, 18 Mar 2020 05:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vu1FwgrgmqRZ; Wed, 18 Mar 2020 05:40:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D142860FF;
	Wed, 18 Mar 2020 05:40:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 86E681BF857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 05:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7C826878F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 05:40:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lGbFyLthb8Rx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 05:40:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7031C878E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 05:40:53 +0000 (UTC)
IronPort-SDR: GGXSegXvPtwvDVUAmCHvU0YHTCOiGpwHZjUS2B5z48MJWU7yVjeQJ+M/p4JvorCyP0j/28lSpV
 Kw9JrGLsuFfg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 22:40:52 -0700
IronPort-SDR: 0iQ50qFdkIg44ysNjheZoPXYbizy8+P+U+1g1c/CgCitJgoRWhbcw8xBVhOd/Q6yAcRgJ5ebyq
 KubTopS8lfUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; d="scan'208";a="236547399"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 17 Mar 2020 22:40:51 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jERRi-00007e-P3; Wed, 18 Mar 2020 13:40:50 +0800
Date: Wed, 18 Mar 2020 13:40:14 +0800
From: kbuild test robot <lkp@intel.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Message-ID: <202003181310.IqYz3010%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 49/49]
 drivers/net/ethernet/intel/igc/igc_diag.c:119:9-10: WARNING: return of 0/1
 in function 'igc_reg_test' with return type bool
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   a6017405fcd0cda0cd9f35b34cae92400cf9e3e3
commit: a6017405fcd0cda0cd9f35b34cae92400cf9e3e3 [49/49] igc: add support to interrupt, eeprom, registers and link self-tests

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


coccinelle warnings: (new ones prefixed by >>)

>> drivers/net/ethernet/intel/igc/igc_diag.c:119:9-10: WARNING: return of 0/1 in function 'igc_reg_test' with return type bool

Please review and possibly fold the followup patch.

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
