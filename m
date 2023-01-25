Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3DB67AAF4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 08:35:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E09CF82087;
	Wed, 25 Jan 2023 07:35:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E09CF82087
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674632148;
	bh=/P1dMP11jpJqPXVWMFPOBB9Jai2PzvvmwKxTZ8nv92w=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ny5H9NUUsn5qs+lSCgcy+47zYf8/MkWBIz13xROhYQRn5TtcXp9IJH328Ovy2Axqa
	 T7ov3TRdm17GxwwIS4V1EsYAs/N+eCt11x5+E+4f1RY9sNwP16jtxt1RscdNXI+gwP
	 s6dlXYuhLKkpw4xrFcMeyezLAvhyh+gcQSKIkewHvhvsZakq6DiTB0+qmdmG/j41Fg
	 fforq87d2LCpQFXLq2wrRCMDUJ4UIz1gA8n+osN9cC3RoqD4+T/lyVZ7WdlI6RVSwZ
	 6a1RS4crLeYXVjlrVUisDIHkMefrRGIezfbHM9zi6YZ5zLgYm5RqkdarCtdlYEQCRA
	 8RmNjt6t1OX+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vpeU_7jhDns3; Wed, 25 Jan 2023 07:35:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D66D481E90;
	Wed, 25 Jan 2023 07:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D66D481E90
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 096881BF420
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 07:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E24B74184E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 07:35:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E24B74184E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XTmULREIys9b for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 07:35:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74F9541873
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74F9541873
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 07:35:41 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id mg12so45203538ejc.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 23:35:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nGlLQMRMs18KEtYyX/ac08EXCvqt8zu6xcJXDeQV2dY=;
 b=aoE99DnoKqBNio96L8HX1RObWMM7OyzCQgmWLXA9dPMLYkPC42+ynPz7ZxTX5uXy2W
 BeSaiAZXJiRWD/yF7Cdg75tXakthMuJgy2Za2JhgzmBJGfgFCI3sdq0CeYBi07K1//jT
 VmKX83vAAZR6PJneISFqPLEbWVa2DKl3XjjegF0pWwKrjR8e8VFNYh1LcOargcCWi17z
 I04YexwKP77HArq+k6we96/d5DLiRfHfM2fdNS5UuGcx3NBneJDY3GYwATC9e6+YaoZ4
 L1hKTkF7fVlFQKGxDdRkuCS1EpOGwg2PU3pzUXL7GPCpxM0/Wm6ZkGYenPAU+YGV/FMu
 CZpw==
X-Gm-Message-State: AFqh2kruoIBnQeel6EuPzxAPMKwoS/ne493PlkODH2TUC8NqZpSS/AEl
 +HweWKRxXhh0CBu9UosfeiTMM0JPi2a87luXB8U=
X-Google-Smtp-Source: AMrXdXt8i9aVPI6v11qB48IeNNXkHiq5ha7Oj7NPA6OVN6+Co5mVwtVBruuOJ2igGy1FFungvJuKuwF3qFgVtRskGBs=
X-Received: by 2002:a17:906:9f21:b0:872:f8b7:3b52 with SMTP id
 fy33-20020a1709069f2100b00872f8b73b52mr2819374ejc.373.1674632139408; Tue, 24
 Jan 2023 23:35:39 -0800 (PST)
MIME-Version: 1.0
References: <20230121085521.9566-1-kerneljasonxing@gmail.com>
In-Reply-To: <20230121085521.9566-1-kerneljasonxing@gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 25 Jan 2023 15:35:03 +0800
Message-ID: <CAL+tcoCcTHUXKiNW7jau4E5_H6HKXLN6-m8D9B2fBXSgRReS4A@mail.gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, 
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 richardcochran@gmail.com, ast@kernel.org, daniel@iogearbox.net, 
 hawk@kernel.org, John Fastabend <john.fastabend@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=nGlLQMRMs18KEtYyX/ac08EXCvqt8zu6xcJXDeQV2dY=;
 b=bWNJ/LJR+NUbijN/7bqMprkmjukf4ykfGNFFWppAlD3Cx/K5m1emzCRPf9to0gB8KT
 e4ZAfaCU5ytNjLogzpSG9Rvws5G8DUWw8pl0djAUr3ZMmDCSvU1uB+kVKIeBJznv7bgP
 S+yMx0c7B4CI585tCkNkIU0uUg6eU2oGNxs2JgqfuTxlfhbSF2/hFBFyKDX2xBl7Di3A
 GHjAs1hpGgSU1bbhAaLNAZRejq0MOCdHrK1YD3G3W5/LXSMH4d5QEE+sMNDfOWWaRuDZ
 YQjtsp1KIgZLIubEMuOTnX5REeqF1thciqndV5FF/NKJ526imNpA7D7AwlWqjfV/DlEb
 rbGw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=bWNJ/LJR
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: allow to increase MTU to
 some extent with XDP enalbed
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

I'm sorry. I just noticed that I sent it to the wrong email address of
john.fastabend previously. So I corrected it here.

Thanks,
Jason

On Sat, Jan 21, 2023 at 4:55 PM Jason Xing <kerneljasonxing@gmail.com> wrote:
>
> From: Jason Xing <kernelxing@tencent.com>
>
> I encountered one case where I cannot increase the MTU size with XDP
> enabled if the server is equipped with IXGBE card, which happened on
> thousands of servers. I noticed it was prohibited from 2017[1] and
> added size checks[2] if allowed soon after the previous patch.
>
> Interesting part goes like this:
> 1) Changing MTU directly from 1500 (default value) to 2000 doesn't
> work because the driver finds out that 'new_frame_size >
> ixgbe_rx_bufsz(ring)' in ixgbe_change_mtu() function.
> 2) However, if we change MTU to 1501 then change from 1501 to 2000, it
> does work, because the driver sets __IXGBE_RX_3K_BUFFER when MTU size
> is converted to 1501, which later size check policy allows.
>
> The default MTU value for most servers is 1500 which cannot be adjusted
> directly to the value larger than IXGBE_MAX_2K_FRAME_BUILD_SKB (1534 or
> 1536) if it loads XDP.
>
> After I do a quick study on the manner of i40E driver allowing two kinds
> of buffer size (one is 2048 while another is 3072) to support XDP mode in
> i40e_max_xdp_frame_size(), I believe the default MTU size is possibly not
> satisfied in XDP mode when IXGBE driver is in use, we sometimes need to
> insert a new header, say, vxlan header. So setting the 3K-buffer flag
> could solve the issue.
>
> [1] commit 38b7e7f8ae82 ("ixgbe: Do not allow LRO or MTU change with XDP")
> [2] commit fabf1bce103a ("ixgbe: Prevent unsupported configurations with
> XDP")
>
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index ab8370c413f3..dc016582f91e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -4313,6 +4313,9 @@ static void ixgbe_set_rx_buffer_len(struct ixgbe_adapter *adapter)
>                 if (IXGBE_2K_TOO_SMALL_WITH_PADDING ||
>                     (max_frame > (ETH_FRAME_LEN + ETH_FCS_LEN)))
>                         set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
> +
> +               if (ixgbe_enabled_xdp_adapter(adapter))
> +                       set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
>  #endif
>         }
>  }
> --
> 2.37.3
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
