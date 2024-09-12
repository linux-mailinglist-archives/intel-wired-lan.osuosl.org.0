Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBAD976BED
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 16:25:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69F9E61112;
	Thu, 12 Sep 2024 14:25:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AqazseCjnT-C; Thu, 12 Sep 2024 14:25:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9641761116
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726151141;
	bh=iwLc+XjyWhYA8wehQi12J7lKOf62muLl4QoZfdwa35k=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xz4EyduN67BzUWxCi4Jku/yiemILfLj2kRlRzCG8ffXQcBSPt6SIH95xqKQbHbZd7
	 AggE1+ROap3pOydXAAYSkHR4SQAd9IXvYfcM/6ZxFSjV7c9AQc+bBVx+AFXP5cBJJA
	 7mBoteVMJrkqG6NUwO2PTgPbgcN3lMPqGsAf+UTWhCkTgZWL2+jfC3oO8KfuRlhhiF
	 hO6Ad9WeSITvo/kZ3hTYX6cQkEvXp+wqZivSxwLo6US9R6PJtEnROkmE9dtpCpvzaa
	 4OfFSd6tiraDyw0FJYXFzWbhNxS6k9d7CkwWWGPbWGfsQLu41/NgAPcOjeq7+722b3
	 g6A7izlDHNPpw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9641761116;
	Thu, 12 Sep 2024 14:25:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29C4A1BF97A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 14:25:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 249F66110D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 14:25:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dvmulj4ZsF2l for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 14:25:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::829; helo=mail-qt1-x829.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 47D4460D7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47D4460D7B
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com
 [IPv6:2607:f8b0:4864:20::829])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 47D4460D7B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 14:25:39 +0000 (UTC)
Received: by mail-qt1-x829.google.com with SMTP id
 d75a77b69052e-4582b71df40so237841cf.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 07:25:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726151138; x=1726755938;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iwLc+XjyWhYA8wehQi12J7lKOf62muLl4QoZfdwa35k=;
 b=Eu42o62macblJyc9NOKZJiOacuyhfwmIESizGomTeb5FSu3mMw0/kpUvXH/AMfYiB0
 lRPq+UzPVD5HEpoZbXAnd5RDaR90AQl6AsApQXiT9AJHwle3T03y5cc2h4Cf8DMRiCLR
 +rLn3y5sjb0nsWNbFzb35kA8gI5hcOLI2DeTw3V6bbIMhwiR9PtgujvtppC0snXQwUYs
 Y0IWfXjBrE5quF4gVmVdklMrCiqACQ77w+tMrG68nlhDBvPx9RsdAeuOawqD0VZmHLKS
 bSoo+b+lHojxGLLVrwqUoQ6F0pQH85qXwD9VrJICsKkUkiAMGMYn1WF+dSgF575EehG9
 kt0g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWu4+dhRncP5AVwj3TqSUFeztMZJ3yp5g5YAWWAxqFaiS4rpg19jjlsSZTNIPck1hR6PGRou81GIWocKb08Hp0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy+iZgqoecTPNk80RLvCCLhMA9w8p1vxXWbY0ctsAYcbK/F1+GH
 Ta+/7PEAgdPhFsd8qKtwcn6Vwjp66njzFD6VneR+fCkwCnBOacjVHZHdnMYkYGim7AQ53lH8Tzx
 A109hMxD1S5nHjR8ote0KQCaKEWHlEBc6P23e
X-Google-Smtp-Source: AGHT+IFyltmncYSZz561uPWQsvsGb5DFmLf+mGb3Vo6WS5NNhJE43ms4WKqkq6D4X3fyD6kxk1+1bYCNn1kURkFiU6A=
X-Received: by 2002:a05:622a:202:b0:456:7f34:f560 with SMTP id
 d75a77b69052e-458608812bdmr4020001cf.22.1726151137360; Thu, 12 Sep 2024
 07:25:37 -0700 (PDT)
MIME-Version: 1.0
References: <20240912124514.2329991-1-linyunsheng@huawei.com>
 <20240912124514.2329991-3-linyunsheng@huawei.com>
In-Reply-To: <20240912124514.2329991-3-linyunsheng@huawei.com>
From: Mina Almasry <almasrymina@google.com>
Date: Thu, 12 Sep 2024 07:25:23 -0700
Message-ID: <CAHS8izPc8fy08mL1RJtnxiOvTx=Uk037Q5SKobC80jQocEKMJQ@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1726151138; x=1726755938; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iwLc+XjyWhYA8wehQi12J7lKOf62muLl4QoZfdwa35k=;
 b=l8BhhC6bRyouylQJhwshRAWgl7B9sMri192ebqa/QPuJ0k1gKuPC1W8RH84v6co9Pu
 JIMEx4bBkcEpm4RQG92bmNFjX538/eX4wg4jOaArgCGuuB0t4ea1KN7svuTYZRdn1Mv9
 2mcfIZrPncwEqB4jYtFfWAIAHAja/tKqGwsauqZunQVcU4JWFMJ/BZqI14jR6VLA/+us
 8lkbf2PxKL+HWBsP0QS0MoIQvc16LBtF0bilyEQ6/3+WhhtpQFpH7Orlyck7U3+/V5wj
 OmFLChadnBgA3z6+qv6qJP1HDDgNRpflbiKf10KI7NLqmZu+PLj//M3m4R54wAQ0crD0
 f+ZQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=l8BhhC6b
Subject: Re: [Intel-wired-lan] [RFC 2/2] page_pool: fix IOMMU crash when
 driver has already unbound
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
Cc: imx@lists.linux.dev, Alexei Starovoitov <ast@kernel.org>,
 Alexander Duyck <alexander.duyck@gmail.com>, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Shenwei Wang <shenwei.wang@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Daniel Borkmann <daniel@iogearbox.net>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, IOMMU <iommu@lists.linux.dev>,
 liuyonglong@huawei.com, Clark Wang <xiaoning.wang@nxp.com>,
 fanghaiqing@huawei.com, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Wei Fang <wei.fang@nxp.com>,
 kuba@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Leon Romanovsky <leon@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Saeed Mahameed <saeedm@nvidia.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 12, 2024 at 5:51=E2=80=AFAM Yunsheng Lin <linyunsheng@huawei.co=
m> wrote:
>
> Networking driver with page_pool support may hand over page
> still with dma mapping to network stack and try to reuse that
> page after network stack is done with it and passes it back
> to page_pool to avoid the penalty of dma mapping/unmapping.
> With all the caching in the network stack, some pages may be
> held in the network stack without returning to the page_pool
> soon enough, and with VF disable causing the driver unbound,
> the page_pool does not stop the driver from doing it's
> unbounding work, instead page_pool uses workqueue to check
> if there is some pages coming back from the network stack
> periodically, if there is any, it will do the dma unmmapping
> related cleanup work.
>
> As mentioned in [1], attempting DMA unmaps after the driver
> has already unbound may leak resources or at worst corrupt
> memory. Fundamentally, the page pool code cannot allow DMA
> mappings to outlive the driver they belong to.
>
> Currently it seems there are at least two cases that the page
> is not released fast enough causing dma unmmapping done after
> driver has already unbound:
> 1. ipv4 packet defragmentation timeout: this seems to cause
>    delay up to 30 secs:
>
> 2. skb_defer_free_flush(): this may cause infinite delay if
>    there is no triggering for net_rx_action().
>
> In order not to do the dma unmmapping after driver has already
> unbound and stall the unloading of the networking driver, add
> the pool->items array to record all the pages including the ones
> which are handed over to network stack, so the page_pool can
> do the dma unmmapping for those pages when page_pool_destroy()
> is called.
>

The approach in this patch is a bit complicated. I wonder if there is
something simpler that we can do. From reading the thread, it seems
the issue is that in __page_pool_release_page_dma we're calling
dma_unmap_page_attrs() on a pool->p.dev that has been deleted via
device_del, right?

Why not consider pool->p.dev unusable if pool->destroy_cnt > 0? I.e.
in __page_pool_release_page_dma, we can skip dma_unmap_page_attrs() if
destry_cnt > 0?

More generally, probably any use of pool->p.dev may be invalid if
page_pool_destroy has been called. The call sites can be scrubbed for
latent bugs.

The hard part is handling the concurrency. I'm not so sure we can fix
this without introducing some synchronization between the
page_pool_destroy seeing the device go away and the code paths using
the device. Are these being called from the fast paths? Jespers
benchmark can tell for sure if there is any impact on the fast path.

> Note, the devmem patchset seems to make the bug harder to fix
> and to backport too, this patch does not consider fixing the
> case for devmem yet.
>

FWIW from a quick look I did not see anything in this patch that is
extremely hard to port to netmem. AFAICT the issue is that you skipped
changing page_pool to page_pool_items in net_iov. Once that is done, I
think the rest should be straightforward.

--=20
Thanks,
Mina
