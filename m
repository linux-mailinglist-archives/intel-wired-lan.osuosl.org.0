Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D6E83BA86
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 08:20:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BECB613AD;
	Thu, 25 Jan 2024 07:20:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BECB613AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706167254;
	bh=ATPAmHDLsadjvT36/PPtXerzsjMNRvc7H82hsdaZ9sc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WaCOdL4pa+xi/hq7eGIC9lp9fFUkOg8DEKpE61fqUkNcBMiOpxhp2xcguWnmmpFpL
	 s+8GdM07ZiUVqsbmZf2p/I+t1ZE1NGdrNKwZ4J9HYrIRpaxytYJF8bqTuRNXgU/lGU
	 OOddB+bjDqOIeGfza7qA8sZluBC68DKIxKjQ9oxUXSnfAgEhabezKvKbwKU5HxH9AD
	 09ADmg6xS1cvgs8JdPVzgkqYu91KTs6Ua74r504dEufKrFoxsd014ApmEc2oY2g6vo
	 ug5BIWodxHW1fkAMWLPn8CNiEFBpaKR7xT5ExMw7YSYYqNFXilCuqhNR2YXGYI3/9R
	 j/JzRQ0YMq8Yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkagiTOKCCGw; Thu, 25 Jan 2024 07:20:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 087B7613AC;
	Thu, 25 Jan 2024 07:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 087B7613AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B4D9D1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 07:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B877613A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 07:20:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B877613A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZXLExlY61M19 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 07:20:46 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C42F611D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 07:20:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C42F611D4
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Simon Horman <horms@kernel.org>
In-Reply-To: <20240124210855.GC217708@kernel.org>
References: <20240124082408.49138-1-kurt@linutronix.de>
 <20240124210855.GC217708@kernel.org>
Date: Thu, 25 Jan 2024 08:20:40 +0100
Message-ID: <87h6j1ev5j.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1706167242;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ATPAmHDLsadjvT36/PPtXerzsjMNRvc7H82hsdaZ9sc=;
 b=EdcYdaxf6Vl2Zj0PlUVMjBlWhm8Ceut83uoaqzPteDXKKOnV7bhAokjuTtr1elba0QMTHC
 4zxRwxuylybsCJUB3BgfWulzjXi21himPh3YtUWepe2QkV5qfSa631CzegCfvFmw6fHAv5
 LmDAkzoUZgaeLqsJw1t7knW5GWatY6cgBR+nNaFeZKe4dmrzuR1FIa9amZ8AhrmuJPg50r
 Jbk1JTOg1tn7CxR3VWFeHcuLz/LAvGcFAw22D2sLX8YLWF2gygu2h3EbZDq5Iap3cgKQKu
 9Eo3+nQvUVFa3jxM6GJuRmxXJdn2arSiq9iV4eguuKIBZGXXdS/VpY0HBkVR+g==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1706167242;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ATPAmHDLsadjvT36/PPtXerzsjMNRvc7H82hsdaZ9sc=;
 b=JCN3eaO1qJpLuz+03itdyNLS4+mnTDTYcrSkZTIOnZ0nOvdCtjAOZN0OXwPhJJQ1fgkobG
 bEkhKhNJgnSxkbCA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=EdcYdaxf; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=JCN3eaO1
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next] igc: Add support for LEDs
 on i225/i226
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

On Wed Jan 24 2024, Simon Horman wrote:
> On Wed, Jan 24, 2024 at 09:24:08AM +0100, Kurt Kanzenbach wrote:
>
> ...
>
>> +static int igc_led_hw_control_set(struct led_classdev *led_cdev,
>> +				  unsigned long flags)
>> +{
>> +	struct igc_led_classdev *ldev = lcdev_to_igc_ldev(led_cdev);
>> +	struct igc_adapter *adapter = netdev_priv(ldev->netdev);
>> +	bool blink = false;
>> +	u32 mode;
>> +
>> +	if (flags & BIT(TRIGGER_NETDEV_LINK_10))
>> +		mode = IGC_LEDCTL_MODE_LINK_10;
>> +	if (flags & BIT(TRIGGER_NETDEV_LINK_100))
>> +		mode = IGC_LEDCTL_MODE_LINK_100;
>> +	if (flags & BIT(TRIGGER_NETDEV_LINK_1000))
>> +		mode = IGC_LEDCTL_MODE_LINK_1000;
>> +	if (flags & BIT(TRIGGER_NETDEV_LINK_2500))
>> +		mode = IGC_LEDCTL_MODE_LINK_2500;
>> +	if ((flags & BIT(TRIGGER_NETDEV_TX)) ||
>> +	    (flags & BIT(TRIGGER_NETDEV_RX)))
>> +		mode = IGC_LEDCTL_MODE_ACTIVITY;
>
> Hi Kurt,
>
> I guess this can't happen in practice,
> but if none of the conditions above are met,
> then mode is used uninitialised below.

Yes, it shouldn't happen, because the supported modes are
checked. However, mode can be initialized to off to avoid the warning.

>
> Flagged by Smatch.

Out of curiosity how did you get the warning? I usually run `make W=1 C=1
M=...` before sending patches.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmWyC8gTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgk9QD/42ei2vKmG2WcSWM0YabBvWMfSsjO27
0I19ycGRrecvSImrMzxAHRKVqwQ3eC1zKvIv/CtkM/7VXWsXPPWgGwp5+1i/RWxt
tG0dtC58clJanhFJhXQcL4KTs5mgpoNGujv1oCe/AB+EYgv1OZeqkRlV7M5ru+71
6Frn/VroNiZZhNhfJOCNiAN7v+MbjpLhkdEovuzegqd5NM7X6zupqx3JgkP+JxQZ
Z+LfZ9xDAYmvWDOhW3e4ce9128cmOzLF71WUcaK1wdOh5d9HoEcditmMIC4/17wV
A5Po7YJS9t6U1m9KSW3brmfWW+t2yq84QVyCllQVcCQAPu/iMl5PRt877eHrJ1qw
BovNY6vLb4TEHnvbGT80sEdorpncq15HlFMgakHwqkTOjrKXqHyCW1wrDn64NlxN
rJqnPCHh5d2VzQhcC1fOQcsLJ5yCgEd/mtIjt1NL29mNH+tYDGPXXCBnjJeXUEsX
DhFK9fBD4rqTLixB7NPwuFw4ee7bSJ/d1vqGznJRHqNEQ/jP0OjSujIm+U9Gj6HQ
bpaPqBBYqsr6lJ/xjGBL0R6ko50iFwcRIFe82woBlOeB46yPPTBESlTeYCXcbRNO
JryjpG4BcfkYT4pptG6Cs78rljNgqS44/6JNAs2uamOGwSGXV+gGu5yRxHoJzt3j
SsdRNUsK2/gxOw==
=ju9m
-----END PGP SIGNATURE-----
--=-=-=--
