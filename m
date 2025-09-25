Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC36BA0259
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 17:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3554984214;
	Thu, 25 Sep 2025 15:11:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sn1wOPFL-Lu8; Thu, 25 Sep 2025 15:11:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EFAF8420D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758813079;
	bh=qoutmRJfBiooSSHCtQV7QJz0oS7nanw5QS3919xibtc=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O2qr8tbxlG/MPgBGmh3Fgy9v8dVups15jZAMHQ+PTdhtryDnj4U/ZM1Bp/V3jFIyg
	 qDojrB1nD6fdtX0DjFuYmw7nAK/8K77UxDrn+rfVfHZbvL46iAqpaE3OpK+5unc1+Z
	 MgIusBPJYDFGqu3NYDuUUBLRtjp2Xqy0A9UoY7e3NC7bbTWayBpmgVLREiIfPdq8j1
	 bLCnvKTtHeDLdcxXNLwyuOEeyG0FY1tm+HZvwAkONEGWVwpvrW26rbvSdPKQ8k+9nq
	 oQkF11F4O8E3LnKc/YQeeJR7bsu/IqHAmlNWo91EdaMz7IJ+ZsoTdCaGpSOLrd1CH2
	 Ss6DOPee06f4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EFAF8420D;
	Thu, 25 Sep 2025 15:11:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A806199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 10:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C0CD4096D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 10:58:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s3yeVOXYDeSj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 10:58:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::635; helo=mail-ej1-x635.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 94F2340527
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94F2340527
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94F2340527
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 10:58:18 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-b0787fdb137so137860266b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 03:58:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758797896; x=1759402696;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qoutmRJfBiooSSHCtQV7QJz0oS7nanw5QS3919xibtc=;
 b=BLruFcIqjliWlLWt8TEaGYujzBGRwoay8zryQDdsi3XJslbR0KtXwmawS5tcSxQh7b
 Cnbi7ztyYT6Z89i/PRq/TqkN+4oVHdRqrDCaaorVYRRfuWXDXbT+xDtsDmczbAoZpQT9
 I7e9pZJX2+inZcOHM/Eu6PigtsVQ7ZJ3WPLI/Ih02ljGJIMrk8RsYMnyn7//CuGVYnIf
 0j5MMSahq+G3k7kVkgoW5mjYk74yZ/TB6mphzBVpHgYvmZeNah1UkQMlrvJx+nVU48LL
 jA0+sUE4mhC6NqvWIupvb39LBlANzMf+NT9miO2/N27B0d/Xoi5OaY0XswQiR8WIAEMP
 HqWQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKh4L2YMguyA+l4LHQadHnYaaTnBUeUHsGgVZF68pCze4HpfO1/8BmmIKJsHpR6zSABAp+WG9Dasw1fJkljK4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzG9K/PNGuJ2MJ6CGnjw5B6AOkytl+lnsNFbOmnU/f8NlHt2lxL
 cTfAw6PwpXeFXPy8yJjqSmJ3Kqefq4Vv6k4pcVJ2YuRauOMnjavCG2A9ysfkVDwlqRk=
X-Gm-Gg: ASbGncsNrvMEnzsybJlVuRz7jZDWP4Q0aizaUA20fLwTJ8GeFNFN+2RJckcyDNQhxk9
 s49cNo1lMBzzAMuxplsKgzxWfytyNbPiQjsgx7qOVEIWBIkuWlfC3CiEziLk/9XS3hxzw9D/5Gl
 DYB/K5hl/EvRq+TIpYo9y6MUefpjfAS8IPqfeqXKVkQV/kU+EicPAx79yayWLovfjBJ0ju2QnQd
 CgdG+kCNPja14zkhylZkDn/TEbl7lOsDeJ6bdTXqYki7rpZTptQTew8r4ALPVsyw/I1g4EL7/AC
 Lc2XCNeEW8ZSCUicc/atP0TALV//ekpsDhSDkbl5z9s5N8H93s1p8ZvjJtZ/A2qe4qjCGBqxiAr
 gsnuo8WOVc0hE4bM=
X-Google-Smtp-Source: AGHT+IEinH3OcipauCDmRqja5aQEPZ/J+HFOTVgp17H/W3ZS2eXjpFNwJ5ilU5Q4ue35F4Z7ahPnlw==
X-Received: by 2002:a17:907:3d90:b0:b10:3eb2:2074 with SMTP id
 a640c23a62f3a-b34baa34934mr375500866b.18.1758797896306; 
 Thu, 25 Sep 2025 03:58:16 -0700 (PDT)
Received: from cloudflare.com ([2a09:bac6:d677:295f::41f:5e])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b353efa4c35sm143452466b.26.2025.09.25.03.58.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Sep 2025 03:58:15 -0700 (PDT)
From: Jakub Sitnicki <jakub@cloudflare.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Donald Hunter <donald.hunter@gmail.com>,  Jakub Kicinski
 <kuba@kernel.org>,  "David S. Miller" <davem@davemloft.net>,  Eric Dumazet
 <edumazet@google.com>,  Paolo Abeni <pabeni@redhat.com>,  Simon Horman
 <horms@kernel.org>,  Alexei Starovoitov <ast@kernel.org>,  Daniel Borkmann
 <daniel@iogearbox.net>,  Jesper Dangaard Brouer <hawk@kernel.org>,  John
 Fastabend <john.fastabend@gmail.com>,  Stanislav Fomichev
 <sdf@fomichev.me>,  Andrew Lunn <andrew+netdev@lunn.ch>,  Tony Nguyen
 <anthony.l.nguyen@intel.com>,  Przemek Kitszel
 <przemyslaw.kitszel@intel.com>,  Alexander Lobakin
 <aleksander.lobakin@intel.com>,  Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,  Eduard Zingerman
 <eddyz87@gmail.com>,  Song Liu <song@kernel.org>,  Yonghong Song
 <yonghong.song@linux.dev>,  KP Singh <kpsingh@kernel.org>,  Hao Luo
 <haoluo@google.com>,  Jiri Olsa <jolsa@kernel.org>,  Shuah Khan
 <shuah@kernel.org>,  Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 netdev@vger.kernel.org,  bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,  linux-kselftest@vger.kernel.org
In-Reply-To: <aNUb2rB8QAJj-aUX@lore-desk> (Lorenzo Bianconi's message of "Thu, 
 25 Sep 2025 12:39:22 +0200")
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <87bjmy508n.fsf@cloudflare.com> <aNUb2rB8QAJj-aUX@lore-desk>
Date: Thu, 25 Sep 2025 12:58:14 +0200
Message-ID: <87tt0q3ik9.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Approved-At: Thu, 25 Sep 2025 15:11:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1758797896; x=1759402696;
 darn=lists.osuosl.org; 
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=qoutmRJfBiooSSHCtQV7QJz0oS7nanw5QS3919xibtc=;
 b=eTxDK+VYlO64p7/TaSKJUywH6Ti7iAIpGJxXlVkae7I2T9lGRNj7CQJbflZ3x8NREo
 oyTXkG68h7nFzcfvOJJwyyFeIdamwkO5W98LUbDX+LNWEZdCHx7vq4l7XxfxRY18Kk5w
 n/DGHjO7WmvjO4itThIYWlqt+/zCCFSM4Fi7enipt48aiUg9FQVUmaE0J0DqnlBpC4NK
 bgocrP8eSXfrPD3KnGhZ23xUqGMbz1f7jEOTfoJ0SqHUFOcJpe66mGXC9Ar007Q135BU
 oBfVNL+4QcB4HLX0SlmtWzjS8ADmXu/2ISmEzSVYfVYvreeeYqdnAxgVxHTIfD2xCEl0
 JYNQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=eTxDK+VY
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next v2 0/5] Add the the
 capability to load HW RX checsum in eBPF programs
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

On Thu, Sep 25, 2025 at 12:39 PM +02, Lorenzo Bianconi wrote:
>> On Thu, Sep 25, 2025 at 11:30 AM +02, Lorenzo Bianconi wrote:
>> > Introduce bpf_xdp_metadata_rx_checksum() kfunc in order to load the HW
>> > RX cheksum results in the eBPF program binded to the NIC.
>> > Implement xmo_rx_checksum callback for veth and ice drivers.
>> 
>> What are going to do with HW RX checksum once XDP prog can access it?
>
> I guess there are multiple use-cases for bpf_xdp_metadata_rx_checksum()
> kfunc. The first the I have in mind is when packets are received by an af_xdp
> application. In this case I think we currently do not have any way to check if
> the packet checksum is correct, right?
> I think Jesper has other use-cases in mind, I will let him comment
> here.

Can you share more details on what the AF_XDP application would that
info?

Regarding the use cases that Jesper is trying to unlock, as things stand
we don't have a way, or an agreement on how to inject/propagate even the
already existing NIC hints back into the network stack.

Hence my question - why do we want to expose another NIC hint to XDP
that we can't consume in any useful way yet?

Shouldn't we first figure out how we're planning to re-inject that info
into the stack?
