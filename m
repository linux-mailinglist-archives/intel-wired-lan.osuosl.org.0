Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3455308160
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jan 2021 23:49:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ACE7D868B5;
	Thu, 28 Jan 2021 22:49:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BcnzaLPGYRk6; Thu, 28 Jan 2021 22:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB4B986DCA;
	Thu, 28 Jan 2021 22:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BB201BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 422048696B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8kDUeAlY0TF9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jan 2021 22:49:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2B3AE868B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 22:49:30 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id 31so4175785plb.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jan 2021 14:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=G+ih4TCLjMlDhHUsK2A+TR2HHdkm5AqUa1C6G/BSwSU=;
 b=MtFfpkPTsZTn0gFaHxFhSWOMva66E/lvz+hUXR3FrCHa9T0vjY+xbhdIBytnfT4hde
 0Ys5AJYDByRiNPKT0aWC33/ZwpGaEnDVdDZLHxgNhDamHGH+rUdr/YNIrHzbogxyK2ot
 0DoGbhkKgR6CODspeFMH0JINuzKgti7159D7tR9XKwR9K09g/4AR5nAIex+fNblniZwf
 nuLbHpvajXVngPXWUmYWJr62ll4sVI6GL9+9DOw2ps6euNFMlJMMKUqLwUBvfOr4+JOI
 dE/ui+K9GxRvn1sNUBZjR8TFkXXLIPq75nHYRfA916R0qHMnMt7BOLu7EI21THYWQnjm
 aX5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=G+ih4TCLjMlDhHUsK2A+TR2HHdkm5AqUa1C6G/BSwSU=;
 b=OFzHbxYamg7f5xs/o9zbYr4ISrItLBJAS6VVMhBipKD9OU2lJ/HMIaxqJRKhVny02x
 3Fbu/7NptG3OTgjYC2MAXgDDUAbMhpePIuz8nu8zYQcR90ijbNut5/6xsnXX/f7pCPFP
 I0sFQZDbIVVdjWF63TafvjoOCcmQ94pNA2Uisd3tLojPaU5Y2/tDD3R394kz9ULvrHzk
 P03piRlqLZi6wclModwFHbescmW1TVePfne+urBvpWv8qu/82eeALPybwVdMCwdcr7Q4
 +UftGteXNe9Ik891ICYkY5wmXtM9CJqwjjfLhhmK3mNqaC9ktGVBX8UCiheewOkr81aU
 79og==
X-Gm-Message-State: AOAM533hhoxtpad373g+EuJMqsxQa+P8cbSidkEucdsq7O/xweT21ogj
 xWd+dGdfVVPFecMakox4SJVe8g==
X-Google-Smtp-Source: ABdhPJyfRuzHyqHVdqBK8f0+yDGR+PAfYB5Dc8yFBfd7wqG+BeYIWPtIjMNVkXFepyiH+P/AGil0yA==
X-Received: by 2002:a17:90a:470f:: with SMTP id
 h15mr1601393pjg.179.1611874169526; 
 Thu, 28 Jan 2021 14:49:29 -0800 (PST)
Received: from [2620:15c:17:3:4a0f:cfff:fe51:6667]
 ([2620:15c:17:3:4a0f:cfff:fe51:6667])
 by smtp.gmail.com with ESMTPSA id u126sm6508563pfu.113.2021.01.28.14.49.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 14:49:28 -0800 (PST)
Date: Thu, 28 Jan 2021 14:49:27 -0800 (PST)
From: David Rientjes <rientjes@google.com>
To: Alexander Lobakin <alobakin@pm.me>
In-Reply-To: <20210127201031.98544-5-alobakin@pm.me>
Message-ID: <7ac4064-b63-b26f-10db-68b83e6d4c6@google.com>
References: <20210127201031.98544-1-alobakin@pm.me>
 <20210127201031.98544-5-alobakin@pm.me>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 4/4] net: page_pool:
 simplify page recycling condition tests
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

> pool_page_reusable() is a leftover from pre-NUMA-aware times. For now,
> this function is just a redundant wrapper over page_is_pfmemalloc(),
> so Inline it into its sole call site.
> 
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Reviewed-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>

Acked-by: David Rientjes <rientjes@google.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
