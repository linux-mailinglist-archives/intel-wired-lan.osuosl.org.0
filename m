Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFED83ECD0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jan 2024 12:10:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D31B881F2B;
	Sat, 27 Jan 2024 11:10:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D31B881F2B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706353849;
	bh=lWD3Yu/iWduUcZjUVmjkV6YLZ0ZkiCzd01DXVfzdL0o=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xyoC6WLciM4R2vU37D0hbTCp8xAJpUN/f3odp/jp4EBUT7ycyAk3FVLBqvF5AUg5j
	 dhJEBDv4KzII5PhN+GH7w9/qDZDgiW8C5Y+MbEV1fdUIWE4Dy78KIbPK16Y2HRkV0Y
	 XMLQQYySZxi9bRz2fOYtXpi0qr4H5eZPF8sj4ODt7ilPa/qvKXsGYzCKIohzcaWv15
	 xpMFpuZSqMhOOzUoV90vSe1PjZhr04Pds6NQeWzsKAflPTujEfgY0ON+wzfuPS5eeg
	 5hnnGJrvrYMldSH8WElybQ8KuOguY9RQLbX78k+JWPEO8JG9F6qilXTssVWs2lQ0AJ
	 4LqynpmXnx7JQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A-edqDuDbYwE; Sat, 27 Jan 2024 11:10:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5F1A82305;
	Sat, 27 Jan 2024 11:10:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5F1A82305
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B572F1BF30E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jan 2024 11:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C75882305
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jan 2024 11:10:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C75882305
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XnH7qpXQF3Tm for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Jan 2024 11:10:42 +0000 (UTC)
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com
 [IPv6:2607:f8b0:4864:20::b2f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC27081F17
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jan 2024 11:10:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC27081F17
Received: by mail-yb1-xb2f.google.com with SMTP id
 3f1490d57ef6-d9b9adaf291so1077165276.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jan 2024 03:10:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706353841; x=1706958641;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lWD3Yu/iWduUcZjUVmjkV6YLZ0ZkiCzd01DXVfzdL0o=;
 b=LgnXEr/TdatFPfYtBekIqzDB2kwxirwqVOymfI5FKnpyjueaqARF8knkTzIkWQUUlx
 i83AQ1/OEb8sm7suGxXxYoHIGNCAJ1bZQiosdiE3NUU8rGopRRlgjbnJ9fXK+oMWKB4T
 iyPrjClsh9oCH7rwQFDtQTgspk2JeKF/+rliC6Sr6Q4pZO1kLCqodvXp9uXbqZG/MwR+
 AJ8P0nARgxwqgN1W0HdPxQgxPTsjvhlyMUoPcsNQbtGwVhQvIH40ImBygRr71RX7bU+o
 aVD+VlfOP91ihT5bs1ziYAK/GQNHIITIPpu9viLVEHHxPvkj1o2r+NUSgGcmz2CbMJkP
 V7oQ==
X-Gm-Message-State: AOJu0YzJYHWbFrvqXW6Db87tJYGjkSk7etFQ9kGW6YBNqWuiU3GoDpsA
 8J8irB5Lkk0CXBEZx4kEs/QW+i4dSyC3WUk6Wx8KG1/ELu8Ypy3VIkC4IEe0CzHGyeu9VTYRLNy
 o3iIb+DOEIzBoiWIqLIV4hGmSPYc=
X-Google-Smtp-Source: AGHT+IE1vSzKK+O91qDqFt2y1OcufDzXdBHUga3KuwXkrrUbqgzpQs+SDOyDthoUk8FPoeOW8XBic/ie3g07/2XopM4=
X-Received: by 2002:a25:8141:0:b0:dc2:4ab7:3d81 with SMTP id
 j1-20020a258141000000b00dc24ab73d81mr727861ybm.96.1706353841483; Sat, 27 Jan
 2024 03:10:41 -0800 (PST)
MIME-Version: 1.0
References: <20240126045220.861125-1-hayatake396@gmail.com>
 <fb90ae9c-1f83-424c-878a-8b7e472bb6f0@molgen.mpg.de>
In-Reply-To: <fb90ae9c-1f83-424c-878a-8b7e472bb6f0@molgen.mpg.de>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Sat, 27 Jan 2024 20:10:30 +0900
Message-ID: <CADFiAcKJyZPDbbLoH11OpaLA5+ny-QmakN5d3KvAO5A_zQbfAg@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706353841; x=1706958641; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lWD3Yu/iWduUcZjUVmjkV6YLZ0ZkiCzd01DXVfzdL0o=;
 b=hjxPYAR9/WUPlORbuCBtO6rUxZyIQ0ro2N8AYrQ1zw2XZCAsrXzkAobiO4Gu6JS0Wn
 utOqc+BRWnUi2z1z7fwbPPD7iyFEhK3AvcuP0tyz4D+jxjl9VDt0J6ULXMvlIEOVTZpc
 HpXp/JUqEtJDCeV+5b/gyNMAEGrBslXEys5f0vdAsuHYEbXD0BvTSpg9dwX1mZKdaHUi
 7oym+J3YWpsgzJc3LYI3tiMaEPo/o98+a/BJdCrDL/+tGYQsPpAwD69WhshIUX1DFSZK
 jL/Y/6WR7grPQHBfpYrReJEHD+8yCxrIiQSzBHQ1e0KDNhfPCYNm+4/2XdXjTaIDF+dB
 /4Fw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=hjxPYAR9
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ethtool: ice: Support for
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

Hi Paul-san

> This patch was sent at least four(?) times to the mailing list.

Oh, I apologize for that. I had sent it several times due to issues
caught by the CI.
I wasn't aware of the proper etiquette, so your guidance is much appreciate=
d!
I will tag it as `[PATCH net-next v3 RESENT]` next time.

> Should you sent another iteration, please do not break lines, just becaus=
e a sentence ends, and please add a blank line between paragraphs.

Understood. I will make sure to do that!

Takeru

2024=E5=B9=B41=E6=9C=8826=E6=97=A5(=E9=87=91) 20:12 Paul Menzel <pmenzel@mo=
lgen.mpg.de>:
>
> Dear Takeru,
>
>
> This patch was sent at least four(?) times to the mailing list. Could
> you please sent a patch tagged with [RESENT] or a v4, so there won=E2=80=
=99t be
> several replies to different threads.
>
> One nit below:
>
> Am 26.01.24 um 05:52 schrieb Takeru Hayasaka:
> > This is a patch that enables RSS functionality for GTP packets using
> > ethtool.
> > A user can include her TEID and make RSS work for GTP-U over IPv4 by
> > doing the following:
> > `ethtool -N ens3 rx-flow-hash gtpu4 sde`
> > In addition to gtpu(4|6), we now support gtpc(4|6),gtpc(4|6)t,gtpu(4|6)=
e,
> > gtpu(4|6)u, and gtpu(4|6)d.
>
> Should you sent another iteration, please do not break lines, just
> because a sentence ends, and please add a blank line between paragraphs.
>
> [=E2=80=A6]
>
>
> Kind regards,
>
> Paul
