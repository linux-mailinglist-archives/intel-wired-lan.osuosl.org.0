Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 413D88966EB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 09:45:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA31660D70;
	Wed,  3 Apr 2024 07:45:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p7zLq_8bRXCd; Wed,  3 Apr 2024 07:45:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 165B860D65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712130304;
	bh=ONtAaHGTcn6BZJJfwlKtYss4wDqYiooZmD8ycswc5Zg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2B9SMB8VQbmMfVLoej9VRP3mBmklqPeRwJLQ3MucE4hHuOyl5+6EFuSGJVUdgu2EN
	 bEYg7mKODTPz+KE/h17irCKst32Yk3UIARnFpp8uTWeWRmGftE3GgV5dl+kkE3ps1q
	 xl4lX8OTlENflb23fZAcNiKQg6KwRL8gQKb5JnXf+AGXLgGNrXMKLO5YnczVv8LKbH
	 SV9yfej1AL8i9hRkAYUf0vgboOYXcJyYbIWn42GVBab/qGOYPEwcBouCI9Im0767OX
	 kAO7/tPrW9g6x5PHISDPtQaOU6omooujXLdp5zuy+lfBv68J+Q4t3sB/1pJYJx7SnO
	 /Z7DXaunMNuTQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 165B860D65;
	Wed,  3 Apr 2024 07:45:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 701C71BF36A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5BD078129B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:45:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6cMYOCRklWWk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 07:45:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 453FA81286
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 453FA81286
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 453FA81286
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:45:00 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Simon Horman <horms@kernel.org>
In-Reply-To: <20240328114633.GI403975@kernel.org>
References: <20240212-igc_mqprio-v2-1-587924e6b18c@linutronix.de>
 <20240328114633.GI403975@kernel.org>
Date: Wed, 03 Apr 2024 09:44:55 +0200
Message-ID: <87a5malwjs.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1712130297;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ONtAaHGTcn6BZJJfwlKtYss4wDqYiooZmD8ycswc5Zg=;
 b=NWzmiTxnqFcyAvtmPhZb+48E/+0EKKdLJbXOLknewhQlz3eJ67rLOpoJyZtIJ2MiPWlYcx
 EHkOquOkkKIomjWGq4ZHrRnwWSz2IQQPfaxL5Qr6LVilzZo5dvfjqQI1lGcArjaCGXLxDs
 M7+ezjLfSiwceXQZTGpSllUhI08XQPIfpmKpYZNK+ATGQVqbIBfNfZp9SLnLnYtXOG47eU
 ETXyHh//aKbyYWEz8MASDBbfB7jERP0VDvwuR1ffORhYrZHSTGsveI/kjhfghLueomfWvO
 ITESDuyCStmQ7G9Zliah68XDlJUYN7NQKHqhLDcwvUNN1e4FXwT6ZkzkyxTeUg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1712130297;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ONtAaHGTcn6BZJJfwlKtYss4wDqYiooZmD8ycswc5Zg=;
 b=2GYhReMFWqD2cXtsRpymLKowU9cQIzBwnRZEkUiZ92cKnwCmmeZEs4Bgv5LfU0FhfBTvLe
 tRYRDt5hm+uEt7CQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=NWzmiTxn; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=2GYhReMF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Add MQPRIO offload
 support
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu Mar 28 2024, Simon Horman wrote:
> On Tue, Mar 26, 2024 at 02:34:54PM +0100, Kurt Kanzenbach wrote:
>> Add support for offloading MQPRIO. The hardware has four priorities as w=
ell
>> as four queues. Each queue must be a assigned with a unique priority.
>>=20
>> However, the priorities are only considered in TSN Tx mode. There are two
>> TSN Tx modes. In case of MQPRIO the Qbv capability is not required.
>> Therefore, use the legacy TSN Tx mode, which performs strict priority
>> arbitration.
>>=20
>> Example for mqprio with hardware offload:
>>=20
>> |tc qdisc replace dev ${INTERFACE} handle 100 parent root mqprio num_tc =
4 \
>> |   map 0 0 0 0 0 1 2 3 0 0 0 0 0 0 0 0 \
>> |   queues 1@0 1@1 1@2 1@3 \
>> |   hw 1
>>=20
>> The mqprio Qdisc also allows to configure the `preemptible_tcs'. However,
>> frame preemption is not supported yet.
>>=20
>> Tested on Intel i225 and implemented by following data sheet section 7.5=
.2,
>> Transmit Scheduling.
>>=20
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>
> ...
>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/=
ethernet/intel/igc/igc_defines.h
>> index 5f92b3c7c3d4..73502a0b4df7 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
>> @@ -547,6 +547,15 @@
>>=20=20
>>  #define IGC_MAX_SR_QUEUES		2
>>=20=20
>> +#define IGC_TXARB_TXQ_PRIO_0_SHIFT	0
>> +#define IGC_TXARB_TXQ_PRIO_1_SHIFT	2
>> +#define IGC_TXARB_TXQ_PRIO_2_SHIFT	4
>> +#define IGC_TXARB_TXQ_PRIO_3_SHIFT	6
>> +#define IGC_TXARB_TXQ_PRIO_0_MASK	GENMASK(1, 0)
>> +#define IGC_TXARB_TXQ_PRIO_1_MASK	GENMASK(3, 2)
>> +#define IGC_TXARB_TXQ_PRIO_2_MASK	GENMASK(5, 4)
>> +#define IGC_TXARB_TXQ_PRIO_3_MASK	GENMASK(7, 6)
>> +
>>  /* Receive Checksum Control */
>>  #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable */
>>  #define IGC_RXCSUM_PCSD		0x00002000   /* packet checksum disabled */
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/eth=
ernet/intel/igc/igc_main.c
>
> ...
>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethe=
rnet/intel/igc/igc_tsn.c
>
> ...
>
>> @@ -106,7 +109,26 @@ static int igc_tsn_disable_offload(struct igc_adapt=
er *adapter)
>>  	wr32(IGC_QBVCYCLET_S, 0);
>>  	wr32(IGC_QBVCYCLET, NSEC_PER_SEC);
>>=20=20
>> +	/* Reset mqprio TC configuration. */
>> +	netdev_reset_tc(adapter->netdev);
>> +
>> +	/* Restore the default Tx arbitration: Priority 0 has the highest
>> +	 * priority and is assigned to queue 0 and so on and so forth.
>> +	 */
>> +	txarb =3D rd32(IGC_TXARB);
>> +	txarb &=3D ~(IGC_TXARB_TXQ_PRIO_0_MASK |
>> +		   IGC_TXARB_TXQ_PRIO_1_MASK |
>> +		   IGC_TXARB_TXQ_PRIO_2_MASK |
>> +		   IGC_TXARB_TXQ_PRIO_3_MASK);
>> +
>> +	txarb |=3D 0x00 << IGC_TXARB_TXQ_PRIO_0_SHIFT;
>> +	txarb |=3D 0x01 << IGC_TXARB_TXQ_PRIO_1_SHIFT;
>> +	txarb |=3D 0x02 << IGC_TXARB_TXQ_PRIO_2_SHIFT;
>> +	txarb |=3D 0x03 << IGC_TXARB_TXQ_PRIO_3_SHIFT;
>> +	wr32(IGC_TXARB, txarb);
>
> Hi Kurt,
>
> It looks like the above would be a good candidate for using FIELD_PREP,
> in which case the _SHIFT #defines can likely be removed.

OK.

>
> Also, the logic above seems to be replicated in igc_tsn_enable_offload.
> Perhaps a helper is appropriate.

Makes sense.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmYNCPgTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgoAvD/0TsxVB/pfQbR/D7CGQ8gWHZm344s0h
ynZRvRWRUglmEG0rCZWv6Bhe7t1618j/hvA9vh8pzBo10G4lwekgCmH1Iln4CoYJ
VMbJ7iypnvCtBdyfoSia7VXLfRuyGux8VQ2eYfl8t5lpYbdn8ZE77rCm5ZYUJ3cW
asLQg/neobrTOETEbgzTKHmJcsd5Rl5pt9NNuUJ7MrSthwS6ck27d1RhqNnC5buR
c+34+djZNfxLhS44f7wr3EM7nfOjbdZnx+QYqi9NUI+BrizynDQTuWnqb6xSgIJh
vQWhOCGciOr3p7aUp9N8Mpq4JJsTlUj1bkhl1fCBp2YQ6c1f8LJt/DHExEmfYn71
03G0j8XFg5nRMQgNk5w//BANF3ptTrVOooFk9tyaUXYjJ+BLKZ2UHpXlk4+HiXP5
DqzUi896rdrpX3xcEq0BHYpCqpAZwqkcLjdBVkgayoUn19wSUM25U9NpSNZN2g1z
T4+GnEdjVcCe2zhUdxsOAfsBFJuK72DAUjGAkRRTpD/8StYDGwBPB7cwMxJ8aPA7
fi0QejZ1TSNPVTQCsBqepgSbzOIhIy22CcXafwOxGhlDZxufzauhX5hR6znvHCc3
5oioNykWFvdorxiCiyw/piuDZEvG7+70RkTI7X8mlF5vFcN00O5dAUcM7YB/L7PM
LPOy9vROZKM6Xw==
=xNbN
-----END PGP SIGNATURE-----
--=-=-=--
