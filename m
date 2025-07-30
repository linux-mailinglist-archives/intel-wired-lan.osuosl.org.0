Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C144B1570C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 03:48:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44511835C4;
	Wed, 30 Jul 2025 01:48:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gsbh3TA9QZGe; Wed, 30 Jul 2025 01:48:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A106583579
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753840112;
	bh=7UAUDaDpWk33FoU9Qhv/n+7SdgH+WAN3K75H1P/snHc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qxx+LtK0c0SCRWDCacWHHtWX8a8W4dV0YHJvmaXEU3Knta/EYVeCupRmJlufv79b6
	 ubs2cVsSyY1H6jHmuxbJvPvIR+FHgdGzVJZ76/O3/2JxDUNbBn4XVLvliq+WeYuwi+
	 ACWrIO8yAeiXliJJuJUuOi/qaqpk/VzWVH0H3fZSHebLqnQ5tFi4XUjYsv/sjwvl6/
	 s88pdTQawMME3KNQqYL4prv1eg3JvlUAD6ULa+OiaBZtpitA1ngQyesgOSjZKHREvW
	 rPoBzYHeNTFaMzGSfVVh/eGv9UZfFON0GgZf6R3VhBz+2/I9okjB/EstM69ztoxQkV
	 nDC6OK6z+ZyGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A106583579;
	Wed, 30 Jul 2025 01:48:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A6E1194
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 01:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00EB0407D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 01:48:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PZUQHa6x1rcU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 01:48:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 63D36407C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63D36407C0
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 63D36407C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 01:48:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 138E943899;
 Wed, 30 Jul 2025 01:48:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F907C4CEEF;
 Wed, 30 Jul 2025 01:48:28 +0000 (UTC)
Date: Tue, 29 Jul 2025 18:48:27 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadfed@meta.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, <intel-wired-lan@lists.osuosl.org>, Donald
 Hunter <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>, Simon
 Horman <horms@kernel.org>, <netdev@vger.kernel.org>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>
Message-ID: <20250729184827.039406f3@kernel.org>
In-Reply-To: <20250729102354.771859-1-vadfed@meta.com>
References: <20250729102354.771859-1-vadfed@meta.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753840108;
 bh=R0O1R8cXydICqqdNBVk/rdRcDMNGqh6mqZTpCe+SkWU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EeHkGuqt0wXx73Xwn/fXbNw4MqsMslS6tgKrDxEs27yY6Zrk2RF+eQBVu3+bM8HQY
 wQ8/EmteZVCAAn2EJTkitHbLjzVJyxo1iackP/xFnG4vNg7FhuCTc8olcyNj0kvevC
 toyeXgp4L9EP+ApucBucTp6taVLLFq4f3l/uoPOyvOWRtlWXVsCHC3tGlxru0vspPM
 32xiQlW/vN4/ztBXlMVEKAXxxKXvw65LPCLGlB+nY9SdAg5SPaffL/ueT6QVLyTZ6Y
 Tb3NQj17JpO+tNCQI2SdL+EC4NUFPHo7owRi6459CKdakRxCrxI29b8Zz3hWbyu0Qy
 ZifnF6kpXHCaQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EeHkGuqt
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

On Tue, 29 Jul 2025 03:23:54 -0700 Vadim Fedorenko wrote:
>  /**
>   * struct ethtool_fec_stats - statistics for IEEE 802.3 FEC
> @@ -524,6 +535,7 @@ struct ethtool_fec_stats {
>  		u64 total;
>  		u64 lanes[ETHTOOL_MAX_LANES];
>  	} corrected_blocks, uncorrectable_blocks, corrected_bits;
> +	u64 hist[ETHTOOL_FEC_HIST_MAX];
>  };

Some devices may want these per lane, let's make sure uAPI supports it.
