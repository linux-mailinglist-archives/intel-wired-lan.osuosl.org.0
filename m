Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D98C81D5C1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 19:22:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E98740165;
	Sat, 23 Dec 2023 18:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E98740165
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703355747;
	bh=QzMdA+M38f4WvonmMQsG9eh+LRwBiHP34ymmV9K1TLw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jf5U/2z0CBT6cNvK3ry42Euc+a60Ou76lSZXIyXgkIcyfAZg0ajLdS0fYhtSJ27Zu
	 lnTcrlh6v8eepkHEwJy7oTRzot/NSNdwUtZLTcKEHKMt0JEJ8izGsvP43nHYoMxgtx
	 nGUZpKzEdGuz8Amv1D/liNWqmpp0Uc8VfYd21pFlDPDXz/WZsvGcxbVkgPIqBBL/bD
	 lDbg97sXx7npSDazF+Nc21IERx1bcxHhy46aEZJD7rb3OqYHKh9K8jAoMrdeWc3c0x
	 l5550uFQ5JaFgjo2QvMDeuYrHj6sRP0XNQFrgm3Ul6665VZpg3htDakkUxBv6QBrpW
	 Tt32PihBs/LHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LTd03a-mRh6T; Sat, 23 Dec 2023 18:22:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D00384011C;
	Sat, 23 Dec 2023 18:22:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D00384011C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A62A61BF34C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 18:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 89ABA41747
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 18:22:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89ABA41747
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zPxxM-vpkbgl for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 18:22:19 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB6A64160D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 18:22:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB6A64160D
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 958DE60B05;
 Sat, 23 Dec 2023 18:22:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B849AC433C8;
 Sat, 23 Dec 2023 18:22:15 +0000 (UTC)
Date: Sat, 23 Dec 2023 18:22:13 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20231223182213.GK201037@kernel.org>
References: <20231221100326.1030761-1-karol.kolacinski@intel.com>
 <20231221100326.1030761-3-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231221100326.1030761-3-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1703355737;
 bh=7YgZjgPdz3vwKmJhQ2IYJpvkLXR6GFQjhfBpY5pwTQE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DS4lintziKXlrbH/1Z5KCbLcHJ14mdE7uWCg662+xMU30MgHMuS7obF/vD2C1a6yC
 9/EctNgrYBk391CR3FsWE7bHRdKpsEaAisWGYHqtoqUAchCi1fFwqHWAVTL6YQ/d0n
 tAa+qbzn7zAjmnaAZVnBd1b9qNn2s6M1D7hnjKTLjVks5rSyYYUrSdFz7pUcGWnNGX
 U9cckBeLEGTlKBi8kQzBRmEsTs3Iu/Co1I+E1nzVU+y17NeVFKAqHzkcDcOn/9wj7X
 lVJMnvdSH9l0r8Q/zA0dBqN2VlSNmmru/Hz+Cs3P6SL5rjRt00bhWjd0t+QJybf0/i
 2T1VKwWfT+WPQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DS4lintz
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 2/6] ice: pass reset type
 to PTP reset functions
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 21, 2023 at 11:03:22AM +0100, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_ptp_prepare_for_reset() and ice_ptp_reset() functions currently
> check the pf->flags ICE_FLAG_PFR_REQ bit to determine if the current
> reset is a PF reset or not.
> 
> This is problematic, because it is possible that a PF reset and a higher
> level reset (CORE reset, GLOBAL reset, EMP reset) are requested
> simultaneously. In that case, the driver performs the highest level
> reset requested. However, the ICE_FLAG_PFR_REQ flag will still be set.
> 
> The main driver reset functions take an enum ice_reset_req indicating
> which reset is actually being performed. Pass this data into the PTP
> functions and rely on this instead of relying on the driver flags.
> 
> This ensures that the PTP code performs the proper level of reset that
> the driver is actually undergoing.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 2457380142e1..bbac053bd099 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -314,8 +314,8 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
>  
>  u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
>  			const struct ice_pkt_ctx *pkt_ctx);
> -void ice_ptp_reset(struct ice_pf *pf);

Hi Karol and Jacob,

I think that the declaration of ice_ptp_reset() is
needed for the case where CONFIG_PTP_1588_CLOCK=y
until patch 5/6 of this series.

> -void ice_ptp_prepare_for_reset(struct ice_pf *pf);
> +void ice_ptp_prepare_for_reset(struct ice_pf *pf,
> +			       enum ice_reset_req reset_type);
>  void ice_ptp_init(struct ice_pf *pf);
>  void ice_ptp_release(struct ice_pf *pf);
>  void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup);

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
