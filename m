Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A060928B861
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 15:52:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 275AF86099;
	Mon, 12 Oct 2020 13:52:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X7UTIoSKgIu4; Mon, 12 Oct 2020 13:52:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6406F85FFD;
	Mon, 12 Oct 2020 13:52:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF7AB1BF23B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 13:49:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A7E3B871B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 13:49:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yaDbvyvcJXUz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 13:49:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D4BAA870EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 13:49:51 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id o18so17018174edq.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 06:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=HsbAp6qd7g4JTk6QFw04+VFZUaG3bIXSc1NpoNbfqf8=;
 b=phQ8c5GMkXNgAEiW9pg3lAWEQS1b60Omw7uWqN0NQUjcppagPTYtroAw8rKpJsTb9G
 +QD9RAx2vJoncFxbg7zUExmhvBJh9nr0yR8gsAZ+SJseY4NuhdNgHnBcmFPOgFnizuzQ
 qRWHPuXVuZfx+32H/GUCF7uWBhp7NMaJQyeeZBxbPQx2vFXSU00hdF39rgfPJGfhKy55
 EdmRUfZY16sG7yJvjcvET3KkhQ5rBeWMGrGfh6X0kZE747vjAP6eRX24+chUkhcZbMGw
 4/5ETyAd+LZsEtsdqJGe764PuvmLDlQASUw7tIvKy3SsBWyY4wCYUlUdQXVNqKdGY0UK
 T2/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=HsbAp6qd7g4JTk6QFw04+VFZUaG3bIXSc1NpoNbfqf8=;
 b=NZHM6cjk+BMD21diRSkEmUjObkR8ffty5vu5I07aKHrfpqgLgFWOMkSKLRdtL95OgU
 BAcmhIh7kgWfdwn8r1kNi74p54Dl466B2w7jYaRM+hF7Z4TkhC5Ykv3kzcLRG+T7cY7S
 vWyR28QML17CLSBaPcF6XW/7339ztVvQ1t9VLBaogw2Qt1wwR3glg6FUIhfhIH1b1NoP
 zuv9bSmQp/EIKgsx01P1L2iPK9p8LJ8mcryHj3KaEuaJVgpU92nXVjYQJ3NSCZv31emb
 qwjbFoht/P03jR8qruYqWfMrIP/fuwCJx94fiCUhLY/zwHjvPMl17QBTgRUL4EmzArMO
 0rhA==
X-Gm-Message-State: AOAM531hxRPyBBSyDG8h0Vw+eCKqBeH8qO8h0kIQQ8oI0cbIsAvlPlvm
 m35/xNeqXy4drjJJje9y1Vs=
X-Google-Smtp-Source: ABdhPJxFkYpU7K3AS5LxjIDvju41ZYqpsBIoDPX+SHxU23/hUALjax3K659HVU/Z5ZE7dilKv7q/kw==
X-Received: by 2002:aa7:cd4f:: with SMTP id v15mr13718665edw.243.1602510590180; 
 Mon, 12 Oct 2020 06:49:50 -0700 (PDT)
Received: from felia ([2001:16b8:2d57:fc00:8472:203c:3ecb:c442])
 by smtp.gmail.com with ESMTPSA id u17sm8233872ejj.83.2020.10.12.06.49.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 06:49:49 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-Google-Original-From: Lukas Bulwahn <lukas@gmail.com>
Date: Mon, 12 Oct 2020 15:49:48 +0200 (CEST)
X-X-Sender: lukas@felia
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
In-Reply-To: <20201011212326.2758-1-sudipm.mukherjee@gmail.com>
Message-ID: <alpine.DEB.2.21.2010121546470.6487@felia>
References: <20201011212326.2758-1-sudipm.mukherjee@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 12 Oct 2020 13:52:10 +0000
Subject: Re: [Intel-wired-lan] [linux-safety] [PATCH] e1000: drop unneeded
 assignment in e1000_set_itr()
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 linux-safety@lists.elisa.tech, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On Sun, 11 Oct 2020, Sudip Mukherjee wrote:

> The variable 'current_itr' is assigned to 0 before jumping to
> 'set_itr_now' but it has not been used after the jump. So, remove the
> unneeded assignement.
> 
> Signed-off-by: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
> ---
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index 5e28cf4fa2cd..042de276e632 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -2632,7 +2632,6 @@ static void e1000_set_itr(struct e1000_adapter *adapter)
>  
>  	/* for non-gigabit speeds, just fix the interrupt rate at 4000 */
>  	if (unlikely(adapter->link_speed != SPEED_1000)) {
> -		current_itr = 0;
>  		new_itr = 4000;
>  		goto set_itr_now;
>  	}

Alternatively, you could just inline the max(...) into the switch and 
completely drop the current_itr definition.

But your solution probably does the job: it is a "No functional change" 
commit.

Reviewed-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>


Lukas

> -- 
> 2.11.0
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#77): https://lists.elisa.tech/g/linux-safety/message/77
> Mute This Topic: https://lists.elisa.tech/mt/77448709/1714638
> Group Owner: linux-safety+owner@lists.elisa.tech
> Unsubscribe: https://lists.elisa.tech/g/linux-safety/unsub [lukas.bulwahn@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
