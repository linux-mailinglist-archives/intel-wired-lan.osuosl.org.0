Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDFEAE6EEE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 20:54:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19FD961357;
	Tue, 24 Jun 2025 18:54:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rFDkRQloyIbv; Tue, 24 Jun 2025 18:54:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93B8561369
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750791267;
	bh=r4ovMX0anPN+WiNz0S85LAe+51KjLkJjPDDy5vLdsmY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JgirDGT5ZMXc8ndL4bhHEVIl0D2RaiiEDfTaslT7XFIPiAhr/XJ7/J99JJLzdS4sQ
	 vpR9NVhPW2l8rXCj6EODjvG+gR+GjcLvdkkON2bLdRubMN/z8Zl9uEM1UdpPMfqEy1
	 nkoAqbUMD7lqwozMH6yp1fPW8PxoqXsLnbFuRwTaC9e/+ysK2Hw95eXMgpfKqOSA/L
	 Yk5Om8mJnUWNvDKCvjK7YSoblVv1e8r4VhxSVk4SZeD9YHlxWOIfJ4/og5M/MNkQgv
	 vJewlrFopVDBi/8NcMpkWmElfJM3RAfBhqA/+AJJOto7t3+fbkpjPiOQ21GxQdM4MF
	 oW41Jd+xym5kQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93B8561369;
	Tue, 24 Jun 2025 18:54:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DA1043F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 18:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F5CC83C46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 18:54:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0vdv3ZpfCT0S for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 18:54:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.152;
 helo=fhigh-b1-smtp.messagingengine.com; envelope-from=vlad@ursu.me;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DA44D83C33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA44D83C33
Received: from fhigh-b1-smtp.messagingengine.com
 (fhigh-b1-smtp.messagingengine.com [202.12.124.152])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA44D83C33
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 18:54:24 +0000 (UTC)
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id B06F57A0170;
 Tue, 24 Jun 2025 14:54:23 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Tue, 24 Jun 2025 14:54:24 -0400
X-ME-Sender: <xms:XvRaaBZGC5nE5Qc_REb8OYYa0-quUOUUWeP8LKO3OKJLULpONqNYJQ>
 <xme:XvRaaIa3AkP0DW0mp7kjhwadKCpG7X6xlTla1JXbe4ct8zO6cyxGzWaowoHKjPsoC
 GXwGy3M5RjNdB0-EEE>
X-ME-Received: <xmr:XvRaaD_g8lMY1TLaLj3-BI0cPApDoF_imlJmFNfN1cUsFKupJw-fxLUUf0bz9AVdoi4Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgddvtdeiiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpefkffggfgfuvfevfhfhjggtgfesthekredttddvjeenucfhrhhomhepgghlrgguucgf
 tffufgcuoehvlhgrugesuhhrshhurdhmvgeqnecuggftrfgrthhtvghrnhepteehfeduge
 elleffgfduffevffdvhfevteevleefteetjedtiedvudevheduheffnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepvhhlrggusehurhhsuhdrmh
 gvpdhnsggprhgtphhtthhopeduuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohep
 jhgrtggvkhesjhgrtggvkhhkrdhinhhfohdprhgtphhtthhopegrnhhthhhonhihrdhlrd
 hnghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtthhopehprhiivghmhihslhgrfidr
 khhithhsiigvlhesihhnthgvlhdrtghomhdprhgtphhtthhopegrnhgurhgvfidonhgvth
 guvghvsehluhhnnhdrtghhpdhrtghpthhtohepuggrvhgvmhesuggrvhgvmhhlohhfthdr
 nhgvthdprhgtphhtthhopegvughumhgriigvthesghhoohhglhgvrdgtohhmpdhrtghpth
 htohepkhhusggrsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehprggsvghnihesrhgv
 ughhrghtrdgtohhmpdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnheslhhish
 htshdrohhsuhhoshhlrdhorhhg
X-ME-Proxy: <xmx:XvRaaPqA2ZR_wKuYWUc9L_fvLGIWIJ1uQBaOgFmZVaVi4pCXysAYpw>
 <xmx:XvRaaMpKOLldltRfgeqxmNAZ8nXCHmo6Lj8mu4ny1j6osOik8my6Cg>
 <xmx:XvRaaFTwRw8HINhciiTvAupDKDUV33dUbR0Y208pDgMiTwprmZfqDg>
 <xmx:XvRaaEpdmvsS9sqc74zIPWbD7Lq2Va3jOXDt4DYN3vGBVcZjRbAASA>
 <xmx:X_RaaCfLsZ5JyT2WTI2sM4JS9kdhf_7RPZlpb-UYc3ILMC33BecwsQdk>
Feedback-ID: i9ff147ff:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 24 Jun 2025 14:54:20 -0400 (EDT)
Message-ID: <5dbd4c98-f161-4f91-aacd-08ab2b7f155c@ursu.me>
Date: Tue, 24 Jun 2025 21:54:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacek Kowalski <jacek@jacekk.info>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <fe064a2c-31d6-4671-ba30-198d121782d0@jacekk.info>
 <b7856437-2c74-4e01-affa-3bbc57ce6c51@jacekk.info>
 <8538df94-8ce3-422d-a360-dd917c7e153a@jacekk.info>
 <431c1aaa-304d-4291-97f8-c092a6bee884@ursu.me>
 <e4903c9f-6b84-4831-8530-40ff6e27a367@jacekk.info>
Content-Language: en-US
From: Vlad URSU <vlad@ursu.me>
In-Reply-To: <e4903c9f-6b84-4831-8530-40ff6e27a367@jacekk.info>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursu.me; h=cc:cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1750791263;
 x=1750877663; bh=r4ovMX0anPN+WiNz0S85LAe+51KjLkJjPDDy5vLdsmY=; b=
 kf982Q6PME2m9SzGt1Rx8SMrIS3BlRmSpFJsIYda7lu7mgUJsRZpdHC4PIM2oCnd
 r9stmmCo9ur4VJC99O8ZATZSjjUGwIDDZpyar+GsabCk208EgkwwRltBhWhxXxfp
 VveHJWRMG/X6H5/RFAwfynl2585OAt3jZ0gaoYKdjg9vc7SJ7tFxRX4rbowZ/Uyy
 rlerk2NEO14IYPjTsa4lKgvQgpoG02vTRHdphbTUQo9uguDeb7XwWOJsvG+wFLYM
 QD/h9/k8mEVRmJAYyUyArT/bEJcjFmskK2HJrrGv6AwDyeRp1GaVNHojAikENQCD
 yl+jJnptcoK77Aff2aMveQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1750791263; x=
 1750877663; bh=r4ovMX0anPN+WiNz0S85LAe+51KjLkJjPDDy5vLdsmY=; b=B
 tJZfkQbNerPtueO5Yp+NvVTLhyqOLr9oU6CkrEMuDjeZQi9W4FZkVbONP84I0lzt
 YquDqmpkmcm/NkcDm/6xdoyljqCW3KXlkNKJzNXYMryMOgNMnaWfPjCJUo30MbAs
 29Uy3Uxq+fGMHqs5elIBx1BfYqo5d86ah57g91WVSpOCZ3iaNxnJjJAYPTulfa64
 O9UWLFHQQu80k0/48BTNbmg1MH6hgnmiVdi7NMtTxF8T7f99/1UhntXf/r6hMSFV
 VUDvu1Bcvp8AcMVjEX3RrTsVyuj+T9JMaZ49byngu+lUU9x9J/vLjPyZY6fs+vq6
 dGKtvJ10n0w3mbS+4082Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=ursu.me
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=ursu.me header.i=@ursu.me
 header.a=rsa-sha256 header.s=fm3 header.b=kf982Q6P; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=BtJZfkQb
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

On 24.06.2025 21:34, Jacek Kowalski wrote:

> You are right that I'm comparing the wrong value. But it is only a 
> matter of variable name:

Ah, yes, you're right. I missed the fact that nvm_data will hold the 
checksum word at the end of the for loop.

> -    if (hw->mac.type == e1000_pch_tgp && checksum ==
> (u16)NVM_SUM_FACTORY_DEFAULT) {
> +    if (hw->mac.type == e1000_pch_tgp && nvm_data ==
> (u16)NVM_SUM_FACTORY_DEFAULT) {
> 
> Could you check my change with this modification?

It works with this change.
