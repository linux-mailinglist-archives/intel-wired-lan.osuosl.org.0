Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75861A304E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 08:52:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 438106075F;
	Tue, 11 Feb 2025 07:52:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kyqR_DrL1InK; Tue, 11 Feb 2025 07:52:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C52F607FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739260325;
	bh=HtGaK6oDX0UG40KmmNZSuzPzVh7amRv0wg9jndXZgY8=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RuuyknGOaaCV5fsByEhM3DuQpgNnpoGl31SXsHlb+Cg8s6l0/Ppt0MLoarY1qbbDs
	 8BJvUqoDDrMv5ZmNQiePJ7q3/nrYfjX8DTqdWBUiMbD+16CGW3Dy9WjUdVpul9ItHK
	 z4L/W6OfS9LgIzrYHSaSeoG83u9M2vpqFGR9f/i5uf3XI6ohlvVHv+1vY3+aFq8xU2
	 rGcTqFTopd3LkuocsaQe26khwqBwX7TVUpHUBuMfbnwpMc9X6lLQeO3iN9+lL+sh9m
	 mL/sygVYHc3OR1FqG1ON5mmridar/sHKoZiKqAyaECoAedFBV0CmtCqLnjP0DvSI/C
	 jEqjlB0MIYRBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C52F607FC;
	Tue, 11 Feb 2025 07:52:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 66094C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 07:52:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55B39812C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 07:52:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7wYK6igVDLAW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 07:52:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9318980FFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9318980FFB
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9318980FFB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 07:52:02 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Gerhard Engleder <gerhard@engleder-embedded.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Joe Damato <jdamato@fastly.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>
In-Reply-To: <b1b3e5e1-b1fe-4816-85eb-61ac7ea2d46d@engleder-embedded.com>
References: <20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de>
 <20250210-igb_irq-v1-3-bde078cdb9df@linutronix.de>
 <b1b3e5e1-b1fe-4816-85eb-61ac7ea2d46d@engleder-embedded.com>
Date: Tue, 11 Feb 2025 08:51:58 +0100
Message-ID: <87y0ycor4x.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739260320;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HtGaK6oDX0UG40KmmNZSuzPzVh7amRv0wg9jndXZgY8=;
 b=1ucOxjFbt/LvXdvt3KBvM1c1DVWfuOQdlmexn5FdHa98NgqcWceV2GReD3SnKJRC+tDB/f
 tOVRag6GGi4/Zuh21eQoSi9PsmZLbhHXQ3tiEcVqkp8RzODODJUVfKK3Fh0Dp2MQXoSkSz
 aCjzl28CiS4wToV5Ysz8vB24YUS5EgS4Gi4zWJ6hqtN5ELbkHOwx5LrEwZkQ1ha+9Of8aq
 RCP+AarfuNHJgWXd0ta8XbNija8YPCS78JkUPnz3ICmVwxiXUe5+FouywzrCLFJF9b/zHB
 j1P4/1C5anuX6aCHsQFHUsy7bsEsNjqIYLcH9yaG9y8Yd0U1gyrXAuW9fikpfQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739260320;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HtGaK6oDX0UG40KmmNZSuzPzVh7amRv0wg9jndXZgY8=;
 b=nzTOMVShrhsUPaj9YUfVjWmKgI88INRVn6xKDWVEwROHUgOgd73ivfyHjUTAOOPIhvGQsB
 2oepvfeyV3S3wQAQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=1ucOxjFb; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=nzTOMVSh
Subject: Re: [Intel-wired-lan] [PATCH 3/3] igb: Get rid of spurious
 interrupts
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

On Mon Feb 10 2025, Gerhard Engleder wrote:
> On 10.02.25 10:19, Kurt Kanzenbach wrote:
>> When running the igc with XDP/ZC in busy polling mode with deferral of hard
>> interrupts, interrupts still happen from time to time. That is caused by
>> the igc task watchdog which triggers Rx interrupts periodically.
>
> igc or igb?

igb of course. Thanks.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmerAZ8THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzghbyEACnG4nKwnwLzG7XqGFj1yLSRInPQBav
XxoMAy9cLeh9Apn65tVBBvcycgGgX2SaDQeMhKFYw9DNrmNTvo3ZqPVemNksQC2D
YO9IlDKQzRPT5mWTLT/95vM0qUYl3MSt54RkiiY/d38zwUF/PtXJU4lKPap45zfu
KI4D7MCuDftc35PoFDU1h/JiLeO5QmRS4S0VKvZQx6vU0XyMhGMQR7DOIFT/DySI
kYX05LLnHR+N/zqyvC5z3dSCf+datdfKibpoOUzZx/+ZVU72cpGrh7gKMThLh4Ql
mOPiORXwFtW7cuIuTvuzwAotaCOOj6E0fGVKH3lvBGKyG60iQdMCu5sZLGAVx+FJ
9kaesl3JGIuCRvqulE6EZzEJn2xqVQCCl4lTaknBEcR7HElliQ0Lka/6CZrWtPMP
1EAkMU437NxuKzSNdbXVyEp0EMMFaA93/vbZUw8WEPahikqOxYdmb0EJ7sfsvC/n
IQNISTt0/FLZYj+FlgEuL0Kr4xnS22ld4fkZNnyQQ7kTIWSC7ClI40yNaUNq2rCG
4RFXLzoTBpuw7gXtR+mUg4ZYUklNC1UMJv5k5JLxCquwoRG/jB1VoUUq3Jsqs4Rs
3OWNUiJKbXw5uU50ZGFzR8F4mZJFo6BOatcfvCGZwUGtVGJ6nxaIcg3MZwWeclkT
UbrZ+5MKsyneEg==
=TTNU
-----END PGP SIGNATURE-----
--=-=-=--
