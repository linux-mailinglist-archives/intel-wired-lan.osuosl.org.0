Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4893832526C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Feb 2021 16:28:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E577943285;
	Thu, 25 Feb 2021 15:28:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NRoLBw66QQI8; Thu, 25 Feb 2021 15:28:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8CEA4326F;
	Thu, 25 Feb 2021 15:28:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFC951BF40D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 10:12:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB1C16F59F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 10:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kENep2ZiZJlp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Feb 2021 10:12:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26E1A6F72E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 10:12:08 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id d8so7897993ejc.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 02:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/RUb5WY27Oz2vzRcOsNokpjBKH5ToeFvji20EJddXt8=;
 b=HrVGaTWwtvm4kYU+nFUKoHA2vGZD3GpxgO0KHLRR9quykd3c8ZaC0n5mWK/zS+vXpy
 QtSAZPK0T72Gq4dNVcgCrudhamLhiniP6d/YJZKTCu2G5j2lHMKmvpFGbW9CZAroEo3+
 6R/Qmt27MgqM1eKbgNlvnOz0YXJ5FKZ0CUsMJxt3ekJFNPS3u5r1U02cuAnhUKDM3SrT
 Po/cy7UhuA40Dm1SD0qoU41ieUcjPFBpwHG7tolpXWC4rMSI5yDoFvgcc9feoW9FT6PJ
 DwW7TYtlmeqPhmfzNE8mjsjxV3E83LFygje5ArNDZBx0tSDaPfsW+5n85+T033L1IFiO
 tRpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/RUb5WY27Oz2vzRcOsNokpjBKH5ToeFvji20EJddXt8=;
 b=mQycF9Rxsw5MgWOotvgnc1RvZpKFadH4LWPZ344YnE7E4ZhefsGe9GvMzp7sFutvk7
 BpXzJkrGYLG4S6c+XTMacHndh/YqJYn1lebZYzmqd8oodUOUuafh4uvyolHelSaZ55aF
 h3BUvDs/u0q0DgI7mVGauBF7fkW/uqo0es866drGeCKCEzc8sx3vqy6D2uRDh7nhiCI+
 gUX7QUcRSG6/tX2kzzNd2kJ25zoqgrVRoINo4y4/uO2t1HlKUGmU569DDkgcDc46FHhp
 DepK8YJCOxpJF6DesmVMda34T98u7KX2ba5h9ph8tpjQgj+eKfZzsbq/1XvdhdwlE/+y
 dQ8w==
X-Gm-Message-State: AOAM533F/qxQf2OUZIKL6ORELIW6EHPe+QNcuMVEl/XDxrVGPIpCmfFw
 aQ8mYO1stHRcs+0+EBluSxwwq6jBYHug/cO9Tq8=
X-Google-Smtp-Source: ABdhPJzBL9430otKC5elC9WkKe50wlxD8dqzv+bEvgKMOBOKS/CYLXGpJ/4v6O7qgGTmKsHX59ltKnw+UJ/e+8zmWVY=
X-Received: by 2002:a17:906:b210:: with SMTP id
 p16mr2034515ejz.256.1614247926177; 
 Thu, 25 Feb 2021 02:12:06 -0800 (PST)
MIME-Version: 1.0
References: <20210222070701.16416-1-coxu@redhat.com>
 <20210222070701.16416-5-coxu@redhat.com>
In-Reply-To: <20210222070701.16416-5-coxu@redhat.com>
From: Bhupesh SHARMA <bhupesh.linux@gmail.com>
Date: Thu, 25 Feb 2021 15:41:55 +0530
Message-ID: <CAFTCetS=G_JV4Ax6=Ty20uifoL1jscrqPGhdh7d2k+t=0d+L8g@mail.gmail.com>
To: Coiby Xu <coxu@redhat.com>
X-Mailman-Approved-At: Thu, 25 Feb 2021 15:28:05 +0000
Subject: Re: [Intel-wired-lan] [RFC PATCH 4/4] i40e: don't open i40iw client
 for kdump
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
Cc: netdev@vger.kernel.org, kexec@lists.infradead.org,
 open list <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Coiby,

On Mon, Feb 22, 2021 at 12:40 PM Coiby Xu <coxu@redhat.com> wrote:
>
> i40iw consumes huge amounts of memory. For example, on a x86_64 machine,
> i40iw consumed 1.5GB for Intel Corporation Ethernet Connection X722 for
> for 1GbE while "craskernel=auto" only reserved 160M. With the module
> parameter "resource_profile=2", we can reduce the memory usage of i40iw
> to ~300M which is still too much for kdump.
>
> Disabling the client registration would spare us the client interface
> operation open , i.e., i40iw_open for iwarp/uda device. Thus memory is
> saved for kdump.
>
> Signed-off-by: Coiby Xu <coxu@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_client.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
> index a2dba32383f6..aafc2587f389 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_client.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
> @@ -4,6 +4,7 @@
>  #include <linux/list.h>
>  #include <linux/errno.h>
>  #include <linux/net/intel/i40e_client.h>
> +#include <linux/crash_dump.h>
>
>  #include "i40e.h"
>  #include "i40e_prototype.h"
> @@ -741,6 +742,12 @@ int i40e_register_client(struct i40e_client *client)
>  {
>         int ret = 0;
>
> +       /* Don't open i40iw client for kdump because i40iw will consume huge
> +        * amounts of memory.
> +        */
> +       if (is_kdump_kernel())
> +               return ret;
> +

Since crashkernel size can be manually set on the command line by a
user, and some users might be fine with a ~300M memory usage by i40iw
client [with resource_profile=2"], in my view, disabling the client
for all kdump cases seems too restrictive.

We can probably check the crash kernel size allocated (
$ cat /sys/kernel/kexec_crash_size) and then make a decision
accordingly, so for example something like:

 +       if (is_kdump_kernel() && kexec_crash_size < 512M)
 +               return ret;

What do you think?

Regards,
Bhupesh

>         if (!client) {
>                 ret = -EIO;
>                 goto out;
> --
> 2.30.1
>
>
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
