Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B55241E6B58
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 21:43:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F94388337;
	Thu, 28 May 2020 19:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9A35Tp6oRqOr; Thu, 28 May 2020 19:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FCE5882EC;
	Thu, 28 May 2020 19:43:47 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75A3C1BF9B9
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 71383872B5
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e1teCrA5sIYa for <intel-wired-lan@osuosl.org>;
 Thu, 28 May 2020 19:43:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E2FE3872C2
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:43 +0000 (UTC)
IronPort-SDR: ZqQoRHI/hBeQJc5NBDNpPPRxS6zm/xl52vNlT+x7Ggy8O6gMvCvZ1SXTt+qx+ToUPm9vpPIRUO
 BgZvgTWj6eiQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 12:43:43 -0700
IronPort-SDR: 11OYA1Gp2eCZzV076lUaCNov8fR83pIDH1NP+lYHcaLzJED+wiXuEocDNIjFySAyp6d7S5nkSP
 3x+iRaOnHvkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="302585259"
Received: from jkoshman-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.154.131])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2020 12:43:43 -0700
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 28 May 2020 12:43:34 -0700
Message-Id: <20200528194342.3495-7-ranjani.sridharan@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
References: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
Subject: [Intel-wired-lan] [PATCH 06/14] virtual-bus: remove INVALID_ID and
 fix error path
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

INVALID_ID is not really needed, so remove it and fix error
path to remove auto ID in case of errors.

Signed-off-by: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
---
 drivers/bus/virtual_bus.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/bus/virtual_bus.c b/drivers/bus/virtual_bus.c
index 25f85672b70d..7518c6c8eaea 100644
--- a/drivers/bus/virtual_bus.c
+++ b/drivers/bus/virtual_bus.c
@@ -19,7 +19,6 @@
 #include <linux/device.h>
 
 static DEFINE_IDA(virtbus_dev_ida);
-#define VIRTBUS_INVALID_ID	0xFFFFFFFF
 
 static const
 struct virtbus_device_id *virtbus_match_id(const struct virtbus_device_id *id,
@@ -77,8 +76,7 @@ static void virtbus_release_device(struct device *_dev)
 	u32 ida = vdev->id;
 
 	vdev->release(vdev);
-	if (ida != VIRTBUS_INVALID_ID)
-		ida_simple_remove(&virtbus_dev_ida, ida);
+	ida_simple_remove(&virtbus_dev_ida, ida);
 }
 
 /**
@@ -103,9 +101,7 @@ int virtbus_register_device(struct virtbus_device *vdev)
 
 	/* All device IDs are automatically allocated */
 	ret = ida_simple_get(&virtbus_dev_ida, 0, 0, GFP_KERNEL);
-
 	if (ret < 0) {
-		vdev->id = VIRTBUS_INVALID_ID;
 		dev_err(&vdev->dev, "get IDA idx for virtbus device failed!\n");
 		goto device_add_err;
 	}
@@ -122,13 +118,12 @@ int virtbus_register_device(struct virtbus_device *vdev)
 		dev_name(&vdev->dev));
 
 	ret = device_add(&vdev->dev);
-	if (ret)
-		goto device_add_err;
+	if (!ret)
+		return ret;
 
-	return 0;
+	dev_err(&vdev->dev, "Add device to virtbus failed!: %d\n", ret);
 
 device_add_err:
-	dev_err(&vdev->dev, "Add device to virtbus failed!: %d\n", ret);
 	put_device(&vdev->dev);
 
 	return ret;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
