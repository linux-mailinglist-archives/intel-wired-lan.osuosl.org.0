Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47688689CB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 08:22:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2627D40B69;
	Tue, 27 Feb 2024 07:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TsMKEFtOSeLg; Tue, 27 Feb 2024 07:22:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A920040B5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709018575;
	bh=CsnrFim6EYDuNuWnC6WWL5wPbMRzROScb1KO6aPlOsw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xXqZNosew0d+TzEoEIGnStFDMdlpg8bfgmd69yAqPDtTFgX4kB7cdSoLARhUV2mTx
	 ghrqxuIK7FVMrUVphXiL3Gc3bdl445+X7oPjlYw4puvEkXbJ0393EukNZMBgBsxv9u
	 JO0rJmMQMsc64lXFFElur/vO9HsxxTEkm1peuVNvMQ72qF8qNnu20WNqu1UVknD6lI
	 MXeFNJNBc3HnoKqnkXxsjupQxbILirUcMrijF1n0OLU2TUaqYTnzmAl47/D2PQhg/p
	 lPcx5J6OZopzjlJlDz1Se1Z6vYng1AzM2pQJNToSpSDgH5ci0Mi+xlx/FDHaY3abin
	 Vcq1jCBPfhaoA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A920040B5D;
	Tue, 27 Feb 2024 07:22:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8DEDB1BF326
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 07:22:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79D7781FEF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 07:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yJnd_rVsi9lD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 07:22:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4B5AA81FED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B5AA81FED
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B5AA81FED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 07:22:52 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <fa67869c-3060-430e-a1c5-c67305e848c2@molgen.mpg.de>
References: <20240212-igc_mqprio-v1-1-7aed95b736db@linutronix.de>
 <fa67869c-3060-430e-a1c5-c67305e848c2@molgen.mpg.de>
Date: Tue, 27 Feb 2024 08:22:47 +0100
Message-ID: <87zfvm2wxk.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1709018569;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CsnrFim6EYDuNuWnC6WWL5wPbMRzROScb1KO6aPlOsw=;
 b=0lpmQT0CLJYRThNE52s0XJ7+4hce4BCN13PUw08fo5D70H/1tLA08WDephXXU/1I7HDgaX
 TO/18LLULIPhDtqnnrp+xuHXALXxvgX58s0EBqNCQNYtRYp6atr7Ow33cxv0BPZsWaxi2D
 JIIjVSH2IyvTigNTcvQannHigawAbuX+HnFnFtJ+0VrANTBD9f450D//CRG+sgjy9nkT45
 3SNSGUC0bxskgCPORdg8NL0+Qmev1RvAMOlKArYlCTgtXwz4P7Fy+KpboPYbSONnpJSMUh
 35mHFIeV2dhTEa0JGh8Ep5/wEZAznzJnGrBeCoGsZFQpvuqZaBwnm9RuC6MaNw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1709018569;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CsnrFim6EYDuNuWnC6WWL5wPbMRzROScb1KO6aPlOsw=;
 b=TuwC+KHy0v/vrA5XA1qUmOk9aHqvEAH5uD4h178mx/KJGe8mLD8qCDl/Oc9U8sXuyk1NUH
 4WOmKjstFSrWtsDA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=0lpmQT0C; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=TuwC+KHy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Add MQPRIO offload
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello Paul,

On Mon Feb 26 2024, Paul Menzel wrote:
> Dear Kurt,
>
>
> Thank you for the patch. Some nits from my side.
>
> Am 26.02.24 um 09:51 schrieb Kurt Kanzenbach:
>> Add support for offloading MQPRIO. The hardware has four priorities as w=
ell
>> as four queues. Each queue must be a assigned with a unique priority.
>>=20
>> However, the priorities are only considered in TSN Tx mode. There are two
>> TSN Tx modes. In case of MQPRIO the Qbv capability is not
>> required. Therefore, use the legacy TSN Tx mode, which performs strict
>> priority arbitration.
>
> You could reflow this paragraph. The second line breaks too early.

Indeed, it does.

>
>> Example for mqprio with hardware offload:
>>=20
>> |tc qdisc replace dev ${INTERFACE} handle 100 parent root mqprio num_tc =
4 \
>> |   map 0 0 0 0 0 1 2 3 0 0 0 0 0 0 0 0 \
>> |   queues 1@0 1@1 1@2 1@3 \
>> |   hw 1
>
> Thank you for the example. How can you check that it actually works? No=20
> errors are shown?

When using tc for setting up Qdisc(s) the command just returns without
any messages. In case there's an error the user will see messages
configured below with `extack`.

>
> Also, could you please mention the datasheet name, revision and section,=
=20
> and on what exact device you tested this?

Sure.

>
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>>   drivers/net/ethernet/intel/igc/igc.h         | 10 +++-
>>   drivers/net/ethernet/intel/igc/igc_defines.h |  9 ++++
>>   drivers/net/ethernet/intel/igc/igc_main.c    | 69 ++++++++++++++++++++=
+++++++
>>   drivers/net/ethernet/intel/igc/igc_regs.h    |  2 +
>>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 71 ++++++++++++++++++++=
+++++++-
>>   5 files changed, 157 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet=
/intel/igc/igc.h
>> index 45430e246e9c..c95919f085eb 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -227,6 +227,10 @@ struct igc_adapter {
>>   	 */
>>   	spinlock_t qbv_tx_lock;
>>=20=20=20
>> +	bool strict_priority_enable;
>> +	u8 num_tc;
>> +	u16 queue_per_tc[IGC_MAX_TX_QUEUES];
>> +
>>   	/* OS defined structs */
>>   	struct pci_dev *pdev;
>>   	/* lock for statistics */
>> @@ -343,9 +347,11 @@ extern char igc_driver_name[];
>>   #define IGC_FLAG_RX_LEGACY		BIT(16)
>>   #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
>>   #define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
>> +#define IGC_FLAG_TSN_LEGACY_ENABLED	BIT(19)
>>=20=20=20
>> -#define IGC_FLAG_TSN_ANY_ENABLED \
>> -	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED)
>> +#define IGC_FLAG_TSN_ANY_ENABLED				\
>> +	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED |	\
>> +	 IGC_FLAG_TSN_LEGACY_ENABLED)
>>=20=20=20
>>   #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
>>   #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
>> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/=
ethernet/intel/igc/igc_defines.h
>> index 5f92b3c7c3d4..73502a0b4df7 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
>> @@ -547,6 +547,15 @@
>>=20=20=20
>>   #define IGC_MAX_SR_QUEUES		2
>>=20=20=20
>> +#define IGC_TXARB_TXQ_PRIO_0_SHIFT	0
>> +#define IGC_TXARB_TXQ_PRIO_1_SHIFT	2
>> +#define IGC_TXARB_TXQ_PRIO_2_SHIFT	4
>> +#define IGC_TXARB_TXQ_PRIO_3_SHIFT	6
>> +#define IGC_TXARB_TXQ_PRIO_0_MASK	GENMASK(1, 0)
>> +#define IGC_TXARB_TXQ_PRIO_1_MASK	GENMASK(3, 2)
>> +#define IGC_TXARB_TXQ_PRIO_2_MASK	GENMASK(5, 4)
>> +#define IGC_TXARB_TXQ_PRIO_3_MASK	GENMASK(7, 6)
>> +
>>   /* Receive Checksum Control */
>>   #define IGC_RXCSUM_CRCOFL	0x00000800   /* CRC32 offload enable */
>>   #define IGC_RXCSUM_PCSD		0x00002000   /* packet checksum disabled */
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/eth=
ernet/intel/igc/igc_main.c
>> index ba8d3fe186ae..c5d3cc3c4fa9 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -6424,6 +6424,13 @@ static int igc_tc_query_caps(struct igc_adapter *=
adapter,
>>   	struct igc_hw *hw =3D &adapter->hw;
>>=20=20=20
>>   	switch (base->type) {
>> +	case TC_SETUP_QDISC_MQPRIO: {
>> +		struct tc_mqprio_caps *caps =3D base->caps;
>> +
>> +		caps->validate_queue_counts =3D true;
>> +
>> +		return 0;
>> +	}
>>   	case TC_SETUP_QDISC_TAPRIO: {
>>   		struct tc_taprio_caps *caps =3D base->caps;
>>=20=20=20
>> @@ -6441,6 +6448,65 @@ static int igc_tc_query_caps(struct igc_adapter *=
adapter,
>>   	}
>>   }
>>=20=20=20
>> +static void igc_save_mqprio_params(struct igc_adapter *adapter, u8 num_=
tc,
>> +				   u16 *offset)
>> +{
>> +	int i;
>> +
>> +	adapter->strict_priority_enable =3D true;
>> +	adapter->num_tc =3D num_tc;
>> +
>> +	for (i =3D 0; i < num_tc; i++)
>> +		adapter->queue_per_tc[i] =3D offset[i];
>> +}
>> +
>> +static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
>> +				 struct tc_mqprio_qopt_offload *mqprio)
>> +{
>> +	struct igc_hw *hw =3D &adapter->hw;
>> +	int i;
>> +
>> +	if (hw->mac.type !=3D igc_i225)
>> +		return -EOPNOTSUPP;
>> +
>> +	if (!mqprio->qopt.num_tc) {
>> +		adapter->strict_priority_enable =3D false;
>> +		goto apply;
>> +	}
>> +
>> +	/* There are as many TCs as Tx queues. */
>> +	if (mqprio->qopt.num_tc !=3D adapter->num_tx_queues) {
>> +		NL_SET_ERR_MSG_FMT_MOD(mqprio->extack,
>> +				       "Only %d traffic classes supported",
>> +				       adapter->num_tx_queues);
>
> I=E2=80=99d also log `mqprio->qopt.num_tc`.

num_tc is provided by the user.

>
>> +		return -EOPNOTSUPP;
>> +	}
>> +
>> +	/* Only one queue per TC is supported. */
>> +	for (i =3D 0; i < mqprio->qopt.num_tc; i++) {
>> +		if (mqprio->qopt.count[i] !=3D 1) {
>> +			NL_SET_ERR_MSG_MOD(mqprio->extack,
>> +					   "Only one queue per TC supported");
>
> I=E2=80=99d also log the i and the count value.

Oki.

>
>> +			return -EOPNOTSUPP;
>> +		}
>> +	}
>> +
>> +	/* Preemption is not supported yet. */
>> +	if (mqprio->preemptible_tcs) {
>> +		NL_SET_ERR_MSG_MOD(mqprio->extack,
>> +				   "Preemption is not supported yet");
>> +		return -EOPNOTSUPP;
>> +	}
>
> Please mention this in the commit message, maybe also included, if a=20
> patch is coming soon, or what would need to be done to implement it.

Oki. At some point i'd like to see FPE implemented for igc :-).

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmXdjcgTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzguTcEACvXPtfCPia4Ol3aRhNR0fDuHGPzb/G
KuDliMMYkwJZb8NEQ4mrgM7D8USf4VfTs8pq8bafkMxzCyeoz5dLQZ63uVvLKXIz
TIuYAUOf2sZYzIWxZXLYTB/Gq9HCqOm+2jVipd1VZYCdZ1lIzL3rtsF1eqIW36y+
oe7QZhHjvk5cO2oWWO37WYAEb5k+ntfq7qeStj6fkkDQQBgDXxtzrCaBsL9puD8q
/bHFw/qAJObBOz7TE9CJOne2h9G1SVl85OBJTzxV0IMwSm1suZa/gWYwxIPORolW
3qsCpSCTsg2NhuHzpCgmFSPiqUEPlHEJ1Ln+/ORAOzmtwWTmSlmtNNQQBQ4BYsQl
migZlf1+69xvuVjXz6/bWKdr6gXSm7mxgWg4e2R6vCtKLpiCYWFTkW9w/YtnuxiY
+ZLEh1J8+uop2bIEtI38+c9CdNZzkR4GDoHtcgs4n01eKecI/UzB0liSA2IsTQwm
M4LCcUZ7cO3JmQLoiUge9mvg7g4O/XFgzohsWnymwt7qlaj+IgCWO994WhNIfVXE
Pmvvxr94d6ySsfRzpvqh3J1/HdHhucDF8Gnep/6ylXFaG4qT7bZBD1sW/5nvFBFY
ViA4XQkaxErnIjK1Rb3Ji4fo8xJSLOsj+6I3cQaePsld5FMu0tur0KxN85f3i7Ya
qZEaC5DmVMlTXw==
=a1gq
-----END PGP SIGNATURE-----
--=-=-=--
