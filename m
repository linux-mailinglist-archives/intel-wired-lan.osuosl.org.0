Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F46371654
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 May 2021 15:58:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE99C84171;
	Mon,  3 May 2021 13:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dQ7NOiNfmMjK; Mon,  3 May 2021 13:58:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA5D9840F9;
	Mon,  3 May 2021 13:58:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8DA31BF34F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 07:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C44E48434A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 07:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i5xueGMYbLr8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 May 2021 07:31:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CC3284344
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 07:31:14 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1620027071;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZLl/dfE5xGtjKVTqlZm9ProhV0dqNjr3HBIdv3mpY+E=;
 b=QGo0GBcVd0Y+oycY/Z6pdt7/a5a6DD402Z6Jc+q5cTYOz3lheOh8ce8VAOmo/i1OIJbt6o
 L9xjArLVZSC3rJBBg3sKGGJHfViKqYUiJ4H7XsQp6oIbYJQLhWDooKE2U7KWE4KSC42eeE
 itYF2QDZ6OEX/ApSRfs4OMATOQI1XgNnKMaSEx6bU9LTb+pzkXc9rNdIbuLQXVc4Vwstjq
 gcgXAtsWpUTknQ7LKvhCiYPvm/gSMQX4kPUv8pwAz+GZZS8N4bZYO28f5nyyGW/i8yuLRl
 RMxuyvuI3yiLoHVLaBtcZti28mYZFtmwk+Q6qFanU6TsbSklN1VyVh4AseAA+w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1620027071;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZLl/dfE5xGtjKVTqlZm9ProhV0dqNjr3HBIdv3mpY+E=;
 b=4CARGnMWYGR+PeCtsOsjrCI3vwN8VEk1LVoI2yWsHE7RvRKDOVE1k0vsNXWfpOC9/LRc1W
 g0uhd2f7t73KGEAA==
To: Tyler S <tylerjstachecki@gmail.com>
In-Reply-To: <CAMfj=-ZzOLog6NQvgpThSOy_5od_dY4KHd0uojxRxaWQA9kKJg@mail.gmail.com>
References: <CAMfj=-YEh1ZnLB8zye7i-5Y2S015n0qat+FQ6JW7bFKwBUHBPg@mail.gmail.com>
 <871rax9loz.fsf@kurt>
 <CAMfj=-ZzOLog6NQvgpThSOy_5od_dY4KHd0uojxRxaWQA9kKJg@mail.gmail.com>
Date: Mon, 03 May 2021 09:31:10 +0200
Message-ID: <87sg34clz5.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 03 May 2021 13:58:31 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: Fix XDP with PTP enabled
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
Cc: richardcochran@gmail.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, bigeasy@linutronix.de, ilias.apalodimas@linaro.org,
 ast@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, lorenzo@kernel.org, davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============3816949424629973367=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3816949424629973367==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Tue Apr 27 2021, Tyler S wrote:
> Sorry, I didn't see v3.  I can confirm that v3 fixes the issue I was
> seeing with jumbo frames.

Great :). I just sent v4 and added you to Cc.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmCPpr4THGt1cnRAbGlu
dXRyb25peC5kZQAKCRB5KluBy5jwpr8WEACLqLQ0XIqiUfor1L1SPbilVfAKGf1m
QFbdFXnpozIxX0Jmg4ywOwRJYNfGZDBGy6hE9O1Huu+CS//PQiVh7hmemhIF/JjB
pUsURIwly5FbYi1LEVS9poAxlo1mseMoSvWS/sEzoYcVHj2cKSOel4/B+4LAZTot
rOEs/qLxIuUoA36DGZMZQbCp8StmuR2fYb+P2qOwapqMdzcpQ4I8eXnLK6FLofLg
Gcm4c+vCbKzGWQld89+w0u9VTS5GAGRO517ATqGitNMtv4JujzNLnB5NpmVK6OFN
J2IyO3MElTya22VLfdqEpj9Lu4uRtSQ3JN0WNXYj9znyVsQaIdbST7yvRmX5mNP5
XGCQrIQ6nR57G8YLZzAYGDb1mbgLL2agKaXJ9ag1svkJXlUW6r+lGC4ImToKh16w
t+bnyqVa1O0AGs/jGdHUj2sT0dIiRWxb2BUnpaFu76CdwE0WWP5oSHc9DKIqFVrq
k8iknnNgq5/ft2mMYJyMp2FWOoqZca/Vkgr1vllOwoYEpx9EgtwH4mNYhMRQA+Ct
UFbVuTOtSqGrE8vvJbm95y7iLzmRiOqVAtHZd5A37K4SWKrm1OVXWC52w7TCT4tH
OiaY607cqn3QD4Orb2hyJlALRmuUMtojhn/vELb46W6jcSsZq2WdlYV/fot7Tj3j
3TeIoZsTjn9egg==
=11Dq
-----END PGP SIGNATURE-----
--=-=-=--

--===============3816949424629973367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3816949424629973367==--
