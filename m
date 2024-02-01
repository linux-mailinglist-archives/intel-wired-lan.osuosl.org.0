Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E958458D1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 14:24:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 029EC4056F;
	Thu,  1 Feb 2024 13:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 029EC4056F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706793845;
	bh=XuJgHFQS6aWaNcA1flW4h2V6VHVKbCfJg9vcYDiFWZI=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4kfjky9pCAl53QN16iPMiq7Qxkdsu9SfbQ5wVV+5dSXfyZgU+V+ybHSPpZob71P0k
	 T/P/cYm5Vl/gQO7ii/OoHnaULCf28nBGTS+3trlS4rAu1eKABpTNIGU1OD3nOhRSB5
	 b5HD1T/o81PqCahbFx8zh2/sV3K931kh+W2keyNq72/yxmWGf/ReGCzRQnCzr62qr1
	 PehgsD4k41jH9wpsffK88v36cDBs+H0VVfwKoinbiQympVRBsx7+l6siCzwHvfSSI+
	 6BfJJGGOcTgEgS4qZWcsX5nEYHD7K8TmT1CkCgghtoAZIPJH4oDSw9FGGyAc0QvJAB
	 6P8iNXHBEmVew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O_JRlPrN0ywr; Thu,  1 Feb 2024 13:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E257C400E7;
	Thu,  1 Feb 2024 13:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E257C400E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F3A21BF396
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB50D83AC1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:23:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB50D83AC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O2D76hHEb5aF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 13:23:56 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1488B83A87
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:23:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1488B83A87
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 956B05C01C4;
 Thu,  1 Feb 2024 08:23:54 -0500 (EST)
Received: from imap51 ([10.202.2.101])
 by compute5.internal (MEProxy); Thu, 01 Feb 2024 08:23:54 -0500
X-ME-Sender: <xms:apu7ZexO_aiE5Lu_ah_i4S_j7HMol1CnYgaph_RdQAA6qW0QdBKcyw>
 <xme:apu7ZaS-SDqU88HGavhs3QbfoUUKDv5mFz1juKdlYdaWHsYFXJ8_bpAJuc-QD0_hV
 I-t6a3Dl_tGtP37uWA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfeduuddggeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
 nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
 htvghrnhepffehueegteeihfegtefhjefgtdeugfegjeelheejueethfefgeeghfektdek
 teffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
 hrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:apu7ZQXc0Bq5T42FhMs3Bh3Gjqiis0tqgSX5zGo0IUebXygplct6vQ>
 <xmx:apu7ZUiYGYDQSz11Yg_JSZ56VTBSiUnJj9-hSU8y2djfB6Ms6-1s_g>
 <xmx:apu7ZQBLWpj_1owuba1QZOUycZaR0jOUMZLGpMO6LkN2w9MtRQXTuw>
 <xmx:apu7ZZzQJfjTfGJ_bOd1EBaGKg2X4UI6HGTgGpfpHiqzRxcmGyvpYQ>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 0184AB60089; Thu,  1 Feb 2024 08:23:53 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-144-ge5821d614e-fm-20240125.002-ge5821d61
MIME-Version: 1.0
Message-Id: <3f6df876-4b25-4dc8-bbac-ce678c428d86@app.fastmail.com>
In-Reply-To: <20240201122216.2634007-2-aleksander.lobakin@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-2-aleksander.lobakin@intel.com>
Date: Thu, 01 Feb 2024 14:23:33 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Alexander Lobakin" <aleksander.lobakin@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>,
 "Paolo Abeni" <pabeni@redhat.com>
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm2; t=1706793834; x=1706880234; bh=XuJgHFQS6a
 WaNcA1flW4h2V6VHVKbCfJg9vcYDiFWZI=; b=ouo6nnHEiDCY3TlC0TfL0s7DMA
 5ACdf31FhVUJJRdCFILqqHY0IDqmd+h1MJcqEkP7byBoyTP3jm0uS7E5KYnGx7WV
 SB0uySCqflqbPrUy47WQ3l99edUCG7NPPqCgc2Yh2RxQodHJOx8OiY+zjiAeyYyQ
 fkJSn1cliU+X0fzOzEi07Rr/AQglKlh08byavYNEJnxUp09G7ZwYv2vrxZlaQu6C
 u6MPDcjzmb3Ru6/YzGYvROfj9aboqfaRVTu1on3vL5pdAWu34J+zrh1juc6LOV6+
 nHU+4AiuNgVBZ1ajD+cMD2wRKCN5b79yumNLCucDCpdZo/hab7HCO1Q3hKRg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1706793834; x=1706880234; bh=XuJgHFQS6aWaNcA1flW4h2V6VHVK
 bCfJg9vcYDiFWZI=; b=KQ/R0jSVqSOV8Fkh55Ix7fr3moctr7qhpbtuufmtlfbo
 cGQHx5nS+ZswlCHktEzY5YwoseyMx4WVIn2Iqpq0py1HBvaJ6soJMWGmvd7sYULm
 //wGTiPbNQPHQZ9UwTfDpw5CTkKCZwJrGZHNHDvYL+6k3jg4gq3SVtQHTdQ1qKLN
 Kqq0arvRr5JGVAlufR0FzACbHPdixNaO25zNbeoxh2SSB3iv8UZ+PAewDQO5JQXR
 HyLhBc7HL+j2mgsJWYtu0TSj0dXlDZy1s7yZwU5mx0hv1aAznj606JDmZQQg2p6f
 D+54BgNtJgupHsYt8t5uEozqJpE880nNq5jb0bIq4g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=arndb.de header.i=@arndb.de
 header.a=rsa-sha256 header.s=fm2 header.b=ouo6nnHE; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=KQ/R0jSV
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, Yury Norov <yury.norov@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>,
 William Breathitt Gray <william.gray@linaro.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 dm-devel@redhat.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Netdev <netdev@vger.kernel.org>, ntfs3@lists.linux.dev,
 Syed Nayyar Waris <syednwaris@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 linux-btrfs@vger.kernel.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 1, 2024, at 13:21, Alexander Lobakin wrote:
> From: Syed Nayyar Waris <syednwaris@gmail.com>
>
> The two new functions allow reading/writing values of length up to
> BITS_PER_LONG bits at arbitrary position in the bitmap.
>
> The code was taken from "bitops: Introduce the for_each_set_clump macro"
> by Syed Nayyar Waris with a number of changes and simplifications:
>  - instead of using roundup(), which adds an unnecessary dependency
>    on <linux/math.h>, we calculate space as BITS_PER_LONG-offset;
>  - indentation is reduced by not using else-clauses (suggested by
>    checkpatch for bitmap_get_value());
>  - bitmap_get_value()/bitmap_set_value() are renamed to bitmap_read()
>    and bitmap_write();
>  - some redundant computations are omitted.

These functions feel like they should not be inline but are
better off in lib/bitmap.c given their length.

As far as I can tell, the header ends up being included
indirectly almost everywhere, so just parsing these functions
likey adds not just dependencies but also compile time.

     Arnd
