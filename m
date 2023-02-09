Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2A568FC23
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 01:47:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF940410E8;
	Thu,  9 Feb 2023 00:47:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF940410E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675903677;
	bh=/ZLuS6y4F4jZ6NkKiH3+rSPTCMDGvGh7cexl/Xoh1Uk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gY41r3n/z3H0oU4DBYIyr2QejG/omiR+FrzySHrJQjhoEjTo1Ol+QY7OUrDekLOtv
	 q/S4uwAj+vCyc6aivAMiyw9/rnv7PPcOPPsMnCQSUc3uWFrZqjDiJ/hINcJ7oXpvgb
	 zK8kdJDZJzZGZe6FYNC2dtvCkhbmcpq/dsxT4pOVJVf3S6Pj37qaw2CuQUGl93GkU6
	 S6NOdSGGr6F9mgD9Owx6sEzbHUq/OAtqT1jvYVGr0cZ9lWRs/5rxEa1pTCPLy6zkNJ
	 ATn6rWh3i4YsNnwHzi/ZHl7JE4A+y08g4o4a/jW84x1u5ps6mEyAAJLAJONY069qvP
	 uqQ62DTJLZVAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nk-byxMEruJ8; Thu,  9 Feb 2023 00:47:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53896410D1;
	Thu,  9 Feb 2023 00:47:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53896410D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C05F01BF318
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 00:47:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D5CB61043
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 00:47:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D5CB61043
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NFF0yRen5mEy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Feb 2023 00:47:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A15CB60C16
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A15CB60C16
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 00:47:49 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id ml19so2083541ejb.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Feb 2023 16:47:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=csaUFD9XPMWnOfebSojpED5cJqAQggMa/pYn+VL37CM=;
 b=UlfXH9+V40iMNkV5gY7Pmy44BWCi5KYmuh7aU516fCUEDDshE04mGeFxY+ue159Hjn
 yrjwzJeP6Ss1k3ZdsVlCcIwCzeqtpFtnKxDABznKbR6dhpTmwPKjXR5KmwASFcwEsky2
 QCUWB0nid5HdWzdO9PULNKxKmgr/QPGRxkH7NdizynQHsr2n3euMwd+in5BmEY7CByib
 BSXivJyG7pHBbcEkwZ21Kk4aBrlI/4nJgJET0f+PfFC2FniCDXLatQ60NjYMxfriyqmX
 uEUu5K9NIJJVFTpcA4Hh7AzBK5eidHd9/EsgZMYIw6bAlfvuo7v4Q6J5jxaYEeSJAoIF
 mObw==
X-Gm-Message-State: AO0yUKXhkQHZD0DiFAFCBE8joG1gTsiOVsHTZbLJMRU9cDd+RJ3o9Y54
 4R5t0x5J7DM2yLiYPEUIoLLuKI8Y5iuoux9qX14=
X-Google-Smtp-Source: AK7set/d76zdEJveJUcIvOlKGZ+pCq9PFMXT1MU7EPKOOnVom4NJ66HyMBsOZb5jDHvehUhyf1m5btZIT5sSn3a/jxM=
X-Received: by 2002:a17:907:2cec:b0:87b:dce7:c245 with SMTP id
 hz12-20020a1709072cec00b0087bdce7c245mr121870ejc.3.1675903667369; Wed, 08 Feb
 2023 16:47:47 -0800 (PST)
MIME-Version: 1.0
References: <20230204133535.99921-1-kerneljasonxing@gmail.com>
 <20230204133535.99921-4-kerneljasonxing@gmail.com>
In-Reply-To: <20230204133535.99921-4-kerneljasonxing@gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Thu, 9 Feb 2023 08:47:09 +0800
Message-ID: <CAL+tcoD9nE-Ad7+XoshoQ8qp7C0H+McKX=F6xt2+UF1BeWXKbg@mail.gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, 
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 richardcochran@gmail.com, ast@kernel.org, daniel@iogearbox.net, 
 hawk@kernel.org, john.fastabend@gmail.com, alexandr.lobakin@intel.com, 
 maciej.fijalkowski@intel.com, alexander.duyck@gmail.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=csaUFD9XPMWnOfebSojpED5cJqAQggMa/pYn+VL37CM=;
 b=Hcmg3NcuxMZp48JVIaeNVjLdopmTTlbGWWNWRC0ISw5Pvr2pPh4vnggQh4el9ERapf
 ejxxuI1Z7/Fn69Qt/JUjfqKKUYMswGzh+1KVA9a6wkHn3SdGYkAqjeh1Pobu9RjQyo9o
 +3RVtr7/bnatz9htnfW/CeAgNdKHTtjM6bn/E3HqVakJwEtHR+B1DwYty3cmGVW9VYq8
 t9/PFo4ibQWMxq5N77EzESOZMrQDBV1GC7rvh4ceoT53EemhHA0GweR3E0stN1TKKrkc
 JmCYO0d9qun5EpFHVkwOrfX9e42UXZCb0wOQXqFNjeNfkgiSEJ+oYPMRksCHz/6I5lLJ
 zhzA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Hcmg3Ncu
Subject: Re: [Intel-wired-lan] [PATCH net 3/3] ixgbe: add double of VLAN
 header when computing the max MTU
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CC Alexander Duyck

Hello Alexander, thanks for reviewing the other two patches of this
patchset last night. Would you mind reviewing the last one? :)

Thanks,
Jason

On Sat, Feb 4, 2023 at 9:36 PM Jason Xing <kerneljasonxing@gmail.com> wrote:
>
> From: Jason Xing <kernelxing@tencent.com>
>
> Include the second VLAN HLEN into account when computing the maximum
> MTU size as other drivers do.
>
> Fixes: fabf1bce103a ("ixgbe: Prevent unsupported configurations with XDP")
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 2 ++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 +--
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index bc68b8f2176d..8736ca4b2628 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -73,6 +73,8 @@
>  #define IXGBE_RXBUFFER_4K    4096
>  #define IXGBE_MAX_RXBUFFER  16384  /* largest size for a single descriptor */
>
> +#define IXGBE_PKT_HDR_PAD   (ETH_HLEN + ETH_FCS_LEN + (VLAN_HLEN * 2))
> +
>  /* Attempt to maximize the headroom available for incoming frames.  We
>   * use a 2K buffer for receives and need 1536/1534 to store the data for
>   * the frame.  This leaves us with 512 bytes of room.  From that we need
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 2c1b6eb60436..149f7baf40fe 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -6801,8 +6801,7 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
>         struct ixgbe_adapter *adapter = netdev_priv(netdev);
>
>         if (ixgbe_enabled_xdp_adapter(adapter)) {
> -               int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
> -                                    VLAN_HLEN;
> +               int new_frame_size = new_mtu + IXGBE_PKT_HDR_PAD;
>
>                 if (new_frame_size > ixgbe_max_xdp_frame_size(adapter)) {
>                         e_warn(probe, "Requested MTU size is not supported with XDP\n");
> --
> 2.37.3
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
