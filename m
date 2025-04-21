Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E06A9527E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Apr 2025 16:08:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1301D403FE;
	Mon, 21 Apr 2025 14:08:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n5frxk_AmssP; Mon, 21 Apr 2025 14:08:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6688540650
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745244527;
	bh=YrTSPXG4k0Hzwi1ZGTug3BljLO15RmvDpt449VgiKKU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aGcedaLCQFqK9zYici/LQ3x0gQhjQj7i9z4qCg87xuGMRjcW9WJxJNKSJ53cX3dPp
	 LOfjsYW4bPXRmGWgR/Lfmdtl01Yn39CiHCmMvSQ4+HhIsXR7smvx/j7r32sg9ovqWf
	 0b2imqoVO3wxOnKv0xj6tlvekJcNlWOqhrINrBH88TEowYGqFkfHU+n9wRrNTY6M1r
	 uKeu9QwPGUDhrSjx8T+lJkYJCAEWVYWuah7QPxbR/+6cB0XZJujuBFEIudg7ZE4avP
	 TRl6rsAeqfV0c4SHBGYfmqnQgzM6ncu6J72fmPiTr0wNZOiHMf8m5OpS2oL8cyrIrA
	 tF1Kph9dM36fw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6688540650;
	Mon, 21 Apr 2025 14:08:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EDF91A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 14:08:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 604D740355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 14:08:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YHpp3ZEjP4u6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Apr 2025 14:08:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 94EBD403C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94EBD403C1
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 94EBD403C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 14:08:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C1BF060008;
 Mon, 21 Apr 2025 14:08:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EA64C4CEE4;
 Mon, 21 Apr 2025 14:08:38 +0000 (UTC)
Date: Mon, 21 Apr 2025 15:08:36 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Mustafa Ismail <mustafa.ismail@intel.com>,
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
 Wenjun Wu <wenjun1.wu@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Phani R Burra <phani.r.burra@intel.com>
Message-ID: <20250421140836.GH2789685@horms.kernel.org>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-4-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250408124816.11584-4-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745244524;
 bh=y+u9o3uYT+ExmvtSXbLZr8bAFVgoBqK/gneBhs8PZLk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ee9IrGNVBY468I0nIZFGOEwSSO4iJvmV3Vd8XmWujePOkW+RQw0qoTf5gPE74TnZX
 C8qwUs7dBOH7vUuZLAMHPY+whZ5y16Alj+g6qhK4NH9aSW8/lQwyAugMGUmHKBPgkX
 Ts1mQDeM8F3kFazN6V7zQoAIWI9/BkSajNLajuJFM0ROiLpWxVBeDRz0eNKGLZmJSl
 jLi7vAzRyzF0K2AP8N2qSWfhDO6AFW5+6nFbaFugRIYCz8i1SYJEZgZLK5F91i+MwP
 7PLXue2MFhNahQ6ie5tjBbSvEt2QfpqOrxjN8pZJABKrBwRH6YHk0J4IJEkLmDcQTW
 sZljmP2HBMWYw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ee9IrGNV
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 03/14] libeth: add PCI device
 initialization helpers to libeth
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

On Tue, Apr 08, 2025 at 02:47:49PM +0200, Larysa Zaremba wrote:
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

> diff --git a/drivers/net/ethernet/intel/libeth/pci.c b/drivers/net/ethernet/intel/libeth/pci.c

...

> +/**
> + * __libeth_pci_map_mmio_region - map PCI device MMIO region
> + * @mmio_info: struct to store the mapped MMIO region
> + * @offset: MMIO region start offset
> + * @size: MMIO region size
> + * @num_args: number of additional arguments present
> + *
> + * Return: true on success, false on memory map failure.
> + */
> +bool __libeth_pci_map_mmio_region(struct libeth_mmio_info *mmio_info,
> +				  resource_size_t offset,
> +				  resource_size_t size, int num_args, ...)
> +{
> +	struct pci_dev *pdev = mmio_info->pdev;
> +	struct libeth_pci_mmio_region *mr;
> +	resource_size_t pa;
> +	void __iomem *va;
> +	int bar_idx = 0;
> +	va_list args;
> +
> +	if (num_args) {
> +		va_start(args, num_args);
> +		bar_idx = va_arg(args, int);
> +		va_end(args);
> +	}
> +
> +	mr = libeth_find_mmio_region(&mmio_info->mmio_list, offset, bar_idx);
> +	if (mr) {
> +		pci_warn(pdev, "Mapping of BAR%u with offset %llu already exists\n",
> +			 bar_idx, offset);

Hi Phani, Larysa, all,

I think that the format specifier here should be %zu rather than %llu.

On ARM W=1 builds gcc 14.2.0 flags this as follows:

    CALL    scripts/checksyscalls.sh
    CC      drivers/net/ethernet/intel/libeth/pci.o
  In file included from ./include/linux/device.h:15,
                   from ./include/linux/pci.h:37,
                   from ./include/net/libeth/pci.h:7,
                   from drivers/net/ethernet/intel/libeth/pci.c:4:
  .../pci.c: In function '__libeth_pci_map_mmio_region':
  .../pci.c:92:32: warning: format '%llu' expects argument of type 'long long unsigned int', but argument 4 has type 'resource_size_t' {aka 'unsigned int'} [-Wformat=]
     92 |                 pci_warn(pdev, "Mapping of BAR%u with offset %llu already exists\n",
        |                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  .../dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
    110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
        |                              ^~~
  .../dev_printk.h:156:61: note: in expansion of macro 'dev_fmt'
    156 |         dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
        |                                                             ^~~~~~~
  .../pci.h:2704:41: note: in expansion of macro 'dev_warn'
   2704 | #define pci_warn(pdev, fmt, arg...)     dev_warn(&(pdev)->dev, fmt, ##arg)
        |                                         ^~~~~~~~
  .../pci.c:92:17: note: in expansion of macro 'pci_warn'
     92 |                 pci_warn(pdev, "Mapping of BAR%u with offset %llu already exists\n",
        |                 ^~~~~~~~
  .../pci.c:92:65: note: format string is defined here
     92 |                 pci_warn(pdev, "Mapping of BAR%u with offset %llu already exists\n",
        |                                                              ~~~^
        |                                                                 |
        |                                                                 long long unsigned int
        |                                                              %u
