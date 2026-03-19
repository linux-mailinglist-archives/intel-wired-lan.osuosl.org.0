Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLpdGagvvGnquAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:17:28 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D46CE2CFBF4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:17:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6E6F61600;
	Thu, 19 Mar 2026 17:17:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5TXzkbcg7BYE; Thu, 19 Mar 2026 17:17:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B0FF61601
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773940643;
	bh=t7tQWDB599mgzXVu98rsjNCBJh04E4IB3vAFUErTcSE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5ceVWcIOl4xtxeM5QErlZGic2OqV672b4SOvX4tupQNTJWLljP2ujjntyGe8/N4oE
	 0/2kydChcXukJ8YT1r7Faa6RGmdajZ3eHrslogrEuJ2tqssZvQ4J7BnluWzW+C7oy6
	 nUpR+hpwYm2L1vI6dGHIoVXLsR/RKsmZr3DgML2ay1pJhqF82THzlOyAKsJ526rbkc
	 a5p27mNa25hMuVfgpyFYvc776MftV9AXNwnOtrxc21Q0kLdDysUr7Rsglt9Y6lh1XA
	 tjKoKrV6Z5ETAFf3eneGTkBAebA+xREDDR5mvp0bKDX5kHeyj3qz091QGYX4fgnpwI
	 3QSIK3OtH5aig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B0FF61601;
	Thu, 19 Mar 2026 17:17:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1619F265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 081B9822B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nm-32PbsKLbf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 17:17:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 41B828229F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41B828229F
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 41B828229F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:18 +0000 (UTC)
Received: from ms-a2 (122.24.31.150.dy.iij4u.or.jp [150.31.24.122])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62JHH6xw076845
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 20 Mar 2026 02:17:06 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, kohei.enju@gmail.com,
 Kohei Enju <kohei@enjuk.jp>
Date: Thu, 19 Mar 2026 17:16:44 +0000
Message-ID: <20260319171650.5815-4-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260319171650.5815-1-kohei@enjuk.jp>
References: <20260319171650.5815-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=t7tQWDB599mgzXVu98rsjNCBJh04E4IB3vAFUErTcSE=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1773940626; v=1;
 b=xEuAmbsWx2tlWHC2vSSvQu8Dm2r5gcipiR6jl9TiDD/9u3VYgSV0WVTOyC//dcRA
 M606VcjKCzGKSPqYbXEzE9ieGyqD7TwTEbadPcX6/Ld04jzG3tmEqbA6drzSWOoc
 gQh8tug2E9afijTz+drxS4Qq6Ze7rIBD38E9+atcDLq/mAnhOW2MkGP2ZlLb7F6Z
 oGAPOZgr93Im+OFpEV2QTKMWsw/htxVxmv4mgIrEiB81cJkafdJSqLFEDkeivAxh
 CH+Q1vWIByoUruJSn4YFcvtw9Fkckl5wTOV2+mJU0wJ5PTqcqsT30qmjcAiyxPCs
 /cjVRaFNtJmSQ8kCI/IBvA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=xEuAmbsW
Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/3] i40e: add support for
 bpf_xdp_metadata_rx_vlan_tag()
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,enjuk.jp];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: D46CE2CFBF4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce i40e_xdp_rx_vlan_tag() which takes the same approach as
i40e_process_skb_fields() to extract the VLAN tag from the RX
descriptor.

Tested with X710 adapter using xdp_hw_metadata, and confirmed that VLAN
tags match between bpf_xdp_metadata_rx_vlan_tag() and
skb->vlan_proto/vlan_tci.

Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6b7e34b16a8d..3749f32ef95a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13610,8 +13610,27 @@ static int i40e_xdp_rx_hash(const struct xdp_md *_ctx, u32 *hash,
 	return 0;
 }
 
+static int i40e_xdp_rx_vlan_tag(const struct xdp_md *_ctx, __be16 *vlan_proto,
+				u16 *vlan_tci)
+{
+	const struct i40e_xdp_buff *ctx = (const void *)_ctx;
+	const union i40e_rx_desc *desc = ctx->desc;
+	u64 status;
+
+	status = le64_to_cpu(desc->wb.qword1.status_error_len);
+
+	if (!(status & BIT(I40E_RX_DESC_STATUS_L2TAG1P_SHIFT)))
+		return -ENODATA;
+
+	*vlan_proto = cpu_to_be16(ETH_P_8021Q);
+	*vlan_tci = le16_to_cpu(desc->wb.qword0.lo_dword.l2tag1);
+
+	return 0;
+}
+
 static const struct xdp_metadata_ops i40e_xdp_metadata_ops = {
 	.xmo_rx_hash		= i40e_xdp_rx_hash,
+	.xmo_rx_vlan_tag	= i40e_xdp_rx_vlan_tag,
 };
 
 static const struct net_device_ops i40e_netdev_ops = {
-- 
2.51.0

