Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBF884D717
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 01:22:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF34741A45;
	Thu,  8 Feb 2024 00:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id owATgq6dgnWy; Thu,  8 Feb 2024 00:22:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AE6A41A7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707351735;
	bh=mfVSYGmYGYF0vwybF6QFj3Ki6AjcQEFcATXJTrLCvQI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PTnoQ0FIJdYY/YFb8cj6TLyLAei+1s1mrlSxzXxyYOpL7jREzc060vqRgdi80H14G
	 zQwN9FvCFyF/Y/fZgdN+zvwHyZs7WDrCawZxnJiVK5iAZdneA30MMVT/+qIUlSqr9y
	 zMCInGCuw/3gbRlHmhdjOUwF1pSWAdQKDDcaIMXlV/5/1zyupbdvi3jm0DRAth1Daw
	 k9YcOLf7lbsn6aX3FqvlwKBc0voCzZiByiuJcIZGG6Ik31kqttfiO85nrtaWXfX5YU
	 +0piLLhDpnYbFTzkviWBkdiuyteqe891WFwoO4LG8i+JTCFsvryUCTiu8gmUQsdKaF
	 iAe/EzKnWXflw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AE6A41A7E;
	Thu,  8 Feb 2024 00:22:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1EAF11BF28A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 00:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01A6761B32
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 00:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c3NF6X6-pp8h for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 00:22:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::c31; helo=mail-oo1-xc31.google.com;
 envelope-from=jmaxwell37@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5049D61B08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5049D61B08
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com
 [IPv6:2607:f8b0:4864:20::c31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5049D61B08
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 00:22:09 +0000 (UTC)
Received: by mail-oo1-xc31.google.com with SMTP id
 006d021491bc7-59cb1e24e91so486060eaf.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Feb 2024 16:22:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707351729; x=1707956529;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mfVSYGmYGYF0vwybF6QFj3Ki6AjcQEFcATXJTrLCvQI=;
 b=TEGVSSIQfsbyi0+KBCTh2ckODHn+yBUCppYwLSU9wKaIoTHw7pP1UAIGxnX9ThX3q+
 OLblcLgYohPWOaFNIHDKib7tsFbROD/1Q6EhEeofm12+SzGT/cfsxubEFTtOWLDFjymj
 xPiVzML0F2rZbivqmL6s8gE2GzOLCX7ifE9UzIhxSJQsj9+wNrk8GkHdn+X/OBE455xQ
 kKVWiF9rVd7n2PE8hQD0hOUJs4Bz1fU4RdfuG5H/h+j8FBODc1iohe8sm+kyqiXZmShO
 UmDbqdam32E4X/vmhw54+bwbRgqXYiKTJxie9L72mDnbmWzS0dv8GRjmYcwKcAfVuPnI
 10Pw==
X-Gm-Message-State: AOJu0YySRivYyl+MwVVwA0Wv6Nd12vMQ3YnvNsCtPiLxdqwmRJZdFa6Z
 Tg0JRQIgsV8JNSp03RzV5fzBPy2FDgD2MDLU962gNoSottD+PYBzUkrSTvyZ+yDCUftpnNoKHgh
 oglQD5kfJ4scS0nDlG9dN732aqZA=
X-Google-Smtp-Source: AGHT+IEGR1t1Xw+DlUF4mrZJ86FLolejaoxPZSNWkPCEkGDxE1kI5zrulvwraF0elKWCk6JARiJPjdzqzrxELqS20EI=
X-Received: by 2002:a4a:7650:0:b0:599:7389:967b with SMTP id
 w16-20020a4a7650000000b005997389967bmr7394200ooe.4.1707351728876; Wed, 07 Feb
 2024 16:22:08 -0800 (PST)
MIME-Version: 1.0
References: <20240207230430.82801-1-jmaxwell37@gmail.com>
 <36a95b38-99c5-4fda-b9bf-8b9fb3b67e1c@lunn.ch>
In-Reply-To: <36a95b38-99c5-4fda-b9bf-8b9fb3b67e1c@lunn.ch>
From: Jonathan Maxwell <jmaxwell37@gmail.com>
Date: Thu, 8 Feb 2024 11:21:33 +1100
Message-ID: <CAGHK07Dwv_fkP222WtMeH-E+bqOG8CFGQyNObDtkYbmeD4LELQ@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707351729; x=1707956529; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mfVSYGmYGYF0vwybF6QFj3Ki6AjcQEFcATXJTrLCvQI=;
 b=ild54sMnaZHzIJDsHVGML+ogb1GXm+s0ODbbNR9UJv17dpqJwFpb/nWJh32DRryPuN
 yxoHr9ENZWBOW7b9UakfVGxgU6fQBeyd96+SYYk+2YRAN4aTqsnRirZbESGXIgW1e7z9
 m+hixufYOghNWbNHd7i6XWLEFPLpCzMQba5fIeWrhzGGxR3VcxIpB8ilq0jiuHJTiAuE
 qBomqN2DE1dMQouxy00qkDA9ZT4N7NqFrHhDmyIlbH81iLITc11v7uKV7QG+wflRBFdM
 V8ICERHQvIC/mEhfdbXvDZH9IGpoPGcsK8NOYZtnMHKOF1bp1dAz7VwMiLR5WwCqlagw
 g3JA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ild54sMn
Subject: Re: [Intel-wired-lan] [net-next] intel: make module parameters
 readable in sys filesystem
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 8, 2024 at 11:04=E2=80=AFAM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Thu, Feb 08, 2024 at 10:04:30AM +1100, Jon Maxwell wrote:
> > Linux users sometimes need an easy way to check current values of modul=
e
> > parameters. For example the module may be manually reloaded with differ=
ent
> > parameters. Make these visible and readable in the /sys filesystem to a=
llow
> > that.
> >
> > Signed-off-by: Jon Maxwell <jmaxwell37@gmail.com>
> > ---
> >  drivers/net/ethernet/intel/e100.c                 | 6 +++---
> >  drivers/net/ethernet/intel/e1000/e1000_main.c     | 2 +-
> >  drivers/net/ethernet/intel/e1000e/netdev.c        | 2 +-
> >  drivers/net/ethernet/intel/i40e/i40e_main.c       | 2 +-
> >  drivers/net/ethernet/intel/igb/igb_main.c         | 4 ++--
> >  drivers/net/ethernet/intel/igbvf/netdev.c         | 2 +-
> >  drivers/net/ethernet/intel/igc/igc_main.c         | 2 +-
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     | 6 +++---
> >  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 2 +-
> >  9 files changed, 14 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/i=
ntel/e100.c
> > index 01f0f12035caeb7ca1657387538fcebf5c608322..2d879579fc888abda880e71=
05304941db5d4e263 100644
> > --- a/drivers/net/ethernet/intel/e100.c
> > +++ b/drivers/net/ethernet/intel/e100.c
> > @@ -170,9 +170,9 @@ MODULE_FIRMWARE(FIRMWARE_D102E);
> >  static int debug =3D 3;
> >  static int eeprom_bad_csum_allow =3D 0;
> >  static int use_io =3D 0;
> > -module_param(debug, int, 0);
> > -module_param(eeprom_bad_csum_allow, int, 0);
> > -module_param(use_io, int, 0);
> > +module_param(debug, int, 0444);
>
> ethtool should show you debug. And it is pretty much standardized, it
> should work for most ethernet interfaces which support msglvl. So i
> would say it is better to teach your Linux users how to use ethtool
> for this.

Yes they know about that. But take the scenario where  allow_unsupported_sf=
p
is set 0 after it was set to 1 at boot. That won't be logged.

>
> There might be some value in this change for module parameters which
> are not standardised, but i suggest you drop debug from the patchset.
>

Fair enough makes sense seeing that it can be controlled by ethtool.
I'll submit a v2 with that change.

Regards

Jon

>     Andrew
