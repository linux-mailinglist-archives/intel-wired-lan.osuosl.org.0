Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B968310E60
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2019 23:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 553D787F45;
	Wed,  1 May 2019 21:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P2m0ua9o4qXr; Wed,  1 May 2019 21:07:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A59987F50;
	Wed,  1 May 2019 21:07:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 860B01BF947
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2019 21:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8220087F45
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2019 21:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JHyJtYC2r-R7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 May 2019 21:07:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 353D687F47
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2019 21:07:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 14:07:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,419,1549958400"; d="scan'208";a="320641636"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 01 May 2019 14:07:24 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hLwRo-0002DT-4o; Thu, 02 May 2019 05:07:24 +0800
Date: Thu, 2 May 2019 05:06:36 +0800
From: kbuild test robot <lkp@intel.com>
To: Nikita Danilov <ndanilov@aquantia.com>
Message-ID: <20190501210635.GA61401@lkp-kbuild09>
References: <201905020544.AMb7YA2G%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201905020544.AMb7YA2G%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [Intel-wired-lan] [RFC PATCH jkirsher-next-queue] net: aquantia:
 aq_ndev_driver_name[] can be static
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
Cc: intel-wired-lan@lists.osuosl.org, kbuild-all@01.org,
 Igor Russkikh <igor.russkikh@aquantia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Fixes: 58608082e66d ("net: aquantia: create global service workqueue")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 aq_main.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_main.c b/drivers/net/ethernet/aquantia/atlantic/aq_main.c
index 7f45e99..1ea8b77 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_main.c
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_main.c
@@ -23,7 +23,7 @@ MODULE_VERSION(AQ_CFG_DRV_VERSION);
 MODULE_AUTHOR(AQ_CFG_DRV_AUTHOR);
 MODULE_DESCRIPTION(AQ_CFG_DRV_DESC);
 
-const char aq_ndev_driver_name[] = AQ_CFG_DRV_NAME;
+static const char aq_ndev_driver_name[] = AQ_CFG_DRV_NAME;
 
 static const struct net_device_ops aq_ndev_ops;
 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
