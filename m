Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB682C1290
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Sep 2019 02:31:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 845A885CE2;
	Sun, 29 Sep 2019 00:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I4ojyZBB8sFG; Sun, 29 Sep 2019 00:31:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01CC586FA6;
	Sun, 29 Sep 2019 00:31:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D388C1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Sep 2019 00:31:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C856887D54
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Sep 2019 00:31:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sfT9YSHMYdq2 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Sep 2019 00:31:52 +0000 (UTC)
X-Greylist: delayed 00:06:36 by SQLgrey-1.7.6
Received: from condef-10.nifty.com (condef-10.nifty.com [202.248.20.75])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 53F0A87CC4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Sep 2019 00:31:52 +0000 (UTC)
Received: from conssluserg-03.nifty.com ([10.126.8.82])by condef-10.nifty.com
 with ESMTP id x8T0LR8w016211
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Sep 2019 09:21:27 +0900
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x8T0L8Qu016204
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Sep 2019 09:21:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x8T0L8Qu016204
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1569716469;
 bh=5fDc5YaT7f/VUVtzw3IY9ZlI3jXeAzbdB4vRLcrugfI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oeAakd7g6wCJoOhdW9zt5iE6K9cgSMnoV8CoZ5y56M+issdOJmtkMxdqpupZWdPBd
 HpIk0rLrLvFNT5RIZk4NRBViVzQaZ1ZA8nReK5SvYtQ37dZ+yRQVsIcZ28Ovk/vTR7
 g/FDELPEAd+MwfZ9aKuQhcHcB+pCaVoKBtEfCcLbfUJ7i3L4aS4Sk2XwQaXF1v9/M6
 SULysb10cNZKdskauvD7kil0UCOJl4FfPTJfL1C5PQ2JTs+3Zz4xpAIQaJNmLyjw60
 BBqII+/cD51qDmVwm1wGJxiK/bJZMwB7ZWvxxEZiqUJ277D9cWSScit9/IAcEZXUPV
 /aFX8AeNdTRqg==
X-Nifty-SrcIP: [209.85.221.173]
Received: by mail-vk1-f173.google.com with SMTP id w3so1971484vkm.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2019 17:21:08 -0700 (PDT)
X-Gm-Message-State: APjAAAU3/6cR0kr26fP2YeEOQx11+cazdOhKNKT/nk8bpyGLQfMOM3Pa
 FpSIcZ5ttoqLSHaBmXtUELLV58nXM9I+eBfTP3k=
X-Google-Smtp-Source: APXvYqymOZkiXNxKVDSVKujhu5kJTfTDulxnWJzegGEnWkmbn4GZXf+H5EJwbxw+EyLqr/6h8oVz67rObQDH2Fk3mWM=
X-Received: by 2002:a1f:2343:: with SMTP id j64mr1919485vkj.84.1569716467891; 
 Sat, 28 Sep 2019 17:21:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190129204319.15238-1-jacob.e.keller@intel.com>
 <7b26e6cc-10ce-5df2-6375-1f95bc4da04e@infradead.org>
 <02874ECE860811409154E81DA85FBB58968DBE54@ORSMSX121.amr.corp.intel.com>
In-Reply-To: <02874ECE860811409154E81DA85FBB58968DBE54@ORSMSX121.amr.corp.intel.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 29 Sep 2019 09:20:31 +0900
X-Gmail-Original-Message-ID: <CAK7LNARyUEakeG_N9TWcO2cjFSzbgY__k_QJm6C+oOz+fW0aeg@mail.gmail.com>
Message-ID: <CAK7LNARyUEakeG_N9TWcO2cjFSzbgY__k_QJm6C+oOz+fW0aeg@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] namespace: fix namespace.pl script to
 support relative paths
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
Cc: Randy Dunlap <rdunlap@infradead.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Sep 28, 2019 at 8:30 AM Keller, Jacob E
<jacob.e.keller@intel.com> wrote:
>
> > -----Original Message-----
> > From: Randy Dunlap [mailto:rdunlap@infradead.org]
> > Sent: Friday, September 27, 2019 4:12 PM
> > To: Keller, Jacob E <jacob.e.keller@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; linux-kbuild <linux-
> > kbuild@vger.kernel.org>; Masahiro Yamada <yamada.masahiro@socionext.com>
> > Subject: Re: [PATCH] namespace: fix namespace.pl script to support relative paths
> >
> >
> > re: https://lore.kernel.org/lkml/20190129204319.15238-1-jacob.e.keller@intel.com/
> >
> > Did anything happen with this patch?
> >
> > Please send it to linux-kbuild@vger.kernel.org and
> > Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> >
> > You can also add:
> > Acked-by: Randy Dunlap <rdunlap@infradead.org>
> > Tested-by: Randy Dunlap <rdunlap@infradead.org>
> >
> >
> > I was just about to fix this script but I decided to first see if anyone else
> > had already done so.  Thanks.
> >
> > --
> > ~Randy
>
> Done, thanks.
>
> Regards,
> Jake


Applied to linux/kbuild. Thanks.

-- 
Best Regards
Masahiro Yamada
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
