Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1841891AE03
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 19:26:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D11D60E50;
	Thu, 27 Jun 2024 17:26:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tvPrE1zzg0d3; Thu, 27 Jun 2024 17:26:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C819B60E53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719509176;
	bh=rv4qQ9XUgJyYPZ1ma44+xCJ8R7rfKAASWLHCsJDEwyA=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fuTMwvpZX/3F5jKBLf6bTHhnpNO2J7yUz1xjZ7tsDoKYjl8902Jy+Jchvhl3QYfxW
	 zaWLeMFUE2uCeQD97z8xAyo6stLezlvXhdJp12JrnCHCG6zD+eEKTA6tzzLDNeTi3q
	 2SHoGIizPwNfRLe+jLKFb3v/uWq/2hbgHTM/wlLKAJgKq7B4ySBR4rGy7ke7gqQ9Td
	 ptYO1fqjbY1eP5DGvfzJAViyeubkqEkD4/STp8G+jbbfHTO44BrHz56L4UR6Fz4pGM
	 Sy206gX6+/M52xPEdq++jD1PYy/UBl5uWhNoWMdR0fPQzz5q1Sc/g37b1KTgbYzw2W
	 vR9tCCLabiAYA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C819B60E53;
	Thu, 27 Jun 2024 17:26:16 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B4F691BF487
 for <intel-wired-lan@osuosl.org>; Thu, 27 Jun 2024 17:26:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AEC5E8418E
 for <intel-wired-lan@osuosl.org>; Thu, 27 Jun 2024 17:26:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7i1tPbKeJP9T for <intel-wired-lan@osuosl.org>;
 Thu, 27 Jun 2024 17:26:14 +0000 (UTC)
X-Greylist: delayed 451 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 27 Jun 2024 17:26:13 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D416A8419A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D416A8419A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D416A8419A
 for <intel-wired-lan@osuosl.org>; Thu, 27 Jun 2024 17:26:13 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Benjamin Steinke <benjamin.steinke@woks-audio.com>, Sriram Yagnaraman
 <sriram.yagnaraman@est.tech>
In-Reply-To: <3253130.2gtjKKCVsX@desktop>
References: <20230804084051.14194-1-sriram.yagnaraman@est.tech>
 <878qyq9838.fsf@kurt.kurt.home> <3253130.2gtjKKCVsX@desktop>
Date: Thu, 27 Jun 2024 19:18:37 +0200
Message-ID: <87cyo2fgnm.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1719508719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rv4qQ9XUgJyYPZ1ma44+xCJ8R7rfKAASWLHCsJDEwyA=;
 b=Qa1f0okNDUqR/75XscYh3RJut+LNBA0XOJLhajIDH7DbobeXi+XlyCA2AwSMTnZ69WNZdy
 UFOCdrwr3OTpxfobuqSJ4O5WfQMVrRtR0l5CSEbqm/9yMUwOFYmO25YANxXNdCqtEhjbp0
 nZQsY+hq7AnTCgW0lTxhB9HG+SpzoWVEk+dfDRwR0o3R3OqCaHB7rJ1SG0qEhfvFlh+FNq
 dX/A6gUEJE8gOpsEGrPVFd4z1ujTUVeY4ggW4wdIEELiSY8Ncme9gOLn3rNwCm6zyvgdm5
 QIM7CaslzvQzyXFGJmXF+mReJMF+pW7M7jkAHjQWtYg5xAe5fjmRVH9/RB5XoA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1719508719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rv4qQ9XUgJyYPZ1ma44+xCJ8R7rfKAASWLHCsJDEwyA=;
 b=NdByjKI4CUhqVhdtqRaoP63u1yu9XkgwCAsB4tX285JtCkkR9YhZ3CxfBDDCMzAs2JG2bJ
 TFbh979yoMmQeUDQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=Qa1f0okN; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=NdByjKI4
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/4] igb: Add support for
 AF_XDP zero-copy
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, intel-wired-lan@osuosl.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi Benjamin,

On Thu Jun 27 2024, Benjamin Steinke wrote:
> On Thursday, 27 June 2024, 09:07:55 CEST, Kurt Kanzenbach wrote:
>> Hi Sriram,
>>=20
>> On Fri Aug 04 2023, Sriram Yagnaraman wrote:
>> > The first couple of patches adds helper funcctions to prepare for AF_X=
DP
>> > zero-copy support which comes in the last couple of patches, one each
>> > for Rx and TX paths.
>> >=20
>> > As mentioned in v1 patchset [0], I don't have access to an actual IGB
>> > device to provide correct performance numbers. I have used Intel 82576=
EB
>> > emulator in QEMU [1] to test the changes to IGB driver.
>>=20
>> I gave this patch series a try on a recent kernel and silicon
>> (i210). There was one issue in igb_xmit_zc(). But other than that it
>> worked very nicely.
>
> Hi Kurt and Sriram,
>
> I recently tried the patches on a 6.1 kernel. On two different devices i2=
10 &=20
> i211 I couldn't see any packets being transmitted on the wire. Perhaps ca=
used=20
> by the issue in igb_xmit_zc() you mentioned, Kurt? Can you share your fin=
dings,=20
> please?

Yeah, that's exactly the issue.

Following igb_xmit_xdp_ring() I've added PAYLEN to the Tx descriptor
instead of setting it to zero:

igb_xmit_zc()
{
        [...]

	/* put descriptor type bits */
	cmd_type =3D E1000_ADVTXD_DTYP_DATA | E1000_ADVTXD_DCMD_DEXT |
		   E1000_ADVTXD_DCMD_IFCS;
	olinfo_status =3D descs[i].len << E1000_ADVTXD_PAYLEN_SHIFT;
=09
	cmd_type |=3D descs[i].len | IGB_TXD_DCMD;
	tx_desc->read.cmd_type_len =3D cpu_to_le32(cmd_type);
	tx_desc->read.olinfo_status =3D cpu_to_le32(olinfo_status);

	[...]
}

Afterwards packets are transmitted on the wire.

>
> RX seemed to work on first sight.
>

Yes, Rx works even with PTP enabled.

>> It seems like it hasn't been merged yet. Do you have any plans for
>> continuing to work on this?
>
> I can offer to do testing and debugging on real hardware if this helps.

Great. Thanks!

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmZ9nu0THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzglRkEACej+Q8i7Tg/ATprtzVt9sEaP90+gaz
EDQ/JeF3ElM4LYTDmzPseXBgWTcBvtAcLHrpmFls/HnPXPQG7suBhUkGb1hbORiv
d5hbhO0CyEA6RjaGFCprmtsB4gHoRv4saQmywEmxSVw63q55BYGulwVGVQrUfeVW
ddwJnzpOefhrqIldEuzn2GmL+W9y95mKbE/XB4Neo0l89vEARqywsxYiMZ3dkUy6
CNXgBdZdjIEqWukWZiSQugJCNUuYE84G3TeYsKIsv4l+w/l8jgg2Iw1MFG8ajN/a
iyEnAPP+5/8M1jKyYa+1rxbiI6wegarbLnHJiqNitanmXEYMnHdTBhqW2dUDtD8f
qGVt80kvbL1uqvd1T05OoR49v3noNEwSyByymDsGMrn2F5/c8NRQHVAqEyhld04w
0uHil5AaEU4/YPoCLPkvZQuG6X+WjOrogkCyJocLTUzRz5uK9w6KZf6/pZQus4QT
OkgCWTU1yED844AwTAoxmrVFLcnhQU1U4K6zBcQqgytpli9SzrrHMm8jvGBGCidY
H96OKQg9tjcsmFjCFlFNl0Ozg4s1dZzVQv+utYVoJnkyXLyuK+U+h26zK/bu3rer
tlu3jvXMooCrniRxqwCtc+WBYMeQ0tnsOgLOasWBkD+QdgCFJntu9ml577YqxKPY
4lhvb3a3D0fM/g==
=Srqp
-----END PGP SIGNATURE-----
--=-=-=--
