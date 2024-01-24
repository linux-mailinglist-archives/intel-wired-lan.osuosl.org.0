Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D7B83A3A2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 08:59:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 986F2435B2;
	Wed, 24 Jan 2024 07:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 986F2435B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706083165;
	bh=Q92C8VzIHJcnlRFLcLBDvGNfbptSh8Rh3tDhxRNYqzE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rZKzu7nuZDjhQioiB/SZ+kJwKWmZ3WacS6+X3vC+4UUSnqvPRJlC1oLlD7d1IKzET
	 b2zES7QOFBkG00swKalTBNelKtd9VAZxQEckUfLvP8nMyNnKZXiCDBTXQkvlMub6sZ
	 1YhoFLb4aELW4TknDaPdJhFZT8rXMxTSvWttRWLviOh610SNSPihMuHQ5x3geEKyLG
	 s0f9f7IAIzyilDMiCybEAxA2DmY3OjJh5Tq2FCqhKhUAqrjAjp2GguUilLhCQIoyw2
	 YCc6mXAlNx+JuSe3IzaWUWY7k8mI+iSP1idiHYsv9c7AnP8BlRBakfzT92QWeFYb9m
	 sibgC1yvK0ZfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8cPfCHHi_0Tp; Wed, 24 Jan 2024 07:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84029408C5;
	Wed, 24 Jan 2024 07:59:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84029408C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1090B1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 07:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 504A6408C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 07:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 504A6408C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0tc0EIU2JGk8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 07:59:17 +0000 (UTC)
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com
 [IPv6:2607:f8b0:4864:20::f2b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3527940148
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 07:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3527940148
Received: by mail-qv1-xf2b.google.com with SMTP id
 6a1803df08f44-681928235d6so1739966d6.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 23:59:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706083156; x=1706687956;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Q92C8VzIHJcnlRFLcLBDvGNfbptSh8Rh3tDhxRNYqzE=;
 b=NLXnw/wESho9he+ki/X/qkd1/42qncwXRg4XRck3ssVsEv2b23dYFEYcOfRfMkynmJ
 ugEuMg2ogtuQkgP6eF22OdbYNbbd3rgvfMcjqU4MEZSAWiIyEZlHzmQgnA35xyTr/OQr
 CMP0GqJVsbbkmSkc3pVRzKQ0N9iXqJvAebcxojMsVNfi+eYBQ5k03QjnKwXYGHIufHmG
 CqeDFu0eR3SKDKgAmP2We+Te9dNLnQUwwXTek8Na+m760PDNnRseK56HjDhzkG4gpndN
 bcYLcbHTmBYT2pEG4jdt6Ys9Vqp4RixhDR28Lp4UglTVaIkpj1eO+ZP5ff81SFrNKURe
 Mzug==
X-Gm-Message-State: AOJu0YxhbvcvcPELOgYSBCt6QySDqHvS6drni/sgm4krSw0diRPp3RmJ
 fN8ne7X4Jm9yJZ0TmCmbpINRPtXV9brBnX9dXY+J8qY6Y05tFy4LeFJZU7am4F20e/qdrB2S3fi
 2a1dSJOvphSbpA8r9eh8b8cNPyvo=
X-Google-Smtp-Source: AGHT+IEiyEKrWHLQrCMuEVeuybf2u1RXE5AMEL3PoX90w+hMbjCoqxpJM9kQTQnExbLnwxvzZqG5XAsY9MYzyqzsh2I=
X-Received: by 2002:a05:6214:d85:b0:686:9d71:842a with SMTP id
 e5-20020a0562140d8500b006869d71842amr1557448qve.2.1706083155980; Tue, 23 Jan
 2024 23:59:15 -0800 (PST)
MIME-Version: 1.0
References: <20240123115846.559559-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20240123115846.559559-1-maciej.fijalkowski@intel.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Wed, 24 Jan 2024 08:59:04 +0100
Message-ID: <CAJ8uoz1uUj2mMPzoXkp8yUy_FsS_RR214eiJUhvj1Jvxr7=XCg@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706083156; x=1706687956; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Q92C8VzIHJcnlRFLcLBDvGNfbptSh8Rh3tDhxRNYqzE=;
 b=A8Ti6TARxz2N4aSsEHlBMC0+ZO0srI/czhaXRkqpBuxJ1l+p035DSdI8uNpz9efibk
 IPs2ibAvGKJHt5nYFqIA2BnIGa1QFfeBtJiqsNJ+uSX/JZgjtuqNI9V0+s73xfF2uUWF
 vhTeQTnLBrYBV9XVoCmo8jo+1WTkiNAvVOgS1R0sc2DA+eVyE9X8NxWcC8vop6YF0SGv
 o/R30dYcyXkHa9VfoY5BKx+LjveHr0OwlHdzAwNCo2pR2GTrR14sXLDwIalOtFGX7TMx
 MUJkBl5IEb/lroG3CjEFu3QVR9TBDx7FsElT5h8A8PAEbOkTpkxKTFSA4Cktc1m0iX29
 UfYg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=A8Ti6TAR
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/2] ice: use
 ice_vsi_cfg_single_{r, t}xq in XSK
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 23 Jan 2024 at 12:59, Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> Ice driver has routines dedicated for configuring single queues. Let us
> use them from ZC control path. This move will allow us to make
> ice_vsi_cfg_{r,t}xq() static.
>
> Thanks,
> Maciej

Thanks for the clean up Maciej. For the series:

Acked-by: Magnus Karlsson <magnus.karlsson@intel.com>

> Maciej Fijalkowski (2):
>   ice: make ice_vsi_cfg_rxq() static
>   ice: make ice_vsi_cfg_txq() static
>
>  drivers/net/ethernet/intel/ice/ice_base.c | 134 +++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_base.h |  10 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 129 ---------------------
>  drivers/net/ethernet/intel/ice/ice_lib.h  |  10 --
>  drivers/net/ethernet/intel/ice/ice_xsk.c  |  22 +---
>  5 files changed, 142 insertions(+), 163 deletions(-)
>
> --
> 2.34.1
>
>
