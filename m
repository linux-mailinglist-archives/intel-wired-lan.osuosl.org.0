Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F296C8245
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Mar 2023 17:21:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A22F41FAE;
	Fri, 24 Mar 2023 16:21:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A22F41FAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679674898;
	bh=siXLQIZOvqYCjRVJ062NVymRoikDEYu55jZBsk6DNAY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oPZAoojD/7SM6PG65Y8Q+lv/47cLF9RctlfwSaCVNohccsG3g6yVIZw2WZLvyBOyS
	 0p3tKeaV6QlAblkj+PX3UfN38dGdQ0TkHcIioh/333XaevfmnLxoAUTHa6yVoCra5K
	 tDJvqn+I6TVSj6YJKRf5hjlIpsYban7L9I+M+VtNQjS3nWVhPGCYHQ+MIif2HxJMz+
	 gG7DiQAmywHoQGMwPqk/X0xkANbMDJLfPgfgsBYPok4JQ5ALqazTLv0VLA91YupZrS
	 f1s004aNmx/7BuYQyd/vFr64ZgrtNRyfLHKQZb/ATf2xVER+dTiBYHeemgKvPVzZdC
	 h9gINEjOfeJRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1VD--ZXgZTez; Fri, 24 Mar 2023 16:21:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0F6041E6E;
	Fri, 24 Mar 2023 16:21:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0F6041E6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2CD381BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 16:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0426184249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 16:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0426184249
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ymg13cO4xhfE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Mar 2023 16:21:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3BD184244
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E3BD184244
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 16:21:30 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-371-L2wuA3I4Mb-PyGEK2934pQ-1; Fri, 24 Mar 2023 12:21:27 -0400
X-MC-Unique: L2wuA3I4Mb-PyGEK2934pQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD886185A790;
 Fri, 24 Mar 2023 16:21:26 +0000 (UTC)
Received: from localhost.localdomain (ovpn-192-9.brq.redhat.com [10.40.192.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 224962027040;
 Fri, 24 Mar 2023 16:21:24 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Fri, 24 Mar 2023 17:20:56 +0100
Message-Id: <20230324162056.200752-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679674889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=lkiPxXmaIAIQ73FKuviHWwhc2ZQOAgEOBxJpkNCQ9+U=;
 b=Iw5UnuRjnKwPq2MKAxCkEWKcDC029KNL87eqjvzcaPbeC7Bd/zc1tiOG5P+8RklH+wiR8y
 pgfFcnWRt3UKEzSvPHUiFURa/mEXilL6lD0J5ZKUXr6HAiyiiXoQpxpngwayyv6s5LmmSp
 WZ2HCcwFJPKri0ziUeqjJSDSy5kkLb0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Iw5UnuRj
Subject: [Intel-wired-lan] [PATCH net] ice: make writes to /dev/gnssX
 synchronous
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The current ice driver's GNSS write implementation buffers writes and
works through them asynchronously in a kthread. That's bad because:
 - The GNSS write_raw operation is supposed to be synchronous[1][2].
 - There is no upper bound on the number of pending writes.
   Userspace can submit writes much faster than the driver can process,
   consuming unlimited amounts of kernel memory.

A patch that's currently on review[3] ("[v3,net] ice: Write all GNSS
buffers instead of first one") would add one more problem:
 - The possibility of waiting for a very long time to flush the write
   work when doing rmmod, softlockups.

To fix these issues, simplify the implementation: Drop the buffering,
the write_work, and make the writes synchronous.

I tested this with gpsd and ubxtool.

[1] https://events19.linuxfoundation.org/wp-content/uploads/2017/12/The-GNSS-Subsystem-Johan-Hovold-Hovold-Consulting-AB.pdf
    "User interface" slide.
[2] A comment in drivers/gnss/core.c:gnss_write():
        /* Ignoring O_NONBLOCK, write_raw() is synchronous. */
[3] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20230217120541.16745-1-karol.kolacinski@intel.com/

Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_common.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c   | 64 ++-------------------
 drivers/net/ethernet/intel/ice/ice_gnss.h   | 10 ----
 4 files changed, 6 insertions(+), 72 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index c2fda4fa4188..b534d7726d3e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5169,7 +5169,7 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
  */
 int
 ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
-		 u16 bus_addr, __le16 addr, u8 params, u8 *data,
+		 u16 bus_addr, __le16 addr, u8 params, const u8 *data,
 		 struct ice_sq_cd *cd)
 {
 	struct ice_aq_desc desc = { 0 };
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 8ba5f935a092..81961a7d6598 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -229,7 +229,7 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 		struct ice_sq_cd *cd);
 int
 ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
-		 u16 bus_addr, __le16 addr, u8 params, u8 *data,
+		 u16 bus_addr, __le16 addr, u8 params, const u8 *data,
 		 struct ice_sq_cd *cd);
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 8dec748bb53a..12086aafb42f 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -16,8 +16,8 @@
  * * number of bytes written - success
  * * negative - error code
  */
-static unsigned int
-ice_gnss_do_write(struct ice_pf *pf, unsigned char *buf, unsigned int size)
+static int
+ice_gnss_do_write(struct ice_pf *pf, const unsigned char *buf, unsigned int size)
 {
 	struct ice_aqc_link_topo_addr link_topo;
 	struct ice_hw *hw = &pf->hw;
@@ -72,39 +72,7 @@ ice_gnss_do_write(struct ice_pf *pf, unsigned char *buf, unsigned int size)
 	dev_err(ice_pf_to_dev(pf), "GNSS failed to write, offset=%u, size=%u, err=%d\n",
 		offset, size, err);
 
-	return offset;
-}
-
-/**
- * ice_gnss_write_pending - Write all pending data to internal GNSS
- * @work: GNSS write work structure
- */
-static void ice_gnss_write_pending(struct kthread_work *work)
-{
-	struct gnss_serial *gnss = container_of(work, struct gnss_serial,
-						write_work);
-	struct ice_pf *pf = gnss->back;
-
-	if (!pf)
-		return;
-
-	if (!test_bit(ICE_FLAG_GNSS, pf->flags))
-		return;
-
-	if (!list_empty(&gnss->queue)) {
-		struct gnss_write_buf *write_buf = NULL;
-		unsigned int bytes;
-
-		write_buf = list_first_entry(&gnss->queue,
-					     struct gnss_write_buf, queue);
-
-		bytes = ice_gnss_do_write(pf, write_buf->buf, write_buf->size);
-		dev_dbg(ice_pf_to_dev(pf), "%u bytes written to GNSS\n", bytes);
-
-		list_del(&write_buf->queue);
-		kfree(write_buf->buf);
-		kfree(write_buf);
-	}
+	return err;
 }
 
 /**
@@ -224,8 +192,6 @@ static struct gnss_serial *ice_gnss_struct_init(struct ice_pf *pf)
 	pf->gnss_serial = gnss;
 
 	kthread_init_delayed_work(&gnss->read_work, ice_gnss_read);
-	INIT_LIST_HEAD(&gnss->queue);
-	kthread_init_work(&gnss->write_work, ice_gnss_write_pending);
 	kworker = kthread_create_worker(0, "ice-gnss-%s", dev_name(dev));
 	if (IS_ERR(kworker)) {
 		kfree(gnss);
@@ -285,7 +251,6 @@ static void ice_gnss_close(struct gnss_device *gdev)
 	if (!gnss)
 		return;
 
-	kthread_cancel_work_sync(&gnss->write_work);
 	kthread_cancel_delayed_work_sync(&gnss->read_work);
 }
 
@@ -304,10 +269,7 @@ ice_gnss_write(struct gnss_device *gdev, const unsigned char *buf,
 	       size_t count)
 {
 	struct ice_pf *pf = gnss_get_drvdata(gdev);
-	struct gnss_write_buf *write_buf;
 	struct gnss_serial *gnss;
-	unsigned char *cmd_buf;
-	int err = count;
 
 	/* We cannot write a single byte using our I2C implementation. */
 	if (count <= 1 || count > ICE_GNSS_TTY_WRITE_BUF)
@@ -323,24 +285,7 @@ ice_gnss_write(struct gnss_device *gdev, const unsigned char *buf,
 	if (!gnss)
 		return -ENODEV;
 
-	cmd_buf = kcalloc(count, sizeof(*buf), GFP_KERNEL);
-	if (!cmd_buf)
-		return -ENOMEM;
-
-	memcpy(cmd_buf, buf, count);
-	write_buf = kzalloc(sizeof(*write_buf), GFP_KERNEL);
-	if (!write_buf) {
-		kfree(cmd_buf);
-		return -ENOMEM;
-	}
-
-	write_buf->buf = cmd_buf;
-	write_buf->size = count;
-	INIT_LIST_HEAD(&write_buf->queue);
-	list_add_tail(&write_buf->queue, &gnss->queue);
-	kthread_queue_work(gnss->kworker, &gnss->write_work);
-
-	return err;
+	return ice_gnss_do_write(pf, buf, count);
 }
 
 static const struct gnss_operations ice_gnss_ops = {
@@ -436,7 +381,6 @@ void ice_gnss_exit(struct ice_pf *pf)
 	if (pf->gnss_serial) {
 		struct gnss_serial *gnss = pf->gnss_serial;
 
-		kthread_cancel_work_sync(&gnss->write_work);
 		kthread_cancel_delayed_work_sync(&gnss->read_work);
 		kthread_destroy_worker(gnss->kworker);
 		gnss->kworker = NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
index 4d49e5b0b4b8..d95ca3928b2e 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -23,26 +23,16 @@
 #define ICE_MAX_UBX_READ_TRIES		255
 #define ICE_MAX_UBX_ACK_READ_TRIES	4095
 
-struct gnss_write_buf {
-	struct list_head queue;
-	unsigned int size;
-	unsigned char *buf;
-};
-
 /**
  * struct gnss_serial - data used to initialize GNSS TTY port
  * @back: back pointer to PF
  * @kworker: kwork thread for handling periodic work
  * @read_work: read_work function for handling GNSS reads
- * @write_work: write_work function for handling GNSS writes
- * @queue: write buffers queue
  */
 struct gnss_serial {
 	struct ice_pf *back;
 	struct kthread_worker *kworker;
 	struct kthread_delayed_work read_work;
-	struct kthread_work write_work;
-	struct list_head queue;
 };
 
 #if IS_ENABLED(CONFIG_GNSS)
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
