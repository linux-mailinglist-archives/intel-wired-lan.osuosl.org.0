Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE6B69F72D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 15:54:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27807415AB;
	Wed, 22 Feb 2023 14:54:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27807415AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677077681;
	bh=WKlyeJlAcYPDjvnY8mtU+DMFczV67vxntxAhyJT73d0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qYTsS+4DZTgwvI6g9MNFPHLvq76xfQc6atEicnHQMHmyxtnK6v8S/oHxMIiJH5a3F
	 dPsWvRhamA35L2no4RSzxKSE44q0djtjr4h6oPOBrk9MIooxPlp1q76kqh0dG1bV4H
	 Ix8NEIKX2G3mHr7D5m30sWzxhjhi2Vm0LRHUGxRuILsshSIPdkzTRbYirr6ckWOQdD
	 beuvt/5IhqAs+bi0vlJ9b9UuZpEonsvZ8j+v68ZZqJXxa/bIIMTSGu6Kp+i0Reytnn
	 gUedAollIu0/rkm948Ad2P9HQ2d7+d8PCR5A24nVQv3YQ94ku04G3e/gP9QQS99Bxr
	 lDMMDgEimAehA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id azKgamp8XElS; Wed, 22 Feb 2023 14:54:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 270C640399;
	Wed, 22 Feb 2023 14:54:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 270C640399
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D3001BF589
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 14:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 653F94193F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 14:54:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 653F94193F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1fZr1lsPGe7U for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 14:54:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D3C54198A
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D3C54198A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 14:54:33 +0000 (UTC)
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A689B3F718
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 14:54:31 +0000 (UTC)
Received: by mail-pg1-f199.google.com with SMTP id
 d22-20020a63d716000000b00502e3fb8ff3so1431707pgg.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 06:54:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kZPMQ6a7BFBj6cyO2GKhKDpYbA80l7QvC2d3yXO1kK8=;
 b=nk4DvXiIbUVj1pW1tf3xnzeEhDF/T1Q7jHDqYn2+dlFgpdBrMBT/43u1+gdAlZ5zo2
 Q0eeUht0m8wLf+118oFwgP2iHXszqKxsqR2x3weVFdYdXss91b/P+XOP5CasCde3Em/i
 66eOxjwkhtflpJv0wy7yVBSaSlzzdgFl0ljLytpdT6DcxcAcHRt1Ne+eFNi2B5s0WB1H
 Lfw/V/xBUkKEtgRewE2n3PtTIvsnZtwXPWUaj/UTp2tZex289L0SEJJFWe6Uqjbymv6P
 G3oxXmawjL0Zgh33HxJpXpAuaBd4RyVEY74P+60l0xNXuByVQNg1yYy4Z4OvxGMmD4C8
 S4vw==
X-Gm-Message-State: AO0yUKUhRyWWt18BLUMYTewe9H7jvUbdorRcW6kldMJf3e13QKbjtmHW
 i0/Xz9x7rOhvvyvroQVywFUFC9FOMsoxuFoobMPOOjQKm9EcVuVWSQcDdgO7tv7dPIYzui0c8Ik
 d82C9m1mlMVtu53e4HkiGWJMlaTa8tx1QaHoNXkaxR4XPgdZJXtcAUmXNZqlcNkY=
X-Received: by 2002:a17:90b:1f87:b0:237:1892:2548 with SMTP id
 so7-20020a17090b1f8700b0023718922548mr1379828pjb.44.1677077670081; 
 Wed, 22 Feb 2023 06:54:30 -0800 (PST)
X-Google-Smtp-Source: AK7set+GtFgLJ8IryYaLS4JlrYA+6dm3SjhyHHVk9BLKIWwsLzA/+C/pkzXiReKAXehJwZlYLMC2Vsdc26Ky6mtK6+0=
X-Received: by 2002:a17:90b:1f87:b0:237:1892:2548 with SMTP id
 so7-20020a17090b1f8700b0023718922548mr1379816pjb.44.1677077669716; Wed, 22
 Feb 2023 06:54:29 -0800 (PST)
MIME-Version: 1.0
References: <20230222140741.35550-1-mateusz.palczewski@intel.com>
 <20c52c7c-c3c6-ff3c-469f-ed3cfea88e1d@molgen.mpg.de>
In-Reply-To: <20c52c7c-c3c6-ff3c-469f-ed3cfea88e1d@molgen.mpg.de>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Wed, 22 Feb 2023 22:54:18 +0800
Message-ID: <CAAd53p72mMcUnLujy2GXMmjtZHUM5kvtx1nEBtS5OsqFzftmLA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1677077671;
 bh=kZPMQ6a7BFBj6cyO2GKhKDpYbA80l7QvC2d3yXO1kK8=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=BsKWyHZOeyIO0GYOU7q3oX2WXWgofGO5u9G3m0G4ISAOGmfQqn49VcsirOgmM3XuQ
 1aFmpI2nOctJpEfrylOA1lUJwBGEBwQtBmHsZSB+la6clMLic1ebVESG7cn4+GfLlP
 kKz/YW0BXc/BQZF2Tue47dUlqkUdytvq7OgU8qUbIEc5ke3mQd/KyQNK6USDz3jy4Y
 aPnGvYTEfcRwFNMdzd0iLEJX17QkOd06T/s3jheEkghQ/I6sCDinfIOBtlnmyGc7Mh
 6yr7+PGsrepoAS3dUItl//xDP4DwY73AzL46YYOFWSpZM3cmFryb+VJKbfMeGD4xF4
 TWnsqs7dB437g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=BsKWyHZO
Subject: Re: [Intel-wired-lan] [PATCH net v3] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Cc: intel-wired-lan@lists.osuosl.org,
 Sebastian Basierski <sebastianx.basierski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On Wed, Feb 22, 2023 at 10:22 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> [Cc: +Kai-Heng]

Thanks for adding me to Cc list.

Please add me to the Cc list if there's next revision.

>
>
> Dear Mateusz, dear Sebastian,
>
>
> Thank you for the patch.
>
> Am 22.02.23 um 15:07 schrieb Mateusz Palczewski:
> > From: Sebastian Basierski <sebastianx.basierski@intel.com>
> >
> > While using i219-LM card currently it was only possible to achieve
> > about 60% of maximum speed due to regression introduced in Linux 5.8-rc1.
> > This was caused by TSO not being disabled by default despite commit
> > f29801030ac6 ("e1000e: Disable TSO for buffer overrun workaround")
> > implementation. Fix that by disabling TSO during driver probe.

Does that mean "watchdog_timer" isn't scheduled?

>
> Can the code added by the referenced commit then be removed?
>
> Also the questions from the discussion of v2(?) was not answered, why
> the conditions in the if statement of the code added by commit
> f29801030ac6 where not true.
>
>      /* disable TSO for pcie and 10/100 speeds, to avoid
>       * some hardware issues
>       */
>      if (!(adapter->flags & FLAG_TSO_FORCE)) {

Yea, my idea was to take FLAG_TSO_FORCE into consideration hence the
adding the change to this if block.

Maybe someone still wants to enable TSO despite of the downside?

Kai-Heng

>
> Missing Fixes: tag below.
>
> > Signed-off-by: Sebastian Basierski <sebastianx.basierski@intel.com>
> > Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > ---
> >   v3: Changed the patch to disable TSO during the probe
> >   v2: Fixed commit message and comment inside the code
> > ---
> >   drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++++++
> >   1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> > index 04acd1a992fa..863796acf8d7 100644
> > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> > @@ -7529,6 +7529,14 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >                           NETIF_F_RXCSUM |
> >                           NETIF_F_HW_CSUM);
> >
> > +      /* Disable TSO for i219 to avoid transfer speed
> > +       * being capped at 60%.
> > +       */
> > +     if (hw->mac.type == e1000_pch_spt) {
> > +             netdev->features &= ~NETIF_F_TSO;
> > +             netdev->features &= ~NETIF_F_TSO6;
> > +     }
> > +
> >       /* Set user-changeable features (subset of all device features) */
> >       netdev->hw_features = netdev->features;
> >       netdev->hw_features |= NETIF_F_RXFCS;
>
>
> Kind regards,
>
> Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
