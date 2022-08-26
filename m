Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 763AF5A2BC6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 17:57:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E30ED41A30;
	Fri, 26 Aug 2022 15:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E30ED41A30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661529427;
	bh=lx+RjTjqsCYTFRpHJNc3Xg9x/y4oc09utrKQxvFi0+8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vkHi8iOpOyarGchjBN/GzOObl2i71UXs4aNWDVs6zvKfoNc396WXUORd6Ue/zViOU
	 LHILzaEyD5zKRH16lbIC3h6XiWGJ90doiOCGFI9uXLPHdCQIHnNEmhlxEwknsnhesO
	 HTruMQ1cwIu5u+wWz1hgZbAJeE8wmD3FfmTJ56+nMRLINeIirEtjvuIhonLRtinYkh
	 mH8DFUadsX8NBI6omvaTX0Q8MJfpbnySdth0TeumqY0Iyw4aXL48V6sd698GcAQgZh
	 1HPV1JxAmrRDXukjoDRtSQcfEUcZoRb+PXUftPPF6aTDmgdRIQfB9TmwAPL3u650A4
	 YPT+f28vvFQxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0L-S6BmuofAD; Fri, 26 Aug 2022 15:57:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79C8841929;
	Fri, 26 Aug 2022 15:57:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79C8841929
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AAB121BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 05:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9205C40354
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 05:43:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9205C40354
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lYYFIMx0ABuq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 05:42:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9564540012
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9564540012
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 05:42:59 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id w2so746983pld.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 22:42:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=1YeSohKprvznhG9NRDHk53lOiY+tzruNA0zvGt6cDqA=;
 b=mM5avyqsh+5UvhbliUKPti2EiHeG2vht/9aSLxT1REGTFGFt2iP2XY33XKLMw3agFc
 fM2mez+joEmzojdbH4h7pDcerx+7guir9803UFWtDC9pjQ17w8trf4JbO53gTaBk75iV
 FGpblo+tcuS0nHpJqhnChAR3Qg9lFtFrZABXCDKPk9FdGDXHWv8oCRDc6JNeDDEJFRch
 S3qwcQKUfxESLBxJFCNqjnhJZAvkfio5g97R2Nmx6GfcWmUWxrM6fpAfpSlrUvf72snx
 GMhLn1yn0qy49VsRpC8gE/vZXWOYQ1QanCQeoEy5IoyuZ3meV+D/OfJeRflTreGTmTxT
 mroA==
X-Gm-Message-State: ACgBeo3IaqFWIjHa7GLBd3t0NHE4aRe/rUbmUa6leALNMv3ZbcVOuPxn
 7iXr/N7RDntCAbskNrPYqONS3aYX5HnV2984tSE=
X-Google-Smtp-Source: AA6agR42kqYx1732sUGKVGYoHwU6CxdVQe0DWE+KnwPrgjRLwjUZgsI4L38JkYQD/RyuNhYYMhxwZyJBxYpd0NwXP2I=
X-Received: by 2002:a17:902:d584:b0:173:19a2:b831 with SMTP id
 k4-20020a170902d58400b0017319a2b831mr2301769plh.126.1661492578880; Thu, 25
 Aug 2022 22:42:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220823060200.1452663-1-floridsleeves@gmail.com>
 <0056a39d-d7dc-34ea-3a71-6d5d3835c2d5@intel.com>
In-Reply-To: <0056a39d-d7dc-34ea-3a71-6d5d3835c2d5@intel.com>
From: Li Zhong <floridsleeves@gmail.com>
Date: Thu, 25 Aug 2022 22:42:48 -0700
Message-ID: <CAMEuxRraM31C1k9u37ZyxrYVUtKuWdiYUfhw+g=p7_oq-MrMEA@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Fri, 26 Aug 2022 15:57:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=1YeSohKprvznhG9NRDHk53lOiY+tzruNA0zvGt6cDqA=;
 b=QIYjs8ZjdE355CkSF1xQ6exccmZKYEc1ldYwXFNX6soDgzVvKLLilEKEW8BstaCngQ
 u2lR5DnJVzUwuQuHiJcApUvD4PGhmBLJR6Cm7Upt4hirsCx2tM0rgj6oDvZwAb7Wwcqm
 k0HGwVHgt+ac9cT+oqf/RhfqYcAOS3yCh8oLPtBMy7wF/0JIrVHGib2HbUu7+bXy9i83
 txnd5pvztmmAnQyrTUc7nHr7BWNlEuZPFOHy02BU8FMod/i2iA7OHG6R6YAVim4IlB9Z
 NTfE5Rv7iSb+N0OwR05f25fHMYpZWP1FED5BVglgO0z44oolAcCrjeLrGt9afUkb6a8e
 tlYQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=QIYjs8Zj
Subject: Re: [Intel-wired-lan] [PATCH v1] drivers/net/ethernet: check return
 value of e1e_rphy()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 23, 2022 at 8:19 AM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> On 8/22/2022 11:02 PM, lily wrote:
> > e1e_rphy() could return error value, which need to be checked.
>
> Thanks for having a look at the e1000e driver. Was there some bug you
> found or is this just a fix based on a tool or observation?
>
> If a tool was used, what tool?
>
These bugs are detected by a static analysis tool to check whether a
return error is handled.

> For networking patches please follow the guidance at
> https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html
>
>
> > Signed-off-by: Li Zhong <floridsleeves@gmail.com>
> > ---
> >   drivers/net/ethernet/intel/e1000e/phy.c | 14 +++++++++++---
> >   1 file changed, 11 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> > index fd07c3679bb1..15ac302fdee0 100644
> > --- a/drivers/net/ethernet/intel/e1000e/phy.c
> > +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> > @@ -2697,9 +2697,12 @@ static s32 e1000_access_phy_wakeup_reg_bm(struct e1000_hw *hw, u32 offset,
> >   void e1000_power_up_phy_copper(struct e1000_hw *hw)
> >   {
> >       u16 mii_reg = 0;
> > +     int ret;
> >
> >       /* The PHY will retain its settings across a power down/up cycle */
> > -     e1e_rphy(hw, MII_BMCR, &mii_reg);
> > +     ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
> > +     if (ret)
> > +             return ret;
>
> Can't return value to a void declared function, did you even compile
> test this?

Sorry for the compilation error. We will fix it in patch v2.

>
> Maybe it should be like:
>      if (ret) {
>         // this is psuedo code
>          dev_warn(..., "PHY read failed during power up\n");
>          return;
>      }
>
> >       mii_reg &= ~BMCR_PDOWN;
> >       e1e_wphy(hw, MII_BMCR, mii_reg);
> >   }
> > @@ -2715,9 +2718,12 @@ void e1000_power_up_phy_copper(struct e1000_hw *hw)
> >   void e1000_power_down_phy_copper(struct e1000_hw *hw)
> >   {
> >       u16 mii_reg = 0;
> > +     int ret;
> >
> >       /* The PHY will retain its settings across a power down/up cycle */
> > -     e1e_rphy(hw, MII_BMCR, &mii_reg);
> > +     ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
> > +     if (ret)
> > +             return ret;
>
> same here.
>
> >       mii_reg |= BMCR_PDOWN;
> >       e1e_wphy(hw, MII_BMCR, mii_reg);
> >       usleep_range(1000, 2000);
> > @@ -3037,7 +3043,9 @@ s32 e1000_link_stall_workaround_hv(struct e1000_hw *hw)
> >               return 0;
> >
> >       /* Do not apply workaround if in PHY loopback bit 14 set */
> > -     e1e_rphy(hw, MII_BMCR, &data);
> > +     ret_val = e1e_rphy(hw, MII_BMCR, &data);
> > +     if (ret_val)
> > +             return ret_val;
> >       if (data & BMCR_LOOPBACK)
> >               return 0;
> >
>
> Did any of the callers of the above function care about the return code
> being an error value? This has been like this for a long time...

We manually check this function e1e_rphy(). We think it's possible that
this function fails and it would be better if we can check the error and
report it for debugging and diagnosing. Though the possibility of error
may be low and that's why it has been here for a long time.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
