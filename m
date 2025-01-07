Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DABA04793
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 18:07:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1C4B60ACA;
	Tue,  7 Jan 2025 17:07:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3C03m2OwK3F5; Tue,  7 Jan 2025 17:07:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D105260AA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736269665;
	bh=H6IgG8TBqPF+D4hNW02w96Pdr6FXNShPU0XiGtGLP2U=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yATyk3U/jhZ6QXm3C7VhE+CnDQDtf6KKp9Cp+eD7xm7opf3uXoE54WJJPpwNEvLx0
	 8X/ln4E9cESOQ8jBCDqHVuOoCxDHJYS8urflrQL7mkzkvFDU7rT3ngeAJSolKA1cjx
	 uBYWS6mnn0VCD3iWD9zn1TX9E3vAVafy4tcpUvNGmqFDuK6XOBLlt8Vt829QYUQcTS
	 yWC0/Qr0VKi3MKQY13UnnDT00jCY9lZBGQz8qB9zEWEvQovq/0VQ8fgYuR4CM6eTu3
	 2iGsCr1/EHxq7QRK1emSkOD4Giy+y3O6lD8zn12Nf88MIdbchhDfZGEebXBKJrVBRi
	 SS9Jb+gH0kxwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D105260AA9;
	Tue,  7 Jan 2025 17:07:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 75A7BDB4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 17:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 706D0408BA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 17:07:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eOdxnuMd4CpQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 17:07:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 665A0408A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 665A0408A0
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 665A0408A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 17:07:42 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-2164b662090so204928175ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 07 Jan 2025 09:07:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736269662; x=1736874462;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=H6IgG8TBqPF+D4hNW02w96Pdr6FXNShPU0XiGtGLP2U=;
 b=hCa0lVY7jxyVX3BrS0LPAw1zv8au58mhv3x2Et15MgXeyL3UBsFozK4HkECn9vDgWV
 tvk806STGVAuyBPYNPx+c8n2rgCR9jKTCTCe9pPteRzrRPUP0OA7kvzzSzvVuY0u3VDJ
 tpt5f8KjRXUpSG68DOQuJYcoX3hO9sy4pJW5Eu0R1FFdhPiMlfszZ0Bet8O+oMv6dkmz
 Sd/cIfk/pQmHo7jGNyyXhI92grJ/SYO4PgVWgoVQp6MdaSVANc+YZmoMFOx7iE8nRxyM
 l4cAEy0lHiHb1kz0+TZkAOKfZAbW7Ca+pXLNtIBAI1ytrJVkG2ibq42YIJ07Pmh+rjuc
 IWmw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXVVHymaeE70/fxz93BkB7tvL1lpFAbP99EtP425S6HtkVQBVBncFLypOC70oWLT4g8HvXn925PbiwD4JfKqTA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzLCCTcsEz4BFbF6ZFmvZSAOeBJO06zU0+x/zOpaHyKnrMt8j6z
 j8aBxTgZxi56OOYwjw1PsTp4yyE+CsXMfh6Yec4etJcGWEJtA8s=
X-Gm-Gg: ASbGnctDgLWBnEsUaMeKf2Pu/NkyQQvJXnXbpl9OEQtz88grNSPVd5IuuNoSKYAOy3G
 B/+kKJAkREQlbwlimuliook0+dxhJZLFmuUUypfm51MFoT8R6T0CGSN15HFc1vQPPWkxy97J5AE
 El4/8O6d14XXhfufKAoJan2CC197NSkPFRatrAkj7Iq9T/MZA3iim80OU6QK3ynbYau7+7YgnCS
 spOCVdog4TRqiluA010pcWKzD7cIQbeN9wU+IG7JQgbTzKKAGuB3HjR
X-Google-Smtp-Source: AGHT+IHI4UAilr4fOsWcWRXO8E8vJoNjH2hq0o3vxddLmqIYgmVN8lBTyI8wQrNNttLzXRdwB4KPiw==
X-Received: by 2002:a17:902:ce92:b0:215:5ea2:6544 with SMTP id
 d9443c01a7336-219e6e8c365mr758236605ad.7.1736269661645; 
 Tue, 07 Jan 2025 09:07:41 -0800 (PST)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-219dca04ce7sm305940015ad.283.2025.01.07.09.07.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2025 09:07:41 -0800 (PST)
Date: Tue, 7 Jan 2025 09:07:40 -0800
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
 Amritha Nambiar <amritha.nambiar@intel.com>,
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
Message-ID: <Z31fXHxWuKNog_Qh@mini-arch>
References: <20250106135658.9734-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250106135658.9734-1-yoong.siang.song@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736269662; x=1736874462; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=H6IgG8TBqPF+D4hNW02w96Pdr6FXNShPU0XiGtGLP2U=;
 b=TRart90Apzy7Ys2m0ke5Koqi8JRFnOkaB5xLAp6fU8no6g8Tz4YyGCIApeXzphRajr
 b9gmY2Yd/TTbGH0Gp9/lhc1o5Z2pKbNzVELR4CNLqcgmgBPXGf/O7JukD8UZLMrU6DX7
 SHA9VxNIp4MKDTfxlHTiymPBviNBs+b0v/yUgFSbQfMtiE00fyF3hHuFpO9vddZzYCxV
 OrE524/U8QWnox1ETrkO1xwVYclKvjhkWu78hGvHI1rGdz0JcytGFBkdnTYGURDTi510
 Nzmebe4jN9zdvCRwBifLivRekznsO6g1xkX2cH3Z2EqJZPB5Ym6tp/ou26/DtBadkQhs
 wShw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=TRart90A
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 3/4] net: stmmac: Add
 launch time support to XDP ZC
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

On 01/06, Song Yoong Siang wrote:
> Enable launch time (Time-Based Scheduling) support to XDP zero copy via XDP
> Tx metadata framework.
> 
> This patch is tested with tools/testing/selftests/bpf/xdp_hw_metadata on
> Intel Tiger Lake platform. Below are the test steps and result.
> 
> Test Steps:
> 1. Add mqprio qdisc:
>    $ sudo tc qdisc add dev enp0s30f4 handle 8001: parent root mqprio num_tc
>      4 map 0 1 2 3 3 3 3 3 3 3 3 3 3 3 3 3 queues 1@0 1@1 1@2 1@3 hw 0
> 
> 2. Enable launch time hardware offload on hardware queue 1:
>    $ sudo tc qdisc replace dev enp0s30f4 parent 8001:2 etf offload clockid
>      CLOCK_TAI delta 500000
> 
> 3. Add an ingress qdisc:
>    $ sudo tc qdisc add dev enp0s30f4 ingress
> 
> 4. Add a flower filter to route incoming packet with VLAN priority 1 into
>    hardware queue 1:
>    $ sudo tc filter add dev enp0s30f4 parent ffff: protocol 802.1Q flower
>      vlan_prio 1 hw_tc 1
> 
> 5. Enable VLAN tag stripping:
>    $ sudo ethtool -K enp0s30f4 rxvlan on
> 
> 6. Start xdp_hw_metadata selftest application:
>    $ sudo ./xdp_hw_metadata enp0s30f4 -l 1000000000
> 
> 7. Send an UDP packet with VLAN priority 1 to port 9091 of DUT.

Tangential: I wonder whether we can add the setup steps to the
xdp_hw_metadata tool? It is useful to have one command to run that
takes care of all the details. Same way it already enables HW
tstamping.. 

Or, if not the full setup, some kind of detection we can signal to the
user that some things might be missing?
