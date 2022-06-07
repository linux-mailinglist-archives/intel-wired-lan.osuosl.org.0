Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E83F953F6DA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jun 2022 09:07:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47616404F9;
	Tue,  7 Jun 2022 07:07:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Av93nH-Xc8kr; Tue,  7 Jun 2022 07:07:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AFAD404DB;
	Tue,  7 Jun 2022 07:07:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4CFF11BF30B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 07:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AD19613D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 07:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="n0WXtUVb";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="bUpMPhqD"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nvX0rZrFvaKm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jun 2022 07:06:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D9D060BBD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 07:06:58 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1654585614;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hcprdh1Yb1B+tSD6sJzXR6E2HBqZvDFe1oTNb0UH3E8=;
 b=n0WXtUVb6QVbfnpRwRK6vfQs2kxSb7KtbYEkzl+WVPCewQxhpXyW+81T2aUIDN2YsHWGpg
 HrZwyOwxoDEs5lJiccd3GXE3ZvA1PPA54bfcb5g1PE6kwVTNQUognON7dPitj0PpoPOtvk
 URhkZHt+tZAkX2EjyjrpgHBODoVenOh7ApmXl8R600tGovwm5hbYgo6Qu3C7WicTeI9+sg
 YlHpyPSUOhEJFrkK6qjeTixV/OajXJMpdCONqGsuCP4s8S0xBWGGPhEv0UtCa+bo458jve
 TjIj7H0Y08d44wM05lZviGGBHRLk5DS7JNOheT00xTEndf6E/bzIeyBvty26qA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1654585614;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hcprdh1Yb1B+tSD6sJzXR6E2HBqZvDFe1oTNb0UH3E8=;
 b=bUpMPhqDlqDqZlHi1d0nR3jD3mM3rYZYSJHqYl0ICVHDgJI57aCCLwRVvWZEePmcEylXTw
 nxpBMsQ5tiysbWBQ==
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <8735ghny8m.fsf@intel.com>
References: <20220606092747.16730-1-kurt@linutronix.de>
 <8735ghny8m.fsf@intel.com>
Date: Tue, 07 Jun 2022 09:06:53 +0200
Message-ID: <87k09tar5e.fsf@kurt>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Lift TAPRIO schedule
 restriction
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============7562057411962800339=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7562057411962800339==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi Vinicius,

On Mon Jun 06 2022, Vinicius Costa Gomes wrote:
> Hi Kurt,
>
> Kurt Kanzenbach <kurt@linutronix.de> writes:
>
>> Add support for Qbv schedules where one queue stays open
>> in consecutive entries. Currently that's not supported.
>>
>> Example schedule:
>>
>> |tc qdisc replace dev ${INTERFACE} handle 100 parent root taprio num_tc =
3 \
>> |   map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
>> |   queues 1@0 1@1 2@2 \
>> |   base-time ${BASETIME} \
>> |   sched-entry S 0x01 300000 \ # Stream High/Low
>> |   sched-entry S 0x06 500000 \ # Management and Best Effort
>> |   sched-entry S 0x04 200000 \ # Best Effort
>> |   flags 0x02
>>
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>>  drivers/net/ethernet/intel/igc/igc_main.c | 23 +++++++++++++++++------
>>  1 file changed, 17 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/eth=
ernet/intel/igc/igc_main.c
>> index ae17af44fe02..4758bdbe5df3 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -5813,9 +5813,10 @@ static bool validate_schedule(struct igc_adapter =
*adapter,
>>  		return false;
>>=20=20
>>  	for (n =3D 0; n < qopt->num_entries; n++) {
>> -		const struct tc_taprio_sched_entry *e;
>> +		const struct tc_taprio_sched_entry *e, *prev;
>>  		int i;
>>=20=20
>> +		prev =3D n ? &qopt->entries[n - 1] : NULL;
>>  		e =3D &qopt->entries[n];
>>=20=20
>>  		/* i225 only supports "global" frame preemption
>> @@ -5828,7 +5829,12 @@ static bool validate_schedule(struct igc_adapter =
*adapter,
>>  			if (e->gate_mask & BIT(i))
>>  				queue_uses[i]++;
>>=20=20
>> -			if (queue_uses[i] > 1)
>> +			/* There are limitations: A single queue cannot be
>> +			 * opened and closed multiple times per cycle unless the
>> +			 * gate stays open. Check for it.
>> +			 */
>> +			if (queue_uses[i] > 1 &&
>> +			    !(prev->gate_mask & BIT(i)))
>
> Perhaps I am missing something, I didn't try to run, but not checking if
> 'prev' can be NULL, could lead to crashes for some schedules, no?

My thinking was that `prev` can never be NULL, as `queue_uses[i] > 1` is
checked first. This condition can only be true if there are at least two
entries.

>
> What I have in mind is a schedule that queue 0 is mentioned multiple
> times, for example:
>
>  |   sched-entry S 0x01 300000 \ # Stream High/Low
>  |   sched-entry S 0x03 500000 \ # Management and Best Effort
>  |   sched-entry S 0x05 200000 \ # Best Effort
>

So, this schedule works with the proposed patch. Queue 0 is opened in
all three entries. My debug code shows:

|tc-6145    [010] .......   616.190589: igc_setup_tc: Qbv configuration:
|tc-6145    [010] .......   616.190592: igc_setup_tc: Queue 0 -- start_time=
=3D0 [ns]
|tc-6145    [010] .......   616.190592: igc_setup_tc: Queue 0 -- end_time=
=3D1000000 [ns]
|tc-6145    [010] .......   616.190593: igc_setup_tc: Queue 1 -- start_time=
=3D300000 [ns]
|tc-6145    [010] .......   616.190593: igc_setup_tc: Queue 1 -- end_time=
=3D800000 [ns]
|tc-6145    [010] .......   616.190593: igc_setup_tc: Queue 2 -- start_time=
=3D800000 [ns]
|tc-6145    [010] .......   616.190594: igc_setup_tc: Queue 2 -- end_time=
=3D1000000 [ns]
|tc-6145    [010] .......   616.190594: igc_setup_tc: Queue 3 -- start_time=
=3D800000 [ns]
|tc-6145    [010] .......   616.190594: igc_setup_tc: Queue 3 -- end_time=
=3D1000000 [ns]

Anyway, I'd appreciate some testing on your side too :).

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmKe+Q0THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgoJtEACci4/I7W93tKhTZAvB4kpPoC/W41+x
3WVZ005iQG1tj10ItvR1EqQl+0jRT7esrukvmNMgrXNvqVCDC52k6rHu0lr0Wuvv
vYouZHvOlYXbBThN0AT0ALy0OtJrrYqlmt/LBpdwMfuH4w1tvx2XMQNkL1/TzfxM
hoVJdrI2/SZ7CZrBiXnBrY5LRwZHyyuDRruOGDf21Z+tt1q5ele4Q6/GvhoBQVmK
L37WuM9DouOl+IqMskWcSCf1ul1SDL93CJRHNAUn3jRGvTrvZHVkgOuzp580sQK8
413dyjIgtcPnzLCb/Jm/gsZkdCJcm1RNbS32t6W6yOcfpvx+EeQ1pJp/Vt/0CIPQ
TdGw3o39zFJaHcFcw4pa2gm+3VqUcoWeY/dIt62/dnGSTDxhUhMR7A4+hD02M6nt
pnFkWQQoBjh7BAWiWiDSn50AAkZi1ww0Qyfn/sleyoli4r1+g+UTUO+mmW2hj04y
66kl80YDPooaWx8iZMdgvzNyyExh5IF2RmjLlPBTjskuIsheGm85jTzDYE0tSsDt
KVhQF75nTjAmHy7yzotd1k7Yp+1KNYSX16nmoZDGivyaEoUFu5lOeUipU4JOnvA8
ij5u+70enDMnS6372ZOvbhtG0hCuXaw6rM23WnO1gkt/ygPVz921BMTWqjPtoefA
c6aIfSQUH6BfhQ==
=aEQE
-----END PGP SIGNATURE-----
--=-=-=--

--===============7562057411962800339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7562057411962800339==--
