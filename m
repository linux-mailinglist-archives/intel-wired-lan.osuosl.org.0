Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FD2360B9E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 16:17:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDF4D414F5;
	Thu, 15 Apr 2021 14:17:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dGjEksR4RvHA; Thu, 15 Apr 2021 14:17:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4915F4146B;
	Thu, 15 Apr 2021 14:17:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99BD91C116E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 01:13:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8012184354
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 01:13:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eC8l3Fb2ZMAi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 01:13:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7CB088434E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 01:13:01 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id k18so17703036oik.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 18:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wk6DDw94syWr3OzbAVtOTZ5taUo+9eS6vbkw8K6bZxg=;
 b=lQgWT9I5SsT2HAkp0PsUwausGwHSnnJUzjvCUFqCG/RfY+eXGLH1oQvI7P5QnJISf/
 49aIiqJBC3VrMrxU9RXuHExtB6gZeZvMzeZXIOvX2zka+my5IPvw+BlB9mysrc3pYaxI
 ht4IbWJp/snEjlf5HNr+L/uLveNxnex+PB5066UHKJNVvOjsI8ZmZlXD1i+XDL66a5X+
 t1QZ29TmTRqXb1iyyOCw0MPABHi2pLeQ5sBqXys9E71vQXUEQX1i77ak5HWkK0S9aSF1
 TA3aJsITZzODrijj2NVMX+zF/L/80qIcTgqAnj7wWiUFcEiLZzRRZlKvsBMfp7E0Er1d
 3efg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wk6DDw94syWr3OzbAVtOTZ5taUo+9eS6vbkw8K6bZxg=;
 b=h40hbkdImOM0wv16qSzHBP0hdoHVxGVyzE27wEF9PyRfYSwnf/QBa7TJtvw9qpgeRa
 ccPF0JAsDfbsYDYx5ReArNXrlj6xtmEpLcU5oNAfYoIaJMt7AMZ0POwh6ENH53uUGdA2
 1F6TPQ2xuymNzyYmmLlyLCJv3uRQ0mdgbfs6vLKGZ9ezGPFDnAcpDwCIJ6rupteBcOod
 GFNyDduTL/BhbG8epnfU80k4NcqoUrzibOTlq1KIsy/FPbt5WfJ1oGV6WA0lHvOFn7HB
 r+2N18oRli+hoHDr7GpsJ21SOrdx/CwouGPlop050owrU7sTWt6lNDBgctoQUPnmQD27
 OWdA==
X-Gm-Message-State: AOAM530s/ln7Uu/tTxBXvA+dj5l1lB/lMTl0x3/fii7mmCjrhs/RbSdT
 BoQEmYkUmyzzTI8z2vYHmIhYmqZ9BMyMkd77ayM=
X-Google-Smtp-Source: ABdhPJx3PuI7DwXAjEnGNsv9IgN+3156u+3ZcW2UMAvBa6vIMB1X4/zDb8vuXKDfytrYqKdZ9VjLCg6zhcYNaHrsxJg=
X-Received: by 2002:a05:6808:bcb:: with SMTP id
 o11mr700419oik.141.1618449180579; 
 Wed, 14 Apr 2021 18:13:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210412065759.2907-1-kerneljasonxing@gmail.com>
 <20210413025011.1251-1-kerneljasonxing@gmail.com>
 <20210413091812.0000383d@intel.com>
In-Reply-To: <20210413091812.0000383d@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Thu, 15 Apr 2021 09:12:24 +0800
Message-ID: <CAL+tcoBVhD1SfMYAFVn0HxZ3ig88pxtiLoha9d6Z+62yq8bWBA@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Thu, 15 Apr 2021 14:16:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: fix the panic when
 running bpf in xdpdrv mode
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
Cc: songliubraving@fb.com, kafai@fb.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev <netdev@vger.kernel.org>, ast@kernel.org, andrii@kernel.org,
 Shujin Li <lishujin@kuaishou.com>, yhs@fb.com, kpsingh@kernel.org,
 kuba@kernel.org, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 David Miller <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>,
 Jason Xing <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 14, 2021 at 12:27 AM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> kerneljasonxing@gmail.com wrote:
>
> > From: Jason Xing <xingwanli@kuaishou.com>
>
> Hi Jason,
>
> Sorry, I missed this on the first time: Added intel-wired-lan,
> please include on any future submissions for Intel drivers.
> get-maintainers script might help here?
>

Probably I got this wrong in the last email. Did you mean that I should add
intel-wired-lan in the title not the cc list? It seems I should put
this together on
the next submission like this:

[Intel-wired-lan] [PATCH net v4]

Am I missing something?

Thanks,
Jason

> >
> > Fix this panic by adding more rules to calculate the value of @rss_size_max
> > which could be used in allocating the queues when bpf is loaded, which,
> > however, could cause the failure and then trigger the NULL pointer of
> > vsi->rx_rings. Prio to this fix, the machine doesn't care about how many
> > cpus are online and then allocates 256 queues on the machine with 32 cpus
> > online actually.
> >
> > Once the load of bpf begins, the log will go like this "failed to get
> > tracking for 256 queues for VSI 0 err -12" and this "setup of MAIN VSI
> > failed".
> >
> > Thus, I attach the key information of the crash-log here.
> >
> > BUG: unable to handle kernel NULL pointer dereference at
> > 0000000000000000
> > RIP: 0010:i40e_xdp+0xdd/0x1b0 [i40e]
> > Call Trace:
> > [2160294.717292]  ? i40e_reconfig_rss_queues+0x170/0x170 [i40e]
> > [2160294.717666]  dev_xdp_install+0x4f/0x70
> > [2160294.718036]  dev_change_xdp_fd+0x11f/0x230
> > [2160294.718380]  ? dev_disable_lro+0xe0/0xe0
> > [2160294.718705]  do_setlink+0xac7/0xe70
> > [2160294.719035]  ? __nla_parse+0xed/0x120
> > [2160294.719365]  rtnl_newlink+0x73b/0x860
> >
> > Fixes: 41c445ff0f48 ("i40e: main driver core")
> >
>
> This Fixes line should be connected to the Sign offs with
> no linefeeds between.
>
> > Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
> > Signed-off-by: Shujin Li <lishujin@kuaishou.com>
>
> Did Shujin contribute to this patch? Why are they signing off? If
> they developed this patch with you, it should say:
> Co-developed-by: Shujin ....
> Signed-off-by: Shujin ...
> Signed-off-by: Jason ...
>
> Your signature should be last if you sent the patch. The sign-offs are
> like a chain of custody, please review
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by
>
> Thanks,
>  Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
