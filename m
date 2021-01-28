Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4944230818B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jan 2021 23:55:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED34F8612B;
	Thu, 28 Jan 2021 22:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5SScksobe_aG; Thu, 28 Jan 2021 22:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C4F486130;
	Thu, 28 Jan 2021 22:55:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DB721BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 593A6873D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YAprMUG02N7N for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jan 2021 22:55:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B74D586D52
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:55:12 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id j2so3650246pgl.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 14:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=jRc+9koAFnFriBYMbCECl8bNtNHOFnGAZDdGQS3iVDU=;
 b=VX8To19226WV8RDTkFQ5ObLuNZF9XVTO28Kn6srr7oOvy3bJROldWKCMUzp1PQKXf9
 DxW/pzBX8qvpyf9JYyEV0tsfWnIQwh8StSLFabjSv9bq/h+LrM8BcShVwk+8h5JEIVAC
 m7rR/FINIdZ5nzLJ4PtqwDLyuNTB4ApMNbGX1tO8SauTFQvq0jZUXb6tQjVnZTTurC4o
 JnT9bk1zHAxQ/KJOZ2l5CO8dDG2tvWtV2Yqs/XVrEpJuA4GCbDFdVRNie/dpc5yVuHhc
 6tpUXWl/fB3cIiNkDeifZnbig6ARvwbuNY0PAKYEKLOUWsV+N9z5P3YBgnwxTr3v/Wvb
 uKpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=jRc+9koAFnFriBYMbCECl8bNtNHOFnGAZDdGQS3iVDU=;
 b=JGSo0myXVtTNtY1C5Moj2Iixi+DA7lZAGaZhscgdYn1C+hHmXA5mjYRUOq+lRUMGFj
 X1MQ9+sTWoW6BdF6IDLkuX/UT3ddia6XGfIZSSLAWt7GQWrMwJgGxHbkWtvY9LfArOpW
 U2/x4kIofIRvpGlAKSM6Cp47klhXesC9NLIHl/Xf64Y9qSAqwqydtYFurDZK4c9WVR+w
 lfmEo8IJFBjWG+12fZE67HsH1wnLjW//v9ePX9gHDHdgvgHrbMcvvr8og0ZTQtDAL9/b
 iyGWnDgExQgAccTz7XJReqSsVW3perQrryBrd13vMQYyg+eJ70xjjK3qMoBIy3zMflNq
 2oMA==
X-Gm-Message-State: AOAM5326RugY+Pnljff0cg3Ra/JRDlidYmtDoGRVOThqaMgrstAa+kJ9
 azDsxNZ31dv2IY6Xwrh2A7pm/rO0QKLLQw==
X-Google-Smtp-Source: ABdhPJwBVbXS8W3fPe5c+jU1CL/MRyTOw1r5xPcMxMQku9sVK6cWDkTe2rvBDuGwi5tcagKuWF06SA==
X-Received: by 2002:a62:f943:0:b029:1a5:43f9:9023 with SMTP id
 g3-20020a62f9430000b02901a543f99023mr1512252pfm.75.1611874125638; 
 Thu, 28 Jan 2021 14:48:45 -0800 (PST)
Received: from [2620:15c:17:3:4a0f:cfff:fe51:6667]
 ([2620:15c:17:3:4a0f:cfff:fe51:6667])
 by smtp.gmail.com with ESMTPSA id v1sm7110414pga.63.2021.01.28.14.48.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 14:48:44 -0800 (PST)
Date: Thu, 28 Jan 2021 14:48:43 -0800 (PST)
From: David Rientjes <rientjes@google.com>
To: Alexander Lobakin <alobakin@pm.me>
In-Reply-To: <20210127201031.98544-4-alobakin@pm.me>
Message-ID: <d8e86f1a-d2a6-d8af-142c-f735fd3be9f2@google.com>
References: <20210127201031.98544-1-alobakin@pm.me>
 <20210127201031.98544-4-alobakin@pm.me>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 3/4] net: introduce common
 dev_page_is_reserved()
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

> A bunch of drivers test the page before reusing/recycling for two
> common conditions:
>  - if a page was allocated under memory pressure (pfmemalloc page);
>  - if a page was allocated at a distant memory node (to exclude
>    slowdowns).
> 
> Introduce and use a new common function for doing this and eliminate
> all functions-duplicates from drivers.
> 
> Suggested-by: David Rientjes <rientjes@google.com>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Looks even better than I thought!

(Since all of the changes are in drivers/net/ethernet/, I assume 
everything directly or indirectly includes skbuff.h already.)

Acked-by: David Rientjes <rientjes@google.com>

Thanks for doing this.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
