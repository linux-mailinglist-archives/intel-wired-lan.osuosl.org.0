Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 711AD9EEC73
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2024 16:34:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C666613DF;
	Thu, 12 Dec 2024 15:34:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iO0m-wU9hIrW; Thu, 12 Dec 2024 15:34:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68417613E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734017694;
	bh=34N7kwn/zaU+vQFweCsw3RqHwt99xwUtzQvb6O57PsE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xowHjmMkvpxOCMCy4U7IWRkjLpLgLz/6HcfAntvM71OnA9CKbWr+dT3G1UJ52LUgE
	 TFLIqLaD4wutSCwsrV8VJjwrnwrMuZuqW0jvwk2q+rpA5O5DO6nddaQJ8repMsqNaW
	 pmu/N9WUZpYcRLqw4JkzzamfNX7DudbluLcI7owv2fmIZEKDKtALSj08qtpF6TQOTs
	 zbSSerzjCgfqgoCQBsIA+XR+YAkvZwg3R1KJkkMwjKzEpodKfp4HDDk2XEdhDy3xo0
	 s2AgnS4MhSVI0I4nOXANfiSvDjPbQxMQcleoPHK4XYh0/4b3cODLom4MJmoDMOu7Sb
	 Lc6D7BxHCnjdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68417613E1;
	Thu, 12 Dec 2024 15:34:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 16080113C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB4A4405A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zq5dfuoOqjca for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 15:34:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 18090402E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18090402E6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 18090402E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:50 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-311-k1jKMSBDNtKyQVKutMRq2g-1; Thu,
 12 Dec 2024 10:34:46 -0500
X-MC-Unique: k1jKMSBDNtKyQVKutMRq2g-1
X-Mimecast-MFC-AGG-ID: k1jKMSBDNtKyQVKutMRq2g
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 77D8319560B1; Thu, 12 Dec 2024 15:34:45 +0000 (UTC)
Received: from rhel-developer-toolbox-2.redhat.com (unknown [10.45.224.236])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 5CD92195605A; Thu, 12 Dec 2024 15:34:42 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu, 12 Dec 2024 16:34:15 +0100
Message-ID: <20241212153417.165919-2-mschmidt@redhat.com>
In-Reply-To: <20241212153417.165919-1-mschmidt@redhat.com>
References: <20241212153417.165919-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1734017690;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=34N7kwn/zaU+vQFweCsw3RqHwt99xwUtzQvb6O57PsE=;
 b=V+T6O6r9D2UP9axU4TduY1yYisA9A7VuM7Y84lKQ8Ffo1SCLm6ZzygywNiCNZixIVEueG1
 0v4hnMBm5Ox2aZKXVbMA7sK6dw9DHV58bEH5Oaym9iWQ2aSVSEFt+3jiA+iXXEz6fb61Rq
 SW052sBHqK5+xZJrLm3la29Gcxs67DA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=V+T6O6r9
Subject: [Intel-wired-lan] [PATCH iwl-next 1/3] ice: downgrade warning about
 gnss_insert_raw to debug level
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

gnss_insert_raw() will reject the GNSS data the ice driver produces
whenever userspace has the gnss device open, but is not reading it fast
enough for whatever reason.

Do not spam kernel logs just because userspace misbehaves.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 66390eeb2343..9b1f970f4825 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -146,9 +146,9 @@ static void ice_gnss_read(struct kthread_work *work)
 
 	count = gnss_insert_raw(pf->gnss_dev, buf, i);
 	if (count != i)
-		dev_warn(ice_pf_to_dev(pf),
-			 "gnss_insert_raw ret=%d size=%d\n",
-			 count, i);
+		dev_dbg(ice_pf_to_dev(pf),
+			"gnss_insert_raw ret=%d size=%d\n",
+			count, i);
 	delay = ICE_GNSS_TIMER_DELAY_TIME;
 free_buf:
 	free_page((unsigned long)buf);
-- 
2.47.1

