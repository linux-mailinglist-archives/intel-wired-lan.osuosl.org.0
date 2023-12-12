Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1705780EED1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 15:30:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99CF0418BB;
	Tue, 12 Dec 2023 14:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99CF0418BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702391409;
	bh=MYYm/89Qed2J1eazMluBkaXTTUz35DQ3ZFOX/YW/g3s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8yyz7vZN2g/TRc0iV7iUgoox7a5849ORoF+58QYaoPa+VbUXvoYuThBB5P4d6UrAs
	 zpumQxqMPs0+fuuzFyqsUnmvH+nF31JOCMCqcwfnHV+Dp617KrGj1mKhi31ZgQX2Wg
	 JvR/5FZ1+q9rdp1EPPRjSGsWop0qEg2u26BU5uBRGoHHwtntZTAfFp1rSpNiRnL3VJ
	 PisnSRI5FYrlT3rUsbmDS6sNQiG4VGoM7CaroEIOyzAPwqDAAcl2btVSrQPe9JZ1T3
	 AFAEEYgvPedO+Zf42hF069Wbur+yJdEe103D9dl0OHREUlGlVGJxmU9NxwRd7HaMtn
	 f5EhZSoX5ny2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L6bunhBdQS91; Tue, 12 Dec 2023 14:30:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3C80417F5;
	Tue, 12 Dec 2023 14:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3C80417F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B58991BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 263D882798
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 263D882798
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jbqeJDsd5kMu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 14:29:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E054827F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E054827F3
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1887355"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; 
   d="scan'208";a="1887355"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 06:29:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1104923746"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="1104923746"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga005.fm.intel.com with ESMTP; 12 Dec 2023 06:29:48 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 12 Dec 2023 15:27:51 +0100
Message-ID: <20231212142752.935000-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231212142752.935000-1-aleksander.lobakin@intel.com>
References: <20231212142752.935000-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702391397; x=1733927397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tC4nqzPPkN2y5U1+kXQLWaCibaTxMNcqk0oLrJfP9KY=;
 b=jYm2VVR4BcniiZat3gwss5wEsDLT4Ts5U3xEbBGvObHAEXtTWT3wT8l+
 YJzNo+EWkVQtQXOvfmmEOZuDLnDC1jXNTVH4SZwihEzFoVgFZaT5m5hXx
 njXgAPrbMnJwoOSm6PMbfi7voax4ej6ZK77usvhLArdzH4Lf+3TAsVp0R
 Q44j/qvkeQk8gOlgFWf9CJkgSah3C/9rQu9jOKomhHTdqU4WA+tP6c1R8
 cp4vUmm5oeWvW8n8jlu9//yj+ad61B+9/MvkxnJI83KXgg/5xRr2dPbB2
 mx34drRapF7FMl55fi4DMz2baCFcZlIZwAbqgFlL29qLGrcgE0gXN/gzy
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jYm2VVR4
Subject: [Intel-wired-lan] [PATCH net-next 1/2] ethtool: add SET for
 TCP_DATA_SPLIT ringparam
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Andrew Lunn <andrew@lunn.ch>,
 Jiri Pirko <jiri@resnulli.us>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Follow up commit 9690ae604290 ("ethtool: add header/data split
indication") and add the set part of Ethtool's header split, i.e.
ability to enable/disable header split via the Ethtool Netlink
interface. This might be helpful to optimize the setup for particular
workloads, for example, to avoid XDP frags, and so on.
A driver should advertise ``ETHTOOL_RING_USE_TCP_DATA_SPLIT`` in its
ops->supported_ring_params to allow doing that. "Unknown" passed from
the userspace when the header split is supported means the driver is
free to choose the preferred state.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/ethtool.h |  2 ++
 net/ethtool/rings.c     | 12 ++++++++++++
 2 files changed, 14 insertions(+)

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index deb683d3360f..67b30940234b 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -95,6 +95,7 @@ struct kernel_ethtool_ringparam {
  * @ETHTOOL_RING_USE_TX_PUSH: capture for setting tx_push
  * @ETHTOOL_RING_USE_RX_PUSH: capture for setting rx_push
  * @ETHTOOL_RING_USE_TX_PUSH_BUF_LEN: capture for setting tx_push_buf_len
+ * @ETHTOOL_RING_USE_TCP_DATA_SPLIT: capture for setting tcp_data_split
  */
 enum ethtool_supported_ring_param {
 	ETHTOOL_RING_USE_RX_BUF_LEN		= BIT(0),
@@ -102,6 +103,7 @@ enum ethtool_supported_ring_param {
 	ETHTOOL_RING_USE_TX_PUSH		= BIT(2),
 	ETHTOOL_RING_USE_RX_PUSH		= BIT(3),
 	ETHTOOL_RING_USE_TX_PUSH_BUF_LEN	= BIT(4),
+	ETHTOOL_RING_USE_TCP_DATA_SPLIT		= BIT(5),
 };
 
 #define __ETH_RSS_HASH_BIT(bit)	((u32)1 << (bit))
diff --git a/net/ethtool/rings.c b/net/ethtool/rings.c
index fb09f774ea01..b7865a14fdf8 100644
--- a/net/ethtool/rings.c
+++ b/net/ethtool/rings.c
@@ -124,6 +124,8 @@ const struct nla_policy ethnl_rings_set_policy[] = {
 	[ETHTOOL_A_RINGS_RX_JUMBO]		= { .type = NLA_U32 },
 	[ETHTOOL_A_RINGS_TX]			= { .type = NLA_U32 },
 	[ETHTOOL_A_RINGS_RX_BUF_LEN]            = NLA_POLICY_MIN(NLA_U32, 1),
+	[ETHTOOL_A_RINGS_TCP_DATA_SPLIT]	=
+		NLA_POLICY_MAX(NLA_U8, ETHTOOL_TCP_DATA_SPLIT_ENABLED),
 	[ETHTOOL_A_RINGS_CQE_SIZE]		= NLA_POLICY_MIN(NLA_U32, 1),
 	[ETHTOOL_A_RINGS_TX_PUSH]		= NLA_POLICY_MAX(NLA_U8, 1),
 	[ETHTOOL_A_RINGS_RX_PUSH]		= NLA_POLICY_MAX(NLA_U8, 1),
@@ -145,6 +147,14 @@ ethnl_set_rings_validate(struct ethnl_req_info *req_info,
 		return -EOPNOTSUPP;
 	}
 
+	if (tb[ETHTOOL_A_RINGS_TCP_DATA_SPLIT] &&
+	    !(ops->supported_ring_params & ETHTOOL_RING_USE_TCP_DATA_SPLIT)) {
+		NL_SET_ERR_MSG_ATTR(info->extack,
+				    tb[ETHTOOL_A_RINGS_TCP_DATA_SPLIT],
+				    "setting TCP data split is not supported");
+		return -EOPNOTSUPP;
+	}
+
 	if (tb[ETHTOOL_A_RINGS_CQE_SIZE] &&
 	    !(ops->supported_ring_params & ETHTOOL_RING_USE_CQE_SIZE)) {
 		NL_SET_ERR_MSG_ATTR(info->extack,
@@ -202,6 +212,8 @@ ethnl_set_rings(struct ethnl_req_info *req_info, struct genl_info *info)
 	ethnl_update_u32(&ringparam.tx_pending, tb[ETHTOOL_A_RINGS_TX], &mod);
 	ethnl_update_u32(&kernel_ringparam.rx_buf_len,
 			 tb[ETHTOOL_A_RINGS_RX_BUF_LEN], &mod);
+	ethnl_update_u8(&kernel_ringparam.tcp_data_split,
+			tb[ETHTOOL_A_RINGS_TCP_DATA_SPLIT], &mod);
 	ethnl_update_u32(&kernel_ringparam.cqe_size,
 			 tb[ETHTOOL_A_RINGS_CQE_SIZE], &mod);
 	ethnl_update_u8(&kernel_ringparam.tx_push,
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
