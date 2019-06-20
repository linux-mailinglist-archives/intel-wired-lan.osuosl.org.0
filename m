Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB5B4CC2D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 12:47:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF2C586B0B;
	Thu, 20 Jun 2019 10:47:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FVF0v-2e4OYx; Thu, 20 Jun 2019 10:47:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDA2286B19;
	Thu, 20 Jun 2019 10:47:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFF311BF964
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 10:47:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EABF682DDF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 10:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cIj2R0eZEAjy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 10:47:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 36F6C823FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 10:47:28 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id a15so2710611qtn.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 03:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4sRUxc78T3PiDag50aqEMvObqexRwokvbb2vXdTDTY0=;
 b=psmTWWhJp8n3q0p/lOK+kqddqEDQpFU1cdpSEJyXmr1m7ohPKevUOsusMGmDNSFuD+
 cuEblhLd4g/pdyVfWHRR3NqIPeBhFnpcxIuXdry36EN8M94oLgtQPibDRMUxj/MnL0ma
 vW7vkfDXMScsJPaJTS4ZKt4UWqJwj/ESQ0Z3FI0O/FPq/kcVYcr4aTd3SPgf3O9gAsAR
 fLWBjaHrzSYRUl7YqY6AtrchaiaR8goC/nhlCe4+GMygu4afwsG1MKx+QeEVXEDzlCnL
 ZvWXEBDb5/xM36GoEuIYN3rQQusPgUEyBBSigToDDtOGF8YceAEu0f5dmjDwYjxsRQoj
 D7Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4sRUxc78T3PiDag50aqEMvObqexRwokvbb2vXdTDTY0=;
 b=I2+U5OwTt3zb30Y7wPH8IHDjVH2XqvLQDU2GzzP2DIjrHwcLWk84Z0U0BkXU6zcpV3
 +3fHFDPkGuPBwGA7fXgsEoV5icPpIxuvvvKxu4KzKGolNUnTWiW4QouNXQdHXFzHT1Ch
 9VIN2MLfSqzjGkovsKfIwOQyzcm8lsyIk2Yz1gjWRUPy+XXs0vjUGhZiBx6h2stA/xY7
 vv03hNGovR1gaoGCb7HluqF2lpFnvThT9cIvbpEPodEfLc/WJO+jCAMIL2Azi6LZ0qJf
 Qu37DZPu+pdS8gI2KeuysWL+G+dySrBR8Ynu8XhWf5SCM37AKGyXviTXIOnhedNCHbGH
 JWrA==
X-Gm-Message-State: APjAAAVmhCj2zszB722fgcfgVsqf3QgVzg6iydvxfVAyJrdRYAWZkjpu
 m2Ptizgrl0cXkNenNO6z56I=
X-Google-Smtp-Source: APXvYqxWmZypaMzjKk/9r7pkngeJ+lFeIzyvqlZDuP2NGsnNPsP5Bh3kR9sGBZGWuJ3hCXtaZvuusQ==
X-Received: by 2002:ac8:3908:: with SMTP id s8mr110014212qtb.224.1561027647385; 
 Thu, 20 Jun 2019 03:47:27 -0700 (PDT)
Received: from [10.246.221.134] ([50.234.174.228])
 by smtp.gmail.com with ESMTPSA id p64sm13329230qkf.60.2019.06.20.03.47.26
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:47:26 -0700 (PDT)
To: Vedang Patel <vedang.patel@intel.com>, netdev@vger.kernel.org
References: <1560966016-28254-1-git-send-email-vedang.patel@intel.com>
 <1560966016-28254-2-git-send-email-vedang.patel@intel.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <d6655497-5246-c24e-de35-fc6acdad0bf1@gmail.com>
Date: Thu, 20 Jun 2019 06:47:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560966016-28254-2-git-send-email-vedang.patel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/7] igb: clear out tstamp
 after sending the packet
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
Cc: jiri@resnulli.us, l@dorileo.org, sergei.shtylyov@cogentembedded.com,
 jakub.kicinski@netronome.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/19/19 10:40 AM, Vedang Patel wrote:
> skb->tstamp is being used at multiple places. On the transmit side, it
> is used to determine the launchtime of the packet. It is also used to
> determine the software timestamp after the packet has been transmitted.
> 
> So, clear out the tstamp value after it has been read so that we do not
> report false software timestamp on the receive side.
> 
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index fc925adbd9fa..f66dae72fe37 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -5688,6 +5688,7 @@ static void igb_tx_ctxtdesc(struct igb_ring *tx_ring,
>  	 */
>  	if (tx_ring->launchtime_enable) {
>  		ts = ns_to_timespec64(first->skb->tstamp);
> +		first->skb->tstamp = 0;

Please provide more explanations.

Why only this driver would need this ?


>  		context_desc->seqnum_seed = cpu_to_le32(ts.tv_nsec / 32);
>  	} else {
>  		context_desc->seqnum_seed = 0;
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
