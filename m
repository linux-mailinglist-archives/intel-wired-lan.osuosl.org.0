Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A358AE92E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 16:10:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8954460B02;
	Tue, 23 Apr 2024 14:10:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 20hUhjBllvNC; Tue, 23 Apr 2024 14:10:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 927C960AF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713881424;
	bh=57fbJa8Cqm06V2ZeHJvielxUFsz8TmnwQIW1J9QeY04=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wgcm7boMXJwqOkn+Gw8OTxAl6+acamxbHnpvN4NyFPDNKmdE0KUdKx+DsNX1gL+Tj
	 rNkWAGU1RLgfgtfb1b8TUKfIHC9qw4Pr/3rlQQx7XCBlWXQgmTCfYpYkgIpVfoaca/
	 nrOVSC3kK7o2htille1kCu0LcnzXI9UVHs8bHBp/f18dJgCQeoSVJG1zlX/8xNlTIP
	 vo94wh1wApLuZXVcP5/GUNEwPATUGeKFXbypjACNQ4n2A+ubgXTuqSRI3ixDoNqOTB
	 N1NDpiFUggkC5Zss/2HX5gX2FKR41EdRsLHc+SwJ6TULUZVZI+D+Z25sM6vQ8jSWM0
	 +d6S7y/kZU1TQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 927C960AF8;
	Tue, 23 Apr 2024 14:10:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 432201BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:10:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B12C40137
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:10:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hm1ha0HIMEJp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 14:10:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com;
 envelope-from=edumazet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EABA640330
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EABA640330
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EABA640330
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:10:18 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-571b5fba660so15145a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 07:10:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713881417; x=1714486217;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=57fbJa8Cqm06V2ZeHJvielxUFsz8TmnwQIW1J9QeY04=;
 b=F7NtEYmUzTKuyKFxfzpSkmtPLE2X61km3M+vZreB5xn1WYkljHUpAGNTxDA9j3CEaV
 LZm+wQ+TlRhjoE/OCOIFjWpjLglDQhY3fAGKFhjWFDw7knuLwxCO+Ao+ziBif5wzuplz
 Kr1MXY7KHrVQ5383cjSgDA0ZUKA/j09eETocL+2e6+ub7x/kDN/PIfZZ0btkA7rh4kAL
 fsWMYeoQFzORnsDMIKn3mRUtsOKGNh0uMYOrFnZcf+OTs2LCCx3tGrJpvE476f5kBCO8
 8JmMxJdyDw2gszR58GLpOD6TpXVWHwS3vZCsogSny0SiJJVpb4NGRz47L649hS2kJy8L
 WI/g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVfWqrooyE4zc+Rsl0deUgFhZhaajSVwBI/0oSjIL5F3MAwqosFsHbKQUfl8SloZgrfCLMqQ09FnnSsOTBWAxZOerz62+JeHbbpjaAygFl4JQ==
X-Gm-Message-State: AOJu0Yx70aIHcQv7UxyTVpEuxwM2uBaUrS3N3a2V+H1Ak9bSFikOZsu4
 fnAonraDA37caOdDKs0XJUIPSNs4TrfsCctNaJEGmnmJBandwlfa6qeX3jON7ERIKtD8au05CvP
 dzjK2vgNAKJgPYH0T4b/J6GfSwbxzHkYk4WUt/8pbxUn/wbGbD9tX
X-Google-Smtp-Source: AGHT+IFKMJbkXvNVepKk5DFhQD95LPFER6KYKwveNEskM71CTHSLjko+K/mmIBKYtON3Ufe0XHQHKGyKgRlS3i13O24=
X-Received: by 2002:aa7:df98:0:b0:572:2611:6f38 with SMTP id
 b24-20020aa7df98000000b0057226116f38mr29594edy.2.1713881416313; Tue, 23 Apr
 2024 07:10:16 -0700 (PDT)
MIME-Version: 1.0
References: <20240423134731.918157-1-vinschen@redhat.com>
In-Reply-To: <20240423134731.918157-1-vinschen@redhat.com>
From: Eric Dumazet <edumazet@google.com>
Date: Tue, 23 Apr 2024 16:10:05 +0200
Message-ID: <CANn89iKv1J3AS3rEmEhFq5McHmM+L=32pWg3Wj4_drsdKUx77A@mail.gmail.com>
To: Corinna Vinschen <vinschen@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1713881417; x=1714486217; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=57fbJa8Cqm06V2ZeHJvielxUFsz8TmnwQIW1J9QeY04=;
 b=reVy4WDCF1bby+ZtRcHfNkjnq2O2A5kogtQL+L4ZbJs2TrOqoJ44I0TfX4V2bKJS2M
 ILYJCW+MhjGjKuekTnYcjrck+cj+JzDMfuhLwlFqVLyVOs6crjfVklxScxda05OWVjeB
 w6VjtMW+5Plgle2GisfFO601dukdiom7fkf4sxesOHBqJ5+JBgecxi2awS3gvkAnEsVU
 3prSb0lrxWoMMCCJ8wcsSRpvhsswLOK/Ny5Jm4/Pl77BdoVdaztRsN21e/k+w7eGvY43
 i9gqoAh4kSlF5JoEg0xzCpjBjz3Qfepyc37MCHPTqEBm7KKECGmvvjOipuiM1Bjg2sHS
 ayoA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=reVy4WDC
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: cope with large
 MAX_SKB_FRAGS
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
Cc: Jason Xing <kerneljasonxing@gmail.com>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, linux-kernel@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 23, 2024 at 3:47=E2=80=AFPM Corinna Vinschen <vinschen@redhat.c=
om> wrote:
>
> From: Paolo Abeni <pabeni@redhat.com>
>
> Sabrina reports that the igb driver does not cope well with large
> MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
> corruption on TX.
>
> An easy reproducer is to run ssh to connect to the machine.  With
> MAX_SKB_FRAGS=3D17 it works, with MAX_SKB_FRAGS=3D45 it fails.
>
> The root cause of the issue is that the driver does not take into
> account properly the (possibly large) shared info size when selecting
> the ring layout, and will try to fit two packets inside the same 4K
> page even when the 1st fraglist will trump over the 2nd head.
>
> Address the issue forcing the driver to fit a single packet per page,
> leaving there enough room to store the (currently) largest possible
> skb_shared_info.
>
> Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB_FRA=
G")
> Reported-by: Jan Tluka <jtluka@redhat.com>
> Reported-by: Jirka Hladky <jhladky@redhat.com>
> Reported-by: Sabrina Dubroca <sd@queasysnail.net>
> Tested-by: Sabrina Dubroca <sd@queasysnail.net>
> Tested-by: Corinna Vinschen <vinschen@redhat.com>
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> ---
> v2: fix subject, add a simple reproducer
>
>  drivers/net/ethernet/intel/igb/igb_main.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethe=
rnet/intel/igb/igb_main.c
> index a3f100769e39..22fb2c322bca 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4833,6 +4833,7 @@ static void igb_set_rx_buffer_len(struct igb_adapte=
r *adapter,
>
>  #if (PAGE_SIZE < 8192)
>         if (adapter->max_frame_size > IGB_MAX_FRAME_BUILD_SKB ||
> +           SKB_HEAD_ALIGN(adapter->max_frame_size) > (PAGE_SIZE / 2) ||

I wonder if adding IGB_SKB_PAD would be needed ?

adapter->max_frame_size does not seem to include it.

I would try using all mtus between 1200 and 1280 to make sure this works.

Thanks !

>             rd32(E1000_RCTL) & E1000_RCTL_SBP)
>                 set_ring_uses_large_buffer(rx_ring);
>  #endif
> --
> 2.44.0
>
