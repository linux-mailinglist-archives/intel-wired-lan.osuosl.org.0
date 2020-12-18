Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFB72DE7AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 17:54:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 405C187963;
	Fri, 18 Dec 2020 16:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EO1k8bx2gDMQ; Fri, 18 Dec 2020 16:54:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BBB7087961;
	Fri, 18 Dec 2020 16:54:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F2051BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 16:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1B00587954
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 16:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GXSbpFpZFG6d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 16:53:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 841C187952
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 16:53:58 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id i24so3025842edj.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 08:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tWeqx9GDkGArwfOIv/2N1rayBVTEJU0P9D06B2doXuo=;
 b=gEe6BPxoAELEIy+qbdRskdUl2/ddAy9J9AhL28TZwk1aj534QC8lcSQ182CMJyl/5C
 BwlGodQR1HKmJAv721S0zsjTmYLIPp6fqlYUJJSjx5zKJ4PvO2UH1e45TbpZzYd7ZUT8
 yneCMzr1eaMUuSv+vJHXFDrrsdW1QcyOKXLIJGe2cxIU7tRTtQtCYgRIX/mg3h1d+3iq
 nwjZlz6U7eQcTD8HBpLYmVsXaOH/ABoBPDl6JMVhQREwbcIiG6LKMDZDoly3ZCGrwe4L
 +Sw7CY0jGdwLh1wJjPgThWuU0P8vio7Yhj/mVqAu7NtrhFpqqYbRWdp4Voo2Em47JzKM
 /UXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tWeqx9GDkGArwfOIv/2N1rayBVTEJU0P9D06B2doXuo=;
 b=CsK+PNscnSresbJGhyXAShvpjmFBRmK5SDFZ9cRTA7vU64haV8KHxBedqdJcBI7cKi
 FH819swYdzNlo8595Os0f0u8qaIWO0YecYWBFqeXjU/7B5iYA9m0pNQQeArJWSh42dkI
 YyMkqfk6JjhZNIhS56/qQK4c1bQULoabdIiSBmEapGYlCK6dHWD7k+GIX7r0ew9NNYp+
 YVwelJmr5cb99P8bXeDGlM84hEV0AC4oBHf0wUsuJloJRvt+ESpabjXbR0+RRmplrDW8
 UEKb0tCdHAJXweUeQGOST06/Ihr+OM41ec/kv1KOthYEox6jcMR1RiJqxBSw5OaKDYl8
 w+HQ==
X-Gm-Message-State: AOAM530n5LdDg3HFvQBecPKlbgrDxvdRdlJzMQ34nOH5GUlrEzy1Pj/P
 kz3CUvLgda6oY4GidTVcXCMKM1m1vGJWA9a0B8Zm9A==
X-Google-Smtp-Source: ABdhPJysk6uZWqQX3W7KxE8+AGQERwdxyRHHGBYLwDwSjnb3T4+tXjOv78h0NvoGWsaD7s1KoLZ0FotiJzn+QiNwEn8=
X-Received: by 2002:aa7:df0f:: with SMTP id c15mr5357072edy.354.1608310436816; 
 Fri, 18 Dec 2020 08:53:56 -0800 (PST)
MIME-Version: 1.0
References: <CAKXUXMx7+DGUc4LLWa+BXAkgrp9bQxCQoo_c98RNxKtw69BTSg@mail.gmail.com>
In-Reply-To: <CAKXUXMx7+DGUc4LLWa+BXAkgrp9bQxCQoo_c98RNxKtw69BTSg@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Fri, 18 Dec 2020 08:53:46 -0800
Message-ID: <CAPcyv4hqdiLci3xBa=UafJVec_YKZL2aw68DKgUf1RSz8BbFaw@mail.gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [Intel-wired-lan] Maintainer of ./drivers/dca?
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
Cc: "Paoloni, Gabriele" <gabriele.paoloni@intel.com>,
 intel-wired-lan@lists.osuosl.org, Shuah Khan <shuah@kernel.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To my knowledge DCA is effectively abandoned ever since Chris Leech
and Shannon Nelson moved on to new roles outside Intel.

On Fri, Dec 18, 2020 at 8:32 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> Hi Dan, Hi Jesse, Hi Tony,
>
> I was reviewing the MAINTAINERS file and I was trying to understand
> who is using and maintaining the files in ./drivers/dca, looking at
> the recent git history and its uses, and I could not confidently say
> if it is maintained by someone or not.
>
> Given Dan's activity a few years ago, Dan, you might be the maintainer
> and it is just missing a MAINTAINERS section?
> Or maybe, Jesse, Tony, you are maintaining ./drivers/dca/ as you use
> that in your IGB and IXGBE network drivers?
>
> So, who is maintaining ./drivers/dca/ or is it actually orphaned?
>
> I am happy to create and submit a patch to MAINTAINERS with a new
> entry, once we clarified the status and maintainer of those files.
>
> Thanks for your help.
>
> Best regards, Merry Christmas and Happy New Year,
>
> Lukas
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
