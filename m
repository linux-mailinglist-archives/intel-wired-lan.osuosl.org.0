Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF29A2E3D4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 06:55:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB16360A5D;
	Mon, 10 Feb 2025 05:55:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EziLEaQl-N82; Mon, 10 Feb 2025 05:55:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 195E060618
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739166900;
	bh=Cnn9FEDqRFmIh4Md556+0gt2ApmKany69veQjf4Vk5c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Iiv4IkuwW00RpHVIF6GXdhDLNmmTfiEnpTlCOPmz/swQlzcOane6NwFyiPfsj5N5W
	 S3Dqsdc7DD1C1mQkenC/vtW620B4tWYlDxPb/QmRww5aUwgBYDnZmYDNY621Vf3ybM
	 0jh4UMs4ccPy4lXy321PqAiF5uI1l0kiBJ4mdo4jXNOxP7BTS5iPKok3n3ENDR5xgG
	 cx0DDW+9O2YFKE40/ZblQwDC5osCoKKBYVXbv51bq8L8MGl/6IxI8VwfYGRwtm0acS
	 DEp0Fp9Q5tfsPGbWZ1JvWvfdAgHlJVsKj12drZxKe0vMLk05AdpOFjShuq89LPm84h
	 ThdDLU6dO1pqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 195E060618;
	Mon, 10 Feb 2025 05:55:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3FBB6C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E365410BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:54:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IHeHssoP5pMZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 05:54:56 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 172CE410B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 172CE410B6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 172CE410B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:54:56 +0000 (UTC)
X-CSE-ConnectionGUID: paILWRc2TgiV/GkNT9D94A==
X-CSE-MsgGUID: xWfz//PVR5mMqpbs+GcuiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11340"; a="43658848"
X-IronPort-AV: E=Sophos;i="6.13,273,1732608000"; d="scan'208";a="43658848"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2025 21:54:55 -0800
X-CSE-ConnectionGUID: oopQwjHhTjmtbn1zxQVksw==
X-CSE-MsgGUID: Hgwyqh8AQJmPN7uOFeAZ0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="117031203"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2025 21:54:53 -0800
Date: Mon, 10 Feb 2025 06:51:21 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <horms@kernel.org>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 marcin.szycik@linux.intel.com, jedrzej.jagielski@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 anthony.l.nguyen@intel.com, dawid.osuchowski@intel.com
Message-ID: <Z6mT2UzaZsIQXb66@mev-dev.igk.intel.com>
References: <20250207104343.2791001-1-michal.swiatkowski@linux.intel.com>
 <20250207104343.2791001-2-michal.swiatkowski@linux.intel.com>
 <20250207150749.GY554665@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250207150749.GY554665@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739166896; x=1770702896;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lNSEhFBAD60ZJCgpylPSqXMzlErGD62bkb2XntiZG3c=;
 b=ZvBjTAduu797FQ5OC3PA+5k/MvLXivG/wQrvIZqV5kPAX955RRC+5pPB
 wi5Nm27viwbjMOwKCTVBAriEn1414ht9Z4aenjQxQ6MEZXhWCHJXRRB0I
 5rly5Jm59mVdG8a2QjBEiJviS0C2qGEpKNA0ybinWI2tSVqbbAgrTOc4z
 AfRhKMmYwfLOL55qlaBo8zo8TeoJdcTdBeXrcJy6+JZ7Cmd7iPmtBvqcR
 WaDZIZ+0amPcptnHtvTMTlAQelctEM35rQJPoir/7mTx67p731nqTudQs
 1i0b1IdQkCbsyNOJ0GzOPuRP3fYpUdZ8ncUuNYg42Sb3bIYJMPEpEBj/5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZvBjTAdu
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/4] ixgbe: add MDD support
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

On Fri, Feb 07, 2025 at 03:07:49PM +0000, Simon Horman wrote:
> On Fri, Feb 07, 2025 at 11:43:40AM +0100, Michal Swiatkowski wrote:
> > From: Paul Greenwalt <paul.greenwalt@intel.com>
> > 
> > Add malicious driver detection. Support enabling MDD, disabling MDD,
> > handling a MDD event, and restoring a MDD VF.
> > 
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> 
> ...
> 
> > +/**
> > + * ixgbe_handle_mdd_x550 - handle malicious driver detection event
> > + * @hw: pointer to hardware structure
> > + * @vf_bitmap: output vf bitmap of malicious vfs
> > + */
> > +void ixgbe_handle_mdd_x550(struct ixgbe_hw *hw, unsigned long *vf_bitmap)
> > +{
> > +	u32 i, j, reg, q, div, vf, wqbr;
> > +
> > +	/* figure out pool size for mapping to vf's */
> > +	reg = IXGBE_READ_REG(hw, IXGBE_MRQC);
> > +	switch (reg & IXGBE_MRQC_MRQE_MASK) {
> > +	case IXGBE_MRQC_VMDQRT8TCEN:
> > +		div = IXGBE_16VFS_QUEUES;
> > +		break;
> > +	case IXGBE_MRQC_VMDQRSS32EN:
> > +	case IXGBE_MRQC_VMDQRT4TCEN:
> > +		div = IXGBE_32VFS_QUEUES;
> > +		break;
> > +	default:
> > +		div = IXGBE_64VFS_QUEUES;
> > +		break;
> > +	}
> > +
> > +	/* Read WQBR_TX and WQBR_RX and check for malicious queues */
> > +	for (i = 0; i < IXGBE_QUEUES_REG_AMOUNT; i++) {
> > +		wqbr = IXGBE_READ_REG(hw, IXGBE_WQBR_TX(i)) |
> > +		       IXGBE_READ_REG(hw, IXGBE_WQBR_RX(i));
> > +		if (!wqbr)
> > +			continue;
> > +
> > +		/* Get malicious queue */
> > +		for_each_set_bit(j, (unsigned long *)&wqbr,
> > +				 IXGBE_QUEUES_PER_REG) {
> 
> The type of wqbr is a u32, that is it is 32-bits wide.
> Above it's address is cast to unsigned long *.
> But, unsigned long may be 64-bits wide, e.g. on x86_64.
> 
> GCC 14.2.0 EXTRA_CFLAGS=-Warray-bounds builds report this as:
> 
> In file included from ./include/linux/bitmap.h:11,
>                  from ./include/linux/cpumask.h:12,
>                  from ./arch/x86/include/asm/paravirt.h:21,
>                  from ./arch/x86/include/asm/cpuid.h:71,
>                  from ./arch/x86/include/asm/processor.h:19,
>                  from ./arch/x86/include/asm/cpufeature.h:5,
>                  from ./arch/x86/include/asm/thread_info.h:59,
>                  from ./include/linux/thread_info.h:60,
>                  from ./include/linux/uio.h:9,
>                  from ./include/linux/socket.h:8,
>                  from ./include/uapi/linux/if.h:25,
>                  from ./include/linux/mii.h:12,
>                  from ./include/uapi/linux/mdio.h:15,
>                  from ./include/linux/mdio.h:9,
>                  from drivers/net/ethernet/intel/ixgbe/ixgbe_type.h:8,
>                  from drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h:7,
>                  from drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:4:
> In function ‘find_next_bit’,
>     inlined from ‘ixgbe_handle_mdd_x550’ at drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:3907:3:
> ./include/linux/find.h:65:23: error: array subscript ‘long unsigned int[0]’ is partly outside array bounds of ‘u32[1]’ {aka ‘unsigned int[1]’} [-Werror=array-bounds=]
>    65 |                 val = *addr & GENMASK(size - 1, offset);
>       |                       ^~~~~
> 
> I think this can be addressed by changing the type of wqmbr to unsigned long.

Thanks for catching that, I will fix.

> 
> > +			/* Get queue from bitmask */
> > +			q = j + (i * IXGBE_QUEUES_PER_REG);
> > +			/* Map queue to vf */
> > +			vf = q / div;
> > +			set_bit(vf, vf_bitmap);
> > +		}
> > +	}
> > +}
> > +
> >  #define X550_COMMON_MAC \
> >  	.init_hw			= &ixgbe_init_hw_generic, \
> >  	.start_hw			= &ixgbe_start_hw_X540, \
> 
> ...
