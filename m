Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C10545077C6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Apr 2022 20:22:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 171DA417C5;
	Tue, 19 Apr 2022 18:22:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I4AS_mETvDks; Tue, 19 Apr 2022 18:22:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D34EB41769;
	Tue, 19 Apr 2022 18:22:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D1571BF418
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 18:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5827060B4D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 18:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b4F0kkMdgChM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Apr 2022 18:22:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6183360B1E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 18:22:37 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id b68so9427250qkc.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 11:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uM6URlo64vnwT75675dXokv0If7L93kTHHH/DSCpiRA=;
 b=p5pblPpvv/dx+BYsJ0n/CU+vZGLz041NM4OHGR3IOFAJr2tNP7tnDoYqG2Hmavhfq+
 TPH+XpDFtFcRNlrn+WnrFkhUQuPwaemAAm8du0tUB9fXniHmfaxN//jZ4U25mxci9xFJ
 rfnJMXBzqE7KzLDcqpXZWHYikpgMVCM80IxdU2og3/rfcpInlcCMZgA3xyY1GFR5+srV
 DRSjgJgk717ezoVhByaiAk4iEz1/YQnJ0ljWdB3W35WbUw5vE2Nl3fXrablTcuackhfu
 r8Eq8AU94Of1Sld5lXdf7AEXyY+toRtscrAWY1SF/hvior+w19ycCwiCauMGlgYwXpeg
 CUiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uM6URlo64vnwT75675dXokv0If7L93kTHHH/DSCpiRA=;
 b=yTU3yIvRZc5OMsQmzPlxWBJS0+XPwF1F1OyE/MAm0NPWz59oKMM2SdV6CFT01mFkt2
 +0bOFQgRqE8eWxVSE42u1LN4cGqR8QymV7Z0HZzqwry1I0z4Un+n7+zbyiW8z1BSK1+0
 PgAL9dHYhgbrUBTt1qm9Ks7Gj/cF3IV4fdWt1x4KGX1vmMfjpRH+1gqA109Dkk5XXQnt
 91EL2uqfr4aXw4/yIAQfkUdKpPX+DRMkio+v7/eICoVyA/3+6hb0J/jMJtv6j8L8qn9B
 vk6kYVWgoSH85M39txU1WrcV4b/TyctEOXjO8xYY/y0KxxIxS+DDDBlXVk4eMToAhxl7
 jNFQ==
X-Gm-Message-State: AOAM5336eX2Rped36fczQZzWSG2/AtV8vt8pZASq7BJ1gIztUTRoQkZg
 LKXu5/re3WHv2iy9L8FnJTbbaisM19fqh843KfM=
X-Google-Smtp-Source: ABdhPJwEmH+FhLPpk7EiRdNdOXL4ysHgnCorcXqTqHB1jkWn107SpWCjumv1tTCp1XUVJ2Di7M3p0yFIt80KW8d88Co=
X-Received: by 2002:a05:620a:2804:b0:67d:1e7b:b528 with SMTP id
 f4-20020a05620a280400b0067d1e7bb528mr10454138qkp.193.1650392556242; Tue, 19
 Apr 2022 11:22:36 -0700 (PDT)
MIME-Version: 1.0
References: <5ae22b2e-97de-6680-50a3-887ab87b3b87@gmail.com>
In-Reply-To: <5ae22b2e-97de-6680-50a3-887ab87b3b87@gmail.com>
From: Jeff Kirsher <tarbal@gmail.com>
Date: Tue, 19 Apr 2022 11:22:25 -0700
Message-ID: <CAL3LdT4gohtJk7s2V1j+_KhL_NuWg6_siJiaFQuELFL=ODnHzg@mail.gmail.com>
To: hanasaki@gmail.com, intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Subject: Re: [Intel-wired-lan] kernel LAN : Intel 2.5GbE LAN : support
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
Cc: LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 19, 2022 at 8:39 AM hanasaki-gmail <hanasaki@gmail.com> wrote:
>
> kernel LAN : Intel 2.5GbE LAN  : support
> Intel 2.5GbE LAN chip (2.5 Gbps/1 Gbps/100 Mbps)
>
> Looking at the below motherboard.
> what .config option and kernel module supports
> this ethernet LAN chip and at 2.5GB?
>
> What is the first kernel version having support?
>
> ref:
> X570SI AORUS PRO AX (rev. 1.1)
> https://www.gigabyte.com/us/Motherboard/X570SI-AORUS-PRO-AX-rev-11

Adding intel-wired-lan mailing list, which has all the Intel wired
Ethernet developers to answer your questions.

-- 
Cheers,
Jeff
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
