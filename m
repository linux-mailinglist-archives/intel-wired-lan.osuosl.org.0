Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAdVEKovvGnquAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:17:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA412CFBFF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 18:17:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 423D9412D4;
	Thu, 19 Mar 2026 17:17:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J3hueeDvyw_3; Thu, 19 Mar 2026 17:17:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8B2D412EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773940642;
	bh=H3BlQ+dOv/udM0aaUOjA1M+YqN6bfxaU8xOaQjLz84I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X5A/wYsqm/J5FhI9fWdgE1KxYO1CmNGZ4vfDmPNspKjBCFUzdZCr8U/mCt6az6TZ/
	 qWgmaI/aB+yuxzTEd2xkEsIveGMuXwoEuq/P4BQlbqIA8YzsSIjXydKPtXbZwUNOnl
	 5iVFtWMZj+y/KFfwz8ftVSx6fcIYeUuSo19LI0yQxBD7wlenMHYY2ta0GgKlAWLuex
	 co85lRqfpBYsP1cCw2QceGED6RR9xbOP7VcsVyEOFygF5K1mgQyWtPJLMmeftx2t0d
	 0lA4WDH4gNoccVPhh8RX+32+fJr8hr45lVjTEIJHGIlDqF51H4ctijBrOufKcqPvl/
	 tn+eI1pPhTaVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8B2D412EC;
	Thu, 19 Mar 2026 17:17:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CED3A265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0B5B40283
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TaEnxpONsQju for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 17:17:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7F5294015A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F5294015A
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F5294015A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 17:17:18 +0000 (UTC)
Received: from ms-a2 (122.24.31.150.dy.iij4u.or.jp [150.31.24.122])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62JHH2oJ076820
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 20 Mar 2026 02:17:02 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, kohei.enju@gmail.com,
 Kohei Enju <kohei@enjuk.jp>
Date: Thu, 19 Mar 2026 17:16:43 +0000
Message-ID: <20260319171650.5815-3-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260319171650.5815-1-kohei@enjuk.jp>
References: <20260319171650.5815-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=H3BlQ+dOv/udM0aaUOjA1M+YqN6bfxaU8xOaQjLz84I=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1773940622; v=1;
 b=khPvm4sjbytDE+ryWZb5mvByATeK8ZG5rDM0TLZut7GnUr4dkiJejIBI6FccssNW
 ZvTFm+viZSy5xL9rSnfX5DnFGHNfmoemw6YAlbkuLuxv0k+v6p2Pl8gRUABgMEpH
 axpmLZouQiz05mhQUsvls/oVRKZfYFU8af7eCoa3pX7VoF25NBoJq2zyz/PqsZMt
 VwsBGHcD4RidF+buWK7nBSWQECF2p5sKsGpfvH3l8mPZec2PhrsZYCc3CYbkHnli
 U+qPsyP9HTLSu49T/yBh0E0+I9HO6MvvQvVTGNM4dvfbpItZKT5QXVvn4CRhScgS
 dRPf9Z5CBL3VJh2aGSHXgw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=khPvm4sj
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] i40e: add support for
 bpf_xdp_metadata_rx_hash()
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
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: AFA412CFBFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce i40e_xdp_rx_hash() which takes the same approach as
i40e_rx_hash() to extract the hash from RX descriptors.

Tested with X710 adapter using xdp_hw_metadata, and verified hash
consistency between bpf_xdp_metadata_rx_hash() and skb->hash.

Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 30 +++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_type.h |  5 ++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 7966d9cb8009..6b7e34b16a8d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4,6 +4,7 @@
 #include <generated/utsrelease.h>
 #include <linux/crash_dump.h>
 #include <linux/intel/libie/pctype.h>
+#include <linux/intel/libie/rx.h>
 #include <linux/if_bridge.h>
 #include <linux/if_macvlan.h>
 #include <linux/module.h>
@@ -13585,6 +13586,34 @@ static int i40e_xdp(struct net_device *dev,
 	}
 }
 
+static int i40e_xdp_rx_hash(const struct xdp_md *_ctx, u32 *hash,
+			    enum xdp_rss_hash_type *rss_type)
+{
+	const struct i40e_xdp_buff *ctx = (const void *)_ctx;
+	const union i40e_rx_desc *desc = ctx->desc;
+	struct libeth_rx_pt rx_ptype;
+	u8 raw_rx_ptype;
+	u64 status;
+
+	status = le64_to_cpu(desc->wb.qword1.status_error_len);
+	raw_rx_ptype = FIELD_GET(I40E_RXD_QW1_PTYPE_MASK, status);
+	rx_ptype = libie_rx_pt_parse(raw_rx_ptype);
+
+	if (!libeth_rx_pt_has_hash(ctx->xdp.rxq->dev, rx_ptype) ||
+	    FIELD_GET(I40E_RX_DESC_STATUS_FLTSTAT_MASK, status) !=
+		    I40E_RX_DESC_FLTSTAT_RSS_HASH)
+		return -ENODATA;
+
+	*hash = le32_to_cpu(desc->wb.qword0.hi_dword.rss);
+	*rss_type = rx_ptype.hash_type;
+
+	return 0;
+}
+
+static const struct xdp_metadata_ops i40e_xdp_metadata_ops = {
+	.xmo_rx_hash		= i40e_xdp_rx_hash,
+};
+
 static const struct net_device_ops i40e_netdev_ops = {
 	.ndo_open		= i40e_open,
 	.ndo_stop		= i40e_close,
@@ -13788,6 +13817,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 	i40e_vsi_config_netdev_tc(vsi, vsi->tc_config.enabled_tc);
 
 	netdev->netdev_ops = &i40e_netdev_ops;
+	netdev->xdp_metadata_ops = &i40e_xdp_metadata_ops;
 	netdev->watchdog_timeo = 5 * HZ;
 	i40e_set_ethtool_ops(netdev);
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index ed8bbdb586da..16a65c6e5153 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -4,6 +4,7 @@
 #ifndef _I40E_TYPE_H_
 #define _I40E_TYPE_H_
 
+#include <linux/bits.h>
 #include <uapi/linux/if_ether.h>
 #include "i40e_adminq.h"
 #include "i40e_hmc.h"
@@ -699,6 +700,10 @@ enum i40e_rx_desc_status_bits {
 	I40E_RX_DESC_STATUS_LAST /* this entry must be last!!! */
 };
 
+#define I40E_RX_DESC_STATUS_FLTSTAT_MASK                   \
+	GENMASK_ULL(I40E_RX_DESC_STATUS_FLTSTAT_SHIFT + 1, \
+		    I40E_RX_DESC_STATUS_FLTSTAT_SHIFT)
+
 #define I40E_RXD_QW1_STATUS_SHIFT	0
 #define I40E_RXD_QW1_STATUS_MASK	((BIT(I40E_RX_DESC_STATUS_LAST) - 1) \
 					 << I40E_RXD_QW1_STATUS_SHIFT)
-- 
2.51.0

