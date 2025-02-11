Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA30A304E2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 08:51:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26E866079C;
	Tue, 11 Feb 2025 07:51:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q2LUtaUFRUpQ; Tue, 11 Feb 2025 07:51:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DAE3607FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739260300;
	bh=HLXdsOYBWhzYvVhUcbeV+5CfIBPzYpGWPp2aeBnUup4=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yd6HGBTx5lCatiJqH3x/CTwxy/bPyUoBPuQPCiCUXcXY2HoAWYrkApLCjsoe58W6H
	 yOaa2VsZzjTeJHuZS3TXhAdbkppPdCn7PKIXJQfK5m1BoeoSBaxmin7xFh3/Xrcil4
	 gfe+L4jVacHp+kWHi80peBqVdBFRCxyzbl6/BL/IpKbj9HcJAJdJVcVMgucodAg9qF
	 EYqWF9rF8NT3BvSWZabH/KjEOdtGd/ddIv1q5gz1uLs74bRgQFvE2qv/kOJgRA6FZ5
	 DDnCXb26ZobplSvCNf85NZ58dD4bgv6bwVlzizU8NbzNdaaRhcPYNCYseZLCx+HwSS
	 zYAUr0djdqiWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DAE3607FC;
	Tue, 11 Feb 2025 07:51:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 80145194
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 07:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6EA706079C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 07:51:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f8mQUkCMyOcX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 07:51:37 +0000 (UTC)
X-Greylist: delayed 81116 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 11 Feb 2025 07:51:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 41EA16075F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41EA16075F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41EA16075F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 07:51:37 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
In-Reply-To: <Z6pJrRRqcHYhZWss@LQ3V64L9R2>
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
 <20250210-igb_irq-v1-2-bde078cdb9df@linutronix.de>
 <Z6pJrRRqcHYhZWss@LQ3V64L9R2>
Date: Tue, 11 Feb 2025 08:51:31 +0100
Message-ID: <871pw4q5q4.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739260293;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HLXdsOYBWhzYvVhUcbeV+5CfIBPzYpGWPp2aeBnUup4=;
 b=Pe1p6EygHlZgdhaPkH2BCX7qWx4UrEo45NiuSftppswCxpM2t9QHfcgFB2pYg+/pqdHdxL
 31MzEZNwfKyGDV2yN6ljrd5WpwWOq0BX0a+l6DlQJufK+duhVTD3Y9Qje9LtYRCtE6k3O3
 HcS6RXR+O9j/0U6slEwF0mvPTg0OYhp7f21SEX/3AWiIaxdjymFU/y6tY6S9ozfAeKJc4r
 KTKH2tG2erqziIIx//1hrcg6evvC1iAKZ1toS0WgmSsIjX17lZx58bliDxzH2xX6EmIgZH
 mqemjN+iPKSnjRgSEf8bo+4XQqNz5O63fE4ESglAQCAPMkdQ1ylpO3Dnj+xf6w==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739260293;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HLXdsOYBWhzYvVhUcbeV+5CfIBPzYpGWPp2aeBnUup4=;
 b=uAMlPqdhGqg7jnv9XQEclHQofrBqRw4ood23Pop5RSU/lPap4sG+umXU6oLalE5SKYDuNL
 j20VXXQ36KP2LxAw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=Pe1p6Eyg; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=uAMlPqdh
Subject: Re: [Intel-wired-lan] [PATCH 2/3] igb: Link queues to NAPI instances
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

On Mon Feb 10 2025, Joe Damato wrote:
> On Mon, Feb 10, 2025 at 10:19:36AM +0100, Kurt Kanzenbach wrote:
>> Link queues to NAPI instances via netdev-genl API. This is required to u=
se
>> XDP/ZC busy polling. See commit 5ef44b3cb43b ("xsk: Bring back busy poll=
ing
>> support") for details.
>>=20
>> This also allows users to query the info with netlink:
>>=20
>> |$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/netde=
v.yaml \
>> |                               --dump queue-get --json=3D'{"ifindex": 2=
}'
>> |[{'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'rx'},
>> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'rx'},
>> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'rx'},
>> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'rx'},
>> | {'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'tx'},
>> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'tx'},
>> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'tx'},
>> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'tx'}]
>>=20
>> While at __igb_open() use RCT coding style.
>>=20
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>>  drivers/net/ethernet/intel/igb/igb.h      |  2 ++
>>  drivers/net/ethernet/intel/igb/igb_main.c | 35 ++++++++++++++++++++++++=
++-----
>>  drivers/net/ethernet/intel/igb/igb_xsk.c  |  2 ++
>>  3 files changed, 34 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet=
/intel/igb/igb.h
>> index 02f340280d20a6f7e32bbd3dfcbb9c1c7b4c6662..79eca385a751bfdafdf38492=
8b6cc1b350b22560 100644
>> --- a/drivers/net/ethernet/intel/igb/igb.h
>> +++ b/drivers/net/ethernet/intel/igb/igb.h
>> @@ -722,6 +722,8 @@ enum igb_boards {
>>=20=20
>>  extern char igb_driver_name[];
>>=20=20
>> +void igb_set_queue_napi(struct igb_adapter *adapter, int q_idx,
>> +			struct napi_struct *napi);
>>  int igb_xmit_xdp_ring(struct igb_adapter *adapter,
>>  		      struct igb_ring *ring,
>>  		      struct xdp_frame *xdpf);
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/eth=
ernet/intel/igb/igb_main.c
>> index d4128d19cc08f62f95682069bb5ed9b8bbbf10cb..8e964484f4c9854e4e3e0b4f=
3e8785fe93bd1207 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -2099,6 +2099,22 @@ static void igb_check_swap_media(struct igb_adapt=
er *adapter)
>>  	wr32(E1000_CTRL_EXT, ctrl_ext);
>>  }
>>=20=20
>> +void igb_set_queue_napi(struct igb_adapter *adapter, int vector,
>> +			struct napi_struct *napi)
>> +{
>> +	struct igb_q_vector *q_vector =3D adapter->q_vector[vector];
>> +
>> +	if (q_vector->rx.ring)
>> +		netif_queue_set_napi(adapter->netdev,
>> +				     q_vector->rx.ring->queue_index,
>> +				     NETDEV_QUEUE_TYPE_RX, napi);
>> +
>> +	if (q_vector->tx.ring)
>> +		netif_queue_set_napi(adapter->netdev,
>> +				     q_vector->tx.ring->queue_index,
>> +				     NETDEV_QUEUE_TYPE_TX, napi);
>> +}
>> +
>>  /**
>>   *  igb_up - Open the interface and prepare it to handle traffic
>>   *  @adapter: board private structure
>> @@ -2106,6 +2122,7 @@ static void igb_check_swap_media(struct igb_adapte=
r *adapter)
>>  int igb_up(struct igb_adapter *adapter)
>>  {
>>  	struct e1000_hw *hw =3D &adapter->hw;
>> +	struct napi_struct *napi;
>>  	int i;
>>=20=20
>>  	/* hardware has been reset, we need to reload some things */
>> @@ -2113,8 +2130,11 @@ int igb_up(struct igb_adapter *adapter)
>>=20=20
>>  	clear_bit(__IGB_DOWN, &adapter->state);
>>=20=20
>> -	for (i =3D 0; i < adapter->num_q_vectors; i++)
>> -		napi_enable(&(adapter->q_vector[i]->napi));
>> +	for (i =3D 0; i < adapter->num_q_vectors; i++) {
>> +		napi =3D &adapter->q_vector[i]->napi;
>> +		napi_enable(napi);
>> +		igb_set_queue_napi(adapter, i, napi);
>> +	}
>
> It looks like igb_ub is called from igb_io_resume (struct
> pci_error_handlers). I don't know if RTNL is held in that path. If
> its not, this could trip the ASSERT_RTNL in netif_queue_set_napi.
>
> Can you check and see if this is an issue for that path?

AFAICS the PCI error handlers are called in drivers/pci/pcie/err.c
without RTNL lock held. These function take only the device_lock().

I'll add the missing rtnl_lock()/unlock() calls to igb_io_resume() and
igb_io_error_detected(). Thanks.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmerAYQTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgoMeEACiGABB2qc3+IdFTlYYyXNh/nuujdG8
o9fIlHBPwgxt1xwBwdWWjxlVaraR7mGbrbdD4UxYqBsAv3+txzaP5QLOXcOUiHh/
uq7ezUsVMWmo6YRoW2PMhcq5c6oxqc6Nu+pM+84ElbSZlJQ5ECnjb2URqy5/rOOM
b5724jqnFBhJBpuNfeeBrobg3/ebYl/1JC7IvPfPlPnDCAUWaGqSm8Pi6T7ASOPh
xHDaX719bQiDKe6EGzmvamLka7dSqe34gUXq7c5W38nmluR4GhSCjyxC8GLAMz8c
+SGT5Ewc30Sr8IB0HtdHpXYdu8Gm+Pb/A+0R9DQ9PeoUWQZ6WJwvOg8DHX7fDQMh
aOTo4G/xLgiNnYznftCY0QRc5seV1tVDcPP4cUydEoaE7xKcViPbQF6t1lFiV7OC
KU10tlyxiHSfVFD+3bUxkz8qvMCa+RR3wAEdqtgDndat/2Rp6/YVDPCYxSOvFqdF
6q66axQ73JqEoGCbY2F5pPc0Alz8temx0+rb/VLGRkhnVfIRCozDkS8Sc5e+/CVu
XxwS2xE0c4b6an8IO+vBpmR6dslqkVf5w7z1G69bhzSe+cN5cg8iBud85a0MEUPu
O81nPI9B+g+VX2mRl2HwL6NsVqDRLdMeBJuNiCeg20f6JeK/Nz54vNHHphbRmvIA
acuz3oYTy2Sn2A==
=05zk
-----END PGP SIGNATURE-----
--=-=-=--
