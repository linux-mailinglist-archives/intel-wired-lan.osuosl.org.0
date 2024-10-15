Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F23F99DA91
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 02:14:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 691B4403AC;
	Tue, 15 Oct 2024 00:14:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k-BX_teA2OoL; Tue, 15 Oct 2024 00:14:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AC0F40530
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728951253;
	bh=D1bOouhGYp8qYUjvtk9VBz/g0FK7jRRodQ+2KCWlw7I=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LbjOHBokCKCtoEehuq+jZJ/b5px65ecY8z6v06og2U0p1hIBs2aM5ufhP+EXx/REk
	 CM2DDZaHtShWvHfz24YQphulKmoNtWt4gavnDCdrW4fa0of4kEwPyHVJcF0XEywg/M
	 ZN9dBl4nJJ0XW9D9PCbnxirSWDG4C/6KExt7sq/R/RZF7Mr685TZTSOPWdMv8CYC5t
	 4gEVUmVOgugvK6yAMfp9g6B039GDNOvDGfCog9PLHIo5fESLh82EUDOQjvfPJXA0R+
	 /Ptviopa0rF638P9IYclAwkF/n2zm6x9Sy8v9zVZAx6XGIuxKv8uPUBRr+CjcqAdRY
	 o4bNHlnE69jOA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6AC0F40530;
	Tue, 15 Oct 2024 00:14:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7EC6E1BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 00:14:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C1C1402E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 00:14:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id du-coyL2xEle for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 00:14:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7B2B840137
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B2B840137
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B2B840137
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 00:14:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 98022A42980;
 Tue, 15 Oct 2024 00:13:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69880C4CEC3;
 Tue, 15 Oct 2024 00:14:07 +0000 (UTC)
Date: Mon, 14 Oct 2024 17:14:06 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <20241014171406.43e730c9@kernel.org>
In-Reply-To: <b1fd5ece-b967-4e56-ad4f-64ec437e2634@huawei.com>
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <b1fd5ece-b967-4e56-ad4f-64ec437e2634@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728951248;
 bh=vC2js+3LTh37+eK6v22mAPM7Aj/mMz6+h5IByLtkN9E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KA8B/kcn+CyFsGvB5lRCxHl/oMJ1/+ytr1xDfxtbTs2DknFuUjJajsNy0pBQtNinE
 aBThc9YZ1cFhAt31Z5v+RM/dhm2JAPTKuGtyuje64hxEH/H5VEHEbjO4USBbUN1fAj
 guPIt3CzR7l2Z+1Z0iyzUflxo7LwX4BZfgu0zRLrp0OQKlnGPZAWBX+nVhbl7Gsjv6
 QUT/nM9S1klJHU1VYvDFpllFdm+q/ha04BQtbSPGDMqXRkoJOlhnkVy9vfNjYfYlgJ
 jQjJ7ODdnQfVsF0VXXApSdXdP/on+vs9Gx0cHlCCgG8uaZ6zjBRSt7o7Mfyx1NvgCU
 8QE2ujuElZjug==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=KA8B/kcn
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/2] fix two bugs related to
 page_pool
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
Cc: linux-mediatek@lists.infradead.org,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Alexander Duyck <alexander.duyck@gmail.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 IOMMU <iommu@lists.linux.dev>, liuyonglong@huawei.com,
 Matthias Brugger <matthias.bgg@gmail.com>, intel-wired-lan@lists.osuosl.org,
 zhangkun09@huawei.com, fanghaiqing@huawei.com, bpf@vger.kernel.org,
 pabeni@redhat.com, Robin Murphy <robin.murphy@arm.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 12 Oct 2024 20:05:31 +0800 Yunsheng Lin wrote:
> 1. Semantics changing of supporting unlimited inflight pages
>    to limited inflight pages that are as large as the pool_size
>    of page_pool.

How can this possibly work?

The main thing stopping me from reposting my fix that it'd be nice to
figure out if a real IOMMU device is bound or not. If we don't have
real per-device mappings we presumably don't have to wait. If we can 
check this condition we are guaranteed not to introduce regressions,
since we would be replacing a crash by a wait, which is strictly better.

If we'd need to fiddle with too many internals to find out if we have
to wait - let's just always wait and see if anyone complains.
