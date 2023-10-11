Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8847C765C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A848B6132E;
	Thu, 12 Oct 2023 19:08:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A848B6132E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137719;
	bh=TC3wtldA3+3MgDcyQMKT5RIS6OYo3E0CnGWKa6ctoBc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OdB8qY7uIZm8ZM9Z37GxLZX3f78upo1Pz/XUA5RiCgKvjjOuzAmn7O5QQjYMI4da9
	 LeQnxVNmAxtbL3efUyKSdbspjvE7YbahFroXaQZoK/sLC/CPb5FAf48EPPwqFg23r7
	 /qVHHpzPvCYVXFHqUn3SWOoRl/cxYMykRCBRF6QH9yCk4djhV7ogeD9WtRTvhAWd30
	 khMhmq4DA7gqfRpIcOzoLSugR+YX+sY+CQCOGqBN5H7iCEx2Kt8xgbFNxqvpi3J73q
	 aLJ+dtMKMjj9tJg/9PI7PvoHue+4BYJ8CmF6aCFyKjLkcytrcRXHy5Y9Qi3RTgveBZ
	 6OLHaDB1gdUbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M-BJ4z9OzsCl; Thu, 12 Oct 2023 19:08:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 609606105F;
	Thu, 12 Oct 2023 19:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 609606105F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E0D51BF35C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 01:52:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1577160ABE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 01:52:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1577160ABE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id maJYcqh2diC1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 01:51:59 +0000 (UTC)
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB59160A81
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 01:51:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB59160A81
Received: by mail-yb1-xb29.google.com with SMTP id
 3f1490d57ef6-d9a5adc8cefso1513429276.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 18:51:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696989117; x=1697593917;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=WOo+EF/u54RXeRitvYZ8ajD/FlWO55LbfxCdX+rianc=;
 b=DW8uDCysFY9vdaAXNZlT5Iyeil6WCMNtW2reOIFq2cTW8gvsuC540gPZiCk991lhQ7
 heEBrMRZ42XzuqoG3T4sgA58+tDVgnj38l7063C1n0RyNPE9OMKKPx3LG5sJEGuMRvC8
 qE7Kcksuv+G7CaTg+u/fgDIMmHS+CYDcuxEcWvdgX356WOjLhlNYZQe4DuCsk9Hvcn6O
 lSlzInZepPBeCatb3TtTslNDqDo5DSIJ5WLL28b9maBaesZocMePoA8LoDGAqUsvD/5v
 B0huOaHLgw+P0mRl1fN5zx1iVg/BfC7EKQwnk/N0BCEPUHmq3ktc4mV+HAgkimTDywIP
 5lJA==
X-Gm-Message-State: AOJu0YwVrz9yp45BDHnEBFeJCoPUEwO3qIagyNBy2UarsVCNtB0neqqr
 uPJMMBulTsXyC7+hcqyWx3l0/dNbVI8S4cx5Vpc=
X-Google-Smtp-Source: AGHT+IFj2UNRdrx3NcHtPy/FdHrXpkci6/ENAHGYkV1kQoXhCqK+LLXKRHmPXBoIhRenrnhP1nqPgib3KiyjFGy2u0M=
X-Received: by 2002:a25:838a:0:b0:d9a:5071:716f with SMTP id
 t10-20020a25838a000000b00d9a5071716fmr4517257ybk.59.1696989117581; Tue, 10
 Oct 2023 18:51:57 -0700 (PDT)
MIME-Version: 1.0
References: <20231008075221.61863-1-hayatake396@gmail.com>
 <20231010123235.4a6498da@kernel.org>
In-Reply-To: <20231010123235.4a6498da@kernel.org>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Wed, 11 Oct 2023 10:51:46 +0900
Message-ID: <CADFiAcLibhgzOKcPtwTGkqKpPaTS-eOsOeby4M-6wCL7frQM_w@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696989117; x=1697593917; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=WOo+EF/u54RXeRitvYZ8ajD/FlWO55LbfxCdX+rianc=;
 b=iNEJc/cPyxUIVFB69qiBDK8GGE36hboxQDb9oL6eRoabFfwm9X2EixpQJXuoQxdL/M
 iAxHDzQaTeM9Xn3O/4loNGUjx0Ce2U1Kz0x1HsevaPdP8yAUdvovEDUnj1LX5gpengdE
 nb87NRZmvDB6jypG1mZ42+ndXQAspo1+4LitrPrUINliXixWeeF4QGcbfNz50435DIzx
 chMaMAl4ATkkFVlY+BUs9E6JjiWOTTsEj1nonh1dAnh/cMNvk8WoTvNEs/I6m9+N/9Mj
 JTy4BqfWMQd7A3od/xdToz4anHmjn3lWLXSfKbCU2EP6kmQcTCBXp6bud3khxnrSu2Q5
 yF8A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=iNEJc/cP
Subject: Re: [Intel-wired-lan] [PATCH net-next] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============6614754436876117355=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6614754436876117355==
Content-Type: multipart/alternative; boundary="0000000000008a8d20060767119f"

--0000000000008a8d20060767119f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jakub san
Thank you for your reply!

GTP generates a flow that includes an ID called TEID to identify the
tunnel. This tunnel is created for each UE (User Equipment).
By performing RSS based on this flow, it is possible to apply RSS for each
communication unit from the UE.
Without this, RSS would only be effective within the range of IP addresses.
For instance, the PGW can only perform RSS within the IP range of the SGW.
What I'm trying to say is that RSS based solely on IP addresses can be
problematic from a load distribution perspective, especially if there's a
bias in the terminals connected to a particular base station.
As a reference that discusses a similar topic, please see the link below(is
not RSS, is TEID Flow):
https://docs.nvidia.com/networking-ethernet-software/cumulus-linux-56/Layer=
-3/Routing/Equal-Cost-Multipath-Load-Sharing/#gtp-hashing

Thank you for your understanding.


2023=E5=B9=B410=E6=9C=8811=E6=97=A5(=E6=B0=B4) 4:32 Jakub Kicinski <kuba@ke=
rnel.org>:

> On Sun,  8 Oct 2023 07:52:22 +0000 Takeru Hayasaka wrote:
> > This is a patch that enables RSS functionality for GTP packets using
> > ethtool.
> > A user can include her TEID and make RSS work for GTP-U over IPv4 by
> > doing the following:
> > `ethtool -N ens3 rx-flow-hash gtpu4 sd`
> > In addition to gtpu(4|6), we now support gtpc(4|6), gtpu(4|6)e,
> > gtpu(4|6)u, and gtpu(4|6)d.
>
> This is for tunneling, right? IDK much about GTP but we don't have flow
> types for other tunneling protos. What makes this one special?
>

--0000000000008a8d20060767119f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jakub san<br>Thank you for your reply!<br><br><div>GTP =
generates a flow that includes an ID called TEID to identify the tunnel. Th=
is tunnel is created for each UE (User Equipment).<br>By performing RSS bas=
ed on this flow, it is possible to apply RSS for each communication unit fr=
om the UE. <br>Without this, RSS would only be effective within the range o=
f IP addresses.<br>For instance, the PGW can only perform RSS within the IP=
 range of the SGW. <br>What I&#39;m trying to say is that RSS based solely =
on IP addresses can be problematic from a load distribution perspective, es=
pecially if there&#39;s a bias in the terminals connected to a particular b=
ase station. <br>As a reference that discusses a similar topic, please see =
the link below(is not RSS, is TEID Flow):<br><a href=3D"https://docs.nvidia=
.com/networking-ethernet-software/cumulus-linux-56/Layer-3/Routing/Equal-Co=
st-Multipath-Load-Sharing/#gtp-hashing">https://docs.nvidia.com/networking-=
ethernet-software/cumulus-linux-56/Layer-3/Routing/Equal-Cost-Multipath-Loa=
d-Sharing/#gtp-hashing</a><br><br>Thank you for your understanding.<br><br>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr" =
id=3D"generated-id-1696988979462-oj132n4si">2023=E5=B9=B410=E6=9C=8811=E6=
=97=A5(=E6=B0=B4) 4:32 Jakub Kicinski &lt;<a href=3D"mailto:kuba@kernel.org=
" target=3D"_blank" id=3D"generated-id-1696988979462-7j0jfvqam">kuba@kernel=
.org</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" id=
=3D"generated-id-1696988979462-shgtf1smc">On Sun,=C2=A0 8 Oct 2023 07:52:22=
 +0000 Takeru Hayasaka wrote:<br>
&gt; This is a patch that enables RSS functionality for GTP packets using<b=
r>
&gt; ethtool.<br>
&gt; A user can include her TEID and make RSS work for GTP-U over IPv4 by<b=
r>
&gt; doing the following:<br>
&gt; `ethtool -N ens3 rx-flow-hash gtpu4 sd`<br>
&gt; In addition to gtpu(4|6), we now support gtpc(4|6), gtpu(4|6)e,<br>
&gt; gtpu(4|6)u, and gtpu(4|6)d.<br>
<br>
This is for tunneling, right? IDK much about GTP but we don&#39;t have flow=
<br>
types for other tunneling protos. What makes this one special?<br>
</blockquote></div></div>

--0000000000008a8d20060767119f--

--===============6614754436876117355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6614754436876117355==--
