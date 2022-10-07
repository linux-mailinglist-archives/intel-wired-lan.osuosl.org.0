Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 156625F8030
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 23:39:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9612560B3B;
	Fri,  7 Oct 2022 21:39:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9612560B3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665178795;
	bh=ymPhcxtOZrkP/JpKg105iRiI09gC5chCCA5ReWm90OU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8iJVOXuxg1q63//sPxkLojWJIh/lzJju16g8GKNUFOgwF6FCqPU426mT/qC98ANnD
	 b57xLeAy4wchLeu9rZy7kCtJ9NX4BWxjPSdsiAKhtZBcw+2GTDUhglb35MLfJl2zI2
	 YYn3CpwVzsJkWOjAswqDace1aD6NxC9u814wNy5yE3gR/eaTHOIT9dXXlbizqNcvCj
	 gJONVDsTNO75irF4XDvGzIlB1g/bZtU41VQRXZtfxz0lHXccRGQz3Geg1ndK1o50M6
	 zWBkL74fXEJQH+oEqaptJ0o5EY5Qd0J0B+LkPJ853QW7gL9p4SCFZauqZ0boZGxs3N
	 5YqYrZs1XdE5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hwVLap8NO7ts; Fri,  7 Oct 2022 21:39:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D2E660B05;
	Fri,  7 Oct 2022 21:39:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D2E660B05
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C62B11BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 99402404F5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99402404F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nrAkShFZ8MD2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 21:39:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3F304018F
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3F304018F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:39 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id s206so5734297pgs.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 14:39:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UYcP5d4aVc4DITBtO91mYOhK66gC9vjutv9fpNeGoEE=;
 b=WHbyoDyKg8Imd7yYSBStjz5/GYAHhc4jR7CG8SjlBDj0kygHCguPkHsv1cxlJpXAwU
 Qh5LxyBeTCFTeyVotExIU5ibqRQ0NWKm88TUAkkCFrEumWLL4PBocNtFNHIRPzXjZO8+
 q1wKrMC3DNgaeO3hk9xxVpmid9IrDDSOTA5uGCdtHtD8iiIbnlSOl99VHa3zjgxgnUgI
 ZOtuQWyzdSEZlkBoHv7wwvWW42IOrnuT3xrdHDoFsvL/g08VHvXqyBQMiqofUDdKOCT5
 dX5uJc0d0I08JDG6bxRmGUpA1AJBIKtrBkFHCZs5H1ExMvSljsXYfvvgHs/2vOuO/0KQ
 6D/g==
X-Gm-Message-State: ACrzQf0R2Pt7w+FD9hpL4u42CzhLmKW+opiZ0keqWEHV6xhuhlDLgjML
 v74NyNWl+J5Goc1W0oe60OG3uVZHaGbdNJYYPoZBxdHaYffQzVl/tVzXCQ0MJ5dUWV5P8QUIhGW
 ryrZasnKX69ADeZ3I1jrvlQIbcr8ZyyPw8q6ni6hDqV+qeEPfa5u2sH8cIMWsnYE76y23fZNlaR
 BoYLXhrg==
X-Google-Smtp-Source: AMsMyM7SgX9AMYL0vd3xtRxUfxWspnAMPI59qKWwlBPrnOOSJU5qX01Y/y02OzY8zAeUL8dxBnnk7w==
X-Received: by 2002:a63:6cca:0:b0:43c:7998:8a78 with SMTP id
 h193-20020a636cca000000b0043c79988a78mr6207622pgc.600.1665178779014; 
 Fri, 07 Oct 2022 14:39:39 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 m24-20020a17090a7f9800b001f2fa09786asm2012655pjl.19.2022.10.07.14.39.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 14:39:38 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 14:38:42 -0700
Message-Id: <1665178723-52902-4-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665178723-52902-1-git-send-email-jdamato@fastly.com>
References: <1665178723-52902-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=UYcP5d4aVc4DITBtO91mYOhK66gC9vjutv9fpNeGoEE=;
 b=pT0mtqDkL/bP+4d+lqvFN2dJQDnjGK14Rqw0b7yhQGYYDv5bwcCIhxZt/BY2mkZigD
 wKYZy5oX6XkX9i4Obo0Pr+o/bK9OGWRHzhREVTKgN3wP85Bz72SIflioIeB6rFbn2Mso
 KrpzPq9Y1n9WPZ7efNFIHhx1cfNeN1OnkPsRI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=pT0mtqDk
Subject: [Intel-wired-lan] [next-queue v4 3/4] i40e: Record number of RXes
 cleaned during NAPI
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>, kuba@kernel.org,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adjust i40e_clean_rx_irq to accept an out parameter which records the number of
RX packets cleaned.

No XDP related code is modified and care has been taken to avoid changing
control flow.

Signed-off-by: Joe Damato <jdamato@fastly.com>
Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Acked-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 274de1c..5901e58 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2425,6 +2425,7 @@ static void i40e_inc_ntc(struct i40e_ring *rx_ring)
  * i40e_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: rx descriptor ring to transact packets on
  * @budget: Total limit on number of packets to process
+ * @rx_cleaned: Out parameter of the number of packets processed
  *
  * This function provides a "bounce buffer" approach to Rx interrupt
  * processing.  The advantage to this is that on systems that have
@@ -2433,7 +2434,8 @@ static void i40e_inc_ntc(struct i40e_ring *rx_ring)
  *
  * Returns amount of work completed
  **/
-static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
+static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
+			     unsigned int *rx_cleaned)
 {
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0, frame_sz = 0;
 	u16 cleaned_count = I40E_DESC_UNUSED(rx_ring);
@@ -2570,6 +2572,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 
 	i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);
 
+	*rx_cleaned = total_rx_packets;
+
 	/* guarantee a trip back through this routine if there was a failure */
 	return failure ? budget : (int)total_rx_packets;
 }
@@ -2693,11 +2697,13 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	struct i40e_vsi *vsi = q_vector->vsi;
 	struct i40e_ring *ring;
 	bool tx_clean_complete = true;
+	bool rx_clean_complete = true;
 	bool clean_complete = true;
 	bool arm_wb = false;
 	int budget_per_ring;
 	int work_done = 0;
 	unsigned int tx_cleaned = 0;
+	unsigned int rx_cleaned = 0;
 
 	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
 		napi_complete(napi);
@@ -2738,12 +2744,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	i40e_for_each_ring(ring, q_vector->rx) {
 		int cleaned = ring->xsk_pool ?
 			      i40e_clean_rx_irq_zc(ring, budget_per_ring) :
-			      i40e_clean_rx_irq(ring, budget_per_ring);
+			      i40e_clean_rx_irq(ring, budget_per_ring, &rx_cleaned);
 
 		work_done += cleaned;
 		/* if we clean as many as budgeted, we must not be done */
 		if (cleaned >= budget_per_ring)
-			clean_complete = false;
+			clean_complete = rx_clean_complete = false;
 	}
 
 	/* If work not completed, return budget and polling will return */
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
