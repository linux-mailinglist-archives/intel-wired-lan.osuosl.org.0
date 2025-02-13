Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06315A33F1B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 13:26:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66D6B6122A;
	Thu, 13 Feb 2025 12:26:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TcawOKLTL5Q2; Thu, 13 Feb 2025 12:26:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B070A6126C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739449605;
	bh=xEe6I1tgC5IN6/Wq62N1ONtXhNM2tczBomQlUMLqsX4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ouc5al71SFesUDTDU0hQtdq1uCnxWCG2axFPRGuvKZXi313BlZo5pAJDFIMuM/fM2
	 EjbapDOivA1LORLfAQQSJRwZ9KYsa0e9l0Lexuz0UlyUlWN4Xh7kZNgAlKcqVb0JrR
	 jNUBJMFws7i/mCBFzqWu6TS5HX3HE6qWy9Ly0IPrb1BVxhErAehz7ADj/v6EYNMJQK
	 0YJ9i1MgrLaKG0JvpKrsOdqOmELlgquEcBQ3tpehxb4ZyNwg6dq3dRCJwyFD+V1Xoe
	 2ldba5fKEGG8WgGSA4OsjZ4KMSwcGlL5QpS89niZEdiZi1J0ai+RHGOU2hkxcC1nbJ
	 JQTud6qKa4Qzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B070A6126C;
	Thu, 13 Feb 2025 12:26:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9841412D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:26:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B1F740716
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:26:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TFwxYYZGFjG3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 12:26:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 577EC40652
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 577EC40652
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 577EC40652
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:26:42 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-298-1BmCHyeROWu-YnH3zuSKkA-1; Thu, 13 Feb 2025 07:26:38 -0500
X-MC-Unique: 1BmCHyeROWu-YnH3zuSKkA-1
X-Mimecast-MFC-AGG-ID: 1BmCHyeROWu-YnH3zuSKkA_1739449597
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-4388eee7073so9632255e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 04:26:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739449597; x=1740054397;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xEe6I1tgC5IN6/Wq62N1ONtXhNM2tczBomQlUMLqsX4=;
 b=fgU+BmPc1ctgitM0lp+K96BjYA78qcT7Jnrel8cn3XqQa8XlGnWJi8p1Lk/fJjXF0i
 ZfHGQ8NXyj9+k1TfGoOWHTUi9xGJEgccwJJq7//27uMlNpn7TjhrZJUWeJFmhqH3nCXE
 RaVNMi+O86/honnAp9oWcQoT/0ZXXbulmwCXBMFfgyhAz46nV5e4ETR2+f0CSnsRnRgQ
 Ba9CSt+Kz0RYr6OVwe1fKr1Mgscf/OtkdS+/ee3FOndBA2b95s0u7yGMz5cEVs5HzaXH
 aGOfzN80Xw98zpdazDlF99qhLll1p/o4sgYOuDzlHs8mpVYNFtcq52UlOyabubYmp2XO
 4GCg==
X-Gm-Message-State: AOJu0YwX1wGyRm7DeXcI+2gB9/9Si5B+A8uIul5tzyOw2uIpN+9xNGXW
 BSMZjR7/ey3A0qzUJxfPH34jJDte1lWBDavWMqg5ADIP6HSiSxTDtVUs9SoBRpnBhMkv66aPN3j
 fwANvNv/ZggH2iTPf132RmKCfwWVzg3DUHQKVuK3hZvAV0WL8FBzvVrwpl/grUVw+i+U=
X-Gm-Gg: ASbGncv8hX41rT4U97n0lDf+GxsBB1f00KuqS97l4bc4bW0qDUZkszo8Q1LD/OujDQp
 XepUWZSzIBGY/UuafKUBV04HFKAMepCC4MJQSD8aMAwsDWMHT7Ce1mMFJ/WgI98n+tyv/0K+3Se
 m4bWgw9I3jDzoYfiYv6/zXxojkP06Z9ErhAHtTYIND8OqmfknIw4FP8QE95OKQm5NnfcNVsBWmJ
 xZuVzCpcIvd9aVcExqR8sDrpAxjjZetfOQlhRDdmB51tWU55YvYLT6HwnJ5NGwIZ5KXtTFIakog
 Lrr5racBZ54j4Z0Ta8iGuUCwnhP1q8duszM=
X-Received: by 2002:a05:600c:3485:b0:439:5736:454d with SMTP id
 5b1f17b1804b1-43960d7da53mr26850525e9.1.1739449596980; 
 Thu, 13 Feb 2025 04:26:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH2t5vG5oik5wiNL4Wj3F5RKYuWhD0Di7fEhtXDr94Qm7SdBE6dVVsNEXYaBZYdboLIClF0rQ==
X-Received: by 2002:a05:600c:3485:b0:439:5736:454d with SMTP id
 5b1f17b1804b1-43960d7da53mr26850185e9.1.1739449596616; 
 Thu, 13 Feb 2025 04:26:36 -0800 (PST)
Received: from [192.168.88.253] (146-241-31-160.dyn.eolo.it. [146.241.31.160])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4394dc1c2aasm56592615e9.0.2025.02.13.04.26.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Feb 2025 04:26:36 -0800 (PST)
Message-ID: <738fed19-378f-4aa9-8d42-5c18b8ea321d@redhat.com>
Date: Thu, 13 Feb 2025 13:26:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, davem@davemloft.net,
 michael.chan@broadcom.com, tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com, pavan.chebbi@broadcom.com
References: <20250211210657.428439-1-ahmed.zaki@intel.com>
 <20250211210657.428439-4-ahmed.zaki@intel.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250211210657.428439-4-ahmed.zaki@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RiupnMhZKsSMsYiDqgr-Yikm_LS_nZBlynex09s1AUM_1739449597
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1739449601;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xEe6I1tgC5IN6/Wq62N1ONtXhNM2tczBomQlUMLqsX4=;
 b=GpoS57nyg6tRgP5sdQz6B2fo/BLcVNnrxhJVQRTIWXFKJvx/8ew8D2L6JpB3epzdSNvoA6
 Xh9mcGS0+1fN0Nv87Za41OWzL8xiczs1d44bIGqWG4ZBaNCWjDMqtxlDqFW4tDhNjFbiwl
 6cQmrw05CBlPWpUvfJejWMiy6wWafus=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GpoS57ny
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 3/6] net: napi: add CPU
 affinity to napi_config
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/11/25 10:06 PM, Ahmed Zaki wrote:
> @@ -394,10 +395,8 @@ struct napi_struct {
>  	struct list_head	dev_list;
>  	struct hlist_node	napi_hash_node;
>  	int			irq;
> -#ifdef CONFIG_RFS_ACCEL
>  	struct irq_affinity_notify notify;
>  	int			napi_rmap_idx;
> -#endif

I'm sorry for the late doubt, but it's not clear to me why you need to
add the #ifdef in the previous patch ?!?

> diff --git a/net/core/dev.c b/net/core/dev.c
> index 209296cef3cd..d2c942bbd5e6 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -6871,28 +6871,39 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
>  }
>  EXPORT_SYMBOL(netif_queue_set_napi);
>  
> -#ifdef CONFIG_RFS_ACCEL
>  static void
> -netif_irq_cpu_rmap_notify(struct irq_affinity_notify *notify,
> -			  const cpumask_t *mask)
> +netif_napi_irq_notify(struct irq_affinity_notify *notify,
> +		      const cpumask_t *mask)
>  {
>  	struct napi_struct *napi =
>  		container_of(notify, struct napi_struct, notify);
> +#ifdef CONFIG_RFS_ACCEL
>  	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
>  	int err;
> +#endif
>  
> -	err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
> -	if (err)
> -		netdev_warn(napi->dev, "RMAP update failed (%d)\n",
> -			    err);
> +	if (napi->config && napi->dev->irq_affinity_auto)
> +		cpumask_copy(&napi->config->affinity_mask, mask);
> +
> +#ifdef CONFIG_RFS_ACCEL
> +	if (napi->dev->rx_cpu_rmap_auto) {
> +		err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
> +		if (err)
> +			netdev_warn(napi->dev, "RMAP update failed (%d)\n",
> +				    err);
> +	}
> +#endif

Minor nit: if you provide a netif_rx_cpu_rmap() helper returning
dev->rx_cpu_rmap or NULL for !CONFIG_RFS_ACCEL build, you can avoid the
above 2 ifdefs and possibly more below.

> @@ -6915,7 +6926,6 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
>  	if (rc)
>  		goto err_set;
>  
> -	set_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state);

Minor nit: I think it would be better if the previous patch would add
directly this line in netif_napi_set_irq_locked() (avoding the removal
here).

/P

