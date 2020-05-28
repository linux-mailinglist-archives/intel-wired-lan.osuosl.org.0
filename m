Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1217B1E6B5D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 21:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1CC2872C7;
	Thu, 28 May 2020 19:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hLgHffs-89-l; Thu, 28 May 2020 19:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2CD28872CC;
	Thu, 28 May 2020 19:43:53 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA9B01BF9BA
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E75A587267
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sE60rVFhMBen for <intel-wired-lan@osuosl.org>;
 Thu, 28 May 2020 19:43:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0A2BE87251
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:44 +0000 (UTC)
IronPort-SDR: F2ebWrDjycccZ2aIKISapn/i3s6Z4USB+W/yFCf1BR/m2XdD3u1WXSRi6/EXglKehYauPmXOzx
 3FmRrXt3EwhA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 12:43:43 -0700
IronPort-SDR: oz+McxBBkbs/d5JV2pEGjSJRrlHkoUtCw220vtc+VZMbPz3vNwqIDb7sTQtHa1tF8OpCKV4Eeu
 Io5cJ5x7vmSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="302585263"
Received: from jkoshman-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.154.131])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2020 12:43:43 -0700
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 28 May 2020 12:43:35 -0700
Message-Id: <20200528194342.3495-8-ranjani.sridharan@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
References: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
Subject: [Intel-wired-lan] [PATCH 07/14] virtual-bus: remove #ifdef for PM
 ops
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
Cc: pierre-louis.bossart@linux.intel.com, fred.oh@linux.intel.com,
 shiraz.saleem@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

not really needed.

Signed-off-by: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
---
 drivers/bus/virtual_bus.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/bus/virtual_bus.c b/drivers/bus/virtual_bus.c
index 7518c6c8eaea..519b578a347f 100644
--- a/drivers/bus/virtual_bus.c
+++ b/drivers/bus/virtual_bus.c
@@ -54,9 +54,7 @@ static int virtbus_uevent(struct device *dev, struct kobj_uevent_env *env)
 static const struct dev_pm_ops virtbus_dev_pm_ops = {
 	SET_RUNTIME_PM_OPS(pm_generic_runtime_suspend,
 			   pm_generic_runtime_resume, NULL)
-#ifdef CONFIG_PM_SLEEP
 	SET_SYSTEM_SLEEP_PM_OPS(pm_generic_suspend, pm_generic_resume)
-#endif
 };
 
 struct bus_type virtual_bus_type = {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
