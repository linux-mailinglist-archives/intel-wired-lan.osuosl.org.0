Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A660E30816C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jan 2021 23:51:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5CFA78612B;
	Thu, 28 Jan 2021 22:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NcWHYyDaPhdL; Thu, 28 Jan 2021 22:51:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80894860F8;
	Thu, 28 Jan 2021 22:51:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C04081BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:51:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A691A2040F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:51:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aN7rhCwsNso7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jan 2021 22:51:32 +0000 (UTC)
X-Greylist: delayed 00:06:07 by SQLgrey-1.7.6
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by silver.osuosl.org (Postfix) with ESMTPS id ECA0E2033F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:51:32 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id t25so5310651pga.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 14:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=cbREDcYUxdGPWuZgrjmxI5lJSyINoM6pZuP8VJQYcBo=;
 b=ewjgG2AitYQp4pR9LLq/tqMYwnkFQZMJwHV8dd5+P0lSWU/WAGkDWJkNSkhhHO1LhD
 yWduDr7ASEWl6p1Gh5LXct/KLCVZRbh1Vz7VPKX6RvOQzaN7p70IOUlTuf5IXKs4Yh87
 5BgRM1DILAYPL4ZGok0do/GOURwRmcb22SyrNd5SfM/gixVkT8qoX+cyJpEv8fa5m9Ib
 jprArihDrGfUsIobODolmJ0tGUvqPW98PLhRZX1SdPYWKnUb0eMHVkotno395LYey9rq
 0v//KPAC4zpmFUMGUIcHUt7amWMNjxhruYpGecyr1o4snnqTuvdYBgDKi75JeHKcplS1
 lLAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=cbREDcYUxdGPWuZgrjmxI5lJSyINoM6pZuP8VJQYcBo=;
 b=FLLUsDqj3xTM6OBSIGDBZEVIRtGfT25RFfPvff6HsuQONSUu1oVGuSTIbhhoef6TiL
 K4aOlseYyAys3aIqITnxSTI/BplwgvsgMKETFIBTmoLb/t1+8b/02yp5YwHlJrv0vfIG
 ruDEqgrJX+ct3diN4Ndb/ZjvVQqr8OFDQUoKIJ3BUT/IrFCJlT4hfzU9/BUMMt921QWS
 2bv40srAgcztha8wEGOkkhnXvhdY/tXY6rKXkWbEjxqlFNxIUl977xb7S4xci8XUuR4y
 /B9Sk+AoAqyqy7kU61E93UG3gGI7P5GHaeQh9HU0C/KYIK9a4x/EcyEcQRWjR3asKK8i
 6Ymw==
X-Gm-Message-State: AOAM532Ofj8KEV/mLzwJ1MaqvfVdiqUlbUCylecMef/MMmniZHTmR5gL
 1zhGtbjc1/Xs7eOJs2OZ6x/BXI2lXoInMA==
X-Google-Smtp-Source: ABdhPJwWjMZAyLfJ0E9B8GRyN2meuwNffp9+5ZYWtwCpfUrwQjj8uej2C7H59DTF1LfNJWBTTZ9/zA==
X-Received: by 2002:a63:db54:: with SMTP id x20mr1543682pgi.200.1611873925104; 
 Thu, 28 Jan 2021 14:45:25 -0800 (PST)
Received: from [2620:15c:17:3:4a0f:cfff:fe51:6667]
 ([2620:15c:17:3:4a0f:cfff:fe51:6667])
 by smtp.gmail.com with ESMTPSA id d21sm6051801pjz.39.2021.01.28.14.45.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 14:45:24 -0800 (PST)
Date: Thu, 28 Jan 2021 14:45:23 -0800 (PST)
From: David Rientjes <rientjes@google.com>
To: Alexander Lobakin <alobakin@pm.me>
In-Reply-To: <20210127201031.98544-3-alobakin@pm.me>
Message-ID: <b1d34275-1564-a46c-601b-a4b9865f50c7@google.com>
References: <20210127201031.98544-1-alobakin@pm.me>
 <20210127201031.98544-3-alobakin@pm.me>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 2/4] skbuff: constify
 skb_propagate_pfmemalloc() "page" argument
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
Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-mm@kvack.org,
 Jakub Sitnicki <jakub@cloudflare.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 27 Jan 2021, Alexander Lobakin wrote:

> The function doesn't write anything to the page struct itself,
> so this argument can be const.
> 
> Misc: align second argument to the brace while at it.
> 
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Acked-by: David Rientjes <rientjes@google.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
