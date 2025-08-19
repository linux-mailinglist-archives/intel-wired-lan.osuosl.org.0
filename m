Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA94B2B91F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 08:09:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB9676083C;
	Tue, 19 Aug 2025 06:09:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PycfMcIzHpKQ; Tue, 19 Aug 2025 06:09:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E3A960837
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755583775;
	bh=rL+TrUW6tiyvddHWQRgJrjB30uAutfdbI4yIw0BN8hQ=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XUSpYhI2tk0ETycnran4MbwKCd2IiyVwRXD/mYKtM0cVBFS1q3e/4OMwaPb+gF0+v
	 ynNejzIZt+kmvCdU9+bbopLE74eZdsqVIn+uogsQdMow5cNnEZJ/ERacjNU7mhUkzX
	 xVwNJ72xDUtZLmp2Gwj4WbO6Jj4e2idCjKW3cvzNNaI1tSbUOTiSrdL9kh/YhSkhqS
	 UPJjqEbdbCSV2DM58XOXc8PYSN6Q/72uxauD8agdScrzwZw/aiBPmDIeODzzInSB/2
	 hI8+3h3aoVlWsxUBF/PXy7vjYrqEvaTeh5HFVOJ3K7w5f1Zm17LYGNUJoKGtBJUZW2
	 rMmrXixzRyh2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E3A960837;
	Tue, 19 Aug 2025 06:09:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 238A9DE6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 06:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01B416083A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 06:09:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f0aqwD9XD4FV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 06:09:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 02F1760837
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02F1760837
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 02F1760837
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 06:09:31 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Miroslav Lichvar <mlichvar@redhat.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Vinicius
 Costa Gomes <vinicius.gomes@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <aKMbekefL4mJ23kW@localhost>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost>
Date: Tue, 19 Aug 2025 08:09:25 +0200
Message-ID: <87y0rf4zca.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1755583766;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rL+TrUW6tiyvddHWQRgJrjB30uAutfdbI4yIw0BN8hQ=;
 b=ZGCq7qCfzC5H3GygyPZRbiTCwyFLWcjdY2GuCVTSeKzsFHLFi7TnN2rA4bRkAEQYHEWwx2
 Sfa9Xe29n0OaffTVuC9J6MUc67waFR1yW/pkPD6SAYohfACHVFENHKtoFJUj3Tw1jwJWC0
 8AYmBdbwddYzJ0w6lzjwNX07k/tMJrnsyulDzM8WbTMqCmUXTihkn+dQK6hLAb8sZ9V3Ax
 lVnVn14sqyaxE+72Iw7hO6am1JCWDyRrJdihxn8jcTxYsCZm0sf5bWue+IFqtBvic41CgV
 ChDG7IP/Ijw6260Hi/ammf/N/MVPo9J3DnLZTDrsaosc892S5+FbG5nupgmt9g==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1755583766;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rL+TrUW6tiyvddHWQRgJrjB30uAutfdbI4yIw0BN8hQ=;
 b=SdkPN5lASqNdoU8R88W/4y657SDrKUFPVaiX6qrGSBu6g8zZKUVSj7+sEnbKFPZte733Tl
 zP6HS2zQ2xQOF9Ag==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=ZGCq7qCf; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=SdkPN5lA
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

On Mon Aug 18 2025, Miroslav Lichvar wrote:
> On Fri, Aug 15, 2025 at 08:50:23AM +0200, Kurt Kanzenbach wrote:
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
> I tested this patch on 6.17-rc1 with an Intel I350 card on a NTP
> server (chrony 4.4), measuring packet rates and TX timestamp accuracy
> with ntpperf. While the HW TX timestamping seems more reliable at some
> lower request rates, there seems to be about 40% drop in the overall
> performance of the server in how much requests it can handle (falling
> back to SW timestamps when HW timestamp is missed). Is this expected
> or something to be considered?=20

Thanks for testing! Nope, this is not really expected. Let me see if I
can reproduce your results and see where that comes from.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmikFRUTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgl5/D/4ys9G0jrCyeLj8q6rsiY9vFRfVcq5L
pLBED0b1dmwg5Wu0sxbioJFb5I/e/qZAWH9p1z5FfWXPKQjtt8zGijaklIOtDt5/
MI1DwU/F/jfQMOa8DnPsrEEHKoYgultJ74ZTnGHjtQW2GqKbHUl48NGjA+8dk6Eu
fHzZKWFmQ9/2RdeIK0DjQDgqiBkZ8N7b0Tvm+eD0DWHltlK8AE7qNvaY5ydSbzEc
Jl9gLVp1Zu4OBn4wM0dYfBYsxWqZak5Xdd2MCnoLaZX1yeJFEfHiof1Jgl8Svdlu
wZ8AOS20/Xi0XvKbdd5T80fK9EAlMrJpRPSQJoLSourKoRwKodZQIKxHv0403oCj
Xt1MVry9zq6IRA4mKUdcD2j/xWwIdBrkE9swZ5py1m5W4EmiGYojgE2DwCcJd4Z1
yxXPp/HzFZ3NmOfEhdjcljDUcBEZNim+qlgtFK0Diiz8TndLfFeaUE/zyEyQcMrQ
ctI7dj/dlxt+V52fFcgYMh1ZEasa7bbmC1LNpys61MC1Vnp8z9NDL8S7dRUlTgM5
q+qxor9pOg7SEc5h5HqEWvQn/SZ82lnGX/GZ0M0Tgasm7c0jyX73Qe/63/P5EP62
n2yK2Timo8yN4lGt7B+vWxyBiAvgUeBYq3baklTVPYPlP1+Vw8HI2BQf089pTPXY
1a91IQJQaNwNuQ==
=Lz+0
-----END PGP SIGNATURE-----
--=-=-=--
