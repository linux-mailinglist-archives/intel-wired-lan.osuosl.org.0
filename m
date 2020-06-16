Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F30291FADC1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2020 12:20:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB1AD894B4;
	Tue, 16 Jun 2020 10:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SnN3Jp10PMJa; Tue, 16 Jun 2020 10:20:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FC60886E9;
	Tue, 16 Jun 2020 10:20:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 813BA1BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 10:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4659123491
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 10:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bKJ1KDbfHunH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2020 10:20:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 89742203AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 10:20:31 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5af4df.dynamic.kabel-deutschland.de
 [95.90.244.223])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DD048206442E6;
 Tue, 16 Jun 2020 12:20:27 +0200 (CEST)
To: Aaron Ma <aaron.ma@canonical.com>, jeffrey.t.kirsher@intel.com,
 davem@davemloft.net, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 vitaly.lifshits@intel.com, kai.heng.feng@canonical.com,
 sasha.neftin@intel.com
References: <20200616100512.22512-1-aaron.ma@canonical.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <74391e62-7226-b0f8-d129-768b88f13160@molgen.mpg.de>
Date: Tue, 16 Jun 2020 12:20:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616100512.22512-1-aaron.ma@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: continue to init phy even
 when failed to disable ULP
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aaron,


Thank you for your patch.

(Rant: Some more fallout from the other patch, which nobody reverted.)

Am 16.06.20 um 12:05 schrieb Aaron Ma:
> After commit "e1000e: disable s0ix entry and exit flows for ME systems",
> some ThinkPads always failed to disable ulp by ME.

Please add the (short) commit hash from the master branch.

s/ulp/ULP/

Please list one ThinkPad as example.

> commit "e1000e: Warn if disabling ULP failed" break out of init phy:

1.  Please add the closing quote ".
2.  Please add the commit hash.

> error log:
> [   42.364753] e1000e 0000:00:1f.6 enp0s31f6: Failed to disable ULP
> [   42.524626] e1000e 0000:00:1f.6 enp0s31f6: PHY Wakeup cause - Unicast Packet
> [   42.822476] e1000e 0000:00:1f.6 enp0s31f6: Hardware Error
> 
> When disable s0ix, E1000_FWSM_ULP_CFG_DONE will never be 1.
> If continue to init phy like before, it can work as before.
> iperf test result good too.
> 
> Chnage e_warn to e_dbg, in case it confuses.

s/Chnage/Change/

Please leave the level warning, and improve the warning message instead, 
so a user knows what is going on.

Could you please add a `Fixes:` tag and the URL to the bug report?

> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index f999cca37a8a..63405819eb83 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -302,8 +302,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
>   	hw->dev_spec.ich8lan.ulp_state = e1000_ulp_state_unknown;
>   	ret_val = e1000_disable_ulp_lpt_lp(hw, true);
>   	if (ret_val) {
> -		e_warn("Failed to disable ULP\n");
> -		goto out;
> +		e_dbg("Failed to disable ULP\n");
>   	}
>   
>   	ret_val = hw->phy.ops.acquire(hw);
> 

Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
