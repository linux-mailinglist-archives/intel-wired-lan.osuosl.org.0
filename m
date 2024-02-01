Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4B1845989
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 15:03:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41E5840527;
	Thu,  1 Feb 2024 14:03:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41E5840527
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706796201;
	bh=SrMsYSSdXBYrmJby1JuNx2foZxC1DPyP8T36AKwqkBI=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YlhiyUQPt71Xie5xIfmrjxFdO8Sn7l7lQaaG8L+gISHb3mONuinNiS72u8SYHMldk
	 V9Fqxpb+oAt20KVjgx38skTGpLtDNvbtuL/7Kc++G65t/1bFDYdvHkfPLaUsAdKlOy
	 K8zur70urkcAUzXv8U7EjsV/60cQiRqqEDO/npiFCx2DR2v1nM/c65heZ2JpsJGZsR
	 ZqnSyunVd4WD4vKonvWGaqnSYw6gnNSGwy0f2zYnCpKygGhknGYGxcYCX+qqXS79N/
	 VFxf1S8DXX3F+jv99ZbmBKkoaJmHVBqfo6gHR2gmRprCYAB2gMm4ChFFv1S0mim2h2
	 azHO7Ur3FRLpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1SGH3VjG3C1l; Thu,  1 Feb 2024 14:03:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FC8840227;
	Thu,  1 Feb 2024 14:03:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FC8840227
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C68711BF396
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:03:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A945960AD5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:03:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A945960AD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id spomvitHWk5s for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 14:03:14 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E4FF60AC4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 14:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E4FF60AC4
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id DA5765C015A;
 Thu,  1 Feb 2024 09:03:11 -0500 (EST)
Received: from imap51 ([10.202.2.101])
 by compute5.internal (MEProxy); Thu, 01 Feb 2024 09:03:11 -0500
X-ME-Sender: <xms:nqS7ZeZL0sSN5_odCeX5vdkvsOCiCpCr0DlG98SBeLHiqMPBiChcYg>
 <xme:nqS7ZRYRuXF7tf-BBEqzi-kMH3lfeKk4hWLR5Z4K4g5I-RCib-Acttig8AG15z0xM
 LYwh5UddWERCG88iPg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfeduuddgheeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdet
 rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
 htthgvrhhnpeegfeejhedvledvffeijeeijeeivddvhfeliedvleevheejleetgedukedt
 gfejveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 grrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:nqS7ZY9iznyhiGKP7YnBR_mUnhKxBooFkyaLliDR2nfmBTEMcgsymw>
 <xmx:nqS7ZQrdI7OIfLpGnDRXupFZQTd2lvuYxCIkWQq0YwhHJk_-Xfnypw>
 <xmx:nqS7ZZrdVyx3b5AJi1L8hmKTwflW3Tx7m_LLx88vZYDxN2HSclYC-Q>
 <xmx:n6S7ZQ5EuvV7yz_oWjsSWX4fKvwtp0TLNHOe6ZoA5H8SyRV2YAKZbw>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 9F57BB6008D; Thu,  1 Feb 2024 09:03:10 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-144-ge5821d614e-fm-20240125.002-ge5821d61
MIME-Version: 1.0
Message-Id: <b4309c85-026c-4fc9-8c26-61689ac38fa1@app.fastmail.com>
In-Reply-To: <CAG_fn=Wb81V+axD2eLLiE9SfdbJ8yncrkhuyw8b+6OBJJ_M9Sw@mail.gmail.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-2-aleksander.lobakin@intel.com>
 <3f6df876-4b25-4dc8-bbac-ce678c428d86@app.fastmail.com>
 <CAG_fn=Wb81V+axD2eLLiE9SfdbJ8yncrkhuyw8b+6OBJJ_M9Sw@mail.gmail.com>
Date: Thu, 01 Feb 2024 15:02:50 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Alexander Potapenko" <glider@google.com>
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arndb.de; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1706796191;
 x=1706882591; bh=SrMsYSSdXBYrmJby1JuNx2foZxC1DPyP8T36AKwqkBI=; b=
 V6uoivNvjOsWV8cVN414irLYJXlAxzYQLgIylQ4tIF25byDBNWNzWAFRdI2GHwXG
 MqrpO04Rai1GLgT488yZbPpEnexlkT78FRbLnCRXSaWv2p3LNcpZ4KTQj6PDU8/q
 P6/4YK57n8AJ+xvxcKFoSC6LRAiV2duWOBxPr0Ritc2iBXQrQcEgJSax/ELkNevM
 omXro5wjkLCT/+BKTEDszb5lU6H1AUTKueRvQTV6brqfIO2Y0wc3RKBF4B/FODLZ
 4aQe53Rg812/uIB13jRoudEycB0R4CeE+UWFQLBv5xdj1cR/SWQ31ELe4mPQ1LqG
 XjZupRbQN8z0d9JXMsNNpw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1706796191; x=
 1706882591; bh=SrMsYSSdXBYrmJby1JuNx2foZxC1DPyP8T36AKwqkBI=; b=E
 tUyAS1nQPJjZFmzE8hd+Xi0j0IDvz3Hj5hZHLkcVSkEToZ0xLDtzH9zrFdQhPVcK
 4ORifOcYB+qP1esUYHQdMeUjevk2wtAGWtA5UVQDmm4sGazF/Amv2cM9/CwjrYeh
 cqXkC/mZeon+LU7GBTrjTrrs6bbSouPNyaRdnPvvcqNH3aSDpkzx5WwNltvOzj52
 bCL7x7DU7gVGQk5urJJm/SOrdhx0sgIs5PgHAQl+Xq0zJhmcgVyX20aZjUQfJfS0
 8cBWyDtfuOdcvqDZH0NEneABQY8yGy9zLW6Rl5VSXFOPPa7M9P9aeID1iBIZDvez
 RrfCGP2rJwYWO17+hRQSg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=arndb.de header.i=@arndb.de
 header.a=rsa-sha256 header.s=fm2 header.b=V6uoivNv; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=EtUyAS1n
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 01/21] lib/bitmap: add
 bitmap_{read, write}()
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, dm-devel@redhat.com,
 Jiri Pirko <jiri@resnulli.us>, linux-s390@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 William Breathitt Gray <william.gray@linaro.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, Yury Norov <yury.norov@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, ntfs3@lists.linux.dev,
 Syed Nayyar Waris <syednwaris@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 1, 2024, at 14:45, Alexander Potapenko wrote:
> On Thu, Feb 1, 2024 at 2:23=E2=80=AFPM Arnd Bergmann <arnd@arndb.de> w=
rote:
>> On Thu, Feb 1, 2024, at 13:21, Alexander Lobakin wrote:
>>
>> As far as I can tell, the header ends up being included
>> indirectly almost everywhere, so just parsing these functions
>> likey adds not just dependencies but also compile time.
>>
>
> Removing particular functions from a header to reduce compilation time
> does not really scale.
> Do we know this case has a noticeable impact on the compilation time?
> If yes, maybe we need to tackle this problem in a different way (e.g.
> reduce the number of dependencies on it)?

Cleaning up the header dependencies is definitely possible in
theory, and there are other places we could start this, but
it's also a multi-year effort that several people have tried
without much success.

All I'm asking here is to not make it worse by adding this
one without need. If the function is not normally inlined
anyway, there is no benefit to having it in the header.

      Arnd
