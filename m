Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9CFADEAF1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 13:55:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2FD57404BE;
	Wed, 18 Jun 2025 11:55:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pLS4S8CdkNS1; Wed, 18 Jun 2025 11:55:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30BEF404C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750247712;
	bh=iURbASIfWMGd94ptwunIdrKEdZf9EdWFhIp+Fs8Z42k=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VN2KBqY2gA7VY0aWxcQdtKYcgY2NRB9Xkr2aUgik8rcMt4iXq0S+DJclOuCrwYJpx
	 b7wTaZvz1u3WIPANYHOcJa4DW/O1C/qnH8mRI+1lKsUGpLOsPtH3wRaglIFf3jzkv3
	 25uuUfI5+KOdmCgsvOQ8avrR7lXhU0W/IPF5g+mGK8FDFSWQKmzIcAayDZZvLSutRq
	 A8T1iSFnfnJLFkPANJqgRIms9oGKGf9A1BXA1c8p9wpHPU+r9M0RG01itNWHtB8Yq6
	 T28ojk99QS6y28vrZL6QBCGyz6WFjHuwTOpX70RROwh4QGXvRuuIhN1QaLl6XYtCa7
	 1a7G4D0vaygQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30BEF404C0;
	Wed, 18 Jun 2025 11:55:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 33DAA151
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 11:55:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D3C180ED1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 11:55:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4-6ur_7K-3N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 11:55:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C11F380E89
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C11F380E89
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C11F380E89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 11:55:07 +0000 (UTC)
Received: from [141.14.220.36] (g36.guest.molgen.mpg.de [141.14.220.36])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7646E61E64783;
 Wed, 18 Jun 2025 13:54:47 +0200 (CEST)
Message-ID: <580ed7b6-1045-4347-a88e-edbf982cb287@molgen.mpg.de>
Date: Wed, 18 Jun 2025 13:54:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jesse Brandeburg <jbrandeburg@cloudflare.com>
References: <20250618112925.12193-2-przemyslaw.kitszel@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250618112925.12193-2-przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: convert ice_add_prof()
 to bitmap
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

Dear Przemek, dear Jesse,


Thank you for the patch.

Am 18.06.25 um 13:28 schrieb Przemek Kitszel:
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Previously the ice_add_prof() took an array of u8 and looped over it with
> for_each_set_bit(), examining each 8 bit value as a bitmap.
> This was just hard to understand and unnecessary, and was triggering
> undefined behavior sanitizers with unaligned accesses within bitmap
> fields (on our internal tools/builds). Since the @ptype being passed in
> was already declared as a bitmap, refactor this to use native types with
> the advantage of simplifying the code to use a single loop.

Any tests to verify no regressions are introduced?

> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> CC: Jesse Brandeburg <jbrandeburg@cloudflare.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_flex_pipe.h    |  7 +-
>   .../net/ethernet/intel/ice/ice_flex_pipe.c    | 78 +++++++------------
>   drivers/net/ethernet/intel/ice/ice_flow.c     |  4 +-
>   3 files changed, 34 insertions(+), 55 deletions(-)

More removed lines than added ones is always a good diff stat.

> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
> index 28b0897adf32..ee5d9f9c9d53 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
> @@ -39,9 +39,10 @@ bool ice_hw_ptype_ena(struct ice_hw *hw, u16 ptype);
>   
>   /* XLT2/VSI group functions */
>   int
> -ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
> -	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
> -	     struct ice_fv_word *es, u16 *masks, bool symm, bool fd_swap);
> +ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id,
> +	     unsigned long *ptypes, const struct ice_ptype_attributes *attr,
> +	     u16 attr_cnt, struct ice_fv_word *es, u16 *masks, bool symm,
> +	     bool fd_swap);
>   struct ice_prof_map *
>   ice_search_prof_id(struct ice_hw *hw, enum ice_block blk, u64 id);
>   int
> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> index ed95072ca6e3..363ae79a3620 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> @@ -3043,16 +3043,16 @@ ice_disable_fd_swap(struct ice_hw *hw, u8 prof_id)
>    * the ID value used here.
>    */
>   int
> -ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
> -	     const struct ice_ptype_attributes *attr, u16 attr_cnt,
> -	     struct ice_fv_word *es, u16 *masks, bool symm, bool fd_swap)
> +ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id,
> +	     unsigned long *ptypes, const struct ice_ptype_attributes *attr,
> +	     u16 attr_cnt, struct ice_fv_word *es, u16 *masks, bool symm,
> +	     bool fd_swap)
>   {
> -	u32 bytes = DIV_ROUND_UP(ICE_FLOW_PTYPE_MAX, BITS_PER_BYTE);
>   	DECLARE_BITMAP(ptgs_used, ICE_XLT1_CNT);
>   	struct ice_prof_map *prof;
> -	u8 byte = 0;
> -	u8 prof_id;
>   	int status;
> +	u8 prof_id;
> +	u16 ptype;
>   
>   	bitmap_zero(ptgs_used, ICE_XLT1_CNT);
>   
> @@ -3102,57 +3102,35 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
>   	prof->context = 0;
>   
>   	/* build list of ptgs */
> -	while (bytes && prof->ptg_cnt < ICE_MAX_PTG_PER_PROFILE) {
> -		u8 bit;
> +	for_each_set_bit(ptype, ptypes, ICE_FLOW_PTYPE_MAX) {
> +		u8 ptg;
>   
> -		if (!ptypes[byte]) {
> -			bytes--;
> -			byte++;
> +		/* The package should place all ptypes in a non-zero
> +		 * PTG, so the following call should never fail.
> +		 */
> +		if (ice_ptg_find_ptype(hw, blk, ptype, &ptg))
>   			continue;
> -		}
>   
> -		/* Examine 8 bits per byte */
> -		for_each_set_bit(bit, (unsigned long *)&ptypes[byte],
> -				 BITS_PER_BYTE) {
> -			u16 ptype;
> -			u8 ptg;
> -
> -			ptype = byte * BITS_PER_BYTE + bit;
> -
> -			/* The package should place all ptypes in a non-zero
> -			 * PTG, so the following call should never fail.
> -			 */
> -			if (ice_ptg_find_ptype(hw, blk, ptype, &ptg))
> -				continue;
> +		/* If PTG is already added, skip and continue */
> +		if (test_bit(ptg, ptgs_used))
> +			continue;
>   
> -			/* If PTG is already added, skip and continue */
> -			if (test_bit(ptg, ptgs_used))
> -				continue;
> +		set_bit(ptg, ptgs_used);
> +		/* Check to see there are any attributes for this ptype, and
> +		 * add them if found.
> +		 */
> +		status = ice_add_prof_attrib(prof, ptg, ptype, attr, attr_cnt);
> +		if (status == -ENOSPC)
> +			break;
> +		if (status) {
> +			/* This is simple a ptype/PTG with no attribute */
> +			prof->ptg[prof->ptg_cnt] = ptg;
> +			prof->attr[prof->ptg_cnt].flags = 0;
> +			prof->attr[prof->ptg_cnt].mask = 0;
>   
> -			__set_bit(ptg, ptgs_used);
> -			/* Check to see there are any attributes for
> -			 * this PTYPE, and add them if found.
> -			 */
> -			status = ice_add_prof_attrib(prof, ptg, ptype,
> -						     attr, attr_cnt);
> -			if (status == -ENOSPC)
> +			if (++prof->ptg_cnt >= ICE_MAX_PTG_PER_PROFILE)
>   				break;
> -			if (status) {
> -				/* This is simple a PTYPE/PTG with no
> -				 * attribute
> -				 */
> -				prof->ptg[prof->ptg_cnt] = ptg;
> -				prof->attr[prof->ptg_cnt].flags = 0;
> -				prof->attr[prof->ptg_cnt].mask = 0;
> -
> -				if (++prof->ptg_cnt >=
> -				    ICE_MAX_PTG_PER_PROFILE)
> -					break;
> -			}
>   		}
> -
> -		bytes--;
> -		byte++;
>   	}
>   
>   	list_add(&prof->list, &hw->blk[blk].es.prof_map);
> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
> index d97b751052f2..c63e43b8b110 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> @@ -1421,7 +1421,7 @@ ice_flow_add_prof_sync(struct ice_hw *hw, enum ice_block blk,
>   	}
>   
>   	/* Add a HW profile for this flow profile */
> -	status = ice_add_prof(hw, blk, prof_id, (u8 *)params->ptypes,
> +	status = ice_add_prof(hw, blk, prof_id, params->ptypes,
>   			      params->attr, params->attr_cnt, params->es,
>   			      params->mask, symm, true);
>   	if (status) {
> @@ -1617,7 +1617,7 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
>   		break;
>   	}
>   
> -	status = ice_add_prof(hw, blk, id, (u8 *)prof->ptypes,
> +	status = ice_add_prof(hw, blk, id, prof->ptypes,
>   			      params->attr, params->attr_cnt,
>   			      params->es, params->mask, false, false);
>   	if (status)

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
