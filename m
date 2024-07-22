Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E0D939150
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 17:05:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D6E980B81;
	Mon, 22 Jul 2024 15:05:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bTr3PRzaR2AT; Mon, 22 Jul 2024 15:05:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80CB780B3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721660738;
	bh=xFhmEA4v/9kFvXE1LdpLxxDqZFV/hBdActKyRNPs6Gw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kbEyob8fRf7bs6EWXBmbQhqCOAT/MXpzRjvcIgMS9ITiXUiA1Emd468meYLNiR1Fh
	 du4HTu6C+NU3Jt/P+VcZvM9UWbFgmXV+irfe99ePxY9PWw6bPNzX4WKwL2yZxOXms6
	 7nHSP1Y+MtC1/Ml6c+Y5od58mbRAQ8YefNkSmH/aBzFAtsqWqKhhDCJqDId3T21x0m
	 MRlmIwJUMCTjvar1qgzwRcutsXr9vH6j+fJz9cAJVqNo2LQF3TR1Ts0gVrvS73YL/L
	 oI67qq2ZPvrQbOWPhDbEhKZ2JOe/3ri2ap1OQuLUIMOl8RhiDuO2q+I4hCWwPN2a3R
	 6tRFWIN999+2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80CB780B3A;
	Mon, 22 Jul 2024 15:05:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E6D11BF31D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B4A580B13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:05:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f62VlDQ2ufbO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 15:05:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4275580B06
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4275580B06
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4275580B06
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:05:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8CAAD60B6F;
 Mon, 22 Jul 2024 15:05:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7D6AC4AF10;
 Mon, 22 Jul 2024 15:05:32 +0000 (UTC)
Date: Mon, 22 Jul 2024 16:05:30 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240722150530.GL715661@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-14-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710204015.124233-14-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721660734;
 bh=QLK+aBZ7KtdrjUdjLucoN+29ohXeB+CVID27TKDB1fs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TWpUUgGjvhEwSL9Mz/yL4Aaibwvl6kcql4vMgV0PWt3QDNKdMHQ+hEd55f2hWTNco
 HuW/dgKas8mfYi3JMjtfoI3qqJrGyWerMveW/HX4JPChToxp9ervgBK7sNf1iZqJoR
 nCKpOaYSJTBedpjGmen9Jz3O6TjRUzGp8YYrpUqhuY5MbE0FuzSleCf8lZ7RKHSFfW
 uZl+IMy+z86stp1yW1Nm+vIlqjAKhFVG5Qg87QaHk76Uo8+PawW1oW1+t19USNzvIF
 fA8frsnhvjP93yi7ITn+SvENxffBZlzlKcfg0j7bANaZJRJp3kSjPPlonthtKlvuWw
 PB8uQQ/ieMDBQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TWpUUgGj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 13/13] iavf: add support
 for offloading tc U32 cls filters
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 10, 2024 at 02:40:15PM -0600, Ahmed Zaki wrote:
> Add support for offloading cls U32 filters. Only "skbedit queue_mapping"
> and "drop" actions are supported. Also, only "ip" and "802_3" tc
> protocols are allowed. The PF must advertise the VIRTCHNL_VF_OFFLOAD_TC_U32
> capability flag.
> 
> Since the filters will be enabled via the FD stage at the PF, a new type
> of FDIR filters is added and the existing list and state machine are used.
> 
> The new filters can be used to configure flow directors based on raw
> (binary) pattern in the rx packet.
> 
> Examples:
> 
> 0. # tc qdisc add dev enp175s0v0  ingress
> 
> 1. Redirect UDP from src IP 192.168.2.1 to queue 12:
> 
>     # tc filter add dev <dev> protocol ip ingress u32 \
> 	match u32 0x45000000 0xff000000 at 0  \
> 	match u32 0x00110000 0x00ff0000 at 8  \
> 	match u32 0xC0A80201 0xffffffff at 12 \
> 	match u32 0x00000000 0x00000000 at 24 \
> 	action skbedit queue_mapping 12 skip_sw
> 
> 2. Drop all ICMP:
> 
>     # tc filter add dev <dev> protocol ip ingress u32 \
> 	match u32 0x45000000 0xff000000 at 0  \
> 	match u32 0x00010000 0x00ff0000 at 8  \
> 	match u32 0x00000000 0x00000000 at 24 \
> 	action drop skip_sw
> 
> 3. Redirect ICMP traffic from MAC 3c:fd:fe:a5:47:e0 to queue 7
>    (note proto: 802_3):
> 
>    # tc filter add dev <dev> protocol 802_3 ingress u32 \
> 	match u32 0x00003CFD 0x0000ffff at 4   \
> 	match u32 0xFEA547E0 0xffffffff at 8   \
> 	match u32 0x08004500 0xffffff00 at 12  \
> 	match u32 0x00000001 0x000000ff at 20  \
> 	match u32 0x0000 0x0000 at 40          \
> 	action skbedit queue_mapping 7 skip_sw
> 
> Notes on matches:
> 1 - All intermediate fields that are needed to parse the correct PTYPE
>     must be provided (in e.g. 3: Ethernet Type 0x0800 in MAC, IP version
>     and IP length: 0x45 and protocol: 0x01 (ICMP)).
> 2 - The last match must provide an offset that guarantees all required
>     headers are accounted for, even if the last header is not matched.
>     For example, in #2, the last match is 4 bytes at offset 24 starting
>     from IP header, so the total is 14 (MAC) + 24 + 4 = 42, which is the
>     sum of MAC+IP+ICMP headers.
> 
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h

...

>  /* Must be called with fdir_fltr_lock lock held */
>  static inline bool iavf_fdir_max_reached(struct iavf_adapter *adapter)
>  {
> -	return (adapter->fdir_active_fltr >= IAVF_MAX_FDIR_FILTERS);
> +	return (adapter->fdir_active_fltr + adapter->raw_fdir_active_fltr >=
> +			IAVF_MAX_FDIR_FILTERS);

nit: These parentheses seem unnecessary

> +}

...

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c

...

> +/**
> + * iavf_add_cls_u32 - Add U32 classifier offloads
> + * @adapter: pointer to iavf adapter structure
> + * @cls_u32: pointer to tc_cls_u32_offload struct with flow info

Please document the return value with a "Return:" or "Returns:" section.
Likewise for iavf_del_cls_u32 and iavf_setup_tc_cls_u32.

...
