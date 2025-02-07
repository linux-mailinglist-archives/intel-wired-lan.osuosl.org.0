Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1350A2C688
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 16:08:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA46D81175;
	Fri,  7 Feb 2025 15:07:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CkKZjgflHxe9; Fri,  7 Feb 2025 15:07:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E55A980DB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738940879;
	bh=3PQjtKGBMeMp3Ga/c3Kbv/nJaffO+Ctk7iSsgBLTjOY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=prynn8YYrLKZA9FBophRBXAa5+buVaQia1vMrBPSC2SWnUkj6i58PfMpYMdk6tRi+
	 It1GOf6rgx4xIuB0VcdjGOSSgzRDtMGjuc4NFvKHgtq+yk0wq+cGnFab1980zPV0B1
	 Ij9+GlN4oy8DbBMZZdNeferwL1Cp4hgCxz2P93aMlrbFjV8OEyoOfC0uySsktV7yG6
	 3HXXhVUKhAh2Li4ueXkOe2xhXwtgNGSlmu4+WRNu8+QMC1rR99cBVjOMaI497XCezX
	 RmZuVIOSh1sGgBZFvB9T41Y8tS8obckljryGOqOVmj+SsaW3uu95Pge70f0NLiuE7h
	 ziJE4bwt1byGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E55A980DB2;
	Fri,  7 Feb 2025 15:07:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 49746CF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 15:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A991408E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 15:07:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FV2RppvsfHyo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 15:07:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 175F5408CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 175F5408CE
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 175F5408CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 15:07:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B8B0A5C1178;
 Fri,  7 Feb 2025 15:07:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6217DC4CED1;
 Fri,  7 Feb 2025 15:07:51 +0000 (UTC)
Date: Fri, 7 Feb 2025 15:07:49 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 marcin.szycik@linux.intel.com, jedrzej.jagielski@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 anthony.l.nguyen@intel.com, dawid.osuchowski@intel.com
Message-ID: <20250207150749.GY554665@kernel.org>
References: <20250207104343.2791001-1-michal.swiatkowski@linux.intel.com>
 <20250207104343.2791001-2-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250207104343.2791001-2-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738940873;
 bh=v1KzgMiQjDb+Z8BzvytQeodhaZrSQcciaDlfQvx2zvA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bMr9DsMjg1owhYUANvbZ3XPgHwGiUrhfLMUGmwLYkH9Jpg/K9CZXsaSbUbNIDsldJ
 iA6Z3r+0WKlsJlp0pdL1MO1Gsfrur8CFSzhcflqBZv6D81Jsm4sF7eeb94/JFBgqcx
 +RHOQQKKzKPIaP6J2oAt9ubzOK+RkYTgExrlLFIJPOL08vmkQoJXPB4ZRSEBBkZCx/
 H76BQvVbjoqVT0F8mFpF8RHDL5WPRmKdzuDNEyM8YL/nZiV6eLaDhXrNZCORLYjZCU
 haePR8+Ed8JRh17v11OV8IpGXM0S9CZELJGeImkZHjnaOBZWF7+RJV+zsLd/pOTCXv
 ITBSb0iV80AGA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bMr9DsMj
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

On Fri, Feb 07, 2025 at 11:43:40AM +0100, Michal Swiatkowski wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Add malicious driver detection. Support enabling MDD, disabling MDD,
> handling a MDD event, and restoring a MDD VF.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c

...

> +/**
> + * ixgbe_handle_mdd_x550 - handle malicious driver detection event
> + * @hw: pointer to hardware structure
> + * @vf_bitmap: output vf bitmap of malicious vfs
> + */
> +void ixgbe_handle_mdd_x550(struct ixgbe_hw *hw, unsigned long *vf_bitmap)
> +{
> +	u32 i, j, reg, q, div, vf, wqbr;
> +
> +	/* figure out pool size for mapping to vf's */
> +	reg = IXGBE_READ_REG(hw, IXGBE_MRQC);
> +	switch (reg & IXGBE_MRQC_MRQE_MASK) {
> +	case IXGBE_MRQC_VMDQRT8TCEN:
> +		div = IXGBE_16VFS_QUEUES;
> +		break;
> +	case IXGBE_MRQC_VMDQRSS32EN:
> +	case IXGBE_MRQC_VMDQRT4TCEN:
> +		div = IXGBE_32VFS_QUEUES;
> +		break;
> +	default:
> +		div = IXGBE_64VFS_QUEUES;
> +		break;
> +	}
> +
> +	/* Read WQBR_TX and WQBR_RX and check for malicious queues */
> +	for (i = 0; i < IXGBE_QUEUES_REG_AMOUNT; i++) {
> +		wqbr = IXGBE_READ_REG(hw, IXGBE_WQBR_TX(i)) |
> +		       IXGBE_READ_REG(hw, IXGBE_WQBR_RX(i));
> +		if (!wqbr)
> +			continue;
> +
> +		/* Get malicious queue */
> +		for_each_set_bit(j, (unsigned long *)&wqbr,
> +				 IXGBE_QUEUES_PER_REG) {

The type of wqbr is a u32, that is it is 32-bits wide.
Above it's address is cast to unsigned long *.
But, unsigned long may be 64-bits wide, e.g. on x86_64.

GCC 14.2.0 EXTRA_CFLAGS=-Warray-bounds builds report this as:

In file included from ./include/linux/bitmap.h:11,
                 from ./include/linux/cpumask.h:12,
                 from ./arch/x86/include/asm/paravirt.h:21,
                 from ./arch/x86/include/asm/cpuid.h:71,
                 from ./arch/x86/include/asm/processor.h:19,
                 from ./arch/x86/include/asm/cpufeature.h:5,
                 from ./arch/x86/include/asm/thread_info.h:59,
                 from ./include/linux/thread_info.h:60,
                 from ./include/linux/uio.h:9,
                 from ./include/linux/socket.h:8,
                 from ./include/uapi/linux/if.h:25,
                 from ./include/linux/mii.h:12,
                 from ./include/uapi/linux/mdio.h:15,
                 from ./include/linux/mdio.h:9,
                 from drivers/net/ethernet/intel/ixgbe/ixgbe_type.h:8,
                 from drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h:7,
                 from drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:4:
In function ‘find_next_bit’,
    inlined from ‘ixgbe_handle_mdd_x550’ at drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:3907:3:
./include/linux/find.h:65:23: error: array subscript ‘long unsigned int[0]’ is partly outside array bounds of ‘u32[1]’ {aka ‘unsigned int[1]’} [-Werror=array-bounds=]
   65 |                 val = *addr & GENMASK(size - 1, offset);
      |                       ^~~~~

I think this can be addressed by changing the type of wqmbr to unsigned long.

> +			/* Get queue from bitmask */
> +			q = j + (i * IXGBE_QUEUES_PER_REG);
> +			/* Map queue to vf */
> +			vf = q / div;
> +			set_bit(vf, vf_bitmap);
> +		}
> +	}
> +}
> +
>  #define X550_COMMON_MAC \
>  	.init_hw			= &ixgbe_init_hw_generic, \
>  	.start_hw			= &ixgbe_start_hw_X540, \

...
