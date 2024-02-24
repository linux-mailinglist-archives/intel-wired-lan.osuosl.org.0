Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8E7862362
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Feb 2024 09:01:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42CE98141E;
	Sat, 24 Feb 2024 08:01:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sqtxaRGq8gC7; Sat, 24 Feb 2024 08:01:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C1FB81E75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708761672;
	bh=fehBFjztNUsChvE2N/ZKvwmwJZ1JLOdBn2mZWlKng5M=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qzp5avTYTKn9+S2t4Gf94mNfSI3Hs9h6b+3niuS8dS89u+inZ+Q67fsx8gP7MaRxi
	 di6/BaSWeUuuY7Cuu8jB360SXdIajS/LRt+WUQm9vZQVKlqO+kEGbIvUFelBBuZTJX
	 kT6094BZLPTKoNfvk/DJU32KwhHbK8EscX2nYpZtMGJp1F7ODnMou37sJaBKwi26UV
	 9L826NCodIj8JxF8ubNjQNSQJJXFRW2HckLYz4s9j0Se9soRsVCRcpi7LrYA/tTIdb
	 vHhrvF58N5hWRvBLbfa4P8he21ldQPdIHGfXVhUK4ypNM53T89q8iujNQbcUEZTgrK
	 lmboBv9z9J/rg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C1FB81E75;
	Sat, 24 Feb 2024 08:01:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E4C991BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 08:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7153600CA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 08:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1jIHvYZVgTdi for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Feb 2024 08:01:07 +0000 (UTC)
X-Greylist: delayed 593 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 24 Feb 2024 08:01:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3B886605CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B886605CE
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.146;
 helo=fout3-smtp.messagingengine.com; envelope-from=arnd@arndb.de;
 receiver=<UNKNOWN> 
Received: from fout3-smtp.messagingengine.com (fout3-smtp.messagingengine.com
 [103.168.172.146])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B886605CE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 08:01:06 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 57BF213800DE;
 Sat, 24 Feb 2024 02:51:12 -0500 (EST)
Received: from imap51 ([10.202.2.101])
 by compute5.internal (MEProxy); Sat, 24 Feb 2024 02:51:12 -0500
X-ME-Sender: <xms:75_ZZbn6m3uq7icLq8Kub9shZYXw4F0y9WDCEHcmu610YdGpfWu9mA>
 <xme:75_ZZe0SLp1A3g3heVl7pOco74n3P4qAjjfTSMImEh_wkEHaN2W2szfnXFBCB4flj
 eneX9cnxg7INTlH0y4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeejgdduudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
 nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
 htvghrnhepffehueegteeihfegtefhjefgtdeugfegjeelheejueethfefgeeghfektdek
 teffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
 hrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:75_ZZRpVe0HBboGshmpTmRSo-B3BS5y7d6KK9ZTcxr32wGJuqmpIzg>
 <xmx:75_ZZTkE1PRv0z3WGozAD806ZJgtDIs0HO744T-4tQJslceQTuQSYQ>
 <xmx:75_ZZZ3G4EiPyriI2LfNjEJH2PFFnS0BiuHRQ70sRLk5uScVMxzIXg>
 <xmx:8J_ZZSs6KrIrv2W7FzUcjn_LgN2qqJjl0x6Vuc515K0toMDYU-2dQQ>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D3CD4B6008D; Sat, 24 Feb 2024 02:51:11 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-153-g7e3bb84806-fm-20240215.007-g7e3bb848
MIME-Version: 1.0
Message-Id: <8e1a3753-4707-44e7-b746-48437cac8e70@app.fastmail.com>
In-Reply-To: <95e8cc82-2e7e-bca9-16ab-3148c3183f32@intel.com>
References: <20240222100324.453272-1-arnd@kernel.org>
 <95e8cc82-2e7e-bca9-16ab-3148c3183f32@intel.com>
Date: Sat, 24 Feb 2024 08:50:49 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Anthony L Nguyen" <anthony.l.nguyen@intel.com>,
 "Arnd Bergmann" <arnd@kernel.org>,
 "Jesse Brandeburg" <jesse.brandeburg@intel.com>
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1708761072; x=1708847472; bh=fehBFjztNU
 sChvE2N/ZKvwmwJZ1JLOdBn2mZWlKng5M=; b=pf2Sl/sIdgyNEtDcoo7s95d9t3
 m4SbadgaJdotfy2GXDIvxYX3ERANddTW1m7TR4xNGMAMynvZcrRnyFarpsz47gEx
 HHy01NP8tDjLP8x3aVhMxA1cQKOxr7ROzvqQrkN4+I9c5Bz1ciWJ8sVrzH24icHQ
 JH8lTdlnn3xWtChnlh88qmhJrOxzYBa6tGxv/NNuPsMfSiw04eYa6kOGmuat9d7C
 yKR1Dbxfh4m3HpB+3K9k6z5sKJBBhrSrDBtsbTTTDy8p2k0e7XqMmvXAiCEZgQn4
 7ldpfTAvJcEfvbgQnSqUeRIAHDNxNPAcyB00/owIQy/yBlI2UCC5s8hGW44g==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1708761072; x=1708847472; bh=fehBFjztNUsChvE2N/ZKvwmwJZ1J
 LOdBn2mZWlKng5M=; b=QIdGf64YY9dA3KtYtQLOrenYvtC4NZKb0B1JnSnnnX+m
 3Xs/RhQAzyKtSGSHpUFSrSvdv/AjMNIwc6JbukNoFbbUN26uivtj9J1DyzLIzrZ8
 iajt3weYOuFXFWwBkLS/NumBJBBwvaJPGub6tbCyD1XJryIn5qdo7iJUfGcu7NTn
 ZD83UXdj7sXepZL/v40pvI5IxotDdR7CTYcDk3Rj9I5XXs/ydu8D0Onc2D5oXiHb
 xOeARbKhRAuQu1hm7gzN1absYZStB8SpM4GQ8UJSkV0sQvVBVPZ4RErgGZu6QQNk
 WusRpeaa36GpAlbesiAuqXz3cXRLIi5ye7HQbCuvkw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=arndb.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=arndb.de header.i=@arndb.de
 header.a=rsa-sha256 header.s=fm3 header.b=pf2Sl/sI; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=QIdGf64Y
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix LEDS_CLASS dependency
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
Cc: Andrew Lunn <andrew@lunn.ch>, Netdev <netdev@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Feb 24, 2024, at 00:15, Tony Nguyen wrote:
> On 2/22/2024 2:02 AM, Arnd Bergmann wrote:
>> 
>> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
>> index af7fa6856707..6e7901e12699 100644
>> --- a/drivers/net/ethernet/intel/Kconfig
>> +++ b/drivers/net/ethernet/intel/Kconfig
>> @@ -372,6 +372,7 @@ config IGC
>>   config IGC_LEDS
>>   	def_bool LEDS_TRIGGER_NETDEV
>>   	depends on IGC && LEDS_CLASS
>> +	depends on LEDS_CLASS=y || IGC=m
>
> I don't know kbuild that well, but would this cover LEDS_CLASS=n with IGC=m?

The 'depends on LEDS_CLASS' take care of that.

> There are Similar checks in the file [1][2] that would transpose to
>   depends on IGC && LEDS_CLASS && !(IGC=y && LEDS_CLASS=m)
>
> which should cover that and keep the checks in the file consistent. IMO 
> a little more readable as well.

Right, that works as well. I find the negative dependencies
slightly more confusing, they should do the same thing here.
Please apply whichever version makes most sense to you then.

     Arnd
