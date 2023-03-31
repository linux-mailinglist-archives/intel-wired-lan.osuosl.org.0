Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B69A6D2582
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 18:30:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8915617A0;
	Fri, 31 Mar 2023 16:30:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8915617A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680280248;
	bh=cLlkWhhuZx+vVk9IqrPxDfPPHf4uA6807IPsu+fCX3Y=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M/DHjO3t2HAvZEbeWgyZeb7xhhRZ6DjQjXZMI+zg+Umyh96oAbeQuxR7t1X4JBcje
	 YuiJmPaQRh5NB81F1UurANbL4LQcQC8nLtRGWTcLreYJ7l5ylShctyylRTnMKsigSU
	 giQL4/2hQwz7ElwCNO1Uxg9kYBciIlIIVbtDd/gu9yzIjj3h3u8HOzEPeP61KXUh4S
	 RTQ5bRf2VRYc/gg2DCY0acohXkYXqnsHp0h7Cnh4blt0sTtieo5Bfpvwo03bpaTPPN
	 aJOK7jKTyDoUlRX9aeXueNxOoXcFES6lRnbmLUqV9sgiO7CoAeem4nT87Io3pYp2f2
	 MCBxpuAlSaCOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qrzyz6MmTttS; Fri, 31 Mar 2023 16:30:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4BE761769;
	Fri, 31 Mar 2023 16:30:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4BE761769
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7CAB1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 16:30:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7EFF76179E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 16:30:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EFF76179E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0HBpOyp84sig for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 16:30:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C951D61751
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C951D61751
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 16:30:41 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 j15-20020a17090a318f00b0023fe33f8825so7362995pjb.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 09:30:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680280241;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FuU0X18NA2vfKqA+27nNi+qvFb7A+8NhIy9/ITvEFps=;
 b=HEcwgHqFZIaR5wpXZZIzjsdTUTMzKYYbLe3Ug9VZT8EiXLkRamI5v7D84sQSdUCVU1
 MJT1GvWzWGszp3yC45I6roiYVsGdCDYlxnnAut4GUk4QesyOCqXruhp2WHXg5/HtNWa0
 GVhMsJCjNSr1yOkYm4RNM14XUd0OTJyWRorALsSFWeajeHGmTaXXNVty9FnNGGdPFxiv
 OF/e1S/vo24dRMFHeIcchKXPQc4sCJwSoC1hG9Qs8Qw3qGYYK9y8xnWkbReFCGJ9wxKk
 7hr/A6S4PmiM42+1aMVkUpUu/sL3+ra0EVYL6w5a+H2qi00om5MREj6DEfKjNnaOwPLq
 wE0Q==
X-Gm-Message-State: AAQBX9eH4GyfPPCFvfoFY9x5nRrCvPFFjwn3DJLnW6KhxPZZ6FsF9Rkv
 lpYxpZ984ArZHiZ0fuEz8ht9eRg=
X-Google-Smtp-Source: AKy350YqrZGH7LT9CkWwnnCK5H2FURN0Q8DDSeBB4aSbUucJfZ3SItP8t85KLXk3UlddQxE5yS0f9b4=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a17:90b:d85:b0:240:d8d8:12c4 with SMTP id
 bg5-20020a17090b0d8500b00240d8d812c4mr1364835pjb.3.1680280241163; Fri, 31 Mar
 2023 09:30:41 -0700 (PDT)
Date: Fri, 31 Mar 2023 09:30:39 -0700
In-Reply-To: <168027495947.3941176.6690238098903275241.stgit@firesoul>
Mime-Version: 1.0
References: <168027495947.3941176.6690238098903275241.stgit@firesoul>
Message-ID: <ZCcKr69B+HKJdFEl@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1680280241;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=FuU0X18NA2vfKqA+27nNi+qvFb7A+8NhIy9/ITvEFps=;
 b=eikErdC7IICJhhwmuS6mSRXF9PSaDCK6Hb502DIcMwEihqM3SSqInbY02vh2KRmxbw
 L1DPPI2JRFX2033gNwvIYJ6+uFY3/kUAG/pKGK9m4P76ZcYNz+LIbNzzjOi8Pft+M6eR
 ikfClExVxzr+Za2HW407xqBShUtz/gdVuzG9jQFeQPXIvrWVct4wiqYT8P8aiCMK8QyO
 v2+f5fwWFSlrbUe6TH2pN/7jDwaJR8vXFTuO/GGq+56r43sdlHzugjX3lXX7nH07I4Hm
 1nJq2+JVACzeE4/YfsjdKpyoPGU0YN/jMfdiXAs1vPLTsAWfTLTbZKHoNIbXKI7UuMLB
 VhHQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=eikErdC7
Subject: Re: [Intel-wired-lan] [PATCH bpf V4 0/5] XDP-hints: API change for
 RX-hash kfunc bpf_xdp_metadata_rx_hash
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 martin.lau@kernel.org, larysa.zaremba@intel.com, netdev@vger.kernel.org,
 Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 03/31, Jesper Dangaard Brouer wrote:
> Current API for bpf_xdp_metadata_rx_hash() returns the raw RSS hash value,
> but doesn't provide information on the RSS hash type (part of 6.3-rc).
> 
> This patchset proposal is to change the function call signature via adding
> a pointer value argument for providing the RSS hash type.

Acked-by: Stanislav Fomichev <sdf@google.com>

> ---
> 
> Jesper Dangaard Brouer (5):
>       xdp: rss hash types representation
>       mlx5: bpf_xdp_metadata_rx_hash add xdp rss hash type
>       veth: bpf_xdp_metadata_rx_hash add xdp rss hash type
>       mlx4: bpf_xdp_metadata_rx_hash add xdp rss hash type
>       selftests/bpf: Adjust bpf_xdp_metadata_rx_hash for new arg
> 
> 
>  drivers/net/ethernet/mellanox/mlx4/en_rx.c    | 22 ++++++-
>  drivers/net/ethernet/mellanox/mlx4/mlx4_en.h  |  3 +-
>  .../net/ethernet/mellanox/mlx5/core/en/xdp.c  | 63 ++++++++++++++++++-
>  drivers/net/veth.c                            | 11 +++-
>  include/linux/mlx5/device.h                   | 14 ++++-
>  include/linux/netdevice.h                     |  3 +-
>  include/net/xdp.h                             | 48 ++++++++++++++
>  net/core/xdp.c                                | 10 ++-
>  .../selftests/bpf/prog_tests/xdp_metadata.c   |  2 +
>  .../selftests/bpf/progs/xdp_hw_metadata.c     | 14 +++--
>  .../selftests/bpf/progs/xdp_metadata.c        |  6 +-
>  .../selftests/bpf/progs/xdp_metadata2.c       |  7 ++-
>  tools/testing/selftests/bpf/xdp_hw_metadata.c |  2 +-
>  tools/testing/selftests/bpf/xdp_metadata.h    |  1 +
>  14 files changed, 182 insertions(+), 24 deletions(-)
> 
> --
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
