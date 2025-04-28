Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C65BA9F652
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 18:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D83E60BEC;
	Mon, 28 Apr 2025 16:57:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z7BkAny6ckbc; Mon, 28 Apr 2025 16:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA96560BAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745859430;
	bh=Jp77ggnfBxCRkbuxBrXgEU+2BKtBt4rw8EnF8Qkf3bM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=voYBvtCif/XZ9wh9+cnlRCchN9LZoXStE5eDW0Oau1Qf4IfNnliuCjdjZLcPz9+Kz
	 bWIr0vkbCUqBKDB2YZPpwjrzR+eBrAd5dhUapY/lrEkjT1s8G+OrjTsMbesIwgrs6A
	 S3aGOeCMNu00dq0NLRFm2j+xUk/ov0lfEJIRXXSla7pZfUSa6rYQJJtf6yKwdqnAhe
	 Lyh5CUiqE4XGwDzYB3NAip1n/few0CdDrGz8ljyTTm19cuquUDy+P/WyQR69CrJrYo
	 4P5ai7ak+dwNWllmzmT+MdfcwnCNNmU/noi101494jRWdrRHmSegQrQsQOpzWMzdC9
	 uMTDeOJzJRhaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA96560BAC;
	Mon, 28 Apr 2025 16:57:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1923231
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 16:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B1F340193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 16:57:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YobOG4ep30_o for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 16:57:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 42BE040FCE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42BE040FCE
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 42BE040FCE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 16:57:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 9F8D161165;
 Mon, 28 Apr 2025 16:56:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8016C4CEE4;
 Mon, 28 Apr 2025 16:56:59 +0000 (UTC)
Date: Mon, 28 Apr 2025 17:56:57 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Phani R Burra <phani.r.burra@intel.com>
Message-ID: <20250428165657.GE3339421@horms.kernel.org>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-4-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424113241.10061-4-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745859425;
 bh=ZVz/phxXgV/uhXfx52GtvXgEsnsHvFfAcq8ln7+IPzY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ME35vYQ/VH0HQptcDvrpE5BVTSCvw+KZks+EMhweVEEGIR1r0Tk1DP1ZV3cw8N9mt
 EpiCGCFNCTVbHLiwxmsXneao9mB2mpkc0BHHj9dQqu+2bgcA9EPEucL+UeuNx16TfE
 v8/fFCEmQv9z1nE3t1srwRIxY4x0xBx6fYbE2P38P5Wx1RLCQszj9yM7hGsxCp+Y8X
 9nfqGizpRaEp/Ozg3P2UOtl9YfOMFjoT3ibjjJQEnPZTGftRP9P8rzWwTY1Cp02UW/
 IaqfKADAPkkKkFJDHCqzcAXRFCxXp7Yfb7el6rHaBRFV9Lf1Z/Nt+9sM5qTLmzvLJC
 HBlO8v32Kit5Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ME35vYQ/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 03/14] libie: add PCI
 device initialization helpers to libie
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

On Thu, Apr 24, 2025 at 01:32:26PM +0200, Larysa Zaremba wrote:
> From: Phani R Burra <phani.r.burra@intel.com>
> 
> Add memory related support functions for drivers to access MMIO space and
> allocate/free dma buffers.
> 
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> Co-developed-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

...

> diff --git a/include/linux/intel/libie/pci.h b/include/linux/intel/libie/pci.h

...

> +#define libie_pci_map_mmio_region(mmio_info, offset, size, ...)	\
> +	__libie_pci_map_mmio_region(mmio_info, offset, size,		\
> +				     COUNT_ARGS(__VA_ARGS__), ##__VA_ARGS__)
> +
> +#define libie_pci_get_mmio_addr(mmio_info, offset, ...)		\
> +	__libie_pci_get_mmio_addr(mmio_info, offset,			\
> +				   COUNT_ARGS(__VA_ARGS__), ##__VA_ARGS__)

Perhaps I'm missing something terribly obvious.  But it seems to me that
both libie_pci_map_mmio_region() and libie_pci_get_mmio_addr() are always
called with the same number of arguments in this patchset. And if so,
perhaps the va_args handling would be best dropped.

> +
> +bool __libie_pci_map_mmio_region(struct libie_mmio_info *mmio_info,
> +				 resource_size_t offset, resource_size_t size,
> +				 int num_args, ...);
> +void __iomem *__libie_pci_get_mmio_addr(struct libie_mmio_info *mmio_info,
> +					resource_size_t region_offset,
> +					int num_args, ...);
> +void libie_pci_unmap_all_mmio_regions(struct libie_mmio_info *mmio_info);
> +int libie_pci_init_dev(struct pci_dev *pdev);
> +void libie_pci_deinit_dev(struct pci_dev *pdev);
> +
> +#endif /* __LIBIE_PCI_H */
> -- 
> 2.47.0
> 
