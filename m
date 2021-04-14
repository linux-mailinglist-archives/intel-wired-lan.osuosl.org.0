Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 503AD35F56E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Apr 2021 15:51:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4BE960655;
	Wed, 14 Apr 2021 13:51:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ufCKNmdDS75; Wed, 14 Apr 2021 13:51:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFA4F60643;
	Wed, 14 Apr 2021 13:51:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E65261C1148
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 01:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE9E1400F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 01:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dCklzwAq-l85 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Apr 2021 01:37:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com
 [IPv6:2607:f8b0:4864:20::c31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C289B400C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 01:37:47 +0000 (UTC)
Received: by mail-oo1-xc31.google.com with SMTP id
 d11-20020a4a520b0000b02901e5e7013daaso2363577oob.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 18:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oPpNub0x+LlxaW1pwDR4JCfKjMoHmPl4Y2gZyA8yXlU=;
 b=hb89ZLS7XGn9p6/IQ3ARbB44mCMtTx4Zb+sy9TMH8ajohYZiXxzrhXK7fIDDfVVClU
 qG+VPSYqBfyBeeo17NN/rWnJls/XSIrbIuastNqB23SEOLP3ZcuPgZ+zaemsa2lEm5VK
 tvIbjAM8Z/iperVJeXbR9BbCCBRtyaSbc4L9wyOuheB9Bzth2SBIno19lD9+rUMRR6jF
 DIcIfLo8nnTQDRQM2wJNrH+OZDgywo4v6kASLrfYoKB7zaASTejOdL6hfqYDsEaID/PZ
 VqfwzqLVBxPPLgsXbd1U61Sq266S3c5iz9GuUvMTTFMSgfG+Ubcf0PcPH4vomMmLuCV4
 BLBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oPpNub0x+LlxaW1pwDR4JCfKjMoHmPl4Y2gZyA8yXlU=;
 b=rFEJuCiI8XRtOOBmQm25OP9+VCjoK6OezhDgOFV05haMkZZxJ1TjhTOZrMyU4oXRpU
 OvFNZSfKQbADZsT0AZajYcB1TNORIlDY6pV9+cbUNlA2P/WP07DYRgIjfvVDwnjm5Lta
 XhlvGL/EhHGEC4ipnjBC78fsvR4cd5vP0nBTK6j/po5g9t1N4l8R3reoRGbZR6/mQuRB
 I0CmNtK3PCePnKfr8f/t/MRy0LpYj+ilMyCEHdXIUymonzH5If1FtRlKqvYDbNYph7Vc
 PxjBEviYhXCNKGuUjws4fDdMEJzoxWHWdykQqWZE2O5DwOP98jeY5xiZldRFcMYZjKFr
 n/Uw==
X-Gm-Message-State: AOAM530tZmpNC4xRshsSW46oarVXdFWrurAxPBgOg02nnqHVmnoyt3Bi
 bPMTmNMrSefdCakOK+Ml4YDIZWOw2aWn+jvYo9o=
X-Google-Smtp-Source: ABdhPJzIhIzU0JDW2KqMzbOHnshkFNf0Y8ES8z75edQSXwAPyOM2ngKQOMK3lwvc42C647oky87ox4Nct7r3Esi/nmA=
X-Received: by 2002:a4a:e797:: with SMTP id x23mr22962494oov.24.1618364266860; 
 Tue, 13 Apr 2021 18:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210412065759.2907-1-kerneljasonxing@gmail.com>
 <20210413025011.1251-1-kerneljasonxing@gmail.com>
 <20210413091812.0000383d@intel.com>
In-Reply-To: <20210413091812.0000383d@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 14 Apr 2021 09:37:10 +0800
Message-ID: <CAL+tcoBHdVa8eJQVYK4aQj+XWAgcN8VOaL558z=2YuHSa8mbKQ@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Wed, 14 Apr 2021 13:51:24 +0000
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

Hi, Jesse

In the first patch, I did send to intel-wired-lan but it told me that
it is open for the member only, so
I got rid of it in this patch v2.

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

Well, yes, I will add a Co-developed-by label later.

> Your signature should be last if you sent the patch. The sign-offs are
> like a chain of custody, please review
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by
>

Thanks so much for your detailed instructions. I'm about to correct
them all together and then resend the patch v3.

Jason

> Thanks,
>  Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
