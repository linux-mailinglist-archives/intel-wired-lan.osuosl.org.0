Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AF0AB4416
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 20:50:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C7E981A73;
	Mon, 12 May 2025 18:50:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MO9PFh3XGMS9; Mon, 12 May 2025 18:50:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5134181A81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747075855;
	bh=QLAq7amBMiIEJFluFSAOTD34OZxX4AinB+6TsgCfDxs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dMeobYHssT8EtbF26vBT2JIcOi0j7ZU9Dd53OxFM78f5lqGHcB1pxM3kpj5nsMd7+
	 fllOEFM8j78x30vc0aBxW4JZAheM9W34AC7i1Hq8LTsHIw/ZbQv/Ia9jb/x52FOPMQ
	 vUS65I4QaRGoDa+bXkA8GI3HB919UYU0DJi1AL595rw0Az3W2oSNlQta7Eir2H3srT
	 QO7Gxoq5e/LGGLfTjFrw/k/lhIAY8WMEYdo8HuRNwvOUUMHvkci46rx9CwEQM7XCf1
	 0UBhP8T4U4TqgV2kegMdPRF+zA7Pq1DsALlwBnsFKf3sU2Srstvy/SDsqfEXrT/Ncq
	 i5c9Ua/7gizLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5134181A81;
	Mon, 12 May 2025 18:50:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B45817D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 17:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CC4D819B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 17:31:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8ALo9w9nE8Hc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 17:31:08 +0000 (UTC)
X-Greylist: delayed 333 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 12 May 2025 17:31:07 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C9AF4819F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9AF4819F3
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.146;
 helo=fout-b3-smtp.messagingengine.com; envelope-from=vlad@ursu.me;
 receiver=<UNKNOWN> 
Received: from fout-b3-smtp.messagingengine.com
 (fout-b3-smtp.messagingengine.com [202.12.124.146])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9AF4819F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 17:31:07 +0000 (UTC)
Received: from phl-compute-08.internal (phl-compute-08.phl.internal
 [10.202.2.48])
 by mailfout.stl.internal (Postfix) with ESMTP id 0D47C114018A;
 Mon, 12 May 2025 13:25:33 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-08.internal (MEProxy); Mon, 12 May 2025 13:25:33 -0400
X-ME-Sender: <xms:DC8iaGcJ2-JCC-arFCKP5MFPHK_QqT94Q2Vcr4TalyHpXHGv0jYiUQ>
 <xme:DC8iaAOnn6bYWw9vIirHJG1inlYPO9y3ODyOVRcJR6BQ1jpFTTvyIQmOHTZ_GQTlY
 aXI1tHg2JPdqdOeHI8>
X-ME-Received: <xmr:DC8iaHgmK-qqWR1a2Epeac2Y6wLZN0zHMoDwOYANV-yA5lL7BJVnVwellMD3YmQ3WPOu>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeftddukeeiucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddt
 vdejnecuhfhrohhmpegglhgrugcufgftufgfuceovhhlrggusehurhhsuhdrmhgvqeenuc
 ggtffrrghtthgvrhhnpefgudevueefveevleduvddvffeiheekkeffjefgveduudehjeet
 gfekhffhgffhhfenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrh
 fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepvhhlrggusehurhhsuhdrmhgv
 pdhnsggprhgtphhtthhopeduuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepjh
 grtggvkhesjhgrtggvkhhkrdhinhhfohdprhgtphhtthhopegrnhhthhhonhihrdhlrdhn
 ghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtthhopehprhiivghmhihslhgrfidrkh
 hithhsiigvlhesihhnthgvlhdrtghomhdprhgtphhtthhopegrnhgurhgvfidonhgvthgu
 vghvsehluhhnnhdrtghhpdhrtghpthhtohepuggrvhgvmhesuggrvhgvmhhlohhfthdrnh
 gvthdprhgtphhtthhopegvughumhgriigvthesghhoohhglhgvrdgtohhmpdhrtghpthht
 ohepkhhusggrsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehprggsvghnihesrhgvug
 hhrghtrdgtohhmpdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnheslhhishht
 shdrohhsuhhoshhlrdhorhhg
X-ME-Proxy: <xmx:DC8iaD-dckSOs7O1aI732q0sIGe917V5FqGd-JQ6KDNU1ukGddcZAA>
 <xmx:DC8iaCtSa_LS5VlN7llDkqus8s4imA1tTMk-pDGOTWv4C9fwo60AEw>
 <xmx:DC8iaKE6Dy7DpEUpgXhbtFMEbsQMl-U_K1FGaLRSsuCwetFBwPvKwQ>
 <xmx:DC8iaBMuMmiONIg7I9mvtDBloVUo-Sp67VJFFQlpZj4El9tY9JwSRg>
 <xmx:DC8iaExoz0glxMkW1arWs-73jVb1kCkvpsb3z0tqLwaS6Dr_iJzHkhmJ>
Feedback-ID: i9ff147ff:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 12 May 2025 13:25:29 -0400 (EDT)
Message-ID: <23bb365c-9d96-487f-84cc-2ca1235a97bb@ursu.me>
Date: Mon, 12 May 2025 20:25:27 +0300
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
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
Content-Language: en-US
From: Vlad URSU <vlad@ursu.me>
In-Reply-To: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 12 May 2025 18:50:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursu.me; h=cc:cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1747070732;
 x=1747157132; bh=QLAq7amBMiIEJFluFSAOTD34OZxX4AinB+6TsgCfDxs=; b=
 0iWEBcuIlBUVvcHVKw90RjcfFBz94oAukfZ57Et7Nlmcbw2WJCPVtpaDJmk8+jQE
 8Z01PMFvFP4DpNMjOIsjS+NHUAY63DxcFVl/jV05XDcvgM/DXPB6OuRUpwev+ky3
 cqYgdKyuKUZEK49T3e2dAyvX1jLMSf2yiZBswI+IlQaJU+akKkXJvwDMjGyvxvmU
 aTZd3w2o5AuD7uXmG55R87WI8fYl9Gbv1ZYxMcf7TBV4QsoYvmkkm7m5TliK2hHv
 i4X44Yl3f3ZttTGYEdSZAQezSVTaM3slkUntBvhAvsosYFHydCUpPKHhrqfKxSF2
 0otZyjyHAPMyfK4fGn55eQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1747070732; x=
 1747157132; bh=QLAq7amBMiIEJFluFSAOTD34OZxX4AinB+6TsgCfDxs=; b=t
 XI+SdUXIIg5ZrZNwkarOk1C+JeriTIfTe3oOUhpogHKUf39saWiF33xYD9zLpirx
 Z+OYtKaaRa9uZhOAIJsWYtWfGlbYQCPh/bk4JKzsgh/+ZAL0zJNRl5Ldgwk7/rvz
 fZ4jlOweURIXXY4a8280lGp61O2OF4QncdJAOe763PAp6/mlE3qLQ8NLPhcro4Ca
 KO0+/Xb+OULk4ALxZfIrStqq9z0VkKL1AI81P91mYLc4gPY5E+ZsXJd6uWe/dvC9
 ZSEqWylIrx1dShJ+f4NCJBhfRQCvp3TnV6QNJAAaxrRG8c/iZ6UWSoyniOPdjbpe
 bPk5k1XkYbbpFz7kVzq7g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=ursu.me
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=ursu.me header.i=@ursu.me
 header.a=rsa-sha256 header.s=fm2 header.b=0iWEBcuI; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=tXI+SdUX
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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

On 22.04.2025 10:43, Jacek Kowalski wrote:
> Some Dell Tiger Lake systems have incorrect NVM checksum. These also
> have a bitmask that indicates correct checksum set to "invalid".
> 
> Because it is impossible to determine whether the NVM write would finish
> correctly or hang (see https://bugzilla.kernel.org/show_bug.cgi?id=213667)
> it makes sense to skip the validation completely under these conditions.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM 
> checksum")
> Cc: stable@vger.kernel.org
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c 
> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 364378133526..df4e7d781cb1 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -4274,6 +4274,8 @@ static s32 
> e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
>               ret_val = e1000e_update_nvm_checksum(hw);
>               if (ret_val)
>                   return ret_val;
> +        } else if (hw->mac.type == e1000_pch_tgp) {
> +            return 0;
>           }
>       }
> 

This patch doesn't work for me on an Optiplex 5090 Micro (i5-10500T). I 
did some debugging and the platform is recognized as Tiger Lake, by the 
driver, but the checksum valid bit is set even though the checksum is 
not valid.

The network controller works fine if I patch out the validation in 
netdev.c. The checksum word at address 0x7e read using ethtool is 0xffff.

I'm also a bit confused about why the driver reports the mac type as 
e1000_pch_tgp even though i5-10500T should be Comet Lake?
