Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FE09A59D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 07:42:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD2D16063A;
	Mon, 21 Oct 2024 05:42:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i8db0YGI9JYT; Mon, 21 Oct 2024 05:42:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DFC760609
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729489331;
	bh=IwN2APzuoMR+7fgmrER77l2eiOhN6doSytLMUFLsLt4=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HHK6gmrFx22wCtwxEzwKKNBXYCL3V2Tv04VrW596fG5W4KnqkxWMYfCJuTAQAdAO/
	 /XGU5GpJLKIxrwFC7dgvyeuZjqdc6Zw7+e8dc739xUcUqeOzBURfCWqqphY2IxhuKi
	 CMtIWan6ulkNRSDwo1RfER5bOVQnshkt+7MvLjhPVJcFXvQPK8WNk+LX3yyk0P8uRE
	 kyNkPTUbUAkV2anzEAKL1h9JdbReBpzZ3xSA7MSaDL1I/Vvg+sCeNxudDzQR/eBm3T
	 2MPFlXtzpwu9ap5a6sefyZtnNhXmdVddX0UTvuI3k8mOYwLnos1006DfZYwPrW1W0U
	 f3DMvhWngGyfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DFC760609;
	Mon, 21 Oct 2024 05:42:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 89AF4AF2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 05:42:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6AE3B60607
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 05:42:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M0z0jkc6xJkG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 05:42:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6BC4E605E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BC4E605E5
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BC4E605E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 05:42:07 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>
Cc: netdev@vger.kernel.org, vinicius.gomes@intel.com, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:XDP (eXpress Data Path)"
 <bpf@vger.kernel.org>
In-Reply-To: <ZxKVI_DvFWBvRMaf@LQ3V64L9R2>
References: <20241014213012.187976-1-jdamato@fastly.com>
 <20241014213012.187976-3-jdamato@fastly.com>
 <87h69d3bm2.fsf@kurt.kurt.home> <ZxKVI_DvFWBvRMaf@LQ3V64L9R2>
Date: Mon, 21 Oct 2024 07:42:02 +0200
Message-ID: <87o73e2es5.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1729489324;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IwN2APzuoMR+7fgmrER77l2eiOhN6doSytLMUFLsLt4=;
 b=Jbs5GuSgoz06Yo6+KGN33AGlwU6bVgUJfxbq4ZyoTWGHQHxTJPHtRbfcDi31UU7CBUFGX5
 AWhXWkF2ii5GnuIRehHb8djQEXETXZQEQez9hU3zVJIAi//Qi1nqqNjMoSWaD32/vDIly2
 sMm4YmzsMNUPvHUzUxgXxTNCwgC5EEDpW2oIefWHHcDa0HwLaH7VQlxRUcHGthr0p4EGIH
 DdDdpZkbwkFJ1OcNV6OLq8vdud/oiawaxlWvPSTImEudNlqZ6RmQYwqWHHJ8ZiMInKmUgr
 Wppd4iKQ0wrpyKcCKAgw4ORLQ+pzC6kYy4jVaBb71VP/xAyd7UGazAan14tCTw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1729489324;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IwN2APzuoMR+7fgmrER77l2eiOhN6doSytLMUFLsLt4=;
 b=/penghODChhNiRRbiTNwutaWjk3kpVXgV5wGXUvxA8y0WgJlfcblrQay4QSk/3pGM/X9il
 piF30ZLsitnXklAw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=Jbs5GuSg; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=/penghOD
Subject: Re: [Intel-wired-lan] [RFC net-next v2 2/2] igc: Link queues to
 NAPI instances
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri Oct 18 2024, Joe Damato wrote:
> On Tue, Oct 15, 2024 at 12:27:01PM +0200, Kurt Kanzenbach wrote:
>> On Mon Oct 14 2024, Joe Damato wrote:
>
> [...]
>
>> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/e=
thernet/intel/igc/igc_main.c
>> > index 7964bbedb16c..59c00acfa0ed 100644
>> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> > @@ -4948,6 +4948,47 @@ static int igc_sw_init(struct igc_adapter *adap=
ter)
>> >  	return 0;
>> >  }
>> >=20=20
>> > +void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
>> > +			struct napi_struct *napi)
>> > +{
>> > +	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {
>> > +		netif_queue_set_napi(adapter->netdev, q_idx,
>> > +				     NETDEV_QUEUE_TYPE_RX, napi);
>> > +		netif_queue_set_napi(adapter->netdev, q_idx,
>> > +				     NETDEV_QUEUE_TYPE_TX, napi);
>> > +	} else {
>> > +		if (q_idx < adapter->num_rx_queues) {
>> > +			netif_queue_set_napi(adapter->netdev, q_idx,
>> > +					     NETDEV_QUEUE_TYPE_RX, napi);
>> > +		} else {
>> > +			q_idx -=3D adapter->num_rx_queues;
>> > +			netif_queue_set_napi(adapter->netdev, q_idx,
>> > +					     NETDEV_QUEUE_TYPE_TX, napi);
>> > +		}
>> > +	}
>> > +}
>>=20
>> In addition, to what Vinicius said. I think this can be done
>> simpler. Something like this?
>>=20
>> void igc_set_queue_napi(struct igc_adapter *adapter, int vector,
>> 			struct napi_struct *napi)
>> {
>> 	struct igc_q_vector *q_vector =3D adapter->q_vector[vector];
>>=20
>> 	if (q_vector->rx.ring)
>> 		netif_queue_set_napi(adapter->netdev, vector, NETDEV_QUEUE_TYPE_RX, na=
pi);
>>=20
>> 	if (q_vector->tx.ring)
>> 		netif_queue_set_napi(adapter->netdev, vector, NETDEV_QUEUE_TYPE_TX, na=
pi);
>> }
>
> I tried this suggestion but this does not result in correct output
> in the case where IGC_FLAG_QUEUE_PAIRS is disabled.
>
> The output from netlink:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                              --dump queue-get --json=3D'{"ifindex": 2}'
>
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'type': 'tx'},
>  {'id': 1, 'ifindex': 2, 'type': 'tx'}]
>
> Note the lack of a napi-id for the TX queues. This typically happens
> when the linking is not done correctly; netif_queue_set_napi should
> take a queue id as the second parameter.
>
> I believe the suggested code above should be modified to be as
> follows to use ring->queue_index:
>
>   if (q_vector->rx.ring)
>     netif_queue_set_napi(adapter->netdev,
>                          q_vector->rx.ring->queue_index,
>                          NETDEV_QUEUE_TYPE_RX, napi);
>=20=20=20
>   if (q_vector->tx.ring)
>     netif_queue_set_napi(adapter->netdev,
>                          q_vector->tx.ring->queue_index,
>                          NETDEV_QUEUE_TYPE_TX, napi);

LGTM. Thanks.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmcV6aoTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgkotD/0X5UYHEhJgqmCt6kB/HHS4YFUODWTi
XbRxhEARJl+qKt6TMqywibxifqVHp9hL08AWuXp5kBQWw9Sc2e6KfG6TfoIBtdM3
7nR6+Wk/CrMZhZVKbNjEQrfmcZAdl3Sk44DPaXhfqU0jCbgj0sj3zpoZU5q8UXT0
8E5kkrPY1a98ufweoCnYSmdvLmqUXXgHeBWyoFgOdxeN2jIY1azZrgQucmdYsgYt
g9Lprnp3euz/7UrAJhTgxjq7/klCKC0x2Sg0xmeKoNJ0aZC5zppsBZXJrWTlZElh
zgwiV0Vc3aEWCRIoOVudj1GjSEug6w/fJWBO6gP+5EZ1N6XfQG7MOzuW07G47ubm
8qX7JRjVyaNZAwX1wy69KZv/NVNUuPxJrdVMxPoV7HAZtZfQl5TA6aE3aBOvkO2q
gsSU0cR2fk4Ac2YLbKcZNwrxzg8gsnhPrdPJw0EWmCvaAIzxFnYW+lPdV0SDiHnc
e4kXClZjVramUW4cP3B9ZJ4krrXMNYQxnVfFSR55H+LwL0vKxqNNiRd3rNTpl4CL
HcfYg6wvKulCvJZ31QwpeovA4K5BdCDd1JH/PkHLVSdM1sUWtDE3pRRnFk+sUG+S
T8GqcYGHs4f6Ee2bYhHTFN5hOGRmcD+gM/9vdjAGqE4teIS/RhZDe7IoN0A/4gwP
2wWE6IMegLnsZQ==
=LURd
-----END PGP SIGNATURE-----
--=-=-=--
