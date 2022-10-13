Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4095FDD1F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Oct 2022 17:26:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 435F861110;
	Thu, 13 Oct 2022 15:26:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 435F861110
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665674763;
	bh=QnbE3/vHQmBJt2rHDVFZ8IgG9BKCFbIOwKaq/La+9ps=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=idHNe7TBlPd3VnGdIb4L6L15JqMPY1R/o7XFtx7hWUDD0BgUhseMd1JpttWeUYIpl
	 DBYz05hgeqxYKZv1wwKE+TRwYUNe4vaGyr6PsDgOZ9j6bcNwb/ALqsHTXPARqjcpKI
	 x6w+9bRHffKWT+aWnH4wKgeC+tn5fVcS+y6EgThKQ9NEGhpGyrt3r2kgje7cD48VTX
	 cwKHKS9NB73nVVqya+QROvYUj1rjSOgIOi8BGYUUEK5PuqAMZJgJ+0uE+VsCb4vTER
	 xuTbkLFXC+kQa4Sw7Wh0o96zyWPL05ejGR0EdP1+RN3Mft7VYUgw1kh80jYF2plLs0
	 EI6cMF3oc19HA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Csv-e06-ECH; Thu, 13 Oct 2022 15:26:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04FBD61108;
	Thu, 13 Oct 2022 15:26:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04FBD61108
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5F191BF315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 15:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AFBE140499
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 15:25:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFBE140499
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YaIbuOc9e9Jc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Oct 2022 15:25:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 724244048F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 724244048F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 15:25:55 +0000 (UTC)
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com
 [209.85.217.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-65-MLP3XujJNZS7BfuZCVjkeQ-1; Thu, 13 Oct 2022 11:25:52 -0400
X-MC-Unique: MLP3XujJNZS7BfuZCVjkeQ-1
Received: by mail-vs1-f71.google.com with SMTP id
 a126-20020a676684000000b003a6eeb4e8b7so472265vsc.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 08:25:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=mvBI4GDValuDX+rVRa9/6s6uhpQ2Ho67EnrZ5GH4xqQ=;
 b=ZtXfOd6/oqJ1CkoR6mML5Y7KAlp51/ZvB4Jza7UaELPwDE+3ipn2gfTsLl5JjRyyBY
 agxaSxZ2xPJevlmyK8Fb7L/x01abwiOJ4zZiY85R1uxTqawiJLw2BT85vnzDWHYdtJNz
 +ZQEN6tEyl4t9XCPHw9PQEesmy3z+MRD87ad7QCfRTuvTKwnwEJ+I2jcaFigdfmtjaI7
 2eJQdGAsZh5XlJtAQi5SPYxoHizZ3ZhujQDWEemUmzNxIEIA1uI4ehaQKeTANPkQmKYg
 M1aLhe0rQrACslR6DXeG3sj9L7MDg/+rpRzdqgMVRuzc88IHc8UJG1vQgOnZz4NrFa1+
 6lvg==
X-Gm-Message-State: ACrzQf0ZT2cZDJdBvaVQHbbDjFC0SEPNJ2D6LxsJo1yXJem9IK1cyUlt
 FREud+Oaput4+Ty2tsAZ4NoDaKFWFMR7QsflpiwWCPIbz5J0+jQ09ev1GZKcF5FWwIfveC06aUy
 DhRjd0xfpRpHXrkEsDJXZ+A7vPuPNKvPnBUSHxWxn5TlOXA==
X-Received: by 2002:a1f:2cc5:0:b0:3a2:80b5:ad63 with SMTP id
 s188-20020a1f2cc5000000b003a280b5ad63mr222133vks.5.1665674751275; 
 Thu, 13 Oct 2022 08:25:51 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5spYnFYimcZEftJp8SP+V7RAo3le3r3iSc5+IO+KrXzMtz9YybSjDjBpK0VkMb3UyFpFnFXg6ofe2TpGWeG/U=
X-Received: by 2002:a1f:2cc5:0:b0:3a2:80b5:ad63 with SMTP id
 s188-20020a1f2cc5000000b003a280b5ad63mr222115vks.5.1665674750983; Thu, 13 Oct
 2022 08:25:50 -0700 (PDT)
MIME-Version: 1.0
References: <20221012155535.666933-1-benjamin.mikailenko@intel.com>
In-Reply-To: <20221012155535.666933-1-benjamin.mikailenko@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 13 Oct 2022 17:25:40 +0200
Message-ID: <CADEbmW0wNym5TJiXeJ+zABb3a5eRvSdPZqWYnDwB6KnXUYK8nQ@mail.gmail.com>
To: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1665674753;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mvBI4GDValuDX+rVRa9/6s6uhpQ2Ho67EnrZ5GH4xqQ=;
 b=fJQeMqmj63ji+2IfW0g1QLpUzqeVCthunE0/rwr3OaSbcrJaMnUdNcDXb9mWrgJAbY4xDJ
 RR/YqYOMJC7CCXw3a2fg2sixwfCZrsOUkNCsNwK1I/auxGm3dzTBF8dLvz6YCY56uos0+A
 dgjTGMom9uEms6MZlVccdDPDSbQll1U=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=fJQeMqmj
Subject: Re: [Intel-wired-lan] [net, v1] ice: Fix l2-fwd-offload toggle crash
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============1061363403631260978=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1061363403631260978==
Content-Type: multipart/alternative; boundary="000000000000d8148005eaec1f04"

--000000000000d8148005eaec1f04
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 12, 2022 at 6:03 PM Benjamin Mikailenko <
benjamin.mikailenko@intel.com> wrote:

> Running netperf traffic and toggling l2-fwd-offload in quick succession
> caused the driver to crash.
>
> BUG: kernel NULL pointer dereference, address: 0000000000000020
> [  861.517803] #PF: supervisor read access in kernel mode
> [  861.517805] #PF: error_code(0x0000) - not-present page
> [  861.517808] PGD 0 P4D 0
> [  861.517811] Oops: 0000 [#1] PREEMPT SMP PTI
> [  861.517815] CPU: 60 PID: 16471 Comm: netperf Kdump: loaded Tainted: G S
> [  861.517818] Hardware name: Intel Corporation S2600WTT/S2600WTT, BIOS SE
> [  861.517820] RIP: 0010:ice_start_xmit+0xb0/0x1420 [ice]
>
> This crash would happen because during l2-fwd-offload configuration,
> ice_init_macvlan or ice_deinit_macvlan would temporarily work on Tx rings.
>

What are ice_init_macvlan and ice_deinit_macvlan? Are they function names?
I do not see such functions in the code.


> At the same time, ice_start_xmit would attempt to select the correct send
> buffer from Tx rings but reach a NULL pointer.
>
> Fix this by checking if ring exists before proceeding xmit. If ring does
> not exist, return NETDEV_TX_BUSY.
>

Isn't it still racy though?
Shouldn't rather whatever is fiddling with the rings make sure the Tx
queues are stopped first with netif_tx_stop_queue or similar?
Michal


> Fixes: 2b245cb29421 ("ice: Implement transmit and NAPI support")
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
> b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 086f0b3ab68d..96bc8fad39c0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -2405,6 +2405,8 @@ netdev_tx_t ice_start_xmit(struct sk_buff *skb,
> struct net_device *netdev)
>         struct ice_tx_ring *tx_ring;
>
>         tx_ring = vsi->tx_rings[skb->queue_mapping];
> +       if (!tx_ring)
> +               return NETDEV_TX_BUSY;
>
>         /* hardware can't handle really short frames, hardware padding
> works
>          * beyond this point
> --
> 2.34.3
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
>

--000000000000d8148005eaec1f04
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Oct 12, 2022 at 6:03 PM Benjamin Mikailenko &lt;<a href=3D"m=
ailto:benjamin.mikailenko@intel.com">benjamin.mikailenko@intel.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Running n=
etperf traffic and toggling l2-fwd-offload in quick succession<br>
caused the driver to crash.<br>
<br>
BUG: kernel NULL pointer dereference, address: 0000000000000020<br>
[=C2=A0 861.517803] #PF: supervisor read access in kernel mode<br>
[=C2=A0 861.517805] #PF: error_code(0x0000) - not-present page<br>
[=C2=A0 861.517808] PGD 0 P4D 0<br>
[=C2=A0 861.517811] Oops: 0000 [#1] PREEMPT SMP PTI<br>
[=C2=A0 861.517815] CPU: 60 PID: 16471 Comm: netperf Kdump: loaded Tainted:=
 G S<br>
[=C2=A0 861.517818] Hardware name: Intel Corporation S2600WTT/S2600WTT, BIO=
S SE<br>
[=C2=A0 861.517820] RIP: 0010:ice_start_xmit+0xb0/0x1420 [ice]<br>
<br>
This crash would happen because during l2-fwd-offload configuration,<br>
ice_init_macvlan or ice_deinit_macvlan would temporarily work on Tx rings.<=
br></blockquote><div><br></div><div>What are ice_init_macvlan and ice_deini=
t_macvlan? Are they function names? I do not see such functions in the code=
.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
At the same time, ice_start_xmit would attempt to select the correct send<b=
r>
buffer from Tx rings but reach a NULL pointer.<br>
<br>
Fix this by checking if ring exists before proceeding xmit. If ring does<br=
>
not exist, return NETDEV_TX_BUSY.<br></blockquote><div><br></div><div>Isn&#=
39;t it still racy though?<br></div><div>Shouldn&#39;t rather whatever is f=
iddling with the rings make sure the Tx queues are stopped first with netif=
_tx_stop_queue or similar?</div><div>Michal<br></div><div>=C2=A0<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
Fixes: 2b245cb29421 (&quot;ice: Implement transmit and NAPI support&quot;)<=
br>
Signed-off-by: Benjamin Mikailenko &lt;<a href=3D"mailto:benjamin.mikailenk=
o@intel.com" target=3D"_blank">benjamin.mikailenko@intel.com</a>&gt;<br>
---<br>
=C2=A0drivers/net/ethernet/intel/ice/ice_txrx.c | 2 ++<br>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethern=
et/intel/ice/ice_txrx.c<br>
index 086f0b3ab68d..96bc8fad39c0 100644<br>
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c<br>
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c<br>
@@ -2405,6 +2405,8 @@ netdev_tx_t ice_start_xmit(struct sk_buff *skb, struc=
t net_device *netdev)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ice_tx_ring *tx_ring;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_ring =3D vsi-&gt;tx_rings[skb-&gt;queue_mapp=
ing];<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!tx_ring)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NETDEV_TX_BU=
SY;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* hardware can&#39;t handle really short frame=
s, hardware padding works<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* beyond this point<br>
-- <br>
2.34.3<br>
<br>
_______________________________________________<br>
Intel-wired-lan mailing list<br>
<a href=3D"mailto:Intel-wired-lan@osuosl.org" target=3D"_blank">Intel-wired=
-lan@osuosl.org</a><br>
<a href=3D"https://lists.osuosl.org/mailman/listinfo/intel-wired-lan" rel=
=3D"noreferrer" target=3D"_blank">https://lists.osuosl.org/mailman/listinfo=
/intel-wired-lan</a><br>
<br>
</blockquote></div></div>

--000000000000d8148005eaec1f04--


--===============1061363403631260978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1061363403631260978==--

