Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E474B23C60
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 01:39:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47AF56074C;
	Tue, 12 Aug 2025 23:39:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DsMAluIQgnT0; Tue, 12 Aug 2025 23:39:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CE566071B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755041973;
	bh=lDa4RY/A4zLXKrwMbGuWS/YhifwvrF5CC3sik7v3i/4=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0TtmWf/mP/iVIYSvZ04fRHSlgCRysrG4LgVHHaZehPfpR3Uy0LuVPg12TTyw0QNGx
	 0qxQv4m6XHspngPKdWP08L/wfSpFaYkD3rRCcsEW4mYhwcBx5N1Pkzax7VrixOmob8
	 YHJtHy6aggK+eMw6Xji6VrqNzjD4lGIBVvS6uOvGu/NOu9LJ3gjP8e9ujRBYHLzRw7
	 s2pt0Ad+icfDo3CpGDwkUB34Yz5x0PC8slvkrLgfxuXOH1Cj+T6jtSYXazkMJeqEkt
	 OCChTLYceLdsMew9EFxmVTO8PMCajuTIg0pMKiGfWqrqseQ0BzWDt2NA18kXxEA5+S
	 w0JsAYBGt4wxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CE566071B;
	Tue, 12 Aug 2025 23:39:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 88D2D1C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 23:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E7AC41547
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 23:39:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7pA0cvk5ehVr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 23:39:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::130; helo=mail-il1-x130.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9310B41534
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9310B41534
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com
 [IPv6:2607:f8b0:4864:20::130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9310B41534
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 23:39:30 +0000 (UTC)
Received: by mail-il1-x130.google.com with SMTP id
 e9e14a558f8ab-3da73df6b6bso25365265ab.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:39:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755041969; x=1755646769;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lDa4RY/A4zLXKrwMbGuWS/YhifwvrF5CC3sik7v3i/4=;
 b=PXAH4hWWY8Zi/U5RizkbwUOZRJOjOE/VenVu92UPJooUx9gJJdtu6CAKEhm6dz52/X
 Ct7YcCgJWnfzGEJ38Kb0rQTEgjvHjkP01sbi9Dl434Jjvio7uHFyToU7nwsdKtsFSY29
 zx75966LWkrPVEHrsYJksCmDwEzIW/ScgTM75gfW2ezXUZrYgIiIvFH7lj7+aLc7lqLD
 CrmQLmevs/x2KQTqZFui6QUWh12U9IDnvz1O99EswAWwnRB4bPLgGTvJaPQhfyukfEY5
 Q9MVbuleLaijWN60ukicEbPm80UzX8y3ocfmDySJD7LdvOdcBpa/gr+TNtdaixOiQzjZ
 K6ag==
X-Forwarded-Encrypted: i=1;
 AJvYcCUUDTb7jutT6jXqNunXXxrpkv0YIC+JKa7IGpYYIqcnGQhSlXyPYR8q86bs/sb8Ehykdmz1FaXZSRJirVrd1xM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy1Al8sHjn7DYZrqDEk44O91CZXCcAFsp7YwJ8YL6LegPyXugoF
 UDXwtQWnLRwbHqGIr2/8L9tcKt2+Fl6ShmCauiyLVPQ07mICesqVLWPTsEPndUMsqzyjNQf8zIz
 ZlBZYLR3MXOWHZUCN+dvcIaFd0mW3K04=
X-Gm-Gg: ASbGnctLJvX4aPbsXTVg4W9aC6mi8sD15959dKpi+4maD9hg3qIpncwX8ZupWX4bpew
 5FrHlZsSik6oZ+CJCFIrxptjyVmzT3GQdIELvCQYnXB23DF+EG/GOXBO16nVuiV0IxNoVUN06Ct
 IZ/4vVPqBWWdG+uPg9K8tDzRozQYNcGpPXy0Q7bCSBNTpLI3eCAu9L+lrpAhEHdp2IA/3EClW2Z
 8uSuIY=
X-Google-Smtp-Source: AGHT+IGqjRsX8X8VePGuyeTdO0SC3QZ/PbAflQYbw1LnOTFGxXJikVsAfMeWuHZVnOAd2dBjLaT4jm3d2Yl42+s386E=
X-Received: by 2002:a05:6e02:12ca:b0:3e3:cc1b:2b5e with SMTP id
 e9e14a558f8ab-3e567486b72mr17128315ab.15.1755041969512; Tue, 12 Aug 2025
 16:39:29 -0700 (PDT)
MIME-Version: 1.0
References: <20250812075504.60498-1-kerneljasonxing@gmail.com>
 <f2ed5bd6-f3b8-4529-b9c9-28e05aae83f7@intel.com>
In-Reply-To: <f2ed5bd6-f3b8-4529-b9c9-28e05aae83f7@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 13 Aug 2025 07:38:52 +0800
X-Gm-Features: Ac12FXyth5ETOMaNKWpIUd0SmauW4_ghf3VdfX476ya0B1enFigQFZ-hwsIPHPw
Message-ID: <CAL+tcoBk57evHp+H+A=VcFWfuT5DfD+ywW51Tg86s6KH5OgQuQ@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org, 
 pabeni@redhat.com, horms@kernel.org, andrew+netdev@lunn.ch, 
 przemyslaw.kitszel@intel.com, sdf@fomichev.me, larysa.zaremba@intel.com, 
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755041969; x=1755646769; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lDa4RY/A4zLXKrwMbGuWS/YhifwvrF5CC3sik7v3i/4=;
 b=KVR+kGFDzObGut5iEpJSvPJ2TrI8LRlEmArAeuo8h0XUnn9MhjOwLVn9Ur1bMAooYb
 /7c/FtpLs/AoUJm7z4vVSI/e2Dp64ZthJyv98fcnbdjLg7t3GSgBz4HzETpuNSt2WxF5
 jSJd1t3IUwhJCQJG9filxewYt1tFYuws16qn95AQD+xoAG9v1KwMeHKawH8aY944Q1DX
 wXHmmOyShLK9ygbNxIq/vTo83VDHkWyMILp7+OLXLCabiZJ1kFZp6s49AkG4/LlyQpzh
 S+LCnXqOOD6eKPNeupoj1ffEJ9pq0vESjJv+kSPQIZBrFZ3zxl62l1Zq4l1fOQJ3tXEX
 YMDg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=KVR+kGFD
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 0/3] ixgbe: xsk: a couple
 of changes for zerocopy
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

On Wed, Aug 13, 2025 at 4:45=E2=80=AFAM Tony Nguyen <anthony.l.nguyen@intel=
.com> wrote:
>
> On 8/12/2025 12:55 AM, Jason Xing wrote:
>
> Hi Jason,
>
> A procedural nit:
> iwl-net is for net targeted patches and iwl-next for net-next patches; I
> believe this should be for 'iwl-next'.

Hi Tony,

I see. Thanks for reminding me. I will change the subject. (This
series is built on top of the next-queue branch as you pointed out
before.)

Thanks,
Jason

>
> Thanks,
> Tony
>
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > The series mostly follows the development of i40e/ice to improve the
> > performance for zerocopy mode in the tx path.
> >
> > ---
> > V2
> > Link: https://lore.kernel.org/intel-wired-lan/20250720091123.474-1-kern=
eljasonxing@gmail.com/
> > 1. remove previous 2nd and last patch.
> >
> > Jason Xing (3):
> >    ixgbe: xsk: remove budget from ixgbe_clean_xdp_tx_irq
> >    ixgbe: xsk: use ixgbe_desc_unused as the budget in ixgbe_xmit_zc
> >    ixgbe: xsk: support batched xsk Tx interfaces to increase performanc=
e
> >
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   2 +-
> >   .../ethernet/intel/ixgbe/ixgbe_txrx_common.h  |   2 +-
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 113 ++++++++++++-----=
-
> >   3 files changed, 76 insertions(+), 41 deletions(-)
> >
>
