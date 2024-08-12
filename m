Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA4394EF78
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 16:26:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 097EC4090D;
	Mon, 12 Aug 2024 14:26:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q5V_0Dueb1NN; Mon, 12 Aug 2024 14:26:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03667405B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723472783;
	bh=uCDj2ND5nE8inw/UhtR4NteFMYiUan8kp+SXKAFbsaQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6RcR7vIjywmJZf8/CkKl6R4b1kJdoE47uu2rTkcvHmd0lQl8OPy5eKqsrOLnAGAUE
	 WY8trZ2P0V9oTrSva26QP/5N7K/vBC1gc8QKXkuypAJLT6WpwhXzhdGdzMA5vkr/jK
	 rNx9sL5NucpRVuM2jIR9EOLX8xWYMcsdo6oiMIAaOnn8YGW2Aq+GF5lfjJvPucykER
	 44JEH/b3olkM5RpaoK5EBYtU0FS0fvGigKygkEmR7DbhiltetBk8vksPL0AJeoBlV0
	 qN8g2PFQ1gxa64WZrKinR0U2uZkJGOKr3/S/kNz5kok27O25iDqSznH/jJuyTTCXfG
	 1UgID9K+rfXUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03667405B5;
	Mon, 12 Aug 2024 14:26:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 010051BF20D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:26:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DDD61607DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:26:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xt-E1aJE1WGO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 14:26:20 +0000 (UTC)
X-Greylist: delayed 374 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 12 Aug 2024 14:26:19 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E69E5605A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E69E5605A6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.138;
 helo=flow3-smtp.messagingengine.com; envelope-from=greg@kroah.com;
 receiver=<UNKNOWN> 
Received: from flow3-smtp.messagingengine.com (flow3-smtp.messagingengine.com
 [103.168.172.138])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E69E5605A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:26:19 +0000 (UTC)
Received: from phl-compute-01.internal (phl-compute-01.nyi.internal
 [10.202.2.41])
 by mailflow.nyi.internal (Postfix) with ESMTP id A9969200DE8;
 Mon, 12 Aug 2024 10:20:03 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Mon, 12 Aug 2024 10:20:03 -0400
X-ME-Sender: <xms:Exq6ZgCsslAOYbRYLyk4RFsaAA_5noMhx7QlvMfy9lP9IQ25BicfMQ>
 <xme:Exq6ZihYkboEyO7RB17bKCXc-PCd42161nfETWrJP6i8aNPgUjuLZW4gzzfislGzz
 PWhHiFgXBQKsg>
X-ME-Received: <xmr:Exq6ZjnRVvHGeGII-0PWSXqBeaCWn2mSC6OPVh-An03T6IlwKYokAQ7YI7hQYfp5HExQxU65BTHV1WBjMErQfDRJQEkyLcIwXue_Wg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddttddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuggftrf
 grthhtvghrnhepjeetueehteekuefhleehkeffffeiffeftedtieegkedviefggfefueff
 kefgueffnecuffhomhgrihhnpehmshhgihgurdhlihhnkhenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhdp
 nhgspghrtghpthhtohepvdegpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegrlh
 gvkhhsrghnuggvrhdrlhhosggrkhhinhesihhnthgvlhdrtghomhdprhgtphhtthhopehs
 thgrsghlvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehmihgthhgrlh
 drkhhusghirghksehinhhtvghlrdgtohhmpdhrtghpthhtohepphgrvhgrnhdrkhhumhgr
 rhdrlhhinhhgrgesihhnthgvlhdrtghomhdprhgtphhtthhopehhohhrmhhssehkvghrnh
 gvlhdrohhrghdprhgtphhtthhopehkrhhishhhnhgvihhlrdhkrdhsihhnghhhsehinhht
 vghlrdgtohhmpdhrtghpthhtoheprghnthhhohhnhidrlhdrnhhguhihvghnsehinhhtvg
 hlrdgtohhmpdhrtghpthhtohepkhhusggrsehkvghrnhgvlhdrohhrghdprhgtphhtthho
 pehnvgigrdhsfidrnhgtihhsrdhoshguthdrihhtphdruhhpshhtrhgvrghmihhnghesih
 hnthgvlhdrtghomh
X-ME-Proxy: <xmx:Exq6Zmy3X1VnAW_1lPaiJxzKQ-UP_SiNDCExMkCxvjtafQVM-Qy8qw>
 <xmx:Exq6ZlTlX1TOeDFFsO7iMjQYzkLxbH5blhS932bNWzcR7C63qMuzsg>
 <xmx:Exq6Zha5NNeI5JszU0ddiZ7Bn4EaEDipsqK9z6bmGCyRTyUw-8Qx5w>
 <xmx:Exq6ZuQjoiZOpsLnOrJtUKKcC-WEM0Y4MdPzuEJTiKai0QmqdSNnUw>
 <xmx:Exq6ZhLc_69r2TVkE3UXEtNW4rS_XWSYOgbz5EkrZbJJQNQRneNUUaEP>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 12 Aug 2024 10:20:02 -0400 (EDT)
Date: Mon, 12 Aug 2024 16:20:00 +0200
From: Greg KH <greg@kroah.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <2024081251-eggshell-down-d665@gregkh>
References: <20240812134455.2298021-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240812134455.2298021-1-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kroah.com; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1723472403; x=1723479603; bh=uCDj2ND5nE
 8inw/UhtR4NteFMYiUan8kp+SXKAFbsaQ=; b=Jgbil5AKeanZIvWttmxLqpKCsG
 cesbBek8ICenp01vbRpzfnsqvCEeqYZDrJFOGmG4pyUGj8ycXV278ntTSqpCYfj+
 CT8mV9XiUNoZJXSI2E0gI5eWrDDMPq3amAq6JVPK99glkO718BJvjEtqdwLV8/d0
 aXX0nAulrrgPlE1uWsdyJyXFrHieiEnRfE96SJRQhvhxUPcKbPyosTyJe6BnQniF
 uBfkae4CprmvGdqvRNUslYuZzWV8KN0sSPuEJZOaOdLRUg8sX/Btn33nk1si8JWu
 BwaqA9R1Rp8yYoK6gZOIv1rVHIY2N82u2NWrDBs+siwcqSxL9Yg7mh5gh67g==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1723472403; x=1723479603; bh=uCDj2ND5nE8inw/UhtR4NteFMYiU
 an8kp+SXKAFbsaQ=; b=YoVpxfTN+n/d3TpfgC2wVhmVD01+o/XbiBE+IjP5hfZU
 LawS8HVlgD9HbX6Y0ZVfYbgMdSpuh6jqcuDIe2nArfz8tR+jM4q+oGkLdB6MaFHV
 PaYFhq4TEN/Ge6nm+xerlm6USso7J/EdCiOB2kq9KpgAfI2O16tNEWjNbTqM0Gr6
 ZNubXp7L65W9gsuDjWi9Ww32m2JiWP0MXmpdfMrwXfYjXaX6m2iXQRXqsVcLSXup
 WbSkBzFWq8h0JtI2n9s2jnsutu8TDCTffV+yJEgMSJyUkG6wrs+8IU+4IWEmx1hK
 JRlz2B773b4Hwub2EfGGht4DduJvUVHWsVS/KI9hcQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kroah.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=kroah.com header.i=@kroah.com
 header.a=rsa-sha256 header.s=fm3 header.b=Jgbil5AK; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=YoVpxfTN
Subject: Re: [Intel-wired-lan] [PATCH 6.10.y] idpf: fix memleak in vport
 interrupt configuration
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
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 12, 2024 at 03:44:55PM +0200, Alexander Lobakin wrote:
> From: Michal Kubiak <michal.kubiak@intel.com>
> 
> commit 3cc88e8405b8d55e0ff035e31971aadd6baee2b6 upstream.
> 
> The initialization of vport interrupt consists of two functions:
>  1) idpf_vport_intr_init() where a generic configuration is done
>  2) idpf_vport_intr_req_irq() where the irq for each q_vector is
>    requested.
> 
> The first function used to create a base name for each interrupt using
> "kasprintf()" call. Unfortunately, although that call allocated memory
> for a text buffer, that memory was never released.
> 
> Fix this by removing creating the interrupt base name in 1).
> Instead, always create a full interrupt name in the function 2), because
> there is no need to create a base name separately, considering that the
> function 2) is never called out of idpf_vport_intr_init() context.
> 
> Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> Cc: stable@vger.kernel.org # 6.7
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Link: https://patch.msgid.link/20240806220923.3359860-3-anthony.l.nguyen@intel.com
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)
> 

Now queued up, thanks.

greg k-h
