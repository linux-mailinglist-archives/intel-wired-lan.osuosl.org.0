Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28ADE3F5F94
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 15:54:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CBCB40153;
	Tue, 24 Aug 2021 13:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9K7oRp-Ji-bS; Tue, 24 Aug 2021 13:54:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFD0840165;
	Tue, 24 Aug 2021 13:54:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA2F11BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 13:32:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE9A660637
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 13:32:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k0gIEGxMcA4c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 13:32:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A99D60A58
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 13:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629811967;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QeV74JQJHRoEmeq7H6kmk/7VDFwFpt82W+iJfSrcr/0=;
 b=dI2EdCmDUHfLegT7gE2mirTT4JS1N/wZjyfD3GVXwNAN9eaFKMwqMcj1hmV/50knpBiZ2g
 /ESdT/mNx2+hRPhGcaMFG1p7BMqNSgmHDxf2srr5YX0az+RRIoYMd01f5xdzczzNMI72Sy
 5hA39ROmWZE2QQPeHc2POvCHYHgS4ew=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-TFL4cmcsP-exSPjcEC7uEQ-1; Tue, 24 Aug 2021 09:32:43 -0400
X-MC-Unique: TFL4cmcsP-exSPjcEC7uEQ-1
Received: by mail-wr1-f70.google.com with SMTP id
 d12-20020a056000186cb02901548bff164dso5736647wri.18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 06:32:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:cc:subject:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QeV74JQJHRoEmeq7H6kmk/7VDFwFpt82W+iJfSrcr/0=;
 b=ee6Fc3IM0knVIG8ZyaZYz92eCbomlGhtklYdXAAtFcs8TdWyB2lXKtPFeQIxStDeWR
 RTEMVto2HZSH7L/1/EKCg5OJKH/ohOil5qsWbfheUpFbSrb2RxYj0efk75ts61GR8woS
 2B9vdW+Xg1dctOgMCpJJ16NG5VhRBL83gDijRbWXmokwuSJ/vl+8euI7Tg0Y+VtaXovK
 h5wK27zCj9FndM4Os7wSre2MfCF+JFLAtX+ztbHLHz3O0vMgKe4ffLyuQsxQHl50nDJd
 sf2uIVdPSyq9i1Qm8E13jiRuEKogfbVmHF/5fZJFZQAWARernupOTB7eQctacMTm/lsX
 dbAg==
X-Gm-Message-State: AOAM532IORnT7o9NRi8B2XatqaFfXxXiv3hdnEjVfLse6N5d0C/rT0sB
 nYLil4kHf8+aX6HrUIlyV4LnESX6/6rsDCe2bTOylP60iGH6y/L9a9ZrOfcQAfi4kN/RDlgZ4Ij
 gV/RDcfu7VXfaD0ND1mPV3Z8eCByhzg==
X-Received: by 2002:a1c:9acc:: with SMTP id c195mr4245404wme.69.1629811962679; 
 Tue, 24 Aug 2021 06:32:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxJOUQhZGHcg+h797DWQJpPSgDrZrkLJZOaYSjluUYhh54hujkxG8C8Pjz+eoTss4z6d9NpTg==
X-Received: by 2002:a1c:9acc:: with SMTP id c195mr4245358wme.69.1629811962408; 
 Tue, 24 Aug 2021 06:32:42 -0700 (PDT)
Received: from [192.168.42.238] (3-14-107-185.static.kviknet.dk.
 [185.107.14.3])
 by smtp.gmail.com with ESMTPSA id z7sm2316517wmi.4.2021.08.24.06.32.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Aug 2021 06:32:42 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
To: kerneljasonxing@gmail.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, kpsingh@kernel.org
References: <20210824104918.7930-1-kerneljasonxing@gmail.com>
Message-ID: <59dff551-2d52-5ecc-14ac-4a6ada5b1275@redhat.com>
Date: Tue, 24 Aug 2021 15:32:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210824104918.7930-1-kerneljasonxing@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Approved-At: Tue, 24 Aug 2021 13:54:31 +0000
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: let the xdpdrv work with more
 than 64 cpus
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
Cc: =?UTF-8?B?w43DsWlnbyBIdWd1ZXQ=?= <ihuguet@redhat.com>,
 Shujin Li <lishujin@kuaishou.com>, Jason Xing <xingwanli@kuaishou.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, bpf@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 24/08/2021 12.49, kerneljasonxing@gmail.com wrote:
> From: Jason Xing <xingwanli@kuaishou.com>
> 
> Originally, ixgbe driver doesn't allow the mounting of xdpdrv if the
> server is equipped with more than 64 cpus online. So it turns out that
> the loading of xdpdrv causes the "NOMEM" failure.
> 
> Actually, we can adjust the algorithm and then make it work, which has
> no harm at all, only if we set the maxmium number of xdp queues.

This is not true, it can cause harm, because XDP transmission queues are 
used without locking. See drivers ndo_xdp_xmit function ixgbe_xdp_xmit().
As driver assumption is that each CPU have its own XDP TX-queue.

This patch is not a proper fix.

I do think we need a proper fix for this issue on ixgbe.


> Fixes: 33fdc82f08 ("ixgbe: add support for XDP_TX action")
> Co-developed-by: Shujin Li <lishujin@kuaishou.com>
> Signed-off-by: Shujin Li <lishujin@kuaishou.com>
> Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 2 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ---
>   2 files changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> index 0218f6c..5953996 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> @@ -299,7 +299,7 @@ static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
>   
>   static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
>   {
> -	return adapter->xdp_prog ? nr_cpu_ids : 0;
> +	return adapter->xdp_prog ? min_t(int, MAX_XDP_QUEUES, nr_cpu_ids) : 0;
>   }
>   
>   #define IXGBE_RSS_64Q_MASK	0x3F
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 14aea40..b36d16b 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -10130,9 +10130,6 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
>   			return -EINVAL;
>   	}
>   
> -	if (nr_cpu_ids > MAX_XDP_QUEUES)
> -		return -ENOMEM;
> -
>   	old_prog = xchg(&adapter->xdp_prog, prog);
>   	need_reset = (!!prog != !!old_prog);
>   
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
