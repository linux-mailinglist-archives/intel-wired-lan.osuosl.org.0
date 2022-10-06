Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 644CC5F5E25
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Oct 2022 03:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76CE083E01;
	Thu,  6 Oct 2022 01:00:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76CE083E01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665018036;
	bh=FvHo+ih+hmkgrF6J631wOVv9HUTnxZKQqAmVewvciJ0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c+uZNmO/RBJeBJoQZBUd7p2UQv7jYKK5ElBrVF+9+8IB0nAN8FxS4+MVfrgMXVWb3
	 q4GGO32/vuW1E2ASBAQ5cP6OJ5tLhMA1uuac3Mab3GmeEkb+x8DjWIcN+ER00zuzGR
	 nCQS0avgUNBQPR4n++HTm1mqFKpjSrTbZlJrL2X+xJx+w85hqUj23fj01g57xla7Jk
	 MVIbeL2PzFZ5NnBfyZDybjwwKQYd05cq1kCWIo2NiIOU2S/UP79ZN3ha4uEnA2hiyP
	 +zHVxY3psF4C6Di/CvhYAMr8dn3fI6IJ7zWkkX0l5oA3Rv2mQ2EDftramGOJKLo+G9
	 K8jr5yAG+iT0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OeLdBdjAXyRl; Thu,  6 Oct 2022 01:00:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E30483134;
	Thu,  6 Oct 2022 01:00:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E30483134
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3EAC81BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 01:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C6F840BDA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 01:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C6F840BDA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXTAHKhuGtTd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 01:00:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDF25401B3
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EDF25401B3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 01:00:28 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id s206so505369pgs.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 18:00:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-transfer-encoding
 :content-disposition:mime-version:references:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=N7S5qylcdnDd0BDdomweGwSo5dJGB1KXoHVQtYxoPhg=;
 b=mJl5tjBAExUDaIDgXp+R63cBSXcVnLPYUril46ddQgE4pbKs7hnNTo+qmihgmvMNfK
 mJTDbAv5O2Joh3cluWD7eIZfxPhyssFW61wgapoPR+EZp3px+YQ4BHttRsWhnGN0Q5KG
 TzH92EiFBVeuL3ve8tGHtoZltMpYPRg/twcs1PwO8wbt4KsuAL8j9FdzKCiVKfSb9BRZ
 syq/ZjqQTlkyM78N07c/VLhsuV/KeMngNxzeuFTUbXL1Wm2rE2cljA0p97x2Dsu2tZ4D
 /AJx5AnZvSk355q3VFrIdSawJzXC4/5GZ/oLGn255qCfuwMmukY0IYFuZxAZd5UZfi7C
 uACw==
X-Gm-Message-State: ACrzQf3DFwB4+22/i5iJhAD5gLdn15DmWQ2s6QfxcNSi6O/DX3swluOG
 1m4MJJcvJNKU8npCD8u8WcwUPjZpKEKTqg==
X-Google-Smtp-Source: AMsMyM6vRGWbbzrlDdxEgYD4fPhb+Aiedz5u/xqNEb/nZRMYFvioQzr1oHG8dyApVhUn6P3R7fbHmg==
X-Received: by 2002:a63:4b5f:0:b0:43c:428d:507c with SMTP id
 k31-20020a634b5f000000b0043c428d507cmr2035540pgl.607.1665018027722; 
 Wed, 05 Oct 2022 18:00:27 -0700 (PDT)
Received: from fastly.com (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 1-20020a630b01000000b004388ba7e5a9sm379638pgl.49.2022.10.05.18.00.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 18:00:27 -0700 (PDT)
Date: Wed, 5 Oct 2022 18:00:24 -0700
From: Joe Damato <jdamato@fastly.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <20221006010024.GA31170@fastly.com>
References: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
 <1665004913-25656-3-git-send-email-jdamato@fastly.com>
 <0cdcc8ee-e28d-f3cc-a65a-6c54ee7ee03e@intel.com>
 <20221006003104.GA30279@fastly.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221006003104.GA30279@fastly.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=user-agent:in-reply-to:content-transfer-encoding
 :content-disposition:mime-version:references:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date;
 bh=N7S5qylcdnDd0BDdomweGwSo5dJGB1KXoHVQtYxoPhg=;
 b=SScsHyiW9T6XZWZ5BKft3Crt0wv4VUDgJz17chysZGVYB1HeX6iCs/LMHAgdfBe/Dy
 CPyjvu9+I2Iz1+cRvEw+vb+xmcRzy4cJl9CSW0DCJs3q+70KoHPiK++PPQ/NstZwZQY3
 cygd/dZjVtW+KHGcUL2k0KJBV2cJ+HeAZwWsw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=SScsHyiW
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

On Wed, Oct 05, 2022 at 05:31:04PM -0700, Joe Damato wrote:
> On Wed, Oct 05, 2022 at 07:16:56PM -0500, Samudrala, Sridhar wrote:
> > On 10/5/2022 4:21 PM, Joe Damato wrote:
> > >Update i40e_clean_tx_irq to take an out parameter (tx_cleaned) which s=
tores
> > >the number TXs cleaned.
> > >
> > >Likewise, update i40e_clean_xdp_tx_irq and i40e_xmit_zc to do the same.
> > >
> > >Care has been taken to avoid changing the control flow of any functions
> > >involved.
> > >
> > >Signed-off-by: Joe Damato <jdamato@fastly.com>
> > >---
> > >  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 16 +++++++++++-----
> > >  drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 15 +++++++++++----
> > >  drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  3 ++-
> > >  3 files changed, 24 insertions(+), 10 deletions(-)
> > >
> > >diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net=
/ethernet/intel/i40e/i40e_txrx.c
> > >index b97c95f..a2cc98e 100644
> > >--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > >+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > >@@ -923,11 +923,13 @@ void i40e_detect_recover_hung(struct i40e_vsi *v=
si)
> > >   * @vsi: the VSI we care about
> > >   * @tx_ring: Tx ring to clean
> > >   * @napi_budget: Used to determine if we are in netpoll
> > >+ * @tx_cleaned: Out parameter set to the number of TXes cleaned
> > >   *
> > >   * Returns true if there's any budget left (e.g. the clean is finish=
ed)
> > >   **/
> > >  static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
> > >-			      struct i40e_ring *tx_ring, int napi_budget)
> > >+			      struct i40e_ring *tx_ring, int napi_budget,
> > >+			      unsigned int *tx_cleaned)
> > >  {
> > >  	int i =3D tx_ring->next_to_clean;
> > >  	struct i40e_tx_buffer *tx_buf;
> > >@@ -1026,7 +1028,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *v=
si,
> > >  	i40e_arm_wb(tx_ring, vsi, budget);
> > >  	if (ring_is_xdp(tx_ring))
> > >-		return !!budget;
> > >+		goto out;
> > >  	/* notify netdev of completed buffers */
> > >  	netdev_tx_completed_queue(txring_txq(tx_ring),
> > >@@ -1048,6 +1050,8 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *v=
si,
> > >  		}
> > >  	}
> > >+out:
> > >+	*tx_cleaned =3D total_packets;
> > >  	return !!budget;
> > >  }
> > >@@ -2689,10 +2693,12 @@ int i40e_napi_poll(struct napi_struct *napi, i=
nt budget)
> > >  			       container_of(napi, struct i40e_q_vector, napi);
> > >  	struct i40e_vsi *vsi =3D q_vector->vsi;
> > >  	struct i40e_ring *ring;
> > >+	bool tx_clean_complete =3D true;
> > >  	bool clean_complete =3D true;
> > >  	bool arm_wb =3D false;
> > >  	int budget_per_ring;
> > >  	int work_done =3D 0;
> > >+	unsigned int tx_cleaned =3D 0;
> > >  	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
> > >  		napi_complete(napi);
> > >@@ -2704,11 +2710,11 @@ int i40e_napi_poll(struct napi_struct *napi, i=
nt budget)
> > >  	 */
> > >  	i40e_for_each_ring(ring, q_vector->tx) {
> > >  		bool wd =3D ring->xsk_pool ?
> > >-			  i40e_clean_xdp_tx_irq(vsi, ring) :
> > >-			  i40e_clean_tx_irq(vsi, ring, budget);
> > >+			  i40e_clean_xdp_tx_irq(vsi, ring, &tx_cleaned) :
> > >+			  i40e_clean_tx_irq(vsi, ring, budget, &tx_cleaned);
> > >  		if (!wd) {
> > >-			clean_complete =3D false;
> > >+			clean_complete =3D tx_clean_complete =3D false;
> > >  			continue;
> > >  		}
> > >  		arm_wb |=3D ring->arm_wb;
> > >diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/=
ethernet/intel/i40e/i40e_xsk.c
> > >index 790aaeff..f98ce7e4 100644
> > >--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > >+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > >@@ -530,18 +530,22 @@ static void i40e_set_rs_bit(struct i40e_ring *xd=
p_ring)
> > >   * i40e_xmit_zc - Performs zero-copy Tx AF_XDP
> > >   * @xdp_ring: XDP Tx ring
> > >   * @budget: NAPI budget
> > >+ * @tx_cleaned: Out parameter of the TX packets processed
> > >   *
> > >   * Returns true if the work is finished.
> > >   **/
> > >-static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int bud=
get)
> > >+static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int bud=
get,
> > >+			 unsigned int *tx_cleaned)
> > >  {
> > >  	struct xdp_desc *descs =3D xdp_ring->xsk_pool->tx_descs;
> > >  	u32 nb_pkts, nb_processed =3D 0;
> > >  	unsigned int total_bytes =3D 0;
> > >  	nb_pkts =3D xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budg=
et);
> > >-	if (!nb_pkts)
> > >+	if (!nb_pkts) {
> > >+		*tx_cleaned =3D 0;
> > >  		return true;
> > >+	}
> > >  	if (xdp_ring->next_to_use + nb_pkts >=3D xdp_ring->count) {
> > >  		nb_processed =3D xdp_ring->count - xdp_ring->next_to_use;
> > >@@ -558,6 +562,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_rin=
g, unsigned int budget)
> > >  	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
> > >+	*tx_cleaned =3D nb_pkts;
> > =

> > With XDP,=A0I don't think we should count these as tx_cleaned packets. =
These are transmitted
> > packets.=A0The tx_cleaned would be the xsk_frames counter in i40e_clean=
_xdp_tx_irq
> > May be we need 2 counters for xdp.
> =

> I think there's two issues you are describing, which are separate in my
> mind.
> =

>   1.) The name "tx_cleaned", and
>   2.) Whether nb_pkts is the right thing to write as the out param.
> =

> For #1: I'm OK to change the name if that's the blocker here; please
> suggest a suitable alternative that you'll accept.
> =

> For #2: nb_pkts is, IMO, the right value to bubble up to the tracepoint b=
ecause
> nb_pkts affects clean_complete in i40e_napi_poll which in turn determines
> whether or not polling mode is entered.
> =

> The purpose of the tracepoint is to determine when/why/how you are enteri=
ng
> polling mode, so if nb_pkts plays a role in that calculation, it's the
> right number to output.

I suppose the alternative is to only fire the tracepoint when *not* in XDP.
Then the changes to the XDP stuff can be dropped and a separate set of
tracepoints for XDP can be created in the future.

That might reduce the complexity a bit, and will probably still be pretty
useful for people tuning their non-XDP workloads.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
