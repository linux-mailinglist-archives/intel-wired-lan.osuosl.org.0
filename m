Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E93C800432
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 07:55:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C270E60BD5;
	Fri,  1 Dec 2023 06:55:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C270E60BD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701413735;
	bh=P7+xHuT3WyK4vrPGkP/9HZEnCaJ5KGMeMaWDmvQJeuo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oNnOW6DGtRQAInhL9xqjTWjCpcUzhox1Fnkvg/KomV+mutqpa+iNKpRUhsAUQ5uzx
	 wHdupuSdADg+Wpt3GjXVOZVIk9YyILiuU87m2tNTJ3fHcBXO6q8TUgNmuFMiCdlEt5
	 YtR33nalZ1oeFnWDZeRwdVr3VJEtRJjP8u8azXk81NWPOYqNQG7fwS2t5it+gdZ0T6
	 Sx7kUyYMeP24eU9KYIggCfRiM+UqXFcIxKMJJB4HIqb7FpWaOUPgQO7z9c4Q+2gKSp
	 v8J6RSDXphSf8njvEImjJfGkxNrQ7fPMPw2sIwcYCZ4fq330cjumS4fRphHkHzjsPJ
	 nSLdx/rkrxN9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jnbt52qVSkRC; Fri,  1 Dec 2023 06:55:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC2AF607A1;
	Fri,  1 Dec 2023 06:55:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC2AF607A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B13FF1BF345
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8463A42084
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:55:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8463A42084
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aAYUzVnJbTag for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 06:55:28 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6D1542083
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:55:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6D1542083
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BD8CD62071;
 Fri,  1 Dec 2023 06:55:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D93EFC433CA;
 Fri,  1 Dec 2023 06:55:25 +0000 (UTC)
Date: Thu, 30 Nov 2023 22:55:24 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20231130225524.76d41381@kernel.org>
In-Reply-To: <289bf666-b985-4dc4-bf0a-16b1ae072757@intel.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-14-aleksander.lobakin@intel.com>
 <e43fc483-3d9c-4ca0-a976-f89226266112@intel.com>
 <20231129062914.0f895d1c@kernel.org>
 <f01e7e91-08f1-4548-8e73-aa931d5b4834@intel.com>
 <289bf666-b985-4dc4-bf0a-16b1ae072757@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701413726;
 bh=rvlUpmCWet3DQSETpKuQuIH6X2X3rucwyaSzL3cBqiA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pc0kazKsvlCfPs4Z3xYAx0puK+inFDLkK4qFrkNh8zKe4t1UwmC8qYzYiWmHRUPHJ
 lcOj9w/9965gZb+M30Y1vBvNU6rkgVBW2tWol+SKtsndToHXvY1LL79b/XeZlWVird
 HZ2kQbcUuscBK38s/3Vd3Z0lD9d8caViEk02OudksTno6ezB//2npADfKRHfA4w9Kz
 jqKTO4NWB5faullFHz+7PG8dUi91obE6Mlv4L5GYCm5dYuICUeUov9ll9L3GRLjSn4
 HyRxjgh3gKM3QWOitiqCLDCLF+Ro9XzjqmDHH5G18pQXJ7Qi6wDn+01NMhT+EDARgp
 XWdqR+sSu+/ig==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pc0kazKs
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 13/14] libie: add
 per-queue Page Pool stats
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Yunsheng Lin <linyunsheng@huawei.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David
 Christensen <drc@linux.vnet.ibm.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 30 Nov 2023 17:45:10 +0100 Alexander Lobakin wrote:
> > Meh, this way the stats won't survive ifdown/ifup cycles as usually
> > page_pools get destroyed on ifdown :z
> > In that patch, I backup the PP stats to a device-lifetime container when
> > the pool gets destroyed, maybe we could do something similar?  
> 
> I still can pull the PP stats to the driver before destroying it, but
> there's no way to tell the PP I have some archived stats for it. Maybe
> we could have page_pool_params_slow::get_stats() or smth like this?

Why do you think the historic values matter?
User space monitoring will care about incremental values.
It's not like for page pool we need to match the Rx packet count.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
