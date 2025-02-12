Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F74A32EF2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 19:54:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 700CD847AF;
	Wed, 12 Feb 2025 18:54:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dlRo4T5h8agh; Wed, 12 Feb 2025 18:54:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B1AB84835
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739386442;
	bh=oUOokMrKASXdzZOA3VRoZ7fdfSIasrczhgZC+ARdsyE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zxn1pXn/WaQcrPib5NrKCU0QQEDN2WCAMXX5uMegxE5O/vdXScedfEr3FY0qZa7V3
	 0w5nJaAiLG56BrHYUOfVXArzOb5calq+c9q2ppK4/iYR6Oj7EQpR+t28ZNCrwayObT
	 PTzwa8PJGidKmpU25CsQKbUv5kduoQ2E94y37qCHkZAuPh8fVPcpPw1ZY4SNEQ74Gf
	 xMLTqfknxOlkS4kdbBs8yWeXFNlbvYg1pW8oVHRNJTQUjyl7xlYUsKCxdMA43J4Tli
	 XfiQcK/to1/oTzos6Il73T9JbVZMmLGFzEyfRy5ILfVm8ZQmrZWLzEcZAkeoeFt7cx
	 pfI4kje9+hLyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B1AB84835;
	Wed, 12 Feb 2025 18:54:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D11691C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 18:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF83060EFB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 18:53:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y_-ldWr_H-oW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 18:53:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=2001:8b0:10b:1236::1;
 helo=casper.infradead.org; envelope-from=willy@infradead.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CA6E1610A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA6E1610A6
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA6E1610A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 18:53:52 +0000 (UTC)
Received: from willy by casper.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tiHrZ-00000005dDY-05Hq; Wed, 12 Feb 2025 18:53:33 +0000
Date: Wed, 12 Feb 2025 18:53:32 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Yunsheng Lin <linyunsheng@huawei.com>
Cc: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 zhangkun09@huawei.com, liuyonglong@huawei.com, fanghaiqing@huawei.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 IOMMU <iommu@lists.linux.dev>, MM <linux-mm@kvack.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Message-ID: <Z6zuLJU7o_gRsQRu@casper.infradead.org>
References: <20250212092552.1779679-1-linyunsheng@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212092552.1779679-1-linyunsheng@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=oUOokMrKASXdzZOA3VRoZ7fdfSIasrczhgZC+ARdsyE=; b=RQsJzdIo4sjdvkb3W0fwkdFRaa
 O57YRtnEq+Dfi18rN1QQwUuBy8dYpnMr5IQlIOiChqEyQR5T5MXOqbangz7v/EBYWW/HkX+P8uxVd
 idVVcsVuC1PGXaAK7beZ2GFCmN9Y3Y8pSbs17s98gPhCfsWxM/EmI7xjeGTmmG7zZ3FYar1vcZ1GW
 h55laSfKYbPWaVvzr2P1udrViDnu1von3OwcqpmZgx3g3jQPH5tdQFFtQN3ZwqwAF5L+Oug9GX7y+
 ZjNB66u0s3SGCr440I3G2m1FDfd3d+xBpNUtfFXpL6XIDVSPSq0qiSv8tjXfWua6lN4yAYuGQBmSo
 eK0Oz+Zw==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=infradead.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=casper.20170209 header.b=RQsJzdIo
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 0/4] fix the DMA API
 misuse problem for page_pool
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

On Wed, Feb 12, 2025 at 05:25:47PM +0800, Yunsheng Lin wrote:
> This patchset fix the dma API misuse problem as mentioned in [1].
> 
> 1. https://lore.kernel.org/lkml/8067f204-1380-4d37-8ffd-007fc6f26738@kernel.org/T/

That's a very long and complicated thread.  I gave up.  You need to
provide a proper description of the problem.
