Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD81B2AC617
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Nov 2020 21:44:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 287BD87330;
	Mon,  9 Nov 2020 20:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g4FiphBDRwjd; Mon,  9 Nov 2020 20:43:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3A42872FF;
	Mon,  9 Nov 2020 20:43:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 289941BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 20:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 242E085F15
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 20:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXM8MMdhFSdP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Nov 2020 20:43:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4248E85F52
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 20:43:53 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id z16so10311158otq.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Nov 2020 12:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=ATlrc71eVmMN7dt7E+P5qZNg9suPptLNbqRD/l6+6aY=;
 b=plXr8QvaQSlpxzLlNSm4+pzsXkkyAtKZPCwYM1aC0PJbEZilntIxAgGEhXWqcn6vLa
 3Nqg/F9WarxyZrWos3e9JTl04CPbvzJ9FD5RJUNy7wPIdKbeRoEQOhZLBwyxcsbgm4iU
 5iMNIOLsZWyJijwkwFJY7/h6Jbx+V7XNhISDK2BCeYSL+m5hBXatXdb60px3Yyv5ykx2
 2+0dKIQZXbnfVAgLYWlDE1O+tjrX7dktDrDOSZ2O3bia7oakzgoD9cIhQy4enryWNy2d
 9XocgYlNGh3KdWanoMFigemtxu6qRXdUBJdgmK+xI/6CRAXDbDJhIE2wcxptAKa8OEKL
 lZIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=ATlrc71eVmMN7dt7E+P5qZNg9suPptLNbqRD/l6+6aY=;
 b=hNi9TU+gdlGUV4IN8eMrr0GW22shgzLFaLgL/xTgHVYnM3Cyt3wESM1Qzs3d/yxVAt
 Ddx5/siybuMbUTvoaGOzLsw3q5otaW18NmYeVZiTomKAXFxE5UDsrH5pgqNWbED3UbXE
 yiTAC2uQfaWg1c2Uh0SdHDMm87dVNBhlf6b2aqF1edScJMcx04/eQ2vd2LpBY31Fg8pw
 N481fW8NmGeaq86oUshg2N3SLfKOcOyW2NSf38fgiEE5M7RD41kEqidqv3zNIMnocUBt
 P4Vsy0uhLLGdbhU68fQETRA9kTddqjUUd+yKrWQbA1Z/BI8upjQCJ/1njtwNDTHPzkHR
 huVg==
X-Gm-Message-State: AOAM533/Bq8M/s4OCbBW46X6Tjf62jkBOVejy+CFN9Q82l4T66aTBAmP
 S0bKnnW57WzUcK9clb6lOaw=
X-Google-Smtp-Source: ABdhPJz/wqdJcgTVIkfvCa6luKlYzRUqzWrUKz0KdQ0nLjlP9/+xq7vt01xn7VVeytUYno4ZOqkZxQ==
X-Received: by 2002:a05:6830:22c9:: with SMTP id
 q9mr12509129otc.48.1604954632560; 
 Mon, 09 Nov 2020 12:43:52 -0800 (PST)
Received: from localhost ([184.63.162.180])
 by smtp.gmail.com with ESMTPSA id r24sm2748068otq.77.2020.11.09.12.43.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 12:43:51 -0800 (PST)
Date: Mon, 09 Nov 2020 12:43:43 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, magnus.karlsson@intel.com, 
 bjorn.topel@intel.com, ast@kernel.org, daniel@iogearbox.net, 
 netdev@vger.kernel.org, jonathan.lemon@gmail.com
Message-ID: <5fa9a9ffc2ea3_8c0e208a2@john-XPS-13-9370.notmuch>
In-Reply-To: <1604498942-24274-5-git-send-email-magnus.karlsson@gmail.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-5-git-send-email-magnus.karlsson@gmail.com>
Mime-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 4/6] xsk: introduce padding
 between more ring pointers
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
Cc: maciejromanfijalkowski@gmail.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Magnus Karlsson wrote:
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Introduce one cache line worth of padding between the consumer pointer
> and the flags field as well as between the flags field and the start
> of the descriptors in all the lockless rings. This so that the x86 HW
> adjacency prefetcher will not prefetch the adjacent pointer/field when
> only one pointer/field is going to be used. This improves throughput
> performance for the l2fwd sample app with 1% on my machine with HW
> prefetching turned on in the BIOS.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---

Acked-by: John Fastabend <john.fastabend@gmail.com>

>  net/xdp/xsk_queue.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/net/xdp/xsk_queue.h b/net/xdp/xsk_queue.h
> index cdb9cf3..74fac80 100644
> --- a/net/xdp/xsk_queue.h
> +++ b/net/xdp/xsk_queue.h
> @@ -18,9 +18,11 @@ struct xdp_ring {
>  	/* Hinder the adjacent cache prefetcher to prefetch the consumer
>  	 * pointer if the producer pointer is touched and vice versa.
>  	 */
> -	u32 pad ____cacheline_aligned_in_smp;
> +	u32 pad1 ____cacheline_aligned_in_smp;
>  	u32 consumer ____cacheline_aligned_in_smp;
> +	u32 pad2 ____cacheline_aligned_in_smp;
>  	u32 flags;
> +	u32 pad3 ____cacheline_aligned_in_smp;
>  };
>  
>  /* Used for the RX and TX queues for packets */
> -- 
> 2.7.4
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
