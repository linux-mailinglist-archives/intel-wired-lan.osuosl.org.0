Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMh0MVzkpmlkZAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 14:38:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DFF1F0666
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 14:38:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B09C81E27;
	Tue,  3 Mar 2026 13:38:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id neDH5jyrwNlJ; Tue,  3 Mar 2026 13:38:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9698B81E34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772545102;
	bh=rDVzuxgJEXtCRZZ1xCN0kX1QxeN7h7mj0UkuWn4bbwc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6zj14z5X7kVXO4Fd0NfAxNVqTTfFcCAdZdPkAeiUxQ9TTmgB3tQyzfv5NlgbYT8tK
	 dSC30OqXTLyLM7sTCGhcdQ45KWrUsTvzhinDAOKndZWNhgeWFeUJEQM9LxK6nuVZm7
	 z3KolYlpYhP6mcun6oMi3hZw8kbDmYbKoD628LZjB/L6JM89CP7akjeSSwCsx1MNyu
	 Oy/S8rkig3irqrKFyFSeoLfbeyn8hcwXvl5PtZ71AVJJKsVFo8nEDs03AkZ7snJUMo
	 T8qxxLMXKjUifBfY1TuIQvZWqZScKHJfnzehmf36O9075M1bFRKczr37j+qMUwtB/T
	 QLXJhCaeLC07Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9698B81E34;
	Tue,  3 Mar 2026 13:38:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 67D481EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 13:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E06640CF6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 13:38:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 89H9Mzztdr0x for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 13:38:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9394040CC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9394040CC1
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9394040CC1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 13:38:19 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <9805389e-9ea4-4e7a-a122-65f733ead33c@molgen.mpg.de>
References: <20260303-igb_irq_ts-v4-1-cbae7f127061@linutronix.de>
 <9805389e-9ea4-4e7a-a122-65f733ead33c@molgen.mpg.de>
Date: Tue, 03 Mar 2026 14:38:11 +0100
Message-ID: <87qzq1rq2k.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1772545093;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rDVzuxgJEXtCRZZ1xCN0kX1QxeN7h7mj0UkuWn4bbwc=;
 b=4LDBZPmKYMrMkaPbCVywO2f3s+eYFA984rvFUndjVB18nt16AhKieNdKRpe8qkXfvl+ssE
 O8Dn79K94qr9J7P19d6iRQkBh2L9olhXM/vYKyFxqaTMiCXvaOKZybh7XE9pFRV751mS3H
 n9/gpb1zPzMQOMyUZ+m3YMZQqJkMK2JPiZ7Am3w2H73NhMyI7jesIoekiyfzvmeDo7tptE
 y0YNPrD+DaxThz0U5m8F//GOoOyNdBkY9eD0TBifQxYojVgBomqi08plios9MrESUFkwzX
 EnrqatylNbhsUO8s6RwrmQMVP+nvK6vJ06pZQZDqgicL1Bl26/PR4gjXrn6tEQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1772545093;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rDVzuxgJEXtCRZZ1xCN0kX1QxeN7h7mj0UkuWn4bbwc=;
 b=lBEyQk8PaGlnn48Bha/m0Iv1tc+mdAuXfNtqRyogmn0XZmB1fSdSfLl1MphKBw/Zxpsoxg
 i7nXcoi5WxknxtCg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=4LDBZPmK; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=lBEyQk8P
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] igb: Retrieve Tx
 timestamp from BH workqueue
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 28DFF1F0666
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:vadim.fedorenko@linux.dev,m:vinicius.gomes@intel.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:bigeasy@linutronix.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kurt@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.dev,intel.com,gmail.com,vger.kernel.org,lunn.ch,google.com,lists.osuosl.org,kernel.org,redhat.com,davemloft.net,linutronix.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[kurt@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue Mar 03 2026, Paul Menzel wrote:
> Dear Kurt,
>
>
> Thank you for the patch.
>
> Am 03.03.26 um 12:48 schrieb Kurt Kanzenbach:
>> Retrieve Tx timestamp from system BH instead of regular system workqueue.
>>=20
>> The current implementation uses schedule_work() which is executed by the
>> system work queue and kworkers to retrieve Tx timestamps. This increases
>> latency and can lead to timeouts in case of heavy system load. i210 is
>> often used in industrial systems, where timestamp timeouts can be fatal.
>>=20
>> Therefore, switch to the system BH workqueues which are executed directly
>> at the end of the IRQ handler.
>
> Thank you for implementing this.
>
>> Tested on Intel i210 and i350 with ptp4l.
>
> It would be great, if you shared the numbers. Did Miroslav already test=20
> this?

Great question. I did test with ptp4l and synchronization looks fine <
below 10ns back to back as expected. I did not test with ntpperf,
because I was never able to reproduce the NTP regression to the same
extent as Miroslav reported. Therefore, Miroslav is on Cc in case he
wants to test it. Let's see.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmmm5EMTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgvQWEACMXEkyWc4oiQvvfpz+VFyPGHKQWZR3
nTb4r2KTU42t75o5ukOCAq0+hpgtgd7H5VD96qwiNHvacfd4IvKsP4/DI32LWSqw
yRqH6M49S2/LSZr7fYtkdfLjY5VOGzF41b/abAgVoXJfn0yn6/NAzGc9kgGfQKXR
uSidNO7GJzcwzvzxRChYtcmIMq5NrhXZsG46r329VjFEsLplOCynX8+wjsDT5Jhh
iVmXfxNmY96zbrueIgCAWyCXQT5xHWe8pnSPgBna14q60ygXF0STN1UhrQNi4WK0
oCjWSzivIF0jmm/zXwOcDlmhbOwOeHEwPf/4G5YG8METMjdURwmZ6JbxYWrMr0SM
soGF4idZ3Eeh8prt50kqdE5/N8M018gR8AvKKQecwCqhYx5imXikIcteFoIVsXPs
y8hOJU0/1yN0xGpn0WVZ4umyujoDiL1Im/eZK1bHDvaJyD+5g+YwaUPw05q2XcRQ
+SJl0fNYSKkg/itB3pkygIffLpIFQO5ip23gEDAS8o6wIAZz8gZnh7CbgwigB5+E
m9Pk9EquSCM0xdJidOoK9Od9uqlBloZolCXFEPAmnEIJtc9WYBjLiTcfshCNnfBW
IIFaov3rdq5td5Ul7TD0AwwN7a+bc3NBo48ijFFjq3jwpWj+4vGvWiXGqPM3286b
Tf7yhlSENlmJJw==
=TRL7
-----END PGP SIGNATURE-----
--=-=-=--
