Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 788BB9108A5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 16:41:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C03D81227;
	Thu, 20 Jun 2024 14:41:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id It92PEWSscn4; Thu, 20 Jun 2024 14:41:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 811F58133B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718894470;
	bh=S8uzI3WwNNkGqrCD5UJ3CMJdJNFSwchl9XncvLVGA5Y=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zXlYWlb4bBBBeNBk/RHFBsTWpXs6g5+cDBUGb66cQMFsLmIVE3+oVxTlZMLiHXAsg
	 0Wpd8uanw1arWMXhKd7ocJXwWBGYOw3CAeSUfZCnT7Qr+zNrHGV7UR6I/m5VfEIC4s
	 EKQd+qSq8AbDTQz4dF0vCVKV/quMyLdAZNIeSu9E+5EZcDXr0eqC4aASd0IgACVa3z
	 9z6T++X2wNjI71sgg/8EOvTxx66QM6p+Xv87oGFyFRk9ue2XUCtguoLZBjBO9o/DfK
	 8QLkL5zBWOIM8Ph5Rby2gc8kozxca4c8OKW4TKt9XDAQLJqQZmK36W4O2mtQJTETOH
	 WiCAm9hjtgpow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 811F58133B;
	Thu, 20 Jun 2024 14:41:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B3C51BF293
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 14:41:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 275798120E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 14:41:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q77GNpPAA9D2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 14:41:05 +0000 (UTC)
X-Greylist: delayed 397 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 20 Jun 2024 14:41:05 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 41F44811FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41F44811FD
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 41F44811FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 14:41:05 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
In-Reply-To: <20240611-igc_irq-v1-1-49763284cb57@linutronix.de>
References: <20240611-igc_irq-v1-1-49763284cb57@linutronix.de>
Date: Thu, 20 Jun 2024 16:34:23 +0200
Message-ID: <87r0cry974.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1718894065;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=S8uzI3WwNNkGqrCD5UJ3CMJdJNFSwchl9XncvLVGA5Y=;
 b=yKPQjSbBT3zxLvQJOM+w/rSEdG9dQkhFIpGMDQstXjXUqGJ49t1Mu9S+d5eAyqXdh3sL0t
 aCnAXOUfABQ7VHfzDKS8xkZY89jg9nBM2OSbIgbBNem4Bt3zQcQjsoPKbBHtevDNlmX7+H
 a8s1YpZv+3qANoC30eq6335vMAASz5x97oEQ9XNGp9f3nBovD5D2ByuAI9pw76u3sZgrAQ
 l43LWa3LzOpyYV3o2GhUocr5IxhigGGt3e8F0+cHl1qUh3LkUhW4HFEn8IDIThahFYZ8qs
 S6l+X4RR7RQ1+ztljKYpBg84Lfp4vlIGx/Tmu47RcbXDGClJiQXF+SvEeK3ZLg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1718894065;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=S8uzI3WwNNkGqrCD5UJ3CMJdJNFSwchl9XncvLVGA5Y=;
 b=4RREwGbkQBOGL8yDy/PkOVQjSv1leVxAbPPaJLGHSVmjXrlT2wdkV4R4y0JQUmLVkeuI8a
 QNZJMLRv9DMv9bAw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=yKPQjSbB; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=4RREwGbk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Get rid of spurious
 interrupts
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
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

Hi Tony,

On Wed Jun 12 2024, Kurt Kanzenbach wrote:
> When running the igc with XDP/ZC in busy polling mode with deferral of hard
> interrupts, interrupts still happen from time to time. That is caused by
> the igc task watchdog which triggers Rx interrupts periodically.
>
> That mechanism has been introduced to overcome skb/memory allocation
> failures [1]. So the Rx clean functions stop processing the Rx ring in case
> of such failure. The task watchdog triggers Rx interrupts periodically in
> the hope that memory became available in the mean time.
>
> The current behavior is undesirable for real time applications, because the
> driver induced Rx interrupts trigger also the softirq processing. However,
> all real time packets should be processed by the application which uses the
> busy polling method.
>
> Therefore, only trigger the Rx interrupts in case of real allocation
> failures. Introduce a new flag for signaling that condition.
>
> [1] - https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=3be507547e6177e5c808544bd6a2efa2c7f1d436
>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

Can you drop this patch from your queue, please? I've found one issue
with this if the number of queues is reconfigured e.g., with 'ethtool -L
combined 1'. The number of vectors is not necessarily the number of rx
rings. I'll update this patch and sent v2.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmZ0Pe8THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgsnYD/0UBoMz+enu23dV6qrNQ5uHRsgLrj58
wXdzubX9b1yvYVWEbbiqM97mlxt8KO/1ANUPrAF3no77VeusXDzAH/C85yGVMkVI
LnZ7yW+783F3mrN/6lZoopGqGiH5gwlJsW44TqeBX5NzEJmmDle15Ny0nSos4x0G
VaYFSSwAotJ1+pu9++GNokFDGRM6v5deEBB4c+fCZrKAv1EjaVnmPw/9Ov/BV19F
1hQfLYYc/YOKK5/XHppS+di1wuPTyAsm1gYPGi7N3lF/HUcogs9hbjjxq5h9YTmn
BJ5y1xZnW4WBtnD53ZA1bJb3uZbOSVyW+nkaoBwNg3Qv/MQ38lLPHKjv4ET/iood
J1v8XjoaD7MiPtub1FzRuwGdJDg4z3kR9iJg7qYP889Wy131VgVctU7AgDA+KBwl
sOQG/6zbpPzO8DuOjSIvDQCqE/ktOiUjxnT72PEwj+of3zrcEGtYJVF2yHeuPt9W
huy/yzL+t0z2ffJ/WRDDaJw0JaqwqZwkkiW92R4tTNLv9KqcilUJ6Q8mMFgi4iMW
MtLqRr4PYIKUKXKolzt58UVe5csf46lLLyBUSH5Gkpz0bm8d4771GQbK1ZNVqZ7a
FCwgbpuMRborhy7NpDdNG9n+aTf7Oq+MlyLvP/q1tR5bVVLG5Gi7sTCyPAi+XOXO
nBC51jhdFelM6Q==
=jCW/
-----END PGP SIGNATURE-----
--=-=-=--
