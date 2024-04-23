Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 647B28AE208
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 12:25:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E25EA81E15;
	Tue, 23 Apr 2024 10:25:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cs91KAPnLb5c; Tue, 23 Apr 2024 10:25:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27BEE81E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713867903;
	bh=U2lce3/QNW+fiWXInJhryu4GzC+S2O+/i+htA/jwGrw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ai/4C38sfknCEOi4UJQcE5T3DEj9GXTOQShgDrsIdShvK2J3+dA7h7pdHevw0zviw
	 o78tvQuLglib68/UJytVWuhrzqVcWkLphOgzvoUY6J8PoBuAxCOKMgYVc+EHRz36xb
	 BH9qPA2MEphJx2NqJ/IMr/5KPJlC7T22QOgq+R2YWu28uATjVQA9dkPbu25Sk3XsoH
	 uutlARnenp0NDCYRz8PQExL14k8XiWfSdwV4d6J/gEQfG8465RFLEHGrfezL8amgsX
	 jEySOi2GEBwSTQs1KntWVZ66fbu6N1v/okSbeU9iyGzqEqfWdipxc0x6DMkA3gbqvF
	 QBwY0qqJd9+rA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27BEE81E0B;
	Tue, 23 Apr 2024 10:25:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF9FA1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 10:25:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC27181E0C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 10:25:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wrwWtmAYs1E0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 10:25:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B32481E0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B32481E0B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B32481E0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 10:24:59 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-361-GX6gB2GwN92ENdTWo_SQYg-1; Tue,
 23 Apr 2024 06:24:56 -0400
X-MC-Unique: GX6gB2GwN92ENdTWo_SQYg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F76E3C02745;
 Tue, 23 Apr 2024 10:24:56 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.194.197])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BB653543A;
 Tue, 23 Apr 2024 10:24:56 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 0D45DA80BA0; Tue, 23 Apr 2024 12:24:55 +0200 (CEST)
From: Corinna Vinschen <vinschen@redhat.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Apr 2024 12:24:54 +0200
Message-ID: <20240423102455.901469-1-vinschen@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1713867899;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=U2lce3/QNW+fiWXInJhryu4GzC+S2O+/i+htA/jwGrw=;
 b=OhanSya7W3FW81E9HojSuqacSWcMuAs2OqtUAaAOdqtMesNi6S7eXd/r8XctJjYgAWsiBA
 nWmNdcAhWksVf3nljPnQ+m+gULvCKZR658V/YL/RapIvxcu5UkIwaktp9SITHzzkoZogoR
 R+41AlRAnG6okV2EEx6cM6OaqGHWnZo=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=OhanSya7
Subject: [Intel-wired-lan] [PATCH] igc: fix a log entry using uninitialized
 netdev
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

During successful probe, igc logs this:

[    5.133667] igc 0000:01:00.0 (unnamed net_device) (uninitialized): PHC added
                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The reason is that igc_ptp_init() is called very early, even before
register_netdev() has been called. So the netdev_info() call works
on a partially uninitialized netdev.

Fix this by calling igc_ptp_init() after register_netdev(), right
after the media autosense check, just as in igb.  Add a comment,
just as in igb.

Now the log message is fine:

[    5.200987] igc 0000:01:00.0 eth0: PHC added

Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d9bd001af7ba..e5900d004071 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6927,8 +6927,6 @@ static int igc_probe(struct pci_dev *pdev,
 	device_set_wakeup_enable(&adapter->pdev->dev,
 				 adapter->flags & IGC_FLAG_WOL_SUPPORTED);
 
-	igc_ptp_init(adapter);
-
 	igc_tsn_clear_schedule(adapter);
 
 	/* reset the hardware with the new settings */
@@ -6950,6 +6948,9 @@ static int igc_probe(struct pci_dev *pdev,
 	/* Check if Media Autosense is enabled */
 	adapter->ei = *ei;
 
+	/* do hw tstamp init after resetting */
+	igc_ptp_init(adapter);
+
 	/* print pcie link status and MAC address */
 	pcie_print_link_status(pdev);
 	netdev_info(netdev, "MAC: %pM\n", netdev->dev_addr);
-- 
2.44.0

