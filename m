Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16247752F4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 17:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C135587DDE;
	Thu, 25 Jul 2019 15:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SqfyL0IpV9xT; Thu, 25 Jul 2019 15:39:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67B2088171;
	Thu, 25 Jul 2019 15:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 306C61BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 15:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2A1C5815E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 15:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3OMIg0kJN5rX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 15:39:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 79E29819A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 15:39:21 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 19so22952057pfa.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 08:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=gjFiRYd7PJXDiaH07R1tdzSfdYQ8jSyV4Rg/fDB7H6Q=;
 b=eSdUUCjVxdWi1k/cpqscjd7EO/M7+vEUrQ3BPtcLeDSkLyUtz+PA4IbpFYxSnHkWWN
 Gg7UCkBF75m48cfEJIXE83HWhSW0WFNMZKj+lrQh/WfJ7l43gv94E5Xg9yTnuC74a05g
 edJR8zkN8fCrc17Uulqox/z0c+fyxRx3S1MDwhI7InF9hNDCG7kN9mJQmkDynzuoSHpT
 4BnmoWypx3+/hD9a4x/ollXGy5EFt8OZbb9iIs8dQosUdffXGQ42K53/JRghgnCZqFBt
 t2/OGU1WvSczMt/tYuBJfM5dlRYVca0yb5F3Dpw9zlaj+bZowo4xU7OEb/V0P4GhbLMs
 al8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=gjFiRYd7PJXDiaH07R1tdzSfdYQ8jSyV4Rg/fDB7H6Q=;
 b=ly7FJQxI9qEJ+lqKGsKn+S5epQuETJO1A2Cvi7iFRCdHxnH+t/rTtDiEh4G3phrrVD
 P/Otf0T+5lzpkxA/jol1HXiFOWFL/q3UXj0RQeX/rrt9Khin+7siqwmv55xQQx+gLmnL
 b6vHS80fAglF5AtEX83ywJL3GEP4g/Owcc0HkChVH09vnWNiNOJdwasLSkxm7MA3iyCr
 tGjmNL5RaPbq3Fsu1VM+hH9uX20uFx6BzhUXXVc2NKVLpd5SVtPotgq7/fXhVq1MyrN4
 RuBR+e8xOKtwgaTRdcpx8bQ+6mO2ZinVVjbmxSHCN3UaNXWlAcV5hWLQcxlZ7bUlq++a
 iShQ==
X-Gm-Message-State: APjAAAUPsNHRC05MsI0fG+nKn9jLYzX4BNsot5x39R+Khzk6hzoA1fAo
 SIbqAAPSTTgLGOyLzrW2/1Y=
X-Google-Smtp-Source: APXvYqw5W/Fw0G7+SAY9GLr1ZK9dvqwrSp/xY2xVl7d8EtFEQp7LX9rcEhQ3UMDhF+/g9KfXui50/g==
X-Received: by 2002:a63:f857:: with SMTP id v23mr62010467pgj.228.1564069161037; 
 Thu, 25 Jul 2019 08:39:21 -0700 (PDT)
Received: from [172.20.174.128] ([2620:10d:c090:180::1:622f])
 by smtp.gmail.com with ESMTPSA id f6sm52701201pga.50.2019.07.25.08.39.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 08:39:20 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Thu, 25 Jul 2019 08:39:19 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <94EAD717-F632-499F-8BBD-FFF5A5333CBF@gmail.com>
In-Reply-To: <20190724051043.14348-1-kevin.laatz@intel.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 00/11] XDP unaligned chunk
 placement support
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
Cc: maximmi@mellanox.com, jakub.kicinski@netronome.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 stephen@networkplumber.org, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 23 Jul 2019, at 22:10, Kevin Laatz wrote:

> This patch set adds the ability to use unaligned chunks in the XDP umem.
>
> Currently, all chunk addresses passed to the umem are masked to be chunk
> size aligned (max is PAGE_SIZE). This limits where we can place chunks
> within the umem as well as limiting the packet sizes that are supported.
>
> The changes in this patch set removes these restrictions, allowing XDP to
> be more flexible in where it can place a chunk within a umem. By relaxing
> where the chunks can be placed, it allows us to use an arbitrary buffer
> size and place that wherever we have a free address in the umem. These
> changes add the ability to support arbitrary frame sizes up to 4k
> (PAGE_SIZE) and make it easy to integrate with other existing frameworks
> that have their own memory management systems, such as DPDK.
> In DPDK, for example, there is already support for AF_XDP with zero-copy.
> However, with this patch set the integration will be much more seamless.
> You can find the DPDK AF_XDP driver at:
> https://git.dpdk.org/dpdk/tree/drivers/net/af_xdp
>
> Since we are now dealing with arbitrary frame sizes, we need also need to
> update how we pass around addresses. Currently, the addresses can simply be
> masked to 2k to get back to the original address. This becomes less trivial
> when using frame sizes that are not a 'power of 2' size. This patch set
> modifies the Rx/Tx descriptor format to use the upper 16-bits of the addr
> field for an offset value, leaving the lower 48-bits for the address (this
> leaves us with 256 Terabytes, which should be enough!). We only need to use
> the upper 16-bits to store the offset when running in unaligned mode.
> Rather than adding the offset (headroom etc) to the address, we will store
> it in the upper 16-bits of the address field. This way, we can easily add
> the offset to the address where we need it, using some bit manipulation and
> addition, and we can also easily get the original address wherever we need
> it (for example in i40e_zca_fr-- ee) by simply masking to get the lower
> 48-bits of the address field.

I wonder if it would be better to break backwards compatibility here and
say that a handle is going to change from [addr] to [base | offset], or
even [index | offset], where address = (index * chunk size) + offset, and
then use accessor macros to manipulate the queue entries.

This way, the XDP hotpath can adjust the handle with simple arithmetic,
bypassing the "if (unaligned)", check, as it changes the offset directly.

Using a chunk index instead of a base address is safer, otherwise it is
too easy to corrupt things.
-- 
Jonathan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
