Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BED309FBF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Feb 2021 01:38:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 88807815EF;
	Mon,  1 Feb 2021 00:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ACOfcvFsgxs5; Mon,  1 Feb 2021 00:38:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C36D81ADE;
	Mon,  1 Feb 2021 00:38:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C7A951BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 23:25:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C2FF38550D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 23:25:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZ6AdeOBjzfw for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Jan 2021 23:25:15 +0000 (UTC)
X-Greylist: delayed 00:08:00 by SQLgrey-1.7.6
Received: from mail.as397444.net (mail.as397444.net [69.59.18.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A417B84E15
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 23:25:15 +0000 (UTC)
Received: by mail.as397444.net (Postfix) with UTF8SMTPSA id 18EB6479E60;
 Sun, 31 Jan 2021 23:17:12 +0000 (UTC)
X-DKIM-Note: Keys used to sign are likely public at https://as397444.net/dkim/
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bluematt.me;
 s=1612132862; t=1612135032;
 bh=Z7r1nofAiJwgxKw5SKF1EGrZeU5YYebX8UBzH8odMd8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Ls7jW3UVjYa3fPW7fja1BcyTLzrwnWo1Ldd0l11Ao/2APKMv98saUw7U/ZFsbOZNC
 oW9I/0UoRKPMUIdPLzlY9lZ2xiw/diN18F8dPY0J+8MOUJoyt9ytDDgCKQNDl3SRBa
 RxhLN/8ZlzSnafRu6VYn7aGIf3IaZVOMrRyYRe7tru5DxGOOXXiwWDCGRKt7ZqIb5u
 1MypMcy0IMo0dsv0BNYB0zk3sPZW7vJnReWJH1nhIfn24pU1emioxCXMW8XHNmPj58
 FTL+jTaJKnfn9cgaj60t28gFxd0QREa8X8IVXlkyB2N+FGhklGVqu+VlGLBHtjRNOt
 DcoRFTJmPX5zw==
To: Nick Lowe <nick.lowe@gmail.com>, netdev@vger.kernel.org
References: <20201221222502.1706-1-nick.lowe@gmail.com>
From: Matt Corallo <linux-wired-list@bluematt.me>
Message-ID: <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
Date: Sun, 31 Jan 2021 18:17:11 -0500
MIME-Version: 1.0
In-Reply-To: <20201221222502.1706-1-nick.lowe@gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 01 Feb 2021 00:38:41 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Enable RSS for Intel I211
 Ethernet Controller
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
Cc: kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Given this fixes a major (albeit ancient) performance regression, is it not a candidate for backport? It landed on 
Tony's dev-queue branch with a Fixes tag but no stable CC.

Thanks,
Matt

On 12/21/20 5:25 PM, Nick Lowe wrote:
> The Intel I211 Ethernet Controller supports 2 Receive Side Scaling (RSS) queues.
> It should not be excluded from having this feature enabled.
> 
> Via commit c883de9fd787b6f49bf825f3de3601aeb78a7114
> E1000_MRQC_ENABLE_RSS_4Q was renamed to E1000_MRQC_ENABLE_RSS_MQ to
> indicate that this is a generic bit flag to enable queues and not
> a flag that is specific to devices that support 4 queues
> 
> The bit flag enables 2, 4 or 8 queues appropriately depending on the part.
> 
> Tested with a multicore CPU and frames were then distributed as expected.
> 
> This issue appears to have been introduced because of confusion caused
> by the prior name.
> 
> Signed-off-by: Nick Lowe <nick.lowe@gmail.com>
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 03f78fdb0dcd..87ac1d3e25cb 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4482,8 +4482,7 @@ static void igb_setup_mrqc(struct igb_adapter *adapter)
>   		else
>   			mrqc |= E1000_MRQC_ENABLE_VMDQ;
>   	} else {
> -		if (hw->mac.type != e1000_i211)
> -			mrqc |= E1000_MRQC_ENABLE_RSS_MQ;
> +		mrqc |= E1000_MRQC_ENABLE_RSS_MQ;
>   	}
>   	igb_vmm_control(adapter);
>   
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
