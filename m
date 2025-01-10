Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F57A08FCF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 12:55:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9136D40897;
	Fri, 10 Jan 2025 11:55:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xks4QOofdaS2; Fri, 10 Jan 2025 11:55:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D02A940879
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736510157;
	bh=IWkdG+iw0UXwJVvcfaV3WTOWt6TcIHlEgXXW9E9J8vY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hV4ysKkFyNBfqpKZtOsi89F7gpVCf6kgMFvSm6aKygxBty7lhEnxQtWeYcXTkIEMc
	 EWpkeCG4QKugMUnHQcqYv05fxuE5/nBQ2SQM9OYmc+lnC0qjo4EHmfXFKojZih02VA
	 Qavvn22pBm7SUbkFoQCViBmraplKVyyN172p9GMIJJpi8WAqLouwgRZawbgerzSVQV
	 6UCV8qT3e6x3vDnlsoCiLov8sbLsU4oUJb6wjV2MY5GSXgZSUzWInaZRByjRVWG1Bz
	 fVBpE2Znxt30n4UMbcm/rLP7iUIrOQNcdo5AEhIx+0HWVgGB1TIcaj2FzkZjr5eF4q
	 Kz3ZwJNSMdf3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D02A940879;
	Fri, 10 Jan 2025 11:55:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 29A11940
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 11:55:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 058B383365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 11:55:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fSdU2LOYPg8Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2025 11:55:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 54A4E8333F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54A4E8333F
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54A4E8333F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 11:55:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 7D018A41E1B;
 Fri, 10 Jan 2025 11:54:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83ACCC4CED6;
 Fri, 10 Jan 2025 11:55:50 +0000 (UTC)
Date: Fri, 10 Jan 2025 11:55:48 +0000
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
Message-ID: <20250110115548.GB7706@kernel.org>
References: <20250109233107.17519-1-ahmed.zaki@intel.com>
 <20250109233107.17519-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109233107.17519-3-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736510153;
 bh=Fsfxz2Yqi9F5DV6PEsxBP8dlNuNGhbGhsOkKNA8EEb4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R6EKDKf5/bJffVT0v2JPBVVBPjpF8/VDbkvWMu39fxOdLEWKgjDirUPqpe5c6Bepb
 LdnxgStqEtxN3zgATBQX6ss5QF7GSSr8OgbbP5SB3VyZQ8riD1+6BjDyvNo91bhMDI
 /7T9JyaXXllefxVicPxFfoqPewpx5Bb+kcT6L6Kt2PIRyfUhEvQm2Wkj4+u9Mbm2wp
 zWQkCr7T8Qx5TZ7eZ7rdL4+W17T8qfkEQwV1+70neNPdZ9F8ekZf1esO8lZVeZx59T
 rE012vXJGapv89/MmgSSnJCkl+Dx5kGLXyWvjTvXDyWn+K/SCYBRrxZ7ancYXhPwwq
 yM8yj5v7U5G6A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=R6EKDKf5
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/6] net: napi: add
 internal ARFS rmap management
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

On Thu, Jan 09, 2025 at 04:31:03PM -0700, Ahmed Zaki wrote:
> For drivers using the netif_enable_cpu_rmap(), move the IRQ rmap notifier
> inside the napi_struct.
> 
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

...

> diff --git a/net/core/dev.c b/net/core/dev.c

...

> +static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
> +{
> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
> +	int rc;
> +
> +	if (!napi || !rmap)
> +		return -EINVAL;

Hi Ahmed,

Here it is assumed that napi may be NULL.  But it is dereferenced
unconditionally on the first like of this function.

Flagged by Smatch.

> +	napi->notify.notify = netif_irq_cpu_rmap_notify;
> +	napi->notify.release = netif_napi_affinity_release;
> +	cpu_rmap_get(rmap);
> +	rc = cpu_rmap_add(rmap, napi);
> +	if (rc < 0)
> +		goto err_add;
> +
> +	napi->napi_rmap_idx = rc;
> +	rc = irq_set_affinity_notifier(irq, &napi->notify);
> +	if (rc)
> +		goto err_set;
> +
> +	return 0;
> +
> +err_set:
> +	rmap->obj[napi->napi_rmap_idx] = NULL;
> +err_add:
> +	cpu_rmap_put(rmap);
> +	return rc;
> +}
>  #endif
>  
>  void netif_napi_set_irq(struct napi_struct *napi, int irq)

...

-- 
pw-bot: changes-requested
