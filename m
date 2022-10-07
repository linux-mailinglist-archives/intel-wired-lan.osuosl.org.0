Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4913D5F802E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 23:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A69E4018F;
	Fri,  7 Oct 2022 21:39:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A69E4018F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665178791;
	bh=m4x0R1EUM8YzWb6NOBmywJjhPunFoIbkvMhrx1jX7j4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G3porzvwV38RN0Qsh9+YMQ0biDMsQBRRVq9i/MKIl51lcikSmzZ67LNNRp4pYFLvu
	 T3WGpV3/bQ9NL19CdQOOUtsHfJaOx5AOtglItvuzSEqbAa9SJQ7u3dn61GiCnZEbKS
	 H6Ru7B7wvG/auTW57hyL+jDCNoBhE9lS9yEGjQcIrzEFV/BKlFem2ynNwpUgrHHuEh
	 XZ7XFylSxAJlznoInMoXGy8zSB5Pbj7pwhWiiikqn8AK8bFTOZKw1h9HX73C02M8Fv
	 dCFuJEmI+RbQGbq7rt79Uvr4Mz7+pO6P9/l/OguKgNsenlsABG/hFKMynAdiUtOh7c
	 p2l2lWnBMQ9jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KgdtNIrCZ6tz; Fri,  7 Oct 2022 21:39:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D8BD4049B;
	Fri,  7 Oct 2022 21:39:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D8BD4049B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5FB271BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B0C0823C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B0C0823C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0KC01fl0cSDh for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 21:39:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 930FA823AB
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 930FA823AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:38 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id x6so5630180pll.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 14:39:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Y3GVIVAxpMC/VnvFXwEMfwYlp9ueZhYknYrdLAirqlQ=;
 b=A2ovVdoc0jIj+4h6qk20D8EdprVyIBgcsA06viAyx+9iCA7EceUDxn3b8UyT2G7SuG
 Yae5x+nAZAvMowCb0kdOJ4Fbx8hUTC+//IsnkZkmYJM/S+XE6tlbERUMaw725EqwrqOT
 OK+FwzPtiRPcQrmkECkLdvxI2+o4OMKqno/qgiRs8+cQTjKbNRU9Iv2sAeweQ/vZmJ4F
 VmcgyqRXAZJSAtYCE8SWnUtBqoTPjHx8rvQ+S5BGOCKql4kyH39LUJArByLFI57LpZfV
 bMQlf87NwOqjRoNT5gR7Lk2GqD7M5VN11LttrAiVsQCW/tZYECoEP8uOzzpVg/JzJbwg
 xa4A==
X-Gm-Message-State: ACrzQf1bqiVAO3tmFh1uAel+lXYkGNwoBJHYkVIcsFaeZoijdTt/7637
 xfND02Ed2DRcqY8ySq2jA+paZJv3Dnmxdz6nwy6odOfCPXUHnYbVSbHnuT4oHK/dZOnCenpLRtV
 8fQS0gtee7BKX4Z6EFHOQmoQ+UdvMvR9d/Ig8wYWNtNEBvMoUXwINtxLMWD1qQG4lOs0REVSmJl
 xV3GgTjw==
X-Google-Smtp-Source: AMsMyM6/lTafg+rb5cud9MMRvCMsoKqjewZRYjWiYreiHgG3mxPfZcTUeNMIVwuQKq2qm+OQdJC0QQ==
X-Received: by 2002:a17:90b:1648:b0:20b:f0ae:2169 with SMTP id
 il8-20020a17090b164800b0020bf0ae2169mr3552539pjb.173.1665178777793; 
 Fri, 07 Oct 2022 14:39:37 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 m24-20020a17090a7f9800b001f2fa09786asm2012655pjl.19.2022.10.07.14.39.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 14:39:37 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 14:38:41 -0700
Message-Id: <1665178723-52902-3-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665178723-52902-1-git-send-email-jdamato@fastly.com>
References: <1665178723-52902-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Y3GVIVAxpMC/VnvFXwEMfwYlp9ueZhYknYrdLAirqlQ=;
 b=YCYdesFSWl3TBBzu9F3NZFzbTzkw8Cd/2GtZLkYwG//aCVv9mcG/9eBTJQx9a3/uzl
 MGvNbvpjTM0/8ucETvsQo3Y6Uo7xXW6K6UAyow5lZzvNQ//SmhoKY8Tu4lbOhrcXnOsy
 2w1Z2yPlseZw6m8gV6a0EpAMq0xwPHnwfLgS8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=YCYdesFS
Subject: [Intel-wired-lan] [next-queue v4 2/4] i40e: Record number TXes
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

Update i40e_clean_tx_irq to take an out parameter (tx_cleaned) which stores
the number TXs cleaned.

No XDP related TX code is touched. Care has been taken to avoid changing
the control flow of i40e_clean_tx_irq and i40e_napi_poll.

Signed-off-by: Joe Damato <jdamato@fastly.com>
Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Acked-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index b97c95f..274de1c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -923,11 +923,13 @@ void i40e_detect_recover_hung(struct i40e_vsi *vsi)
  * @vsi: the VSI we care about
  * @tx_ring: Tx ring to clean
  * @napi_budget: Used to determine if we are in netpoll
+ * @tx_cleaned: Out parameter set to the number of TXes cleaned
  *
  * Returns true if there's any budget left (e.g. the clean is finished)
  **/
 static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
-			      struct i40e_ring *tx_ring, int napi_budget)
+			      struct i40e_ring *tx_ring, int napi_budget,
+			      unsigned int *tx_cleaned)
 {
 	int i = tx_ring->next_to_clean;
 	struct i40e_tx_buffer *tx_buf;
@@ -1048,6 +1050,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
 		}
 	}
 
+	*tx_cleaned = total_packets;
 	return !!budget;
 }
 
@@ -2689,10 +2692,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 			       container_of(napi, struct i40e_q_vector, napi);
 	struct i40e_vsi *vsi = q_vector->vsi;
 	struct i40e_ring *ring;
+	bool tx_clean_complete = true;
 	bool clean_complete = true;
 	bool arm_wb = false;
 	int budget_per_ring;
 	int work_done = 0;
+	unsigned int tx_cleaned = 0;
 
 	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
 		napi_complete(napi);
@@ -2705,10 +2710,10 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 	i40e_for_each_ring(ring, q_vector->tx) {
 		bool wd = ring->xsk_pool ?
 			  i40e_clean_xdp_tx_irq(vsi, ring) :
-			  i40e_clean_tx_irq(vsi, ring, budget);
+			  i40e_clean_tx_irq(vsi, ring, budget, &tx_cleaned);
 
 		if (!wd) {
-			clean_complete = false;
+			clean_complete = tx_clean_complete = false;
 			continue;
 		}
 		arm_wb |= ring->arm_wb;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
