Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PolLmnSymmsAQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 21:43:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C432360977
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 21:43:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 299BA60E30;
	Mon, 30 Mar 2026 19:43:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 80r374CrJbAU; Mon, 30 Mar 2026 19:43:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 373EB60E31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774899812;
	bh=EVnvOEnlzzcMRA6vcJ6WQFSlz4MS17QRsyRF4cxVWkw=;
	h=From:In-Reply-To:Date:Cc:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qg6+T8KOC7f4ElHL6RTLs6TXyg/j95Os1BM4KZqP8xc7ciEPLiQSVKnvo66gnA+xD
	 eiAsQnk3yJI1MHWC5PNbvBTtQY2oNcrq7iz659hHRCZDXnVQJ6502MjuvmLb/mmCwF
	 hNLaiKKO6LaXBZm2aoURNpjBxBaX5NWnd3kHA8FFsaMI3tKJNM5IYlwpTvmDAr1L5z
	 KUMcf0NsKGjlAeU7JQ/hPXyniIiTQ9BgkCj1d38QLPyRVXhUSkwdy5QWy2c+KVKDaj
	 4lPEELGQ8GOgAPnJQNkyn4xJYVjqjWAJ1X+hYL0uT03ohTJcm607+zf+Hz4Ipbvy6r
	 4NRPvIG3du6sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 373EB60E31;
	Mon, 30 Mar 2026 19:43:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F769350
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 19:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0598A40E67
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 19:43:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nHm1JfxcVHoA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2026 19:43:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f34; helo=mail-qv1-xf34.google.com;
 envelope-from=bob@vanvalzah.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0921F40E65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0921F40E65
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com
 [IPv6:2607:f8b0:4864:20::f34])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0921F40E65
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 19:43:28 +0000 (UTC)
Received: by mail-qv1-xf34.google.com with SMTP id
 6a1803df08f44-89fc349b5c2so23490616d6.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 12:43:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774899807; x=1775504607;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:subject:mime-version:from:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=EVnvOEnlzzcMRA6vcJ6WQFSlz4MS17QRsyRF4cxVWkw=;
 b=ReiPXvbzmT76iDp4s5EsVP5/Bb5JezNqeCQ/sXxTZgH++6xqw7Bu7rq0ydDHS1JMbi
 iL57CHFOEuglRasUda0oLiewBmQJkBL2sNVgEChd9+EN+IcVHcJhwlwXDgd9M9n2ILme
 LwBIWRedrC3YokVXyqQ9S94StoI3PvC4GolCMCZf0E80jGlK+6ZvLbLqnaL299QUEVXE
 MNUos8l1/XeIKRgWjBb9Ede71xjOAyG9T+AqRccBwCi3ZT/Fn4d33kFi4P4x41VZyFOH
 mHThqE8s4DqzvNSghW4Ok8hW1sEXyEZYOhgSRRFP0sONC6wxurL23rehW800+rL6OSOb
 ULGg==
X-Gm-Message-State: AOJu0Yz7HwbnbaiMzooHMYFa9OSYkGUxxsL5+zLjKgG68Gs0WmWvF2Jy
 6QRwCH3sViIOGSlRMnJplAca571byNb64EEV9VQQR08kIaMcS0yCVcvapKdzbJjBP04=
X-Gm-Gg: ATEYQzwC6eRbWBPL8e+auCT+IC9p+k9yQuv9gcjkEeqC89i2EEvBtYCgclbs8ElD7+p
 9w7kU2ig0FaJuNhfr3Jlyt5qNsdSAT5rW6fY/8729AKbpYazfJCETHo24Pqul/8BB0Id5M+F75L
 Bm8qz9dYP5PyzGR1njVinM67thqUX4RveFYctMei9w+PFUxGc7uVCsK3/V29M36TkmISh2RRIF2
 ThFSZcjif0imarcJ5G7n/rrL9KARH9TZmzyuoEGK4wv9BJZRDln7CeA47RH6cE73SbsACsS3iE8
 OJyjo+FyhEtMko++0Jyx6UPSsDe8nJ+PbYozHeJsTRjUnN7BUzSBVK1nNIJ9SxQfnu8xQRwA0F5
 7phsX92x2pVmdHfgHXhRBwsK8Dn3r49+g0KN/UgL8jnrHxWCgmU2uxAl1C9xkDwz6+LQ3beRfYv
 btWQM=
X-Received: by 2002:a05:6214:4010:b0:8a0:29f3:1439 with SMTP id
 6a1803df08f44-8a029f31c24mr90309166d6.27.1774899807239; 
 Mon, 30 Mar 2026 12:43:27 -0700 (PDT)
Received: from smtpclient.apple ([75.104.94.42])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-89ecf95f4f9sm80203496d6.37.2026.03.30.12.43.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Mar 2026 12:43:26 -0700 (PDT)
From: Bob Van Valzah <bob@vanvalzah.com>
X-Google-Original-From: Bob Van Valzah <Bob@VanValzah.Com>
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.21\))
In-Reply-To: <65977d5b-16eb-418c-995e-6a918f67707a@linux.dev>
Date: Mon, 30 Mar 2026 14:42:29 -0500
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, julianstj@fb.com, jeff@jeffgeerling.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <B22CCB1A-15FE-4233-9F47-7FE522C8D6FF@VanValzah.Com>
References: <D1C3B3DF-960F-40C7-BBD7-994359F0C8AD@vanvalzah.com>
 <65977d5b-16eb-418c-995e-6a918f67707a@linux.dev>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
X-Mailer: Apple Mail (2.3864.400.21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanvalzah-com.20230601.gappssmtp.com; s=20230601; t=1774899807; x=1775504607;
 darn=lists.osuosl.org; 
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:subject:mime-version:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EVnvOEnlzzcMRA6vcJ6WQFSlz4MS17QRsyRF4cxVWkw=;
 b=oi9cnQcn7t1Cnx/3dlYbgI/L0W0A+tO/zek1m885H0jFTBnz9g/txjtZPkJURGmqne
 uRy9gsOIlVASeAX8vFvCaa5f5oKKOO4BZ5KjCYyv03Ha1ISLVrvTFuvDz5z50CR3eYNh
 QXynumlt8Z416GKKIgIHysIh9RzUgA5SX3H9ChyFpWy8Dgn1/L75N2kPWsCTyJyzZJlt
 Jm8h0ZPbV7LDP2k0YZwrxWSXFTzEOYBsb54PZT54+dSWgnpAvnVkY4g+wgnBiGJvb+a2
 DOGW2PUEv7d16tiL/G7SZdbzIcPXLB4ZMnajwEfZ1BUlCCpADWslHDHl0p6sVZUFFPs0
 tqWQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=vanvalzah.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vanvalzah-com.20230601.gappssmtp.com
 header.i=@vanvalzah-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=oi9cnQcn
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix Tx timestamp timeout caused
 by unlocked TIMINCA write in adj fine
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[vanvalzah.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[bob@vanvalzah.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	APPLE_MAILER_COMMON(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3C432360977
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thanks for following up Vadim. To be clear, we do not see our patch as a =
solution to the problem, since it does not eliminate the underlying =
contention, it just reduces the likelihood.

We now have a bit more hands-on time running the patch and can see its =
limitations. The driver just throws the timeout error less often now. =
Moreover, our code calling adjfine() has to be ready for an EBUSY. The =
patch is certainly not an elegant solution. It may well have worked =
better, or perhaps been a complete fix, if we had taken tmreg_lock. =
Sorry if we sent our patch prematurely.

We think the contention happens when a system call made by a clock =
disciplining daemon like ts2phc changes a PHC's frequency, while a =
timestamping daemon like ptp4l has requested a timestamp against that =
same PHC. A plausible explanation is that the hardware fails to produce =
a timestamp for a packet when it collides with a PHC frequency =
adjustment, leading to the timestamp timeout. We see this contention =
128x more often than the average user because we cranked our PTP sync =
rate up to 128 Hz. We care about every ns here. The likelihood probably =
also scales with the number of PTP clients.

Sorry, in retrospect, we may have overstated our case in declaring the =
root cause as the lack of locking, since our locking only reduces the =
likelihood of the timestamp timeout. Intel may provide insight to the =
underlying cause of the timeout, but my hunch is that the collision of a =
timestamp request against a PHC and a frequency change of the same PHC =
causes the timestamp request to fail, leading to the timeout. Our repro =
code makes this happen so reliably that it should be easy for the =
hardware guys to explain exactly what=E2=80=99s going on. Hopefully, =
they can advise on a more elegant avoidance strategy than our ham-handed =
lock.

We have not tried recovering a timestamp following the error. We may =
have used the term =E2=80=9Ccorrupted=E2=80=9D poorly here. Since the =
error message says =E2=80=9Ctimeout," that could mean the hardware =
produced no timestamp at all, rather than a corrupted one.

This isn=E2=80=99t a show-stopper for us, but we note that timekeeping =
daemons with imperfect error handling could react to this situation =
poorly and perhaps fail silently.

	Bob

> On Mar 30, 2026, at 11:39=E2=80=AFAM, Vadim Fedorenko =
<vadim.fedorenko@linux.dev> wrote:
>=20
> On 29/03/2026 04:25, Bob Van Valzah wrote:
>> Hi,
>> We found a race in igc_ptp_adjfine_i225() that causes "Tx timestamp
>> timeout" errors and eventually wedges EXTTS when a PTP grandmaster
>> (ptp4l with hardware timestamping) runs concurrently with PHC
>> frequency discipline (any GPSDO calling clock_adjtime ADJ_FREQUENCY).
>> Root cause: igc_ptp_adjfine_i225() writes IGC_TIMINCA without holding
>> any lock.  Every other PTP clock operation in igc_ptp.c (adjtime,
>> gettime, settime) holds tmreg_lock, but adjfine does not.  When the
>> increment rate changes while the hardware is capturing a TX =
timestamp,
>> the captured value is corrupt.  The driver retries for
>> IGC_PTP_TX_TIMEOUT (15s), then logs the timeout and frees the skb.
>> Repeated occurrences eventually prevent EXTTS from delivering events.
>> The attached reproducer (triggers in ~17 seconds on i226):
>>   One thread calling clock_adjtime(ADJ_FREQUENCY) at ~200k/s on the
>>   PHC, another sending UDP packets with SO_TIMESTAMPING requesting
>>   hardware TX timestamps at ~100k/s.  A Python reproducer is at:
>>   =
https://github.com/bobvan/PePPAR-Fix/blob/main/tools/igc_tx_timeout_repro.=
py
>>   At realistic rates (1 Hz adjfine from a GPSDO + ptp4l at 128 Hz
>>   sync), the race triggers in ~30 minutes.
>> The attached patch holds ptp_tx_lock around the TIMINCA write and
>> skips the write if any TX timestamps are pending (tx_tstamp[i].skb
>> !=3D NULL), returning -EBUSY.  This doesn't fully close the hardware
>> race (a new TX capture can start between the check and the write),
>> but at realistic rates the residual probability gives ~25 year MTBF
>> vs ~30 minutes without the patch.
>> A complete fix would likely require either disabling TX timestamping
>> around TIMINCA writes (via TSYNCTXCTL), or making the timeout =
recovery
>> path more robust so a single corrupt timestamp doesn't wedge the
>> subsystem.  We'd welcome guidance from the igc maintainers on the
>> preferred approach.
>> Tested on:
>>   - Intel i226 (TimeHAT v5 board on Raspberry Pi 5)
>>   - Kernel 6.12.62+rpt-rpi-2712 (Raspberry Pi OS)
>>   - Intel out-of-tree igc driver 5.4.0-7642.46
>>   - Stock upstream igc_ptp.c (same code, same bug)
>> Bob
>> ---
>>  drivers/net/ethernet/intel/igc/igc_ptp.c | 18 +++++++++++++++++-
>>  1 file changed, 17 insertions(+), 1 deletion(-)
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c =
b/drivers/net/ethernet/intel/igc/igc_ptp.c
>> index XXXXXXX..XXXXXXX 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
>> @@ -47,8 +47,10 @@ static int igc_ptp_adjfine_i225(struct =
ptp_clock_info *ptp, long scaled_ppm)
>>  {
>>         struct igc_adapter *igc =3D container_of(ptp, struct =
igc_adapter,
>>                                                ptp_caps);
>>         struct igc_hw *hw =3D &igc->hw;
>> +       unsigned long flags;
>>         int neg_adj =3D 0;
>>         u64 rate;
>>         u32 inca;
>> +       int i;
>>         if (scaled_ppm < 0) {
>>                 neg_adj =3D 1;
>> @@ -63,7 +65,21 @@ static int igc_ptp_adjfine_i225(struct =
ptp_clock_info *ptp, long scaled_ppm)
>>         if (neg_adj)
>>                 inca |=3D ISGN;
>> -       wr32(IGC_TIMINCA, inca);
>> +       /* Changing the clock increment rate while a TX timestamp is =
being
>> +        * captured by the hardware can corrupt the timestamp, =
causing the
>> +        * driver to report "Tx timestamp timeout" and eventually =
wedging
>> +        * the EXTTS subsystem.  Serialize with pending TX =
timestamps:
>> +        * skip the rate change if any are in flight.
>> +        */
>> +       spin_lock_irqsave(&igc->ptp_tx_lock, flags);
>> +       for (i =3D 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
>> +               if (igc->tx_tstamp[i].skb) {
>> +                       spin_unlock_irqrestore(&igc->ptp_tx_lock, =
flags);
>> +                       return -EBUSY;
>> +               }
>> +       }
>> +       wr32(IGC_TIMINCA, inca);
>> +       spin_unlock_irqrestore(&igc->ptp_tx_lock, flags);
>=20
> It's a bit weird solution, because in this case we may end up having =
no
> successful calls to adjfine with high amount of TX timestamp packets =
in flight. Another problem here is that access to timing registers is
> guarded by tmreg_lock, but here you use ptp_tx_lock, which protects
> queue.
>=20
> Were you able to recover "corrupted" time stamps to figure out why =
they
> are discarded?
>=20
>=20
>>         return 0;
>>  }
>> --
>> 2.39.2


