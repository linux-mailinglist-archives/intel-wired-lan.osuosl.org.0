Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 171F75F5DC5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Oct 2022 02:31:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78AFC60FF7;
	Thu,  6 Oct 2022 00:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78AFC60FF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665016277;
	bh=SMXNAQw/PIZE5sFtoFzevoOp7VG7Xi3qVSoVoUGHAyg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eXzFvgtuWSLavKWw4mZRkuzdKT7AgtlvLH5llfBbekKrti1sn5MGO1SNR1KI63iYJ
	 uJm5JrAqlzmSWGeErYzFu7jMwAOqg8So2x7qRnmbqRP/T4jVC6qG7MRaOQjmPvIKxg
	 5Dw8VzMOLixYytFJ6L6ppj/5qBGHvpRgf1CP0sopWl506uqO4hshkHAIabT8BY3uoe
	 +99MYpuFMbFr6uZwrqTbcKDiLJ2zL8CwQ09+gcbvI4n/kd4Lfi7iuQv+RWPi+KUp2N
	 bmmwyC+7nxuP1taHuUpQcFcC/NOysWV77LQHUfPxsQzDQFglOG9JZOumoeYceYsXnm
	 U2N34GnQ5wlug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KjTuJNdEJ15u; Thu,  6 Oct 2022 00:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F18260FF4;
	Thu,  6 Oct 2022 00:31:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F18260FF4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 748291BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 00:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E00A60FF6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 00:31:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E00A60FF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a5QBOvFmKFPz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 00:31:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD17A60FF4
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD17A60FF4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 00:31:09 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id s206so459586pgs.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 17:31:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-transfer-encoding
 :content-disposition:mime-version:references:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=tLxHZ4CcgYDIFFbopH9F9PJl1cN7HOhyUtM5x1PUDR4=;
 b=ujOgFlQxABvnRyaK70MRdKlKxBnk+1ZcN+0RVDo0arBp5L7yNBu5TKY44POKGeSCjc
 zCjLw6F/mmDxIjtT4oBy9ky5GDptZ9xUyXPz8gklu0JrR5N8RJu0Mr0+LHc5RAU2IbiD
 iHv5E4bZIBvEDbd2qMr2Hlf6/tLKLuB89k4bY3IQr87X2Fyqy399kdqRtTpLjR+3pou+
 IO1AAW8RwXxiQ/4OsRK7s5u9mWDeil+55yfH5xjoKK31l5OcUAb7HCYSbc41s5dJtOu2
 XUs9GqYq4pTtZ4ye7WJCdUpCSUji/1egPZPdALyV0Xw33xlgwTOwVogTx2gQpBLnoIYy
 qKjw==
X-Gm-Message-State: ACrzQf1MJT66qXqAAbujkQCHdTPrcQNTEr8KYbIolq7DTuhGrBtKqtPt
 GDhLok741pnRp5aZaJA388u0/w==
X-Google-Smtp-Source: AMsMyM5VNa55z0S2bhemdn039W+kQslBsY/aq25sKZ3XrLbAlo3GNGKvcT1fEiWPkPiZEkxcGnAXxA==
X-Received: by 2002:a05:6a00:194a:b0:55a:a604:28fc with SMTP id
 s10-20020a056a00194a00b0055aa60428fcmr1988517pfk.47.1665016269023; 
 Wed, 05 Oct 2022 17:31:09 -0700 (PDT)
Received: from fastly.com (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 n63-20020a17090a2cc500b0020ad7678ba0sm1677683pjd.3.2022.10.05.17.31.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 17:31:08 -0700 (PDT)
Date: Wed, 5 Oct 2022 17:31:05 -0700
From: Joe Damato <jdamato@fastly.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <20221006003104.GA30279@fastly.com>
References: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
 <1665004913-25656-3-git-send-email-jdamato@fastly.com>
 <0cdcc8ee-e28d-f3cc-a65a-6c54ee7ee03e@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0cdcc8ee-e28d-f3cc-a65a-6c54ee7ee03e@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=user-agent:in-reply-to:content-transfer-encoding
 :content-disposition:mime-version:references:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date;
 bh=tLxHZ4CcgYDIFFbopH9F9PJl1cN7HOhyUtM5x1PUDR4=;
 b=xhUjWuqLjGV249kMFhiGiZ7hkj07wuYO7+WoWfMkfM26lNqCX7bOWKgt9Hsfgkv5F/
 kaLg1Y85bmpWROTAptlau05D7tK8eQFCIQ42InP0rcvU++VHcTifAYbW7Um3t9UzQe8D
 2WVx7eUpKZiJzxUAYW4cfy4CzG++FjVK3gkgs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=xhUjWuqL
Subject: Re: [Intel-wired-lan] [next-queue v2 2/4] i40e: Record number TXes
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 05, 2022 at 07:16:56PM -0500, Samudrala, Sridhar wrote:
> On 10/5/2022 4:21 PM, Joe Damato wrote:
> >Update i40e_clean_tx_irq to take an out parameter (tx_cleaned) which sto=
res
> >the number TXs cleaned.
> >
> >Likewise, update i40e_clean_xdp_tx_irq and i40e_xmit_zc to do the same.
> >
> >Care has been taken to avoid changing the control flow of any functions
> >involved.
> >
> >Signed-off-by: Joe Damato <jdamato@fastly.com>
> >---
> >  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 16 +++++++++++-----
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 15 +++++++++++----
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  3 ++-
> >  3 files changed, 24 insertions(+), 10 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/e=
thernet/intel/i40e/i40e_txrx.c
> >index b97c95f..a2cc98e 100644
> >--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> >+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> >@@ -923,11 +923,13 @@ void i40e_detect_recover_hung(struct i40e_vsi *vsi)
> >   * @vsi: the VSI we care about
> >   * @tx_ring: Tx ring to clean
> >   * @napi_budget: Used to determine if we are in netpoll
> >+ * @tx_cleaned: Out parameter set to the number of TXes cleaned
> >   *
> >   * Returns true if there's any budget left (e.g. the clean is finished)
> >   **/
> >  static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
> >-			      struct i40e_ring *tx_ring, int napi_budget)
> >+			      struct i40e_ring *tx_ring, int napi_budget,
> >+			      unsigned int *tx_cleaned)
> >  {
> >  	int i =3D tx_ring->next_to_clean;
> >  	struct i40e_tx_buffer *tx_buf;
> >@@ -1026,7 +1028,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
> >  	i40e_arm_wb(tx_ring, vsi, budget);
> >  	if (ring_is_xdp(tx_ring))
> >-		return !!budget;
> >+		goto out;
> >  	/* notify netdev of completed buffers */
> >  	netdev_tx_completed_queue(txring_txq(tx_ring),
> >@@ -1048,6 +1050,8 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
> >  		}
> >  	}
> >+out:
> >+	*tx_cleaned =3D total_packets;
> >  	return !!budget;
> >  }
> >@@ -2689,10 +2693,12 @@ int i40e_napi_poll(struct napi_struct *napi, int=
 budget)
> >  			       container_of(napi, struct i40e_q_vector, napi);
> >  	struct i40e_vsi *vsi =3D q_vector->vsi;
> >  	struct i40e_ring *ring;
> >+	bool tx_clean_complete =3D true;
> >  	bool clean_complete =3D true;
> >  	bool arm_wb =3D false;
> >  	int budget_per_ring;
> >  	int work_done =3D 0;
> >+	unsigned int tx_cleaned =3D 0;
> >  	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
> >  		napi_complete(napi);
> >@@ -2704,11 +2710,11 @@ int i40e_napi_poll(struct napi_struct *napi, int=
 budget)
> >  	 */
> >  	i40e_for_each_ring(ring, q_vector->tx) {
> >  		bool wd =3D ring->xsk_pool ?
> >-			  i40e_clean_xdp_tx_irq(vsi, ring) :
> >-			  i40e_clean_tx_irq(vsi, ring, budget);
> >+			  i40e_clean_xdp_tx_irq(vsi, ring, &tx_cleaned) :
> >+			  i40e_clean_tx_irq(vsi, ring, budget, &tx_cleaned);
> >  		if (!wd) {
> >-			clean_complete =3D false;
> >+			clean_complete =3D tx_clean_complete =3D false;
> >  			continue;
> >  		}
> >  		arm_wb |=3D ring->arm_wb;
> >diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/et=
hernet/intel/i40e/i40e_xsk.c
> >index 790aaeff..f98ce7e4 100644
> >--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> >+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> >@@ -530,18 +530,22 @@ static void i40e_set_rs_bit(struct i40e_ring *xdp_=
ring)
> >   * i40e_xmit_zc - Performs zero-copy Tx AF_XDP
> >   * @xdp_ring: XDP Tx ring
> >   * @budget: NAPI budget
> >+ * @tx_cleaned: Out parameter of the TX packets processed
> >   *
> >   * Returns true if the work is finished.
> >   **/
> >-static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budge=
t)
> >+static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budge=
t,
> >+			 unsigned int *tx_cleaned)
> >  {
> >  	struct xdp_desc *descs =3D xdp_ring->xsk_pool->tx_descs;
> >  	u32 nb_pkts, nb_processed =3D 0;
> >  	unsigned int total_bytes =3D 0;
> >  	nb_pkts =3D xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget=
);
> >-	if (!nb_pkts)
> >+	if (!nb_pkts) {
> >+		*tx_cleaned =3D 0;
> >  		return true;
> >+	}
> >  	if (xdp_ring->next_to_use + nb_pkts >=3D xdp_ring->count) {
> >  		nb_processed =3D xdp_ring->count - xdp_ring->next_to_use;
> >@@ -558,6 +562,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring,=
 unsigned int budget)
> >  	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
> >+	*tx_cleaned =3D nb_pkts;
> =

> With XDP,=A0I don't think we should count these as tx_cleaned packets. Th=
ese are transmitted
> packets.=A0The tx_cleaned would be the xsk_frames counter in i40e_clean_x=
dp_tx_irq
> May be we need 2 counters for xdp.

I think there's two issues you are describing, which are separate in my
mind.

  1.) The name "tx_cleaned", and
  2.) Whether nb_pkts is the right thing to write as the out param.

For #1: I'm OK to change the name if that's the blocker here; please
suggest a suitable alternative that you'll accept.

For #2: nb_pkts is, IMO, the right value to bubble up to the tracepoint bec=
ause
nb_pkts affects clean_complete in i40e_napi_poll which in turn determines
whether or not polling mode is entered.

The purpose of the tracepoint is to determine when/why/how you are entering
polling mode, so if nb_pkts plays a role in that calculation, it's the
right number to output.


> >  	return nb_pkts < budget;
> >  }
> >@@ -581,10 +586,12 @@ static void i40e_clean_xdp_tx_buffer(struct i40e_r=
ing *tx_ring,
> >   * i40e_clean_xdp_tx_irq - Completes AF_XDP entries, and cleans XDP en=
tries
> >   * @vsi: Current VSI
> >   * @tx_ring: XDP Tx ring
> >+ * @tx_cleaned: out parameter of number of TXes cleaned
> >   *
> >   * Returns true if cleanup/tranmission is done.
> >   **/
> >-bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_r=
ing)
> >+bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_r=
ing,
> >+			   unsigned int *tx_cleaned)
> >  {
> >  	struct xsk_buff_pool *bp =3D tx_ring->xsk_pool;
> >  	u32 i, completed_frames, xsk_frames =3D 0;
> >@@ -634,7 +641,7 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, str=
uct i40e_ring *tx_ring)
> >  	if (xsk_uses_need_wakeup(tx_ring->xsk_pool))
> >  		xsk_set_tx_need_wakeup(tx_ring->xsk_pool);
> >-	return i40e_xmit_zc(tx_ring, I40E_DESC_UNUSED(tx_ring));
> >+	return i40e_xmit_zc(tx_ring, I40E_DESC_UNUSED(tx_ring), tx_cleaned);
> >  }
> >  /**
> >diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/et=
hernet/intel/i40e/i40e_xsk.h
> >index 821df24..396ed11 100644
> >--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> >+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> >@@ -30,7 +30,8 @@ int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct x=
sk_buff_pool *pool,
> >  bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 cleaned_c=
ount);
> >  int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
> >-bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_r=
ing);
> >+bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_r=
ing,
> >+			   unsigned int *tx_cleaned);
> >  int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
> >  int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
> >  void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
> =

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
