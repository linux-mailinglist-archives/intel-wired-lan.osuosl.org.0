Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3156BA03396
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 00:52:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6CAD607FE;
	Mon,  6 Jan 2025 23:52:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XPA-gcUcjN1j; Mon,  6 Jan 2025 23:52:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F5406080F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736207522;
	bh=h+t1a+Wcy+KRp/X70C+xsAph3Osz6Q09Wwfd7it6d6E=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U5sPPTmcExePab7OGjO0usMqXfsVy1J8hjbpe04wmu4lC4ooBxhBkt6uc8jraos4p
	 4zrBdUFKwEa7z1ByBGTO4gOkntT0V00n5aizILEmc5VlbmhM0F31iVQMa3barYsMj9
	 UICzRExIdhjXCKEzKgaR8VPRDi4zB6rT/wnG8NeqKuQ4UFi+bA33wAJRHEYT6+tZaR
	 DZ8I8ycUSO9lWaQJChRj/O8cm7l5eu3Uv2MtXOtdLkG1GSQscvphEOQDj8wjIwvH+5
	 VBQTDp0/7qdEH8LrufJkC2qKq3XYB+rRTn/1ANcR9NsQP5gd6ggcNegMT4NTzH88eh
	 U8ynNZIJbvT1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F5406080F;
	Mon,  6 Jan 2025 23:52:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B3396B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 23:51:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D9CD781300
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 23:51:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id StsnnptRqhvs for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 23:51:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A85A3812FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A85A3812FD
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A85A3812FD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 23:51:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 58059A41F79;
 Mon,  6 Jan 2025 23:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DAA0C4CED2;
 Mon,  6 Jan 2025 23:51:56 +0000 (UTC)
Date: Mon, 6 Jan 2025 15:51:54 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Yunsheng Lin <linyunsheng@huawei.com>
Cc: <davem@davemloft.net>, <pabeni@redhat.com>, <liuyonglong@huawei.com>,
 <fanghaiqing@huawei.com>, <zhangkun09@huawei.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Andrew Morton
 <akpm@linux-foundation.org>, IOMMU <iommu@lists.linux.dev>, MM
 <linux-mm@kvack.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Message-ID: <20250106155154.7c349c67@kernel.org>
In-Reply-To: <20250106130116.457938-1-linyunsheng@huawei.com>
References: <20250106130116.457938-1-linyunsheng@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736207516;
 bh=Fu660IWX5S6t38fvF4BJ3mJpDywwH3eUN5CgaE2RF48=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=THtnK84Q3Oz/4hr7raXMxtb5YnvUsRTP0Z19d7W1LrVc020uM7dHfZQfaxiTBglrb
 0uuuv4Ij3lvMxNaYs2U4xkdM1Mx/sGjqu1JF+EzVap0/mx7qJl607iIVwFe7HlG/s7
 X14tjNK13QKsu2ZiViNL1koaVJB20ifxb0W3EaYPXmPLvd3Yw+D43CTpT1bSdEobVq
 enX3QqiM+fai2TD9PUP4jYCjrP+vp1tAnLo3Mv9k74nhRw+qMFF8RVBP1HKE/Gn7Dh
 zUjVlCwE6j30/RjhJSLQ4oMUTU+dCUPoDR1ZtkaF7VWo4Bdbpz0SfAdBVCoaM5Jkwm
 nSJEIl5AN0w9g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=THtnK84Q
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/8] fix two bugs related
 to page_pool
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

On Mon, 6 Jan 2025 21:01:08 +0800 Yunsheng Lin wrote:
> This patchset fix a possible time window problem for page_pool and
> the dma API misuse problem as mentioned in [1], and try to avoid the
> overhead of the fixing using some optimization.
> 
> From the below performance data, the overhead is not so obvious
> due to performance variations for time_bench_page_pool01_fast_path()
> and time_bench_page_pool02_ptr_ring, and there is about 20ns overhead
> for time_bench_page_pool03_slow() for fixing the bug.

This appears to make the selftest from the drivers/net target implode.

[   20.227775][  T218] BUG: KASAN: use-after-free in page_pool_item_uninit+0x100/0x130

Running the ping.py tests should be enough to repro.
-- 
pw-bot: cr
