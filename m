Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF6588C2FB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 14:08:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AB87401E0;
	Tue, 26 Mar 2024 13:08:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lQasydf2kkfJ; Tue, 26 Mar 2024 13:08:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6860240139
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711458501;
	bh=EFshh7X9ubM0+XF5Ra6jL39fGH/o4V6QpqW2xLYoLl4=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KZHPNdrqTY3xRphpWZShKT/EA0dnjzOaJ70K6go8Q2O14yugJsmzhrx2GInK8Ry2a
	 gsikEk0fJeYYA50WQqzoxrAfZzwyDDE4R16mS1sO1zSnA0FaLUYlwgoulrskgQrdyM
	 oZs+LW538Dpmi08WTkfGX+8jUxCaxMIrJfuCA3eNxr5iljd44g3od+pNRmqayZ6XWQ
	 txBv9Zp5/FEnK46M3zaATOzOzzeYl8xeFrqMuGLcgwCQFoKTxNRfGq6MwDulYqzOt/
	 5qEdjwEJeM5EW4N7cBwaFGYyrLz70uFBX7lkJL6jaVOFo6XixbyzU+NHnJh9Wj8b3V
	 3T4ANueAXP2sg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6860240139;
	Tue, 26 Mar 2024 13:08:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E1901BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 13:08:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46FAD411A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 13:08:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nn3DS9gd7LDG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 13:08:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 28A9640A75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28A9640A75
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 28A9640A75
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 13:08:15 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Florian Bezdeka <florian.bezdeka@siemens.com>, Song Yoong Siang
 <yoong.siang.song@intel.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@google.com>, Vinicius
 Costa Gomes <vinicius.gomes@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>
In-Reply-To: <d2623ac0f1cb07a23976416cdcf9eee1986747b0.camel@siemens.com>
References: <20240325020928.1987947-1-yoong.siang.song@intel.com>
 <d2623ac0f1cb07a23976416cdcf9eee1986747b0.camel@siemens.com>
Date: Tue, 26 Mar 2024 14:08:11 +0100
Message-ID: <87h6gtb0p0.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1711458493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=EFshh7X9ubM0+XF5Ra6jL39fGH/o4V6QpqW2xLYoLl4=;
 b=Q3BPGshZjYjwajuB08w+lCsgYc4jwV721Wv5kUoUeHfAFvZkyxyndQHGFurpE95oBdR4bX
 YpJjFXDFZWJr7xwnkfmW3FHTGgNjgbHxVo3KcAN7n83/W4ps0adlGOwyu50R0Qk+O2a69N
 1xd2Ccp638kp4wALLynd+IL5F4zUqBdo/2mYwtWONS/L22/bdK2/pCCoK6Eqvs0u3M8Gzu
 Gotov/THQ8uRTkAP5UACHcIJVGxVQLYm0FD6D/oxxhY3szI+2N/c0ILavEIEfPDdTbHsm9
 PGQnH1iJAOWK1xQbzQTOCcciMsApeSFTClTAJR6WzEw1cNDufscUg0zVIcQDqQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1711458493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=EFshh7X9ubM0+XF5Ra6jL39fGH/o4V6QpqW2xLYoLl4=;
 b=ETN1EH6yWipj0JNpAd5nRCoQV2L5x2Mn9uiIkmMkcszRTyQQ0yU/InWK3ccY47SVq72IP1
 H6ZpPfeK79IJ7wAg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=Q3BPGshZ; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=ETN1EH6y
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v4 1/1] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
 packet
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, xdp-hints@xdp-project.net,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi Florian,

On Tue Mar 26 2024, Florian Bezdeka wrote:
> On Mon, 2024-03-25 at 10:09 +0800, Song Yoong Siang wrote:
>> This patch adds support to per-packet Tx hardware timestamp request to
>> AF_XDP zero-copy packet via XDP Tx metadata framework. Please note that
>> user needs to enable Tx HW timestamp capability via igc_ioctl() with
>> SIOCSHWTSTAMP cmd before sending xsk Tx hardware timestamp request.
>>=20
>> Same as implementation in RX timestamp XDP hints kfunc metadata, Timer 0
>> (adjustable clock) is used in xsk Tx hardware timestamp. i225/i226 have
>> four sets of timestamping registers. *skb and *xsk_tx_buffer pointers
>> are used to indicate whether the timestamping register is already occupi=
ed.
>
> Let me make sure that I fully understand that: In my own words:
>
> With that applied I'm able to get the point in time from the device
> when a specific frame made it to the wire. I have to enable that
> functionality using the mentioned ioctl() call first, and then check
> the meta area (located in the umem right before the frame payload)
> while consuming the completion queue/ring. Correct?
>
> If so, we now have a feedback channel for meta information for/from TX.
> Are there any plans - or would it be possible - to support Earliest
> TxTime First (NET_SCHED_ETF) QDisc based on that channel? In the past
> we had the problem that we we're missing a feedback channel to
> communicate back invalid lunch times.

Just asking: How would that work? AFAIK XDP bypasses the Qdisc
layer. Currently invalid Launch Times are accounted in the ETF Qdisc
itself. Does that mean every driver has to take care of it?

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmYCyLsTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzggJ7D/9ZO6iQENtqCYv6/eWBp7S7wfIxVTnA
/O1AKCo1zVKtj0of1aR/1pAf1BsbmZNpYXHf0bTL74M6gzJtxRJDb+X9TX++wIRP
TBAKlWuIiOMTRgKJ6b8lO9Jv3MExJ7WOJDarXI7wFHsgUEwZ4XgDRf+v550KVztw
t1qEskkv0SCqZsidryG19aSwECAlvkie5JPX6WS5YuvmWRg6Gj4P8GKXUctHakfW
z2O/mFbuq+fkAsYRA1MLXQw+uVliEoSbNaMkUCC6bH2MmAHJPs9rrmXqTMuWz5tK
lTA4sh/OYTPJWhqvEPlJp3aCmgDmvd3VyEhxJPdnYdzhPCQ6CG+D4A5hzKjNC0eq
Dw3UR7Gqsa4lpSrwUOcGZjtmdUQbH+lsKgekCZq/FQeU4McrWGWDJSRHC9Ak6Wge
Zuh2KmRx7+8TynukUG+mZq0pso+F8bABY0/CK6ftt3KXhq3pS/jsMUZK6FQ0ASXP
8PFU8imBZQorzkKnXfQv4VD9ZtXuWA9eJ2ipGFCrg2a4BEcVltXEqgy1u0yysZtZ
Ajj/R8KvMplogG2/MSg4QS6mYxWd4sPGa8TmpSr+h4TPM+x5prFInVhTUTlUyt/D
2+uooj7jtx07znqgPaMRrRSitxd/qGxEMW+qwNwzDgpSiKFmSyftE0A9UPBo/nSP
SqzH1kto/s6nmw==
=EfO9
-----END PGP SIGNATURE-----
--=-=-=--
