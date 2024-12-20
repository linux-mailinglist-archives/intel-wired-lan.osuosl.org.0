Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B439F8AAB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 04:42:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DA7480F44;
	Fri, 20 Dec 2024 03:42:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J9asasxh17Df; Fri, 20 Dec 2024 03:42:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5824280F39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734666164;
	bh=K74pSCwfsf1TaLjZQXHZ4p2i1Azv/tuJqklFEDR5rYc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DmloAygfvJhyg2zj5d9/UXqWl8ioNRvvoj8jG76NcLzFdb7ELfnkEKWrmfjznOqBW
	 rcNjDazs/HtfNFneW/siRHQSZONFJW9nNOuAS1Jrmq0uX9qiIYjA/JcULU0MJPAzjJ
	 qEMJrQwxw0BVCybzjdB83eSmx26QTdrV4nNU2kBYOgl44WnMXmeuXulDQ1GMQ1lx9h
	 TVEieNU1rrkfJ/l0QHDVQqUKbKGyvF3Zc+y/p0Rd95IRfFDhFnL3KEot9tqiQChGyi
	 xkYWuL+b8qhDcvktVDGWvq4LHy1dWkI8KwB+2fODEf3aw/tw3HvRV4sHhvI1RISxjF
	 PzlMuMXpx/Dqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5824280F39;
	Fri, 20 Dec 2024 03:42:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C9593920
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 03:42:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A938B40153
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 03:42:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TbI4lTv-olqB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 03:42:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8FCFD40242
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FCFD40242
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8FCFD40242
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 03:42:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5501D5C6AAB;
 Fri, 20 Dec 2024 03:41:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FC31C4CECD;
 Fri, 20 Dec 2024 03:42:38 +0000 (UTC)
Date: Thu, 19 Dec 2024 19:42:37 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org
Message-ID: <20241219194237.31822cba@kernel.org>
In-Reply-To: <20241218165843.744647-5-ahmed.zaki@intel.com>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
 <20241218165843.744647-5-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1734666159;
 bh=fnImh29yoKImg9f1jUzjkpruOXk0v2PvXOnZJPACOFc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JMNOTu2v8Xg3DzOhrHjiZuyQbDFlSCSy1rhNXN02tOCsEYU8vdb37WbOSX4UNR0H1
 wtqvdCvJXmOicL5T8F1SNZh0THSic2U0JeHbWR58kqSdgnUHY/Z+0dSLnYaS1EC4+S
 Vy6mTVs7w8Ht1LLHeA48N3Fn9YaKJB6vZBIF2qHRwTjIM2faRA3FwSUeQm8S9Yh5CS
 Lj/LHORn4r9yWja+4CyqJpixEJ1A7xC/rUT+ISZCC6uAuZMticlgsRNQdKzSUW2Rne
 0WrYzHBQCOR5z2kBHVqW9gm+9ZYtmuRlujfVUqKtL8H1KsRGvgK+L6rKbYFFIoeVd1
 Ia/o+ppIuC5uw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=JMNOTu2v
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/8] net: napi: add CPU
 affinity to napi->config
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

On Wed, 18 Dec 2024 09:58:39 -0700 Ahmed Zaki wrote:
> +	if (!glue_created && flags & NAPIF_IRQ_AFFINITY) {
> +		glue = kzalloc(sizeof(*glue), GFP_KERNEL);
> +		if (!glue)
> +			return;
> +		glue->notify.notify = netif_irq_cpu_rmap_notify;
> +		glue->notify.release = netif_napi_affinity_release;
> +		glue->data = napi;
> +		glue->rmap = NULL;
> +		napi->irq_flags |= NAPIF_IRQ_NORMAP;

Why allocate the glue? is it not possible to add the fields:

	struct irq_affinity_notify notify;
	u16 index;

to struct napi_struct ?
