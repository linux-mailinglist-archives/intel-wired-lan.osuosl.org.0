Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BEEA8B1BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 09:13:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5037060751;
	Wed, 16 Apr 2025 07:13:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LNI36NoP0_Nm; Wed, 16 Apr 2025 07:13:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA69C607C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744787634;
	bh=Ytps9MXFkYQg2HKzXOohF8qIk+g98tpzMXPoSm4dxFo=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z/BKK1xt5p1oKqLjBTQ53WdX2M030W1GCH5uGjznhtyOkgCrOEe+ddyHGRB6AgAzA
	 DHEf6qGyv5VXrdHSm4RjA/pVzukOW25zEcagJBWWekCts0JLy217LcD2z9iy7/JZxv
	 g+xDhAE4EoqMKu+hKTk/bapDT7hXd93RyHg1WeYlxn1vDwRGDP3CAC/AevVJjrGCq2
	 UzrSaf3tkZsPJc7wPiJVbjySZ5BpT+Js7QJ8e1nUlmbpW9SRwnQOOaCTBF80GWYCVB
	 ZLxVjvb264BEO6/YWMB8nOR9Vc5AF5qL6XILwVq/iyblE/u54W9J8go72Xj5BDJWbX
	 K/ew3XioL+vxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA69C607C9;
	Wed, 16 Apr 2025 07:13:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C3BF435
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 07:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 11885400DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 07:13:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RtVb01J-Q9Ka for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 07:13:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62e; helo=mail-ej1-x62e.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0ACF2400F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ACF2400F9
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0ACF2400F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 07:13:51 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-ac25520a289so1079992966b.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 00:13:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744787630; x=1745392430;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Ytps9MXFkYQg2HKzXOohF8qIk+g98tpzMXPoSm4dxFo=;
 b=suyCbhsDgaM85oyZm8GPpBV4G/5rntVj9VXYx0/TX0vM3F5zs4ufgFGBrIz0X0XtvY
 Iu0InH3XCjhkQcK+S+DAGuEqMML0ybxpHOqRskRFfFyKRVMHxhq6d/S5q9uAeR+LUV0b
 74Rl1cr6IkNFTd+CwwAoMkbdlbJtbeycmtt1L5Gb/OwYlfN/yaMiUu734sAZilvIXMbQ
 4gNBBaeB5NWKKWJif8mpWymjoAf/0GCiJSvbwbjphxNtY05M4RqPxRfv48/nAQUSNV+q
 W/J0JHX15s8dPaiX7TR/bf4ljNifk8W7fElINSfwZHEwfojy45eQ0FAXoeuNbgCMxinR
 NEJw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUuHRJo/wXkbjGcvfm9qX9/DBAJMApVV++1uQNriLd8ZmjEZ5jx5YOCjzn/7MMSmW+UkwymSG+VGvNz12HbCao=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyBZak/goPsinmERXNjygDew424s/0OtiYJ77QzqbhwZMHHY9ej
 B+HDaSj+Iqo2Dmfdeo+RUzrjETI/pdMR33armjXHhMv3jA/9KtCtrjVaBggdBSBomBnalQ+DIdq
 azCLINY5T7D/T3NvRxHWbm1zbuJXSchnJkZrW
X-Gm-Gg: ASbGnct/lmNjndONlf4feH7HtKD5OcRj1ctMaJeuy2NqOkd0HEjiXRtbMi0aQapDJsU
 1qlXS509juB5TA0NIR/RLf10HHO9JxUPrHy1VD80TfSnps8IP7nXaOhmquv0H60KX+A9viSnMBG
 952D1QK+CUpfVAvXvEydl2Xs0=
X-Google-Smtp-Source: AGHT+IHlTpFnMolX4gA/g52IlQ/tj+gId1djCIyzYs3WB7wppB8zFUXCjOn8eLYzAYWPBdKWahOXUFyZX267yJlGJFg=
X-Received: by 2002:a17:906:dc92:b0:ac7:1350:e878 with SMTP id
 a640c23a62f3a-acb42ada144mr47984366b.46.1744787629490; Wed, 16 Apr 2025
 00:13:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
In-Reply-To: <20250415175359.3c6117c9@kernel.org>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Wed, 16 Apr 2025 09:13:23 +0200
X-Gm-Features: ATxdqUHJ7umUsa5H672lz0ujM37fgVLtcRbHcVnssplk8IlpJ9rF17FKH2YfqGI
Message-ID: <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, jdamato@fastly.com, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Igor Raits <igor@gooddata.com>, 
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>, 
 Eric Dumazet <edumazet@google.com>, Martin Karsten <mkarsten@uwaterloo.ca>, 
 Ahmed Zaki <ahmed.zaki@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1744787630; x=1745392430; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ytps9MXFkYQg2HKzXOohF8qIk+g98tpzMXPoSm4dxFo=;
 b=QL1C7NdXAa4wPAgR5vl6PQBi7oDVeuLU1mHpMsT/wkLYwRVzF38kEoNs2v9TZ3eToQ
 P892bMVKVb3n5b644pgYt5UWoPBKayuQ8cLrJImNNEcHLLT5XG0zYwIENZ5FgqWYUmrr
 ztQLirAcXMxLDGS1fABYKFs1ZOrryj3l+dtbg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=QL1C7NdX
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

st 16. 4. 2025 v 2:54 odes=C3=ADlatel Jakub Kicinski <kuba@kernel.org> naps=
al:
>
> On Tue, 15 Apr 2025 16:38:40 +0200 Przemek Kitszel wrote:
> > > We traced the issue to commit 492a044508ad13a490a24c66f311339bf891cb5=
f
> > > "ice: Add support for persistent NAPI config".
> >
> > thank you for the report and bisection,
> > this commit is ice's opt-in into using persistent napi_config
> >
> > I have checked the code, and there is nothing obvious to inflate memory
> > consumption in the driver/core in the touched parts. I have not yet
> > looked into how much memory is eaten by the hash array of now-kept
> > configs.
>
> +1 also unclear to me how that commit makes any difference.
>
> Jaroslav, when you say "traced" what do you mean?
> CONFIG_MEM_ALLOC_PROFILING ?
>
> The napi_config struct is just 24B. The queue struct (we allocate
> napi_config for each queue) is 320B...

By "traced" I mean using the kernel and checking memory situation on
numa nodes with and without production load.  Numa nodes, with X810
NIC, showing a quite less available memory with default queue length
(num of all cpus) and it needs to be lowered to 1-2 (for unused
interfaces) and up-to-count of numa node cores on used interfaces to
make the memory allocation reasonable and server avoiding "kswapd"...

See "MemFree" on numa 0 + 1 on different/smaller but utilized (running
VMs + using network) host server with 8 numa nodes (32GB RAM each, 28G
in Hugepase for VMs and 4GB for host os):

6.13.y vanilla (lot of kswapd0 in background):
    NUMA nodes:     0       1       2       3       4       5       6      =
 7
    HPTotalGiB:     28      28      28      28      28      28      28     =
 28
    HPFreeGiB:      0       0       0       0       0       0       0      =
 0
    MemTotal:       32220   32701   32701   32686   32701   32701
32701   32696
    MemFree:        274     254     1327    1928    1949    2683    2624   =
 2769
6.13.y + Revert (no memory issues at all):
    NUMA nodes: 0 1 2 3 4 5 6 7
    HPTotalGiB: 28 28 28 28 28 28 28 28
    HPFreeGiB: 0 0 0 0 0 0 0 0
    MemTotal: 32220 32701 32701 32686 32701 32701 32701 32696
    MemFree: 2213 2438 3402 3108 2846 2672 2592 3063

We need to lower the queue on all X810 interfaces from default (64 in
this case), to ensure we have memory available for host OS services.
    ethtool -L em2 combined 1
    ethtool -L p3p2 combined 1
    ethtool -L em1 combined 6
    ethtool -L p3p1 combined 6
This trick "does not work" without the revert.
