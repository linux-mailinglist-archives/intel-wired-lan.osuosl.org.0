Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 067F397EFFE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Sep 2024 19:52:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7F13408DD;
	Mon, 23 Sep 2024 17:52:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rIDRQLiDlPjG; Mon, 23 Sep 2024 17:52:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1B74408D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727113952;
	bh=d012RvO8FEt4oNV/hdC2ORp0abycOdoKV3NqdL6MFLw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=krQzBNGGFVqZe1rqD1Nth0Fv80jyPv+dWmC8LcNoU94alTxN7p3tkSQU9pWxck9wB
	 w1HTF0sgTuoqPaFhTKlZfdrU+GF0Uis1cfBf/JdeLQChqUqnY8XZlHdqHCn7x7GP6P
	 UvxRNGXI2zk/nyfF7ZhDq/SNO0JZSlQw5S34j6QxVj6WNTKEQ+WrFdHGHQbeDu25+E
	 EgUFJIyzRAuIn6DlKZsn3fCM4GwWmjZci3sOa4BJykNkGhhdLs+jtF4i8j9kpUjmck
	 cgeZk5+YFBChBppbU1Ldu717YHXC9VeY4DrMqW4kraiwGijMfHzavYGMbRBchdz9Dq
	 SHDWMvH5w6qOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1B74408D6;
	Mon, 23 Sep 2024 17:52:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D147F1BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 17:52:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE8BF408C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 17:52:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mOBzzKCsd00u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2024 17:52:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::834; helo=mail-qt1-x834.google.com;
 envelope-from=jgg@ziepe.ca; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 06F1A408C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06F1A408C1
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 06F1A408C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 17:52:28 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id
 d75a77b69052e-45830ff5b70so37096441cf.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 10:52:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727113947; x=1727718747;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=d012RvO8FEt4oNV/hdC2ORp0abycOdoKV3NqdL6MFLw=;
 b=pGt9pigAZz7s6sUsh/KfhfKoUxMEA2L0WuWWPeAzgqcu1+UzNhYtT8VncSr3tmMAS1
 JMfPdqZgdcQvNDOLuPyGTlWpUV3Mn0BCOPjzvA0IMl3lDhiGC5QcjZLnSCE4PWiLMtmV
 8NYmru+l090FFbFBeSVMoONOMmlk0hTRvkJBnMIE0io9PjG3sJ88q07mCrd1+yrP75JZ
 hnweQItQ5pm26K2h0hMQe2Z0cw52D0FCC4PRtAscMZ/bRRsHWm6qYJcWvgEtaMLfEnX2
 OfRtj+50Lp1Vk3VApyLVJxVBESYOLfG15xAMpg63JnnGMFyTdliPWb0sVWz6THmYOl8L
 lKIg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUQQr3w2KiJLbZypPEkENt+x5sRHPaUEmQjCysy4xDji+iVGT0tv274Hjlz6ptblWC2/FU+8bZRzWNDZbesNgY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwEXoRgnXr0ReGiTkFYax12YlotEPmkumzCsFqKUqWtHe4SNtsI
 fgL1WUMcUMhgjPnqctoYOYL6gBtlRs9//bfM09+jZcBYfui4iBaMlBBzwCMgKwg=
X-Google-Smtp-Source: AGHT+IHVrqHIowyi3PGsNMuzErMWdcwmU1SRIkTjY6Vp086kbtdmtvbVDAGc60f4mvoOr4wDyCS+5A==
X-Received: by 2002:a05:622a:107:b0:458:35f7:3950 with SMTP id
 d75a77b69052e-45b226f380cmr178883201cf.17.1727113947576; 
 Mon, 23 Sep 2024 10:52:27 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-68-128-5.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.128.5]) by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-45b17888cdbsm49348071cf.49.2024.09.23.10.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2024 10:52:26 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
 (envelope-from <jgg@ziepe.ca>) id 1ssnEY-000LlC-32;
 Mon, 23 Sep 2024 14:52:26 -0300
Date: Mon, 23 Sep 2024 14:52:26 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <20240923175226.GC9634@ziepe.ca>
References: <20240918111826.863596-1-linyunsheng@huawei.com>
 <20240918111826.863596-3-linyunsheng@huawei.com>
 <CAC_iWjK=G7Oo5=pN2QunhasgDC6NyC1L+96jigX7u9ad+PbYng@mail.gmail.com>
 <894a3c2c-22f9-45b9-a82b-de7320066b42@kernel.org>
 <cdfecd37-31d7-42d2-a8d8-92008285b42e@huawei.com>
 <0e8c7a7a-0e2a-42ec-adbc-b29f6a514517@kernel.org>
 <CAC_iWj+3JvPY2oqVOdu0T1Wt6-ukoy=dLc72u1f55yY23uOTbA@mail.gmail.com>
 <2c5ccfff-6ab4-4aea-bff6-3679ff72cc9a@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2c5ccfff-6ab4-4aea-bff6-3679ff72cc9a@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ziepe.ca; s=google; t=1727113947; x=1727718747; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=d012RvO8FEt4oNV/hdC2ORp0abycOdoKV3NqdL6MFLw=;
 b=OB4JWq1XOqtwTdwU03Gyu6AoS0V6bTsHQXR2yrLOfxqGFatus0bvaNtJ9vMtsz+AZh
 yznnRN7CWwgZTHbzTFiYP8kJHw8MRD3kx+qVMKGxadeRe9qnctze1xM+h0B8JcoeWtGS
 WjiqdMeR7bf5gDjmikYmkALHu8woYF5EhRrezSbiBsCK21DSFAdjhm6c8AfxPvfR+PuU
 lDvZRNv2+6cbHwWLBINDNoY3BNjxTutz6+rBa9ds8gNVQwiHiMPvrnX8de68rlw88Fyj
 ky3rBgv5mNnfHK1VclJ/KzSomJwDf50DCFVGxL43/JQVt0uu59fQPl5guFpFBEzspi9n
 EVEQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=ziepe.ca
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=ziepe.ca header.i=@ziepe.ca header.a=rsa-sha256
 header.s=google header.b=OB4JWq1X
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] page_pool: fix IOMMU crash
 when driver has already unbound
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
 zhangkun09@huawei.com, fanghaiqing@huawei.com, pabeni@redhat.com,
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

On Fri, Sep 20, 2024 at 02:14:02PM +0800, Yunsheng Lin wrote:

> I am not sure what dose the API that allows netdev to "give" struct device
> to page_pool look like or how to implement the API yet, but the obvious way
> to stall the calling of device_del() is to wait for the inflight
> page to

It is not device_del() you need to stall, but the remove() function of
the device driver.

Once all drivers have been unbound the DMA API can be reconfigured and
all existing DMA mappings must be concluded before this happens,
otherwise there will be problems.

So, stalling something like unregister_netdevice() would be a better
target - though stalling forever on driver unbind would not be
acceptable.

Jason
