Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33699308149
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jan 2021 23:45:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC32385F4C;
	Thu, 28 Jan 2021 22:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3I7TF8IN8-j1; Thu, 28 Jan 2021 22:45:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03CE686130;
	Thu, 28 Jan 2021 22:45:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D92171BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D4700873C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vjISwHTz1xEF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jan 2021 22:44:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
 [209.85.210.181])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EEB3E8738D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:44:58 +0000 (UTC)
Received: by mail-pf1-f181.google.com with SMTP id t29so4966354pfg.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 14:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=QyEif4VyZcju9R1mKoD/tD54DKRTJWeE0Dgl2QjUm3c=;
 b=E26b/trYarb6KK70wmR2E+OJdxnTogS0ETGiS4abIvOyQHhJ8LxMz2KTBkXLCM/Ivv
 Z38c7DceiM9rPWg4EbbGD6Ndc94tPNlIyO57WDIxZs4kdZgV97NjdGB3o5Yc6EYFHBS+
 U3hVoCrWKgtF8D8GyAEm5f79ee+yC8aG/DXgUbcf3HYHiFYYUQ5CGmnWh76CpA+C7kdh
 3v+fSEyuTVwNSc1mPIqvneBw0dEwM3GsCF44182C+FnDx+qf6IugERbk0zPFcebbc2bV
 8l3NyThctWYb7ePNlX/3tABBo7cx0nuwxSgaikbyDSHp2llydDsZu3tdNCYcUtBzOvvy
 Y1QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=QyEif4VyZcju9R1mKoD/tD54DKRTJWeE0Dgl2QjUm3c=;
 b=LnXDSap58B1zAeYxYOfwFUXF1z7oaSjpENpSGfwcTeqwL47/kLQlfR2pi+ygDTXY/N
 k3fSeoJmZyxhjmmKsmKgWnavIsuip3S1kvHPQtGLfgEYp6AaFPw9wZqooNYTTsh4jYVp
 j7UFnrJVXluh1utua81Dm+CKNR3RrX/yLiQvzftzKT8NzAdIKQWtQ77N+OcxcPhrFeyk
 Jrb3YyMvPKdcjKvzQu/H94zODfjm4wI45wYYe8jh4n8UOKSwxaaIXbxihDZdlVY/UZpb
 +4fHp+UNcbwyuYqw0Y8FxTmox/ynYaQuUIeJzyA8H7IgCbGmNvVDgEJjg+vRA1vbHYzK
 o8Vw==
X-Gm-Message-State: AOAM531O/9LtkvW9eAPW3fLcQeiiHbWGgX19i8YZApa0xpj7r6qR6Ox0
 A8ZaOVuCgf3PnEmQ1IzCyooRoQ==
X-Google-Smtp-Source: ABdhPJwWaYtvgJm8E+ti9h4XRgK7o9llC19o2oBo8G1fBLSQVe7N3WjmyzApdRZlT+yP8f2GiPEGsw==
X-Received: by 2002:a63:2259:: with SMTP id t25mr1530428pgm.395.1611873898388; 
 Thu, 28 Jan 2021 14:44:58 -0800 (PST)
Received: from [2620:15c:17:3:4a0f:cfff:fe51:6667]
 ([2620:15c:17:3:4a0f:cfff:fe51:6667])
 by smtp.gmail.com with ESMTPSA id 6sm6490348pfz.34.2021.01.28.14.44.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 14:44:57 -0800 (PST)
Date: Thu, 28 Jan 2021 14:44:56 -0800 (PST)
From: David Rientjes <rientjes@google.com>
To: Alexander Lobakin <alobakin@pm.me>
In-Reply-To: <20210127201031.98544-2-alobakin@pm.me>
Message-ID: <cf211a78-7ce7-90e0-a589-1eb0bdc44222@google.com>
References: <20210127201031.98544-1-alobakin@pm.me>
 <20210127201031.98544-2-alobakin@pm.me>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 1/4] mm: constify
 page_is_pfmemalloc() argument
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

> The function only tests for page->index, so its argument should be
> const.
> 
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Acked-by: David Rientjes <rientjes@google.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
