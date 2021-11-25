Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE37460CC0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 03:41:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AD624057A;
	Mon, 29 Nov 2021 02:41:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H1WCoV_hdO_K; Mon, 29 Nov 2021 02:41:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43CBC40579;
	Mon, 29 Nov 2021 02:41:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 921FA1BF36C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 07:13:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7FFA1404C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 07:13:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d_4NKl5-yc9x for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Nov 2021 07:13:23 +0000 (UTC)
X-Greylist: delayed 00:09:57 by SQLgrey-1.8.0
Received: from vulcan.natalenko.name (vulcan.natalenko.name
 [IPv6:2001:19f0:6c00:8846:5400:ff:fe0c:dfa0])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 53EF340364
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 07:13:23 +0000 (UTC)
Received: from spock.localnet (unknown [83.148.33.151])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id 256F0CBCA7C;
 Thu, 25 Nov 2021 08:03:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1637823800;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IXUCekOknOdqWi3NoejcSY8b4+cDF5XXrBMYpnYJrZ0=;
 b=NGr7TZuhUl05DV/Y5Pri92WOScPJOQSCppojgak7bjONvFsFB+N09CIXZksgoPa9ruC80d
 UxF14o/10PawYTEdY6kUBFtzwqKhjLaC0sl5hEzuy+3gvQDqWd1x+2eDQUCln/SmoIIIgY
 2hDAP6pizNarDFr8T0i2gSCM244d7mw=
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Thu, 25 Nov 2021 08:03:18 +0100
Message-ID: <4695060.31r3eYUQgx@natalenko.name>
In-Reply-To: <20211123204000.1597971-1-jesse.brandeburg@intel.com>
References: <20211123204000.1597971-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 29 Nov 2021 02:40:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: fix netpoll exit with
 traffic
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
Cc: netdev@vger.kernel.org, Danielle Ratson <danieller@nvidia.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello.

On =FAter=FD 23. listopadu 2021 21:40:00 CET Jesse Brandeburg wrote:
> Oleksandr brought a bug report where netpoll causes trace
> messages in the log on igb.
> =

> Danielle brought this back up as still occuring, so we'll try
> again.
> =

> [22038.710800] ------------[ cut here ]------------
> [22038.710801] igb_poll+0x0/0x1440 [igb] exceeded budget in poll
> [22038.710802] WARNING: CPU: 12 PID: 40362 at net/core/netpoll.c:155
> netpoll_poll_dev+0x18a/0x1a0
> =

> As Alex suggested, change the driver to return work_done at the
> exit of napi_poll, which should be safe to do in this driver
> because it is not polling multiple queues in this single napi
> context (multiple queues attached to one MSI-X vector). Several
> other drivers contain the same simple sequence, so I hope
> this will not create new problems.
> =

> Fixes: 16eb8815c235 ("igb: Refactor clean_rx_irq to reduce overhead and
> improve performance") Reported-by: Oleksandr Natalenko
> <oleksandr@natalenko.name>
> Reported-by: Danielle Ratson <danieller@nvidia.com>
> Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> COMPILE TESTED ONLY! I have no way to reproduce this even on a machine I
> have with igb. It works fine to load the igb driver and netconsole with
> no errors.
> ---
> v2: simplified patch with an attempt to make it work
> v1: original patch that apparently didn't work
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c index
> e647cc89c239..5e24b7ce5a92 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -8104,7 +8104,7 @@ static int igb_poll(struct napi_struct *napi, int
> budget) if (likely(napi_complete_done(napi, work_done)))
>  		igb_ring_irq_enable(q_vector);
> =

> -	return min(work_done, budget - 1);
> +	return work_done;
>  }
> =

>  /**

This seems to address the issue for me. I do not see a warning after a coup=
le =

of suspend/resume cycles any more, while previously it occurred after the f=
irst =

cycle.

Tested-by: Oleksandr Natalenko <oleksandr@natalenko.name>

Thanks!

-- =

Oleksandr Natalenko (post-factum)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
