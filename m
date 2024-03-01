Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C855C86E7FE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 19:10:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 413474151D;
	Fri,  1 Mar 2024 18:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2aNWvQ5qwP_f; Fri,  1 Mar 2024 18:10:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8169241CA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709316649;
	bh=pgwkJ5zBKIvalm1RJIrALe5y36weQ/YKYrh2qwof5jE=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MtJ9L8crCGeEFJ2It5SPY/ung6HAFwnlUr/9AHdsHiglAuVTwNMnAU/hB8Dofxmtr
	 rFWDAwIq2VH32uUITB0nnstwsnh5mloF16NI7rGGarinB5AOUYuL1V+lejWZtywOah
	 gFYfFvuCUQewf0Ivov1dM6EuScTnz2OpJOU/lZNW5jfFtVVvpGaANa44zUGLVlTvxR
	 F+4MyRK8MlFqM+KLnLRnxRn+rovmc6gIKM3aOV6GbEiHkxklv7Ob4tvv339aEISY7N
	 +zxZpjkYQF+Zj3oVpCY2UDBhBL/FPicGNRBfB7n4IgewYnDxQFHz6eeKbLm/A89/P7
	 CKrucndiKjzOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8169241CA2;
	Fri,  1 Mar 2024 18:10:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A8EFB1BF354
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 18:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5CEBD41CA2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 18:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TXgBwUADcinP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 18:10:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1049; helo=mail-pj1-x1049.google.com;
 envelope-from=3jrrizqmkdxgg134cc492.0ca6bh29-k6f21-9yb96ghg.cgicg9.cf4@flex--sdf.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D234B4151D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D234B4151D
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D234B4151D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 18:10:45 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 98e67ed59e1d1-299c12daea5so2893674a91.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 01 Mar 2024 10:10:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709316645; x=1709921445;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pgwkJ5zBKIvalm1RJIrALe5y36weQ/YKYrh2qwof5jE=;
 b=owV5eMVP367Xh0Tdxc1V4SNt4+sE1y/4/XxG/e1irqAPDSorcuQmLOkuALBpPX1fz0
 QgwSS8CUDxGJ2qSvHCxKgOIFiVFocVdE4/Fr15lu223yfzdqkceDP8/bIqK7xrMiEzhd
 /3d1/z+1Q53ZoO/sYa5wK0wdldtpx94+g9+uLMuQHUEXyS0/lSymMNtNtjGwGDUuHXjM
 njUTV31K3zURG3C/RyemTBjsYeBZTCaIpEC/pB9XpiiJhd/Cn/UzBXHMTAToj8/JVd3r
 B2c/Bi0ntnEBvQqCR/nSZfCQWTx1lDT6OvwCdbWMkVQkWMhc0z3F9ML9BG3PB8485mg5
 EIwQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWH4GclRzEP6F9gokjRGbgBDPJNZJFgP2GarkQqthNDYJSKg4e7vq4BRS3RaQZHWXC4M2F/FdHG9V628BnvFP+fVbKmyo6Mj1eTJbrk7c4VNw==
X-Gm-Message-State: AOJu0YzGhPsEq1hm+SiytH2MlJOgoA0KzZEUvtwn0PNmBLc3U35Gl249
 /NTCWNfwFANCWupYVqvYSYC/feSCgge3Y1LkvZEK03LU1y8BU5xEsHzWjZOpleTs/A==
X-Google-Smtp-Source: AGHT+IEGDx0IBS91RwXiEWVsOKX4bVPCV9F+AXiFnctjT3PsNi+Tc0z/aXyoMVHCH/0MRr3/ArbUUwo=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a17:90b:3741:b0:29a:a70d:e5ce with SMTP id
 ne1-20020a17090b374100b0029aa70de5cemr24534pjb.3.1709316645070; Fri, 01 Mar
 2024 10:10:45 -0800 (PST)
Date: Fri, 1 Mar 2024 10:10:43 -0800
In-Reply-To: <20240301162348.898619-2-yoong.siang.song@intel.com>
Mime-Version: 1.0
References: <20240301162348.898619-1-yoong.siang.song@intel.com>
 <20240301162348.898619-2-yoong.siang.song@intel.com>
Message-ID: <ZeIaI4TNqXSxU4LX@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>
Content-Type: text/plain; charset="utf-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1709316645; x=1709921445; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=pgwkJ5zBKIvalm1RJIrALe5y36weQ/YKYrh2qwof5jE=;
 b=HLuk4EVk5wYWup5M7tIGwBrcsZVVD0GWFO0iQivPnqWmvarUq3skHv3b9b3zJaI+AY
 zb4CELifhGE11ZhCoJE7I3obTpN6pSxwoEEuHFfXWGwjoA1DB+4Gs+IqyhaW1o2vvbzu
 VycRjuupDBGmqkro+1opo0cSWVDaQRMjQ7iWweee4IN2p1Y5AoXWl+y+Q7XBF9Jp3TKO
 YN8lqNW8WKl0gup0x2HDF22sxEFkBpq32R60FU78PpMDO6vVfymLs7fWyIzGV3NKz/wv
 q79cQecuITZX41OcavgKNWAIYxiC8s+YQUmbOT2lXvYJx4LhK4WsDuJ1gz31+uQn6jBL
 hgCg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=HLuk4EVk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v2 1/2] selftests/bpf: xdp_hw_metadata reduce sleep interval
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
Cc: linux-kselftest@vger.kernel.org,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Yonghong Song <yonghong.song@linux.dev>, Shuah Khan <shuah@kernel.org>,
 Mykola Lysenko <mykolal@fb.com>, xdp-hints@xdp-project.net,
 Daniel Borkmann <daniel@iogearbox.net>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eduard Zingerman <eddyz87@gmail.com>,
 Jiri Olsa <jolsa@kernel.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <martin.lau@linux.dev>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 03/02, Song Yoong Siang wrote:
> In current ping-pong design, xdp_hw_metadata will wait until the packet
> transmition completely done, then only start to receive the next packet.
> 
> The current sleep interval is 10ms, which is unnecessary large. Typically,
> a NIC does not need such a long time to transmit a packet. Furthermore,
> during this 10ms sleep time, the app is unable to receive incoming packets.
> 
> Therefore, this commit reduce sleep interval to 10us, so that
> xdp_hw_metadata able to support periodic packets with shorter interval.
> 10us * 500 = 5ms should be enough for packet transmission and status
> retrival.
> 
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>

Acked-by: Stanislav Fomichev <sdf@google.com>
