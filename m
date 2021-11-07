Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F7F44731B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Nov 2021 14:45:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C82CE60665;
	Sun,  7 Nov 2021 13:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yv2VI3LpMTax; Sun,  7 Nov 2021 13:45:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DECC7605CF;
	Sun,  7 Nov 2021 13:45:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A5D2A1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Nov 2021 13:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8BF1E605CF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Nov 2021 13:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50T__6_v7ZCa for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Nov 2021 13:45:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 678EC605CC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Nov 2021 13:45:00 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 623235800BC;
 Sun,  7 Nov 2021 08:44:56 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 07 Nov 2021 08:44:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=YYBzFB
 LaqRjypaCTOnoGZ+5BHWOftMjIYoQeVeLxb5Y=; b=HjB4hVxvEaAvjjqDPcyJIa
 5QrURh0Fua3tVbL77gFzPYJl4pH6s2U9GliabrhOxkp2y5J0FEA96r5VVEdFpkaf
 ppoJszTvIXgG10O9nBRM5JzZ27P6eouEoZ6eVs894PRykt9mK31nyHiKjP3jknEd
 rtyHdpVsSsw7MK7o0CnTXABl1uMKr4BLBbn3FT30z1RyOPGvMKUsuyWP05KHyYc7
 x94o8mGy0cZ81sVR4UnLv+QjieF/7d318HgJ3EmhqNub5gNR6EvBCY5iDbL3PPIo
 UG3hWa1Byc7EveD7+mWJhR+tCUXgQRptRkppbXn0RhP09Tjoe6ottP9H9nFByMUw
 ==
X-ME-Sender: <xms:V9iHYUdibIJ2ADw6i8_Krih-i-rH9sBz0OpmEkwYPmXGh8Y7NatbXA>
 <xme:V9iHYWO-21u9fdmFgxBoPiiV6hDBnnXbHrhNG6il_i0-lyde3qhSvhVDGSI18hDw9
 VBtVeaHuxwYKJM>
X-ME-Received: <xmr:V9iHYVhaQd5tc2v7b1gHBLlFeHTGfcrdGUBAiJObYAwp79vxXu4gj-di9Ulh>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddruddtgdehhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnhepgfevgfevueduueffieffheeifffgjeelvedtteeuteeuffekvefggfdtudfgkeev
 necuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:V9iHYZ_zATfsMXtbU-0UbyfQjXVVhOK0OlldF78Ji3cG4fcU5VUW7A>
 <xmx:V9iHYQtZjeHSIB1h7H-jr3STB8LFdTRYTE150ZcBhVsm8b89gu-7bA>
 <xmx:V9iHYQFoOShoIwWFpJAMmPI4tPgmjtD2OhUW6accm2Nb_n32O5eHHw>
 <xmx:WNiHYSI6hxzOeY5nEuAMckML32XXM5t8J2vCk0UYOHbpRPqppjH9Ww>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Nov 2021 08:44:55 -0500 (EST)
Date: Sun, 7 Nov 2021 15:44:52 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <YYfYVA9j6Dk2rkDD@shredder>
References: <20211105205331.2024623-1-maciej.machnikowski@intel.com>
 <20211105205331.2024623-3-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211105205331.2024623-3-maciej.machnikowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 2/6] rtnetlink: Add new
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

On Fri, Nov 05, 2021 at 09:53:27PM +0100, Maciej Machnikowski wrote:
> +/* SyncE section */
> +
> +enum if_eec_state {
> +	IF_EEC_STATE_INVALID = 0,	/* state is not valid */
> +	IF_EEC_STATE_FREERUN,		/* clock is free-running */
> +	IF_EEC_STATE_LOCKED,		/* clock is locked to the reference,
> +					 * but the holdover memory is not valid
> +					 */
> +	IF_EEC_STATE_LOCKED_HO_ACQ,	/* clock is locked to the reference
> +					 * and holdover memory is valid
> +					 */
> +	IF_EEC_STATE_HOLDOVER,		/* clock is in holdover mode */
> +};
> +
> +#define EEC_SRC_PORT		(1 << 0) /* recovered clock from the port is
> +					  * currently the source for the EEC
> +					  */

Where is this used?

Note that the merge window is open and that net-next is closed:

http://vger.kernel.org/~davem/net-next.html

> +
> +struct if_eec_state_msg {
> +	__u32 ifindex;
> +};
> +
> +enum {
> +	IFLA_EEC_UNSPEC,
> +	IFLA_EEC_STATE,
> +	IFLA_EEC_SRC_IDX,
> +	__IFLA_EEC_MAX,
> +};
> +
> +#define IFLA_EEC_MAX (__IFLA_EEC_MAX - 1)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
