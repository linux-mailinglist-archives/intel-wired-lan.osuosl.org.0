Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D5F53B442
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jun 2022 09:21:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5987C60EC4;
	Thu,  2 Jun 2022 07:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2hncW8kR0o2L; Thu,  2 Jun 2022 07:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 555D960BE8;
	Thu,  2 Jun 2022 07:21:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2B621BF855
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 07:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A005A60BE8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 07:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dQ9GaYbqeZLG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jun 2022 07:21:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E818C60BE1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 07:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654154476;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kMXeZa55yzqCMGHPdIwBSHL+7b7S1Sm78FTwGhARqpc=;
 b=ep5rAe77EBFGctH85nYRT9Z/0EKmiAWdwFj+wSv/Ha6UpansfEZB1/njH9+f3bUJ0/6utu
 3jfbXNMUSyt28Ze+MGn1LPkHqKYs28DyHkY09nO1mYLqX3SNi0aMPFx6/yOecIcrNjJ/Yy
 N8RyO1KMA1MSH5XXRq1KxXQDA/5Wpyk=
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com
 [209.85.128.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-660-W2U8PwOANtCBTxr5zFiNWw-1; Thu, 02 Jun 2022 03:21:15 -0400
X-MC-Unique: W2U8PwOANtCBTxr5zFiNWw-1
Received: by mail-yw1-f198.google.com with SMTP id
 00721157ae682-30c9a01d1c5so35854857b3.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jun 2022 00:21:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kMXeZa55yzqCMGHPdIwBSHL+7b7S1Sm78FTwGhARqpc=;
 b=Mc1GV8L5j7VYM3Ry+/RiznsAkmQmeqvxy7ws8IX15JBSf0JBDXoQHSwVEe3N24rbA/
 7la3nf0N5Bu07NRkm39U3qm8ICJVhFFOMluxzyK2fej/+BztXyD3bDT4Clsy0QuBFiPJ
 67N4Ol3ZDHYMAbwc8gnwTizgLESQw42gOoYyrCDvvX3hLNwpGtS2B8z+UYxlCjDaM3u+
 w3UCyn/gZfhzkeQJ/8bw8F+BIGNG2koxqF1FS1f5jm1uM101t3QkpJbTioMmivHr2sf5
 dSiztlkIAGktIoLGTOSrh3hPxu3mtH8SxKzqTia/pZ7qSnXL6Jevp9e++bz5mZK9OgDb
 C7sQ==
X-Gm-Message-State: AOAM531D3u+QzME4VkxoR1F8g5KYIERf32gl5OwX/mv2j8DgyQEk9W5+
 scJOTUO2hcU+geV37gLIop+xExtDpnSb3vD+4HI6FvkdnGphPTXo5P56uVamf92MboLa3l2MBlg
 UxZr6ttAbpYX/hVr+SUlDYxfF3jxVia/QPpbvJ6TSbN7AZA==
X-Received: by 2002:a81:1744:0:b0:30c:a2af:f85c with SMTP id
 65-20020a811744000000b0030ca2aff85cmr3848583ywx.434.1654154474484; 
 Thu, 02 Jun 2022 00:21:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyU1HRu6zVNSwqZmJbSgGmj9mZY4Ev6W8AmJrS1M5zeoWypwKdGaVDSgrBjUgIYf369bAyFdyD80pJN3tfKSJE=
X-Received: by 2002:a81:1744:0:b0:30c:a2af:f85c with SMTP id
 65-20020a811744000000b0030ca2aff85cmr3848576ywx.434.1654154474271; Thu, 02
 Jun 2022 00:21:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220531131818.3411-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220531131818.3411-1-mateusz.palczewski@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 2 Jun 2022 09:21:03 +0200
Message-ID: <CADEbmW3mUQhZjDJKgn4SXH-_+ou_HGQ9z23FLvkzvd=MLMYNYA@mail.gmail.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mschmidt@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 0/2] ice: Fix memory corruption
 in VF driver
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============2967256850434405716=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2967256850434405716==
Content-Type: multipart/alternative; boundary="000000000000d7cbb105e071d9f8"

--000000000000d7cbb105e071d9f8
Content-Type: text/plain; charset="UTF-8"

On Tue, May 31, 2022 at 3:22 PM Mateusz Palczewski <
mateusz.palczewski@intel.com> wrote:

> Disable VF queues, when VF requests reset. Add error handling for
> VIRTCHNL_OP_CONFIG_VSI_QUEUES handler. Without this patch VF driver
> could experience memory corruption, which lead to crash:
> BUG: unable to handle kernel paging request at 00001b9780003237
>
> Przemyslaw Patynowski (2):
>   ice: Add error handling for queue config fail
>   ice: Fix memory corruption in VF driver
>
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  5 ++
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 53 +++++++++----------
>  2 files changed, 31 insertions(+), 27 deletions(-)
>

The bug that this is fixing is a long-standing bug reported by Red Hat QE.
It's been giving us (RH and Intel) many headaches. Red Hat QE tested a
previous version of the patchset (with only a minor difference - it did not
have the check for a NULL vsi in patch 2) and confirmed it fixed the bug.
Michal

--000000000000d7cbb105e071d9f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, May 31, 2022 at 3:22 PM Mateusz Palczewski &lt;<a href=3D"ma=
ilto:mateusz.palczewski@intel.com" target=3D"_blank">mateusz.palczewski@int=
el.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">Disable VF queues, when VF requests reset. Add error handling for<br>
VIRTCHNL_OP_CONFIG_VSI_QUEUES handler. Without this patch VF driver<br>
could experience memory corruption, which lead to crash:<br>
BUG: unable to handle kernel paging request at 00001b9780003237<br>
<br>
Przemyslaw Patynowski (2):<br>
=C2=A0 ice: Add error handling for queue config fail<br>
=C2=A0 ice: Fix memory corruption in VF driver<br>
<br>
=C2=A0drivers/net/ethernet/intel/ice/ice_vf_lib.c=C2=A0 =C2=A0|=C2=A0 5 ++<=
br>
=C2=A0drivers/net/ethernet/intel/ice/ice_virtchnl.c | 53 +++++++++---------=
-<br>
=C2=A02 files changed, 31 insertions(+), 27 deletions(-)<br></blockquote><d=
iv><br></div><div>The bug that this is fixing is a long-standing bug report=
ed by Red Hat QE. It&#39;s been giving us (RH and Intel) many headaches. Re=
d Hat QE tested a previous version of the patchset (with only a minor diffe=
rence - it did not have the check for a NULL vsi in patch 2)  and confirmed=
 it fixed the bug.</div><div>Michal<br></div></div></div>

--000000000000d7cbb105e071d9f8--


--===============2967256850434405716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2967256850434405716==--

