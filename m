Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAB348DB32
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jan 2022 17:00:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2B176FC50;
	Thu, 13 Jan 2022 16:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N063UK7mRyKO; Thu, 13 Jan 2022 16:00:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 878CA6FC4E;
	Thu, 13 Jan 2022 16:00:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 757BC1BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 16:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 682BD6FC4E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 16:00:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lfV_4MK11JlE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jan 2022 16:00:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2447360D9C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 16:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642089647;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=isyCxdsKfaQeXmUO7H2IJ7WTnHh6LyWWkT2qzdA4nrs=;
 b=Ge4rwMrNmAOxE1QDl332n2IC2cefs4F6gRA/8fqMN65qqS/SVTi5i1eBHOU9JQfplmUi7B
 mSYnK0K4HLhMHahsMkxFe8CeDmesPBn38hAQKB2kfcbZicPoy2b6ely/01vZVI1OuRKx8B
 4ky05mMS9g3OOCeD/+u40Z6Ff9DGRt0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-639-lB6uJ8-pMpy4jzjK-XeUmw-1; Thu, 13 Jan 2022 11:00:43 -0500
X-MC-Unique: lB6uJ8-pMpy4jzjK-XeUmw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5FFDC101AAA2;
 Thu, 13 Jan 2022 16:00:23 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-14.ams2.redhat.com
 [10.36.112.14])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1993B1091ED0;
 Thu, 13 Jan 2022 16:00:23 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 88EFDA807A2; Thu, 13 Jan 2022 17:00:21 +0100 (CET)
From: Corinna Vinschen <vinschen@redhat.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Jan 2022 17:00:21 +0100
Message-Id: <20220113160021.1027704-1-vinschen@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-wired-lan] [PATCH net-next] igc: avoid kernel warning when
 changing RX ring parameters
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
Cc: Andre Guedes <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Calling ethtool changing the RX ring parameters like this:

  $ ethtool -G eth0 rx 1024

triggers the "Missing unregister, handled but fix driver" warning in
xdp_rxq_info_reg().

igc_ethtool_set_ringparam() copies the igc_ring structure but neglects to
reset the xdp_rxq_info member before calling igc_setup_rx_resources().
This in turn calls xdp_rxq_info_reg() with an already registered xdp_rxq_info.

This fix initializes the xdp_rxq_info member prior to calling
igc_setup_rx_resources(), exactly like igb.

Fixes: 73f1071c1d29 ("igc: Add support for XDP_TX action")
Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 8cc077b712ad..93839106504d 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -671,6 +671,10 @@ igc_ethtool_set_ringparam(struct net_device *netdev,
 			memcpy(&temp_ring[i], adapter->rx_ring[i],
 			       sizeof(struct igc_ring));
 
+			/* Clear copied XDP RX-queue info */
+			memset(&temp_ring[i].xdp_rxq, 0,
+			       sizeof(temp_ring[i].xdp_rxq));
+
 			temp_ring[i].count = new_rx_count;
 			err = igc_setup_rx_resources(&temp_ring[i]);
 			if (err) {
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
