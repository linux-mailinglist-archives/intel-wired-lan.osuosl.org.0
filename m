Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A88376708
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 May 2021 16:29:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 386D3606C1;
	Fri,  7 May 2021 14:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HqI6afWavZFI; Fri,  7 May 2021 14:29:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCCE3606BE;
	Fri,  7 May 2021 14:29:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 069821BF38B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 06:32:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E04C840F02
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 06:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=natalenko.name
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BYgj8x4rs_88 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 May 2021 06:32:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vulcan.natalenko.name (vulcan.natalenko.name
 [IPv6:2001:19f0:6c00:8846:5400:ff:fe0c:dfa0])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DF9C40EF6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 06:32:30 +0000 (UTC)
Received: from localhost (unknown [151.237.229.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id EF63BA68F07;
 Fri,  7 May 2021 08:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1620369141;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZR9Npg3yrBaN5DKiciYNxVW5du4pSgaOY1T0a4Uu9og=;
 b=gXagwi1ywfJMPZXGyyrfhrHBHMLvVMTqQnLdQ2t6LU2yhEXZwyddmkJDh+1VOMmwjb/J2C
 ruyHQ/+T5MhwXgCH+ADqvSlKtYshwLBjlM/ScbffV9ppCR+e+C2VwXPUKgOyIqMAiFrAOx
 XZWl1uW6gDIRWJdH0o8FhGUb1ga5Tqc=
Date: Fri, 7 May 2021 08:32:20 +0200
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20210507063220.x6w4ok2sujdlher6@spock.localdomain>
References: <20210507023001.2621951-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210507023001.2621951-1-jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Fri, 07 May 2021 14:29:08 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix netpoll exit with traffic
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
Cc: Alexander Duyck <alexanderduyck@fb.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello.

On Thu, May 06, 2021 at 07:30:01PM -0700, Jesse Brandeburg wrote:
> Oleksandr brought a bug report where netpoll causes trace messages in
> the log on igb.
> 
> [22038.710800] ------------[ cut here ]------------
> [22038.710801] igb_poll+0x0/0x1440 [igb] exceeded budget in poll
> [22038.710802] WARNING: CPU: 12 PID: 40362 at net/core/netpoll.c:155 netpoll_poll_dev+0x18a/0x1a0
> 
> After some discussion and debug from the list, it was deemed that the
> right thing to do is initialize the clean_complete variable to false
> when the "netpoll mode" of passing a zero budget is used.
> 
> This logic should be sane and not risky because the only time budget
> should be zero on entry is netpoll.  Change includes a small refactor
> of local variable assignments to clean up the look.
> 
> Fixes: 16eb8815c235 ("igb: Refactor clean_rx_irq to reduce overhead and improve performance")
> Reported-by: Oleksandr Natalenko <oleksandr@natalenko.name>
> Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>

Thanks for the patch, I'll test it ASAP and ask other persons from the
bugzilla to provide a feedback if possible.

Also, you may want to include a link to the kernel bugzilla into the
commit message:

Link: https://bugzilla.kernel.org/show_bug.cgi?id=212573

> ---
> 
> Compile tested ONLY, but functionally it should be exactly the same for
> all cases except when budget is zero on entry, which will hopefully fix
> the bug.
> 
> Sending this through intel-wired-lan with Alex's ACK.
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 0cd37ad81b4e..b0a9bed14071 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -7991,12 +7991,16 @@ static void igb_ring_irq_enable(struct igb_q_vector *q_vector)
>   **/
>  static int igb_poll(struct napi_struct *napi, int budget)
>  {
> -	struct igb_q_vector *q_vector = container_of(napi,
> -						     struct igb_q_vector,
> -						     napi);
> -	bool clean_complete = true;
> +	struct igb_q_vector *q_vector;
> +	bool clean_complete;
>  	int work_done = 0;
>  
> +	/* if budget is zero, we have a special case for netconsole, so
> +	 * make sure to set clean_complete to false in that case.
> +	 */
> +	clean_complete = !!budget;
> +
> +	q_vector = container_of(napi, struct igb_q_vector, napi);
>  #ifdef CONFIG_IGB_DCA
>  	if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
>  		igb_update_dca(q_vector);
> -- 
> 2.30.2
> 

-- 
  Oleksandr Natalenko (post-factum)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
