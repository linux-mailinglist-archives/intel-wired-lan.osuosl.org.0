Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BD038B040
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 15:44:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 025DF60B98;
	Thu, 20 May 2021 13:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1zPUYDkRl7C6; Thu, 20 May 2021 13:44:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09D95605D9;
	Thu, 20 May 2021 13:44:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0527D1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:20:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7A5D40176
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="iTnqVFsI";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="vIq9NEQZ"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QVsaKNGMCH8g for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 May 2021 06:20:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44E7E400AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:20:06 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1621491602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uOWpubAeDjCq3jPJAikebk3RLTs9XtXurni2b2g7SlI=;
 b=iTnqVFsIA5J2cvm501sVzrkOic1IyiMj3G9oWvDY7pbtVpMcDBVpaxqfhJuvnds0HJa/km
 3UCEyPmC1WCBDD3VjzhK12G4HDrMpqXCjpr1Hne+3hOv8gCT4y2LwdG2eZaR6BAETWndna
 uadp1SDnpL+iemC3qMIzDZbHl3FqkixFN5Pw5QE+/yjSKh+iNj70/1givMuvqtAmnn0hMp
 WnB67S5cP5c91zSbhmdAQ86eP/Wn4RCMjzDx/v/iKI1w95j1yD6/vco6yLuQJa0TPL/Y1K
 meIULyfVuHksbMeiqjU/zhCP39BXq7SAO3QjEsKeop3zWaREue8ejBgFBGy2BQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1621491602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uOWpubAeDjCq3jPJAikebk3RLTs9XtXurni2b2g7SlI=;
 b=vIq9NEQZr2cyt2k/T3c+P9H3VOvIu1sJuNfexYOOAXlnHA4WexieJvZBntPDqJ05tEuOWM
 A/4MCLqE8eWOc/DA==
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "brouer@redhat.com"
 <brouer@redhat.com>
In-Reply-To: <e4568dc225edd00122b35be37cef9fac68329508.camel@intel.com>
References: <20210503072800.79936-1-kurt@linutronix.de>
 <20210504102827.342f6302@carbon> <20210519153418.00c4cc42@carbon>
 <e4568dc225edd00122b35be37cef9fac68329508.camel@intel.com>
Date: Thu, 20 May 2021 08:20:00 +0200
Message-ID: <87cztmgc4v.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 20 May 2021 13:43:55 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v4] igb: Fix XDP with PTP enabled
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
Cc: "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "hawk@kernel.org" <hawk@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bigeasy@linutronix.de" <bigeasy@linutronix.de>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 "ast@kernel.org" <ast@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "tylerjstachecki@gmail.com" <tylerjstachecki@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "lorenzo@kernel.org" <lorenzo@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============8705499869945635130=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8705499869945635130==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed May 19 2021, Nguyen, Anthony L wrote:
> On Wed, 2021-05-19 at 15:34 +0200, Jesper Dangaard Brouer wrote:
>> Hi Maintainers,
>>=20
>> What is the status on this patch?
>
> I'm awaiting testing from our validation. They expect to finish by the
> end of the week; I'll send out the patch as soon as they've completed.
>

Thanks! I've got also a backport of this patch for v5.10.x, so that
people can use the latest LTS e.g., with PREEMPT_RT and working PTP and
XDP. Let me know if there's interest in it.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmCl/5ATHGt1cnRAbGlu
dXRyb25peC5kZQAKCRB5KluBy5jwppJYEACQyg1sVvFCi0t+BRp4dhqyOclcGz7m
2Y90nHRqFTMYZDU49dd0G/gpWMJXea2mU3HBwzwyZPHUBOtE+G9auDQQJC1rayyb
Q+MslQGk7HpXchuQkTqaXbP3OKXBkP3vLLr+Acxkbo8gpemnGc9ADuwjn6YAcnSX
l6g3Ipeo02SMGQAWsbUXB2PVS5/+tw3SP+5tbZ75BMzH/qYkb3bt6rtVmtU0vw+H
5p82NH9Xc/lGAM4yELtjYSd4JCDwPMNnU69SVRK52xZ4UOv/+Kjh8Dh7Y7/nNa+Y
ud5AXuIrd8FyFS40dl0kxINK/dDsvYQDKuWHR0l8M9ViBif+fBLWBX5TYNIp4a+a
5vLc8S38QZ0Um7H+K47I17fGTXT6jnNMHvvtALMyTErFIOSa8ysHNom7NlBDCZ61
A4PZk5EGKLUBwSn3phSNdeT0RU3AL5LMZcn00LMnYZuNfUavF1mmCMPXvGExxvUN
c02ChNRLN1l23NdM13RnyaWR7X94qI51EPJYIQPm/NPflcCJDVwo6pfLsHSKKzOt
pBYmsKiQu4WKbrZ9/+12HVPL8RjjSKi5QIX74f2d/83Vl2qXiSVGpjEleaUrAJfk
rfVC6KI4kpvURMnl9hUr310Xm5oD97mKA1pIsgDmJsnuQtcjF6q++VUc7n+8Km1T
qVekB9Xhnv6kvg==
=a0rv
-----END PGP SIGNATURE-----
--=-=-=--

--===============8705499869945635130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8705499869945635130==--
