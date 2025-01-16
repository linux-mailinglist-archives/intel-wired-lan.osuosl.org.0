Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BCBA12FAD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 01:27:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F320C415E5;
	Thu, 16 Jan 2025 00:27:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cQySr8m-QI3V; Thu, 16 Jan 2025 00:27:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 198D3415E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736987239;
	bh=bEcOoHqZCQz992D1472+Bd71qizVhWfxyGjZ+LGLdMs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NIL2tYc0X9ta/yrc5KMzi7HtoVvBIewdIruTkTT/7I1Em4FKIGVe7rtflQWp2asrD
	 5n/eevzkbRQscWACsUUg+xz2moEVeIVpfsrlSrQV42jU9OuFC1laLKiSblm7aX3iC/
	 3dQWz+I4qVSgncJDpXZLgA84HSndWnCFPrQ6fx21OAZ0/9hBin4owwOlFFTc4WHDBE
	 It7CJbv2viZTBGlPTkTnnM63GsHXkjiAWHO/tbA4Hamv+kCxiL4Stmhzu4sApCD9Gh
	 i4zlyJyIErJpZVrwg6oXxAreJwbo4Lgia4jfm2soOTXSzWXmdJmE5g8u8jyeGWKRUi
	 Mw4TFtVE3uDjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 198D3415E1;
	Thu, 16 Jan 2025 00:27:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DAB87B89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 00:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C16C8415A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 00:27:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7gtGj9oE0Whs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 00:27:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E0C7341583
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0C7341583
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0C7341583
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 00:27:15 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-2164b662090so4956545ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 16:27:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736987235; x=1737592035;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bEcOoHqZCQz992D1472+Bd71qizVhWfxyGjZ+LGLdMs=;
 b=Wxua9aQj+VwMxDSWQ67s/3y4QyC6zeaXXBR6NK+cYdWj2/zfWCJDNAsg0MBXD3coiQ
 gXMgD1R/5K+JYpFr7BVkz8ExVIEtiJqgrCARRXH5RzfUQq28Yc3KejUP7wRR1imRqRqn
 asNEMcMYhNh97Q/MYfx+2w125RbqTC+5zdd0k/mN+VSHa0Zbr8CKMzqJu7Z2O+X5Gm5D
 qXDKKKrswXXLUEG7OKEGKFylDP1ww1oBEZOaZ01L5ljJAQBBL8m/HtVJqMor52AHWpsU
 X+01Pwf9+kyDosVUFM1NfEbG/5JY9AdGN6saCp+E2POVL4bTz+k0uM81sqC0l/+4gZ49
 wzRg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWcbLgJAfljYvX0XBHiB2l6NoW8vtm4Sy5p1LgcwyeCppeYB2UN25ozYhR770pL2Qm1md8b4gLgpZ2oAi1UzPA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxXeXsrHAFALO+gUbY7a06P7LGDrsXwPGwuU4HyviXV4uCNxOlf
 CJuPHX+tV+GLopP5z3DfvujoUMdoUZ7wVaQBH2pcakSAlALaWq4=
X-Gm-Gg: ASbGncvWb2W1dGbeUrR93mjoUUvYEtxtvBDXmnwdPnCIlQqn5n4bfe4IVG30eniKy2e
 /+5jQ6Opw7nEurA0Dw/Eu8DBi5J57XfHZQsJx5kq3ygerDXoY5uzEeHy9TZ2G1B97Ib5Vk5j0Sw
 YMw0rJ70VLcYYyyzAZtIJiZI3rxTLx97V5VW6XozzEQXH+2kniyWMsHRWMWYuWfA6+M+89Ds/es
 sm7Mj5UBbupgfWptJ0EmQOOQzfUPS5EzaWhPHbzOQP+Do+YJNh0jO8g
X-Google-Smtp-Source: AGHT+IF42kOgX+PydEftgfBZixafBXfUCJHxwxxwV4uV0EJebudeO3qjsr2vtf7hdNZFfdVhP9a6Vw==
X-Received: by 2002:a17:902:ce06:b0:216:5561:70d7 with SMTP id
 d9443c01a7336-21a83fe48c0mr475141105ad.52.1736987235115; 
 Wed, 15 Jan 2025 16:27:15 -0800 (PST)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21a9f253a98sm87014465ad.224.2025.01.15.16.27.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2025 16:27:14 -0800 (PST)
Date: Wed, 15 Jan 2025 16:27:13 -0800
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>
Cc: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Willem de Bruijn <willemb@google.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Bjorn Topel <bjorn@kernel.org>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Joe Damato <jdamato@fastly.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Mina Almasry <almasrymina@google.com>, Daniel Jurgens <danielj@nvidia.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>,
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 intel-wired-lan@lists.osuosl.org, xdp-hints@xdp-project.net
Message-ID: <Z4hSYdzvbggntSr0@mini-arch>
References: <20250114152718.120588-1-yoong.siang.song@intel.com>
 <20250114152718.120588-2-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250114152718.120588-2-yoong.siang.song@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736987235; x=1737592035; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=bEcOoHqZCQz992D1472+Bd71qizVhWfxyGjZ+LGLdMs=;
 b=jC9phsksg6RvRgzzxJySiwxTwTpQuvKDZm/cfJXQ/OY0mQUI9jdahPVbjHz+OfM5gG
 UpqA/wtBj/gPE0+cDj1pjfDWUEKZWc0C+QqYN24NpAibSoVgaI0Yxqo51MK+GP12w29e
 5WEsYUnmdstKvhHr/DtMqI+tGg+mUal4D6wMpuM4akHA8y+prI3InaIf8Q62SGOUKH8d
 CJkUxS1nYmhbKG7MToUYQpENpCalBS+3diLoJ+74gSFGYDelOg0o9k8jft41LmU4eCsJ
 +r4kj/dgdfofAsxIGy87nFsbiJfdVitx+BlW0vPnL/QEWyAbf+yJu0Zpi0Y5Uck4YaJw
 IRhw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=jC9phsks
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v5 1/4] xsk: Add launch time
 hardware offload support to XDP Tx metadata
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

On 01/14, Song Yoong Siang wrote:
> Extend the XDP Tx metadata framework so that user can requests launch time
> hardware offload, where the Ethernet device will schedule the packet for
> transmission at a pre-determined time called launch time. The value of
> launch time is communicated from user space to Ethernet driver via
> launch_time field of struct xsk_tx_metadata.
> 
> Suggested-by: Stanislav Fomichev <sdf@fomichev.me>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>

Acked-by: Stanislav Fomichev <sdf@fomichev.me>
