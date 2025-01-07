Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69373A0434E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 15:52:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24CF580572;
	Tue,  7 Jan 2025 14:52:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ki2Iy4QptOU0; Tue,  7 Jan 2025 14:52:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C3078058D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736261554;
	bh=ZtY/dTGdpigf++m9/HYVL1sEfcqNn5ZD1yZ5BGh2v6I=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NfORtWn8y4fyzNfga+ZGLkpKIqEZnoE1XIl86P9pXU1l8O4kCcXIOjUe7cy+Z6vrw
	 x4ZdSKcdR+gTQIYZvi9n7qScW/Wed5wvOMOwIXupbFkrrVpv7ry403ojOoFF6gQRzP
	 4cK9Zy0AYKp1MtKb3oOm75XvlUZYItD2uqtdymGaUA5+ggFbHzGcj4Bzzsh9USMAa3
	 xFQH3jey6AHHu25yAf6YTRLHASxd8yOdlEBjfh3zL1wh+dlQFhKcAF4R4suCb/9va6
	 IqENrf+gBSavTG6cGiwDMxzhnTW1rQUtb3XQF59/NWyEE/C4N9zaFxPRXhyIJN8rcn
	 3+TbaG65W1GCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C3078058D;
	Tue,  7 Jan 2025 14:52:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B472B6B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 14:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF0DD60794
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 14:52:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id botZtFmzMRpy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 14:52:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0D3BF60782
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D3BF60782
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D3BF60782
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 14:52:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9C2E35C6331;
 Tue,  7 Jan 2025 14:51:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFB03C4CED6;
 Tue,  7 Jan 2025 14:52:21 +0000 (UTC)
Message-ID: <02896f96-57dd-47d5-8fa0-8a8aed30fa9a@kernel.org>
Date: Tue, 7 Jan 2025 15:52:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yunsheng Lin <linyunsheng@huawei.com>, davem@davemloft.net,
 kuba@kernel.org, pabeni@redhat.com
Cc: liuyonglong@huawei.com, fanghaiqing@huawei.com, zhangkun09@huawei.com,
 Wei Fang <wei.fang@nxp.com>, Shenwei Wang <shenwei.wang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, Jeroen de Borst <jeroendb@google.com>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Shailend Chand <shailend@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>,
 Shayne Chen <shayne.chen@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Kalle Valo <kvalo@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Simon Horman <horms@kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, imx@lists.linux.dev,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20250106130116.457938-1-linyunsheng@huawei.com>
 <20250106130116.457938-2-linyunsheng@huawei.com>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <20250106130116.457938-2-linyunsheng@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736261550;
 bh=WxQAHvKNDf1t1y8WP8kQLuS53Cn56vM/HgaXsAHmZu0=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=DJ5a28p5C1p3qCfa8LQJ394zZ/jabUsHQ9XSSnPY6jxqQjGkXKBNrLbl5sPl1Pitn
 f20Uxn92kTDumq0VBTngaUAIK0G17qi1lCrL+ztyW/bV13vHfbuVOwxBxhMhZ8a6lw
 ugnObBQzN6unU3idmrKZnnXPImvquLAWlG4c5DZW1cEJuTrlvbLnlKwar+lal66IAM
 WvPCehI17rTQ+M5FsSmolNp0pm/VkSzcgGU47LQqUaJQn01r4Q/VSN5CwmSxCZBWil
 tsNTk4s8VZuG9K8PIlIA4vOrDon6IFavxkSzotHbTbkj6gVLk5FIKt7ihCdc8+eNSD
 4P7F8SrHOZjVw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=DJ5a28p5
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/8] page_pool: introduce
 page_pool_get_pp() API
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


On 06/01/2025 14.01, Yunsheng Lin wrote:
 > introduce page_pool_get_pp() API to avoid caller accessing
 > page->pp directly.
 >
[...]

> diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helpers.h
> index 543f54fa3020..9c4dbd2289b1 100644
> --- a/include/net/page_pool/helpers.h
> +++ b/include/net/page_pool/helpers.h
> @@ -83,6 +83,11 @@ static inline u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats)
>   }
>   #endif
>   
> +static inline struct page_pool *page_pool_get_pp(struct page *page)
> +{
> +	return page->pp;
> +}

IMHO the function name "page_pool_get_pp" is problematic. As calling it 
"get" indicate to me that we are taking some reference on the pp object. 
Is this you plan in later patches?

If it is simply a dereference of page->pp ... then we could call it 
page2pp ?
... but I'm uncertain why we need this change.

--Jesper

