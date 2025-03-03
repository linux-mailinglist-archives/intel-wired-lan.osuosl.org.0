Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C1BA4E5B0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 17:24:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0132E60E3C;
	Tue,  4 Mar 2025 16:24:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id juAczaI224fQ; Tue,  4 Mar 2025 16:24:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 395FD60E3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741105484;
	bh=sX5H9DcEjBMZ0WbbIBAjXEYIyCYZ4kIwLWGMJnFR2yU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o1GszZT9/1ypejxwOj7WuEwp0I8ibnY5tjHxp3ZvEJo+kUK9m3+WLV7aN+kjUM5D1
	 H8eHxbsOjzzElaoTS0F0cSXNEoJ0FNZhICtodCreK12aKWlFqTs3bwcGGyT7zy3h6h
	 Z3opuwSJTl+eN/xSD7xwokw37KAf9ZyCa5ZUbhql2l1rpOfEKCt8I+xE7YeeDaFYAO
	 TWCLPo/R9dQ+m+Elk2Xx23smTQ0mrsn9FxYaJZ4Ofm4XVQszcyv5CrzKt1UE58ix2t
	 YzlyNaFc8AvuAgIfPRhLR/rJViopOlrYvAfnZIFLVz+8y1k53iYdIkRLIM28YTdj5y
	 7jeOoM5Lm2gow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 395FD60E3D;
	Tue,  4 Mar 2025 16:24:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CB34DC5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 16:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAED2811C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 16:24:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hD3lr0ea4hTw for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 16:24:41 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=160.75.25.117;
 helo=beeline3.cc.itu.edu.tr; envelope-from=root@cc.itu.edu.tr;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BEA45811A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEA45811A3
Received: from beeline3.cc.itu.edu.tr (beeline3.cc.itu.edu.tr [160.75.25.117])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BEA45811A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 16:24:40 +0000 (UTC)
Received: from lesvatest1.cc.itu.edu.tr (lesvatest1.cc.itu.edu.tr
 [10.146.128.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by beeline3.cc.itu.edu.tr (Postfix) with ESMTPS id 3DF3740CECBF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 19:24:38 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
 by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6gvY35TXzG385
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 19:22:49 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
 id A42E04276A; Tue,  4 Mar 2025 19:22:15 +0300 (+03)
X-Envelope-From: <linux-kernel+bounces-541368-bozkiru=itu.edu.tr@vger.kernel.org>
Received: from fgw2.itu.edu.tr (fgw2.itu.edu.tr [160.75.25.104])
 by le2 (Postfix) with ESMTP id CBF1F434AD
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:29:09 +0300 (+03)
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
 by fgw2.itu.edu.tr (Postfix) with SMTP id 1CBFC2DCE1
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:29:08 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sy.mirrors.kernel.org (Postfix) with ESMTPS id B4E8B7A7FD5
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 10:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
 by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9681F3BB8;
 Mon,  3 Mar 2025 10:27:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBC61F37B8;
 Mon,  3 Mar 2025 10:27:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
 t=1740997667; cv=none;
 b=oa75ebtTJc+n8UV14ltC7MKfikGRdZjdSsvcLDV17hapbQjicSx4dytaUmXq7xsi+RaQd19elX3xwuMu39y2JA+GAB3wj2rNxEBQTFbJJrpux0TdYiyXu8IpxK4p3kJ52uvMv6a7bfcx++LOZ/KnpapSsOsUCLIiTo4sUewCXKU=
ARC-Message-Signature: i=1; a=rsa-sha256; d=subspace.kernel.org;
 s=arc-20240116; t=1740997667; c=relaxed/simple;
 bh=T8A6HBID+bnKK/poo4ku3s8z+sc9q3eeNC3dnooWZpk=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=jdsfjpnt5dbDS6gVzr69eDmKYqLX77Q6r4bMg+hRnmW0ypmdw3Cn6+mfztWpPi+kqjzeuVEIqvV52Emy+gIAXDCzOjYtMc3in00+19FGkoskLLfgZ/3m9K8Vngg7MbgYA9Hg6DWGoXNeHc6yb7J/C1f+GtZRrM2j5dvGl6pyqZA=
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.b=iReqcxLu; arc=none smtp.client-ip=198.175.65.9
X-CSE-ConnectionGUID: B6F8jgGCSGCPWE5+kliRcA==
X-CSE-MsgGUID: NjkMqJkSTPStGPnhRxGchg==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="64310091"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="64310091"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 02:27:46 -0800
X-CSE-ConnectionGUID: 7fVOKAx7RNGtC9ocqJZKPQ==
X-CSE-MsgGUID: +q4WOX2zRPufK0R4n6qxcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="122569867"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa005.fm.intel.com with ESMTP; 03 Mar 2025 02:27:38 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Mon,  3 Mar 2025 05:26:51 -0500
Message-Id: <20250303102658.3580232-3-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250303102658.3580232-1-faizal.abdul.rahim@linux.intel.com>
References: <20250303102658.3580232-1-faizal.abdul.rahim@linux.intel.com>
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for
 more information
X-ITU-Libra-ESVA-ID: 4Z6gvY35TXzG385
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741710181.01704@3BZfq+DjOJMqM8WI6zRqPQ
X-ITU-MailScanner-SpamCheck: not spam
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740997666; x=1772533666;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=T8A6HBID+bnKK/poo4ku3s8z+sc9q3eeNC3dnooWZpk=;
 b=iReqcxLuRU80gMw8lw28m5GEr1qSIFjqzU5Baln3QoXRoz4jor8Gvihr
 e5Br2XoFc6u2qfho9t3d2j68IKaqoZlJb4w13muoxQ4EVuK9A48t3EXYf
 lGia0KwkqR9oyyNKwWYUqriq2ALYO+7MWlpNLdGzjZatcib3WalE4NTDo
 J1c5MN/oeBmxAw4ReVjk46s8KESjJM3EKq1P1eZoOP7T903zdi1PcaX2A
 wLIVyLLrcAWr7CE+UTIcbl25N9xrAgcGLnhJVZ57gmBCDbUXZYY9AiITw
 aQZWIQAXYv+ep5wxLDEfJIyGLOlW7oVQLoqLEdADSF7nVUi7Zmo2cxB6g
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iReqcxLu
X-Mailman-Original-Authentication-Results: lesva1.cc.itu.edu.tr;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=intel.com header.i=@intel.com header.b=iReqcxLu
X-Mailman-Original-Authentication-Results: lesva2.cc.itu.edu.tr;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=intel.com header.i=@intel.com header.b=iReqcxLu
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.b="iReqcxLu"
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; arc=none
 smtp.client-ip=198.175.65.9
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; spf=none
 smtp.mailfrom=linux.intel.com
Subject: [Intel-wired-lan] [PATCH iwl-next v7 2/9] igc: Rename
 xdp_get_tx_ring() for non-xdp usage
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

Renamed xdp_get_tx_ring() function to a more generic name for use in
upcoming frame preemption patches.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 2 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 9 ++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/=
intel/igc/igc.h
index b8111ad9a9a8..22ecdac26cf4 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -736,7 +736,7 @@ struct igc_nfc_rule *igc_get_nfc_rule(struct igc_adap=
ter *adapter,
 				      u32 location);
 int igc_add_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *r=
ule);
 void igc_del_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *=
rule);
-
+struct igc_ring *igc_get_tx_ring(struct igc_adapter *adapter, int cpu);
 void igc_ptp_init(struct igc_adapter *adapter);
 void igc_ptp_reset(struct igc_adapter *adapter);
 void igc_ptp_suspend(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethe=
rnet/intel/igc/igc_main.c
index 56a35d58e7a6..db4a36afcec6 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2444,8 +2444,7 @@ static int igc_xdp_init_tx_descriptor(struct igc_ri=
ng *ring,
 	return -ENOMEM;
 }
=20
-static struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter,
-					    int cpu)
+struct igc_ring *igc_get_tx_ring(struct igc_adapter *adapter, int cpu)
 {
 	int index =3D cpu;
=20
@@ -2469,7 +2468,7 @@ static int igc_xdp_xmit_back(struct igc_adapter *ad=
apter, struct xdp_buff *xdp)
 	if (unlikely(!xdpf))
 		return -EFAULT;
=20
-	ring =3D igc_xdp_get_tx_ring(adapter, cpu);
+	ring =3D igc_get_tx_ring(adapter, cpu);
 	nq =3D txring_txq(ring);
=20
 	__netif_tx_lock(nq, cpu);
@@ -2546,7 +2545,7 @@ static void igc_finalize_xdp(struct igc_adapter *ad=
apter, int status)
 	struct igc_ring *ring;
=20
 	if (status & IGC_XDP_TX) {
-		ring =3D igc_xdp_get_tx_ring(adapter, cpu);
+		ring =3D igc_get_tx_ring(adapter, cpu);
 		nq =3D txring_txq(ring);
=20
 		__netif_tx_lock(nq, cpu);
@@ -6699,7 +6698,7 @@ static int igc_xdp_xmit(struct net_device *dev, int=
 num_frames,
 	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
 		return -EINVAL;
=20
-	ring =3D igc_xdp_get_tx_ring(adapter, cpu);
+	ring =3D igc_get_tx_ring(adapter, cpu);
 	nq =3D txring_txq(ring);
=20
 	__netif_tx_lock(nq, cpu);
--=20
2.34.1


