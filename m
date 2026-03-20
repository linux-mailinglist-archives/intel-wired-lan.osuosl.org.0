Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yM4HOf6hvGns1gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 02:25:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 537E72D4A77
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 02:25:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A10984529;
	Fri, 20 Mar 2026 01:25:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HL4hBcYKa2r5; Fri, 20 Mar 2026 01:25:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28A3084535
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773969916;
	bh=pcE3963mtoxNpsjtfnMGkLcMdWR/4YpWXWFsCalwpQc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=idv/UDASpYRkOcMUCMEhBxL0QArlfs0xqANEF/AGe+ar/JEngSFm82LnCSHJFIQ7d
	 fUjS0mxP8wqxvNIFm5GeYQ9e245I4IeWJlt+Bqs5B0zjS4+GN4PxfN+apZ+nEfpz3X
	 2yz6NpusP8k4zWiNpcu/c3MM8PTn73fWPeVtQtPDxxiR7BjV4mRVyGBrGVA+GuThXi
	 IFYUkjKVZHpp2SUgvw/M838ZmHsu5UYtZzNbb+HKh4fOYw2rIAaf70WwHQdEiLWIxO
	 AjJ7ZaCw2qteyaBXWx9/cxBw4uYY9piKnKeuOyhJp2IEq67MY0jvhjN/8Ye4kbGoQY
	 OYracreZkVhxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28A3084535;
	Fri, 20 Mar 2026 01:25:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 29AAC1B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 01:25:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D5B8441BB3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 01:25:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7whM8ZgdJPoB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 01:25:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=74.125.82.180;
 helo=mail-dy1-f180.google.com; envelope-from=stfomichev@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 133DC41BAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 133DC41BAA
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com
 [74.125.82.180])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 133DC41BAA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 01:25:12 +0000 (UTC)
Received: by mail-dy1-f180.google.com with SMTP id
 5a478bee46e88-2c10a2e2cd1so849773eec.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 18:25:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773969912; x=1774574712;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=pcE3963mtoxNpsjtfnMGkLcMdWR/4YpWXWFsCalwpQc=;
 b=avjbcDHeF9zse+cL53hYmBSDq3FzLdHq98ZFF6VYlbEMqJh8KCVRlDe1hegAU8B2Qs
 pKNAe5xCN0qUFHulPQ9mmfQVV0651EftrJX1VvwEu90k8+//95CNp4hw1ZxuAYYtbwDu
 gIy/IxWmiVq4RbV2SgP2RKANh9kA0ruA1YqYBTVl9Gx4PDM2I5qUBje8jCTM0cM58jNa
 W0WznYy9mBMkzXjzJAi9dusycTv6NQUI0rUJMEshfTMOMQ3Kcm66PQwkeoyoAH4VyZ5X
 JWmFeL3b/AiU2MJNnd0U7XoIWIzIIT7wH0yrbDS0vD8IPTafeP2L3kio5i182to4j2Wc
 jQSg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW+pjPeJ3vsPbFJWS7njbZ5snSzJAKTuN2ArT7CxSdbsskBRK9BWvgbGPCz61u+c/IEgfCCl2IerostrW0V2+A=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy+9FnXRu48yRTiin2JaJIniGqS01SoPiGnb7hMo6nf5aR8aK/R
 YcUqLlxE5eRkl2egEU74oQnYX2c/1TuMELsNRRc45R9lnE+e0yllplI=
X-Gm-Gg: ATEYQzwFbUfQ2oW+bh6Jv/XQhEjGdHkpdrmaQfEB2osFvw5DXEx2HsxRuPB2aK0E+gC
 o0Gah7BK+SiRPClnurcd8BWLvAm4YrxbQlVgEhcmxiFxBPLbCjYbVffeqSqwiOGuruktuv7oa69
 Dtgsvp+hAPZ4HzsncG+Aa6KFkLCfyLZnL+7gduFkOiYncceiBK6L3eFZ9HEJs1Iaei5TQMOPUSl
 ocPs6DRhD96fVRY2tc/EoLyfu1qjkn/YcIKIfrQd1vrOqyfVwdGXEwVibV6zhdtwtivItqct48B
 PXEi6UyamjKM0WaP/My64wQpNX+wPkxN6nCqBtXY3wg2wUEfG7vNb+f59/fgvlayGoi6T6rHpcl
 II/vt3rnWXgFbVddwGHtzvEcfcjcCCxxOP/g2N28IPLusBIPSMKSquiNhW0IVVfWAoeSRUvsDbv
 qcsYAEunAP6a0tyTFRXpOKZZFJQ8T7S7cbX3FLLrLer6C78nxqCcCw3yo8e48J3ee8t4INFa9x2
 X/9WbT8cpDo5B/vsg==
X-Received: by 2002:a05:7300:5b95:b0:2be:b00c:d083 with SMTP id
 5a478bee46e88-2c1097ecb5bmr849410eec.35.1773969911672; 
 Thu, 19 Mar 2026 18:25:11 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2c10b14c985sm1150838eec.2.2026.03.19.18.25.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2026 18:25:11 -0700 (PDT)
From: Stanislav Fomichev <sdf@fomichev.me>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, corbet@lwn.net,
 skhan@linuxfoundation.org, andrew+netdev@lunn.ch,
 michael.chan@broadcom.com, pavan.chebbi@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 saeedm@nvidia.com, tariqt@nvidia.com, mbloch@nvidia.com,
 alexanderduyck@fb.com, kernel-team@meta.com, johannes@sipsolutions.net,
 sd@queasysnail.net, jianbol@nvidia.com, dtatulea@nvidia.com,
 sdf@fomichev.me, mohsin.bashr@gmail.com, jacob.e.keller@intel.com,
 willemb@google.com, skhawaja@google.com, bestswngs@gmail.com,
 aleksandr.loktionov@intel.com, kees@kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kselftest@vger.kernel.org, leon@kernel.org
Date: Thu, 19 Mar 2026 18:24:55 -0700
Message-ID: <20260320012501.2033548-8-sdf@fomichev.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260320012501.2033548-1-sdf@fomichev.me>
References: <20260320012501.2033548-1-sdf@fomichev.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=fomichev.me
Subject: [Intel-wired-lan] [PATCH net-next v3 07/13] bnxt: convert to
 ndo_set_rx_mode_async
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:sdf@fomichev.me,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,fomichev.me,gmail.com,vger.kernel.org,lists.osuosl.org];
	FORGED_SENDER(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[fomichev.me];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,broadcom.com:email];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 537E72D4A77
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert bnxt from ndo_set_rx_mode to ndo_set_rx_mode_async.
bnxt_set_rx_mode, bnxt_mc_list_updated and bnxt_uc_list_updated
now take explicit uc/mc list parameters and iterate with
netdev_hw_addr_list_for_each instead of netdev_for_each_{uc,mc}_addr.

The bnxt_cfg_rx_mode internal caller passes the real lists under
netif_addr_lock_bh.

BNXT_RX_MASK_SP_EVENT is still used here, next patch converts to
the direct call.

Cc: Michael Chan <michael.chan@broadcom.com>
Cc: Pavan Chebbi <pavan.chebbi@broadcom.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
---
 drivers/net/ethernet/broadcom/bnxt/bnxt.c | 31 +++++++++++++----------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index c982aac714d1..225217b32e4b 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -11040,7 +11040,8 @@ static int bnxt_setup_nitroa0_vnic(struct bnxt *bp)
 }
 
 static int bnxt_cfg_rx_mode(struct bnxt *);
-static bool bnxt_mc_list_updated(struct bnxt *, u32 *);
+static bool bnxt_mc_list_updated(struct bnxt *, u32 *,
+				 const struct netdev_hw_addr_list *);
 
 static int bnxt_init_chip(struct bnxt *bp, bool irq_re_init)
 {
@@ -11130,7 +11131,7 @@ static int bnxt_init_chip(struct bnxt *bp, bool irq_re_init)
 	} else if (bp->dev->flags & IFF_MULTICAST) {
 		u32 mask = 0;
 
-		bnxt_mc_list_updated(bp, &mask);
+		bnxt_mc_list_updated(bp, &mask, &bp->dev->mc);
 		vnic->rx_mask |= mask;
 	}
 
@@ -13519,17 +13520,17 @@ void bnxt_get_ring_drv_stats(struct bnxt *bp,
 		bnxt_get_one_ring_drv_stats(bp, stats, &bp->bnapi[i]->cp_ring);
 }
 
-static bool bnxt_mc_list_updated(struct bnxt *bp, u32 *rx_mask)
+static bool bnxt_mc_list_updated(struct bnxt *bp, u32 *rx_mask,
+				 const struct netdev_hw_addr_list *mc)
 {
 	struct bnxt_vnic_info *vnic = &bp->vnic_info[BNXT_VNIC_DEFAULT];
-	struct net_device *dev = bp->dev;
 	struct netdev_hw_addr *ha;
 	u8 *haddr;
 	int mc_count = 0;
 	bool update = false;
 	int off = 0;
 
-	netdev_for_each_mc_addr(ha, dev) {
+	netdev_hw_addr_list_for_each(ha, mc) {
 		if (mc_count >= BNXT_MAX_MC_ADDRS) {
 			*rx_mask |= CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST;
 			vnic->mc_list_count = 0;
@@ -13553,17 +13554,17 @@ static bool bnxt_mc_list_updated(struct bnxt *bp, u32 *rx_mask)
 	return update;
 }
 
-static bool bnxt_uc_list_updated(struct bnxt *bp)
+static bool bnxt_uc_list_updated(struct bnxt *bp,
+				 const struct netdev_hw_addr_list *uc)
 {
-	struct net_device *dev = bp->dev;
 	struct bnxt_vnic_info *vnic = &bp->vnic_info[BNXT_VNIC_DEFAULT];
 	struct netdev_hw_addr *ha;
 	int off = 0;
 
-	if (netdev_uc_count(dev) != (vnic->uc_filter_count - 1))
+	if (netdev_hw_addr_list_count(uc) != (vnic->uc_filter_count - 1))
 		return true;
 
-	netdev_for_each_uc_addr(ha, dev) {
+	netdev_hw_addr_list_for_each(ha, uc) {
 		if (!ether_addr_equal(ha->addr, vnic->uc_list + off))
 			return true;
 
@@ -13572,7 +13573,9 @@ static bool bnxt_uc_list_updated(struct bnxt *bp)
 	return false;
 }
 
-static void bnxt_set_rx_mode(struct net_device *dev)
+static void bnxt_set_rx_mode(struct net_device *dev,
+			     struct netdev_hw_addr_list *uc,
+			     struct netdev_hw_addr_list *mc)
 {
 	struct bnxt *bp = netdev_priv(dev);
 	struct bnxt_vnic_info *vnic;
@@ -13593,7 +13596,7 @@ static void bnxt_set_rx_mode(struct net_device *dev)
 	if (dev->flags & IFF_PROMISC)
 		mask |= CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS;
 
-	uc_update = bnxt_uc_list_updated(bp);
+	uc_update = bnxt_uc_list_updated(bp, uc);
 
 	if (dev->flags & IFF_BROADCAST)
 		mask |= CFA_L2_SET_RX_MASK_REQ_MASK_BCAST;
@@ -13601,7 +13604,7 @@ static void bnxt_set_rx_mode(struct net_device *dev)
 		mask |= CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST;
 		vnic->mc_list_count = 0;
 	} else if (dev->flags & IFF_MULTICAST) {
-		mc_update = bnxt_mc_list_updated(bp, &mask);
+		mc_update = bnxt_mc_list_updated(bp, &mask, mc);
 	}
 
 	if (mask != vnic->rx_mask || uc_update || mc_update) {
@@ -13620,7 +13623,7 @@ static int bnxt_cfg_rx_mode(struct bnxt *bp)
 	bool uc_update;
 
 	netif_addr_lock_bh(dev);
-	uc_update = bnxt_uc_list_updated(bp);
+	uc_update = bnxt_uc_list_updated(bp, &dev->uc);
 	netif_addr_unlock_bh(dev);
 
 	if (!uc_update)
@@ -15871,7 +15874,7 @@ static const struct net_device_ops bnxt_netdev_ops = {
 	.ndo_start_xmit		= bnxt_start_xmit,
 	.ndo_stop		= bnxt_close,
 	.ndo_get_stats64	= bnxt_get_stats64,
-	.ndo_set_rx_mode	= bnxt_set_rx_mode,
+	.ndo_set_rx_mode_async	= bnxt_set_rx_mode,
 	.ndo_eth_ioctl		= bnxt_ioctl,
 	.ndo_validate_addr	= eth_validate_addr,
 	.ndo_set_mac_address	= bnxt_change_mac_addr,
-- 
2.53.0

