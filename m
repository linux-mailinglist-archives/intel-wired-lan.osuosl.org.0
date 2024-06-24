Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DC29151D5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2024 17:17:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B4AB408A3;
	Mon, 24 Jun 2024 15:17:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NyXzECKKJY7i; Mon, 24 Jun 2024 15:16:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00301406AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719242219;
	bh=AwVCdgZlUDmJ45VLLA4nNde1IIXg185F51iHXPPd7UE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ap0f+XomfJn/5/Wy4XJVab6bE4CqjZtseAES1EFc+RWiBaga3VWUAGwFDf2aWkDJh
	 KbgN+chX4nK813LseUOdyMXgLf7cP7yJC+UDV9/ocb1tgE+1TS7oLMJvy2lxPCCwnC
	 kUkzJVSsYNvCtW270MuJ6o2082VrsqK9RCJGDWHgFfeFzFE7/8oYQVilmyzV20SWV3
	 aviHOhy8ZS4yXFH7hWDkbad/fuEHfqncTn0dIlOVer9yayMEaNKd/ZIpqc1LSss1tT
	 7it9b6K3jxK9ntgsqZsVqpxBdH2Lgv0Vhxk5Ef8cv8ZHj5Fyp5O+nbJR81wXlD+QE6
	 1V4Vdabnf0DcQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00301406AC;
	Mon, 24 Jun 2024 15:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3FC21BF48B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 09:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ECC554021D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 09:53:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a2Pd-z8JPQtB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2024 09:53:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ihuguet@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 17CCE4020B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17CCE4020B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 17CCE4020B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 09:53:52 +0000 (UTC)
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-336-itAe-O5pPban2wpqRFSoXQ-1; Mon,
 24 Jun 2024 05:53:45 -0400
X-MC-Unique: itAe-O5pPban2wpqRFSoXQ-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 74CAB195609F; Mon, 24 Jun 2024 09:53:43 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.153])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 4704D1955E91; Mon, 24 Jun 2024 09:53:40 +0000 (UTC)
From: =?UTF-8?q?=C3=8D=C3=B1igo=20Huguet?= <ihuguet@redhat.com>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Mon, 24 Jun 2024 11:53:31 +0200
Message-ID: <20240624095331.351039-1-ihuguet@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mailman-Approved-At: Mon, 24 Jun 2024 15:16:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1719222831;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=AwVCdgZlUDmJ45VLLA4nNde1IIXg185F51iHXPPd7UE=;
 b=E9Ph+RSgt0bmkPGrUOw56CBQg4X0VQaTqZMTghsQs6JY5+ZLzBtvETT7QB1hENBsIpLLbf
 rrRR1FfIlok3vlMPC0g/PoP0dHUPlNYfxbt4sIUQTI0kxdF2gh3P+YLC9TBZNpxRPK7/qv
 hSW1ecZY90CcS3MRLJv1QgDcR/f04BE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=E9Ph+RSg
Subject: [Intel-wired-lan] [PATCH net-next] net: igc: return error for link
 autoneg=off
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
Cc: =?UTF-8?q?=C3=8D=C3=B1igo=20Huguet?= <ihuguet@redhat.com>,
 netdev@vger.kernel.org, edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver doesn't support force mode for the link settings. However, if
the user request it, it's just ignored and success is returned. Return
ENOTSUPP instead.

Signed-off-by: Íñigo Huguet <ihuguet@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 93bce729be76..b7b32344d074 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1832,6 +1832,12 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
 		}
 	}
 
+	/* The driver does not support force mode yet */
+	if (cmd->base.autoneg == AUTONEG_DISABLE) {
+		netdev_err(dev, "Force mode currently not supported\n");
+		return -EOPNOTSUPP;
+	}
+
 	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);
 
@@ -1844,14 +1850,10 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
 	if (ethtool_link_ksettings_test_link_mode(cmd, advertising, 2500baseT_Full))
 		advertising |= ADVERTISE_2500_FULL;
 
-	if (cmd->base.autoneg == AUTONEG_ENABLE) {
-		hw->mac.autoneg = 1;
-		hw->phy.autoneg_advertised = advertising;
-		if (adapter->fc_autoneg)
-			hw->fc.requested_mode = igc_fc_default;
-	} else {
-		netdev_info(dev, "Force mode currently not supported\n");
-	}
+	hw->mac.autoneg = 1;
+	hw->phy.autoneg_advertised = advertising;
+	if (adapter->fc_autoneg)
+		hw->fc.requested_mode = igc_fc_default;
 
 	/* MDI-X => 2; MDI => 1; Auto => 3 */
 	if (cmd->base.eth_tp_mdix_ctrl) {
-- 
2.44.0

