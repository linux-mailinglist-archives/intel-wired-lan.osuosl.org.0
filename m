Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C435352E1A8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 03:16:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6348D60E57;
	Fri, 20 May 2022 01:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2AlbwHSU--F7; Fri, 20 May 2022 01:16:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EA6560D5C;
	Fri, 20 May 2022 01:16:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8038C1BF30C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E01D40488
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tQEBCL_wBZIA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 01:15:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BAACE4000B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 01:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653009356; x=1684545356;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2oGbbUjYj0E3aAlL81he4Ni36pw6OBr/I251pMEuLHY=;
 b=L2qUEyFGXrD3W8HOj28uzTVA9fr1WWsvCbLknLrjRs0V0iWFhK4w/tnV
 YTvrUv34O8Ftmy3MrMOBOv7EBrnX4C4ayWN40NgsU15Hq0sHJBWGKSNYv
 jt84e68ZDXm5dgqpVhnAN6Wrc/Z3DfqymzmNe3rh7mGY1RAoOlWzn4H12
 CD8kY6OTSscTkPleOfSxET/k0pvyYMo5FQEK6grBxhCzzFW876CKZP2jp
 CuSBDE+f9fl+emPlldb8HABP5658eCYEzr9+IcrjyQjD/Cmc1XZuQfkpN
 xtoUqS6l6eN5iBFNKDfv9QQGT6pWA2tA4tRQzdGeb+L/1STuG/Wie+Y01 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="333064155"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="333064155"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="570534542"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.84])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 18:15:53 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 19 May 2022 18:15:30 -0700
Message-Id: <20220520011538.1098888-4-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220520011538.1098888-1-vinicius.gomes@intel.com>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v5 03/11] igc: Add support for
 receiving frames with all zeroes address
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
Cc: jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, boon.leong.ong@intel.com,
 xiyou.wangcong@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The frame preemption verification (as defined by IEEE 802.3-2018
Section 99.4.3) handshake is done by the driver, the default
configuration of the driver is to only receive frames with the driver
address.

So, in preparation for that add a second address to the list of
acceptable addresses.

Because the frame preemption "disable verify" toggle only affects the
transmission of verification frames, this needs to always be enabled.
As that address is invalid, the impact in practical scenarios should
be minimal. But still a bummer that we have to do this.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 2 ++
 drivers/net/ethernet/intel/igc/igc_main.c | 7 +++++++
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 7 +++++++
 3 files changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 1e7e7071f64d..31e7b4c72894 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -622,6 +622,8 @@ struct igc_nfc_rule *igc_get_nfc_rule(struct igc_adapter *adapter,
 int igc_add_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule);
 void igc_del_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule);
 
+int igc_enable_empty_addr_recv(struct igc_adapter *adapter);
+
 void igc_ptp_init(struct igc_adapter *adapter);
 void igc_ptp_reset(struct igc_adapter *adapter);
 void igc_ptp_suspend(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ae17af44fe02..bcbf35b32ef3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3586,6 +3586,13 @@ static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
 	return 0;
 }
 
+int igc_enable_empty_addr_recv(struct igc_adapter *adapter)
+{
+	u8 empty[ETH_ALEN] = { };
+
+	return igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, empty, -1);
+}
+
 /**
  * igc_set_rx_mode - Secondary Unicast, Multicast and Promiscuous mode set
  * @netdev: network interface device structure
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 0fce22de2ab8..270a08196f49 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -235,6 +235,13 @@ int igc_tsn_reset(struct igc_adapter *adapter)
 	unsigned int new_flags;
 	int err = 0;
 
+	/* Frame preemption verification requires that packets with
+	 * the all zeroes MAC address are allowed to be received. Add
+	 * the all zeroes destination address to the list of
+	 * acceptable addresses.
+	 */
+	igc_enable_empty_addr_recv(adapter);
+
 	new_flags = igc_tsn_new_flags(adapter);
 
 	if (!(new_flags & IGC_FLAG_TSN_ANY_ENABLED))
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
