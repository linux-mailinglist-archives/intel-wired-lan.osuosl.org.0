Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4087B17569
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 19:05:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EC09846B1;
	Thu, 31 Jul 2025 17:05:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ArFmNrZJSppY; Thu, 31 Jul 2025 17:05:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9EC6846AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753981552;
	bh=pSV6VWntSX18EcrIQyqgacZTaSkFwaiwlgpBWxGCe+U=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bGtASvXC9Xz6As+wLdR9/2bv8xkdxWsQXVK2GM1d0mA8nfJ+7v8TeBZlMBjxS12SU
	 2UrfgDUzW0pb1b48CoFYkNH6Hb4Cq4Ma3rcTeN5s60UQ4AIi9bwnX9KhaDDTNUsJNE
	 5NOD4AE93kbsaKQesao6whDgf3POw+uEuqbfY9BKkQmi98znmir714fT8hD7qOSooz
	 BM2iBAQZSK1r2rkDdmdApKX4FYaFuFVGPWjoJ8ateBtujciLbPZAJKRfminWeBiUtx
	 Te2Tk7HNx5L/HMG/SILi+8VaW0n+Yn3VHSjgimm9JNdN/lpImJX9xbOWjNj96MwALi
	 obZMT/ojbCHOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9EC6846AF;
	Thu, 31 Jul 2025 17:05:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A3CCC168
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 17:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95D0B6141D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 17:05:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4TBvrYLvU2x6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 17:05:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kees@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DD47B60B8B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD47B60B8B
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD47B60B8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 17:05:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 721D1A55566;
 Thu, 31 Jul 2025 17:05:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09D6BC4CEEF;
 Thu, 31 Jul 2025 17:05:48 +0000 (UTC)
Date: Thu, 31 Jul 2025 10:05:47 -0700
From: Kees Cook <kees@kernel.org>
To: Simon Horman <horms@kernel.org>
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, Michal Kubiak <michal.kubiak@intel.com>,
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
 linux-hardening@vger.kernel.org
Message-ID: <202507310955.03E47CFA4@keescook>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
 <20250730160717.28976-17-aleksander.lobakin@intel.com>
 <20250731123734.GA8494@horms.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250731123734.GA8494@horms.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753981548;
 bh=cygdeMZgK8iW3+xuI2Q01zkcGjAmxwn4nIdnViALepc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G0ZCTUEKD9dun9DBxQYzx4GHq2lIpW/KDI9pFeE32zJIBNpUzP/FFvrdecrjwQf84
 Snz90sAhbikpsX3fCAvtqQoNR3Yl8YuLiqUxPCciFpUuiRnX08tO6sxyKF7IpEYKay
 f3yvKnhu01DA9k4hwPs81dSCklqesFppVvmDhkQAKiugR48zYm890ZcmMWfHmLW+NS
 VnJc2mvnvy986vxxBto1dpRoyZH7KTIYtRUSqgVcoU6RknqiBrdTIanBJb7FM5aYIq
 OLyH7s5ANotGLlkRTto+hjErAZ07bXo2z5GGSRUYFjEfgGYMosqxpw43tMZzhRXjjI
 0NwDzzdyIGzhA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=G0ZCTUEK
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

On Thu, Jul 31, 2025 at 01:37:34PM +0100, Simon Horman wrote:
> While I appreciate the desire for improved performance and nicer code
> generation. I think the idea of writing 64 bits of data to the
> address of a 32 bit member of a structure goes against the direction
> of hardening work by Kees and others.

Agreed: it's better to avoid obscuring these details from the compiler
so it can have an "actual" view of the object sizes involved.

> Indeed, it seems to me this is the kind of thing that struct_group()
> aims to avoid.
> 
> In this case struct group() doesn't seem like the best option,
> because it would provide a 64-bit buffer that we can memcpy into.
> But it seems altogether better to simply assign u64 value to a u64 member.

Agreed: with struct_group you get a sized pointer, and while you can
provide a struct tag to make it an assignable object, it doesn't make
too much sense here.

> So I'm wondering if an approach along the following lines is appropriate
> (Very lightly compile tested only!).
> 
> And yes, there is room for improvement of the wording of the comment
> I included below.
> 
> diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
> index f4880b50e804..a7d3d8e44aa6 100644
> --- a/include/net/libeth/xdp.h
> +++ b/include/net/libeth/xdp.h
> @@ -1283,11 +1283,7 @@ static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
>  	const struct page *page = __netmem_to_page(fqe->netmem);
>  
>  #ifdef __LIBETH_WORD_ACCESS
> -	static_assert(offsetofend(typeof(xdp->base), flags) -
> -		      offsetof(typeof(xdp->base), frame_sz) ==
> -		      sizeof(u64));
> -
> -	*(u64 *)&xdp->base.frame_sz = fqe->truesize;
> +	xdp->base.frame_sz_le_qword = fqe->truesize;
>  #else
>  	xdp_init_buff(&xdp->base, fqe->truesize, xdp->base.rxq);
>  #endif
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index b40f1f96cb11..b5eedeb82c9b 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -85,8 +85,19 @@ struct xdp_buff {
>  	void *data_hard_start;
>  	struct xdp_rxq_info *rxq;
>  	struct xdp_txq_info *txq;
> -	u32 frame_sz; /* frame size to deduce data_hard_end/reserved tailroom*/
> -	u32 flags; /* supported values defined in xdp_buff_flags */
> +	union {
> +		/* Allow setting frame_sz and flags as a single u64 on
> +		 * little endian systems. This may may give optimal
> +		 * performance. */
> +		u64 frame_sz_le_qword;
> +		struct {
> +			/* Frame size to deduce data_hard_end/reserved
> +			 * tailroom. */
> +			u32 frame_sz;
> +			/* Supported values defined in xdp_buff_flags. */
> +			u32 flags;
> +		};
> +	};
>  };

Yeah, this looks like a nice way to express this, and is way more
descriptive than "(u64 *)&xdp->base.frame_sz" :)

-- 
Kees Cook
