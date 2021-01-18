Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E623D2F9A70
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 08:24:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 37AC92010B;
	Mon, 18 Jan 2021 07:24:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ivmu0nV2dAPE; Mon, 18 Jan 2021 07:24:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BAAF72014B;
	Mon, 18 Jan 2021 07:24:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6603F1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 07:24:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5F91F84808
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 07:24:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WdXVI9Jc75Lq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 07:24:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 33E99845D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 07:24:23 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id t6so8166141plq.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jan 2021 23:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=96HWQZJ4JBJxKYas/QXiYTwz0zB+Bpmae7wlXUCw2Ic=;
 b=cSOiQpjHxWGFt/I65wRvVLxfLdjjgx/31D+eEKkYld8WTYl2oNe8H1n0sZeNXCkH8W
 xApe3F+iohMm3/JlT/A8az2aV/GdZWmstekv9kJHTDztjxFdwWw4oYU9Jafb7HRA5zr9
 SngikQhMniTyXovVMmX3sWylJP/qaANK4w9Lj6Eq7+X4s9uAf9wrNuXJgUF4bdIqW7VH
 qfiBO+lgdrjLURpsG4ZRuMTc95epUrzwDc52zbupOIkDZU4fMlDdGDPuonfl6d+lKlj4
 I6a46kYx3J5+Z8Ofjg85XEWafIVvAorfkEzeCET0VVWX/gEF+M5iw6NH7jL0TihdKl7r
 PuwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=96HWQZJ4JBJxKYas/QXiYTwz0zB+Bpmae7wlXUCw2Ic=;
 b=mekyve8FAik6jY2+pWmVNwDbjFmXVpEq0lbv9CydLRFAMg95TgszVZrdJ/I+GFNrZZ
 xOjsX3nxhvcek1J0KALDx5azIpwAwirzzwwr4B/JKXpwL6OA+PbT9nzxbsACgvqyDYp0
 gQEBgrxGPP50RuLii9zbwDei01Fs+k+BJCOjdNc7cjCeBCMB1TkybqVTzDdm91skdlO7
 Sdw5jcYknY6F8LXtLN3+v9p8P+MSJ4cVf8onVDbs0bYUMrtqZiI2shemeCNbLh9W7oc/
 4xuZnK8txoYKnDo+QuDJuljdf2W1K1RxhMJkHRIXUZ+KT5kZzYfFY51gfptHvVx0lIqX
 p6jg==
X-Gm-Message-State: AOAM530A3PiEHDfDVOM/WOziMd+KQmo0eSIypXpNn43z9PEZvsbEFlAM
 2lCN/l0AS4Kq90GJacwgaVcFbTkiZ3nRkm+ojTQ=
X-Google-Smtp-Source: ABdhPJxva6lNOuxx2Cr3KnS3WOlsOMJakeat5WOCdr2Fk99k+Okws29n/VrV8YYcl2npYcQllYdSuRtnolXlDGYahJw=
X-Received: by 2002:a17:90a:db96:: with SMTP id
 h22mr24996905pjv.204.1610954662795; 
 Sun, 17 Jan 2021 23:24:22 -0800 (PST)
MIME-Version: 1.0
References: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
In-Reply-To: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Mon, 18 Jan 2021 08:24:11 +0100
Message-ID: <CAJ8uoz01EwDoK15pHpi77YzO+x9REXARYPM_ELgqrcPd7k-2dw@mail.gmail.com>
To: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/4] i40e: small improvements
 on XDP path
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
Cc: Network Development <netdev@vger.kernel.org>, edwin.verplanke@intel.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: multipart/mixed; boundary="===============3362652727558229729=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3362652727558229729==
Content-Type: multipart/alternative; boundary="0000000000006cde2305b9279c8e"

--0000000000006cde2305b9279c8e
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 14, 2021 at 3:34 PM Cristian Dumitrescu <
cristian.dumitrescu@intel.com> wrote:

> This patchset introduces some small and straightforward improvements
> to the Intel i40e driver XDP path. Each improvement is fully described
> in its associated patch.
>
> Cristian Dumitrescu (4):
>   i40e: remove unnecessary memory writes of the next to clean pointer
>   i40e: remove unnecessary cleaned_count updates
>   i40e: remove the redundant buffer info updates
>   i40: consolidate handling of XDP program actions
>
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 149 +++++++++++----------
>  1 file changed, 79 insertions(+), 70 deletions(-)
>
> --
> 2.25.1
>
>
Thank you for these clean ups Cristian!

For the series:

Acked-by: Magnus Karlsson <magnus.karlsson@intel.com>

--0000000000006cde2305b9279c8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 14, 2021 at 3:34 PM Crist=
ian Dumitrescu &lt;<a href=3D"mailto:cristian.dumitrescu@intel.com">cristia=
n.dumitrescu@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">This patchset introduces some small and straightforwa=
rd improvements<br>
to the Intel i40e driver XDP path. Each improvement is fully described<br>
in its associated patch.<br>
<br>
Cristian Dumitrescu (4):<br>
=C2=A0 i40e: remove unnecessary memory writes of the next to clean pointer<=
br>
=C2=A0 i40e: remove unnecessary cleaned_count updates<br>
=C2=A0 i40e: remove the redundant buffer info updates<br>
=C2=A0 i40: consolidate handling of XDP program actions<br>
<br>
=C2=A0drivers/net/ethernet/intel/i40e/i40e_xsk.c | 149 +++++++++++---------=
-<br>
=C2=A01 file changed, 79 insertions(+), 70 deletions(-)<br>
<br>
-- <br>
2.25.1<br>
<br></blockquote><div><br></div><div>Thank you for these clean ups Cristian=
!</div><div><br></div><div>For the series:</div><div><br></div>Acked-by: Ma=
gnus Karlsson &lt;<a href=3D"mailto:magnus.karlsson@intel.com">magnus.karls=
son@intel.com</a>&gt;<br><div>=C2=A0</div></div></div>

--0000000000006cde2305b9279c8e--

--===============3362652727558229729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3362652727558229729==--
