Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E50BA56D1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Sep 2025 02:35:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 405DB42315;
	Sat, 27 Sep 2025 00:35:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fIkWkqUdtKif; Sat, 27 Sep 2025 00:35:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC3D5422E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758933344;
	bh=jrTOALZ+vEKfAojvBZ83g47hV75c61+8TyUTBoWZqlY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8EwD7JzZaVP7ZWiSDtcBb/9RuykaZUOGEyMFCczlanBhK02BMbpfK2XnGeSNb0Ngu
	 hYPmi/nq3GaO5XUBaw+oCwhLTAWr3xIb9o9Yjin7/jZZt7giUKY+m0Taq0iw5bUKq9
	 vjwIexDngFBTioMcy5F8d74fi6Ar3rTGhVabTkz9+m3DgeyowZXZJxNPPsVpUreYZ0
	 DTjH36nOH31p5FlCODuWnWYAFRiBjAxc7zVP+jP89FsPiP9PUaqzA2x0WCggMr3l3g
	 7ExNnLnm7ghGtfn54wTqjCflcmogY4LIPxCVzSiP2u+TuitjyBupp9iizkdICgc0XO
	 o/Vg17dxL0j0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC3D5422E4;
	Sat, 27 Sep 2025 00:35:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 839F1177
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 00:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A83441F5E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 00:35:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fWPQbvneAtaa for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Sep 2025 00:35:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CB8B94127D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB8B94127D
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB8B94127D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 00:35:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BFC2E61FB7;
 Sat, 27 Sep 2025 00:35:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 512A2C4CEF4;
 Sat, 27 Sep 2025 00:35:40 +0000 (UTC)
Date: Fri, 26 Sep 2025 17:35:39 -0700
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
Message-ID: <20250926173539.17403e94@kernel.org>
In-Reply-To: <0608935c-1c1c-4374-a058-bc78d114c630@kernel.org>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
 <0608935c-1c1c-4374-a058-bc78d114c630@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758933341;
 bh=6LZQOG26MoTzz2WiVd7VfoJ2nPId6GoJXe3Q2HKktN8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=O2AiDi3PUCkALX6/ryb+c/2gTaAulq08805GgjYhgjLQWuQ+HZuvS5hV3bXoze4qa
 KeHqxqXMToSklYCbuntu1G89K5uD0aF8uX3CLl08p5oIdTKwlh7TTL0YlR5mBJ5Tq8
 AjG0OkjH3t/8TmQs06naA4DMQ4vggNelv1NdAox+4zEyzMtvfMbfG7+2ROqa3LLS+S
 2YmDqubGDpnUwmIyGJ51Vd5kkZnJT42Bk/Q7jSTgGP1MlcLssfFMtd4cB5McpWCLBF
 M1Gavgvd78hMrmrjB8JNTeeJwFlFPPTE5rurZA/M54dU0HLr8gEBvb3baC5WVCoMF3
 P89DHt3ATZwxg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=O2AiDi3P
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
> > + * In case of success, ``cksum_meta`` contains the hw computed checksum value
> > + * for ``XDP_CHECKSUM_COMPLETE`` or the ``csum_level`` for
> > + * ``XDP_CHECKSUM_UNNECESSARY``. It is set to 0 for ``XDP_CHECKSUM_NONE`` and
> > + * ``XDP_CHECKSUM_PARTIAL``.
> > + *  
> 
> It is very important that we explain the meaning of XDP_CHECKSUM_NONE.
> As I hinted in other email, this also covers the non-existing FAIL case.

Good idea, perhaps we should add this to the big comment about
checksums in skbuff.h and point to that? Avoid the duplication?
