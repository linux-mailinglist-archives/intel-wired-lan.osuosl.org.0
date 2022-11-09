Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BB062324B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 19:20:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E9664168A;
	Wed,  9 Nov 2022 18:20:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E9664168A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668018046;
	bh=4YTn3gPA4yMcTG9Qrrr4BWWy0r7KGPMayZkVKZRJgdM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aWN5aqpyqWn/Ds0XvztkAqFU80piP4K2KWRyPz2Tx1NaLOp8xL6n7HQMyqETqwSg1
	 WOvCnTaJy0dWuoVURh2WGmTPx5qvl0JwLL6yh6nF+GIAEEz33Ac/jMIcA3lS6kiesF
	 aqD9edjcK9b85FhXZ1yNd3HM5gWjt+uKK3kskqhQo/3HXZjT4tfZjrPLmvSPdOE2Kw
	 BW97WAknyHr3lrfEmefYe2Ae/sWXjSaODy3aUABABl5TKGicKP+zvgZP7Pya/y/ij+
	 5tFw1HBW9tE7Y7vHRE7QAtPYoRqaWpIMERzM0x9HtBVKodLfhee/9C9PjlgyahUb9V
	 g+nQureB5D31w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YkmY0lNkb7uF; Wed,  9 Nov 2022 18:20:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EB5641600;
	Wed,  9 Nov 2022 18:20:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6EB5641600
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9CDAC1BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 18:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 831AB41600
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 18:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 831AB41600
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J2jS7MtIQRhJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 18:20:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DC15415F5
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9DC15415F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 18:20:39 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D720AB80AE1;
 Wed,  9 Nov 2022 18:20:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF291C433C1;
 Wed,  9 Nov 2022 18:20:35 +0000 (UTC)
Date: Wed, 9 Nov 2022 20:20:31 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <Y2vvbwkvAIOdtZaA@unreal>
References: <20221108102502.2147389-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221108102502.2147389-1-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668018036;
 bh=lHGIXa/gzMZc3tKmxe07xLxCc5ENdiRStUxmf+RJ76E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aDq7gFkVLaBFz3piUo2ROtjM7vxyTK0VgBb5MXkNJgRAbmWlBmTQAiI41f+1Fq2qu
 hkBF5vneS+6G0CgV0oggBnfm/bAMNfaMfflzjPZ8cCLyMC+11/bbC0LaTWC8z9KShf
 KEvyGPmr1uvvOjajknE8coL4wgOAepw9wtS7ip9S9Ed8mf7iJ/Z8fkvVZbYim3DyHw
 /CjzIqaQe8NMx0OCe2GRwOsKL4SZ42DEtNbTPZSJ03z7K5ixHbjnvnlvVElMzKTUAE
 hQKRXQgFBEbHSRD6K2dYHJ/IssE5VQhMrtpOw/7P2lXAzoDqsuMLK67aCu4bO3UtAn
 f/7fnsVKFTauA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=aDq7gFkV
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Do not restart Tx queues
 after reset task failure
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
Cc: SlawomirX Laba <slawomirx.laba@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 Patryk Piotrowski <patryk.piotrowski@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, sassmann@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 08, 2022 at 11:25:02AM +0100, Ivan Vecera wrote:
> After commit aa626da947e9 ("iavf: Detach device during reset task")
> the device is detached during reset task and re-attached at its end.
> The problem occurs when reset task fails because Tx queues are
> restarted during device re-attach and this leads later to a crash.

<...>

> +	if (netif_running(netdev)) {
> +		/* Close device to ensure that Tx queues will not be started
> +		 * during netif_device_attach() at the end of the reset task.
> +		 */
> +		rtnl_lock();
> +		dev_close(netdev);
> +		rtnl_unlock();
> +	}

Sorry for my naive question, I see this pattern a lot (including RDMA), 
so curious. Everyone checks netif_running() outside of rtnl_lock, while
dev_close() changes state bit __LINK_STATE_START. Shouldn't rtnl_lock()
placed before netif_running()?

Thanks

> +
>  	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
>  reset_finish:
>  	rtnl_lock();
> -- 
> 2.37.4
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
