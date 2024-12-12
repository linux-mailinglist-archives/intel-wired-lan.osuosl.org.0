Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F38839EEC79
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2024 16:35:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06DAD84544;
	Thu, 12 Dec 2024 15:35:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Klk1hVe04qRO; Thu, 12 Dec 2024 15:35:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EBE984540
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734017701;
	bh=mgRpHTP53KJoPgmSVqas3EAYkmn+eljsiKnfwFmp98Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SiGM1I2/cfn1LMQvm7O+eEKfv1ZHyik/e0FQc62A/f+NpAS3uCX20Fh1Bx663d7yq
	 ksk3pyg3cFM+sF+Q5pUzvHDS+C6W5s2J75Q0aNrIBBY/gsT2x4SEQ41qXMZdx9Msql
	 KH+gj8dmUgcNKpU2oDIxdXncnxXzDhY7iaTZpaS4JJd5tZ/yNFswrxTXiCDoxXjfDz
	 ub9PhZKUahn8AyCL7j19C3NDgAmzQ+S2Wb7wQEmiJHuJEUmZu7QjPykkGwr/Aq1fUy
	 +8TbO9D5Off7vcJ+jFkwBCDpzrt+IY2aleAKbcgvKh5Od/Q5D/vudJlPUiadQk/0I/
	 mRIKgORkxoZ8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EBE984540;
	Thu, 12 Dec 2024 15:35:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E1074113C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DCC838453E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lE-a0_o3N4p6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 15:34:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B18C8453F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B18C8453F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B18C8453F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:57 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-79-wnFhZv6mNTinhUTJ6RY-Jw-1; Thu,
 12 Dec 2024 10:34:52 -0500
X-MC-Unique: wnFhZv6mNTinhUTJ6RY-Jw-1
X-Mimecast-MFC-AGG-ID: wnFhZv6mNTinhUTJ6RY-Jw
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 6E91A1955D45; Thu, 12 Dec 2024 15:34:51 +0000 (UTC)
Received: from rhel-developer-toolbox-2.redhat.com (unknown [10.45.224.236])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 23C02195606C; Thu, 12 Dec 2024 15:34:48 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu, 12 Dec 2024 16:34:17 +0100
Message-ID: <20241212153417.165919-4-mschmidt@redhat.com>
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
 bh=mgRpHTP53KJoPgmSVqas3EAYkmn+eljsiKnfwFmp98Y=;
 b=CfTQiBsCamrKTUyRldnjNlUX+/GyJaVNAkaOe2My5gwiJ9lmbP75xsusO3C9RCZEpG5ish
 fpEW7Ei81MeDrlfJMd5KRlAKiQr53vXUKCbgAvC+LvvfdTA7xEI2xurLYZfBssx4UfSqPp
 zr6pEA/K8HZFHgNvNb3+cLcKkymo1qY=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=CfTQiBsC
Subject: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: remove special delay
 after processing a GNSS read batch
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I do not see a reason to have a special longer delay (100 ms) after
passing read GNSS data to userspace.

Just use the regular GNSS polling interval (20 ms).

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 5 ++---
 drivers/net/ethernet/intel/ice/ice_gnss.h | 1 -
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 7922311d2545..83a2f0d4091e 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -85,7 +85,6 @@ static void ice_gnss_read(struct kthread_work *work)
 {
 	struct gnss_serial *gnss = container_of(work, struct gnss_serial,
 						read_work.work);
-	unsigned long delay = ICE_GNSS_POLL_DATA_DELAY_TIME;
 	unsigned int i, bytes_read, data_len, count;
 	struct ice_aqc_link_topo_addr link_topo;
 	char buf[ICE_MAX_I2C_DATA_SIZE];
@@ -140,9 +139,9 @@ static void ice_gnss_read(struct kthread_work *work)
 				count, bytes_read);
 	}
 
-	delay = ICE_GNSS_TIMER_DELAY_TIME;
 requeue:
-	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work, delay);
+	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work,
+				   ICE_GNSS_POLL_DATA_DELAY_TIME);
 	if (err)
 		dev_dbg(ice_pf_to_dev(pf), "GNSS failed to read err=%d\n", err);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
index e0e939f1b102..fa52727cd3d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -6,7 +6,6 @@
 
 #define ICE_E810T_GNSS_I2C_BUS		0x2
 #define ICE_GNSS_POLL_DATA_DELAY_TIME	(HZ / 50) /* poll every 20 ms */
-#define ICE_GNSS_TIMER_DELAY_TIME	(HZ / 10) /* 0.1 second per message */
 #define ICE_GNSS_TTY_WRITE_BUF		250
 /* ICE_MAX_I2C_DATA_SIZE is FIELD_MAX(ICE_AQC_I2C_DATA_SIZE_M).
  * However, FIELD_MAX() does not evaluate to an integer constant expression,
-- 
2.47.1

