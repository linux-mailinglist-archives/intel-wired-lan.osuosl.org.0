Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLsZI5EqnGloAQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 11:23:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F35174CA9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 11:23:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C426440C40;
	Mon, 23 Feb 2026 10:23:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4XK5XMtZpceM; Mon, 23 Feb 2026 10:23:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 370A640C45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771842191;
	bh=k7g1bbAiFux2USrjkRRsqpYIZ/NDMvPegqXlDkNX1Qk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ojC3MzHRkS3T3FcM1rx03aWS9EkdJmJ75TszfEjhNjhMR97oFSF7gGBaj/vCcdiJX
	 lL3aKI6onU8pFXPvJ2+vfTM9X0tcn00jrRp5s1HOFJCA8LUvC173da2vPJcqRR9I0g
	 lgFYmASjb9wcqt3yci7rLgFyIUvHORvw5PqGZ57ZKw4+vVYk839YY9W3/XA+EBI9n1
	 RoY5xXcX98hGpoS9jIGYSSw+C54dj7T4klJWYtY11BPQY5OAPuzpBS+Q9iCtRelsUV
	 C1mYhqvvUThcbxwm4U7PM2nKnb0BV+tIW886uiKzrQ4tE3TPSQdK7G3hOYXbvq+kiL
	 rstp2kqBD16hg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 370A640C45;
	Mon, 23 Feb 2026 10:23:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E6CFC237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 10:23:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E481040C13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 10:23:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KCdbBJU4oIEg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 10:23:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F205340AAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F205340AAB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F205340AAB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 10:23:08 +0000 (UTC)
X-CSE-ConnectionGUID: lXiQVITRStajrqmxnGJ/0A==
X-CSE-MsgGUID: WinJFuSpQRynT+TMOHIBAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="76444799"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="76444799"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 02:23:09 -0800
X-CSE-ConnectionGUID: aaOSecFwSrq8HVyoLq39JA==
X-CSE-MsgGUID: FAlIh0k0S8CRcvOq5w/HBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="246121875"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 23 Feb 2026 02:23:04 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 61BF52816F;
 Mon, 23 Feb 2026 10:23:02 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Natalia Wochtman <natalia.wochtman@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Mon, 23 Feb 2026 10:52:17 +0100
Message-ID: <20260223095222.3205363-11-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260223095222.3205363-1-larysa.zaremba@intel.com>
References: <20260223095222.3205363-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771842189; x=1803378189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ho6uKwZTjfD8R8eQTjIOJqbiTAM698Fa7rzKNku20yc=;
 b=Q4HCpczHD8q3epe0Adp+bLYJyGCmVViJ7MCAfXcJJqj5vjg8UFShXONo
 iajDVRX1dj9/KEx1zoFLb3VbJkpfCdtB39f/nzZTLHY4rWwv80CVmGGzX
 7B3xlSmqBcQqW/Onf5pdUWdwH+oLxdkVLGhlQB2QjUH2utqXbSAF2UunL
 DdtgOr6ZN3tPgjhz4hF0iZiZtw3qPVCTEacLofOR3o99SuQWWUCzNzNep
 99mu/lOIAf6QK5qlvpKx0eK8OtGqx8Sqtf6V1DzZ2nwvffvQ3KHwr6YgB
 /tTLUiYssWcnKrTLcH9MC+Rvv/C0nbzJWsHCoBYV19nDMihYlz5XijJa6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q4HCpczH
Subject: [Intel-wired-lan] [PATCH iwl-next 10/10] ixgbevf: allow changing
 MTU when XDP program is attached
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:larysa.zaremba@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:mid,intel.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 19F35174CA9
X-Rspamd-Action: no action

xskxceiver attempts to change MTU after attaching XDP program,
ixgbevf rejects the request leading to test being failed.

Support MTU change operation even when XDP program is already attached,
perform the same frame size check as when attaching a program.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 24 +++++++++++++------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 606c6123d7eb..ccefb44c524e 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -4078,6 +4078,18 @@ static int ixgbevf_set_mac(struct net_device *netdev, void *p)
 	return 0;
 }
 
+static bool ixgbevf_xdp_mtu_ok(const struct ixgbevf_adapter *adapter,
+			       const struct bpf_prog *prog, unsigned int mtu)
+{
+	u32 frame_size = mtu + LIBETH_RX_LL_LEN;
+	bool requires_mbuf;
+
+	requires_mbuf = frame_size > IXGBEVF_RX_PAGE_LEN(LIBETH_XDP_HEADROOM) ||
+			adapter->flags & IXGBEVF_FLAG_HSPLIT;
+
+	return prog->aux->xdp_has_frags || !requires_mbuf;
+}
+
 /**
  * ixgbevf_change_mtu - Change the Maximum Transfer Unit
  * @netdev: network interface device structure
@@ -4093,8 +4105,10 @@ static int ixgbevf_change_mtu(struct net_device *netdev, int new_mtu)
 	int ret;
 
 	/* prevent MTU being changed to a size unsupported by XDP */
-	if (adapter->xdp_prog) {
-		dev_warn(&adapter->pdev->dev, "MTU cannot be changed while XDP program is loaded\n");
+	if (adapter->xdp_prog &&
+	    !ixgbevf_xdp_mtu_ok(adapter, adapter->xdp_prog, new_mtu)) {
+		netdev_warn(netdev,
+			    "MTU value provided cannot be set while current XDP program is attached\n");
 		return -EPERM;
 	}
 
@@ -4257,14 +4271,10 @@ ixgbevf_features_check(struct sk_buff *skb, struct net_device *dev,
 static int ixgbevf_xdp_setup(struct net_device *dev, struct bpf_prog *prog,
 			     struct netlink_ext_ack *extack)
 {
-	u32 frame_size = READ_ONCE(dev->mtu) + LIBETH_RX_LL_LEN;
 	struct ixgbevf_adapter *adapter = netdev_priv(dev);
 	struct bpf_prog *old_prog;
-	bool requires_mbuf;
 
-	requires_mbuf = frame_size > IXGBEVF_RX_PAGE_LEN(LIBETH_XDP_HEADROOM) ||
-			adapter->flags & IXGBEVF_FLAG_HSPLIT;
-	if (prog && !prog->aux->xdp_has_frags && requires_mbuf) {
+	if (prog && !ixgbevf_xdp_mtu_ok(adapter, prog, READ_ONCE(dev->mtu))) {
 		NL_SET_ERR_MSG_MOD(extack,
 				   "Configured MTU or HW limitations require non-linear frames and XDP prog does not support frags");
 		return -EOPNOTSUPP;
-- 
2.52.0

