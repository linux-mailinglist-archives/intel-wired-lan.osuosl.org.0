Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F6D27B35C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 19:35:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E03EE86378;
	Mon, 28 Sep 2020 17:35:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id an1wbTcajXrF; Mon, 28 Sep 2020 17:35:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03BC7861A3;
	Mon, 28 Sep 2020 17:35:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 239961BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 17:32:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 18595861AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 17:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fNjz9NclHME2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 17:32:17 +0000 (UTC)
X-Greylist: delayed 00:07:25 by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD62A861A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 17:32:17 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id d6so1667575pfn.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 10:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=xu75CUkAEe8YKESDX+6RMXTyhfVPWONUsVk2klTLLIw=;
 b=0/6i+LzwyathOMbvG6oG2ll/0evYhsEXpg9MB8BFBLC+1GFyqK6z7LlJJBxzxFdfbJ
 05TEF7DdGGpuvCMyi2NZv1Q92KQL0cR+D9CHNZcApVdI271h571JbWXG7v8ceUFtVFtf
 iwjyPFqYKOGDgEmB8LpvoaUN93/ZIPIYVvLAUawMj6Y4rR+hfMhita75OZvkqLyaAvUf
 xvE+pK94Tr93FIKvvY4r5qpOHmvw3WITNJyYhNThNqO4q29c3wTZYVBQe7Tq8UTIL6k4
 0ZHjkrbMpMyKmBmkJEdjYVDtZTHnR2/b6Pa/4fNUCUmKUcc1eo5AP/szp3Nr9ULAH1LL
 Gszg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=xu75CUkAEe8YKESDX+6RMXTyhfVPWONUsVk2klTLLIw=;
 b=tf6pWjsfjZ+SYpYKmXBFZ3LfuYmphyi71OEneV2qIhRRr3+wl4vDupiiG2rlNovbYL
 c00ZmWVZoDZG38yrpW+CWVTbAahljS7TcuXb0UPUAXYXkuDJVbM2ea1SrdpF6yQlXwqX
 GumU6geYPHZ8ejgoDLRb7NnWsdfqF8Ja1cAiQM3l0OwQ4gzvKoSdZfL7OqCdWNH0y6ap
 prNkD+KRzGJupve5tjwEMyw8gJ7m3M0RFinYekeZs48gjqD84coMLOykEL1bpRh7w5Ou
 x1rZgynLQc+2H9pa+ShOv4GpH3PYpe+uchIQ8dVUUtZA70xH6u5TRZQP6LakJgK8zyuG
 yRKg==
X-Gm-Message-State: AOAM531Yhg4hTA6X8IXR02i63cLIwokWzbkPNm3R9Gj3xojvbUGooAul
 ikuPglAY1PQCXqhjE6PERostaHeEbVzsNS5O
X-Google-Smtp-Source: ABdhPJzwfjXkCsxEu3XfK2aVP501w1BXp/1/rfPP3H13WpeMSgLae7v91sNjQ8w4DmdYg1Jo2bc1PA==
X-Received: by 2002:a63:595a:: with SMTP id j26mr130244pgm.406.1601313975665; 
 Mon, 28 Sep 2020 10:26:15 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local
 (static-50-53-47-17.bvtn.or.frontiernet.net. [50.53.47.17])
 by smtp.gmail.com with ESMTPSA id j18sm1986127pgm.30.2020.09.28.10.26.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Sep 2020 10:26:15 -0700 (PDT)
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
 <20200927194921.026798214@linutronix.de>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <96baeba9-eb5f-1462-2dcc-ecb9793727a1@pensando.io>
Date: Mon, 28 Sep 2020 10:26:10 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200927194921.026798214@linutronix.de>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 28 Sep 2020 17:35:35 +0000
Subject: Re: [Intel-wired-lan] [patch 12/35] net: ionic: Remove
 WARN_ON(in_interrupt()).
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Martin Habets <mhabets@solarflare.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Christian Benvenuti <benve@cisco.com>, "David S. Miller" <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/27/20 12:48 PM, Thomas Gleixner wrote:
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
>
> in_interrupt() is ill defined and does not provide what the name
> suggests. The usage especially in driver code is deprecated and a tree wide
> effort to clean up and consolidate the (ab)usage of in_interrupt() and
> related checks is happening.
>
> In this case the check covers only parts of the contexts in which these
> functions cannot be called. It fails to detect preemption or interrupt
> disabled invocations.
>
> As the functions which are invoked from ionic_adminq_post() and
> ionic_dev_cmd_wait() contain a broad variety of checks (always enabled or
> debug option dependent) which cover all invalid conditions already, there
> is no point in having inconsistent warnings in those drivers.
>
> Just remove them.
>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Shannon Nelson <snelson@pensando.io>
> Cc: Pensando Drivers <drivers@pensando.io>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org
Thanks.

Acked-by: Shannon Nelson <snelson@pensando.io>

> ---
>   drivers/net/ethernet/pensando/ionic/ionic_main.c |    4 ----
>   1 file changed, 4 deletions(-)
>
> --- a/drivers/net/ethernet/pensando/ionic/ionic_main.c
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_main.c
> @@ -248,8 +248,6 @@ static int ionic_adminq_post(struct ioni
>   	struct ionic_queue *adminq;
>   	int err = 0;
>   
> -	WARN_ON(in_interrupt());
> -
>   	if (!lif->adminqcq)
>   		return -EIO;
>   
> @@ -346,8 +344,6 @@ int ionic_dev_cmd_wait(struct ionic *ion
>   	int done;
>   	int err;
>   
> -	WARN_ON(in_interrupt());
> -
>   	/* Wait for dev cmd to complete, retrying if we get EAGAIN,
>   	 * but don't wait any longer than max_seconds.
>   	 */
>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
