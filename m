Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B686DED6D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 10:20:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44DF7614E6;
	Wed, 12 Apr 2023 08:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44DF7614E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681287606;
	bh=zGp567f+PispJ74Z/3xNT/iLDO8LUBWjJc0Tt36pt1I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Izf7uEC6sVmA3L9NgdBZkI2rg03Q6AQVdqlbObS+QBHFjKG35t+g9kR18E06Hlbel
	 yXd3rOwVB+zd3xD8ozZQFWxt6wnCDyVWzjeXQTiEgIZ/P1BJx98uxzjjo9gem9hKpT
	 bEqH6DDRvlsnhfl7xqxMV2alVvfr1JF1MRg+/al2ii4d/I9QSHOJ6oWoj7WR71ulb8
	 Z+78lb36NaRjk+dlfUACrt8Oh28KbEO//1DvJjW++IsmDkLDz4fXL9PMJtPljtXdCM
	 cZMtNtlJJhnXtCk4ez+eokg01dl22e3Ys6ukYzrD23DV+/KX81+qajFElgp9A5PMLx
	 SU/pXzfFKaFYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qJzrGpLOHmXN; Wed, 12 Apr 2023 08:20:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB47460640;
	Wed, 12 Apr 2023 08:20:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB47460640
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7234F1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4605840BD8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:19:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4605840BD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gGN5F-STf8w6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 08:19:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BD7540BD2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5BD7540BD2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:19:55 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-99-VNYLj4XrPveO9OrRNjs4qQ-1; Wed, 12 Apr 2023 04:19:50 -0400
X-MC-Unique: VNYLj4XrPveO9OrRNjs4qQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 283AC29AB3E1;
 Wed, 12 Apr 2023 08:19:50 +0000 (UTC)
Received: from toolbox.infra.bos2.lab (ovpn-192-9.brq.redhat.com [10.40.192.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3FCDE1402BDB;
 Wed, 12 Apr 2023 08:19:48 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Apr 2023 10:19:24 +0200
Message-Id: <20230412081929.173220-2-mschmidt@redhat.com>
In-Reply-To: <20230412081929.173220-1-mschmidt@redhat.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681287594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BUBHCMPgBRoA748LOlojQdHdk8ijt7iGpcycRyNToP4=;
 b=MWknD7FkVhQdsSV94UM/GNgs+Zt5hAhQttN0JppnLtuKyGb+gHSetE8fQNlX0WtzKq9kbp
 M4/WQ6Qc5jH0/PmlkM3aSHk6g1+jYq0+TtZ37K0uH5hM+5fyH4UF4rvNqSH55P54PJQgXM
 vOLDWIRj/ffxNxrAqAe6LmgM1x5A7rw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MWknD7Fk
Subject: [Intel-wired-lan] [PATCH net-next v2 1/6] ice: do not busy-wait to
 read GNSS data
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice-gnss-<dev_name> kernel thread, which reads data from the u-blox
GNSS module, keep a CPU core almost 100% busy. The main reason is that
it busy-waits for data to become available.

A simple improvement would be to replace the "mdelay(10);" in
ice_gnss_read() with sleeping. A better fix is to not do any waiting
directly in the function and just requeue this delayed work as needed.
The advantage is that canceling the work from ice_gnss_exit() becomes
immediate, rather than taking up to ~2.5 seconds (ICE_MAX_UBX_READ_TRIES
* 10 ms).

This lowers the CPU usage of the ice-gnss-<dev_name> thread on my system
from ~90 % to ~8 %.

I am not sure if the larger 0.1 s pause after inserting data into the
gnss subsystem is really necessary, but I'm keeping that as it was.

Of course, ideally the driver would not have to poll at all, but I don't
know if the E810 can watch for GNSS data availability over the i2c bus
by itself and notify the driver.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 42 ++++++++++-------------
 drivers/net/ethernet/intel/ice/ice_gnss.h |  3 +-
 2 files changed, 20 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 8dec748bb53a..2ea8a2b11bcd 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -117,6 +117,7 @@ static void ice_gnss_read(struct kthread_work *work)
 {
 	struct gnss_serial *gnss = container_of(work, struct gnss_serial,
 						read_work.work);
+	unsigned long delay = ICE_GNSS_POLL_DATA_DELAY_TIME;
 	unsigned int i, bytes_read, data_len, count;
 	struct ice_aqc_link_topo_addr link_topo;
 	struct ice_pf *pf;
@@ -136,11 +137,6 @@ static void ice_gnss_read(struct kthread_work *work)
 		return;
 
 	hw = &pf->hw;
-	buf = (char *)get_zeroed_page(GFP_KERNEL);
-	if (!buf) {
-		err = -ENOMEM;
-		goto exit;
-	}
 
 	memset(&link_topo, 0, sizeof(struct ice_aqc_link_topo_addr));
 	link_topo.topo_params.index = ICE_E810T_GNSS_I2C_BUS;
@@ -151,25 +147,24 @@ static void ice_gnss_read(struct kthread_work *work)
 	i2c_params = ICE_GNSS_UBX_DATA_LEN_WIDTH |
 		     ICE_AQC_I2C_USE_REPEATED_START;
 
-	/* Read data length in a loop, when it's not 0 the data is ready */
-	for (i = 0; i < ICE_MAX_UBX_READ_TRIES; i++) {
-		err = ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_BUS_ADDR,
-				      cpu_to_le16(ICE_GNSS_UBX_DATA_LEN_H),
-				      i2c_params, (u8 *)&data_len_b, NULL);
-		if (err)
-			goto exit_buf;
+	err = ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_BUS_ADDR,
+			      cpu_to_le16(ICE_GNSS_UBX_DATA_LEN_H),
+			      i2c_params, (u8 *)&data_len_b, NULL);
+	if (err)
+		goto requeue;
 
-		data_len = be16_to_cpu(data_len_b);
-		if (data_len != 0 && data_len != U16_MAX)
-			break;
+	data_len = be16_to_cpu(data_len_b);
+	if (data_len == 0 || data_len == U16_MAX)
+		goto requeue;
 
-		mdelay(10);
-	}
+	/* The u-blox has data_len bytes for us to read */
 
 	data_len = min_t(typeof(data_len), data_len, PAGE_SIZE);
-	if (!data_len) {
+
+	buf = (char *)get_zeroed_page(GFP_KERNEL);
+	if (!buf) {
 		err = -ENOMEM;
-		goto exit_buf;
+		goto requeue;
 	}
 
 	/* Read received data */
@@ -183,7 +178,7 @@ static void ice_gnss_read(struct kthread_work *work)
 				      cpu_to_le16(ICE_GNSS_UBX_EMPTY_DATA),
 				      bytes_read, &buf[i], NULL);
 		if (err)
-			goto exit_buf;
+			goto free_buf;
 	}
 
 	count = gnss_insert_raw(pf->gnss_dev, buf, i);
@@ -191,10 +186,11 @@ static void ice_gnss_read(struct kthread_work *work)
 		dev_warn(ice_pf_to_dev(pf),
 			 "gnss_insert_raw ret=%d size=%d\n",
 			 count, i);
-exit_buf:
+	delay = ICE_GNSS_TIMER_DELAY_TIME;
+free_buf:
 	free_page((unsigned long)buf);
-	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work,
-				   ICE_GNSS_TIMER_DELAY_TIME);
+requeue:
+	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work, delay);
 exit:
 	if (err)
 		dev_dbg(ice_pf_to_dev(pf), "GNSS failed to read err=%d\n", err);
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
index 4d49e5b0b4b8..640df7411373 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -5,6 +5,7 @@
 #define _ICE_GNSS_H_
 
 #define ICE_E810T_GNSS_I2C_BUS		0x2
+#define ICE_GNSS_POLL_DATA_DELAY_TIME	(HZ / 100) /* poll every 10 ms */
 #define ICE_GNSS_TIMER_DELAY_TIME	(HZ / 10) /* 0.1 second per message */
 #define ICE_GNSS_TTY_WRITE_BUF		250
 #define ICE_MAX_I2C_DATA_SIZE		FIELD_MAX(ICE_AQC_I2C_DATA_SIZE_M)
@@ -20,8 +21,6 @@
  * passed as I2C addr parameter.
  */
 #define ICE_GNSS_UBX_WRITE_BYTES	(ICE_MAX_I2C_WRITE_BYTES + 1)
-#define ICE_MAX_UBX_READ_TRIES		255
-#define ICE_MAX_UBX_ACK_READ_TRIES	4095
 
 struct gnss_write_buf {
 	struct list_head queue;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
