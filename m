Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FC62EAAEE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 13:32:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9EBAC85EEF;
	Tue,  5 Jan 2021 12:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UpwCrvGd8lI8; Tue,  5 Jan 2021 12:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC5DE85F0A;
	Tue,  5 Jan 2021 12:32:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC1D61BF47F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 12:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B564F8608F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 12:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h5YpMjfJ76NF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 12:32:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C2C7B86038
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 12:32:05 +0000 (UTC)
IronPort-SDR: rVckalni/+R3g6onL9K+HYOHGqV9S3f4hqaC2OkSBiLZH50uf3++VHkjR7JQDrk5xDG1Q05YlU
 N7A6h61ChF1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="241180362"
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="241180362"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 04:32:03 -0800
IronPort-SDR: sw65j5mGrLvKiIDqDaaiOTIjx0OLTNtfjsDm8hMO93ScKIzGZSAeAd0CXbIBa+TPsmk7arjcTH
 QAgia+HiYg6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="462286457"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2021 04:31:57 -0800
Date: Tue, 5 Jan 2021 13:23:14 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Message-ID: <20210105122314.GC13327@ranger.igk.intel.com>
References: <20210104150002.10916-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104150002.10916-1-mateusz.palczewski@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Added Asym_Pause to
 supported link modes
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
Cc: Dawid Lukwinski <dawid.lukwinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 04, 2021 at 03:00:02PM +0000, Mateusz Palczewski wrote:
> Add Asym_Pause to supported link modes (it is supported by HW).
> Lack of Asym_Pause in supported modes can cause several problems,
> i.e. it won't be possible to turn the autonegotiation on
> with asymmetric pause settings (i.e. Tx on, Rx off).
> 

If it's a fix, it needs a fixes tag.
Also, use imperative mood in your subject line.

> 
> Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 2b6d887..45f5dc2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -1101,6 +1101,7 @@ static int i40e_get_link_ksettings(struct net_device *netdev,
>  
>  	/* Set flow control settings */
>  	ethtool_link_ksettings_add_link_mode(ks, supported, Pause);
> +	ethtool_link_ksettings_add_link_mode(ks, supported, Asym_Pause);
>  
>  	switch (hw->fc.requested_mode) {
>  	case I40E_FC_FULL:
> -- 
> 2.17.1
> 
> ---------------------------------------------------------------------
> Intel Technology Poland sp. z o.o.
> ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
> Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
> This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
>  
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
