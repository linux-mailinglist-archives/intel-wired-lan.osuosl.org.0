Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF9CBA56DA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Sep 2025 02:41:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E87740F1F;
	Sat, 27 Sep 2025 00:41:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nOnkUYtC1B6s; Sat, 27 Sep 2025 00:41:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB1EE40F8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758933683;
	bh=hvrFXoqN+1nQAFy7eQ71jtT1jlgI9t8EdEEYW6R+OoQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZObj9oCOlNpa6nZpuiZbvj9mkBqbIzuZdeatNdqnMoWGoO7t/d4vOA3dfXQBCfGrz
	 sztSj7KZg/BUtT+CznVZWQlF9doJpjvrU54jUT1ajwmaSqQxuytdpBSREVXxb/A1Ko
	 EOMxfvuAwni7wOss9gFf8EKgBNF6VycnBNfeYvD5h1Cch63IViliFJE25tGZ/ZQFbg
	 SLeDVOkm4j25cT4L+KA0Dch97c265WeAkdsL0bh7502gBXfz3ru1Z0UN0bhVxoO0E5
	 GpHKZqU9UpCAVjs2VMtqAnBXKn04HmUEE0AJoeeFp0zteNJvDxC69YhVTcoSM1orBV
	 pfUvc4KyeioLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB1EE40F8F;
	Sat, 27 Sep 2025 00:41:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AE95198
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 00:41:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 872AC84DBF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 00:41:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lkUsXuvZbAA8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Sep 2025 00:41:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E7C4F84DB1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7C4F84DB1
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7C4F84DB1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 00:41:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C711641AE1;
 Sat, 27 Sep 2025 00:41:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 886A7C4CEF4;
 Sat, 27 Sep 2025 00:41:19 +0000 (UTC)
Date: Fri, 26 Sep 2025 17:41:18 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jesper Dangaard Brouer <hawk@kernel.org>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>, Donald Hunter
 <donald.hunter@gmail.com>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon
 Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Andrii Nakryiko <andrii@kernel.org>, Martin
 KaFai Lau <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, KP
 Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org
Message-ID: <20250926174118.23a054a7@kernel.org>
In-Reply-To: <0608935c-1c1c-4374-a058-bc78d114c630@kernel.org>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
 <0608935c-1c1c-4374-a058-bc78d114c630@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758933680;
 bh=g5wTDCdkm3VSKuvWD/nVJLosXsdzTuSUkxk7ig06G1s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gUxvY52P2ChIDgRfp15cahlHnhYPmWDcS4EjNqQtUPZQt6w+kZVK/ahEnvtBxLLW4
 e9vu9m2OpUpb5yINGjZIJNCXOcR4BhfXYX8U9OBLXXCQdmJid0zBM9F1GLnHBm3Sc/
 gFLFFBwDH2glgqyCvuuJn3atl0PfZ7Rbn8VyDksJX4ZkQcpvYrwTYybYCYGQfUeFAZ
 0ScdHjwj49rJ2thZLAk4Bm4GASGcFtrh6pKnoNPSeb79S7Cf2Y5T8+fHt9dqxk6rb1
 E/X4ez/ai13eqL+oWaJca3y6UB0bgmHtqmW0ns2gqysftVBocBxVMb9JbDZSu06R/S
 qBiUApX0Zz21A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gUxvY52P
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next v2 1/5] netlink: specs:
 Add XDP RX checksum capability to XDP metadata specs
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

On Fri, 26 Sep 2025 11:53:25 +0200 Jesper Dangaard Brouer wrote:
> What do people think: Do we leave it as an exercise to the BPF-developer
> to deduct hardware detected a wrong/failed checksum, as that is possible
> as described above.  Or do we introduce a CHECKSUM_FAILED?

I vote we leave it unless someone has a strong use case for FAILED.
Checksumming and dropping packets should be pretty cheap, it's not
worth complicating the stack with another option.
