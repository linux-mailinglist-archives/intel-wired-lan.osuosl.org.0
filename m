Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C149A5F94D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Mar 2025 16:12:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0A398402A;
	Thu, 13 Mar 2025 15:12:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0hL9dCAODFzq; Thu, 13 Mar 2025 15:12:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E45B284036
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741878748;
	bh=cMzoJNPec5zYQJsS7IO+/BXZwtWt/8pbBTF9FIoCxXo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w32gsRwy7SiWWAJlbdLpfryM3eLry6THC4f5fCz0U5gQkEHgrI91+867+L2nSsuay
	 hzJsY5ZddFXGd2FFhd+Z1uDNa4mi5iBsQ3w2PWF1JIlKVCC7UZB0GoXBoIqzNaMiP4
	 SuGBTJw1cAyvFlcBQhIeSZEP6ekZyEO34GXt6NlUXYKXjoTe7E6O++E8VGdjc5SAKj
	 Tb8oKz1+8Tgx1TCSZ7bchFqnDVd4wFQyEFkLkYGBl7ViwbkyFBHNGp+Ke9RmjQmulv
	 OSmf/DKtE7HSa+VXoHAQygw6R91p+sTzuvSlYMGFzX6FebjreR3UDojdZ962RRu7FG
	 piG8MOfZIpuzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E45B284036;
	Thu, 13 Mar 2025 15:12:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DAF6BEA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 09:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD2C74135F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 09:51:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wkDmdy6aZJ7Y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Mar 2025 09:51:11 +0000 (UTC)
X-Greylist: delayed 325 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 13 Mar 2025 09:51:11 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 27E674122D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27E674122D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.149;
 helo=fout-a6-smtp.messagingengine.com;
 envelope-from=niklas.soderlund@ragnatech.se; receiver=<UNKNOWN> 
Received: from fout-a6-smtp.messagingengine.com
 (fout-a6-smtp.messagingengine.com [103.168.172.149])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 27E674122D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 09:51:11 +0000 (UTC)
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id 6401D1382D10;
 Thu, 13 Mar 2025 05:45:45 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-12.internal (MEProxy); Thu, 13 Mar 2025 05:45:45 -0400
X-ME-Sender: <xms:R6nSZ7BYizDkCVtPv3d8U8j5ZaxlMRnAaBqY9SrISk9jd3ItSVMZBA>
 <xme:R6nSZxj_OIfRuojtwSVohChIpxbxq8Z4BRNM78Yhs7i1eo01FvpA23IJaBeWI35FV
 J3tdw8HkSj1zrgJDAg>
X-ME-Received: <xmr:R6nSZ2mF9LmVKITOk_2DvPTaLRU7CIC-1eUUpgPNC0TOvqLnVDM21CLMxAekcDfsi3KL7G7t9TspbD_kYwQwetSdwC6IJFnUkw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdduvdejiedvucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggugfgjsehtkeertddt
 tdejnecuhfhrohhmpefpihhklhgrshcuufpnuggvrhhluhhnugcuoehnihhklhgrshdrsh
 houggvrhhluhhnugesrhgrghhnrghtvggthhdrshgvqeenucggtffrrghtthgvrhhnpeev
 teegtddvvdfhtdekgefhfeefheetheekkeegfeejudeiudeuleegtdehkeekteenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehnihhklhgrshdr
 shhouggvrhhluhhnugesrhgrghhnrghtvggthhdrshgvpdhnsggprhgtphhtthhopedvhe
 dpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepjhgrtghosgdrvgdrkhgvlhhlvghr
 sehinhhtvghlrdgtohhmpdhrtghpthhtoheprghnthhhohhnhidrlhdrnhhguhihvghnse
 hinhhtvghlrdgtohhmpdhrtghpthhtohepphhriigvmhihshhlrgifrdhkihhtshiivghl
 sehinhhtvghlrdgtohhmpdhrtghpthhtoheprghnughrvgifodhnvghtuggvvheslhhunh
 hnrdgthhdprhgtphhtthhopegurghvvghmsegurghvvghmlhhofhhtrdhnvghtpdhrtghp
 thhtohepvgguuhhmrgiivghtsehgohhoghhlvgdrtghomhdprhgtphhtthhopehkuhgsrg
 eskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphgrsggvnhhisehrvgguhhgrthdrtgho
 mhdprhgtphhtthhopehrihgthhgrrhgutghotghhrhgrnhesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:R6nSZ9yPqCzTtNl3km04nvPV1x48jlasmuN7F4XVtPc92xJ0wAiODw>
 <xmx:R6nSZwStGBiwRW7L5wVvji_oB1VMqHufY3eQaCULyKCxj_4_7rUBHA>
 <xmx:R6nSZwbfiebDtA3_0Jgxy7eulsB8BA8mRcRxWXkfFNM8C7AvE9qulw>
 <xmx:R6nSZxTrOEd1TZDxeVb-9v-5wpT44cCZO85bWIFlT9MPJqC1IgmngA>
 <xmx:SanSZ8ozOaHMN4JC7kaeLPTMR_AhuNYaL4nTTbU_FnSBDNZRGto9DElr>
Feedback-ID: i80c9496c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Mar 2025 05:45:43 -0400 (EDT)
Date: Thu, 13 Mar 2025 10:45:40 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,	Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Ruud Bos <kernel.hbk@gmail.com>,
 Paul Barker <paul.barker.ct@bp.renesas.com>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 UNGLinuxDriver@microchip.com,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,	Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
Message-ID: <20250313094540.GC3061046@ragnatech.se>
References: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
 <20250312-jk-net-fixes-supported-extts-flags-v2-2-ea930ba82459@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250312-jk-net-fixes-supported-extts-flags-v2-2-ea930ba82459@intel.com>
X-Mailman-Approved-At: Thu, 13 Mar 2025 15:12:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech.se; h=
 cc:cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1741859145;
 x=1741945545; bh=cMzoJNPec5zYQJsS7IO+/BXZwtWt/8pbBTF9FIoCxXo=; b=
 OT3UW2DwHfWVRnCZqrvfvSOrtylgSiRHQj8LFcE8t77faoNuXVEBO9MP7Q920yGD
 cT05MrlsIHKMW050wJlxCtYH1nOYrDY0q+B0e1loDwh23CHV7SMkXx3xK50Ni4eW
 7o76/LOLG7BMT2qPU9Nh4Z5teKENVKDkr0gWYsT2roeDfgSS6IkVi57groKs77r+
 jP7XVH0bBXjAPo1e9GZjXStKPmaV5qasWRtzQxBlZ09j3ckxWE1b+mTNEUmpwRi2
 th5n8+67aV4YEGULXuLTpzUeJBd8RhrYBjZp8afFucVzKWE4tGIodNCaT5LMVPjO
 gtdbfgLlQ60ZmZXK48SdhQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1741859145; x=
 1741945545; bh=cMzoJNPec5zYQJsS7IO+/BXZwtWt/8pbBTF9FIoCxXo=; b=o
 FAGKRxJqiLiqwsZbjZyJs6cRMqqW5B4EtpN/sikyEliDylnTxY0SvmGxQPLwSxu8
 HDbT2J3tRfHJeUycsBqKJ9pLicFTJg+v8DKlDVJbe7GdL/NC+AN05SfdM9EcjUaF
 6THNtWPT4QMFC9mVTBNeYZDBLFNwrl6x1pt4tVr6nMDBgu8RT197FI7zcYja4bJZ
 RtEklvjy0Q51QWjAvFu+CUW/mjouG1NJ8t++UlkAft9glzeJNjhIgxSJXCQr+jLg
 tfUUbYwWbh3sSSI3UO2e2wcN6mYmHwZ6GVQMo53gYffULP1dHgEAb1jkyhAjmo9R
 QR9hfKvnqGtwx9VQ5Zhyw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=ragnatech.se
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=ragnatech.se
 header.i=@ragnatech.se header.a=rsa-sha256 header.s=fm3 header.b=OT3UW2Dw; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=oFAGKRxJ
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/5] renesas: reject
 PTP_STRICT_FLAGS as unsupported
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

Hi Jacob,

Thanks for your work.

On 2025-03-12 15:15:51 -0700, Jacob Keller wrote:
> The ravb_ptp_extts() function checks the flags coming from the
> PTP_EXTTS_REQUEST ioctl, to ensure that future flags are not accepted on
> accident.
> 
> This was updated to 'honor' the PTP_STRICT_FLAGS in commit 6138e687c7b6
> ("ptp: Introduce strict checking of external time stamp options.").
> However, the driver does not *actually* validate the flags.
> 
> I originally fixed this driver to reject future flags in commit
> 592025a03b34 ("renesas: reject unsupported external timestamp flags"). It
> is still unclear whether this hardware timestamps the rising, falling, or
> both edges of the input signal.
> 
> Accepting requests with PTP_STRICT_FLAGS is a bug, as this could lead to
> users mistakenly assuming a request with PTP_RISING_EDGE actually
> timestamps the rising edge only.
> 
> Reject requests with PTP_STRICT_FLAGS (and hence all PTP_EXTTS_REQUEST2
> requests) until someone with access to the datasheet or hardware knowledge
> can confirm the timestamping behavior and update this driver.
> 
> Fixes: 6138e687c7b6 ("ptp: Introduce strict checking of external time stamp options.")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>

> ---
>  drivers/net/ethernet/renesas/ravb_ptp.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/renesas/ravb_ptp.c b/drivers/net/ethernet/renesas/ravb_ptp.c
> index 6e4ef7af27bf31ab2aad8e06a65e0ede6046e3c0..b4365906669f3bd40953813e263aeaafd2e1eb70 100644
> --- a/drivers/net/ethernet/renesas/ravb_ptp.c
> +++ b/drivers/net/ethernet/renesas/ravb_ptp.c
> @@ -179,8 +179,7 @@ static int ravb_ptp_extts(struct ptp_clock_info *ptp,
>  	/* Reject requests with unsupported flags */
>  	if (req->flags & ~(PTP_ENABLE_FEATURE |
>  			   PTP_RISING_EDGE |
> -			   PTP_FALLING_EDGE |
> -			   PTP_STRICT_FLAGS))
> +			   PTP_FALLING_EDGE))
>  		return -EOPNOTSUPP;
>  
>  	if (req->index)
> 
> -- 
> 2.48.1.397.gec9d649cc640
> 

-- 
Kind Regards,
Niklas Söderlund
