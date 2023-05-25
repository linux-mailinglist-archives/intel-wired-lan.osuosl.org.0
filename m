Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CBA71096D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 May 2023 12:05:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCFFC839DC;
	Thu, 25 May 2023 10:05:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCFFC839DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685009124;
	bh=maH8Ik5LmFZ7eCyl6vimDlFeTj/Hy222b7qclk86De8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cec5dcUSF+T4fozb98Ow8m1fanUPJZ5tDYHlyFQVSTfurH0tWu5AQV1C9lzPXsQej
	 gcaWrI/ekpv74rIGvZpIwt3tdhPxiCu+iR1ElL9eyaq/g8f58LWFwXNrf5jTwEDhM6
	 9WnU057POaSuOYV7b+3mRsfTEmPFpfLOg7TnI/m8HxXZUKXvR/uL04d3nQi99T7FRS
	 kSMkTuaas94rNNHYANu6PE7O4vJbG+hbQbxU+9Cuheydppgie92kf+vcI0owvY3AUg
	 qtV+ioqjJNahlzFt3bUCIcQEt/ViFRxGHerSLWqm1gVtsWEdaya+ynnivTHWKSMWcd
	 UHsdvpyMKaiHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RzXo9WMlXLm7; Thu, 25 May 2023 10:05:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBE5A83A0C;
	Thu, 25 May 2023 10:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBE5A83A0C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15A911BF282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 10:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E096542AA9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 10:05:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E096542AA9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dfUqhW8tgi3m for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 May 2023 10:05:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 882C240C26
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 882C240C26
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 10:05:16 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-84-Hj15obMNM6iNGtPJxM76dQ-1; Thu, 25 May 2023 06:05:12 -0400
X-MC-Unique: Hj15obMNM6iNGtPJxM76dQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D476A185A78E;
 Thu, 25 May 2023 10:05:11 +0000 (UTC)
Received: from toolbox.. (unknown [10.43.2.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B9DB22166B2B;
 Thu, 25 May 2023 10:05:10 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 May 2023 12:04:46 +0200
Message-Id: <20230525100446.125117-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1685009115;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Eyd/q8MK7wtOVi8Txfm6tN7TJizqEO/n+/54cINgKVY=;
 b=UIhWEevwyGI5rIvwerw7u/WS/718oauCkmWQiPfHdJiLtINaTAOJSTzKjFF1i37FINkw4C
 t0Bq0a8IXo6NsIFD5JiIAwpgW8plqWN3czR/6Up58tvZnwkl7H6wfn3Kj/VHh6UDjfe+5z
 NU9JfEbsKxLjIrTBi9uVi/kAVwWaSV8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UIhWEevw
Subject: [Intel-wired-lan] [PATCH net v2] ice: make writes to /dev/gnssX
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
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
v2: No real change. Just rebased, per Michal Michalik's request.
---
 drivers/net/ethernet/intel/ice/ice_common.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_common.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c   | 64 ++-------------------
 drivers/net/ethernet/intel/ice/ice_gnss.h   | 10 ----
 4 files changed, 6 insertions(+), 72 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 0157f6e98d3e..eb2dc0983776 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5160,7 +5160,7 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
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
index 2ea8a2b11bcd..bd0ed155e11b 100644
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
@@ -220,8 +188,6 @@ static struct gnss_serial *ice_gnss_struct_init(struct ice_pf *pf)
 	pf->gnss_serial = gnss;
 
 	kthread_init_delayed_work(&gnss->read_work, ice_gnss_read);
-	INIT_LIST_HEAD(&gnss->queue);
-	kthread_init_work(&gnss->write_work, ice_gnss_write_pending);
 	kworker = kthread_create_worker(0, "ice-gnss-%s", dev_name(dev));
 	if (IS_ERR(kworker)) {
 		kfree(gnss);
@@ -281,7 +247,6 @@ static void ice_gnss_close(struct gnss_device *gdev)
 	if (!gnss)
 		return;
 
-	kthread_cancel_work_sync(&gnss->write_work);
 	kthread_cancel_delayed_work_sync(&gnss->read_work);
 }
 
@@ -300,10 +265,7 @@ ice_gnss_write(struct gnss_device *gdev, const unsigned char *buf,
 	       size_t count)
 {
 	struct ice_pf *pf = gnss_get_drvdata(gdev);
-	struct gnss_write_buf *write_buf;
 	struct gnss_serial *gnss;
-	unsigned char *cmd_buf;
-	int err = count;
 
 	/* We cannot write a single byte using our I2C implementation. */
 	if (count <= 1 || count > ICE_GNSS_TTY_WRITE_BUF)
@@ -319,24 +281,7 @@ ice_gnss_write(struct gnss_device *gdev, const unsigned char *buf,
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
@@ -432,7 +377,6 @@ void ice_gnss_exit(struct ice_pf *pf)
 	if (pf->gnss_serial) {
 		struct gnss_serial *gnss = pf->gnss_serial;
 
-		kthread_cancel_work_sync(&gnss->write_work);
 		kthread_cancel_delayed_work_sync(&gnss->read_work);
 		kthread_destroy_worker(gnss->kworker);
 		gnss->kworker = NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
index b8bb8b63d081..75e567ad7059 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -22,26 +22,16 @@
  */
 #define ICE_GNSS_UBX_WRITE_BYTES	(ICE_MAX_I2C_WRITE_BYTES + 1)
 
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
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
