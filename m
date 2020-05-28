Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5741E6B62
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 21:43:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8212B8914E;
	Thu, 28 May 2020 19:43:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CRDNMc25i3oA; Thu, 28 May 2020 19:43:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6ED1789157;
	Thu, 28 May 2020 19:43:54 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DE6F1BF2B5
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9A7AB87251
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FSRWXAmE28O7 for <intel-wired-lan@osuosl.org>;
 Thu, 28 May 2020 19:43:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E0E287281
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:43 +0000 (UTC)
IronPort-SDR: MX9jk8LmbqscIfvNytBtlP1pNYqXrkAPOf3iBq4lzN3Ti9O2lpFR58hwimk31PHF2UdTmZw7PE
 hUJXRaud1WnA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 12:43:42 -0700
IronPort-SDR: HGmA9506xdqfioGOd8i7EEESzo6C7UDDSKY3EHGcZS1OMC39bP28Mm0X4ZiIBTr+H6N693S4HX
 kS7E8+ogxq8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="302585247"
Received: from jkoshman-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.154.131])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2020 12:43:42 -0700
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 28 May 2020 12:43:30 -0700
Message-Id: <20200528194342.3495-3-ranjani.sridharan@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
References: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
Subject: [Intel-wired-lan] [PATCH 02/14] virtual-bus: rename struct
 virtbus_dev_id
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

Rename struct virtbus_dev_id to struct virtbus_device_id.
This is needed for auto loading of virtbus driver modules to work
with MODULE_DEVICE_TABLE().

Signed-off-by: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
---
 drivers/bus/virtual_bus.c         | 7 ++++---
 include/linux/mod_devicetable.h   | 2 +-
 include/linux/virtual_bus.h       | 2 +-
 scripts/mod/devicetable-offsets.c | 4 ++--
 scripts/mod/file2alias.c          | 4 ++--
 5 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/bus/virtual_bus.c b/drivers/bus/virtual_bus.c
index b70023d5b58a..90d2ad19b5cb 100644
--- a/drivers/bus/virtual_bus.c
+++ b/drivers/bus/virtual_bus.c
@@ -27,8 +27,8 @@ static DEFINE_IDA(virtbus_dev_ida);
 #define VIRTBUS_INVALID_ID	0xFFFFFFFF
 
 static const
-struct virtbus_dev_id *virtbus_match_id(const struct virtbus_dev_id *id,
-					struct virtbus_device *vdev)
+struct virtbus_device_id *virtbus_match_id(const struct virtbus_device_id *id,
+					   struct virtbus_device *vdev)
 {
 	while (id->name[0]) {
 		if (!strcmp(vdev->match_name, id->name))
@@ -50,7 +50,8 @@ static int virtbus_uevent(struct device *dev, struct kobj_uevent_env *env)
 {
 	struct virtbus_device *vdev = to_virtbus_dev(dev);
 
-	if (add_uevent_var(env, "MODALIAS=%s%s", "virtbus:", vdev->match_name))
+	if (add_uevent_var(env, "MODALIAS=%s%s", VIRTBUS_MODULE_PREFIX,
+			   vdev->match_name))
 		return -ENOMEM;
 
 	return 0;
diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
index 60bcfe75fb94..1378bc165c07 100644
--- a/include/linux/mod_devicetable.h
+++ b/include/linux/mod_devicetable.h
@@ -835,7 +835,7 @@ struct mhi_device_id {
 #define VIRTBUS_NAME_SIZE 20
 #define VIRTBUS_MODULE_PREFIX "virtbus:"
 
-struct virtbus_dev_id {
+struct virtbus_device_id {
 	char name[VIRTBUS_NAME_SIZE];
 	kernel_ulong_t driver_data;
 };
diff --git a/include/linux/virtual_bus.h b/include/linux/virtual_bus.h
index 4872fd5a9218..aeac7144b220 100644
--- a/include/linux/virtual_bus.h
+++ b/include/linux/virtual_bus.h
@@ -26,7 +26,7 @@ struct virtbus_driver {
 	int (*suspend)(struct virtbus_device *, pm_message_t);
 	int (*resume)(struct virtbus_device *);
 	struct device_driver driver;
-	const struct virtbus_dev_id *id_table;
+	const struct virtbus_device_id *id_table;
 };
 
 static inline
diff --git a/scripts/mod/devicetable-offsets.c b/scripts/mod/devicetable-offsets.c
index 0c8e0e3a7c84..2848926ed223 100644
--- a/scripts/mod/devicetable-offsets.c
+++ b/scripts/mod/devicetable-offsets.c
@@ -241,8 +241,8 @@ int main(void)
 	DEVID(mhi_device_id);
 	DEVID_FIELD(mhi_device_id, chan);
 
-	DEVID(virtbus_dev_id);
-	DEVID_FIELD(virtbus_dev_id, name);
+	DEVID(virtbus_device_id);
+	DEVID_FIELD(virtbus_device_id, name);
 
 	return 0;
 }
diff --git a/scripts/mod/file2alias.c b/scripts/mod/file2alias.c
index 7d78fa3fba34..fd3908ed922d 100644
--- a/scripts/mod/file2alias.c
+++ b/scripts/mod/file2alias.c
@@ -1363,7 +1363,7 @@ static int do_mhi_entry(const char *filename, void *symval, char *alias)
 
 static int do_virtbus_entry(const char *filename, void *symval, char *alias)
 {
-	DEF_FIELD_ADDR(symval, virtbus_dev_id, name);
+	DEF_FIELD_ADDR(symval, virtbus_device_id, name);
 	sprintf(alias, VIRTBUS_MODULE_PREFIX "%s", *name);
 	return 1;
 }
@@ -1442,7 +1442,7 @@ static const struct devtable devtable[] = {
 	{"tee", SIZE_tee_client_device_id, do_tee_entry},
 	{"wmi", SIZE_wmi_device_id, do_wmi_entry},
 	{"mhi", SIZE_mhi_device_id, do_mhi_entry},
-	{"virtbus", SIZE_virtbus_dev_id, do_virtbus_entry},
+	{"virtbus", SIZE_virtbus_device_id, do_virtbus_entry},
 };
 
 /* Create MODULE_ALIAS() statements.
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
