Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4318966F5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 09:46:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18FB860D61;
	Wed,  3 Apr 2024 07:45:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RbGv7FXCMBBp; Wed,  3 Apr 2024 07:45:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0C8560D64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712130356;
	bh=lyTnWc9MSdZiIWTOlHItSQiFdTjjjvMlmmVJCmkUP5c=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W/E0+oe+UyoupC9wvnKP3R3G1LrljEK+qhsR2dSQQCpAAyx1LsZEh1/cgqOC3n6jR
	 Xm6XYwl2NAJIf4eJRUMqzbsC9gdG/l5BjhfaF3cTK8WOZaJD0Uz8XkzAptTGp5C3ya
	 Y9LaYJgU7bZfvHoxqQeIu5ek72j2JwQdpGeNq+swWGW9uH/kfSDnjY+qHX4lbqMIgD
	 d1QiYfFt+cJ60kP3d1aKQFJy2Quc89NpoSlBsOi8p9vjq1SmolX7u5ZKAWVy3luj3O
	 Hm0uz+mDJrLFukRqREecOTDnjjRz9zurVvfA36JLEVRBIjOVQ4fu2aNka43UyWv6qA
	 jJcoBxq7KudbQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0C8560D64;
	Wed,  3 Apr 2024 07:45:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 30F711BF36A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:45:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D1BF8175A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:45:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WuKasfLWA0u2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 07:45:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C70BA81751
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C70BA81751
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C70BA81751
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 07:45:52 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: "shenjian (K)" <shenjian15@huawei.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
In-Reply-To: <41a56bb7-8845-f85b-c470-a3683bac8b69@huawei.com>
References: <20240212-igc_mqprio-v2-1-587924e6b18c@linutronix.de>
 <41a56bb7-8845-f85b-c470-a3683bac8b69@huawei.com>
Date: Wed, 03 Apr 2024 09:45:49 +0200
Message-ID: <877chelwia.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1712130350;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lyTnWc9MSdZiIWTOlHItSQiFdTjjjvMlmmVJCmkUP5c=;
 b=LiGtWNRe7EqOr7uJxU6KeOMQuW85T3DpyISFHPxitVm2EBodoATVl9OY7MiSpEIp9Mc53x
 G7gOa5ZWaQPkpa6L2Y15kO3sDc13+deXIigk1lhwzZo2yqZhe4n2uC+5/GjKrwvid4j5eC
 Ur0nRoyW7TxbPS/IO8sHieBENaHhBaugkbAOLaeA284sAosj6Y+pdAI99d5O5qoPsVl7DC
 9zIC9WRHFk7cv5Y9sd7D7IptmV+4AbHVzb/hGkEfksHRpn1GVBJ/BZuAprQ7O4Pj7piMFx
 Ua1zciUJ/Nh8fiM1dhUPCecgq4xL5cWx0Zt+UkbQytUTfmTjLUjn87GEy2lM9g==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1712130350;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lyTnWc9MSdZiIWTOlHItSQiFdTjjjvMlmmVJCmkUP5c=;
 b=iTW2iALT0377LLiUt5VImpVkkp0lvMWrJR0dJ49kWvFiBoeU6bpPti0NZLY4ipqemkCSqQ
 eK+eZheZg2EEPwDg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=LiGtWNRe; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=iTW2iALT
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Wed Mar 27 2024, shenjian (K) wrote:
> =E5=9C=A8 2024/3/26 21:34, Kurt Kanzenbach =E5=86=99=E9=81=93:
>> Add support for offloading MQPRIO. The hardware has four priorities as w=
ell
>> as four queues. Each queue must be a assigned with a unique priority.
>>
>> However, the priorities are only considered in TSN Tx mode. There are two
>> TSN Tx modes. In case of MQPRIO the Qbv capability is not required.
>> Therefore, use the legacy TSN Tx mode, which performs strict priority
>> arbitration.
>>
>> Example for mqprio with hardware offload:
>>
>> |tc qdisc replace dev ${INTERFACE} handle 100 parent root mqprio num_tc =
4 \
>> |   map 0 0 0 0 0 1 2 3 0 0 0 0 0 0 0 0 \
>> |   queues 1@0 1@1 1@2 1@3 \
>> |   hw 1
>>
>> The mqprio Qdisc also allows to configure the `preemptible_tcs'. However,
>> frame preemption is not supported yet.
>>
>> Tested on Intel i225 and implemented by following data sheet section 7.5=
.2,
>> Transmit Scheduling.
>>
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>> Changes in v2:
>> - Improve changelog (Paul Menzel)
>> - Link to v1: https://lore.kernel.org/r/20240212-igc_mqprio-v1-1-7aed95b=
736db@linutronix.de
>> ---
>>   drivers/net/ethernet/intel/igc/igc.h         | 10 +++-
>>   drivers/net/ethernet/intel/igc/igc_defines.h |  9 ++++
>>   drivers/net/ethernet/intel/igc/igc_main.c    | 69 ++++++++++++++++++++=
+++++++
>>   drivers/net/ethernet/intel/igc/igc_regs.h    |  2 +
>>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 71 ++++++++++++++++++++=
+++++++-
>>   5 files changed, 157 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet=
/intel/igc/igc.h
>> index 90316dc58630..49ba753ce957 100644
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
>> @@ -346,9 +350,11 @@ extern char igc_driver_name[];
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
>> index 2e1cfbd82f4f..b17764973d74 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -6415,6 +6415,13 @@ static int igc_tc_query_caps(struct igc_adapter *=
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
>> @@ -6432,6 +6439,65 @@ static int igc_tc_query_caps(struct igc_adapter *=
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
>> +		return -EOPNOTSUPP;
>> +	}
>> +
>> +	/* Only one queue per TC is supported. */
>> +	for (i =3D 0; i < mqprio->qopt.num_tc; i++) {
>> +		if (mqprio->qopt.count[i] !=3D 1) {
>> +			NL_SET_ERR_MSG_MOD(mqprio->extack,
>> +					   "Only one queue per TC supported");
>> +			return -EOPNOTSUPP;
>> +		}
>> +	}
> When mqprio enabled for igc, only one queue per TC supported. Is=20
> set_channels by ethtool
> allowed in this case ?=C2=A0 If not, it's better to add limitation in=20
> icg_ethtool_set_channels.

Note sure about that. I'll have a look.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmYNCS0THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgl5yD/9xqEr79XJnAk+j+Oxusc/lSludXLse
PGl4KvUgtrpavUwa+j0OMI7u6JJBjhBWvJ2lAAxx8QJkKDe06UwjqooD0TXrbdDL
+WwL7fh1uQsxWH+mv09EJfbFZIa9TEuB2OOv0I+GdiDTUP9IVgEVxaJ/7oQ4TBOD
fYGw/sWhSpc+gzvDuhC1IB9mDYeouTqdPaKMnV4Kk1inCP6ACfhfiQzvLK2h37I3
STNNVc7/ls68XIY+L0CkLSNLmZwKN4Sgp9Xul/o+cBjiPxPD6Pk51Ec+hp0u+iUE
wUACArxnD37aB6VTsPJtSCH0Yb2w1nRdzqWHBwwjOlJwFqMCoXxEDIoVlX8jQmRr
awBX4wylZo8A4SFlreou1LX8QLdQY7DXIVO3zOpTHe/3Aw8RB5KOM0g+BUYNgxya
YGGUD0FVHpFKf8W5LAVSpVU48jQyQphrFE3Wq30w06rx6K+h0qvMBNioMqXAva1l
Og/Hzv6aS/7lS0KtfhYINHfNHrzh8CqzeC6jhu/nM0NIFCXZIGAGRFoFdgKONKa0
+X2L3tIPywXKT900A2+WjY7Zdlisbstrp7H71DK+3FBidggR1QAGHqxyHaOKWyMb
fpUSCWcX7VLEJUjtpwGusotgSqggdpxRDfs3zrtOTIZgyQAmL95/MI+8pGVXjzcr
pnKT1wP3lh206A==
=beSo
-----END PGP SIGNATURE-----
--=-=-=--
