Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219036B7C35
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 16:41:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DEA5409DD;
	Mon, 13 Mar 2023 15:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DEA5409DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678722075;
	bh=p8O4wtPm9XGmNIxpGwwWTiqP9FnJZ5uEkvYhMdcBqxk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PRUMB3N6Y6GMBZ2ZLT32iocCmIdsIW+avA9lESYxcvj3tsh7vMRhtu3DgE+XOeSvD
	 OoBWhPJiH1L1EFIGYlsPiFxgSlf47F1VvX3PHepqO56OPHFfWqLE55kacOH6rA9w6w
	 X/99Wop+QfvKwt+Fa8fceprgVyhbKz6WIrvtsrqaeaNV1xI6N3IgcCEWJVvcWl8DHx
	 5PbRDOeUK9owPlfMUdJ4F3H/6xx53i5HC1u8hoLogOIBg9XEUk9De9Z0sQHTFn4eE1
	 ULw2Wz0VKADz9wFYa+JDwdjBFBD91bg99cImUFuA5yslaRVtxikJnO3zWN639SxyRh
	 5+ePCRWTGStOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WVEYcmokgnVz; Mon, 13 Mar 2023 15:41:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1F84409DB;
	Mon, 13 Mar 2023 15:41:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1F84409DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2FC3E1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 15:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08DDD409DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 15:41:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08DDD409DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id thkx2_Mz121O for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 15:41:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBE83409DD
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBE83409DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 15:41:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="321031993"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="321031993"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 08:41:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="656017947"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="656017947"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 08:41:05 -0700
Date: Mon, 13 Mar 2023 16:40:56 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Radoslaw Tyl <radoslawx.tyl@intel.com>
Message-ID: <ZA9ECCdK8uShOKib@localhost.localdomain>
References: <20230313140733.4140757-1-radoslawx.tyl@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230313140733.4140757-1-radoslawx.tyl@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678722066; x=1710258066;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aBsSeNPH7snsh6FeCVh7kFsBNrHhpDIg7N5UgyGqh/s=;
 b=Yuqyz74w+Ta5dQ3b7DofVEhquWOdKPpfCYcvBFnCMrIyK+phqLtVo740
 0wZDuj5RSXkVIIEYSSJyh3DL37SIKhJUyJBVgsThnRMPy7xr24HfJ/A6T
 k9RdCdF9SMeuQW3N2wFLTuT7pjkN1tJ5HPhDMT+4jLA5KkGXMnBHxpUro
 Ejq1mTXWE8wT36kRA2ID+2DJW7CP66YAGl/hhbxJIS8eufhfao2FfCIW4
 zTvKrOs2M8O9JupjOMOlx4u6hvh3Mhe1iE7/UtJOJtx79k32lmXZ+KuQ7
 fixMC55r5+EihzUem99eSlzhe2c9ERfjsJT3X/0jEnRvMvzb/YQCprXyA
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yuqyz74w
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix flow director packet
 filter programming
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 13, 2023 at 03:07:33PM +0100, Radoslaw Tyl wrote:
> Initialize to zero structures to build a valid
> Tx Packet used for the filter programming.
> 
> Fixes: a9219b332f52 ("i40e: VLAN field for flow director")
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 924f972b91fa..72b091f2509d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -171,10 +171,10 @@ static char *i40e_create_dummy_packet(u8 *dummy_packet, bool ipv4, u8 l4proto,
>  				      struct i40e_fdir_filter *data)
>  {
>  	bool is_vlan = !!data->vlan_tag;
> -	struct vlan_hdr vlan;
> -	struct ipv6hdr ipv6;
> -	struct ethhdr eth;
> -	struct iphdr ip;
> +	struct vlan_hdr vlan = {};
> +	struct ipv6hdr ipv6 = {};
> +	struct ethhdr eth = {};
> +	struct iphdr ip = {};
>  	u8 *tmp;
>  
>  	if (ipv4) {
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Feel free to add review tag when someone paste it on ML (even internal
one):
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
