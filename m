Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1F36D32CC
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Apr 2023 19:27:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 851264187A;
	Sat,  1 Apr 2023 17:27:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 851264187A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680370052;
	bh=zGp567f+PispJ74Z/3xNT/iLDO8LUBWjJc0Tt36pt1I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lXrFznrbdV+/9T0rkL3Y0ihyGdgzuKqzElc9AiPWdlcP8Hq7lmnePXdFdsikR+Xbg
	 YbU4R4MUWeCtduBLPY5xMg2xfiaTGN9d0/dNO7JPMPlj5SL01KA9/AWV3WKMp0+gX0
	 knGDxXJYMbb6Cg5r5cPQku/+1zS0tp/9WaAQ2p72//+Ikbp460EPnwVqktIe+NBQ0C
	 3V2kGrc6hHsMjUZ2IcdrdK+jfs7Org+EHjGjv78r07Ffdmnuz/8nbbEnwT+9gVa+Ux
	 VjiKqsDYX5ayFzvz7ueVou+qayr+CQ3dz0NaE2bh9mXKXlnDIYRhrccITvThQ+WxOY
	 TsN2L51lp7YVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GiA8lOvioYtf; Sat,  1 Apr 2023 17:27:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7731341841;
	Sat,  1 Apr 2023 17:27:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7731341841
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E5BD1BF318
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1849782342
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1849782342
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s5vMBXffu5_Y for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Apr 2023 17:27:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39D898233C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 39D898233C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:24 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-623-eKYzsFE4NGito0fAtGggOQ-1; Sat, 01 Apr 2023 13:27:19 -0400
X-MC-Unique: eKYzsFE4NGito0fAtGggOQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 638EF101A531;
 Sat,  1 Apr 2023 17:27:19 +0000 (UTC)
Received: from toolbox.redhat.com (ovpn-192-6.brq.redhat.com [10.40.192.6])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8275240C83A9;
 Sat,  1 Apr 2023 17:27:17 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat,  1 Apr 2023 19:26:56 +0200
Message-Id: <20230401172659.38508-2-mschmidt@redhat.com>
In-Reply-To: <20230401172659.38508-1-mschmidt@redhat.com>
References: <20230401172659.38508-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680370043;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BUBHCMPgBRoA748LOlojQdHdk8ijt7iGpcycRyNToP4=;
 b=ahUnBcpYI3cuU5IJf4K5QBUtpsSPwcW3pCB+/dJNqqTCtlhw0aoBTwtnqHzUCcBl2tpxB7
 46S42B4wLersiH9nyG8UAFe9Kl8BCeYEyI+L3WmXyF9Uv89eRhUbkDB/1PB1nP06H+GwAL
 6Sals7dievBDPPLdH6u1l2xhO/Yhqjg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ahUnBcpY
Subject: [Intel-wired-lan] [PATCH net-next 1/4] ice: lower CPU usage of the
 GNSS read thread
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
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
