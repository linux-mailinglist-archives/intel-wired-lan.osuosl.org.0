Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FDB8E0BB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBFBB86940;
	Wed, 14 Aug 2019 22:31:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jp3d7_8Ynebi; Wed, 14 Aug 2019 22:31:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AB0786930;
	Wed, 14 Aug 2019 22:31:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 306BF1BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:48:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 283DD8768A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G32fwwynv5Uw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 14:48:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8CE688764F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:48:30 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d1so20381574pgp.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=S0PKkzS+u3LtwRK0AR6XUJMj1yqa0xdQ2uanteb5fC0=;
 b=sQM4VfFLvn25TVYXiWOtcjotvAhyTEXVeLfR5u3JjOMA2hJ54Q09fdaIrSCoqwh+LA
 07piD3dPQQshVizY5Lon6hvSoABAGnKmiYEIGja0QpGMwN08qZY/i6nPqUTLUDxOGB0S
 GYNZqYuLrPpQKIkDkzQF6EHQRq2TUm9LQzh3n+MmBo3A4H1w8z/yMgmZHdx+k5AXu71W
 dEN9ewXfAUXiBZSu4rACdoWk+PXdVU1B3y8yvPYSrfu+p2PrRwabYkDNp7aPs71JDXG8
 qZjPizmt7qjQxj/6oAmQdDu1p/U6kwQmnYOJd5yh1GrCLH7IGR+ef+nafNiDPdOyB1hw
 55aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=S0PKkzS+u3LtwRK0AR6XUJMj1yqa0xdQ2uanteb5fC0=;
 b=BcaORJGBOm29tEfpABKrHrXHuXFn4yQ9I/qfSGwMUwrOOCbETyhw8pxcE71J0aO203
 tcsW+0axd2Xvsh1vFf1GfVLlKQ/mWJ1uqNG5xHzpdWvSDLQXRCt4M5CtMZKhmeUX2efo
 HvWvV4yXH/Ht2CEecOt8VwFqh6CU/z683r9iqApFGFAtFX6uz5xzFOp4XIsyVeuzQARR
 /Q4ZucC9wOi8FMDpk1/Pbp3HLrfpXYpI8pRPIltyV30nf7vEI9GtlTj8MrVLHE94SFIS
 FB5FkykslIf+2PLuDTVUzMg6WVt6V7nQFFBZAZhIca//jcR3TpCbUqSUNc6CkC3RMD+s
 Lbmg==
X-Gm-Message-State: APjAAAUiHnPnZS15/9Ndvx5cGL7zyv6EZc+mdWIa5mT3Gj35+y83uZOo
 P2SjCNwsly+XbXS1FVj8kHc=
X-Google-Smtp-Source: APXvYqwru1vkZWwlBfz7B/06Y+bnrjh88s8RNYiJ5/2hO9wsYeiA2OtcSsBxgwgVwGCzTrUoKgi32Q==
X-Received: by 2002:a63:6ec1:: with SMTP id
 j184mr18477470pgc.232.1565794110139; 
 Wed, 14 Aug 2019 07:48:30 -0700 (PDT)
Received: from [172.26.122.72] ([2620:10d:c090:180::6327])
 by smtp.gmail.com with ESMTPSA id 124sm5861pfw.142.2019.08.14.07.48.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 07:48:29 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Magnus Karlsson" <magnus.karlsson@intel.com>
Date: Wed, 14 Aug 2019 07:48:28 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <3B2C7C21-4AAC-4126-A31D-58A61D941709@gmail.com>
In-Reply-To: <1565767643-4908-4-git-send-email-magnus.karlsson@intel.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
 <1565767643-4908-4-git-send-email-magnus.karlsson@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 3/8] i40e: add support for
 AF_XDP need_wakeup feature
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
Cc: axboe@kernel.dk, maximmi@mellanox.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, daniel@iogearbox.net,
 maciejromanfijalkowski@gmail.com, netdev@vger.kernel.org,
 ciara.loftus@intel.com, qi.z.zhang@intel.com, ast@kernel.org,
 xiaolong.ye@intel.com, ilias.apalodimas@linaro.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 bruce.richardson@intel.com, maciej.fijalkowski@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 14 Aug 2019, at 0:27, Magnus Karlsson wrote:

> This patch adds support for the need_wakeup feature of AF_XDP. If the
> application has told the kernel that it might sleep using the new bind
> flag XDP_USE_NEED_WAKEUP, the driver will then set this flag if it has
> no more buffers on the NIC Rx ring and yield to the application. For
> Tx, it will set the flag if it has no outstanding Tx completion
> interrupts and return to the application.
>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c 
> b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index d0ff5d8..42c9012 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -626,6 +626,15 @@ int i40e_clean_rx_irq_zc(struct i40e_ring 
> *rx_ring, int budget)
>
>  	i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
>  	i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);
> +
> +	if (xsk_umem_uses_need_wakeup(rx_ring->xsk_umem)) {
> +		if (failure || rx_ring->next_to_clean == rx_ring->next_to_use)
> +			xsk_set_rx_need_wakeup(rx_ring->xsk_umem);
> +		else
> +			xsk_clear_rx_need_wakeup(rx_ring->xsk_umem);
> +
> +		return (int)total_rx_packets;
> +	}
>  	return failure ? budget : (int)total_rx_packets;

Can you elaborate why we're not returning the total budget on failure
for the wakeup case?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
