Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D06AB1715F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 14:37:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B44E84625;
	Thu, 31 Jul 2025 12:37:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m_56rBFKFn2X; Thu, 31 Jul 2025 12:37:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D615084627
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753965463;
	bh=A4A1KuvEouS9TtOSlFEbRPD4ArfsYZcTneOK99CBcgQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DQSVui7qW81uIQRu1+vJJTSjdUGThLuOuZkoJi/dtn3fA78RmJOW9HyBeZyoc/aMm
	 SpfUpi754shlhmxCCAicaLdFS/FqXu8G91CLl7GHaq80ghFdJTOTCMUTRVB4diZNWT
	 q8zQmBZdQEaKvM21l0NlGEfQa9hudva1134GYkZ1SBK212ZhAABvX5G/FKxtb0ZDBL
	 t+QtqsIRzBmx0qNpjbWHJA9J7fqI5iz/AbgS3018gJCrf5Uq5plDXypfpv2mSOT+AY
	 VuRT+KH2iD9srMFJRF5Efq3gSLWHS9eVfnRAWz0HlsI6cVpuMDP6fqlchHh8h/6Vmi
	 jWPpZyUlz3f3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D615084627;
	Thu, 31 Jul 2025 12:37:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 87735160
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 12:37:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 84F05428BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 12:37:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OX7cJVB2FCyo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 12:37:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A4497428C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4497428C4
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4497428C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 12:37:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id EFECA60205;
 Thu, 31 Jul 2025 12:37:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F192C4CEEF;
 Thu, 31 Jul 2025 12:37:36 +0000 (UTC)
Date: Thu, 31 Jul 2025 13:37:34 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kees Cook <kees@kernel.org>, linux-hardening@vger.kernel.org
Message-ID: <20250731123734.GA8494@horms.kernel.org>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
 <20250730160717.28976-17-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250730160717.28976-17-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753965459;
 bh=F4N7j7/R3qLxjx+q87bCvU+pu2qGV4lJnYfHs/FMkUE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JXoftS7d09eZDDde0RkubC0VZ4i2xxqIuOF6q5qj6gKuaj4qQULek3H0nC+TRCw7h
 mpmzhVdFQbqqNryB8UMw19P4ZXimeqkuL/x+WWKXSsDQYnaNAFA0xcG+SxQ9SQeDL6
 jt9KNxFBXbNn0zJE94zFraiz2qqztJSCsY8XVMHsBqGn+VPrEZXLcW/zCWM2DEwHeD
 w/sT+a2v54oKoLYPDDOEsQ4qOhudihIDk/hFVjum3UrRfL/YmbskI7NoPxzgFvHfNN
 sSJ4GV1poAd4kYFa7O/NMpLlHkXxr9yrQ73sNlAvnIpi30ge4kQOJrj5ne6yWmG+nj
 WuDhERQm2e0JA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=JXoftS7d
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 16/18] idpf: add support
 for XDP on Rx
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

+ Kees, linux-hardening

On Wed, Jul 30, 2025 at 06:07:15PM +0200, Alexander Lobakin wrote:
> Use libeth XDP infra to support running XDP program on Rx polling.
> This includes all of the possible verdicts/actions.
> XDP Tx queues are cleaned only in "lazy" mode when there are less than
> 1/4 free descriptors left on the ring. libeth helper macros to define
> driver-specific XDP functions make sure the compiler could uninline
> them when needed.
> Use __LIBETH_WORD_ACCESS to parse descriptors more efficiently when
> applicable. It really gives some good boosts and code size reduction
> on x86_64.
> 
> Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Hi Alexander, all,

Sorry for providing review of __LIBETH_WORD_ACCESS[1] after the fact.
I had missed it earlier.

While I appreciate the desire for improved performance and nicer code
generation. I think the idea of writing 64 bits of data to the
address of a 32 bit member of a structure goes against the direction
of hardening work by Kees and others.

Indeed, it seems to me this is the kind of thing that struct_group()
aims to avoid.

In this case struct group() doesn't seem like the best option,
because it would provide a 64-bit buffer that we can memcpy into.
But it seems altogether better to simply assign u64 value to a u64 member.

So I'm wondering if an approach along the following lines is appropriate
(Very lightly compile tested only!).

And yes, there is room for improvement of the wording of the comment
I included below.

diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index f4880b50e804..a7d3d8e44aa6 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -1283,11 +1283,7 @@ static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
 	const struct page *page = __netmem_to_page(fqe->netmem);
 
 #ifdef __LIBETH_WORD_ACCESS
-	static_assert(offsetofend(typeof(xdp->base), flags) -
-		      offsetof(typeof(xdp->base), frame_sz) ==
-		      sizeof(u64));
-
-	*(u64 *)&xdp->base.frame_sz = fqe->truesize;
+	xdp->base.frame_sz_le_qword = fqe->truesize;
 #else
 	xdp_init_buff(&xdp->base, fqe->truesize, xdp->base.rxq);
 #endif
diff --git a/include/net/xdp.h b/include/net/xdp.h
index b40f1f96cb11..b5eedeb82c9b 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -85,8 +85,19 @@ struct xdp_buff {
 	void *data_hard_start;
 	struct xdp_rxq_info *rxq;
 	struct xdp_txq_info *txq;
-	u32 frame_sz; /* frame size to deduce data_hard_end/reserved tailroom*/
-	u32 flags; /* supported values defined in xdp_buff_flags */
+	union {
+		/* Allow setting frame_sz and flags as a single u64 on
+		 * little endian systems. This may may give optimal
+		 * performance. */
+		u64 frame_sz_le_qword;
+		struct {
+			/* Frame size to deduce data_hard_end/reserved
+			 * tailroom. */
+			u32 frame_sz;
+			/* Supported values defined in xdp_buff_flags. */
+			u32 flags;
+		};
+	};
 };
 
 static __always_inline bool xdp_buff_has_frags(const struct xdp_buff *xdp)

[1] https://git.kernel.org/torvalds/c/80bae9df2108


...
