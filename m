Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4CE4BC57A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Feb 2022 06:03:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88B1B812DF;
	Sat, 19 Feb 2022 05:03:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7vCW37xqXJJv; Sat, 19 Feb 2022 05:03:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BC4081261;
	Sat, 19 Feb 2022 05:03:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 827041BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Feb 2022 05:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E4CF80E48
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Feb 2022 05:03:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3RcA3iPbUeho for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Feb 2022 05:03:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 992C480DCC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Feb 2022 05:03:34 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5EAC2B827AB;
 Sat, 19 Feb 2022 05:03:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AABB5C004E1;
 Sat, 19 Feb 2022 05:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645247010;
 bh=bNIvby34CuigM2PSk6JYLnnb13kvfmVggRGp1IJZkRU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=biDS3BUnqBFJgDDT+12b6zzhwpeJZNNEA0AhU0UZSEF1bM5SmNfMVxZ+47Pb9zpEI
 LTwzL3FQ3EOa2HzXjuiKFgB9peY/v/Ra5xysAPvof0ZjdKJacwukXqvS5WJbyUchag
 gVUChBC791zfntTxd4LypZfi4RcZ/sHPtR8S2r00jd1s7BW1wKfOuQnMgqc/re+Xl7
 RQbVOnwPsnIOfiQ4hXwASFgMmIWl3V2FojSQ40ZtFNnCfnftJMdec9csfeJmEWjcD1
 IVKiU6KbBaa/LICXXYNyhr+maDgxMsj4ZoloiITj8N6bTFwmdL71ZUTbw9hk1uFO3v
 h4j/4db6vm67Q==
Date: Fri, 18 Feb 2022 21:03:28 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220218210328.4420a768@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20220218145339.7322-1-marcin.szycik@linux.intel.com>
References: <20220218145048.6718-1-marcin.szycik@linux.intel.com>
 <20220218145339.7322-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 6/7] ice: Fix FV offset
 searching
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
Cc: netdev@vger.kernel.org, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, pablo@netfilter.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 18 Feb 2022 15:53:39 +0100 Marcin Szycik wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Checking only protocol ids while searching for correct FVs can lead to a
> situation, when incorrect FV will be added to the list. Incorrect means
> that FV has correct protocol id but incorrect offset.
> 
> Call ice_get_sw_fv_list with ice_prot_lkup_ext struct which contains all
> protocol ids with offsets.
> 
> With this modification allocating and collecting protocol ids list is
> not longer needed.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> index 38fe0a7e6975..9746db6e19b5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> @@ -1884,7 +1884,7 @@ ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_type req_profs,
>   * allocated for every list entry.
>   */
>  int
> -ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
> +ice_get_sw_fv_list(struct ice_hw *hw, struct ice_prot_lkup_ext *lkups,
>  		   unsigned long *bm, struct list_head *fv_list)
>  {
>  	struct ice_sw_fv_list_entry *fvl;

drivers/net/ethernet/intel/ice/ice_flex_pipe.c:1889: warning: Function parameter or member 'lkups' not described in 'ice_get_sw_fv_list'
drivers/net/ethernet/intel/ice/ice_flex_pipe.c:1889: warning: Excess function parameter 'prot_ids' description in 'ice_get_sw_fv_list'
drivers/net/ethernet/intel/ice/ice_flex_pipe.c:1889: warning: Excess function parameter 'ids_cnt' description in 'ice_get_sw_fv_list'

There's another one in the next patch.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
