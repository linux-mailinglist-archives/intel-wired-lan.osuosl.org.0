Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1301A59AB4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 17:13:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9606640B81;
	Mon, 10 Mar 2025 16:13:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VY7flASU_oEd; Mon, 10 Mar 2025 16:13:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6367F40B98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741623200;
	bh=SuDLAr3Wz8h6YVwKLam3Jg8MiZdFwWXZx63sMilpWcU=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Irl+CsZNN8kVEj9tNVH0g+u+r3n/W9YhA2lLQvM/pVR67EtzHvxzqhMQbpubo51sx
	 lD/UOQuQcr/fccCg7Cm7QZBxSXxafgTf8J0OcJtFM83gHF68IkPv2usDwgZY6/kqMy
	 lq4+sXnle95gZEjfRK9ow12eiwL8GdopFlinVtc6V1OFvuCakUfLePAeEJDr7hOOad
	 uUhuWrHNcwoE7xaiKeXGEVrKeKll0u9QHwm7DojL9rFhqHCsJsnho6HBM6DgSKjsUw
	 pZobGVJMOUOGmutthx3vAUXpoWmyLlXXAn7JVwCumkJApLfFcZ2JZSeG5VDHRTP+ab
	 +oySZRm1X8ViQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6367F40B98;
	Mon, 10 Mar 2025 16:13:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B70C31C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 16:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9AEBA81E7A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 16:13:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RWmIgj0PmntU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 16:13:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A3DFC813F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3DFC813F9
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A3DFC813F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 16:13:17 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
In-Reply-To: <Z86kBp2m-L-usV0V@LQ3V64L9R2>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <20250217-igb_irq-v2-2-4cb502049ac2@linutronix.de>
 <f71d5cee-cafc-4ee0-89fc-35614eb06f94@intel.com>
 <Z86kBp2m-L-usV0V@LQ3V64L9R2>
Date: Mon, 10 Mar 2025 17:10:53 +0100
Message-ID: <8734fkq31u.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1741623193;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SuDLAr3Wz8h6YVwKLam3Jg8MiZdFwWXZx63sMilpWcU=;
 b=BsvTqQ+Lj3eQ8exZ6bsc8VUnbeMJ82cZ+rGLIw8ddYh3bNhp/XdtV5qN3uBvcbBbs5ajq0
 fb8tapZDGDidxuQKu8+fy1nPAJkMiCYegN08QhzyyWNTeBkYDd6lGln/A03f0RH+xP6r/w
 3i+WyjUAj6ZJNDdglecVk7yuUhF75joe41yf2dlDTsYUCTnNijP+YIaQ/PdJ5VQ/SP2Ejg
 0uMr/dVGe3ePj4r16i/o2kuyVlVrlPY8A7YiZnvFROR20uqLeKkt2NJLFMnRzEQ/IHnOBc
 5JKABYQesKgZ8yARB5acxgk+xPf06fS1tGFYfIuxTvNKj02jeERemfPz6EMKtg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1741623193;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SuDLAr3Wz8h6YVwKLam3Jg8MiZdFwWXZx63sMilpWcU=;
 b=/+nwL9g7OwGj9dFMo3X3QFgEydjfhKBddFn0bg66O5vvpKzfT41gIPIhjnkXTPIQs90UCK
 8QWaSHNsYEdCxwCg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=BsvTqQ+L; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=/+nwL9g7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/4] igb: Link queues to
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

On Mon Mar 10 2025, Joe Damato wrote:
> On Fri, Mar 07, 2025 at 02:03:44PM -0800, Tony Nguyen wrote:
>> On 2/17/2025 3:31 AM, Kurt Kanzenbach wrote:
>>=20
>> ...
>>=20
>> > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/et=
hernet/intel/igb/igb_xsk.c
>> > index 157d43787fa0b55a74714f69e9e7903b695fcf0a..a5ad090dfe94b6afc8194f=
e39d28cdd51c7067b0 100644
>> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
>> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
>> > @@ -45,6 +45,7 @@ static void igb_txrx_ring_disable(struct igb_adapter=
 *adapter, u16 qid)
>> >   	synchronize_net();
>> >   	/* Rx/Tx share the same napi context. */
>> > +	igb_set_queue_napi(adapter, qid, NULL);
>> >   	napi_disable(&rx_ring->q_vector->napi);
>> >   	igb_clean_tx_ring(tx_ring);
>> > @@ -78,6 +79,7 @@ static void igb_txrx_ring_enable(struct igb_adapter =
*adapter, u16 qid)
>> >   	/* Rx/Tx share the same napi context. */
>> >   	napi_enable(&rx_ring->q_vector->napi);
>> > +	igb_set_queue_napi(adapter, qid, &rx_ring->q_vector->napi);
>> >   }
>> >   struct xsk_buff_pool *igb_xsk_pool(struct igb_adapter *adapter,
>>=20
>> I believe Joe's fix/changes [1] need to be done here as well?
>>=20=20
>> Thanks,
>> Tony
>>=20
>> [1] https://lore.kernel.org/intel-wired-lan/9ddf6293-6cb0-47ea-a0e7-cad7=
d33c2535@intel.com/T/#m863614df1fb3d1980ad09016b1c9ef4e2f0b074e
>
> Yes, the code above should be dropped. Sorry I missed that during
> review - thanks for catching that, Tony.
>
> Kurt: when you respin this to fix what Tony mentioned, can you also
> run the test mentioned above?

Hi Tony & Joe,

Hm. I did run the test and it succeeded. I'll take a look at it next
week when I'm back in the office.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmfPDw0THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgn1aD/9tRXm3GqrzZQMU2qpXAYFfWc/58gEw
fkY47pLpb1Flvgj4npkht1GaGAnrnGQQvVWrDNwktbqj/BUSvFK9SGXBgNUgPSXI
NmdKoc0ln9sn+BElFyiwSUk9fyappT8phmFLlfkOYPwQl2oRPg6Mri6PDQBfYw+I
GNoejpbMI5JYnIernngoMbLf4daWa9BLoIuR7k94HO1/NizeWUIuljUFdrLsJ4/K
hdeLoSbkb26BCZvS3YpfBemWQrU8u6bdWATOC5CPRTnlHfYV3VH+GY6G/Uk3T8E3
l/2SUk51UlPyMz286miqO2Eozs2OM/+YLNrPqFZ4kT0nDwEuY2UdmA+kVh8effCQ
EDcxcnpABtUfz0IzoBy0h9PDSYBp0GXM2awtP+9+fz7wt8ctHGdM/1lUuz3NHta7
B1F48wUNllSVc0Fj4mRXcdk81WZqYZwUt0FjLaSkgBvrx/BqPQg2lufaxS5/VUCw
RSVNHKVH353aOzY6zV5hZ+sjBY2f4e6RhKFaCsqNOSBcKPOIIfBrF+Egr+cT1STF
ScDLTkDZAwvmC99IvpJSx0DQprvx0pTZ4nJX0nRgibxHFQLarAhyGPGtAhL4a3wm
5SfQ//XIwdQfnC9Q6VeLQeAtfGuzuBscVNYKhevC6M01Ya3YzRDGCw9vS/0+vNzV
Uvu5DPvpy61CoA==
=mHhc
-----END PGP SIGNATURE-----
--=-=-=--
