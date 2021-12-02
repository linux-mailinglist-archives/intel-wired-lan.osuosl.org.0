Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B7C465E67
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Dec 2021 07:47:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 845498176B;
	Thu,  2 Dec 2021 06:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M_H4qE4HPEgU; Thu,  2 Dec 2021 06:47:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9538A8176A;
	Thu,  2 Dec 2021 06:47:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B64751BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 06:47:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A3CA74046E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 06:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0jHAWg5wnjNx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Dec 2021 06:47:17 +0000 (UTC)
X-Greylist: delayed 00:05:29 by SQLgrey-1.8.0
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81DAD40468
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 06:47:17 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id B4B59CE21B4;
 Thu,  2 Dec 2021 06:41:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7A76C53FCC;
 Thu,  2 Dec 2021 06:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1638427299;
 bh=N6s8uyXaMMbHTbaRzaIZf1iqKMVGcdcuwE2QAnSJP/M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1edUzoosLnLNB5sm67pQrYuNM4Ra5WTtE6YDOHP/Fn8dG7nIk4Dz8fcYVVnUMec+M
 5fOnktik/v6hXjPN16lvDO9XJFdXN9y9YKfyLgZpSYFh6U+YAhNDolL8Ou//5Ywd1M
 GYMoTE4fgmnhodSJfECMg2sZopMtU1p9vAFnUfhg=
Date: Thu, 2 Dec 2021 07:41:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <YahqnvgmT63iG48E@kroah.com>
References: <87r1awtdx3.fsf@intel.com>
 <20211201185731.236130-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211201185731.236130-1-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] igc: Avoid possible deadlock during
 suspend/resume
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
Cc: regressions@lists.linux.dev, netdev@vger.kernel.org, stable@vger.kernel.org,
 roots@gmx.de, intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 01, 2021 at 10:57:31AM -0800, Vinicius Costa Gomes wrote:
> Inspired by:
> https://bugzilla.kernel.org/show_bug.cgi?id=215129
> 

This changelog does not say anything at all, sorry.  Please explain what
is happening here as the kernel documentation asks you to.

> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
> Just to see if it's indeed the same problem as the bug report above.

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
