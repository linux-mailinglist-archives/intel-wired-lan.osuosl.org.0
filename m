Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D23FB43C393
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 09:10:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59DAA606D9;
	Wed, 27 Oct 2021 07:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vszl0_h9QDGx; Wed, 27 Oct 2021 07:10:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E8F1606BE;
	Wed, 27 Oct 2021 07:10:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B290C1BF580
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 07:10:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 997C740243
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 07:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AC5HulYEvtda for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 07:10:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9761C400CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 07:10:23 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9D92A58048F;
 Wed, 27 Oct 2021 03:10:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 27 Oct 2021 03:10:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=UtrQ+Y
 qYfceMRQX4JEoo3nTqoGmlLfcy9dcq+X2CORs=; b=Y0uSgWZnRHybBDtftnIbXu
 SnH0HYdj2Mfp1foEa7BUGaqcE46OcCGmDwoe+Vkr7eScc7WNDjh4JDMn6QtoD6Uk
 k49tEhIkP+cID8Sm0lKd3jLCHF7TIq3SiiKmz/kgNMwFH8TinDjbk/3QizQ+djzA
 C9NU/TT0cOV6wy4Qsgdo3q4ItfgIobt+7Da+kULJaxR1nFmIRsUBCkqekfyJ8W6I
 Eta1MoVmYFo7OZ989S84a0+NKac9RbM9NGOyDVmxk6a5cyfSKifkpUYagUfNT/TH
 I8rSm6P1RwZdd5QnthlPspr6VKND72fN/psFtV+CkXx8divSDkoBF672ze8e93Qg
 ==
X-ME-Sender: <xms:Xft4YYZo5iTxojNPjiWsQ07U0EpPC8yQ1PQRmW-AsiOJoephoSF7CA>
 <xme:Xft4YTYBgY9ExehpHjnMMBWGpi3ZlwmabvXzeDFjOwMv_-LWqU6iRyiiEsY-Y3VsB
 ZUfRi5adqHwxIE>
X-ME-Received: <xmr:Xft4YS9gLOqo5JTJLOgONxNl9_K3zfmqZJ1LyiAGsgshFtKxG4ZrOE42BYx04m8jFpOo4AwyIppRPXbvcSpNpRQ6jot-bQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdefledguddutdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudeh
 leetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepih
 guohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:Xft4YSqahkXu9pQGa64jgqUK0dPlLaAjnEsRP577gPN_xyeyR3Arlw>
 <xmx:Xft4YTokzU87Pvn8UohVePn7ao_2qQHT7uTu8ddKKbj0oGeg49VBDA>
 <xmx:Xft4YQQlQ3uJeT3mQU5BjoDMWuf4H0wnE7Sq12gEEKZ0F1J7swmCcg>
 <xmx:Xvt4YW2ZfmyGyYATFNv4IxHlYGzysVDekTRuX8aWxiGghEkAn69YcQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 27 Oct 2021 03:10:21 -0400 (EDT)
Date: Wed, 27 Oct 2021 10:10:18 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <YXj7WkEb0PagWfSw@shredder>
References: <20211026173146.1031412-1-maciej.machnikowski@intel.com>
 <20211026173146.1031412-3-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211026173146.1031412-3-maciej.machnikowski@intel.com>
Subject: Re: [Intel-wired-lan] [RFC v5 net-next 2/5] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: mkubecek@suse.cz, abyagowi@fb.com, netdev@vger.kernel.org,
 richardcochran@gmail.com, saeed@kernel.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, michael.chan@broadcom.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 26, 2021 at 07:31:43PM +0200, Maciej Machnikowski wrote:
> +/* SyncE section */
> +
> +enum if_eec_state {
> +	IF_EEC_STATE_INVALID = 0,
> +	IF_EEC_STATE_FREERUN,
> +	IF_EEC_STATE_LOCKED,
> +	IF_EEC_STATE_LOCKED_HO_ACQ,

Is this referring to "Locked mode, acquiring holdover: This is a
temporary mode, when coming from free-run, to acquire holdover memory."
?

It seems ice isn't using it, so maybe drop it? Can be added later in
case we have a driver that can report it

There is also "Locked mode, holdover acquired: This is a steady state
mode, entered when holdover memory is acquired." But I assume that's
"IF_EEC_STATE_LOCKED"

> +	IF_EEC_STATE_HOLDOVER,
> +};
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
