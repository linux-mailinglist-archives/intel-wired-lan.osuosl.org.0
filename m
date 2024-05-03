Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F618BAFBE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2024 17:28:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D509041FC3;
	Fri,  3 May 2024 15:28:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w56VEs1pqdqC; Fri,  3 May 2024 15:28:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEABE41E6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714750091;
	bh=HQocY+zIiybxmg572V2oftlBH1WtE88jZjblSyh+67E=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=67hqRbQB3Y1Boqo19YjYwmXtiEE5vjmiYLto6wpUhWKNYuE+UdwvbEvRWgRCCY9Ig
	 E64+T/ldPmY4mu9Bi4nhe/1K7V3VJqPadYGCpTXo9TVTk9JqgmZjKIPGSc7RenFVGq
	 zxPClJQgDAwG6o4RbFyA0HVAorwce6kONmyzyYRZOsKtvT/WWfXHVeJHpDTLwpIQAg
	 rvqOPWJAqGDxJE/8qFH3/BAaCc28DIVnvECy/T2/Mhtw0bszqsO0GHNwbt5O6sGfhx
	 fheGYxpbxjzGHBnkE965cLvXhgpfKweXNodaKYlqWinnDp6gFGp/FMlk4wyeowXWh6
	 GlQYlGkXWpJ5Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEABE41E6C;
	Fri,  3 May 2024 15:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 253931BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 07:44:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D88440983
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 07:44:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vqIAk4C7MedA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2024 07:44:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 268BB4094D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 268BB4094D
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 268BB4094D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 07:44:18 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D77174249F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 07:44:15 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-349cafdc8f0so5162117f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 May 2024 00:44:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714722255; x=1715327055;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HQocY+zIiybxmg572V2oftlBH1WtE88jZjblSyh+67E=;
 b=IeyvCGGeAXclINHgCbDATRqud10pRBi+l/r/E8Iv4nI0lil2E7gQhEPKpHNaFaVKHk
 iUyK1J8iFMc6CxDCj/qdkMBmxzreg+FvsWXsPySfp16IS/suXnYBPrN7HRvzPp5Uvjaf
 1aJbiCE2cU6aBk2KpwWPr4+laHPnfPgD7JF1EcAotSyXzAw0mjHMwSYoW2hT3IigyMNa
 3/hebFuD+qOmpSMRZHs7XQhoHHTR/0kkkVL2WJ5yvOxIEMUBwrWyI7EGlgUYh3yXx2t1
 uxaSqdknd3piqiLusPLJAp/FiYD955i80WFaigzaOu2pu1bVs9JjKPUdBIy46LTnjxTe
 AIbA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXhRTNkbjMS18iwYI0iRNptocCZjiMkCd0qrT7UEZvR81RUKWEIXeTQCEc6oBne+f9j3P0/i15K4++Ni0BbHZ0X89KrgXynl5+aOVuJzdmSWg==
X-Gm-Message-State: AOJu0YzZ8Cp7LML7C6L0JGc3+1TkiIyosq358yjYzmuyIB5Zyhb+cNcb
 xbblWq6qbBbZeAEHWVrRiUmumZClDimIa0dPGZKL+PPHHC1XEMVrHZxolUZdwoG8fzOS2Zy/6ta
 FCQKDjVOpY8mG4qGXmpfuRJddL2D/eCjy4AupiYQRyjz3qI0VWYnFg5txzlx1U45Ljfq99J+cGS
 uss0kYxqWbFZ/7dBrekzZXzQLte1M0yz7SGWppf6lfCCwvm1jMNTZyBZkP+Q==
X-Received: by 2002:a05:6000:112:b0:34c:fd73:55d with SMTP id
 o18-20020a056000011200b0034cfd73055dmr1722872wrx.70.1714722255536; 
 Fri, 03 May 2024 00:44:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHShT4u1aVmW6SGvB2TY5tSgwQwi7lin2dyXVmQGaomNM8W6zmFoTjKiJLXEOTsSv0jrb2dbsuiZNCqCaVckFY=
X-Received: by 2002:a05:6000:112:b0:34c:fd73:55d with SMTP id
 o18-20020a056000011200b0034cfd73055dmr1722849wrx.70.1714722255134; Fri, 03
 May 2024 00:44:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240502091215.13068-1-en-wei.wu@canonical.com>
 <4bd85100-0f3d-4e38-973c-e6938f304dde@molgen.mpg.de>
In-Reply-To: <4bd85100-0f3d-4e38-973c-e6938f304dde@molgen.mpg.de>
From: En-Wei WU <en-wei.wu@canonical.com>
Date: Fri, 3 May 2024 15:44:04 +0800
Message-ID: <CAMqyJG3mD0bcPoZg5ay-3PqgPvCR1OaraE6X00kH1QRTE3XNMw@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 03 May 2024 15:28:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1714722255;
 bh=HQocY+zIiybxmg572V2oftlBH1WtE88jZjblSyh+67E=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=iJyz60oM3SH1R7K98X9ir0hOYo345rqXnopVU6w4o9PWnv6IeOLWhHBV3HbRssaHZ
 eTwxTOgvjP2/6BJKT+5HflAIYmctcXnpFQUzrk0Y9m8Fo6UQFZa/x3Wv3lUrj76WpZ
 XTqygFJfj7Nb2Bi0Vm0iRLjXAZkDRWfkU8+FW9ZyhLRVQyXH3KLC6fLZ8UlbxX2dG+
 DFrQmPj4nqpqST9vYaSkDnBF8qIHf3rPTi///h4SJkwsRUdMpTpViEzr+WQeGWB6/T
 7QpYnJN38s7Hq1xc2eOKpwmDi/HtWfoLXriH025XfIB0C8hKBJSlXfodlZVPTDxpAA
 Zy94NoZqT/CWQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=iJyz60oM
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: fix link fluctuations problem
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
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paul Menzel,

Thank you for your quick response.

> Do you mean ho*t*-plugging?
> Increas*ing*?

Yes, sorry about the misspelling.

> Could you please document what NICs you saw this
Yes. I saw this in Intel I219-LM. I haven't seen this bug on other NICs.

> and if it is documented in any datasheet/errata?
No, we couldn't find any datasheet/errata documenting this.

> Does this have any downsides on systems with non-buggy hardware?
No, I've tested other non-buggy hardwares (like I219-V) and it has no
effect on them.

>Could you please split this hunk into a separate patch?
Sure! I'll send the v2 patchset soon.

> Are there any other  public bug reports and discussions you could referen=
ce?
No. We have an internal private bug report but it cannot be exposed to
the public.

Thank you for your time.

On Fri, 3 May 2024 at 13:34, Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> [Fix address jesse.brandeburg@intel.co*m*]
>
>
> Dear Ricky,
>
>
> Thank you for your patch.
>
>
> Am 02.05.24 um 11:12 schrieb Ricky Wu:
> > As described in https://bugzilla.kernel.org/show_bug.cgi?id=3D218642,
> > some e1000e NIC reports link up -> link down -> link up when hog-pluggi=
ng
>
> Do you mean ho*t*-plugging?
>
> > the Ethernet cable.
> >
> > The problem is because the unstable behavior of Link Status bit in
> > PHY Status Register of some e1000e NIC. When we re-plug the cable,
> > the e1000e_phy_has_link_generic() (called after the Link-Status-Changed
> > interrupt) has read this bit with 1->0->1 (1=3Dlink up, 0=3Dlink down)
> > and e1000e reports it to net device layer respectively.
>
> Wow. I guess this was =E2=80=9Cfun=E2=80=9D to debug. Could you please do=
cument, what
> NICs you saw this, and if it is documented in any datasheet/errata?
>
> > This patch solves the problem by passing polling delays on
> > e1000e_phy_has_link_generic() so that it will not get the unstable
> > states of Link Status bit.
>
> Does this have any downsides on systems with non-buggy hardware?
>
> > Also, the sleep codes in e1000e_phy_has_link_generic() only take
> > effect when error occurs reading the MII register. Moving these codes
> > forward to the beginning of the loop so that the polling delays passed
> > into this function can take effect on any situation.
>
> Could you please split this hunk into a separate patch?
>
> Should it Fixes: tag be added?
>
> Are there any other  public bug reports and discussions you could referen=
ce?
>
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=3D218642
>
> > Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
> > ---
> >   drivers/net/ethernet/intel/e1000e/ich8lan.c |  5 ++++-
> >   drivers/net/ethernet/intel/e1000e/phy.c     | 10 ++++++----
> >   2 files changed, 10 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/=
ethernet/intel/e1000e/ich8lan.c
> > index f9e94be36e97..c462aa6e6dee 100644
> > --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> > +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> > @@ -1427,8 +1427,11 @@ static s32 e1000_check_for_copper_link_ich8lan(s=
truct e1000_hw *hw)
> >       /* First we want to see if the MII Status Register reports
> >        * link.  If so, then we want to get the current speed/duplex
> >        * of the PHY.
> > +      * Some PHYs have link fluctuations with the instability of
> > +      * Link Status bit (BMSR_LSTATUS) in MII Status Register.
> > +      * Increase the iteration times and delay solves the problem.
>
> Increas*ing*?
>
> >        */
> > -     ret_val =3D e1000e_phy_has_link_generic(hw, 1, 0, &link);
> > +     ret_val =3D e1000e_phy_has_link_generic(hw, COPPER_LINK_UP_LIMIT,=
 100000, &link);
>
> Could you please document how 100000 was chosen?
>
> >       if (ret_val)
> >               goto out;
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethe=
rnet/intel/e1000e/phy.c
> > index 93544f1cc2a5..ef056363d721 100644
> > --- a/drivers/net/ethernet/intel/e1000e/phy.c
> > +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> > @@ -1776,7 +1776,13 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw =
*hw, u32 iterations,
> >       u16 i, phy_status;
> >
> >       *success =3D false;
> > +
> >       for (i =3D 0; i < iterations; i++) {
> > +             if (usec_interval >=3D 1000)
> > +                     msleep(usec_interval / 1000);
> > +             else
> > +                     udelay(usec_interval);
> > +
> >               /* Some PHYs require the MII_BMSR register to be read
> >                * twice due to the link bit being sticky.  No harm doing
> >                * it across the board.
> > @@ -1799,10 +1805,6 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw =
*hw, u32 iterations,
> >                       *success =3D true;
> >                       break;
> >               }
> > -             if (usec_interval >=3D 1000)
> > -                     msleep(usec_interval / 1000);
> > -             else
> > -                     udelay(usec_interval);
> >       }
> >
> >       return ret_val;
