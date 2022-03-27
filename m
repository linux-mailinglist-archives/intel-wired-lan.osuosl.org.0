Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2764E98C3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Mar 2022 15:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1228080D41;
	Mon, 28 Mar 2022 13:53:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aFA6J803Bu4t; Mon, 28 Mar 2022 13:53:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1867580D69;
	Mon, 28 Mar 2022 13:53:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 016941BF426
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 06:37:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF69D60736
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 06:37:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bmau23Iw7EsO for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Mar 2022 06:36:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD478606F5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 06:36:59 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id jx9so11187265pjb.5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Mar 2022 23:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=Vxquc0x82lOVnxgO9GG3bLoj2bnOAjB9KKaly9b71eI=;
 b=Zacfa65VYT45Ed3HvNxEa/zSfJxhASFzdSnFgNAFfl2zaCIHVw7FfZuC2I8CM2rP5z
 Dck4y+sMWcDcoTnqjgDrzLVR4cW35Pf/iJMzWQGSYO3VGkfZuvNPIYMPeS2Za6lqpk+W
 Ojd1GvY20KgJ7HbeKe7kbOEtbtl0QbntQQEOA9FuLHPbcdh5rkQBE6+06UqA6VA6fCsD
 sqRWpUgH6vTTfRggawqLnMsYit5TB6/bwci2nsO3ysp9uW+vEiN+odgd7H6upDiwF2yN
 ySwAachEwUY7o9c47dRqWyhBBJXtnpub3k2M3V7NLJpY7qd2Lq0Tzfn6gbe+Dv0uP/mZ
 SAtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Vxquc0x82lOVnxgO9GG3bLoj2bnOAjB9KKaly9b71eI=;
 b=wlFiQDFQaCc0nqzaY6uQN6TnyYivEMW4PdF69QcbzYZBB3VdsARpId7iwC3gkQDxsD
 5hC66Z7fhOB5UnQkDFUQ5RDf5FM1k1bMGXvso7L3MCkxdh1PYGEvWtBzvLunRtppxEYp
 1dP0mFOzsmSjX73xKbeS/wW95gQcftAaOerEqLNbePIkuPA+cVgf1+X102Vp9tYIy5Y9
 EFEMRR4xVZ8uGkKmTpDLf1Lucz+P0fRlqH7r8RQI3Y2LWFO9zGi2VS5SgZ7IlWxUO9B+
 xnwU9CfHSC15qDHcp8nj+LCs/1xjc7+qqVTtRMxy0gSl+fyMQjtWbklTynUVheA1Bl1t
 3yUA==
X-Gm-Message-State: AOAM531laEYkR8+7O3j9O0AdDwAWT9lfl56cJw6jxrm/I4P4Q9PLyblQ
 xG89zN0eF+7EPfH9Wkidw7M=
X-Google-Smtp-Source: ABdhPJyaSjWXyZ/ieaqh8L/e97HlAPr2TIJNMayS2xqJXyF8IYR/UDytE58G5d57fMqS8Xl9dMSxag==
X-Received: by 2002:a17:902:e949:b0:14d:8ab1:919 with SMTP id
 b9-20020a170902e94900b0014d8ab10919mr20127331pll.122.1648363019396; 
 Sat, 26 Mar 2022 23:36:59 -0700 (PDT)
Received: from localhost ([115.220.243.108]) by smtp.gmail.com with ESMTPSA id
 b7-20020a056a00114700b004f7be3231d6sm11408373pfm.7.2022.03.26.23.36.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 26 Mar 2022 23:36:58 -0700 (PDT)
From: Xiaomeng Tong <xiam0nd.tong@gmail.com>
To: jesse.brandeburg@intel.com
Date: Sun, 27 Mar 2022 14:36:06 +0800
Message-Id: <20220327063606.7315-1-xiam0nd.tong@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Mon, 28 Mar 2022 13:53:50 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: i40e_main: fix a missing check on
 list iterator
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
Cc: pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Xiaomeng Tong <xiam0nd.tong@gmail.com>, jeffrey.t.kirsher@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The bug is here:
	ret = i40e_add_macvlan_filter(hw, ch->seid, vdev->dev_addr, &aq_err);

The list iterator 'ch' will point to a bogus position containing
HEAD if the list is empty or no element is found. This case must
be checked before any use of the iterator, otherwise it will
lead to a invalid memory access.

To fix this bug, use a new variable 'iter' as the list iterator,
while use the origin variable 'ch' as a dedicated pointer to
point to the found element.

Cc: stable@vger.kernel.org
Fixes: 1d8d80b4e4ff6 ("i40e: Add macvlan support on i40e")
Signed-off-by: Xiaomeng Tong <xiam0nd.tong@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 27 +++++++++++----------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 31b03fe78d3b..6224c98d275f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -7536,41 +7536,42 @@ static int i40e_fwd_ring_up(struct i40e_vsi *vsi, struct net_device *vdev,
 			    struct i40e_fwd_adapter *fwd)
 {
 	int ret = 0, num_tc = 1,  i, aq_err;
-	struct i40e_channel *ch, *ch_tmp;
+	struct i40e_channel *ch = NULL, *ch_tmp, *iter;
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
 
-	if (list_empty(&vsi->macvlan_list))
-		return -EINVAL;
-
 	/* Go through the list and find an available channel */
-	list_for_each_entry_safe(ch, ch_tmp, &vsi->macvlan_list, list) {
-		if (!i40e_is_channel_macvlan(ch)) {
-			ch->fwd = fwd;
+	list_for_each_entry_safe(iter, ch_tmp, &vsi->macvlan_list, list) {
+		if (!i40e_is_channel_macvlan(iter)) {
+			iter->fwd = fwd;
 			/* record configuration for macvlan interface in vdev */
 			for (i = 0; i < num_tc; i++)
 				netdev_bind_sb_channel_queue(vsi->netdev, vdev,
 							     i,
-							     ch->num_queue_pairs,
-							     ch->base_queue);
-			for (i = 0; i < ch->num_queue_pairs; i++) {
+							     iter->num_queue_pairs,
+							     iter->base_queue);
+			for (i = 0; i < iter->num_queue_pairs; i++) {
 				struct i40e_ring *tx_ring, *rx_ring;
 				u16 pf_q;
 
-				pf_q = ch->base_queue + i;
+				pf_q = iter->base_queue + i;
 
 				/* Get to TX ring ptr */
 				tx_ring = vsi->tx_rings[pf_q];
-				tx_ring->ch = ch;
+				tx_ring->ch = iter;
 
 				/* Get the RX ring ptr */
 				rx_ring = vsi->rx_rings[pf_q];
-				rx_ring->ch = ch;
+				rx_ring->ch = iter;
 			}
+			ch = iter;
 			break;
 		}
 	}
 
+	if (!ch)
+		return -EINVAL;
+
 	/* Guarantee all rings are updated before we update the
 	 * MAC address filter.
 	 */
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
