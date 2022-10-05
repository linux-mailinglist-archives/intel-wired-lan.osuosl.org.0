Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E0A5F5A13
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 20:47:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F03C827C6;
	Wed,  5 Oct 2022 18:47:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F03C827C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664995659;
	bh=B+Jm0F9Ujkh/kiB4w6pNc9OI6dRqSBjTn1VqIOTELcI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=heVgP3q/87LyqqzM/Apg9yZVlAb4ldZELIDgDGhQ5Hjzj6VdHze/HsztB4OkYD3g8
	 gOrIHZIbIqpoeY56kjO8+yTU+3s+kYrzRLIu+C3OqAUYa+xODbnQ2UoP/u3SWnfnvL
	 sMEv3uUlWFlSsP2Y+WdI4oR65DzGhH/h0mC8Jz70DntPhQbDnRfiVNKesEtrdVdNBj
	 NjoklGhlwgyDWe5BUgb0gSQONWjwxx6WQ+pyqNN5jVn7NERjx//qcNm5i5PCoqJVIu
	 ZV8+LHlFZ+vN1XW+RR+Zpaemta6I3nmurPX0jQGzDrhatn6pJ6O8AK1bijcCEBWM6g
	 FQQvm8pFsHnkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bjyVmpkJEYKf; Wed,  5 Oct 2022 18:47:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65E7681826;
	Wed,  5 Oct 2022 18:47:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65E7681826
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 63F7B1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 18:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3DC5281839
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 18:47:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DC5281839
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TIZMbFbj13-X for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 18:47:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3609E81826
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3609E81826
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 18:47:32 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id 129so15989581pgc.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 11:47:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date;
 bh=k6pyucbE+OWdAQAbLegTBFSSrsILTlfWNpf/Da7WMt0=;
 b=sE0mnh9k5MbjXR/y3HO8YnOyAFVLxERVrqFfWU3Y4mHLd5n8NO3TcZNKuWr5j2yIsV
 8ebM5MEE6TzT2BcXYrNpEwPuzJTlglAkUGp8N3C98iO4zE2p9zUUjjjgW9uxFf1XFnz/
 8Cw50Yk6SDNCyBw+kzy03iF5+5+O8mQIw2Vq06lqFVwPO1gzrPxD3y0o2J1oEDS4PxJU
 2vH/ID32xNriNLxvfQd0PoyUcwNWdaONR+0+TCj1QSuU1uaEmVPjZtzmYxZ+RT8RKvZR
 LR3V1jDv/Obqx/kCNkYDHOUUS1Io8LSLr9pR7CaLI0JDYkmVzNpCEyvxdsOjc15NEy2e
 0XFw==
X-Gm-Message-State: ACrzQf3KpRjZksB/WjO9XUMDmurFrQ+QC3RQk3OeAE4qgw+nDKumJP5N
 +P1Zhg38Wq0an0ayo8XlYUiJkmB26VHtHg==
X-Google-Smtp-Source: AMsMyM76Lp/13pWlYLtX6lidA/f/8Z38f1izSXJztC+pp9vxojZ+hudfmLI5Xg5tQwOJii6T3q6y9g==
X-Received: by 2002:a63:1508:0:b0:438:eb90:52d1 with SMTP id
 v8-20020a631508000000b00438eb9052d1mr1061157pgl.252.1664995651526; 
 Wed, 05 Oct 2022 11:47:31 -0700 (PDT)
Received: from fastly.com (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 a15-20020a170902b58f00b0017849a2b56asm10816338pls.46.2022.10.05.11.47.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 11:47:31 -0700 (PDT)
Date: Wed, 5 Oct 2022 11:47:28 -0700
From: Joe Damato <jdamato@fastly.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20221005184728.GB15277@fastly.com>
References: <1664958703-4224-1-git-send-email-jdamato@fastly.com>
 <1664958703-4224-3-git-send-email-jdamato@fastly.com>
 <Yz1gh6ezOuc1tzH+@boxer> <20221005175031.GA11626@fastly.com>
 <e352426f-7a43-6353-5c1d-aa3480f64860@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e352426f-7a43-6353-5c1d-aa3480f64860@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
 bh=k6pyucbE+OWdAQAbLegTBFSSrsILTlfWNpf/Da7WMt0=;
 b=c6EA7lfRsgXS6ekMKFNVy943Y0b1ViE+xoxIpQOEfE6M86G4bm8gWZlxJNsiyPOiuD
 +cMfAjGzkdwzUz/ghgiVVj36EmXestd48oQWCLeTpv4zDDza1iJMDIHspGdO60cmrZkV
 mXW4GqP9ragjPSOADBIZoITVTc0c4EsJq5dyk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=c6EA7lfR
Subject: Re: [Intel-wired-lan] [next-queue 2/3] i40e: i40e_clean_tx_irq
 returns work done
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 05, 2022 at 11:33:23AM -0700, Jesse Brandeburg wrote:
> On 10/5/2022 10:50 AM, Joe Damato wrote:
> >On Wed, Oct 05, 2022 at 12:46:31PM +0200, Maciej Fijalkowski wrote:
> >>On Wed, Oct 05, 2022 at 01:31:42AM -0700, Joe Damato wrote:
> >>>Adjust i40e_clean_tx_irq to return the actual number of packets cleaned
> >>>and adjust the logic in i40e_napi_poll to check this value.
> 
> it's fine to return the number cleaned but let's keep that data and changes
> to itself instead of changing the flow of the routine.
> 
> 
> >>>
> >>>Signed-off-by: Joe Damato <jdamato@fastly.com>
> >>>---
> >>>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 24 +++++++++++++-----------
> >>>  drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 12 ++++++------
> >>>  drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  2 +-
> >>>  3 files changed, 20 insertions(+), 18 deletions(-)
> >>>
> >>>diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> >>>index b97c95f..ed88309 100644
> >>>--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> >>>+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> >>>@@ -924,10 +924,10 @@ void i40e_detect_recover_hung(struct i40e_vsi *vsi)
> >>>   * @tx_ring: Tx ring to clean
> >>>   * @napi_budget: Used to determine if we are in netpoll
> >>>   *
> >>>- * Returns true if there's any budget left (e.g. the clean is finished)
> >>>+ * Returns the number of packets cleaned
> >>>   **/
> >>>-static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
> >>>-			      struct i40e_ring *tx_ring, int napi_budget)
> >>>+static int i40e_clean_tx_irq(struct i40e_vsi *vsi,
> >>>+			     struct i40e_ring *tx_ring, int napi_budget)
> >>>  {
> >>>  	int i = tx_ring->next_to_clean;
> >>>  	struct i40e_tx_buffer *tx_buf;
> >>>@@ -1026,7 +1026,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
> >>>  	i40e_arm_wb(tx_ring, vsi, budget);
> >>>  	if (ring_is_xdp(tx_ring))
> >>>-		return !!budget;
> >>>+		return total_packets;
> >>>  	/* notify netdev of completed buffers */
> >>>  	netdev_tx_completed_queue(txring_txq(tx_ring),
> >>>@@ -1048,7 +1048,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
> >>>  		}
> >>>  	}
> >>>-	return !!budget;
> >>>+	return total_packets;
> >>>  }
> >>>  /**
> >>>@@ -2689,10 +2689,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
> >>>  			       container_of(napi, struct i40e_q_vector, napi);
> >>>  	struct i40e_vsi *vsi = q_vector->vsi;
> >>>  	struct i40e_ring *ring;
> >>>+	bool tx_clean_complete = true;
> >>>  	bool clean_complete = true;
> >>>  	bool arm_wb = false;
> >>>  	int budget_per_ring;
> >>>  	int work_done = 0;
> >>>+	int tx_wd = 0;
> >>>  	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
> >>>  		napi_complete(napi);
> >>>@@ -2703,12 +2705,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
> >>>  	 * budget and be more aggressive about cleaning up the Tx descriptors.
> >>>  	 */
> >>>  	i40e_for_each_ring(ring, q_vector->tx) {
> >>>-		bool wd = ring->xsk_pool ?
> >>>-			  i40e_clean_xdp_tx_irq(vsi, ring) :
> >>>-			  i40e_clean_tx_irq(vsi, ring, budget);
> >>>+		tx_wd = ring->xsk_pool ?
> >>>+			i40e_clean_xdp_tx_irq(vsi, ring) :
> >>>+			i40e_clean_tx_irq(vsi, ring, budget);
> >>>-		if (!wd) {
> >>>-			clean_complete = false;
> >>>+		if (tx_wd >= budget) {
> >>>+			tx_clean_complete = false;
> >>
> >>This will break for AF_XDP Tx ZC. AF_XDP Tx ZC in intel drivers ignores
> >>budget given by NAPI. If you look at i40e_xmit_zc():
> >>
> >>func def:
> >>static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
> >>
> >>callsite:
> >>	return i40e_xmit_zc(tx_ring, I40E_DESC_UNUSED(tx_ring));
> >>
> >>we give free ring space as a budget and with your change we would be
> >>returning the amount of processed tx descriptors which you will be
> >>comparing against NAPI budget (64, unless you have busy poll enabled with
> >>a different batch size). Say you start with empty ring and your HW rings
> >>are sized to 1k but there was only 512 AF_XDP descriptors ready for Tx.
> >>You produced all of them successfully to ring and you return 512 up to
> >>i40e_napi_poll.
> >
> >Good point, my bad.
> >
> >I've reworked this for the v2 and have given i40e_clean_tx_irq,
> >and i40e_clean_xdp_tx_irq an out parameter which will record the number
> >TXes cleaned.
> >
> >I tweaked i40e_xmit_zc to return the number of packets (nb_pkts) and moved
> >the boolean to check if that's under the "budget"
> >(I40E_DESC_UNUSED(tx_ring)) into i40e_clean_xdp_tx_irq.
> >
> >I think that might solve the issues you've described.
> 
> Please don't change the flow of this function, transmit clean ups are so
> cheap that we don't bother counting them or limiting them beyond a maximum
> (so they don't clean forever)
> 
> Basically transmits should not be counted when exiting NAPI, besides that we
> did "at least one". The only thing that matters to the budget is that we
> "finished" transmit cleanup or not, which would make sure we rescheduled
> napi if we weren't finished cleaning (for instance on a 8160 entry tx ring)
> transmits.
> 
> I'd much rather you kept this series to a simple return count of tx cleaned
> in "out" as you've said you'd do in v2, and then use that data *only* in the
> context of the new trace event.
> 
> That way you're not changing the flow and introducing tough to debug issues
> in the hot path.

In the v2 I've been hacking on I've added out params to i40e_clean_tx_irq and
i40e_clean_xdp_tx_irq, but I avoided adding an out param in i40e_xmit_zc,
since lifting the boolean out seemed pretty straightforward.

I'll drop that though in favor of an out param in i40e_xmit_zc, as well, to
avoid changing the flow of the code.

Thanks for taking a look.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
