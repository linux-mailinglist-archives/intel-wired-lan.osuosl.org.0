Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FF195455A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 11:24:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFA6560BB7;
	Fri, 16 Aug 2024 09:24:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fz4MNSW8H3mS; Fri, 16 Aug 2024 09:24:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4977560742
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723800253;
	bh=c+fPaZ+j1KtvWllGwHu58X7smPAoZP18kh5OqiYAz+I=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mSOm9tq8NRNMwaeRJRHIUcTrzTTtZ1RGK+kxqecvspybAmWJp3Xi0R1S3f8ls62uj
	 lnc63FDCXaVjD3Mlp9PucTheyrJK0M4mu71IwRN22QiuPx/az4b8t5URQ5st+2iTRh
	 qKZp8Q8joDQP3OMBZFGQ1goM1gRJ3h/8YkO7OTs/kRCGug81UoLQXCSibw5QlHoQGD
	 lFj6NJwyVyUSt5JMLgVop9kf4LYvLy5CaalF64eS8b0i7DoqhcUikUu7/gJIHOjOUE
	 fpJdE9GVgyG94pu2WSrUXMJT8JYSyeK0iWcb5VusKg7+s5CZtq3IDwJwiMVaNuDlQ9
	 Yp5uaj0RvEqSg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4977560742;
	Fri, 16 Aug 2024 09:24:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4AA411BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 378EB40516
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dv-CSLFsI90z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 09:24:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D6BE44010D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D6BE44010D
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D6BE44010D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:24:08 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 16 Aug 2024 11:24:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240711-b4-igb_zero_copy-v6-3-4bfb68773b18@linutronix.de>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
In-Reply-To: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2635; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=diD1pMkZnZRJQC5ME9B282Jyhc0fUmv3nNbZJfwcJuk=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBmvxqySlt8QUGbkalaDsiIfloKTu54OvXAvkQ67
 GTTfmmJ7hSJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZr8asgAKCRDBk9HyqkZz
 ghLDD/9RpfDyD+574KnaAjvfzZfpdrRNgysAj7c/E8OKLS1Q1r/yTvNR8F+Wu+YhDU2pzrV9kIw
 xVAcke9A01wViooZYToFx4igoegyIwyUdiGvDAL5tORl9NkkqKkWL4hph/MQ/lMTlBRyon1RUrm
 q3NfBl5LUc1HvXuQTEMeRTecxLxxX751x5WbLQWKfg+OC1WgyzPlC+vqPmhox3vWU5qAQlHjnjX
 EXbn8jIjtxw3DOIqvvGnQxEQxQVWhKqICueHiShQ+S4JpTrfy1P7JTO73aLngbmoSYlItq3lU0I
 p6N21xTUR59jJxWBlcjyYSuNOOfE4V0QXKuow7dT/8XJxhV554YBRdCqa/4dubVDYoOKQAPzBYr
 B2nZQD2sj3PYt5Q3kIXNxXGixEDd68re482QAmdz09+MdZanj0EvlQkZIpStoes7aueL+wpnQ+i
 2el5F2DpZyx4pJEL5ayQRzNc3lklvjmClU3ksZDWExiU/k1hHaoO7/F9REuJtTyYsXsWIMeTUuh
 KSCsiJKA/v9xh/WWFozUWda5ff/dXoJuj75R8dpcMD+dONrvN6NRFpnBm09stasWHh7pBCsujJf
 UloxP020z0Z5BvlCELsn+hqK7FiDTwnzD697zvrxGFhSrchd7LOR0tF/TTRMVdPmglO1YyjYKu+
 ZYetxNiiVLAo9Hg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1723800246;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=c+fPaZ+j1KtvWllGwHu58X7smPAoZP18kh5OqiYAz+I=;
 b=POsw0eHq5BHj6AfCKZPeS1oRq9IAT+LmaHOofJHg1bIOO0k1EJYVHG312hbSRv4nH+y4F0
 z+NzFS1WCdpji0Najvab2NTxrKNOsPR4/9LfImwZLFP9bwmw0gPqRlwTDPiA509LZdZy5h
 jKY4IIt7WGAJDoqdenCsRgqEA+KdmH1dZSEllWQ/3dFzIFLVwC8nVYT29zUJXX+tSHQ0cM
 n+R+5URQjum5dMAFE05nIPGTumDOMt7OC29x+4gud1URPyTOlbWbee1UI35fPvMjtcbzFd
 gqd1sfIJEVosul0Gqx07t9+UHM4Q7fwGiS2pianJZL+7y6GanNdMJICfNA8rhQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1723800246;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=c+fPaZ+j1KtvWllGwHu58X7smPAoZP18kh5OqiYAz+I=;
 b=4Om9ccw7A03ClFUtdIkCKEbmRJ39+oj3Pl01XhyQVkA33BanIi2BCeZh8la8yqB2kd66on
 Jty1PokyvTf1xQCw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=POsw0eHq; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=4Om9ccw7
Subject: [Intel-wired-lan] [PATCH iwl-next v6 3/6] igb: Introduce
 igb_xdp_is_enabled()
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>

Introduce igb_xdp_is_enabled() to check if an XDP program is assigned to
the device. Use that wherever xdp_prog is read and evaluated.

Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
[Kurt: Split patches and use READ_ONCE()]
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igb/igb.h      | 5 +++++
 drivers/net/ethernet/intel/igb/igb_main.c | 8 +++++---
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index c718e3d14401..dbba193241b9 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -805,6 +805,11 @@ static inline struct netdev_queue *txring_txq(const struct igb_ring *tx_ring)
 	return netdev_get_tx_queue(tx_ring->netdev, tx_ring->queue_index);
 }
 
+static inline bool igb_xdp_is_enabled(struct igb_adapter *adapter)
+{
+	return !!READ_ONCE(adapter->xdp_prog);
+}
+
 int igb_add_filter(struct igb_adapter *adapter,
 		   struct igb_nfc_filter *input);
 int igb_erase_filter(struct igb_adapter *adapter,
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 0b81665b2478..db1598876424 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2946,7 +2946,8 @@ int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
 	/* During program transitions its possible adapter->xdp_prog is assigned
 	 * but ring has not been configured yet. In this case simply abort xmit.
 	 */
-	tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
+	tx_ring = igb_xdp_is_enabled(adapter) ?
+		igb_xdp_tx_queue_mapping(adapter) : NULL;
 	if (unlikely(!tx_ring))
 		return IGB_XDP_CONSUMED;
 
@@ -2979,7 +2980,8 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
 	/* During program transitions its possible adapter->xdp_prog is assigned
 	 * but ring has not been configured yet. In this case simply abort xmit.
 	 */
-	tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
+	tx_ring = igb_xdp_is_enabled(adapter) ?
+		igb_xdp_tx_queue_mapping(adapter) : NULL;
 	if (unlikely(!tx_ring))
 		return -ENXIO;
 
@@ -6612,7 +6614,7 @@ static int igb_change_mtu(struct net_device *netdev, int new_mtu)
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	int max_frame = new_mtu + IGB_ETH_PKT_HDR_PAD;
 
-	if (adapter->xdp_prog) {
+	if (igb_xdp_is_enabled(adapter)) {
 		int i;
 
 		for (i = 0; i < adapter->num_rx_queues; i++) {

-- 
2.39.2

