Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 231705F6D05
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Oct 2022 19:33:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 231D283F89;
	Thu,  6 Oct 2022 17:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 231D283F89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665077582;
	bh=flyVm/fJ8zzQRAjPApaDD9HqFf91cS9sMqhsA2hyxzY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ptPgOIjyTOILtLo6sJ/gHdaF3y0MxREP3TgzkP8Xr5sOKF3qcLIl3uOxeISQif/F0
	 RiKNx514VkE1aU2bkMlyvAugbyCfzVNa5nJopIoAvH6zGvKT8xCyu8UOclQtyy3P8x
	 1kssbND5w6uR0RSmHdfxQg4Ucx9ENY2Gr+gRt0Fb36XekJytZRzDcGI1QdgwoiZqdZ
	 59vfH16cweZZPc7rjEnLOyjIafbQxWOi8yizRLXjQhkrccOWOa/39qQlaJvUDxjkvc
	 sTz8kgZJ79YuBEOCT+S4RFmaq5U16Dq+tbO7HUoR1fDbNFs97VKE3SUPte/zkAt4t0
	 ZTFsLixmW/0+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Igu3aP_pq4gA; Thu,  6 Oct 2022 17:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B19283F84;
	Thu,  6 Oct 2022 17:32:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B19283F84
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B1E31BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 17:32:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71DD841960
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 17:32:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71DD841960
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SNd01eGXyOvp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 17:32:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86B8641939
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86B8641939
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 17:32:52 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 t10-20020a17090a4e4a00b0020af4bcae10so2421330pjl.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Oct 2022 10:32:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-transfer-encoding
 :content-disposition:mime-version:references:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GqYIbC4MRoi1+A3vrhxjLGpYA/IA7e6nRTLcVncEAC4=;
 b=PAmthFoR74HUAsjuXbxfezH3ZcGup6t26SOgMOsHKPNjYgTX/kGeNsIWBM8sEtbsns
 tUjubn3+Nc9BP+t8j4OLkWqHgS0U0vGJPtPLgA5nNLKOV7HuZ66tXJ99FYbxCyWsLiGg
 4ULjspQtto3acuf5Bgx+aQZi1ukwCk6L25cS0H3mvRt6hjEdkWTcqDmcQvxK+l/j4BJF
 y9Uhs49LwBNM75SC+bTszjTs+lwnK0fUtHdOL9ubIKK1GPruXK7/ZybzhoOthnncVxb5
 n77/UUShTFsuhdxrumqOitAif2mtEUL6h6me7SlnhGWZ0ElnOFfWAXFV9L2mGN2ILLxF
 NiLw==
X-Gm-Message-State: ACrzQf24wyLbzVFY+k8NQMi3rDSXrJB4CAmTaU96M3zAtYnD1YMMBoAx
 2boAZGVaicMvvKg5tXk56rsn2w==
X-Google-Smtp-Source: AMsMyM4ryp/40vCIKJXkA7rKnztxCc3KrVZqYcKadV3TKHq70LddD27zMa/tjzJ+U4AHnQslbxAtZw==
X-Received: by 2002:a17:902:8bc3:b0:178:8563:8e42 with SMTP id
 r3-20020a1709028bc300b0017885638e42mr565794plo.0.1665077571790; 
 Thu, 06 Oct 2022 10:32:51 -0700 (PDT)
Received: from fastly.com (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 o2-20020a17090a3d4200b001fbb0f0b00fsm3106485pjf.35.2022.10.06.10.32.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Oct 2022 10:32:51 -0700 (PDT)
Date: Thu, 6 Oct 2022 10:32:48 -0700
From: Joe Damato <jdamato@fastly.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <20221006173248.GA51751@fastly.com>
References: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
 <1665004913-25656-3-git-send-email-jdamato@fastly.com>
 <0cdcc8ee-e28d-f3cc-a65a-6c54ee7ee03e@intel.com>
 <20221006003104.GA30279@fastly.com>
 <20221006010024.GA31170@fastly.com> <Yz7SHod/GPxKWmvw@boxer>
 <481f7799-0f1c-efa3-bf2c-e22961e5f376@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <481f7799-0f1c-efa3-bf2c-e22961e5f376@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=user-agent:in-reply-to:content-transfer-encoding
 :content-disposition:mime-version:references:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=GqYIbC4MRoi1+A3vrhxjLGpYA/IA7e6nRTLcVncEAC4=;
 b=TR7GLoD3Du1ThxndDo4BbbTpkI4IEaXnUNawXV5YM/poB8JFiacX+uvs5vRMxF9Qbx
 Hok4NcKGGQQ8mZzuKBKXoCuXFoRwBVJX9asvjDumZnfZeIfL1gzqCglkwkUQfo1BZ6nm
 53EVk3Y8xH7Nph9AwpgKegR54ovAy+CwXzV5E=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=TR7GLoD3
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 06, 2022 at 09:57:19AM -0500, Samudrala, Sridhar wrote:
> On 10/6/2022 8:03 AM, Maciej Fijalkowski wrote:
> >On Wed, Oct 05, 2022 at 06:00:24PM -0700, Joe Damato wrote:
> >>On Wed, Oct 05, 2022 at 05:31:04PM -0700, Joe Damato wrote:
> >>>On Wed, Oct 05, 2022 at 07:16:56PM -0500, Samudrala, Sridhar wrote:
> >>>>On 10/5/2022 4:21 PM, Joe Damato wrote:
> >>>>>Update i40e_clean_tx_irq to take an out parameter (tx_cleaned) which=
 stores
> >>>>>the number TXs cleaned.
> >>>>>
> >>>>>Likewise, update i40e_clean_xdp_tx_irq and i40e_xmit_zc to do the sa=
me.
> >>>>>
> >>>>>Care has been taken to avoid changing the control flow of any functi=
ons
> >>>>>involved.
> >>>>>
> >>>>>Signed-off-by: Joe Damato <jdamato@fastly.com>
> >>>>>---
> >>>>>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 16 +++++++++++-----
> >>>>>  drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 15 +++++++++++----
> >>>>>  drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  3 ++-
> >>>>>  3 files changed, 24 insertions(+), 10 deletions(-)
> >>>>>
> >>>>>diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/n=
et/ethernet/intel/i40e/i40e_txrx.c
> >>>>>index b97c95f..a2cc98e 100644
> >>>>>--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> >>>>>+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> >>>>>@@ -923,11 +923,13 @@ void i40e_detect_recover_hung(struct i40e_vsi =
*vsi)
> >>>>>   * @vsi: the VSI we care about
> >>>>>   * @tx_ring: Tx ring to clean
> >>>>>   * @napi_budget: Used to determine if we are in netpoll
> >>>>>+ * @tx_cleaned: Out parameter set to the number of TXes cleaned
> >>>>>   *
> >>>>>   * Returns true if there's any budget left (e.g. the clean is fini=
shed)
> >>>>>   **/
> >>>>>  static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
> >>>>>-			      struct i40e_ring *tx_ring, int napi_budget)
> >>>>>+			      struct i40e_ring *tx_ring, int napi_budget,
> >>>>>+			      unsigned int *tx_cleaned)
> >>>>>  {
> >>>>>  	int i =3D tx_ring->next_to_clean;
> >>>>>  	struct i40e_tx_buffer *tx_buf;
> >>>>>@@ -1026,7 +1028,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi =
*vsi,
> >>>>>  	i40e_arm_wb(tx_ring, vsi, budget);
> >>>>>  	if (ring_is_xdp(tx_ring))
> >>>>>-		return !!budget;
> >>>>>+		goto out;
> >>>>>  	/* notify netdev of completed buffers */
> >>>>>  	netdev_tx_completed_queue(txring_txq(tx_ring),
> >>>>>@@ -1048,6 +1050,8 @@ static bool i40e_clean_tx_irq(struct i40e_vsi =
*vsi,
> >>>>>  		}
> >>>>>  	}
> >>>>>+out:
> >>>>>+	*tx_cleaned =3D total_packets;
> >>>>>  	return !!budget;
> >>>>>  }
> >>>>>@@ -2689,10 +2693,12 @@ int i40e_napi_poll(struct napi_struct *napi,=
 int budget)
> >>>>>  			       container_of(napi, struct i40e_q_vector, napi);
> >>>>>  	struct i40e_vsi *vsi =3D q_vector->vsi;
> >>>>>  	struct i40e_ring *ring;
> >>>>>+	bool tx_clean_complete =3D true;
> >>>>>  	bool clean_complete =3D true;
> >>>>>  	bool arm_wb =3D false;
> >>>>>  	int budget_per_ring;
> >>>>>  	int work_done =3D 0;
> >>>>>+	unsigned int tx_cleaned =3D 0;
> >>>>>  	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
> >>>>>  		napi_complete(napi);
> >>>>>@@ -2704,11 +2710,11 @@ int i40e_napi_poll(struct napi_struct *napi,=
 int budget)
> >>>>>  	 */
> >>>>>  	i40e_for_each_ring(ring, q_vector->tx) {
> >>>>>  		bool wd =3D ring->xsk_pool ?
> >>>>>-			  i40e_clean_xdp_tx_irq(vsi, ring) :
> >>>>>-			  i40e_clean_tx_irq(vsi, ring, budget);
> >>>>>+			  i40e_clean_xdp_tx_irq(vsi, ring, &tx_cleaned) :
> >>>>>+			  i40e_clean_tx_irq(vsi, ring, budget, &tx_cleaned);
> >>>>>  		if (!wd) {
> >>>>>-			clean_complete =3D false;
> >>>>>+			clean_complete =3D tx_clean_complete =3D false;
> >>>>>  			continue;
> >>>>>  		}
> >>>>>  		arm_wb |=3D ring->arm_wb;
> >>>>>diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/ne=
t/ethernet/intel/i40e/i40e_xsk.c
> >>>>>index 790aaeff..f98ce7e4 100644
> >>>>>--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> >>>>>+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> >>>>>@@ -530,18 +530,22 @@ static void i40e_set_rs_bit(struct i40e_ring *=
xdp_ring)
> >>>>>   * i40e_xmit_zc - Performs zero-copy Tx AF_XDP
> >>>>>   * @xdp_ring: XDP Tx ring
> >>>>>   * @budget: NAPI budget
> >>>>>+ * @tx_cleaned: Out parameter of the TX packets processed
> >>>>>   *
> >>>>>   * Returns true if the work is finished.
> >>>>>   **/
> >>>>>-static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int b=
udget)
> >>>>>+static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int b=
udget,
> >>>>>+			 unsigned int *tx_cleaned)
> >>>>>  {
> >>>>>  	struct xdp_desc *descs =3D xdp_ring->xsk_pool->tx_descs;
> >>>>>  	u32 nb_pkts, nb_processed =3D 0;
> >>>>>  	unsigned int total_bytes =3D 0;
> >>>>>  	nb_pkts =3D xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, bu=
dget);
> >>>>>-	if (!nb_pkts)
> >>>>>+	if (!nb_pkts) {
> >>>>>+		*tx_cleaned =3D 0;
> >>>>>  		return true;
> >>>>>+	}
> >>>>>  	if (xdp_ring->next_to_use + nb_pkts >=3D xdp_ring->count) {
> >>>>>  		nb_processed =3D xdp_ring->count - xdp_ring->next_to_use;
> >>>>>@@ -558,6 +562,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_r=
ing, unsigned int budget)
> >>>>>  	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
> >>>>>+	*tx_cleaned =3D nb_pkts;
> >>>>With XDP,=A0I don't think we should count these as tx_cleaned packets=
. These are transmitted
> >>>>packets.=A0The tx_cleaned would be the xsk_frames counter in i40e_cle=
an_xdp_tx_irq
> >>>>May be we need 2 counters for xdp.
> >>>I think there's two issues you are describing, which are separate in my
> >>>mind.
> >>>
> >>>   1.) The name "tx_cleaned", and
> >>>   2.) Whether nb_pkts is the right thing to write as the out param.
> >>>
> >>>For #1: I'm OK to change the name if that's the blocker here; please
> >>>suggest a suitable alternative that you'll accept.
> >>>
> >>>For #2: nb_pkts is, IMO, the right value to bubble up to the tracepoin=
t because
> >>>nb_pkts affects clean_complete in i40e_napi_poll which in turn determi=
nes
> >>>whether or not polling mode is entered.
> >>>
> >>>The purpose of the tracepoint is to determine when/why/how you are ent=
ering
> >>>polling mode, so if nb_pkts plays a role in that calculation, it's the
> >>>right number to output.
> >>I suppose the alternative is to only fire the tracepoint when *not* in =
XDP.
> >>Then the changes to the XDP stuff can be dropped and a separate set of
> >>tracepoints for XDP can be created in the future.
> >Let's be clear that it's the AF_XDP quirk that we have in here that actu=
al
> >xmit happens within NAPI polling routine.
> >
> >Sridhar is right with having xsk_frames as tx_cleaned but you're also
> >right that nb_pkts affects napi polling. But then if you look at Rx side
> >there is an analogous case with buffer allocation affecting napi polling.
> =

> To be correct,=A0 I would suggest 2 out parameters to i40e_clean_xdp_tx_i=
rq()
> tx_cleaned and xdp_transmitted.=A0 tx_cleaned should be filled in
> with xsk_frames. Add xdp_transmitted as an out parameter to i40e_xmit_zc()
> and fill it with nb_pkts.

Sorry, but I don't see the value in the second param. NAPI decides what to
do based on nb_pkts. That's the only parameter that matters for the purpose
of NAPI going into poll mode or not, right?

If so: I don't see any reason why a second parameter is necessary.

As I mentioned earlier: if it's just that the name of the parameter isn't
right (e.g., you want it to be 'tx_processed' instead of 'tx_cleaned') then
that's an easy fix; I'll just change the name.

It doesn't seem helpful to have xsk_frames as an out parameter for
i40e_napi_poll tracepoint; that value is not used to determine anything
about i40e's NAPI.

> I am not completely clear on the reasoning behind setting clean_complete
> based on number of packets transmitted in case of XDP.
> >
> >>That might reduce the complexity a bit, and will probably still be pret=
ty
> >>useful for people tuning their non-XDP workloads.
> =

> This option is fine too.

I'll give Jesse a chance to weigh in before I proceed with spinning a v3.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
