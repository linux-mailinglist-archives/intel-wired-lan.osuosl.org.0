Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A120889A8DB
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Apr 2024 06:25:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3BFF0403AE;
	Sat,  6 Apr 2024 04:25:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nuwwMAL_KCO2; Sat,  6 Apr 2024 04:25:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9444B4032B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712377522;
	bh=Y7XyfiyinJ3KX0WHALt3dbLxamhT0naKVj2tIECdkcM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1cB/egXwc76QpKOXGzOe5WjTWgy4vJdYuZ5Tv838Ma41zY/TXgYtYrmghdyrDUv3b
	 BRzTueXrtmWQnAqVRMbSoVoow4X7cSE9BcUoBtGSb/VeoXM8o0p/JCahsTA/EmQxCO
	 r5xpei4SNQ162YOi/XxqFKJ/1OMWWwXPI58P642C04ZqwIVNIVFf0h7POdNficAt3J
	 n/Stv9F1TV9+BRxDD3hsh2GhdhlbDlUptoyogJWjNWamkge9H4a9vUZGdUd+4m1EsV
	 hgRQCNhoWJZE/1Q0L6kzca1O4ZqKgCg6oRsPApFtdv3oDhM1Jig4nZl/F5Tx5DI/gk
	 6xe0SAvi+vTyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9444B4032B;
	Sat,  6 Apr 2024 04:25:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6769A1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Apr 2024 04:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 549494011A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Apr 2024 04:25:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R8p9MQcc1L4O for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Apr 2024 04:25:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E9EBE401DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9EBE401DD
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E9EBE401DD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Apr 2024 04:25:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id F2A7BCE09AB;
 Sat,  6 Apr 2024 04:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 785DDC433F1;
 Sat,  6 Apr 2024 04:25:14 +0000 (UTC)
Date: Fri, 5 Apr 2024 21:25:13 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240405212513.0d189968@kernel.org>
In-Reply-To: <20240404154402.3581254-8-aleksander.lobakin@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712377515;
 bh=ip8k07t7BfEvV53PYzakptukPEyy8283oi2ZC+w5ZEU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GwJCrKVk/BoRpIhUWtfsjbnVNUGzObkT8OxbFE/LMQTez+7rMQkGPMuqMHS1GkySM
 UGacUaysy+K95swWj2+rio0sN5iJa4GbJacU2BfFKksb5oVoRGzODP/+e/aAvQ3VJT
 nUmw61rqqQZkJ2Zo+nggYjT5rtG5SEOTx7DB+Hpyb8yj/MonmPNoFl8vY859WSSnSn
 SL8BEAhwn69FaK4DKSAnkjSIAtS5HBWD2LudHMb1D3uhlkewDniU3PAdmKDr+RZ0Fk
 3f01J0ykZNP3LU5ZIm8LV/HYKJzTfWeyUzuFL6KdmdMw5wB6kGVQsxrL1RQiRd/ciX
 Pm8Xo2ZhTrlNQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GwJCrKVk
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Eric Dumazet <edumazet@google.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Christoph Lameter <cl@linux.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu,  4 Apr 2024 17:44:00 +0200 Alexander Lobakin wrote:
> +/**
> + * struct libeth_fq - structure representing a buffer queue
> + * @fp: hotpath part of the structure

Second time this happens this week, so maybe some tooling change in 6.9
but apparently kdoc does not want to know about the tagged struct:

include/net/libeth/rx.h:69: warning: Excess struct member 'fp' description in 'libeth_fq'

> + * @pp: &page_pool for buffer management
> + * @fqes: array of Rx buffers
> + * @truesize: size to allocate per buffer, w/overhead
> + * @count: number of descriptors/buffers the queue has
> + * @buf_len: HW-writeable length per each buffer
> + * @nid: ID of the closest NUMA node with memory
> + */
> +struct libeth_fq {
> +	struct_group_tagged(libeth_fq_fp, fp,
> +		struct page_pool	*pp;
> +		struct libeth_fqe	*fqes;
> +
> +		u32			truesize;
> +		u32			count;
> +	);
> +
> +	/* Cold fields */
> +	u32			buf_len;
> +	int			nid;
> +};
