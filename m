Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5927D39B5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Oct 2023 16:41:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E10881F58;
	Mon, 23 Oct 2023 14:41:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E10881F58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698072077;
	bh=GkZnfirSnSs5tRPdMm5kIUVQFKvSVJriCJw5WS8gH28=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iXqMHqkvUrwNAozC7Ky5CujXtkNSAD1b3tPj+TOXWox1MG90yY8hwYwxMJY7BOt5O
	 A+u200Epl0dheGsfsbnZrhQjUwCPLXxVNVKv99feZ8P7iSS26Te4zicKooo0FVhonJ
	 vLEmXmha9nfEx5G3OPoOWsiriIhKJhXXtC4Spl2prLtyoxqcLZEZ1Dcmk/O3CHab9y
	 XoNpoOy/wn3UZhs6ceulsYKLy8juNAb8OStun9CxsPOLu2UPsq8JBVI1SBmSe949pF
	 3HDCBh1q8+ndKL8r8o19gfq+sj6wyFp+BPO9lNi9m80Mh4jq08OGtFk3LCAcP2Luel
	 5rssVX88717Gg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hVqnOUKsuTDl; Mon, 23 Oct 2023 14:41:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62BA381FC1;
	Mon, 23 Oct 2023 14:41:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62BA381FC1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C40B1BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 14:41:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 11F4441760
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 14:41:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11F4441760
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DyOkgrPNPeAw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Oct 2023 14:41:11 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D23D34176D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 14:41:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D23D34176D
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id ECE8D5C0197
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 10:41:09 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 23 Oct 2023 10:41:09 -0400
X-ME-Sender: <xms:BYY2ZTaKR72jZ-fNY5xWMZANZHBXPtH9hFJHOXYIoUGweEdkknlSVg>
 <xme:BYY2ZSZ5YGPW7kTjHdbh1pxtAyKniEloUW3pAN28jeVq49rJYB9j3gid1te8AmQJE
 lOuEqGIwqTf9-y3xg>
X-ME-Received: <xmr:BYY2ZV8RVJcE2Dy9AWCrGo8PSgHBnSKtbqSas87GkhnPnbSep5kVMVOzBAW74D4AAghAAg1e4o0kt7yICFu3jdPi>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrkeeigdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdortd
 dttddvnecuhfhrohhmpefluhhsthhinhcuuehrohhnuggvrhcuoehjshgsrhhonhguvghr
 segtohhlugdqfhhrohhnthdrohhrgheqnecuggftrfgrthhtvghrnhepheeileeuvefhud
 egkeekvdekteelvdejgeehudeuudettdffieefhedvfefhiedtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepjhhssghrohhnuggvrhestgholh
 guqdhfrhhonhhtrdhorhhg
X-ME-Proxy: <xmx:BYY2ZZor3qB-QiQrpSKUFjFavSQ3RY9AkMwGoTS5ROtIkJmmlljFkA>
 <xmx:BYY2ZeqwABRHy07m9Mme1ezVJEVeLU1WOxnvGVEGy0xeu-akXAyMqA>
 <xmx:BYY2ZfQr3KdZ05-QjrRt0sa3HNqebARVsmKKHBtBSt6427YiGZtLcA>
 <xmx:BYY2ZcFq8Ebi3Noxde2l9IG_KYQr4mT91QqATw8jsV5hWbcB-LtVBA>
Feedback-ID: iea0042cb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <intel-wired-lan@lists.osuosl.org>; Mon,
 23 Oct 2023 10:41:09 -0400 (EDT)
Date: Mon, 23 Oct 2023 10:41:09 -0400
From: Justin Bronder <jsbronder@cold-front.org>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <ZTaGBWSMJMKuaMdo@ravine.members.linode.com>
References: <20231023143557.18241-1-jsbronder@cold-front.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231023143557.18241-1-jsbronder@cold-front.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cold-front.org; 
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=mesmtp; t=1698072069; x=1698158469;
 bh=5I0CD08AiPFg+HX+I7ITuN+7caSac7ZXwvCLUpeNT7E=; b=Joc/E4gaLqYU
 LmEThUAvtCiXkK7veIKdVCOutDkWohOxWcZpjkL/9Qfd8ChNfATWDvk3B3WU3/Fy
 S9XmkXjtI85f8hloPs3K9MJ/MZPT+V1uPYCqlbC0F1Wfq4IXhNg/7Y5aZpdQ1tKm
 +tqgvwDRSiwwgOPZadl/TB8FOvjHnjA=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1698072069; x=1698158469; bh=5I0CD08AiPFg+
 HX+I7ITuN+7caSac7ZXwvCLUpeNT7E=; b=RGKoDJ9Zrm1Wr9SCIuTNekBCLRMZ/
 TWsa1uejKPWiCkzr3KCxnCZczUc6kzUt4bsT362LzrWO1QJRuHWSrB/4toREmXre
 LHnETh4yZ8juycE4M5HLQKh6s2uiuG0uZnfZBSWNW7CcxhoXAtSaJSsTGxdfOVZU
 NQ/jtaUo/B+bezxsI838BFpKnzCP54APuhANDlucjO0EQtZR0XhPwp7p6r0UuKJ8
 cSnQr1t/p3tSG7BTG+nl0WGuHKvHPjgaGu+bTJY4YsPAHbuy4WJ3jmFjOXEzBCNg
 mH1nALib2HURKWtw4l8iv1oIQSOpPlZ/il5sdQrxCPVtCJGp4QTBv4NDQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=cold-front.org header.i=@cold-front.org
 header.a=rsa-sha256 header.s=mesmtp header.b=Joc/E4ga; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=RGKoDJ9Z
Subject: Re: [Intel-wired-lan] i40e: increase max descriptors for XL710
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

My apologies I didn't notice my last email did get moderator approval and made it to the list.  Please ignore this email.

On 23/10/23 10:35 -0400, Justin Bronder wrote:
> In Tables 8-12 and 8-22 in the X710/XXV710/XL710 datasheet, the QLEN
> description states that the maximum size of the descriptor queue is 8k
> minus 32, or 8160.
> 
> Signed-off-by: Justin Bronder <jsbronder@cold-front.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 23 +++++++++++++++----
>  2 files changed, 19 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 6e310a539467..ad261fa00d4c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -50,6 +50,7 @@
>  #define I40E_MAX_VEB			16
>  
>  #define I40E_MAX_NUM_DESCRIPTORS	4096
> +#define I40E_MAX_NUM_DESCRIPTORS_XL710	8160
>  #define I40E_MAX_CSR_SPACE		(4 * 1024 * 1024 - 64 * 1024)
>  #define I40E_DEFAULT_NUM_DESCRIPTORS	512
>  #define I40E_REQ_DESCRIPTOR_MULTIPLE	32
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index afc4fa8c66af..338c8f1acc1a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -2013,6 +2013,18 @@ static void i40e_get_drvinfo(struct net_device *netdev,
>  		drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;
>  }
>  
> +static u32 i40e_get_max_num_descriptors(struct i40e_pf *pf)
> +{
> +	struct i40e_hw *hw = &pf->hw;
> +
> +	switch (hw->mac.type) {
> +	case I40E_MAC_XL710:
> +		return I40E_MAX_NUM_DESCRIPTORS_XL710;
> +	default:
> +		return I40E_MAX_NUM_DESCRIPTORS;
> +	}
> +}
> +
>  static void i40e_get_ringparam(struct net_device *netdev,
>  			       struct ethtool_ringparam *ring,
>  			       struct kernel_ethtool_ringparam *kernel_ring,
> @@ -2022,8 +2034,8 @@ static void i40e_get_ringparam(struct net_device *netdev,
>  	struct i40e_pf *pf = np->vsi->back;
>  	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
>  
> -	ring->rx_max_pending = I40E_MAX_NUM_DESCRIPTORS;
> -	ring->tx_max_pending = I40E_MAX_NUM_DESCRIPTORS;
> +	ring->rx_max_pending = i40e_get_max_num_descriptors(pf);
> +	ring->tx_max_pending = i40e_get_max_num_descriptors(pf);
>  	ring->rx_mini_max_pending = 0;
>  	ring->rx_jumbo_max_pending = 0;
>  	ring->rx_pending = vsi->rx_rings[0]->count;
> @@ -2057,18 +2069,19 @@ static int i40e_set_ringparam(struct net_device *netdev,
>  	u16 tx_alloc_queue_pairs;
>  	int timeout = 50;
>  	int i, err = 0;
> +	u32 max_num_descriptors = i40e_get_max_num_descriptors(pf);
>  
>  	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
>  		return -EINVAL;
>  
> -	if (ring->tx_pending > I40E_MAX_NUM_DESCRIPTORS ||
> +	if (ring->tx_pending > max_num_descriptors ||
>  	    ring->tx_pending < I40E_MIN_NUM_DESCRIPTORS ||
> -	    ring->rx_pending > I40E_MAX_NUM_DESCRIPTORS ||
> +	    ring->rx_pending > max_num_descriptors ||
>  	    ring->rx_pending < I40E_MIN_NUM_DESCRIPTORS) {
>  		netdev_info(netdev,
>  			    "Descriptors requested (Tx: %d / Rx: %d) out of range [%d-%d]\n",
>  			    ring->tx_pending, ring->rx_pending,
> -			    I40E_MIN_NUM_DESCRIPTORS, I40E_MAX_NUM_DESCRIPTORS);
> +			    I40E_MIN_NUM_DESCRIPTORS, max_num_descriptors);
>  		return -EINVAL;
>  	}
>  
> -- 
> 2.42.0
> 

-- 
Justin Bronder
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
