Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FED48FF62
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Jan 2022 22:58:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2AEA60B59;
	Sun, 16 Jan 2022 21:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w1gjZZmzrJBW; Sun, 16 Jan 2022 21:58:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 868E260ADC;
	Sun, 16 Jan 2022 21:58:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 90D231BF476
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jan 2022 21:58:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 794734045C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jan 2022 21:58:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lunn.ch
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6eMGWfuvlewa for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Jan 2022 21:58:23 +0000 (UTC)
X-Greylist: delayed 00:15:27 by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21DA2400D1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jan 2022 21:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=BIQJD8Uw6i/i54SJa7kwvlrYv9V/IVzdhllAvBN8ayQ=; b=XXkLi3Ig3ylddaWiv7mlrH46yG
 TTOuVU7MylVJWfI3CfBDxG7qP2bgDOIz0FIIU61efssG1PbKI7vkIipKFhkAQpxBcWHbMAv7os1sH
 49tAXaFtxBbiL1I7UC4eA+1zYpn21Igsu53b7zS2vHQTc/PYubpJoQyI6cC0Uri754ck=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1n9DIP-001Ysh-W7; Sun, 16 Jan 2022 22:42:41 +0100
Date: Sun, 16 Jan 2022 22:42:41 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <YeSRUVmrdmlUXHDn@lunn.ch>
References: <40c94af2f9140794351593047abc95ca65e4e576.1642358759.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40c94af2f9140794351593047abc95ca65e4e576.1642358759.git.christophe.jaillet@wanadoo.fr>
Subject: Re: [Intel-wired-lan] [PATCH] ice: Don't use GFP_KERNEL in atomic
 context
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
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Shiraz Saleem <shiraz.saleem@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Jan 16, 2022 at 07:46:20PM +0100, Christophe JAILLET wrote:
> ice_misc_intr() is an irq handler. It should not sleep.
> 
> Use GFP_ATOMIC instead of GFP_KERNEL when allocating some memory.
> 
> Fixes: 348048e724a0 ("ice: Implement iidc operations")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> I've never played a lot with irq handler. My understanding is that they
> should never sleep.

Hi Christophe

Threaded interrupt handlers are allowed to sleep. However, this
handler is not being used in such a way. So your are probably correct
about GFP_KERNEL vs GFP_ATOMIC. 

> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 30814435f779..65de01f3a504 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3018,7 +3018,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>  		struct iidc_event *event;
>  
>  		ena_mask &= ~ICE_AUX_CRIT_ERR;
> -		event = kzalloc(sizeof(*event), GFP_KERNEL);
> +		event = kzalloc(sizeof(*event), GFP_ATOMIC);
>  		if (event) {
>  			set_bit(IIDC_EVENT_CRIT_ERR, event->type);
>  			/* report the entire OICR value to AUX driver */

What happens next is interesting...


                        event->reg = oicr;
                        ice_send_event_to_aux(pf, event);

where:

void ice_send_event_to_aux(struct ice_pf *pf, struct iidc_event *event)
{
        struct iidc_auxiliary_drv *iadrv;

        if (!pf->adev)
                return;

        device_lock(&pf->adev->dev);
        iadrv = ice_get_auxiliary_drv(pf);
        if (iadrv && iadrv->event_handler)
                iadrv->event_handler(pf, event);
        device_unlock(&pf->adev->dev);
}

device_lock() takes a mutex, not something you should be doing in
atomic context.

So it looks to me, this handler really should be running in thread
context...

	Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
