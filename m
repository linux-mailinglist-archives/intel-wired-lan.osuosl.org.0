Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81812A7E355
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 17:09:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDA5381ABA;
	Mon,  7 Apr 2025 15:09:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hO8GJ2Yjnezs; Mon,  7 Apr 2025 15:09:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30DF281A3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744038575;
	bh=xENXFWwcnVbvWBHcO56xPU6V+nfp2ZKW6ElFaUctb6k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Vqy0EshmVprpkofQ2n9b/n5QsQI9P34iXBU4Dd2+p2QHMI44CrHi3LYEUqspXnZV9
	 I96CLAfOa2f0GpgRWsQNrpLYrOZzXFyu9zSjOaehF8f2+SCjKXV8W7S7W1lmnYFv1e
	 /vgHYDjWEoBX277SnvnjU5q4DEdMWqiWSyi2oFHm403RAyRqcguJFP+MSHeApfOW2W
	 BtZP5vVvodNuki2LPnWfil6Oo7HDBMHPqrTpenVfDtda/BZLhLfIS5gU46MGdrL+Vb
	 F2K5Z0FwxfSD73F79usfL2Udl6heKLr6ICG3hER05u94QW553PWjfJOkaacPlOQ2rK
	 3uAG83E5CPkXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30DF281A3B;
	Mon,  7 Apr 2025 15:09:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9EB511F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 15:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 901AD4051A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 15:09:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U7F0NRsMezhh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 15:09:33 +0000 (UTC)
X-Greylist: delayed 437 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 07 Apr 2025 15:09:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0BB994035D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BB994035D
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0BB994035D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 15:09:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 839E74508C;
 Mon,  7 Apr 2025 15:02:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2F92C4CEDD;
 Mon,  7 Apr 2025 15:02:12 +0000 (UTC)
Date: Mon, 7 Apr 2025 16:02:10 +0100
From: Simon Horman <horms@kernel.org>
To: Wentao Liang <vulab@iscas.ac.cn>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Message-ID: <20250407150210.GM395307@horms.kernel.org>
References: <20250407034155.1396-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250407034155.1396-1-vulab@iscas.ac.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744038135;
 bh=2fqdQpwA72B3FR5XvEN+GgQO9JWALqdvy5MDvgJ70Cw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZxXte7jtt0OpW5DQPwSxLqjmReRKN2y+5nU/2YQcssunNP0spna87hF1rSHe2cqjz
 0KKm/8JJl5xifCoaXTyae5Ftxtun7eMuIeLvJEKqNRhwXA07EDUFvaNU8wGPPMfoUy
 SLHR9jbaP0go4V0m+bKQcF5Lr8J1H2QRILFhAKv8lMB4atxQrtky40gqWIz2o2D+mO
 gAJUwNJPreDylstewL/sZsKi33yt0n3zzlt2kEB75DkyUQqGiWLUbQdqA5nrlR7v8E
 flE+SQgRnkIxhjwghl3IQE5a3qhmi+muW76fcuj03rSQ4r9MpHKeGMgRGnvbmx7SCG
 npHLHAChc9Rig==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ZxXte7jt
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Add error handling for
 e1e_rphy_locked()
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

On Mon, Apr 07, 2025 at 11:41:54AM +0800, Wentao Liang wrote:
> The e1000_suspend_workarounds_ich8lan() calls e1e_rphy_locked to disable
> the SMB release, but does not check its return value. A proper
> implementation can be found in e1000_resume_workarounds_pchlan() from
> /source/drivers/net/ethernet/intel/e1000e/ich8lan.c.
> 
> Add an error check for e1e_rphy_locked(). Log the error message and jump
> to 'release' label if the e1e_rphy_locked() fails.
> 
> Fixes: 2fbe4526e5aa ("e1000e: initial support for i217")
> Cc: stable@vger.kernel.org # v3.5+
> Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
> ---
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 2f9655cf5dd9..d16e3aa50809 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -5497,7 +5497,11 @@ void e1000_suspend_workarounds_ich8lan(struct e1000_hw *hw)
>  			e1e_wphy_locked(hw, I217_SxCTRL, phy_reg);
>  
>  			/* Disable the SMB release on LCD reset. */
> -			e1e_rphy_locked(hw, I217_MEMPWR, &phy_reg);
> +			ret_val = e1e_rphy_locked(hw, I217_MEMPWR, &phy_reg);
> +			if (ret_val) {
> +				e_dbg("Fail to Disable the SMB release on LCD reset.");
> +				goto release;
> +			}
>  			phy_reg &= ~I217_MEMPWR_DISABLE_SMB_RELEASE;
>  			e1e_wphy_locked(hw, I217_MEMPWR, phy_reg);
>  		}

Hi,

The next few lines of this function look like this:

		/* Enable MTA to reset for Intel Rapid Start Technology
		 * Support
		 */
		e1e_rphy_locked(hw, I217_CGFREG, &phy_reg);
		phy_reg |= I217_CGFREG_ENABLE_MTA_RESET;
		e1e_wphy_locked(hw, I217_CGFREG, phy_reg);

And I think that to be consistent with e1000_resume_workarounds_pchlan()
the return value of the above call to e1e_rphy_locked() should also be
checked.

However, I am not at all sure if the current absence of error checking is
intended as part of the logic flow, or if these are oversights.

Have you observed any run-time problems with this code?

I would naively expect that the i217 is or was a widely used device.  And
this code seems to have been around for a well over 10 years in it's
current form. Which makes me thing we should tread carefully when changing
it.

