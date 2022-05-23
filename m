Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC315308E5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 May 2022 07:40:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A2BF83F81;
	Mon, 23 May 2022 05:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pxHBoGMZUW7a; Mon, 23 May 2022 05:40:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3F8C83F7E;
	Mon, 23 May 2022 05:40:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 365E11BF589
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 05:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2D3FD41869
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 05:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=inria.fr
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2XZN87PMgLIp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 May 2022 05:40:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57CE641759
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 05:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=byyefb+qYICK5HXkH39dhHRx9IFMTv8AdQcFgXGNpX4=;
 b=MiRahVf8HII5RMAtCDoA5do9hpz3tFPrWzgocLmONPoYet4ApHp5eBTG
 3RD6xHyssEhiRPswcHlZp/Dpz3DCMkDDwFu2oO6nkOLygFyQLdmM5aIUv
 zXr9qddDJQS7vpvgjjPq4TqR+RHzHb8wrR0kkRP73MUMkqo4Y0bmsM5nE M=;
Authentication-Results: mail2-relais-roc.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.91,245,1647298800"; d="scan'208";a="37556742"
Received: from 245.122.68.85.rev.sfr.net (HELO hadrien) ([85.68.122.245])
 by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 May 2022 07:40:28 +0200
Date: Mon, 23 May 2022 07:40:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <71292e14-fe6c-f475-009d-1ea8cde0ea46@molgen.mpg.de>
Message-ID: <alpine.DEB.2.22.394.2205230736190.2777@hadrien>
References: <20220521111145.81697-50-Julia.Lawall@inria.fr>
 <71292e14-fe6c-f475-009d-1ea8cde0ea46@molgen.mpg.de>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-969742616-1653284428=:2777"
Subject: Re: [Intel-wired-lan] [PATCH] drivers/net/ethernet/intel: fix typos
 in comments
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Julia Lawall <Julia.Lawall@inria.fr>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-969742616-1653284428=:2777
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 23 May 2022, Paul Menzel wrote:

> Dear Julia,
>
>
> Thank you for your patch.
>
> I noticed, that the maintainer Tony wasn’t in the Cc: list.

get_maintainer reports him as a "supporter", and I think that my script
only takes people listed as "maintainer".

> Am 21.05.22 um 13:11 schrieb Julia Lawall:
> > Spelling mistakes (triple letters) in comments.
> > Detected with the help of Coccinelle.
>
> I’d be interested in the script you used.

Attached.  It should have a pretty low rate of false positives.  Mostly
things like Eeew and Wheee.

>
> >
> > Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>
> >
>
> Nit: One unneeded blank line.

OK, thanks.

julia

> > ---
> >   drivers/net/ethernet/intel/fm10k/fm10k_mbx.c   |    2 +-
> >   drivers/net/ethernet/intel/ice/ice_lib.c       |    2 +-
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c |    2 +-
> >   3 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
> > b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
> > index 30ca9ee1900b..f2fba6e1d0f7 100644
> > --- a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
> > +++ b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
> > @@ -1825,7 +1825,7 @@ static void fm10k_sm_mbx_process_error(struct
> > fm10k_mbx_info *mbx)
> >   		fm10k_sm_mbx_connect_reset(mbx);
> >   		break;
> >   	case FM10K_STATE_CONNECT:
> > -		/* try connnecting at lower version */
> > +		/* try connecting at lower version */
> >   		if (mbx->remote) {
> >   			while (mbx->local > 1)
> >   				mbx->local--;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index 454e01ae09b9..70961c0343e7 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -2403,7 +2403,7 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
> >   				agg_id);
> >   			return;
> >   		}
> > -		/* aggregator node is created, store the neeeded info */
> > +		/* aggregator node is created, store the needed info */
> >   		agg_node->valid = true;
> >   		agg_node->agg_id = agg_id;
> >   	}
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > index 3e74ab82868b..3f5ef5269bb2 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > @@ -77,7 +77,7 @@ static int __ixgbe_enable_sriov(struct ixgbe_adapter
> > *adapter,
> >   	IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, IXGBE_PFDTXGSWC_VT_LBEN);
> >   	adapter->bridge_mode = BRIDGE_MODE_VEB;
> >   -	/* limit trafffic classes based on VFs enabled */
> > +	/* limit traffic classes based on VFs enabled */
> >   	if ((adapter->hw.mac.type == ixgbe_mac_82599EB) && (num_vfs < 16)) {
> >   		adapter->dcb_cfg.num_tcs.pg_tcs = MAX_TRAFFIC_CLASS;
> >   		adapter->dcb_cfg.num_tcs.pfc_tcs = MAX_TRAFFIC_CLASS;
>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
>
> Kind regards,
>
> Paul
>
--8323329-969742616-1653284428=:2777
Content-Type: text/plain; charset=US-ASCII; name=threespell.cocci
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.DEB.2.22.394.2205230740270.2777@hadrien>
Content-Description: 
Content-Disposition: attachment; filename=threespell.cocci

I3NwYXRjaCAtaiA0NCAtLW5vLWluY2x1ZGVzIC0taW5jbHVkZS1oZWFkZXJz
IC0tdmVyeS1xdWlldA0KDQpAaW5pdGlhbGl6ZTpvY2FtbEANCkBADQoNCmxl
dCBzZWVuID0gSGFzaHRibC5jcmVhdGUgMTAxDQpsZXQgYnNlZW4gPSBIYXNo
dGJsLmNyZWF0ZSAxMDENCmxldCBpZHMgPSBIYXNodGJsLmNyZWF0ZSAxMDEN
CmV4Y2VwdGlvbiBOb3RPSw0KDQpsZXQgb2t3ID0gWyJuZWVkbiI7ImFyZW4i
OyJpc24iOyJ3YXNuIjsiZG9lc24iOyJkaWRuIjsid2VyZW4iOyJzaG91bGRu
IjsiY291bGRuIjsid291bGRuIjsiaGFzbiI7ImhhdmVuIjsibGludXgiOyJo
b3RwbHVnIjsiY3B1IjsiaWZkZWYiOyJpZm5kZWYiOyJlbmRpZiI7InN0cnVj
dCJdDQoNCmxldCBhZGQgaSA9DQogIChpZiBub3QgKEhhc2h0YmwubWVtIGlk
cyBpKSB0aGVuIEhhc2h0YmwuYWRkIGlkcyBpICgpKTsNCiAgbGV0IHBpZWNl
cyA9IFN0ci5zcGxpdCAoU3RyLnJlZ2V4cCAiXyIpIGkgaW4NCiAgTGlzdC5p
dGVyDQogICAgKGZ1biBpIC0+IGlmIG5vdCAoSGFzaHRibC5tZW0gaWRzIGkp
IHRoZW4gSGFzaHRibC5hZGQgaWRzIGkgKCkpDQogICAgcGllY2VzOw0KICBm
YWxzZQ0KDQpsZXQgdm93ZWxzID0gWydhJzsnZSc7J2knOydvJzsndSc7J3kn
OydBJzsnRSc7J0knOydPJzsnVSc7J1knXQ0KDQpsZXQgaGFzdm93ZWwgcyA9
DQogIHRyeQ0KICAgIFN0cmluZy5pdGVyDQogICAgICAoZnVuIGMgLT4NCglp
ZiBMaXN0Lm1lbSBjIHZvd2Vscw0KCXRoZW4gcmFpc2UgTm90T0spDQogICAg
ICBzOw0KICAgIGZhbHNlDQogIHdpdGggTm90T0sgLT4gdHJ1ZQ0KDQpsZXQg
aGFzY29uc29uYW50IHMgPQ0KICB0cnkNCiAgICBTdHJpbmcuaXRlcg0KICAg
ICAgKGZ1biBjIC0+DQoJaWYgbm90KExpc3QubWVtIGMgdm93ZWxzKQ0KCXRo
ZW4gcmFpc2UgTm90T0spDQogICAgICBzOw0KICAgIGZhbHNlDQogIHdpdGgg
Tm90T0sgLT4gdHJ1ZQ0KDQpsZXQgb25seV9sZXR0ZXJzIHMgPQ0KICBsZXQg
aXNsb3dlciBjID0gJ2EnIDw9IGMgJiYgYyA8PSAneicgaW4NCiAgbGV0IGlz
dXBwZXIgYyA9ICdBJyA8PSBjICYmIGMgPD0gJ1onIGluDQogIHRyeQ0KICAg
IFN0cmluZy5pdGVyaQ0KICAgICAgKGZ1biBpIGMgLT4NCglsZXQgb2sgPQ0K
CSAgaWYgaSA9IDANCgkgIHRoZW4gaXNsb3dlciBjIHx8IGlzdXBwZXIgYw0K
CSAgZWxzZSBpc2xvd2VyIGMgaW4NCglpZiBub3Qgb2sNCgl0aGVuIHJhaXNl
IE5vdE9LKQ0KICAgICAgczsNCiAgICB0cnVlDQogIHdpdGggTm90T0sgLT4g
ZmFsc2UNCg0KbGV0IGhhc3RocmVlIHMgPQ0KICBsZXQgbCA9IENvbW1vbi5s
aXN0X29mX3N0cmluZyBzIGluDQogIGxldCByZWMgbG9vcCA9IGZ1bmN0aW9u
DQogICAgICBhOjpiOjpjOjpkOjpfIHdoZW4gYSA9IGIgJiYgYiA9IGMgJiYg
YyA9IGQgLT4gZmFsc2UNCiAgICB8IGE6OmI6OmM6Ol8gd2hlbiBhID0gYiAm
JiBiID0gYyAtPiB0cnVlDQogICAgfCB4Ojp4cyAtPiBsb29wIHhzDQogICAg
fCBbXSAtPiBmYWxzZSBpbg0KICBsb29wIGwNCg0KbGV0IGNoZWNrIGJhZCBs
b2MgcCBjID0NCiAgaWYgbm90KEhhc2h0YmwubWVtIHNlZW4gYykNCiAgdGhl
bg0KICBiZWdpbg0KICBIYXNodGJsLmFkZCBzZWVuIGMgKCk7DQogIGxldCBw
aWVjZXMgPSBTdHIuc3BsaXQgKFN0ci5yZWdleHAgIlxcYiIpIGMgaW4NCiAg
TGlzdC5pdGVyDQogICAgKGZ1biB3b3JkIC0+DQogICAgICBpZiBTdHJpbmcu
bGVuZ3RoIHdvcmQgPD0gMyB8fCBub3Qob25seV9sZXR0ZXJzIHdvcmQpIHx8
IEhhc2h0YmwubWVtIGlkcyB3b3JkIHx8IG5vdChoYXN2b3dlbCB3b3JkKSB8
fCBub3QoaGFzY29uc29uYW50IHdvcmQpDQogICAgICB0aGVuICgpDQogICAg
ICBlbHNlDQoJbGV0IHdvcmQgPSBTdHJpbmcudW5jYXBpdGFsaXplX2FzY2lp
IHdvcmQgaW4NCglpZiBMaXN0Lm1lbSB3b3JkIG9rdw0KCXRoZW4gKCkNCgll
bHNlDQoJbGV0IHJlcyA9DQoJICBpZiBoYXN0aHJlZSB3b3JkIHRoZW4gW3dv
cmRdIGVsc2UgW10gaW4NCglMaXN0Lml0ZXINCgkgIChmdW4gd2QgLT4NCgkg
ICAgQ29tbW9uLmhhc2hhZGQgYnNlZW4gd29yZCAobG9jLHdvcmQscCkpDQoJ
ICByZXMpDQogICAgcGllY2VzDQogIGVuZA0KDQpAaWRlbnRpZmllckANCmlk
ZW50aWZpZXIgaSA6IHNjcmlwdDpvY2FtbCgpIHsgYWRkIGkgfTsNCkBADQpp
DQoNCkByMUANCmNvbW1lbnRzIGM7DQpzdGF0ZW1lbnQgUzsNCnBvc2l0aW9u
IHA7DQpAQA0KDQpTQGNAcA0KDQpAc2NyaXB0Om9jYW1sQA0KYyA8PCByMS5j
Ow0KcCA8PCByMS5wOw0KQEANCg0KbGV0IGJhZCA9IHJlZiBbXSBpbg0KTGlz
dC5pdGVyDQooZnVuY3Rpb24gYy0+DQpsZXQgKGNiLGNpLGNhKSA9IGMgaW4N
Ckxpc3QuaXRlciAoY2hlY2sgYmFkICJiZWZvcmUiIHApIGNiOw0KTGlzdC5p
dGVyIChjaGVjayBiYWQgIndpdGhpbiIgcCkgY2k7DQpMaXN0Lml0ZXIgKGNo
ZWNrIGJhZCAiYWZ0ZXIiIHApIGNhKQ0KYw0KDQpAcjJADQpjb21tZW50cyBj
Ow0KZGVjbGFyYXRpb24gZDsNCnBvc2l0aW9uIHA7DQpAQA0KDQpkQGNAcA0K
DQpAc2NyaXB0Om9jYW1sQA0KYyA8PCByMi5jOw0KcCA8PCByMi5wOw0KQEAN
Cg0KbGV0IGJhZCA9IHJlZiBbXSBpbg0KTGlzdC5pdGVyDQooZnVuY3Rpb24g
Yy0+DQpsZXQgKGNiLGNpLGNhKSA9IGMgaW4NCkxpc3QuaXRlciAoY2hlY2sg
YmFkICJiZWZvcmUiIHApIGNiOw0KTGlzdC5pdGVyIChjaGVjayBiYWQgIndp
dGhpbiIgcCkgY2k7DQpMaXN0Lml0ZXIgKGNoZWNrIGJhZCAiYWZ0ZXIiIHAp
IGNhKQ0KYw0KDQpAZmluYWxpemU6b2NhbWxADQpic2VlbiA8PCBtZXJnZS5i
c2VlbjsNCkBADQoNCkxpc3QuaXRlcg0KICAoZnVuIGJzZWVuIC0+DQogICAg
SGFzaHRibC5pdGVyDQogICAgICAoZnVuIHdvcmQgbCAtPg0KCW1hdGNoICFs
IHdpdGgNCgkgIFsobG9jLHdvcmQscCldIC0+DQoJICAgIENvY2NpbGliLnBy
aW50X21haW4NCgkgICAgICAoUHJpbnRmLnNwcmludGYgInByb2JsZW0gd2l0
aCAlcyBjb21tZW50IHdvcmQ6ICVzIiBsb2Mgd29yZCkNCgkgICAgICBwDQoJ
fCBfIC0+ICgpKQ0KICAgICAgYnNlZW4pDQogIGJzZWVuDQo=

--8323329-969742616-1653284428=:2777
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--8323329-969742616-1653284428=:2777--
