Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEACB9EEC7B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2024 16:35:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4908C4156F;
	Thu, 12 Dec 2024 15:35:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JdTAXZwvAkiV; Thu, 12 Dec 2024 15:35:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43D4341573
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734017702;
	bh=PJBxfCGWGRVTBMuIZgJFT97kyEa63qkWbjw3aPCqaY8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IA8OBuB5ah/8D5yNVGQaSTYieJmV6GGD0n5wiFjEPrErOXlNbobKYYp1PQ+kkWtuQ
	 hxry6pKl1oOJ2WiCGTLllNXneLDCpVcziV0FLbYuMrErqFCedlH8wHPSz3pbFa9s8B
	 0akEVLNy5XY07U3HzE5RYwC8FQpbsISIDPqNQuWT8Jr9R1BrXc/JaQGyYbi44Yku/r
	 nX45IQPidcBoCgfeKMBRpasl6igCyD2NJZLp7OiWLeQefs39iYSGzaUTbWpbibCPEY
	 Pgc679aq5xLpjPTTntl+p6DWIELMU2SDov17+RSZ0PfbttwbwgSf2adaOBJfANrINK
	 vVj6F5r3FtP2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43D4341573;
	Thu, 12 Dec 2024 15:35:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id F0D611147
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBF5541568
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MgWt2YFzkIbx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 15:34:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9701B41561
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9701B41561
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9701B41561
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:58 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-96-2yc1YoOROWKvqFxaensUjw-1; Thu,
 12 Dec 2024 10:34:50 -0500
X-MC-Unique: 2yc1YoOROWKvqFxaensUjw-1
X-Mimecast-MFC-AGG-ID: 2yc1YoOROWKvqFxaensUjw
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 92476195609F; Thu, 12 Dec 2024 15:34:48 +0000 (UTC)
Received: from rhel-developer-toolbox-2.redhat.com (unknown [10.45.224.236])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 00F07195605A; Thu, 12 Dec 2024 15:34:45 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Dec 2024 16:34:16 +0100
Message-ID: <20241212153417.165919-3-mschmidt@redhat.com>
In-Reply-To: <20241212153417.165919-1-mschmidt@redhat.com>
References: <20241212153417.165919-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1734017697;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PJBxfCGWGRVTBMuIZgJFT97kyEa63qkWbjw3aPCqaY8=;
 b=GKIKm48oJ8ltXd4tc9sW19bYnGUO5EvtRijEoKUZyKGcaOBNhi26ww5a+jLc2p/+mHsPMD
 genGJPNmT8bgLGYIBNKagrod+DDZibeqjt4BrrRtJNFhKuZtmQRttdmNtZ6eX0Vmef2uus
 /yZSvPzzZl+VvB/xVQmyT3+BbpB75mw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=GKIKm48o
Subject: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: lower the latency of
 GNSS reads
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The E810 is connected to the u-blox GNSS module over I2C. The ice driver
periodically (every ~20ms) sends AdminQ commands to poll the u-blox for
available data. Most of the time, there's no data. When the u-blox
finally responds that data is available, usually it's around 800 bytes.
It can be more or less, depending on how many NMEA messages were
configured using ubxtool. ice then proceeds to read all the data.
AdminQ and I2C are slow. The reading is performed in chunks of 15 bytes.
ice reads all of the data before passing it to the kernel GNSS subsystem
and onwards to userspace.

Improve the NMEA message receiving latency. Pass each 15-bytes chunk to
userspace as soon as it's received.

Tested-by: Miroslav Lichvar <mlichvar@redhat.com>
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 29 +++++++----------------
 drivers/net/ethernet/intel/ice/ice_gnss.h |  6 ++++-
 2 files changed, 14 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 9b1f970f4825..7922311d2545 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -88,10 +88,10 @@ static void ice_gnss_read(struct kthread_work *work)
 	unsigned long delay = ICE_GNSS_POLL_DATA_DELAY_TIME;
 	unsigned int i, bytes_read, data_len, count;
 	struct ice_aqc_link_topo_addr link_topo;
+	char buf[ICE_MAX_I2C_DATA_SIZE];
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	__be16 data_len_b;
-	char *buf = NULL;
 	u8 i2c_params;
 	int err = 0;
 
@@ -121,16 +121,6 @@ static void ice_gnss_read(struct kthread_work *work)
 		goto requeue;
 
 	/* The u-blox has data_len bytes for us to read */
-
-	data_len = min_t(typeof(data_len), data_len, PAGE_SIZE);
-
-	buf = (char *)get_zeroed_page(GFP_KERNEL);
-	if (!buf) {
-		err = -ENOMEM;
-		goto requeue;
-	}
-
-	/* Read received data */
 	for (i = 0; i < data_len; i += bytes_read) {
 		unsigned int bytes_left = data_len - i;
 
@@ -139,19 +129,18 @@ static void ice_gnss_read(struct kthread_work *work)
 
 		err = ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_BUS_ADDR,
 				      cpu_to_le16(ICE_GNSS_UBX_EMPTY_DATA),
-				      bytes_read, &buf[i], NULL);
+				      bytes_read, buf, NULL);
 		if (err)
-			goto free_buf;
+			goto requeue;
+
+		count = gnss_insert_raw(pf->gnss_dev, buf, bytes_read);
+		if (count != bytes_read)
+			dev_dbg(ice_pf_to_dev(pf),
+				"gnss_insert_raw ret=%d size=%d\n",
+				count, bytes_read);
 	}
 
-	count = gnss_insert_raw(pf->gnss_dev, buf, i);
-	if (count != i)
-		dev_dbg(ice_pf_to_dev(pf),
-			"gnss_insert_raw ret=%d size=%d\n",
-			count, i);
 	delay = ICE_GNSS_TIMER_DELAY_TIME;
-free_buf:
-	free_page((unsigned long)buf);
 requeue:
 	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work, delay);
 	if (err)
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
index 15daf603ed7b..e0e939f1b102 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -8,7 +8,11 @@
 #define ICE_GNSS_POLL_DATA_DELAY_TIME	(HZ / 50) /* poll every 20 ms */
 #define ICE_GNSS_TIMER_DELAY_TIME	(HZ / 10) /* 0.1 second per message */
 #define ICE_GNSS_TTY_WRITE_BUF		250
-#define ICE_MAX_I2C_DATA_SIZE		FIELD_MAX(ICE_AQC_I2C_DATA_SIZE_M)
+/* ICE_MAX_I2C_DATA_SIZE is FIELD_MAX(ICE_AQC_I2C_DATA_SIZE_M).
+ * However, FIELD_MAX() does not evaluate to an integer constant expression,
+ * so it can't be used for the size of a non-VLA array.
+ */
+#define ICE_MAX_I2C_DATA_SIZE		15
 #define ICE_MAX_I2C_WRITE_BYTES		4
 
 /* u-blox ZED-F9T specific definitions */
-- 
2.47.1

