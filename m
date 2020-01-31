Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F51C14F137
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2020 18:23:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9FD8186AC9;
	Fri, 31 Jan 2020 17:23:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zfYjGzWApw2N; Fri, 31 Jan 2020 17:23:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBEE286ACC;
	Fri, 31 Jan 2020 17:23:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19F001BF853
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 17:22:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0C56520338
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 17:22:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pF7sjeJaCVvg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2020 17:22:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 219A32043B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 17:22:58 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 09:22:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="428774593"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jan 2020 09:22:55 -0800
Date: Fri, 31 Jan 2020 11:15:43 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20200131101543.GA4872@ranger.igk.intel.com>
References: <20200131045658.ahliv7jvubpwoeru@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200131045658.ahliv7jvubpwoeru@kili.mountain>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix a couple off by one bugs
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 31, 2020 at 07:56:59AM +0300, Dan Carpenter wrote:
> The hw->blk[blk]->es.ref_count[] array has hw->blk[blk].es.count
> elements.  It gets allocated in ice_init_hw_tbls().  So the > should be
> >= to prevent accessing one element beyond the end of the array.
> 
> Fixes: 2c61054c5fda ("ice: Optimize table usage")

You should also provide:
Fixes: 31ad4e4ee1e4 ("ice: Allocate flow profile")

prof_id can be 0 so thanks for catching this. You can take my:
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> index 99208946224c..38a7041fe774 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> @@ -1950,7 +1950,7 @@ ice_free_prof_id(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
>  static enum ice_status
>  ice_prof_inc_ref(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
>  {
> -	if (prof_id > hw->blk[blk].es.count)
> +	if (prof_id >= hw->blk[blk].es.count)
>  		return ICE_ERR_PARAM;
>  
>  	hw->blk[blk].es.ref_count[prof_id]++;
> @@ -1991,7 +1991,7 @@ ice_write_es(struct ice_hw *hw, enum ice_block blk, u8 prof_id,
>  static enum ice_status
>  ice_prof_dec_ref(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
>  {
> -	if (prof_id > hw->blk[blk].es.count)
> +	if (prof_id >= hw->blk[blk].es.count)
>  		return ICE_ERR_PARAM;
>  
>  	if (hw->blk[blk].es.ref_count[prof_id] > 0) {
> -- 
> 2.11.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
