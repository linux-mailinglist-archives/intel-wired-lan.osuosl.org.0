Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLw4EaZxzGn1SwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 03:15:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ACB373668
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 03:15:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEFA180CEA;
	Wed,  1 Apr 2026 01:15:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pT3bveoaS5A5; Wed,  1 Apr 2026 01:15:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E976180CFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775006113;
	bh=aIG+o0e1lfuEhl1N7MrCiLFaDTM++cyzhQ07Sz+94dM=;
	h=From:In-Reply-To:Date:Cc:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iwG9YPtUaz3hiMJ06s4nujXAXHzsFewfuw4HX0XP8zwh3rLcnMbaS2pImz91lkW5c
	 /1uTfVAGQCFXNwSGAp1A7xPM33AElVKRdJw962NZr7ssOaFo3MvDE1TiF+r8Rrb96a
	 jCy0PSgcwaffuTlJFnkqGEaLG5uCwIv8dL6HFgT7YhdRtq2UMh1aSpVKutbOYosNOW
	 jpSuspa3+2KxpgHBZFVXtQybDM6cI3PG6JKVHHVR8imnsFkgte799lGpvJJCZtoPMY
	 gSxaStu+7unmQ1GGHIwP68ZJSnnseFD2chjzViTkmi+V5/Gj3Aht0LQY0VmBKcO7nJ
	 grmxczPYXllNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E976180CFA;
	Wed,  1 Apr 2026 01:15:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B35230E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 01:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 73E5540284
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 01:15:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x9iVO_Rq7MZI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 01:15:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1331; helo=mail-dy1-x1331.google.com;
 envelope-from=bob@vanvalzah.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DB2F1401C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB2F1401C9
Received: from mail-dy1-x1331.google.com (mail-dy1-x1331.google.com
 [IPv6:2607:f8b0:4864:20::1331])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB2F1401C9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 01:15:09 +0000 (UTC)
Received: by mail-dy1-x1331.google.com with SMTP id
 5a478bee46e88-2ba9c484e5eso5653926eec.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 18:15:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775006109; x=1775610909;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=aIG+o0e1lfuEhl1N7MrCiLFaDTM++cyzhQ07Sz+94dM=;
 b=bReDjtNhjSvSv+JJTaJ03UfBWXYDq/3oyasnHyGOL/ihi6OQ92ORhRMznh0abABEYK
 hZSE9D1SSfPWDSPJqkyIWSRdwlrkO9NFAI/QQryih7NMlabQPhmLUAMaIPUgzwp0RSVa
 9+CxgpT18XFpnJD/CpTUweadPss+Pbb84kyugTOtM1ZaDU5t+JGdL36LfB+gXn7HIqSw
 359FSQ79Id5yIYZ5frTutkLiir3nB4GyxEGfNfNbY02yxzzntEcscCl8LSuGPqup+qp+
 jSCYNs3H0OhhV0aNsAzlyiOU4amMpwhRX5zERJCfnC4UBkynblIU0kBoJQ0vJNZyWsVs
 Jefg==
X-Gm-Message-State: AOJu0YxERKSB+A184x5jh2bjIqqwEMeVTQCAaen4hwnVU9ixm+auC2Tn
 YFq7U/xgrz+4fImByd/rJlR1Wi88TLNdCPy51b6SnX65lBJd4N9328U4wpBtGofE6dw=
X-Gm-Gg: ATEYQzzz6lRbRcKSltfDC3lAGcq8mbif1xdG44b2raL3tcZXIKUkUlhSLRzhhaSNqmn
 aeiYK5d8Cdfb4ZWGJDVHwQ45QqZYS6Fps/IVjWYoTAsKhd8YR/PBkni8iVOxzHAviqAgdGY4LHK
 HjghPe0WchdOx69ra5Guw1LtqU8rfRZ2AGEC1GVo7Xw8pIabllNywKP44NxFp1XLX/6USeVO+oA
 UhRQUi+6M5loBHjxRn1i9Ruqx0EONGFW5y223M1Xbu2TUaf0hwzMPJidzhpGFl3Muw6X1tF5n07
 60ZXGBbRsOAkGL5msT5GuhKiLuK4TyPMhiUSzfTBehmOBVXLCjwnCTOtVcpfnXnXclX2paee64N
 Vi8b8H5p1jtGMBaCyoe/kTkvIimxhYa0leW6EExylaBEgCrtRzLUq13WoCKkIjdvfUHoOi7j5/8
 h2Bov7xID2uKIopcFhAoir7owfofthuqxIvcTLp1dva4kmYrS9p90CytK6vVmPO2iXn/gDD9mAn
 35l+lQe
X-Received: by 2002:a05:7301:6895:b0:2ba:6b3a:7696 with SMTP id
 5a478bee46e88-2c930e6bd20mr867370eec.8.1775006108584; 
 Tue, 31 Mar 2026 18:15:08 -0700 (PDT)
Received: from smtpclient.apple (syn-108-178-167-002.biz.spectrum.com.
 [108.178.167.2]) by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2c3c4cbbc1fsm11057586eec.13.2026.03.31.18.15.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2026 18:15:08 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.21\))
From: Bob Van Valzah <bob@vanvalzah.com>
In-Reply-To: <B22CCB1A-15FE-4233-9F47-7FE522C8D6FF@VanValzah.Com>
Date: Tue, 31 Mar 2026 18:14:57 -0700
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, julianstj@fb.com, jeff@jeffgeerling.com,
 Lasse Johnsen <lasse@timebeat.app>
Content-Transfer-Encoding: quoted-printable
Message-Id: <CAD61B95-35BF-4BAC-AC26-6AC043DE6FC1@vanvalzah.com>
References: <D1C3B3DF-960F-40C7-BBD7-994359F0C8AD@vanvalzah.com>
 <65977d5b-16eb-418c-995e-6a918f67707a@linux.dev>
 <B22CCB1A-15FE-4233-9F47-7FE522C8D6FF@VanValzah.Com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
X-Mailer: Apple Mail (2.3864.400.21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanvalzah-com.20230601.gappssmtp.com; s=20230601; t=1775006109; x=1775610909;
 darn=lists.osuosl.org; 
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aIG+o0e1lfuEhl1N7MrCiLFaDTM++cyzhQ07Sz+94dM=;
 b=BP71ncXRvFxOTYGZis59EAxLlGKCnFWOtbbonIW8oT88hAvQqY9r6N70l9vU5del+X
 OXq8wPFlhBiMbSerNwDsJYtcTk2dn0TXRj3KOUfmgmgE33lHBHGW2yFi/sKlDmB4yxYL
 lj0WhLK50I0+O2jQUHaJ2pW/RODbvsV8VGAkeXiBP9Q2iMVdO/HubsR2awx7XHBhTWqz
 69sitTl24DdtbpEutBMYsXhoThGJX/D1TWuvAXYd79wXxLZ5sW89SzJjthyNHXAKRatm
 rrHrlKSvcxy1tB+bGXMS0yZTgPimlP1+6wmKOmdoDrcvODvUuUzQnIpJd0a66E9Lbapy
 8Syw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=vanvalzah.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vanvalzah-com.20230601.gappssmtp.com
 header.i=@vanvalzah-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=BP71ncXR
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,vanvalzah.com:email,vanvalzah.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[vanvalzah.com];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[bob@vanvalzah.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	APPLE_MAILER_COMMON(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B0ACB373668
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There is one other symptom of this bug that we neglected to report =
previously: PEROUT stops. That=E2=80=99s PPS OUT for us, so it=E2=80=99s =
how we first noticed the problem. Recovery was to unload and reload the =
igc driver.

I take this as further evidence for my hunch that the hardware just =
reaches some internal =E2=80=9Cthis should never happen=E2=80=9D state =
and the PHC just stops ticking.

Hoping this additional symptom report might help with diagnosis.

	Bob

> On Mar 30, 2026, at 12:42=E2=80=AFPM, Bob Van Valzah =
<Bob@VanValzah.Com> wrote:
>=20
> Thanks for following up Vadim. To be clear, we do not see our patch as =
a solution to the problem, since it does not eliminate the underlying =
contention, it just reduces the likelihood.
>=20
> We now have a bit more hands-on time running the patch and can see its =
limitations. The driver just throws the timeout error less often now. =
Moreover, our code calling adjfine() has to be ready for an EBUSY. The =
patch is certainly not an elegant solution. It may well have worked =
better, or perhaps been a complete fix, if we had taken tmreg_lock. =
Sorry if we sent our patch prematurely.
>=20
> We think the contention happens when a system call made by a clock =
disciplining daemon like ts2phc changes a PHC's frequency, while a =
timestamping daemon like ptp4l has requested a timestamp against that =
same PHC. A plausible explanation is that the hardware fails to produce =
a timestamp for a packet when it collides with a PHC frequency =
adjustment, leading to the timestamp timeout. We see this contention =
128x more often than the average user because we cranked our PTP sync =
rate up to 128 Hz. We care about every ns here. The likelihood probably =
also scales with the number of PTP clients.
>=20
> Sorry, in retrospect, we may have overstated our case in declaring the =
root cause as the lack of locking, since our locking only reduces the =
likelihood of the timestamp timeout. Intel may provide insight to the =
underlying cause of the timeout, but my hunch is that the collision of a =
timestamp request against a PHC and a frequency change of the same PHC =
causes the timestamp request to fail, leading to the timeout. Our repro =
code makes this happen so reliably that it should be easy for the =
hardware guys to explain exactly what=E2=80=99s going on. Hopefully, =
they can advise on a more elegant avoidance strategy than our ham-handed =
lock.
>=20
> We have not tried recovering a timestamp following the error. We may =
have used the term =E2=80=9Ccorrupted=E2=80=9D poorly here. Since the =
error message says =E2=80=9Ctimeout," that could mean the hardware =
produced no timestamp at all, rather than a corrupted one.
>=20
> This isn=E2=80=99t a show-stopper for us, but we note that timekeeping =
daemons with imperfect error handling could react to this situation =
poorly and perhaps fail silently.
>=20
> Bob
>=20
>> On Mar 30, 2026, at 11:39=E2=80=AFAM, Vadim Fedorenko =
<vadim.fedorenko@linux.dev> wrote:
>>=20
>> On 29/03/2026 04:25, Bob Van Valzah wrote:
>>> Hi,
>>> We found a race in igc_ptp_adjfine_i225() that causes "Tx timestamp
>>> timeout" errors and eventually wedges EXTTS when a PTP grandmaster
>>> (ptp4l with hardware timestamping) runs concurrently with PHC
>>> frequency discipline (any GPSDO calling clock_adjtime =
ADJ_FREQUENCY).
>>> Root cause: igc_ptp_adjfine_i225() writes IGC_TIMINCA without =
holding
>>> any lock.  Every other PTP clock operation in igc_ptp.c (adjtime,
>>> gettime, settime) holds tmreg_lock, but adjfine does not.  When the
>>> increment rate changes while the hardware is capturing a TX =
timestamp,
>>> the captured value is corrupt.  The driver retries for
>>> IGC_PTP_TX_TIMEOUT (15s), then logs the timeout and frees the skb.
>>> Repeated occurrences eventually prevent EXTTS from delivering =
events.
>>> The attached reproducer (triggers in ~17 seconds on i226):
>>>  One thread calling clock_adjtime(ADJ_FREQUENCY) at ~200k/s on the
>>>  PHC, another sending UDP packets with SO_TIMESTAMPING requesting
>>>  hardware TX timestamps at ~100k/s.  A Python reproducer is at:
>>>  =
https://github.com/bobvan/PePPAR-Fix/blob/main/tools/igc_tx_timeout_repro.=
py
>>>  At realistic rates (1 Hz adjfine from a GPSDO + ptp4l at 128 Hz
>>>  sync), the race triggers in ~30 minutes.
>>> The attached patch holds ptp_tx_lock around the TIMINCA write and
>>> skips the write if any TX timestamps are pending (tx_tstamp[i].skb
>>> !=3D NULL), returning -EBUSY.  This doesn't fully close the hardware
>>> race (a new TX capture can start between the check and the write),
>>> but at realistic rates the residual probability gives ~25 year MTBF
>>> vs ~30 minutes without the patch.
>>> A complete fix would likely require either disabling TX timestamping
>>> around TIMINCA writes (via TSYNCTXCTL), or making the timeout =
recovery
>>> path more robust so a single corrupt timestamp doesn't wedge the
>>> subsystem.  We'd welcome guidance from the igc maintainers on the
>>> preferred approach.
>>> Tested on:
>>>  - Intel i226 (TimeHAT v5 board on Raspberry Pi 5)
>>>  - Kernel 6.12.62+rpt-rpi-2712 (Raspberry Pi OS)
>>>  - Intel out-of-tree igc driver 5.4.0-7642.46
>>>  - Stock upstream igc_ptp.c (same code, same bug)
>>> Bob
>>> ---
>>> drivers/net/ethernet/intel/igc/igc_ptp.c | 18 +++++++++++++++++-
>>> 1 file changed, 17 insertions(+), 1 deletion(-)
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c =
b/drivers/net/ethernet/intel/igc/igc_ptp.c
>>> index XXXXXXX..XXXXXXX 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
>>> @@ -47,8 +47,10 @@ static int igc_ptp_adjfine_i225(struct =
ptp_clock_info *ptp, long scaled_ppm)
>>> {
>>>        struct igc_adapter *igc =3D container_of(ptp, struct =
igc_adapter,
>>>                                               ptp_caps);
>>>        struct igc_hw *hw =3D &igc->hw;
>>> +       unsigned long flags;
>>>        int neg_adj =3D 0;
>>>        u64 rate;
>>>        u32 inca;
>>> +       int i;
>>>        if (scaled_ppm < 0) {
>>>                neg_adj =3D 1;
>>> @@ -63,7 +65,21 @@ static int igc_ptp_adjfine_i225(struct =
ptp_clock_info *ptp, long scaled_ppm)
>>>        if (neg_adj)
>>>                inca |=3D ISGN;
>>> -       wr32(IGC_TIMINCA, inca);
>>> +       /* Changing the clock increment rate while a TX timestamp is =
being
>>> +        * captured by the hardware can corrupt the timestamp, =
causing the
>>> +        * driver to report "Tx timestamp timeout" and eventually =
wedging
>>> +        * the EXTTS subsystem.  Serialize with pending TX =
timestamps:
>>> +        * skip the rate change if any are in flight.
>>> +        */
>>> +       spin_lock_irqsave(&igc->ptp_tx_lock, flags);
>>> +       for (i =3D 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
>>> +               if (igc->tx_tstamp[i].skb) {
>>> +                       spin_unlock_irqrestore(&igc->ptp_tx_lock, =
flags);
>>> +                       return -EBUSY;
>>> +               }
>>> +       }
>>> +       wr32(IGC_TIMINCA, inca);
>>> +       spin_unlock_irqrestore(&igc->ptp_tx_lock, flags);
>>=20
>> It's a bit weird solution, because in this case we may end up having =
no
>> successful calls to adjfine with high amount of TX timestamp packets =
in flight. Another problem here is that access to timing registers is
>> guarded by tmreg_lock, but here you use ptp_tx_lock, which protects
>> queue.
>>=20
>> Were you able to recover "corrupted" time stamps to figure out why =
they
>> are discarded?
>>=20
>>=20
>>>        return 0;
>>> }
>>> --
>>> 2.39.2
>=20
>=20

