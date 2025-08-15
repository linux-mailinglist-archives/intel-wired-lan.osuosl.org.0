Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2270B27AB8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 10:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61FF760DA4;
	Fri, 15 Aug 2025 08:17:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4R1UqQlWygoz; Fri, 15 Aug 2025 08:17:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 978E460DAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755245844;
	bh=PWHiph4fIINuELdt0a+NGv5gE0TDFyitr5/9rdKwdFI=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5QOaqln28sqCIFMc1gJZ3QjH27JU7DEZTiE4k6MA+vV5VJcaUBhnetZYPUxpFMVat
	 FC9530UVpZeGf6ijokjeV2iINSFJBY3Nfo2p5KdQnJYdhi3lWWp1kkZjrrwrQ75WdP
	 qnY4RP2TRQ/ywCjLpWIoJWH3pXeylMnAPUAEQVbJdOEI6g44rvM5jvEOjXbkH7kgFN
	 CDUsoCePc3z7ibBfcUEUYzy7Gy1pLDl6LxYhTiyOHqVp8LKfo3Mxkrr8tDhQwbL6HO
	 ojs6iSZeeAq/8KNomxY2Fv84MdYpSHWVJ1EToNKgYe3qwBesHUQ8zUDiegjhNnZqYf
	 SduChYmZ/kAsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 978E460DAA;
	Fri, 15 Aug 2025 08:17:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AD3BE228
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 08:17:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92F7480AF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 08:17:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oXZDh0bXLxfL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 08:17:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B532080AAF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B532080AAF
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B532080AAF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 08:17:22 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Vinicius
 Costa Gomes <vinicius.gomes@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <a1e9e37e-63da-4f1c-8ac3-36e1fde2ec0a@molgen.mpg.de>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <a1e9e37e-63da-4f1c-8ac3-36e1fde2ec0a@molgen.mpg.de>
Date: Fri, 15 Aug 2025 10:17:17 +0200
Message-ID: <87y0rlm22a.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1755245839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PWHiph4fIINuELdt0a+NGv5gE0TDFyitr5/9rdKwdFI=;
 b=XsILf4Fgh7LpXgpzykCRN5AbgVC960WZEPgrktFrApvVr81hKqSebQ+ILc9eUyPK2i+bSm
 OFiL7HTUTDZGjy8TFSvk6pg/AFcD/k77Io39iwuBwh2MMkRCppqBtpbpTKIiRUfL5SHJIK
 x61Z1s8oZKn9PDv7y6+CQBew1LbO4Hu/5Vz1CxDGj5yfvZ2aNOTvbqdW8GZxMMGSgW9sbB
 y9JPsytamsRuX2RQSHepdeQhWvzkVI5G0VzILaykUPjR+rTLkhrkvNsB21L5TIrpICk212
 eQu6oIpOqCGvOyA8IvJXRCQLf+jRPqC51m32jCoKAm/CVVBhi8fyN24dP05Mng==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1755245839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PWHiph4fIINuELdt0a+NGv5gE0TDFyitr5/9rdKwdFI=;
 b=ZzYLnIyM5Mcz8s14MZmo4oDKz7Dj/ZA7J9FwJqBgpiA2IbVMrCAWt+OL4VbzSk+xU9PwVX
 Dr2FEgM2GAnYK+Bw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=XsILf4Fg; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=ZzYLnIyM
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

Hi Paul,

On Fri Aug 15 2025, Paul Menzel wrote:
> Dear Kurt,
>
>
> Thank you for your patch.
>
> Am 15.08.25 um 08:50 schrieb Kurt Kanzenbach:
>> Retrieve Tx timestamp directly from interrupt handler.
>>=20
>> The current implementation uses schedule_work() which is executed by the
>> system work queue to retrieve Tx timestamps. This increases latency and =
can
>> lead to timeouts in case of heavy system load.
>>=20
>> Therefore, fetch the timestamp directly from the interrupt handler.
>>=20
>> The work queue code stays for the Intel 82576. Tested on Intel i210.
>
> Excuse my ignorance, I do not understand the first sentence in the last=20
> line. Is it because the driver support different models? Why not change=20
> it for Intel 82576 too?

Yes, the driver supports lots of different NIC(s). AFAICS Intel 82576 is
the only one which does not use time sync interrupts. Probably it does
not have this feature. Therefore, the 82576 needs to schedule a work
queue item.

>
> Do you have a reproducer for the issue, so others can test.

Yeah, I do have a reproducer:

 - Run ptp4l with 40ms tx timeout (--tx_timestamp_timeout)
 - Run periodic RT tasks (e.g. with SCHED_FIFO 1) with run time of
   50-100ms per CPU core

This leads to sporadic error messages from ptp4l such as "increasing
tx_timestamp_timeout or increasing kworker priority may correct this
issue, but a driver bug likely causes it"

However, increasing the kworker priority is not an option, simply
because this kworker is doing non-related PTP work items as well.

As the time sync interrupt already signals that the Tx timestamp is
available, there's no need to schedule a work item in this case. I might
have missed something though. But my testing looked good. The warn_on
never triggered.

>
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>>   drivers/net/ethernet/intel/igb/igb.h      |  1 +
>>   drivers/net/ethernet/intel/igb/igb_main.c |  2 +-
>>   drivers/net/ethernet/intel/igb/igb_ptp.c  | 22 ++++++++++++++++++++++
>>   3 files changed, 24 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet=
/intel/igb/igb.h
>> index c3f4f7cd264e9b2ff70f03b580f95b15b528028c..102ca32e8979fa3203fc2ea3=
6eac456f1943cfca 100644
>> --- a/drivers/net/ethernet/intel/igb/igb.h
>> +++ b/drivers/net/ethernet/intel/igb/igb.h
>> @@ -776,6 +776,7 @@ int igb_ptp_hwtstamp_get(struct net_device *netdev,
>>   int igb_ptp_hwtstamp_set(struct net_device *netdev,
>>   			 struct kernel_hwtstamp_config *config,
>>   			 struct netlink_ext_ack *extack);
>> +void igb_ptp_tx_tstamp_event(struct igb_adapter *adapter);
>>   void igb_set_flag_queue_pairs(struct igb_adapter *, const u32);
>>   unsigned int igb_get_max_rss_queues(struct igb_adapter *);
>>   #ifdef CONFIG_IGB_HWMON
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/eth=
ernet/intel/igb/igb_main.c
>> index a9a7a94ae61e93aa737b0103e00580e73601d62b..8ab6e52cb839bbb698007a74=
462798faaaab0071 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -7080,7 +7080,7 @@ static void igb_tsync_interrupt(struct igb_adapter=
 *adapter)
>>=20=20=20
>>   	if (tsicr & E1000_TSICR_TXTS) {
>>   		/* retrieve hardware timestamp */
>> -		schedule_work(&adapter->ptp_tx_work);
>> +		igb_ptp_tx_tstamp_event(adapter);
>>   	}
>>=20=20=20
>>   	if (tsicr & TSINTR_TT0)
>> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethe=
rnet/intel/igb/igb_ptp.c
>> index a7876882aeaf2b2a7fb9ec6ff5c83d8a1b06008a..20ecafecc60557353f8cc5ab=
505030246687c8e4 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
>> @@ -796,6 +796,28 @@ static int igb_ptp_verify_pin(struct ptp_clock_info=
 *ptp, unsigned int pin,
>>   	return 0;
>>   }
>>=20=20=20
>> +/**
>> + * igb_ptp_tx_tstamp_event
>> + * @adapter: pointer to igb adapter
>> + *
>> + * This function checks the TSYNCTXCTL valid bit and stores the Tx hard=
ware
>> + * timestamp at the current skb.
>> + **/
>> +void igb_ptp_tx_tstamp_event(struct igb_adapter *adapter)
>> +{
>> +	struct e1000_hw *hw =3D &adapter->hw;
>> +	u32 tsynctxctl;
>> +
>> +	if (!adapter->ptp_tx_skb)
>> +		return;
>> +
>> +	tsynctxctl =3D rd32(E1000_TSYNCTXCTL);
>> +	if (WARN_ON_ONCE(!(tsynctxctl & E1000_TSYNCTXCTL_VALID)))
>> +		return;
>> +
>> +	igb_ptp_tx_hwtstamp(adapter);
>> +}
>> +
>>   /**
>>    * igb_ptp_tx_work
>>    * @work: pointer to work struct
>
> The diff looks fine.
>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Thanks!

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmie7Q0THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgvyEEACfDBSYsAYL9qu5zwmSqcAZklz43qTv
1VOPuLIIhUBBC+qgP5gXs6aWBrRrvP/fZ7hB3PAL6oPNV+j+/kNkxFJGPF4nWm/z
Po28nN6LYbhMMl8c0yKbqfljubPPpHP48Nda6cH6OSUtma1//+BWeYiNRQVuP7Hy
1zUVge5m1NHepOATleB1ZOELkgQZbtMUC7mKHyvk9HAuS356axxQPRJzO9WHXaV4
nMjTNv0WYeaGlw2JRuiom/7uYsZG/YEUj6NBdUmHL0QVlOTJ5QkEsfAnbOE9yWvo
ns5kmc63mxHD+DjorfqnbyprGGBhX+/xo+cbpxTVpwgW3si/rJMRnQyh+j3ZNgzE
hLjdPx2inSf94LVTgdQPs1cu5hnjN/M+fHfjRbkhHoehl9rtic69EXc1tHVtb1xD
WAZ5a3+4i09acbTvQNn/Lk40SyNCP3Abz8s1RTvh8zoT1WdtDblkGC1Sn5uYyYpw
0AJ64ZzCdqN0IpO2ge+QejMV5J99ZbILU2tWS7LVU/tkY6pbL9fT9BhXRmwpoT49
SUUHXb6poC/3fMkkPB1eiwXwkJ/IP/kse4yBVAHpQCvPB+s/aUoPOkiXM03OdIFG
1xJjViTY0CbVsz+NCLaDKR1Pn7hUmw+n+GCC8aU2XQwElwxU32UlQUKGFdN82HwO
bpD0+vrX7Plp/w==
=7AIh
-----END PGP SIGNATURE-----
--=-=-=--
