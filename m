Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67178B09233
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 18:50:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E34F8031C;
	Thu, 17 Jul 2025 16:50:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9fLgz6XaRTca; Thu, 17 Jul 2025 16:50:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5943D80246
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752771016;
	bh=O9AMbwwWld/6Yy3pcC72gJCfdHpZ0d8jOe3WOYIplHk=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cAJ19QYUN/+MZWxragessToX0y1jg/ncuYKv25n4/v/zEwGbU7lANh8d2VxlJMpKO
	 yOQAevtWsb7Gq91CFPCrZxEKljQh0YMNSwBv90SlbACwlwi5MryvqBIJErKHleutgA
	 8gACqUuu8yfs0E+kxnaPCDbCkicSYKDNo5REDTqIud13rSZqDpgsbtgjsnRIPXPDJN
	 Z+TkIYyMFgJC1FJqUvycZlD7yCt+vWJnUvm2Y9JzeNNA1nqhnna5sEQP0TeS9OAqBw
	 u0/FtaLNaV65gr/H7Vy6kasEijDwWsC5wwYV8XWn43QDRM6Nl0u8xKY0IODOSH29BB
	 z/7BGEsneABSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5943D80246;
	Thu, 17 Jul 2025 16:50:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EB22A59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 98E858031C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:46:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u4Zhi3LpESLr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 16:46:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=dechen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6CA8A802EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CA8A802EE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CA8A802EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:46:46 +0000 (UTC)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-195-QydtLK2PMUSlrh9-tN_ZhQ-1; Thu, 17 Jul 2025 12:46:41 -0400
X-MC-Unique: QydtLK2PMUSlrh9-tN_ZhQ-1
X-Mimecast-MFC-AGG-ID: QydtLK2PMUSlrh9-tN_ZhQ_1752770800
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-ae0ad1a98b6so16223766b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:46:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752770800; x=1753375600;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=O9AMbwwWld/6Yy3pcC72gJCfdHpZ0d8jOe3WOYIplHk=;
 b=M6sMPiAoSFPu73oRMonYWDEiwDdfCO6MX+zwNxadpCozFiZgSLCGXHFFrscmZeXNDE
 d9GksQPcfd8BpVRJSSVdMABhwIdqNLjiZZQMK2gyoBsjnchSn2wQs2x8fcdAJR504l67
 jJYFzdvSguVRtAXm3H4LP1OelefQGq7Q4VSgtMo2CwSpnNfqyDfmya3jXKGCNHr8lwfN
 J1Y6DO0TWtNlR5XZ8bY+01wy+6sBaCTNImNRGcIWTfzE1hdEqnHEertXmvLnpUGrh+9T
 NNKVwFPTryFCcGcif3jw9RbqdhnDn8T4EPQSM68yOyIeDlwmnjfQyaw/rPns2X51CezR
 0dHw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJxKl3PCADEnJYwdx8+Y0TmHl5Frsn0233NRBB/k9QhlK3RS/qa/bMOk4ZmxqZnUvi1uTjzYlLg/g5K/9snOg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx1yD2iiQgLSiwEGvCUZTT443/VQvQL6LCH+6KadDB9rEjiT1WP
 7Xsz5Ze+wRuYSYuAqvvitR67VQqlG153scja6M6uicuBgNkWcM4yn7tY0asktoPDfOcMP10cPzQ
 XEU36B6t1E34pfYcreU2pImkNgV/r1t+fFoegjp361P0QRvMHW6/VEdtx7+PxMTOENYKs04LfD4
 pRpz+ftYMfOwaHRiCjKMA9aTBEnXpXJeCA3qF2rV0GGsNMIQ==
X-Gm-Gg: ASbGncvYp4JJaFaKxckgb12nxC/GvdCLptG7TWKxSQACFfcZcHUFFatQHjYslIyz1or
 t6Cn5iAtH+sVERn1k7AiVwbkWl+SJOwT0yxtZMxEh4UkSQnsmJAtRv5E+nRHVb6BVW7QGh/qamW
 du41HVkTm5gYfX0YIcP/M=
X-Received: by 2002:a17:907:1b03:b0:ade:328a:95d1 with SMTP id
 a640c23a62f3a-ae9c9b21003mr288974766b.10.1752770799805; 
 Thu, 17 Jul 2025 09:46:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTjW4ce8hmC2NksUhSz3E2eZCErP36MU2mJYoolB4YhcKzFvYImUMHIqL+5v0hiRtXUVjIRV0QBxZRa4ZQFNg=
X-Received: by 2002:a17:907:1b03:b0:ade:328a:95d1 with SMTP id
 a640c23a62f3a-ae9c9b21003mr288973466b.10.1752770799260; Thu, 17 Jul 2025
 09:46:39 -0700 (PDT)
MIME-Version: 1.0
References: <20250618195240.95454-1-dechen@redhat.com>
In-Reply-To: <20250618195240.95454-1-dechen@redhat.com>
From: Dennis Chen <dechen@redhat.com>
Date: Thu, 17 Jul 2025 12:46:28 -0400
X-Gm-Features: Ac12FXzZHc4AoPSdI9mF2kRfJlEnVKTfV5Go-utLaKJ_FKfblhXqL8AuOc8dGWM
Message-ID: <CAOftDsEnyXZa8arEGL5pRa-0RvfwS5Tv7eb-uhOzCUAZcUxoAQ@mail.gmail.com>
To: netdev@vger.kernel.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: dstPbNOAl9OmGO2Nc_O_GmaKnDqDNGgIZqmdh4lEYjk_1752770800
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1752770804;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=O9AMbwwWld/6Yy3pcC72gJCfdHpZ0d8jOe3WOYIplHk=;
 b=Ev1PejrCU7YRn3u5tTaeR8Nn2SQqQ5fQ6Pmo2eC5D7fR0Cz6wn5cLFv0uTwST1H0f2YC5O
 T2BdiarYm8NUgIxgCSuuSpVPJTC5b9cjtv8jNhVXp1Xw8dZpTSWnOJjxKogZHyE6YCLGIS
 nzkkzZTZ/mcul0ohOzkVeVl4wgUxqxk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Ev1PejrC
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: report VF tx_dropped with
 tx_errors instead of tx_discards
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 18, 2025 at 3:52=E2=80=AFPM Dennis Chen <dechen@redhat.com> wro=
te:
>
> Currently the tx_dropped field in VF stats is not updated correctly
> when reading stats from the PF. This is because it reads from
> i40e_eth_stats.tx_discards which seems to be unused for per VSI stats,
> as it is not updated by i40e_update_eth_stats() and the corresponding
> register, GLV_TDPC, is not implemented[1].
>
> Use i40e_eth_stats.tx_errors instead, which is actually updated by
> i40e_update_eth_stats() by reading from GLV_TEPC.
>
> To test, create a VF and try to send bad packets through it:
>
> $ echo 1 > /sys/class/net/enp2s0f0/device/sriov_numvfs
> $ cat test.py
> from scapy.all import *
>
> vlan_pkt =3D Ether(dst=3D"ff:ff:ff:ff:ff:ff") / Dot1Q(vlan=3D999) / IP(ds=
t=3D"192.168.0.1") / ICMP()
> ttl_pkt =3D IP(dst=3D"8.8.8.8", ttl=3D0) / ICMP()
>
> print("Send packet with bad VLAN tag")
> sendp(vlan_pkt, iface=3D"enp2s0f0v0")
> print("Send packet with TTL=3D0")
> sendp(ttl_pkt, iface=3D"enp2s0f0v0")
> $ ip -s link show dev enp2s0f0
> 16: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state U=
P mode DEFAULT group default qlen 1000
>     link/ether 3c:ec:ef:b7:e0:ac brd ff:ff:ff:ff:ff:ff
>     RX:  bytes packets errors dropped  missed   mcast
>              0       0      0       0       0       0
>     TX:  bytes packets errors dropped carrier collsns
>              0       0      0       0       0       0
>     vf 0     link/ether e2:c6:fd:c1:1e:92 brd ff:ff:ff:ff:ff:ff, spoof ch=
ecking on, link-state auto, trust off
>     RX: bytes  packets  mcast   bcast   dropped
>              0        0       0       0        0
>     TX: bytes  packets   dropped
>              0        0        0
> $ python test.py
> Send packet with bad VLAN tag
> .
> Sent 1 packets.
> Send packet with TTL=3D0
> .
> Sent 1 packets.
> $ ip -s link show dev enp2s0f0
> 16: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state U=
P mode DEFAULT group default qlen 1000
>     link/ether 3c:ec:ef:b7:e0:ac brd ff:ff:ff:ff:ff:ff
>     RX:  bytes packets errors dropped  missed   mcast
>              0       0      0       0       0       0
>     TX:  bytes packets errors dropped carrier collsns
>              0       0      0       0       0       0
>     vf 0     link/ether e2:c6:fd:c1:1e:92 brd ff:ff:ff:ff:ff:ff, spoof ch=
ecking on, link-state auto, trust off
>     RX: bytes  packets  mcast   bcast   dropped
>              0        0       0       0        0
>     TX: bytes  packets   dropped
>              0        0        0
>
> A packet with non-existent VLAN tag and a packet with TTL =3D 0 are sent,
> but tx_dropped is not incremented.
>
> After patch:
>
> $ ip -s link show dev enp2s0f0
> 19: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state U=
P mode DEFAULT group default qlen 1000
>     link/ether 3c:ec:ef:b7:e0:ac brd ff:ff:ff:ff:ff:ff
>     RX:  bytes packets errors dropped  missed   mcast
>              0       0      0       0       0       0
>     TX:  bytes packets errors dropped carrier collsns
>              0       0      0       0       0       0
>     vf 0     link/ether 4a:b7:3d:37:f7:56 brd ff:ff:ff:ff:ff:ff, spoof ch=
ecking on, link-state auto, trust off
>     RX: bytes  packets  mcast   bcast   dropped
>              0        0       0       0        0
>     TX: bytes  packets   dropped
>              0        0        2
>
> Fixes: dc645daef9af5bcbd9c ("i40e: implement VF stats NDO")
> Signed-off-by: Dennis Chen <dechen@redhat.com>
>     Link: https://www.intel.com/content/www/us/en/content-details/596333/=
intel-ethernet-controller-x710-tm4-at2-carlsville-datasheet.html
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers=
/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 88e6bef69342..2dbe38eb9494 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -5006,7 +5006,7 @@ int i40e_get_vf_stats(struct net_device *netdev, in=
t vf_id,
>         vf_stats->broadcast  =3D stats->rx_broadcast;
>         vf_stats->multicast  =3D stats->rx_multicast;
>         vf_stats->rx_dropped =3D stats->rx_discards + stats->rx_discards_=
other;
> -       vf_stats->tx_dropped =3D stats->tx_discards;
> +       vf_stats->tx_dropped =3D stats->tx_errors;
>
>         return 0;
>  }
> --
> 2.49.0
>
Hello,

Any update here?


Dennis Chen

