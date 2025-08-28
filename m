Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C64E0B3A71B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 18:57:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 642DF83D57;
	Thu, 28 Aug 2025 16:57:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IUM-6oKhzDcP; Thu, 28 Aug 2025 16:57:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCC7883D31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756400274;
	bh=hUlxTvNnxWvVbwi4g/Jm8/uE0pr83dkev1JUOpqywAU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r6xj4hsa/F6AZf8TVT4u1b8hvwykIMAUS0GQMw0Neo/+VIgM0Zc63a2makhe4JAg+
	 FFmFzUTqri4/sRh5m2vf7Ng/79iJDUdneSrTc70k04uhcQ1H0a/zdN+tdHBNPjK0Gi
	 LuqvtQOq0WmWYQvKExxsObZcFni9+4qUPOVCwlNHDlZkOxJInQMJzpW/IjfU6dVieJ
	 J5729dMcbYz1HP5ElOqBc3IiDII1P0J3SCO/ptVryWL7RQF7+fEyCLRJnaYraL4mA2
	 98NxnKn7z7VGk4iW1FvK1n74Vl+Id6WlvKfzjYvcQFWu/b9/31EW571h6GT4BKiq6i
	 MjZ/1bS/htKUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCC7883D31;
	Thu, 28 Aug 2025 16:57:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C1E9B8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0BEC883D3D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:57:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HZ24Bo3TJ4VL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 16:57:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 442C483D31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 442C483D31
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 442C483D31
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 16:57:52 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id
 2adb3069b0e04-55f4468326aso177e87.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 09:57:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756400270; x=1757005070;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hUlxTvNnxWvVbwi4g/Jm8/uE0pr83dkev1JUOpqywAU=;
 b=koaZ+gdk6yiQKTqjXSYeH6HJ+UweGbV47Vx1+j00FfTwBJdAb1Qyh9JVhKv4VRkcE5
 /vzOjGrp6Xt8qfmpakxcMg72RbneukRQPLNXpJqGkDbiMpeukVfBX9F7kqprnxlfAX4L
 2lKukKR4WirkiCBSZqf4YtO6jFrwqCV1Q3RJSlIOEXtqb6T0da+s8zjg2toyp20HhhVg
 0b85HT/veB3VGyRIgBjK9EQ7TxkwAQsVjHu7NzXtKX9elyUPZfTVaeXoBTKRx3t6aT++
 U8p+mB/SKb24tv4N8Is8RvA4+IbGbCc5ZQugCk1CYpBHAGGjuzONzQd7rA1yUmJaQO2I
 ce2g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXjuS51RDvNKVMIesJFCfOLttO28zS0odl127v2KJmq+4tcOGVPi92yKOIZDrTaoTOSaSBRay/9n6XwKTPMc80=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx6yRUWoPLFiHg6l/7O9E5gk+mfJ6BkHKuI0iDv3KaSAUS39vyT
 68tWZ7mzGEBMClMxnvBQjNr7W72FA7eCemAkfN3+11gPH7lDVzYXHwb836bGhV/MKz/iNGWyB1v
 CELu1nBta2VkoOWlIIn3O/Veza5KyqQbaGYvVQhDw
X-Gm-Gg: ASbGncsHzNNMy/DtDG2Etyd08z81+CZwsNQ6G3O9CEiX0un6artpkW/mrQ5jGStOwI1
 jb7Ujlb2jBGgmFrs0Y/PHorq1+qcUe+OEafRfyr1Nfo+lRPO79Bz97/8uSILfN6wihD0yLWrEzL
 yl1883Wcrw2wOQn/sPmJrMdufUBcSbqm3JnVYyvbIojJvIx2Q/RxcM8AlAcxTqLV9agFd+0n/sa
 ho7wxZVsjBTSn7HKVM5iVO7pw==
X-Google-Smtp-Source: AGHT+IEA+x+JHJGxAKqi3gf39h+cXrxl4F1cPaRjmHzOLyzmMNWf5vB8Aw2K6CCK2muVk+ohncKOBj10rKhlESV29Zs=
X-Received: by 2002:a05:6512:609b:b0:55b:7c73:c5f0 with SMTP id
 2adb3069b0e04-55f4d3263a2mr1010554e87.2.1756400269844; Thu, 28 Aug 2025
 09:57:49 -0700 (PDT)
MIME-Version: 1.0
References: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
From: Mina Almasry <almasrymina@google.com>
Date: Thu, 28 Aug 2025 09:57:37 -0700
X-Gm-Features: Ac12FXyD8odEoc9_-KKAReVcf86GdG5H51-cMjxY6Bgpf4RvXSnT7vL1DpsIvFs
Message-ID: <CAHS8izPU7beTCQ+nKAU=P=i1nF--DcYMcH0wM1OygpvAYi5MiA@mail.gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org, sdf@fomichev.me, 
 asml.silence@gmail.com, leitao@debian.org, kuniyu@google.com, 
 jiri@resnulli.us, aleksandr.loktionov@intel.com, ivecera@redhat.com, 
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1756400270; x=1757005070; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hUlxTvNnxWvVbwi4g/Jm8/uE0pr83dkev1JUOpqywAU=;
 b=BIx3ATxEw6Cqct8unynx9clefdquDxu787S+UYT7zP51ePPxmIIlTs/6o7Bi6BDdzP
 tp4oGeUUWGrlZRHhfQsRTdN96DBYm0uPEybjWXFWcbnEFhq1Zja9jsams6WlLgMFj+UJ
 o6Hyfw99axpWS+BDOtAtTJnX7Ep3LdaBnYVHc7GVH4BGHX+ldeF2nNV14e/dhy45ZOT9
 07etGGDb5SNkvhkla2newXHUYTN5FW3h9FMufEyvYGchvXJ5OSn/+XvAPon/2iyfDBub
 z9I34czCZCYZjxrol7CIP+GxjHMKs/DTsqwpCJOq358VfiIyB6KWjA46fx4xaw160mkb
 U1jQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=BIx3ATxE
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] net: add net-device TX clock
 source selection framework
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

On Thu, Aug 28, 2025 at 9:50=E2=80=AFAM Arkadiusz Kubalewski
<arkadiusz.kubalewski@intel.com> wrote:
> ---
>  Documentation/netlink/specs/netdev.yaml     |  61 +++++
>  drivers/net/ethernet/intel/ice/Makefile     |   1 +
>  drivers/net/ethernet/intel/ice/ice.h        |   5 +
>  drivers/net/ethernet/intel/ice/ice_lib.c    |   6 +
>  drivers/net/ethernet/intel/ice/ice_main.c   |   6 +
>  drivers/net/ethernet/intel/ice/ice_tx_clk.c | 100 +++++++
>  drivers/net/ethernet/intel/ice/ice_tx_clk.h |  17 ++
>  include/linux/netdev_tx_clk.h               |  92 +++++++
>  include/linux/netdevice.h                   |   4 +
>  include/uapi/linux/netdev.h                 |  18 ++
>  net/Kconfig                                 |  21 ++
>  net/core/Makefile                           |   1 +
>  net/core/netdev-genl-gen.c                  |  37 +++
>  net/core/netdev-genl-gen.h                  |   4 +
>  net/core/netdev-genl.c                      | 287 ++++++++++++++++++++
>  net/core/tx_clk.c                           | 218 +++++++++++++++
>  net/core/tx_clk.h                           |  36 +++
>  tools/include/uapi/linux/netdev.h           |  18 ++
>  18 files changed, 932 insertions(+)

Consider breaking up a change of this size in a patch series to make
it a bit easier for reviewers, if it makes sense to you.

--=20
Thanks,
Mina
