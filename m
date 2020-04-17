Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 517621AD72F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2020 09:16:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06448860C5;
	Fri, 17 Apr 2020 07:16:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bppaBqEpq2Wp; Fri, 17 Apr 2020 07:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 193CF860C9;
	Fri, 17 Apr 2020 07:16:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E21DB1BF388
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 07:16:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD5C78764B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 07:16:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ncac0ZPg0sis for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2020 07:16:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C6DD4845FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 07:16:05 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id q22so976063ljg.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 00:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EPW/C5CGQG6Uu12OmqJJxNwYAWHHuhuHZxh2nEfOMAc=;
 b=aWs0MGbaUmyqqzXQUFbTxnL9QQM1/e3TrG0Iaamd6kQakCITmQZ7UH60bEWNKCAE9y
 Zo606vm/ZDtd4SaGUvE3GYQLTpxmanSQEoYx7X61PhHX8v4ijCb24CjrOC3iHeY4UQFf
 N0ZLl39tXraP+2z/Cd7lTo+gGlwinv2zFMpIWW6QFL+Hk4FAksETr3SQMqLlnk6LRnIn
 Xm9P/5ZzhSw+haOEarnKtoKnlva7N/QZGLiQWN7fPjfFlDnGVX3W8Ai8AdzfO+FsfJg3
 U5D2OccxCPIb2tZN3oncADoZegp4dWsOXAj+HNGZfTb6vjQm6F0mCartOWvmG0rqp56u
 cN5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EPW/C5CGQG6Uu12OmqJJxNwYAWHHuhuHZxh2nEfOMAc=;
 b=bEQDeWgAc2kRB6iqdi1zi86AwiwHqY1Bbejfds6MCvrxkvmqXc3+KwLB9ehoIn620J
 mWWaO1573xzOSqceLLyjWB3mioxrZ0Uu5hNoSqp3wUcNajkrU7kfkMB8YeFDhx6xH4dw
 ZwcShTlJUN3YtbAJ8KJ5i/XlGLbikG5ADFCJAe8Q8rUV/4TdU5KgMF+6xhp9YBdD+ihF
 7FfqtQcWpfqlSwphSKllRPxAzXEP2pz6kPOxWUJlDyoxMD9yVJdqpaK4tmv3tq15hUtK
 EAIcNDNafyP2RD/cR3c1feW1hjVfewhSYrBEJuv8iipNSV/vNWWYrMoh8b5ZNUzVEEI5
 g6sw==
X-Gm-Message-State: AGi0PuaeqLnps2YEXrAHmnfDIIWTFJTUrUJK4c6xUF6Njol7hV/XGSYd
 yJU0rAlJVghqm+NkZmCZ7sI=
X-Google-Smtp-Source: APiQypJrNh4TwxpaMKll+LVbR9sW3beQo67VuBOYkQPiCJSEBd/fc+aW9Q2OU+sqlERJWCHLHZna1g==
X-Received: by 2002:a2e:9817:: with SMTP id a23mr1278462ljj.71.1587107763684; 
 Fri, 17 Apr 2020 00:16:03 -0700 (PDT)
Received: from gmail.com ([178.170.168.3])
 by smtp.gmail.com with ESMTPSA id k22sm753266ljj.85.2020.04.17.00.16.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 00:16:02 -0700 (PDT)
Date: Fri, 17 Apr 2020 10:16:02 +0300
From: Maxim Zhukov <mussitantesmortem@gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20200417071602.GA141989@gmail.com>
References: <20200414184547.ue7mvj6olmr76m2i@laptop>
 <20200416203151.10210.78244.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416203151.10210.78244.stgit@localhost.localdomain>
Subject: Re: [Intel-wired-lan] [RFC PATCH] e1000: Do not perform reset in
 reset_task if we are already down
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I applied this patch and ran the test. The first boot was successful.
I will write again after 500 reboots with result.

Thanks!

On Thu, Apr 16, 2020 at 01:34:19PM -0700, Alexander Duyck wrote:
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> We are seeing a deadlock in e1000 down when NAPI is being disabled. Looking
> over the kernel function trace of the system it appears that the interface
> is being closed and then a reset is hitting which deadlocks the interface
> as the NAPI interface is already disabled.
> 
> To prevent this from happening I am disabling the reset task when
> __E1000_DOWN is already set. In addition code has been added so that we set
> the __E1000_DOWN while holding the __E1000_RESET flag in e1000_close in
> order to guarantee that the reset task will not run after we have started
> the close call.
> 
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
> 
> Maxim,
> 
> If possible I would appreciate it if you could try this patch and see if
> it addresses the issues you were seeing. From what I can tell this issue
> is due to the interface being closed around the same time a reset is
> scheduled so the two are racing and resulting in down being called after
> a down was already completed. Adding this test for the down flag should
> correct that.
> 
> If it does I will resubmit this patch as a non-RFC.
> 
> Thanks.
> 
> Alex
> 
>  drivers/net/ethernet/intel/e1000/e1000_main.c |   18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index f7103356ef56..566bbcb74056 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -542,8 +542,13 @@ void e1000_reinit_locked(struct e1000_adapter *adapter)
>  	WARN_ON(in_interrupt());
>  	while (test_and_set_bit(__E1000_RESETTING, &adapter->flags))
>  		msleep(1);
> -	e1000_down(adapter);
> -	e1000_up(adapter);
> +
> +	/* only run the task if not already down */
> +	if (!test_bit(__E1000_DOWN, &adapter->flags)) {
> +		e1000_down(adapter);
> +		e1000_up(adapter);
> +	}
> +
>  	clear_bit(__E1000_RESETTING, &adapter->flags);
>  }
>  
> @@ -1433,10 +1438,15 @@ int e1000_close(struct net_device *netdev)
>  	struct e1000_hw *hw = &adapter->hw;
>  	int count = E1000_CHECK_RESET_COUNT;
>  
> -	while (test_bit(__E1000_RESETTING, &adapter->flags) && count--)
> +	while (test_and_set_bit(__E1000_RESETTING, &adapter->flags) && count--)
>  		usleep_range(10000, 20000);
>  
> -	WARN_ON(test_bit(__E1000_RESETTING, &adapter->flags));
> +	WARN_ON(count < 0);
> +
> +	/* signal that we're down so that the reset task will no longer run */
> +	set_bit(__E1000_DOWN, &adapter->flags);
> +	clear_bit(__E1000_RESETTING, &adapter->flags);
> +
>  	e1000_down(adapter);
>  	e1000_power_down_phy(adapter);
>  	e1000_free_irq(adapter);
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
