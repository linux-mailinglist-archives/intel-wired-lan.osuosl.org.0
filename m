Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A62908D7020
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Jun 2024 15:16:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 482276087B;
	Sat,  1 Jun 2024 13:16:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iPy18MsZ9y21; Sat,  1 Jun 2024 13:16:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 219D160887
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717247792;
	bh=Ni+WDrPX8K31HoTIcpajwNK6IBp7J+7N5AzTTgo6UiY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xLuLRo1pQm1kChT0xYggxun7NpeWDm5HjVNFw8oMjFyadzsUt5/puud4mqUc+auMO
	 3EfqEfkjp+yCN36QktZppQio/GjfnZBWiCcfj4l1/jjS2/pw7LGqCGm2TqMB2ISQKk
	 C6eW0om/L5fjMZMQtSNJ4bnbXymoZ3uybz4LuaSXOZGodG8hEVmkSQkcHzBgnEvmBm
	 FWPEAmYcEcfMLgMbMSZr8ZjcD4Bo+nSw2hQA1zRtl3ZAAsRzyUvWOy+Z7Sv6404cL4
	 kdKCcEYh0X0Ya8Yh6NbK9w01bfEnSn1+jo42mqEqVY9HUFPMvquPYXssl2ePQBWJ2c
	 m+APllGlW7RFw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 219D160887;
	Sat,  1 Jun 2024 13:16:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 45A841BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 13:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 30AD340120
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 13:16:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4_APrObEfjzY for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Jun 2024 13:16:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0B9C440114
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B9C440114
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B9C440114
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2024 13:16:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id DC8C160A69;
 Sat,  1 Jun 2024 13:16:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58868C116B1;
 Sat,  1 Jun 2024 13:16:23 +0000 (UTC)
Date: Sat, 1 Jun 2024 14:16:20 +0100
From: Simon Horman <horms@kernel.org>
To: Ricky Wu <en-wei.wu@canonical.com>
Message-ID: <20240601131620.GM491852@kernel.org>
References: <20240530142131.26741-1-en-wei.wu@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240530142131.26741-1-en-wei.wu@canonical.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717247786;
 bh=BDYiHLgOxFM07kj3mFIpBgiAJCFSiSzDEkmgs0Bz6e4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qzwFtJx9UWUqPoJ4Ua9VVxFOHJjLpCQMH/v4XL3bqjyjBWK9AbgkffroAK4MHg/sx
 abTdKTKrMUgOkMcoVS0wgfQC8oCEzH6KzezX+liK4gT/0bwpdaYPx+ATXXbWjjU71D
 1wuknLzCU5a2G2kMcveLvPflbEj8xnWzryHQuVuFc9VQ27kqCjY79w+0yZU+dXkjx/
 3HsEfhq++XE0B7g3u1xbqIVdmctaLQhGTIg1vhvqS8wvc0ARn2jVAcxSHGlo1pW2K+
 Q9hsaLEH6XxBxKk03E19t217FEU7vFYefoZGTVefHpVrXdsnbVw81wiYEPD8FJHvcK
 w6ZjxKOc0ejJg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qzwFtJx9
Subject: Re: [Intel-wired-lan] [PATCH net,
 v2] ice: avoid IRQ collision to fix init failure on ACPI S3 resume
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
Cc: pmenzel@molgen.mpg.de, michal.swiatkowski@linux.intel.com,
 wojciech.drewek@intel.com, intel-wired-lan@lists.osuosl.org,
 rickywu0421@gmail.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 Cyrus Lien <cyrus.lien@canonical.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 30, 2024 at 10:21:31PM +0800, Ricky Wu wrote:
> A bug in https://bugzilla.kernel.org/show_bug.cgi?id=218906 describes
> that irdma would break and report hardware initialization failed after
> suspend/resume with Intel E810 NIC (tested on 6.9.0-rc5).
> 
> The problem is caused due to the collision between the irq numbers
> requested in irdma and the irq numbers requested in other drivers
> after suspend/resume.
> 
> The irq numbers used by irdma are derived from ice's ice_pf->msix_entries
> which stores mappings between MSI-X index and Linux interrupt number.
> It's supposed to be cleaned up when suspend and rebuilt in resume but
> it's not, causing irdma using the old irq numbers stored in the old
> ice_pf->msix_entries to request_irq() when resume. And eventually
> collide with other drivers.
> 
> This patch fixes this problem. On suspend, we call ice_deinit_rdma() to
> clean up the ice_pf->msix_entries (and free the MSI-X vectors used by
> irdma if we've dynamically allocated them). On resume, we call
> ice_init_rdma() to rebuild the ice_pf->msix_entries (and allocate the
> MSI-X vectors if we would like to dynamically allocate them).
> 
> Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
> Tested-by: Cyrus Lien <cyrus.lien@canonical.com>
> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
> ---
> Changes in v2:
> - Change title
> - Add Fixes and Tested-by tags
> - Fix typo
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index f60c022f7960..ec3cbadaa162 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5544,7 +5544,7 @@ static int ice_suspend(struct device *dev)
>  	 */
>  	disabled = ice_service_task_stop(pf);
>  
> -	ice_unplug_aux_dev(pf);
> +	ice_deinit_rdma(pf);
>  
>  	/* Already suspended?, then there is nothing to do */
>  	if (test_and_set_bit(ICE_SUSPENDED, pf->state)) {
> @@ -5624,6 +5624,10 @@ static int ice_resume(struct device *dev)
>  	if (ret)
>  		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
>  
> +	ret = ice_init_rdma(pf);
> +	if (ret)
> +		dev_err(dev, "Reinitialize RDMA during resume failed: %d\n", ret);
> +

nit: The line above could trivially be wrapped to fit within 80 columns,
     as is preferred for Networking code.

     Flagged by checkpatch.pl --max-line-length=80

>  	clear_bit(ICE_DOWN, pf->state);
>  	/* Now perform PF reset and rebuild */
>  	reset_type = ICE_RESET_PFR;
> -- 
> 2.43.0
> 
> 
