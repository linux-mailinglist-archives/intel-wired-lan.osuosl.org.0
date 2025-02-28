Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFEEA48E69
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 03:15:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2108416DE;
	Fri, 28 Feb 2025 02:15:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vmyIOIaFQQtv; Fri, 28 Feb 2025 02:15:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 575AF41710
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740708956;
	bh=f4xpv/ITCQVc5/v0GvACNExtMNarxnP6j7WMPuEJg4g=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dZp5ooWEmR34tyA2L5bhC/X8KI4QP8EsurRFwTfPr59ti3mmkmCVoEpnzoELclGZU
	 7bVCqyM6wxkqKGKiQxhiDLq04WIotgeO5eFpeuTUFIfmnJOh17HVoyGAbAsb+NctOn
	 PB/KXcgFuLHsynzz828L8uDghieppuw07ycKcm7OUrZNdaXnPjFIQLdd3b3aqLheCY
	 vVjOIle8uERrd9S0UgWmD6MDPkcse9ODLKyCbC29iYQa9L/UcA0AztAqr3WnP6FYYG
	 6ggQoaTUTTEkkJob+oK4ZhxktcSFeFsNOS3A2dwJ7TWUF5XwoyWgByApiIaEJOrb5n
	 u/TZBae5aKN2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 575AF41710;
	Fri, 28 Feb 2025 02:15:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 248F1711
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 02:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB41360AA6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 02:15:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SmRWPJUlDs_S for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 02:15:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04::f03c:95ff:fe5e:7468; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4BED060B18
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BED060B18
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04::f03c:95ff:fe5e:7468])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BED060B18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 02:15:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id ABE2B6113B;
 Fri, 28 Feb 2025 02:15:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D99AAC4CEDD;
 Fri, 28 Feb 2025 02:15:50 +0000 (UTC)
Date: Thu, 27 Feb 2025 18:15:50 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Yunsheng Lin <linyunsheng@huawei.com>
Cc: <davem@davemloft.net>, <pabeni@redhat.com>, <zhangkun09@huawei.com>,
 <liuyonglong@huawei.com>, <fanghaiqing@huawei.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Andrew Morton
 <akpm@linux-foundation.org>, Gaurav Batra <gbatra@linux.ibm.com>, Matthew
 Rosato <mjrosato@linux.ibm.com>, IOMMU <iommu@lists.linux.dev>, MM
 <linux-mm@kvack.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Message-ID: <20250227181550.07e429f5@kernel.org>
In-Reply-To: <20250226110340.2671366-1-linyunsheng@huawei.com>
References: <20250226110340.2671366-1-linyunsheng@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740708951;
 bh=4vQwX6AqJ6dlNwK2Yq55c2nDqD8BOonS119QXzs28cQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=otQ+Vh2O/0zvPXfsp8NIol+zuQGEnYbWZnLOYmcX93at3/Ocij07aq7TXGZwI6cX6
 koYbjA8BBK2KrG6DLzyXGP4A1WyHJsjZMOxoVp0rBLJU/aw+vA/gnFxbW2Sj+rhi57
 7qMiwdXAR4a1xL82eF0qy1p/ujxQKYQDSpqgW1fLjBz7PByIKoniNDIn9DuuOJd4GD
 Vv2BWw+C7QqgVdT2Ts8TfnRKGFLvJCMlx5sPTrv2iIeI8AKsGkbargv3DG7sDBG4/E
 8EELXiY7K2SrXh6bmc8pE/SOoiRqu3Rm2TpZIbhCcmT69XfPPZnVozvvFd8UOwGILV
 /OPBetdR/mlhA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=otQ+Vh2O
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 0/4] fix the DMA API
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

On Wed, 26 Feb 2025 19:03:35 +0800 Yunsheng Lin wrote:
> This patchset fix the dma API misuse problem as below:
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

Does not build :( Always do an allmodconfig build when working 
on subsystem-wide interfaces..
-- 
pw-bot: cr
