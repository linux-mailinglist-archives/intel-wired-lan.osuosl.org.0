Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDFA997E71
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2024 09:08:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6772F60A69;
	Thu, 10 Oct 2024 07:08:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q-mDk7cqJv3H; Thu, 10 Oct 2024 07:08:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B9CE60A48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728544109;
	bh=IU6+r5lZGAYZvMk+oAC6fxTdFz8i+0mzjN8aBnNbt3M=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cv0i0kM4ppTdL2em7IzSce+N4d9lriKqm3JhJr2BK6u5CDRAHNiSk2LoLb7lEgSBf
	 tHmCKZGTg4uVGjvJjygHztGjj9TOf1p0PgZ4Aw9+L2yQHsAcxvh4iv6eEi05c6IQx/
	 QikHpuvRJs3s33YzyKMhXYlXhRUvwBuheTFnxbBeSGPuF3C7v6FV9exYPyeQlUfLwf
	 aLwkWgwPv26lC+k7ETZDwCDPCJt8QG3FyBiyTcIwODaOB9rKFV8/SlZuKx0SCSOwFP
	 IcgIYDBwVWancoF3EfJZVcgbNdJMvBstjc/BT+IOwzRpbBzuSLdy0+gS6IAwWtvfrv
	 jAH3T5RR7CVqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B9CE60A48;
	Thu, 10 Oct 2024 07:08:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 706711BF473
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 07:08:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5EAFA608FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 07:08:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ybuJHTa9pAxk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2024 07:08:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 12239608EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12239608EE
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 12239608EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 07:08:25 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>
In-Reply-To: <Zwa3sW-4s7oqktX3@LQ3V64L9R2>
References: <20241003233850.199495-1-jdamato@fastly.com>
 <20241003233850.199495-3-jdamato@fastly.com>
 <87msjg46lw.fsf@kurt.kurt.home> <Zwa3sW-4s7oqktX3@LQ3V64L9R2>
Date: Thu, 10 Oct 2024 09:08:20 +0200
Message-ID: <87wmig3063.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1728544102;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IU6+r5lZGAYZvMk+oAC6fxTdFz8i+0mzjN8aBnNbt3M=;
 b=hw6Bw/VpVdaTyP4PBmtuQiqyNyiYHkDnABR2i0CsyzvWfQR8lbjUGyUVYA22YxziLtLurh
 bzmp0RUF6lK9knrSbw7CDiCKGBOFj4OqN7MsJZkwO5gUJJvGM3RYd57HHx6NENWeAOz+ED
 ZCHFxwoSaXMZZAsngUenbF0YOMYwWZ6XFzV5RK35CtJ7xZ2z6NHqLIehT1EciyTRYDubFR
 gGLfyP2CEfDA87r+H2OqYiLTI970bcxQWGfVIO2C1tSn8w9LrbTLBcZkXGuX/zGJPa/i48
 BYgr9IRALy0zHcQ4mv18vqSgBoWVL931KUIKujYr5FaOgWFLxWe3Qw82j9hP1Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1728544102;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IU6+r5lZGAYZvMk+oAC6fxTdFz8i+0mzjN8aBnNbt3M=;
 b=uehgxAKYZ234wpzUPC6gpFpkpmQEj/nuRSAJ/ahxtW5AhCw9W75oc9MAWoBWZ33KzS8VFS
 auwPAKaLdTfNzKBA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=hw6Bw/Vp; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=uehgxAKY
Subject: Re: [Intel-wired-lan] [RFC net-next 2/2] igc: Link queues to NAPI
 instances
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, "moderated list:INTEL
 ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed Oct 09 2024, Joe Damato wrote:
> On Mon, Oct 07, 2024 at 11:14:51AM +0200, Kurt Kanzenbach wrote:
>> Hi Joe,
>>=20
>> On Thu Oct 03 2024, Joe Damato wrote:
>> > Link queues to NAPI instances via netdev-genl API so that users can
>> > query this information with netlink:
>> >
>> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yam=
l \
>> >                          --dump queue-get --json=3D'{"ifindex": 2}'
>> >
>> > [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>> >  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>> >  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
>> >  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
>> >  {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>> >  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
>> >  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>> >  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
>> >
>> > Since igc uses only combined queues, you'll note that the same NAPI ID
>> > is present for both rx and tx queues at the same index, for example
>> > index 0:
>> >
>> > {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>> > {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>> >
>> > Signed-off-by: Joe Damato <jdamato@fastly.com>
>> > ---
>> >  drivers/net/ethernet/intel/igc/igc_main.c | 30 ++++++++++++++++++++---
>> >  1 file changed, 26 insertions(+), 4 deletions(-)
>> >
>> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/e=
thernet/intel/igc/igc_main.c
>> > index 7964bbedb16c..b3bd5bf29fa7 100644
>> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> > @@ -4955,6 +4955,7 @@ static int igc_sw_init(struct igc_adapter *adapt=
er)
>> >  void igc_up(struct igc_adapter *adapter)
>> >  {
>> >  	struct igc_hw *hw =3D &adapter->hw;
>> > +	struct napi_struct *napi;
>> >  	int i =3D 0;
>> >=20=20
>> >  	/* hardware has been reset, we need to reload some things */
>> > @@ -4962,8 +4963,17 @@ void igc_up(struct igc_adapter *adapter)
>> >=20=20
>> >  	clear_bit(__IGC_DOWN, &adapter->state);
>> >=20=20
>> > -	for (i =3D 0; i < adapter->num_q_vectors; i++)
>> > -		napi_enable(&adapter->q_vector[i]->napi);
>> > +	for (i =3D 0; i < adapter->num_q_vectors; i++) {
>> > +		napi =3D &adapter->q_vector[i]->napi;
>> > +		napi_enable(napi);
>> > +		/* igc only supports combined queues, so link each NAPI to both
>> > +		 * TX and RX
>> > +		 */
>>=20
>> igc has IGC_FLAG_QUEUE_PAIRS. For example there may be 2 queues
>> configured, but 4 vectors active (and 4 IRQs). Is your patch working
>> with that?  Can be tested easily with `ethtool -L <inf> combined 2` or
>> by booting with only 2 CPUs.
>
> I tested what you asked, here's what it looks like on my system:

Thanks.

>
> 16 core Intel(R) Core(TM) i7-1360P
>
> lspci:
> Ethernet controller: Intel Corporation Device 125c (rev 04)
>                      Subsystem: Intel Corporation Device 3037
>
> ethtool -i:
> firmware-version: 2017:888d
>
> $ sudo ethtool -L enp86s0 combined 2
> $ sudo ethtool -l enp86s0
> Channel parameters for enp86s0:
> Pre-set maximums:
> RX:		n/a
> TX:		n/a
> Other:		1
> Combined:	4
> Current hardware settings:
> RX:		n/a
> TX:		n/a
> Other:		1
> Combined:	2
>
> $ cat /proc/interrupts | grep enp86s0 | cut --delimiter=3D":" -f1
>  144
>  145
>  146
>  147
>  148
>
> Note that IRQ 144 is the "other" IRQ, so if we ignore that one...
> /proc/interrupts shows 4 IRQs, despite there being only 2 queues.
>
> Querying netlink to see which IRQs map to which NAPIs:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump napi-get --json=3D'{"ifindex": 2}'
> [{'id': 8200, 'ifindex': 2, 'irq': 148},
>  {'id': 8199, 'ifindex': 2, 'irq': 147},
>  {'id': 8198, 'ifindex': 2, 'irq': 146},
>  {'id': 8197, 'ifindex': 2, 'irq': 145}]
>
> This suggests that all 4 IRQs are assigned to a NAPI (this mapping
> happens due to netif_napi_set_irq in patch 1).
>
> Now query the queues and which NAPIs they are associated with (which
> is what patch 2 adds):
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \=
=20
>                          --dump queue-get --json=3D'{"ifindex": 2}'
> [{'id': 0, 'ifindex': 2, 'napi-id': 8197, 'type': 'rx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8198, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'napi-id': 8197, 'type': 'tx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8198, 'type': 'tx'}]
>
> As you can see above, since the queues are combined and there are
> only 2 of them, NAPI IDs 8197 and 8198 (which are triggered via IRQ
> 145 and 146) are displayed.

Is that really correct? There are four NAPI IDs which are triggered by
the four IRQs. Let's say we have:

 - IRQ: 145 -> NAPI 8197 -> Tx for queue 0
 - IRQ: 146 -> NAPI 8198 -> Rx for queue 0
 - IRQ: 147 -> NAPI 8199 -> Tx for queue 1
 - IRQ: 148 -> NAPI 8200 -> Rx for queue 1

My understanding is that this scheme is used when <=3D 2 queues are
configured. See IGC_FLAG_QUEUE_PAIRS.

My expectation would be some output like:

[{'id': 0, 'ifindex': 2, 'napi-id': 8197, 'type': 'tx'},
 {'id': 0, 'ifindex': 2, 'napi-id': 8198, 'type': 'rx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8199, 'type': 'tx'},
 {'id': 1, 'ifindex': 2, 'napi-id': 8200, 'type': 'rx'}]

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmcHfWQTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgm5kD/wKWSB0Ipa7QUEmYLceiDsnwHr9ptAG
veIqB7500LItsANplLxHfgqb85Bs6ioag6EQVbnOCyeIncbO/2sPWGTYuen71uNk
em7EhPF+c73A1NkLZzYMSw2FVnoPrPD3+9wIWzRBgYneix9b3nFwVAwgO1NiDnQg
Vw+2WmAnJkM2KHziYF4lcuJlDFlwqUS674wJGVG3eQTzF/pAWzgML0BoldNMUQlP
gQFdXhYK4HQJTaF09aIv7hwZOyI659+vUDmS7zvJd1qk1R9L+FaYiv3hOjuIu7YQ
dEzWs9PhGH3vk50POY30Y248oiAO8wQZMloB0Y5CufKtgIB1fhx+NQFDAmdfI5If
y+Vavk+N2/b6DvCQlyQ149SoJAwIRZ3Noa2J/q0vMSceCnncDJCITXYtTbhjmruv
gq2guTYIZIFbpx4NKorJoWZ9fl0PGJL8uDgqRHO6cotcG40jS90p85Lm5iy1dVp/
0Z55krETtccNRy/pp2FNT+ljwgUye5Mo9hOtXvKyNsVip50pxM+ng16U8h0uAIOd
OyXeYASR6Xc9o9Ac5LX39AjoDnONwXj0+lnYyFjnMk6apyV5gNbXN2lCQDv9XZWt
9P6VVuiCQB97u9oKOs7iO5cQ64frJI0nuLmafxg5eKcVi4Cb7gjhRYNJRdzFEvDM
pgxnGG2nKU/qmg==
=yeTM
-----END PGP SIGNATURE-----
--=-=-=--
