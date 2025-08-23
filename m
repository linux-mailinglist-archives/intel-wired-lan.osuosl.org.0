Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B90B32771
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Aug 2025 09:45:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEA808221D;
	Sat, 23 Aug 2025 07:45:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fgOlFJW31VYg; Sat, 23 Aug 2025 07:45:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E0C982246
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755935102;
	bh=O3rB3rJwe2Pb51r2EOu5NN5S81zF2bec1Nip+IX0Oxw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WKeyEiGiSolGdo++E39UHN+ZRVAGbgbRp6nsRRgSNx5WqjSiNXOZRNs+OLWMyCPzD
	 eU8rUQaYE3rD9eN967qTOvYAnR81kckl2auQe6gQN++Maj/TtSiX1Lj4OkVNRdDBLG
	 KW03KUFXKz3hA/ZgbJtBl81IaSpQMbhN7iuYEkOCbYgKlAeRaphpV/KupCcYPvmTJ4
	 iPwit4Qt8ppaAwVLE40j59azdY5/2rvuDWETa3z0sZfSpYmIC0BfW1vBf0vcpkpfmN
	 ShvtKukmh4hkMQ1hKh5MlorPqmumHxYbBiuiGQIUxAPUO7SFzYARL3XtHSXoWl+k/d
	 NdavwD0lGjLyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E0C982246;
	Sat, 23 Aug 2025 07:45:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 17CEB19C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 07:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11F8D41336
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 07:45:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yjU2Tno4JCbB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Aug 2025 07:44:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3E77741331
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E77741331
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E77741331
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 07:44:59 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
In-Reply-To: <27e8fb9f-0e9c-4a0b-b961-64ff9d2f5228@linux.dev>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <27e8fb9f-0e9c-4a0b-b961-64ff9d2f5228@linux.dev>
Date: Sat, 23 Aug 2025 09:44:55 +0200
Message-ID: <87ikie7a88.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1755935097;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=O3rB3rJwe2Pb51r2EOu5NN5S81zF2bec1Nip+IX0Oxw=;
 b=vVaSyYhqYN4CxrKMy6Aa34MKfMNJo+Az64ingfhQZ3C68BINxAwL4qK5VCiouXbsZTlSWA
 NqKbWumgI1Tamahhxa/thFCCbadvlvhsBaSW0ANSnPCWySNUmQO2vegy6HMSvHZuivlTIz
 03D8dTWyv777qRc/W/oaHhYHGIo252x/VsvEe4WStHYrLWtE4KbgPaLEAsgsre/yUbTuJL
 AIPd9XZ5tVeHUeybz7no9TO0ybl9hpJ92T2L6OKigyqox4O0LT54MCzOXB44HK9+JGHVhw
 ZRLlmd60mCAMokcTRc39oENYX7BEa/NzL/2kX19uNzGvrFKNo9cMB996Y44Y8A==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1755935097;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=O3rB3rJwe2Pb51r2EOu5NN5S81zF2bec1Nip+IX0Oxw=;
 b=TnBhnDF3pI49UsGUOeaz5Irsc2pofGhWCuK9LyFEbs57rfsrdYxpFpqT47j3fFSJcbnKuP
 otxHF/I2m+j6hnBw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=vVaSyYhq; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=TnBhnDF3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri Aug 22 2025, Vadim Fedorenko wrote:
> On 22/08/2025 08:28, Kurt Kanzenbach wrote:
>> The current implementation uses schedule_work() which is executed by the
>> system work queue to retrieve Tx timestamps. This increases latency and =
can
>> lead to timeouts in case of heavy system load.
>>=20
>> Therefore, switch to the PTP aux worker which can be prioritized and pin=
ned
>> according to use case. Tested on Intel i210.
>>=20
>>    * igb_ptp_tx_work
>> - * @work: pointer to work struct
>> + * @ptp: pointer to ptp clock information
>>    *
>>    * This work function polls the TSYNCTXCTL valid bit to determine when=
 a
>>    * timestamp has been taken for the current stored skb.
>>    **/
>> -static void igb_ptp_tx_work(struct work_struct *work)
>> +static long igb_ptp_tx_work(struct ptp_clock_info *ptp)
>>   {
>> -	struct igb_adapter *adapter =3D container_of(work, struct igb_adapter,
>> -						   ptp_tx_work);
>> +	struct igb_adapter *adapter =3D container_of(ptp, struct igb_adapter,
>> +						   ptp_caps);
>>   	struct e1000_hw *hw =3D &adapter->hw;
>>   	u32 tsynctxctl;
>>=20=20=20
>>   	if (!adapter->ptp_tx_skb)
>> -		return;
>> +		return -1;
>>=20=20=20
>>   	if (time_is_before_jiffies(adapter->ptp_tx_start +
>>   				   IGB_PTP_TX_TIMEOUT)) {
>> @@ -824,15 +824,17 @@ static void igb_ptp_tx_work(struct work_struct *wo=
rk)
>>   		 */
>>   		rd32(E1000_TXSTMPH);
>>   		dev_warn(&adapter->pdev->dev, "clearing Tx timestamp hang\n");
>> -		return;
>> +		return -1;
>>   	}
>>=20=20=20
>>   	tsynctxctl =3D rd32(E1000_TSYNCTXCTL);
>> -	if (tsynctxctl & E1000_TSYNCTXCTL_VALID)
>> +	if (tsynctxctl & E1000_TSYNCTXCTL_VALID) {
>>   		igb_ptp_tx_hwtstamp(adapter);
>> -	else
>> -		/* reschedule to check later */
>> -		schedule_work(&adapter->ptp_tx_work);
>> +		return -1;
>> +	}
>> +
>> +	/* reschedule to check later */
>> +	return 1;
>
> do_aux_work is expected to return delay in jiffies to re-schedule the
> work. it would be cleaner to use msec_to_jiffies macros to tell how much
> time the driver has to wait before the next try of retrieving the
> timestamp. AFAIU, the timestamp may come ASAP in this case, so it's
> actually reasonable to request immediate re-schedule of the worker by
> returning 0.

I don't think so. The 'return 1' is only executed for 82576. For all
other NICs the TS is already available. For 82576 the packet is queued
to Tx ring and the worker is scheduled immediately. For example, in case
of other Tx traffic there's a chance that the TS is not available
yet. So we comeback one jiffy later, which is 10ms at worst. That looked
reasonable to me.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmipcXcTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzggc+EACHd40K218J53oKo5EvWFy73nUbAWLM
LqYycVXFdxg8fFbA21HS5NTovT7yV0dhI/XNwEuz891lR+ar6XwfJ9dpg6//IL4i
/+gBlbucvlf/NI6rVI1G7Oi5kMojFBF7ez6Fzf9A4baBWqsDCQfXFvWAdkXII/3F
qWXrydLA/fr9LskzF0vBZ0Tw+nARW4Q9YQdM9Dme0CVvbEP/r+Zfr4YhDWbUcnLB
gh1u6datYfrerTnUv4S3hJ4+4SOGiiZJHO5kWT6bSg3ynEiakpEE2QSFHWKFJHyc
+WTHHqdqb0+OaQVyUeBRcMNSSQrUmriqZYiiAYJoFZKHFA9rLch1Js2FjkN4fZ67
9SGPqMS8HZAFgJVIhKe/Y7Ncji8aEVN+jWy+g5q4JCwZ1n45Csd1oAEK54OTfgLb
zVbV1XymivQepDZPySQahr8tIgW2WskkpxV3PnJE0wdATt21rukfA5Qs8thsvaxq
luigodQ8O4RGy5+DdQXERJt7VLemOjTV6bEtah5OtN84/Q9dVwWi9FEu8SRV9+Yy
rSYkEzTVHT4Kn1im+hW75XdNe0LnDQBIP7Y9Y4MEFKnwFXn6y9jO+5rz4U5+oGgh
xL2lf7gOpA2alXyJYepCN4yhupnXcKmenqZqhKj+Y6keIh2fd89U4FepqWOAsG3v
/dUH+gTuM+UEtQ==
=H8MU
-----END PGP SIGNATURE-----
--=-=-=--
