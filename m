Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9768440F2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 14:46:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EEDD83F44;
	Wed, 31 Jan 2024 13:46:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EEDD83F44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706708787;
	bh=V1nzFqWekvSu6tY6ZSGzcooEF5tznBA46cjxleLmSoI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0BsNs2GXZEHcXbTnz+I/uZ7KscdZwdYsQ7ICHXczWUpnETkWs0NoS5HrccXUTRKEg
	 Zn2NpM76acYbzjaYcTxqgPB5wR3KWBlFi78j1HCJfZkAEhTgBJPiWN9ajjghFjNk5P
	 W352Ma9RvCcxKMXtBPxkyiCtLveT6ITFGyC9thWC++sxN50F5H7z9q73Ei7nBlYcwA
	 oBHApar2kz6XZIZqExdY4+vfObsp3D+geY7TcllhW8HUZq0IDPcMr/p/BRuc1BvkSk
	 iKVoQsLGX/JWYlEPT+0vRQ9l6yPmAkmViDF95LCQiMzx4zikrSQnjyDdmCDj3MBncj
	 xUeGE+QJuKYkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1mfS-qLLdiuE; Wed, 31 Jan 2024 13:46:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65D8483F2D;
	Wed, 31 Jan 2024 13:46:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65D8483F2D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0D611BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 13:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8455440320
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 13:46:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8455440320
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id svnxAoHpe8z3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 13:46:20 +0000 (UTC)
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1242340022
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 13:46:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1242340022
Received: by mail-yb1-xb32.google.com with SMTP id
 3f1490d57ef6-dc372245aefso4197337276.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 05:46:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706708779; x=1707313579;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=V1nzFqWekvSu6tY6ZSGzcooEF5tznBA46cjxleLmSoI=;
 b=fkbSr0IhoWHQbFTecXZ+V7nOF1BaWMauOkhtQQDBBUQRF9l+96CZ/PK9cyMiqQ6nRq
 pj/GanYcmTio784gTIyeh2u4Ou3ZOGgvt4bGzDAXGuiTp15r/Hl5G00SsMcXHAmxki9D
 y8xhe0HiAB8C4PBlMe4Q+fpvjMAvyXXNqvGepXny3YudoT7fsZK9nwFoYF4AdcG0t1CQ
 RkQXjmXlM4eqOhHJG00Rze5vk7333+Ejb41wuuRz+vEu7+kLjsXwZLcxqgrA/EmtcJl6
 7nd0Pfi5A759EAG67fxHY+ubRUEP10FDEp+qrVH9734moM8uSb09e6K4pcB3hOW9in9f
 Z4ZQ==
X-Gm-Message-State: AOJu0YzA26dxizK2Av9z2x/kc5UV9bUKp6A6f3lGQGjquVsBXEPM6FBB
 GtyiqBGDoUAo5P+qC/Qkn/z5FJtk2BuuWa+fR2V4dPP1TtPWgpLLFiynL68zY5ovx8ip/UE0hM9
 KHa9/oAFS7MmOqy01i1hd+uWXTOw=
X-Google-Smtp-Source: AGHT+IEiFoBBXxuV5gR1XwSItKbDrrADzmIWacG63ou2WjTfLO5bCeIPeYOpJr+lhbVeaYbihGwqxx+EMKZNj1aTGQc=
X-Received: by 2002:a25:e00a:0:b0:dbe:ace1:acf6 with SMTP id
 x10-20020a25e00a000000b00dbeace1acf6mr1765364ybg.13.1706708778843; Wed, 31
 Jan 2024 05:46:18 -0800 (PST)
MIME-Version: 1.0
References: <20240131013705.1002722-1-hayatake396@gmail.com>
 <0fc3f574-6243-4c85-a6a7-442dc480c9e7@linux.intel.com>
In-Reply-To: <0fc3f574-6243-4c85-a6a7-442dc480c9e7@linux.intel.com>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Wed, 31 Jan 2024 22:46:07 +0900
Message-ID: <CADFiAc+wymeApwWFAjA_+sYN6_MaMssA3b4bYjeHXxjypjemRg@mail.gmail.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706708779; x=1707313579; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=V1nzFqWekvSu6tY6ZSGzcooEF5tznBA46cjxleLmSoI=;
 b=lqVTHKTaorZTPVLYHn81R4xsKpR1SIjuKypuiUPHcxSqqy+llDneWmqXPFIvHxnDuo
 jUd8LTUAMTm4ALdutrpC/PgoVQF4+2bqrU0bBAGZXiSpvmyAju76ZATRpr1Mi30T/Khp
 iVYqIAwnaX1SbZqPRJmUcVs3ozR+9YLoGjrl68M6ec2TxUcUtjBfSn4L+0MLSnjQy08a
 5xY2KN4SNkiRTx9CUDZAYMl5+GQH+MyFoICBYwDizGOdacyiXWQYPAJ6Fcdhw7TJ2DHQ
 2CoXuvcnLKEEM5f5N0kquTRw4cGp5TK2+ScDDKCKyTvQIbpnXk8FTwqJCQOsMibGt14q
 9zIg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=lqVTHKTa
Subject: Re: [Intel-wired-lan] [PATCH net-next v5] ethtool: ice: Support for
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
Cc: Jonathan Corbet <corbet@lwn.net>, vladimir.oltean@nxp.com,
 linux-doc@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 laforge@gnumonks.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Marcin-san

> LGTM

Thanks for your review!

> Still removing this line :c

Oh! Sorry for the oversight. I will fix it in the next patch.
Could you please take another look at the patch?

Thanks
Takeru
2024=E5=B9=B41=E6=9C=8831=E6=97=A5(=E6=B0=B4) 20:53 Marcin Szycik <marcin.s=
zycik@linux.intel.com>:

>
>
>
> On 31.01.2024 02:37, Takeru Hayasaka wrote:
> > This is a patch that enables RSS functionality for GTP packets using et=
htool.
> >
> > A user can include TEID and make RSS work for GTP-U over IPv4 by doing =
the
> > following:`ethtool -N ens3 rx-flow-hash gtpu4 sde`
> >
> > In addition to gtpu(4|6), we now support gtpc(4|6),gtpc(4|6)t,gtpu(4|6)=
e,
> > gtpu(4|6)u, and gtpu(4|6)d.
> >
> > gtpc(4|6): Used for GTP-C in IPv4 and IPv6, where the GTP header format=
 does
> > not include a TEID.
> > gtpc(4|6)t: Used for GTP-C in IPv4 and IPv6, with a GTP header format t=
hat
> > includes a TEID.
> > gtpu(4|6): Used for GTP-U in both IPv4 and IPv6 scenarios.
> > gtpu(4|6)e: Used for GTP-U with extended headers in both IPv4 and IPv6.
> > gtpu(4|6)u: Used when the PSC (PDU session container) in the GTP-U exte=
nded
> > header includes Uplink, applicable to both IPv4 and IPv6.
> > gtpu(4|6)d: Used when the PSC in the GTP-U extended header includes Dow=
nlink,
> > for both IPv4 and IPv6.
> >
> > GTP generates a flow that includes an ID called TEID to identify the tu=
nnel.
> > This tunnel is created for each UE (User Equipment).By performing RSS b=
ased on
> > this flow, it is possible to apply RSS for each communication unit from=
 the UE.
> > Without this, RSS would only be effective within the range of IP addres=
ses. For
> > instance, the PGW can only perform RSS within the IP range of the SGW.
> > Problematic from a load distribution perspective, especially if there's=
 a bias
> > in the terminals connected to a particular base station.This case can b=
e
> > solved by using this patch.
>
> LGTM
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>
> > Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
> > ---
> > v2->v3: Based on Harald-san's review, I added documentation and comment=
s to
> > ethtool.h and ice.rst.
> > v3->v4: Based on Marcin-san's review, I added the missing code for GTPC=
 and
> > GTPC_TEID, and revised the documentation and comments.
> > v4->v5: Based on Marcin-san's review, I fixed rename and wrong code reg=
arding
> > GTPC
>
> [...]
>
> >      f     Hash on bytes 0 and 1 of the Layer 4 header of the Rx packet=
.
> >      n     Hash on bytes 2 and 3 of the Layer 4 header of the Rx packet=
.
> > -
>
> Still removing this line :c
>
> > +    e     Hash on GTP Packet on TEID (4bytes) of the Rx packet.
> >
> >  Accelerated Receive Flow Steering (aRFS)
> >  ----------------------------------------
>
> ---8<---
