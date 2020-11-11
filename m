Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A99C2AEE9E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 11:16:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B0A5D2A16D;
	Wed, 11 Nov 2020 10:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NaoJJzbwPLUW; Wed, 11 Nov 2020 10:16:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A4C9E2A12C;
	Wed, 11 Nov 2020 10:16:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 465641BF299
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 10:16:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4233686C4B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 10:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XsgV94defSHH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 10:16:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 829CF85932
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 10:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605089773;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7oSJCrXg185sOOaLxsZa44ct5AqFKH6HBr/ZnFW9I0g=;
 b=N08WzNMyDJDdPdW164Ng/s7YZvcTr0otNBtuBfgSrzJu9bUjPx+eC3g2DDNTlVISXak2K3
 F7rlI94lVaV3jEFxOGrvInnEtZC3NuqEPxMX0lTeSZWH70SovbkABE+wnmHbwaINilT+OD
 D67bNOEWC6imO2gZay5+QAvPquscRMg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-160-l-Qi0otXNY2kZYMGUSOuaQ-1; Wed, 11 Nov 2020 05:16:08 -0500
X-MC-Unique: l-Qi0otXNY2kZYMGUSOuaQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1C3710866A9;
 Wed, 11 Nov 2020 10:16:06 +0000 (UTC)
Received: from carbon (unknown [10.36.110.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B6BE61A340;
 Wed, 11 Nov 2020 10:15:57 +0000 (UTC)
Date: Wed, 11 Nov 2020 11:15:56 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Sven Auhagen <sven.auhagen@voleatech.de>
Message-ID: <20201111111556.51d17e75@carbon>
In-Reply-To: <20201111093909.wukhqafy3khycks5@SvensMacbookPro.hq.voleatech.com>
References: <20201019080553.24353-1-sven.auhagen@voleatech.de>
 <20201019080553.24353-4-sven.auhagen@voleatech.de>
 <fc1f6aad-b587-25e2-0632-ea43f1032aad@molgen.mpg.de>
 <20201111093909.wukhqafy3khycks5@SvensMacbookPro.hq.voleatech.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: Re: [Intel-wired-lan] [PATCH net v3 3/6] igb: XDP extack message on
 error
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, nhorman@redhat.com,
 netdev@vger.kernel.org, brouer@redhat.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, sassmann@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 11 Nov 2020 10:39:09 +0100
Sven Auhagen <sven.auhagen@voleatech.de> wrote:

> On Wed, Nov 11, 2020 at 08:11:46AM +0100, Paul Menzel wrote:
> > Dear Sven,
> > 
> > 
> > Am 19.10.20 um 10:05 schrieb sven.auhagen@voleatech.de:  
> > > From: Sven Auhagen <sven.auhagen@voleatech.de>
> > > 
> > > Add an extack error message when the RX buffer size is too small
> > > for the frame size.
> > > 
> > > Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
> > > ---
> > >   drivers/net/ethernet/intel/igb/igb_main.c | 12 +++++++-----
> > >   1 file changed, 7 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > > index 0a9198037b98..088f9ddb0093 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > @@ -2824,20 +2824,22 @@ static int igb_setup_tc(struct net_device *dev, enum tc_setup_type type,
> > >   	}
> > >   }
> > > -static int igb_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
> > > +static int igb_xdp_setup(struct net_device *dev, struct netdev_bpf *bpf)
> > >   {
> > >   	int i, frame_size = dev->mtu + IGB_ETH_PKT_HDR_PAD;
> > >   	struct igb_adapter *adapter = netdev_priv(dev);
> > > +	struct bpf_prog *prog = bpf->prog, *old_prog;
> > >   	bool running = netif_running(dev);
> > > -	struct bpf_prog *old_prog;
> > >   	bool need_reset;
> > >   	/* verify igb ring attributes are sufficient for XDP */
> > >   	for (i = 0; i < adapter->num_rx_queues; i++) {
> > >   		struct igb_ring *ring = adapter->rx_ring[i];
> > > -		if (frame_size > igb_rx_bufsz(ring))
> > > +		if (frame_size > igb_rx_bufsz(ring)) {
> > > +			NL_SET_ERR_MSG_MOD(bpf->extack, "The RX buffer size is too small for the frame size");  
> > 
> > Could you please also add both size values to the error message?  
> 
> Dear Paul,
> 
> yes, sure.
> I will send a new series with that change.

I don't think it is possible to send this extra variable info via
extack (but the macro might have improved since last I checked).

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
