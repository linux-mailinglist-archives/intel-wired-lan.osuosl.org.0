Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86578265F44
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 14:11:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3AF078788C;
	Fri, 11 Sep 2020 12:11:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wn5WqIACuxmh; Fri, 11 Sep 2020 12:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C1A787896;
	Fri, 11 Sep 2020 12:11:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 515841BF35D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 12:11:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4CE6887840
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 12:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XyrPRUhGFGZD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 12:11:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0AC7A87491
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 12:11:27 +0000 (UTC)
IronPort-SDR: TgxvmuY/5FpR3NjmOxbjXEJO9nbZ68qO71xf2zBP292t2n8oeJG14H7Zs4j9l04Qbud85NaMX1
 85AUN3dB2f1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="176806751"
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="176806751"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 05:11:26 -0700
IronPort-SDR: Lxq5tsUFDalIi32UgpA0sesjqCmyJ6/7Q5jzGLiZGEeOrMYlWSu2wfMcaSetZKbmykttHykEGc
 sxyPutPblglQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="344616585"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga007.jf.intel.com with ESMTP; 11 Sep 2020 05:11:24 -0700
Date: Fri, 11 Sep 2020 14:05:19 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20200911120519.GA9758@ranger.igk.intel.com>
References: <1599826106-19020-1-git-send-email-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1599826106-19020-1-git-send-email-magnus.karlsson@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: allow VMDQs to be used
 with AF_XDP zero-copy
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
Cc: maciejromanfijalkowski@gmail.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bjorn.topel@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 11, 2020 at 02:08:26PM +0200, Magnus Karlsson wrote:
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Allow VMDQs to be used with AF_XDP sockets in zero-copy mode. For some
> reason, we only allowed main VSIs to be used with zero-copy, but
> there is now reason to not allow VMDQs also.

You meant 'to allow' I suppose. And what reason? :)

> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 2a1153d..ebe15ca 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -45,7 +45,7 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
>  	bool if_running;
>  	int err;
>  
> -	if (vsi->type != I40E_VSI_MAIN)
> +	if (!(vsi->type == I40E_VSI_MAIN || vsi->type == I40E_VSI_VMDQ2))
>  		return -EINVAL;
>  
>  	if (qid >= vsi->num_queue_pairs)
> -- 
> 2.7.4
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
