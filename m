Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAC7C820F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:19:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9392610DE;
	Mon, 24 Nov 2025 18:19:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6OjVoU_6bSIH; Mon, 24 Nov 2025 18:19:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F46C610D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764008358;
	bh=fx59kZobOiLlkjIJkhyrAD4JK62swHthcfDZB+hD/ag=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4kVugaKuH5dhBfAwsUv/cAVwGx+Oe/t2asrJkX98/1XlrVLXcfcoNmEZZugKrL7Td
	 Ct1mxz4zF+0EDKgduA9nxedEWp7W8TZEscMl1e6IC0g40nxNW+Rx6guVP7cKIHKQsG
	 SQPm//7uRmtB6gR8K/7mrV7mynL3kmiMzw6/gdw07iwP0QBGMVPmNiharrNNC6ROXH
	 h7ws4sqaoKyLEZZTpObVGoIK0Lq168HN6Zind24CjZVdKmwOxDBxJaMAz2/fwaIIJs
	 IoaM5Ow41zG5x7eLnniBt5qnQHzye7mJECGKIfhmPSKr11q4+z2qZLTpWnADV58lHS
	 tr//itlfck/og==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F46C610D1;
	Mon, 24 Nov 2025 18:19:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 40392E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3DCE0409C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RfDXxcvk1DW8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:19:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.44;
 helo=mail-oa1-f44.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6649940078
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6649940078
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com
 [209.85.160.44])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6649940078
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:15 +0000 (UTC)
Received: by mail-oa1-f44.google.com with SMTP id
 586e51a60fabf-3e2d1477b9cso3049163fac.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:19:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764008354; x=1764613154;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=fx59kZobOiLlkjIJkhyrAD4JK62swHthcfDZB+hD/ag=;
 b=kKPRj3EHnpE3xTXUEZRdlhyvgQB/t6vVxlhQyVfoqXPpw0nfMVny3iTk49xsIqqJJx
 SIZYgu/pAVngMeD5PxWAd9MfNIif7f3/QC9nMNrjJVQRHmkSjyHJXbJ2XHi//qetI4cW
 dIInSDcUr5DuPqK4ypnFYqG0phKANADSy2XvcyCuIOckZZN5oJ232A6n27RmPCT7eHLF
 T8+Zd00fLicrBz4eV8ONln+PLAqerUEwkMVFz+e5Q7w/OIFem3uzMN+3QvSs0L82tHaF
 PXrV5pV+HZfJOIXQigEK84+k+KX08zKzBXTVCrha25/0k7qxrCEe59QR+PJgZ+qiHhNr
 f0Lw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV5+DR1wieVaElyEDFf53Hum3LCQ0lIMhoBAVKTySkUcfTCCsh/1YkTcyY6CqKdMEpvUrwOHvjPu+QbiH6LMz8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy8vkgorVtuOXYNqPsTC1/pC977lZh9VNJ64YXXShNJkadSaN82
 QDIlPcFGGNvLOHBwbL0FzXSoxbkNNs7W6yzq7dxaZoYO933mVjyulrz2
X-Gm-Gg: ASbGnctENkOv23UmKKmlap0UevrIj2Q7/gtaB61GBzR4vidoHtXBy786z/qKFLBHLME
 eOB5sxwbRx5yKLhONX+6ZLWS950rOwdjkkrMPyt2XkPSZK9umsAeJ6tFe86o76gaMFYJzUnsI4Q
 6jSiN/vmycWc6yWBi37ReQ651AJ4CNtdwWLfXUSSlbE7V8DFQ9CK4IOdVRVRO++U9iy6b5rs72W
 W3z0uDn2fPhxcSEYuRigqAzFu+vFE6FMsc8sxW1oAu5Zi9PmCt4vLAmWUs5+voDl31NsS4Azxld
 WH9fIK0/xI0hEwdIW+ebpcu7ySvxs2G89Z92Xtss+j6KmnupQASCCoCExzwfdulM2RRK0Qjdbp2
 oSjvGWG40TsXU/tiFCqWeHF7jev3MARq8LVwFn6SW2Cj8vNl6nso7ctBAwUkMRGaIq0D7SeR1+o
 vLiXoUwdB7p5KbGvGCOTZ8zHE=
X-Google-Smtp-Source: AGHT+IEwktVlSteATKeuEe8h/9QjcpnuzOQ2EefOvhCo3grua4HzWEU7FL3f7+OF8FxvOlsqkr/Ozg==
X-Received: by 2002:a05:6808:6d85:b0:450:c09:92aa with SMTP id
 5614622812f47-451159c8719mr4723518b6e.12.1764008354294; 
 Mon, 24 Nov 2025 10:19:14 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:7::])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-65782831ed6sm3739360eaf.0.2025.11.24.10.19.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Nov 2025 10:19:13 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Mon, 24 Nov 2025 10:19:07 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-gxring_intel-v1-3-89be18d2a744@debian.org>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
To: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: michal.swiatkowski@linux.intel.com, michal.kubiak@intel.com, 
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2097; i=leitao@debian.org;
 h=from:subject:message-id; bh=+491Or4K+VhrXnrrDRxg/WQ8CB07m+mcC02v5a0qyfc=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJKGdlls4uF2OD5ZflG+F0iwa41aeAgQ4Ihuwn
 hGFDZDhfa+JAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSShnQAKCRA1o5Of/Hh3
 bb0ZEACJSTnwfdl5b4X6VciykMnuVqqwIXsWYeW0iyZYWA9qWLshkLMVysv0F6xh78Fa+xLzn7H
 AmrmhIacyMhiNi2INrkHO2iGdkP9/KbDFMCg1Pheai7btan8XjGK8+DSdrE2zabVLtikuc38322
 4muERaehJd1zzkYBhkWXRlruHYk4EvVFi9EYNsaeKi1mVaHdOLaXIWtW4jpKvHdowexCoGw8xkE
 N6bOLRzAE8qIi0B0p1ojfNKOikTbFFYlNBTurzKhGdMZb7ZgECg0tr9POBJvFwyorAiTF3lQ8hq
 AqoywzO1XZ7UvngnxRVrvpzxyJfU+a0AmUZHZaf2cEVLpNpms9mW6PmAdUYmee97ZwySLpRlMBc
 dbrxZEHwuB/Zie+8hy1teQ7vqb+w8c7H1bmqiFBw9gJI2HTtncCHJXJX5yPMe4hYmccwvm6VERg
 hs+c8ong69DQniXIgykU+jXCmT6iuD5LzqvkkuCq/dQgnWu/51pYcWr8oiHTnHNaKLkkBlfHmSa
 EnB8iDRFWjq23HhYBFbCQ2zSjZ5gvmqi3eq5szqZB4VDtg0XDcpGDerMz4Sm3wP0OREancJ9R2B
 HTfzJy35UWSwPFwyX01b8xXawoFKvDSSKuXf3ibTtaoaF7G6UtOzBBMClWonAanHisiUArwbxgx
 K1QAoeOOOkg3fPw==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next 3/8] ice: extract GRXRINGS from
 .get_rxnfc
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

Commit 84eaf4359c36 ("net: ethtool: add get_rx_ring_count callback to
optimize RX ring queries") added specific support for GRXRINGS callback,
simplifying .get_rxnfc.

Remove the handling of GRXRINGS in .get_rxnfc() by moving it to the new
.get_rx_ring_count().

This simplifies the RX ring count retrieval and aligns ice with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a1d9abee97e5..adb6e10ccb1b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3083,6 +3083,20 @@ static int ice_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 	return -EOPNOTSUPP;
 }
 
+/**
+ * ice_get_rx_ring_count - get RX ring count
+ * @netdev: network interface device structure
+ *
+ * Returns the number of RX rings.
+ */
+static u32 ice_get_rx_ring_count(struct net_device *netdev)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+
+	return vsi->rss_size;
+}
+
 /**
  * ice_get_rxnfc - command to get Rx flow classification rules
  * @netdev: network interface device structure
@@ -3103,10 +3117,6 @@ ice_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	hw = &vsi->back->hw;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = vsi->rss_size;
-		ret = 0;
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = hw->fdir_active_fltr;
 		/* report total rule count */
@@ -4853,6 +4863,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.get_sset_count		= ice_get_sset_count,
 	.get_rxnfc		= ice_get_rxnfc,
 	.set_rxnfc		= ice_set_rxnfc,
+	.get_rx_ring_count	= ice_get_rx_ring_count,
 	.get_ringparam		= ice_get_ringparam,
 	.set_ringparam		= ice_set_ringparam,
 	.nway_reset		= ice_nway_reset,

-- 
2.47.3

