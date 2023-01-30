Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FF56813EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jan 2023 15:58:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D228417C4;
	Mon, 30 Jan 2023 14:58:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D228417C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675090703;
	bh=cNB2r/3xLz45YhDSXNYp14IKTq3FScJ6olXHb+sy31s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=erqeDMYC9oP+ZXWw3B7vK0wsFlaGM5qU7C4/+ODxc1gSpFmMjBtYZEPjSshzuhtlH
	 0wcmeMbwq+nCT95xsehU66/URrpTo27TBQGSZ4oX5IusroydQEfB/jeeVIv5Do0s+n
	 FW/avmCQRloMTO/1MBICKDWlFp9DqIBhyFF97HNJI4MTiHeSXJ7tZVhkVd7DO138zT
	 NiWeE+KEYeSOFzHBIVcVThvFWXIG4kDLB1kQ2RgmR7Y/vbyboLdYgDpGQy4foRepiw
	 TJBWotcdEiBKzQakctT8v/ElFPUAXcYP8MbJO79XfZONS56Lm9srG8NmDa5vPbio1R
	 NCCQGGgb2x70w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b5vrpdg7pYE6; Mon, 30 Jan 2023 14:58:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 193C04176F;
	Mon, 30 Jan 2023 14:58:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 193C04176F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B1551BF37C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 14:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C19B4176F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 14:58:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C19B4176F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yFY7aKGMvvSy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jan 2023 14:58:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2449D41763
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2449D41763
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 14:58:14 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id mc11so10014706ejb.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 06:58:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HiGrD1dyHCsxNZSafiiQouritp32iJwUHx6VOOxAvoU=;
 b=ig3KejmLBXIfJYqo+YrASuN1LOK5qlETuHHbKsqj5gOdo6uzRKQlI48SOpQmU2+60S
 N/2hQVJNM0X8G6+BR2k61H+/nzMHW0mpPRnLVbpI7xl0XPkrsiUv9S2U5ZRdPxNOAOvH
 8vFusa1efRBgxZjfmYBucNsI6D5DbwWPY6CYsElLb7wV/RPXjStQ7L8HMklySjWIL6my
 mcmQfSZDOi+SLbtjIYnVZaqevmMKkWHm1znapnrESA7vwmlUIfQaBVufWYAfoqNFanhu
 AD+PMg2SJ6zZk5o+zu4kKBeCf+b24lGHtcFM+YTFjRl2v1+R3gRZXzarshlwwofUv7Ku
 J7bg==
X-Gm-Message-State: AO0yUKXct5XrcMQ6pmsM+eXzWakiR0fRBAmOv8PA/VCtQd47t4bbkB9V
 loW/55rtBcGBrs7/BJXAf62h1A==
X-Google-Smtp-Source: AK7set9jWVEhwPAGmMP1q6mxH37JVc79+diom5D7Nq0GQOgWQNwmTt77Z+rZGJCp4VHPL8QeLHwHZg==
X-Received: by 2002:a17:906:4999:b0:87d:f1f9:a2fb with SMTP id
 p25-20020a170906499900b0087df1f9a2fbmr11258498eju.29.1675090692825; 
 Mon, 30 Jan 2023 06:58:12 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 rh16-20020a17090720f000b0084c7029b24dsm7036658ejb.151.2023.01.30.06.58.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Jan 2023 06:58:11 -0800 (PST)
Date: Mon, 30 Jan 2023 15:58:10 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: John Hickey <jjh@daedalian.us>
Message-ID: <Y9fbAqR+BDhlPb6I@nanopsycho>
References: <20230128011213.150171-1-jjh@daedalian.us>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230128011213.150171-1-jjh@daedalian.us>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HiGrD1dyHCsxNZSafiiQouritp32iJwUHx6VOOxAvoU=;
 b=6TyF+8emNxzziWsWUGWqM4UZYfylE0d3H0jPQQo9Ldg+ZbpryIRFo9jTjTrSyX2A9c
 eXwx+jB+Z2Ytwg4EvHwJD66FjOVkG04QYF/AmsuuoXcwHa3yQThODcqd11Ga2xMyJGgz
 xsPwN2A4qKINz5jWIdfqUfauE+mjjMVHejGYpVXXf905/B92aW5qo1w6fz5nk+YawpEN
 KbkvniIuSjt3o+HNjxabCsZrdoc9/0kyj2EDLvqsvix61rTMQ6BaFSuIulHF7ORRNjDI
 TRb8j20IoT7NIlnwSw2hhdkY7PyGFzpREQvSnoBMNJXhSDqRjbIvsu7yqvlAJU7qe+lq
 g5JA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=6TyF+8em
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Panic during XDP_TX with > 64
 CPUs
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, intel-wired-lan@lists.osuosl.org,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sat, Jan 28, 2023 at 02:12:12AM CET, jjh@daedalian.us wrote:
>In commit 'ixgbe: let the xdpdrv work with more than 64 cpus'
>(4fe815850bdc8d4cc94e06fe1de069424a895826), support was added to allow
>XDP programs to run on systems with more than 64 CPUs by locking the
>XDP TX rings and indexing them using cpu % 64 (IXGBE_MAX_XDP_QS).
>
>Upon trying this out patch via the Intel 5.18.6 out of tree driver
>on a system with more than 64 cores, the kernel paniced with an
>array-index-out-of-bounds at the return in ixgbe_determine_xdp_ring in
>ixgbe.h, which means ixgbe_determine_xdp_q_idx was just returning the
>cpu instead of cpu % IXGBE_MAX_XDP_QS.
>
>I think this is how it happens:
>
>Upon loading the first XDP program on a system with more than 64 CPUs,
>ixgbe_xdp_locking_key is incremented in ixgbe_xdp_setup.  However,
>immediately after this, the rings are reconfigured by ixgbe_setup_tc.
>ixgbe_setup_tc calls ixgbe_clear_interrupt_scheme which calls
>ixgbe_free_q_vectors which calls ixgbe_free_q_vector in a loop.
>ixgbe_free_q_vector decrements ixgbe_xdp_locking_key once per call if
>it is non-zero.  Commenting out the decrement in ixgbe_free_q_vector
>stopped my system from panicing.
>
>I suspect to make the original patch work, I would need to load an XDP
>program and then replace it in order to get ixgbe_xdp_locking_key back
>above 0 since ixgbe_setup_tc is only called when transitioning between
>XDP and non-XDP ring configurations, while ixgbe_xdp_locking_key is
>incremented every time ixgbe_xdp_setup is called.
>
>Also, ixgbe_setup_tc can be called via ethtool --set-channels, so this
>becomes another path to decrement ixgbe_xdp_locking_key to 0 on systems
>with greater than 64 CPUs.
>
>For this patch, I have changed static_branch_inc to static_branch_enable
>in ixgbe_setup_xdp.  We aren't counting references and I don't see any
>reason to turn it off, since all the locking appears to be in the XDP_TX
>path, which isn't run if a XDP program isn't loaded.
>
>Signed-off-by: John Hickey <jjh@daedalian.us>

This is missing "Fixes" tag and "net" keyword in "[patch]" subject
section.


>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 3 ---
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
> 2 files changed, 1 insertion(+), 4 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
>index f8156fe4b1dc..0ee943db3dc9 100644
>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
>@@ -1035,9 +1035,6 @@ static void ixgbe_free_q_vector(struct ixgbe_adapter *adapter, int v_idx)
> 	adapter->q_vector[v_idx] = NULL;
> 	__netif_napi_del(&q_vector->napi);
> 
>-	if (static_key_enabled(&ixgbe_xdp_locking_key))
>-		static_branch_dec(&ixgbe_xdp_locking_key);
>-
> 	/*
> 	 * after a call to __netif_napi_del() napi may still be used and
> 	 * ixgbe_get_stats64() might access the rings on this vector,
>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>index ab8370c413f3..cd2fb72c67be 100644
>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>@@ -10283,7 +10283,7 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
> 	if (nr_cpu_ids > IXGBE_MAX_XDP_QS * 2)
> 		return -ENOMEM;
> 	else if (nr_cpu_ids > IXGBE_MAX_XDP_QS)
>-		static_branch_inc(&ixgbe_xdp_locking_key);
>+		static_branch_enable(&ixgbe_xdp_locking_key);
> 
> 	old_prog = xchg(&adapter->xdp_prog, prog);
> 	need_reset = (!!prog != !!old_prog);
>-- 
>2.37.2
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
