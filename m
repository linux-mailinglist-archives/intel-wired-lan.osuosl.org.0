Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975BA655253
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Dec 2022 16:41:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C316E40469;
	Fri, 23 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C316E40469
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671810087;
	bh=x+n43+IT9t4YztqDwex5S8gdZojc2u11bYYLl7100dI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B6sFy9Nu6BOQp7pqa/DdforW+qSChgmhiROY0FgU+TpoEXN9LVq3hHX2zFJ7y5PqU
	 YiMbv/7UQJDMyoanbsTRfLGTLPhaRxUfzTHHRse8bLy827Rmi+ezSmBsDEkbaHrabm
	 h6jpVAUQdSWHejRucAtz3ZCUlqb5PL1Y4VeD8AU9QcuMrAoa9ESR7cbg5f0emG46xZ
	 /LYLpBoqDuglvxLwwu6c6CWHkaVW6DfGce1aUf4azQOzJhz1GCrx/ItXUFPGUP7vGL
	 lwVvIA1Vk5e1wtIN2ymU4OVybdQtAVdizp3n6zq7lqSybJCjK0utUN8LEunfL5fspF
	 HT5Jq/l8lUpYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LXAZbONDhney; Fri, 23 Dec 2022 15:41:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CDC7240C26;
	Fri, 23 Dec 2022 15:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDC7240C26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD5621BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 15:41:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8708D4011D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 15:41:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8708D4011D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jmuzgL8ZzVMZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Dec 2022 15:41:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAF68402E7
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CAF68402E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 15:41:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A75496150D;
 Fri, 23 Dec 2022 15:41:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55F15C433D2;
 Fri, 23 Dec 2022 15:41:15 +0000 (UTC)
Date: Fri, 23 Dec 2022 10:41:13 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner
 <tglx@linutronix.de>
Message-ID: <20221223104113.0bc8d37f@gandalf.local.home>
In-Reply-To: <20221220134519.3dd1318b@gandalf.local.home>
References: <20221220134519.3dd1318b@gandalf.local.home>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] treewide: Convert del_timer*() to
 timer_shutdown*()
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, lvs-devel@vger.kernel.org,
 linux-acpi@vger.kernel.org, SHA-cyfmac-dev-list@infineon.com,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, bridge@lists.linux-foundation.org,
 intel-gfx@lists.freedesktop.org, linux-nfs@vger.kernel.org,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 Anna-Maria Gleixner <anna-maria@linutronix.de>,
 brcm80211-dev-list.pdl@broadcom.com, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Julia Lawall <Julia.Lawall@inria.fr>, linux-bluetooth@vger.kernel.org,
 netfilter-devel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 20 Dec 2022 13:45:19 -0500
Steven Rostedt <rostedt@goodmis.org> wrote:

> [
>   Linus,
> 
>     I ran the script against your latest master branch:
>     commit b6bb9676f2165d518b35ba3bea5f1fcfc0d969bf
> 
>     As the timer_shutdown*() code is now in your tree, I figured
>     we can start doing the conversions. At least add the trivial ones
>     now as Thomas suggested that this gets applied at the end of the
>     merge window, to avoid conflicts with linux-next during the
>     development cycle. I can wait to Friday to run it again, and
>     resubmit.
> 
>     What is the best way to handle this?
> ]

Note, I just did a git remote update, checked out the latest, re-ran the
script, and this patch hasn't changed.

-- Steve
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
