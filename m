Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5ABAB0093
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 18:40:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1635F40D81;
	Thu,  8 May 2025 16:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3EuX0DEPqEt8; Thu,  8 May 2025 16:40:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E47E40DAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746722438;
	bh=9AouTnIRgaU7pcMackU2wAqSO8Kl5OLHQ6L3Q6D7AfE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3SAEfPDWORchxLpLgFF3/kiG1jcIqGxWR6SI1qj1TLElffn7evuPGoNkJ6qoeAdRK
	 CTwEfLn2v+2G/k0qGKjUSiEhysK/tn0xkeTtEz7fl+CMKh86K6bL0D9aA/E0z4oald
	 /4R834qqAPr3yYoBGc06TTYvep6ObOnwgqNXj4gwdSEdEQ4EkgCmF8nK/alqrLtAa8
	 lFaL8B9dKMS9XPHLAHps1zEx1FMxepsUByt0AgsMic7JD9y0l6c6c9QWbey6ZqQzNh
	 8OJphY7BSyQmvXzz2RxjOdzenzI/QW2xuBAcfD3yD/U1zTsUkw+LocUd2QVDtdLGxl
	 bn8e2ECF2soKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E47E40DAC;
	Thu,  8 May 2025 16:40:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 21BDA1A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 16:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1314340D56
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 16:40:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6YgsdaJQZbc3 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 16:40:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8D19540D31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D19540D31
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8D19540D31
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 16:40:33 +0000 (UTC)
Received: from [192.168.2.107] (p57bd98e4.dip0.t-ipconnect.de [87.189.152.228])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4CE8A61E6479C;
 Thu, 08 May 2025 18:39:48 +0200 (CEST)
Message-ID: <8a9fda50-6040-4cca-b99f-46bb9258a6f0@molgen.mpg.de>
Date: Thu, 8 May 2025 18:39:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jagadeesh Yalapalli <jagadeesharm14@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jagadeesh <jagadeesh.yalapalli@einfochips.com>
References: <20250508061439.8900-1-jagadeesharm14@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250508061439.8900-1-jagadeesharm14@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Replace schedule_work with
 delayed workqueue for watchdog.
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

Dear Jagadeesh,


Thank you for your patch.

Am 08.05.25 um 08:14 schrieb Jagadeesh Yalapalli:
> From: Jagadeesh <jagadeesh.yalapalli@einfochips.com>

Is this your full name, or should *Jagadeesh Yalapalli* be used?

     git config --global user.name "Jagadeesh Yalapalli"

> 
>      Replace direct schedule_work() usage with queue_delayed_work() to allow
>      better timing control for the watchdog task. This resolves potential
>      race conditions during interface reset operations.

What error do you get (without your patch)?

>      - Added watchdog_wq workqueue_struct and watchdog_dq delayed_work
>      - Updated e1000_watchdog() to use queue_delayed_work()
>      - Removed obsolete TODO comment about delayed workqueue
> 
>      Tested in Qemu :
>      / # for i in {1..1000}; do
>      >     echo 1 > /sys/class/net/eth0/device/reset
>      >     sleep 0.1
>      > done
>      [  726.357499] e1000e 0000:00:02.0: resetting
>      [  726.390737] e1000e 0000:00:02.0: reset done

Please do not copy the output of git show, but send the patch with `git 
format-patch` and `git send-email`.

> Signed-off-by: Jagadeesh <jagadeesh.yalapalli@einfochips.com>
> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h  | 2 ++
>   drivers/net/ethernet/intel/e1000e/netdev.c | 3 +--
>   2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index ba9c19e6994c..1e7b365c4f31 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -194,6 +194,8 @@ struct e1000_adapter {
>   	struct timer_list blink_timer;
>   
>   	struct work_struct reset_task;
> +	struct workqueue_struct *watchdog_wq;
> +	struct delayed_work watchdog_dq;
>   	struct work_struct watchdog_task;
>   
>   	const struct e1000_info *ei;
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 8ebcb6a7d608..87a915d09f4e 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -5178,9 +5178,8 @@ static void e1000_watchdog(struct timer_list *t)
>   	struct e1000_adapter *adapter = from_timer(adapter, t, watchdog_timer);
>   
>   	/* Do the rest outside of interrupt context */
> -	schedule_work(&adapter->watchdog_task);
> +	queue_delayed_work(adapter->watchdog_wq, &adapter->watchdog_dq, 0);
>   
> -	/* TODO: make this use queue_delayed_work() */
>   }
>   
>   static void e1000_watchdog_task(struct work_struct *work)


Kind regards,

Paul
