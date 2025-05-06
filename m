Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A55AACA33
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 17:56:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E73C4090A;
	Tue,  6 May 2025 15:56:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ufM6UM3jbU5N; Tue,  6 May 2025 15:56:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE69D408F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746546981;
	bh=7HGS6zN+42OstHVLP4ichjfQd9fPku6xiWevDI0E5mo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8ABOyLWJJIvW+vunxbYs7pBfRHtJxo1abfVOTihnDSrEbY4mB/ginoC2J0uE8u2XP
	 YRLx4k+g3To3N/OgYZ5Zgs8o9ILUNtRkLYwHShbAXc5+HB4UKj2Ec3sVv/YUaJ57Gr
	 PFXBLm8Q0zU0kd/6nUtRE9xr+Q0aimsGc9JU2A3IB+D6lIW2RuXz3bTXK3t6V5CV+C
	 WqjBixfsng2QAPMvr8SESlY40hYdLHTXxZHxOm6vNUdDkqh1t6QvNEwsBNl1E2sh5o
	 +fXb7HO/j6Yb89K+dFX+XrVvGD/+Vv27TfL03Jp43ReTnJ1W1ld8CO5dupNGx7iRGT
	 Gf+2yXRE5pYNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE69D408F4;
	Tue,  6 May 2025 15:56:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CA55CD5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 15:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC18E60B1A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 15:56:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JaapsBNITgLR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 May 2025 15:56:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 20C9960BE1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20C9960BE1
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20C9960BE1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 15:56:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 394415C575B;
 Tue,  6 May 2025 15:54:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43272C4CEE4;
 Tue,  6 May 2025 15:56:12 +0000 (UTC)
Date: Tue, 6 May 2025 16:56:10 +0100
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
Message-ID: <20250506155610.GS3339421@horms.kernel.org>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-4-larysa.zaremba@intel.com>
 <20250428165657.GE3339421@horms.kernel.org>
 <aBhhEgEvjjsxtobY@soc-5CG4396X81.clients.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aBhhEgEvjjsxtobY@soc-5CG4396X81.clients.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746546978;
 bh=2SoxB3NHD8Ps6GC9v+38YxKziXQIx1dUTPfuOnXpEro=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bWwpJ86hlQiUW9zdWW7S6eiNlsvlCwncKV2/DbQ1uoAGG2tdlAq0Rbq/rLNdwdw9n
 52dvQAhw//fLVprgIfAUlUtB9Dl+PD5262iPHMDc73eQrRHgvTtNyEEtYqNNXebCZK
 f0MOiYmlKtHbmrSdAsEwTUJvLUOqAeKHD5aEQ/2eem0MGdQwqngcoH34yOKeUYyIvU
 JVWFm/yZdabAzfF2cOnq0hVdE0VP3rPs1t7AHcDaVXpE1FmGrupKux+iohiJWSdqLN
 NRw/Yh0WRK681h409b1xZt3qFce/aHyjDM3I3ZGs9b2IufH6whOqV2AuAOZz44uYrN
 zNoaMKCv8mGHQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bWwpJ86h
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

On Mon, May 05, 2025 at 08:56:18AM +0200, Larysa Zaremba wrote:
> On Mon, Apr 28, 2025 at 05:56:57PM +0100, Simon Horman wrote:
> > On Thu, Apr 24, 2025 at 01:32:26PM +0200, Larysa Zaremba wrote:
> > > From: Phani R Burra <phani.r.burra@intel.com>
> > > 
> > > Add memory related support functions for drivers to access MMIO space and
> > > allocate/free dma buffers.
> > > 
> > > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> > > Co-developed-by: Victor Raj <victor.raj@intel.com>
> > > Signed-off-by: Victor Raj <victor.raj@intel.com>
> > > Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > > Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > > Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > 
> > ...
> > 
> > > diff --git a/include/linux/intel/libie/pci.h b/include/linux/intel/libie/pci.h
> > 
> > ...
> > 
> > > +#define libie_pci_map_mmio_region(mmio_info, offset, size, ...)	\
> > > +	__libie_pci_map_mmio_region(mmio_info, offset, size,		\
> > > +				     COUNT_ARGS(__VA_ARGS__), ##__VA_ARGS__)
> > > +
> > > +#define libie_pci_get_mmio_addr(mmio_info, offset, ...)		\
> > > +	__libie_pci_get_mmio_addr(mmio_info, offset,			\
> > > +				   COUNT_ARGS(__VA_ARGS__), ##__VA_ARGS__)
> > 
> > Perhaps I'm missing something terribly obvious.  But it seems to me that
> > both libie_pci_map_mmio_region() and libie_pci_get_mmio_addr() are always
> > called with the same number of arguments in this patchset.
> 
> This is true.
> 
> > And if so,
> > perhaps the va_args handling would be best dropped.
> >
> 
> For now (but this will change), we do not map BAR indexes other than zero, 
> therefore it is the default less-argument variant, this looks nicer than adding 
> ', 0);'. Still, it does not feel right to hardcode the library function to use 
> BAR0 only, hence the variadic macro.

Thanks for the clarification. I would slightly lead towards adding
va_args support when it is needed. But I understand if you want
to stick with the approach that you have taken in this patch.

> 
> > > +
> > > +bool __libie_pci_map_mmio_region(struct libie_mmio_info *mmio_info,
> > > +				 resource_size_t offset, resource_size_t size,
> > > +				 int num_args, ...);
> > > +void __iomem *__libie_pci_get_mmio_addr(struct libie_mmio_info *mmio_info,
> > > +					resource_size_t region_offset,
> > > +					int num_args, ...);
> > > +void libie_pci_unmap_all_mmio_regions(struct libie_mmio_info *mmio_info);
> > > +int libie_pci_init_dev(struct pci_dev *pdev);
> > > +void libie_pci_deinit_dev(struct pci_dev *pdev);
> > > +
> > > +#endif /* __LIBIE_PCI_H */
> > > -- 
> > > 2.47.0
> > > 
> > 
> 
