Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0111B28C2D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Aug 2025 11:07:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 292F783E92;
	Sat, 16 Aug 2025 09:07:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Ineys_aB8ZU; Sat, 16 Aug 2025 09:06:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EDC680C86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755335219;
	bh=kMHrh6mAPmSb1QDQuu4HaGSvTsFmDjKNWVPs+LpPVeE=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hm9m6koHKfAcXDhdVsFTmiqDOfdgAzRt9Rvf+bjORBWm+t9dcnaeeJJdZ0kR0vFGC
	 8k0X4bhgdpT8Lp2NQ1e+ln//ufVs7hDjnZ4Chwx6QpnCOTI+cTSHrQ1i4dJ6ML56ZS
	 t4G7GoXjBIVrHTBCXmHxkGIWYuyOqp7CMJEOnx3w94LeOJk5O/+duV81398v1YMSmo
	 kwT1yt6hmq4Ro/BmBsHQ05HsWAYSC2bmilQxmf1gjNkMSLzamNU3a5RpDDJU9c3c1I
	 GusRUZWRFfbbqZDTFOmlugyfUHmqkESB7ARH0E7ph90Q/SNhC+eHpmB8gjwSqUaUWO
	 xMia1gOLPPKDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EDC680C86;
	Sat, 16 Aug 2025 09:06:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3702F223
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 09:06:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D7AA83E79
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 09:06:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7C901XXLBiKv for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Aug 2025 09:06:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 09CAA83E72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09CAA83E72
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 09CAA83E72
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 09:06:55 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Vinicius
 Costa Gomes <vinicius.gomes@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <1f42eff0-b6a5-44cb-996e-655c325591be@linux.dev>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <a1e9e37e-63da-4f1c-8ac3-36e1fde2ec0a@molgen.mpg.de>
 <87y0rlm22a.fsf@jax.kurt.home>
 <1f42eff0-b6a5-44cb-996e-655c325591be@linux.dev>
Date: Sat, 16 Aug 2025 11:06:49 +0200
Message-ID: <87bjofoct2.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1755335211;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kMHrh6mAPmSb1QDQuu4HaGSvTsFmDjKNWVPs+LpPVeE=;
 b=hcJ+AWgXVXrtPN3wy4nCta2qvgdQBnAgH9ffph98nZoYmFvjgnrzqta2d9OTse51djQy7Q
 adtwmnRpILXogilclHkwI3wUcuzHsnA9H4p322OAv2caDmcWVaLZ2YkyqdeJnemD9rLvTs
 D3QpcqT6ZhhPBDch5PjY+GIpjUI/IbPH8LS6l0ZWAJ/Hf539rngngcEtOhZCtpLpm7soep
 siQqO3vvOFBGQ1FmYweBm1+ZosGxUowv9EsHgP31uLFavOXbBvTgvIGlklxN3nMd9XgRQm
 UNXm6oAvri3inEkaR8QpND97CH+ZhE7nsocDPRCQjNRzvrNunxFQa4adP5Ty0w==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1755335211;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kMHrh6mAPmSb1QDQuu4HaGSvTsFmDjKNWVPs+LpPVeE=;
 b=G5pkbQQx0dWM3bVUVFgYTen9C36xDp2+1QtbR6NZkIGSR4N3HSWzk94Qq7gyHov1u4Vf+V
 CFCgnfviQ5Sv97Bg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=hcJ+AWgX; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=G5pkbQQx
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: Retrieve Tx timestamp
 directly from interrupt
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

On Fri Aug 15 2025, Vadim Fedorenko wrote:
> On 15/08/2025 09:17, Kurt Kanzenbach wrote:
>> Hi Paul,
>>=20
>> On Fri Aug 15 2025, Paul Menzel wrote:
>>> Dear Kurt,
>>>
>>>
>>> Thank you for your patch.
>>>
>>> Am 15.08.25 um 08:50 schrieb Kurt Kanzenbach:
>>>> Retrieve Tx timestamp directly from interrupt handler.
>>>>
>>>> The current implementation uses schedule_work() which is executed by t=
he
>>>> system work queue to retrieve Tx timestamps. This increases latency an=
d can
>>>> lead to timeouts in case of heavy system load.
>>>>
>>>> Therefore, fetch the timestamp directly from the interrupt handler.
>>>>
>>>> The work queue code stays for the Intel 82576. Tested on Intel i210.
>>>
>>> Excuse my ignorance, I do not understand the first sentence in the last
>>> line. Is it because the driver support different models? Why not change
>>> it for Intel 82576 too?
>>=20
>> Yes, the driver supports lots of different NIC(s). AFAICS Intel 82576 is
>> the only one which does not use time sync interrupts. Probably it does
>> not have this feature. Therefore, the 82576 needs to schedule a work
>> queue item.
>>=20
>>>
>>> Do you have a reproducer for the issue, so others can test.
>>=20
>> Yeah, I do have a reproducer:
>>=20
>>   - Run ptp4l with 40ms tx timeout (--tx_timestamp_timeout)
>>   - Run periodic RT tasks (e.g. with SCHED_FIFO 1) with run time of
>>     50-100ms per CPU core
>>=20
>> This leads to sporadic error messages from ptp4l such as "increasing
>> tx_timestamp_timeout or increasing kworker priority may correct this
>> issue, but a driver bug likely causes it"
>>=20
>> However, increasing the kworker priority is not an option, simply
>> because this kworker is doing non-related PTP work items as well.
>
> Well, in this case, as it pointed out for other drivers, the best
> practice would be to use a dedicated PTP worker which does only PTP
> related tasks and can have higher priority.
>
> The inline retrieving of timestamp, of course, the best option, but for
> 82576 could you please consider using @do_aux_work in ptp_caps and do
> proper ptp_schedule_worker()?

Sure, using the PTP aux worker is always the better than using the
system work queue. I ordered a 82576 for testing. But, that conversion
will be another patch.

>
>>=20
>> As the time sync interrupt already signals that the Tx timestamp is
>> available, there's no need to schedule a work item in this case. I might
>> have missed something though. But my testing looked good. The warn_on
>> never triggered.
>>=20
>>>
>>>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>>>> ---
>>>>    drivers/net/ethernet/intel/igb/igb.h      |  1 +
>>>>    drivers/net/ethernet/intel/igb/igb_main.c |  2 +-
>>>>    drivers/net/ethernet/intel/igb/igb_ptp.c  | 22 ++++++++++++++++++++=
++
>>>>    3 files changed, 24 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethern=
et/intel/igb/igb.h
>>>> index c3f4f7cd264e9b2ff70f03b580f95b15b528028c..102ca32e8979fa3203fc2e=
a36eac456f1943cfca 100644
>>>> --- a/drivers/net/ethernet/intel/igb/igb.h
>>>> +++ b/drivers/net/ethernet/intel/igb/igb.h
>>>> @@ -776,6 +776,7 @@ int igb_ptp_hwtstamp_get(struct net_device *netdev,
>>>>    int igb_ptp_hwtstamp_set(struct net_device *netdev,
>>>>    			 struct kernel_hwtstamp_config *config,
>>>>    			 struct netlink_ext_ack *extack);
>>>> +void igb_ptp_tx_tstamp_event(struct igb_adapter *adapter);
>>>>    void igb_set_flag_queue_pairs(struct igb_adapter *, const u32);
>>>>    unsigned int igb_get_max_rss_queues(struct igb_adapter *);
>>>>    #ifdef CONFIG_IGB_HWMON
>>>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/e=
thernet/intel/igb/igb_main.c
>>>> index a9a7a94ae61e93aa737b0103e00580e73601d62b..8ab6e52cb839bbb698007a=
74462798faaaab0071 100644
>>>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>>>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>>>> @@ -7080,7 +7080,7 @@ static void igb_tsync_interrupt(struct igb_adapt=
er *adapter)
>>>>=20=20=20=20
>>>>    	if (tsicr & E1000_TSICR_TXTS) {
>>>>    		/* retrieve hardware timestamp */
>>>> -		schedule_work(&adapter->ptp_tx_work);
>>>> +		igb_ptp_tx_tstamp_event(adapter);
>>>>    	}
>>>>=20=20=20=20
>>>>    	if (tsicr & TSINTR_TT0)
>>>> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/et=
hernet/intel/igb/igb_ptp.c
>>>> index a7876882aeaf2b2a7fb9ec6ff5c83d8a1b06008a..20ecafecc60557353f8cc5=
ab505030246687c8e4 100644
>>>> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
>>>> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
>>>> @@ -796,6 +796,28 @@ static int igb_ptp_verify_pin(struct ptp_clock_in=
fo *ptp, unsigned int pin,
>>>>    	return 0;
>>>>    }
>>>>=20=20=20=20
>>>> +/**
>>>> + * igb_ptp_tx_tstamp_event
>>>> + * @adapter: pointer to igb adapter
>>>> + *
>>>> + * This function checks the TSYNCTXCTL valid bit and stores the Tx ha=
rdware
>>>> + * timestamp at the current skb.
>>>> + **/
>>>> +void igb_ptp_tx_tstamp_event(struct igb_adapter *adapter)
>>>> +{
>>>> +	struct e1000_hw *hw =3D &adapter->hw;
>>>> +	u32 tsynctxctl;
>>>> +
>>>> +	if (!adapter->ptp_tx_skb)
>>>> +		return;
>>>> +
>>>> +	tsynctxctl =3D rd32(E1000_TSYNCTXCTL);
>>>> +	if (WARN_ON_ONCE(!(tsynctxctl & E1000_TSYNCTXCTL_VALID)))
>>>> +		return;
>>>> +
>>>> +	igb_ptp_tx_hwtstamp(adapter);
>>>> +}
>>>> +
>>>>    /**
>>>>     * igb_ptp_tx_work
>>>>     * @work: pointer to work struct
>>>
>>> The diff looks fine.
>>>
>>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>

Thanks!
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmigSikTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgtwqEACrkPVsqfeGqszsv4seaGMy8MnS3Rfj
FWa1rws6GMNjRAh5c4q31ScZonmUO1aCrdR2LPIVaSOpi3Lazd8dB4vOiScCikK2
3TwL172hDFWyKdGKujz5ekPiQRmD5odgb+q5RhKzfeYRKjLOJLtcxDh4LREGlpOb
k5iSdXC7Ib5eJRQGrk1YOSK7ZHO0EkEQhxb17MMKWZCJ3kAhPIDx3SD7+T1cD8ne
9X9OSMiIUVeE6rFCY3TdSvmDxnWmCLf5xI/sbAtUNQ29+zyrhmXgGS3JiDc4ybnF
0qzHMBCmlNT9WLvFCfC1rLXZFwWjEnbmK+JM5SMAFkL3c+rbyjmG21phs5uz7rsj
BFW++mxosAx7DUS7N5WzKg3ecqkbI2M6VmyIriwvSRPEZ23/iIW2HWiiUY+fpF+M
9a/gFUa5FFII700xrQ5Wp6azMrJ3doR6AKOp6BYReUKtQLCaAre/GecXEQxyoeI+
CntDN/3wCQJGRQSIl3C2y/5Ym7tE7A+JDMBm4buLbOpNiXh9xv1+p4f3f+ZazSK1
W8yL/Odaq29AU7Nj+ikKDm7oxXJa1Xr41kTJfunL/Xoh0PmC+kCw+46QYpOJMQYI
4dh+o+CsOMi4jWGk3JVEDMQRJSJLd2+bGwBjpoQM+NVWV1hbZ3HwTrTKFJCrLp4A
3yJGuXAPPWaV/w==
=3TtW
-----END PGP SIGNATURE-----
--=-=-=--
