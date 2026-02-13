Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFT8K41Kj2moPQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 17:00:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD751137C20
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 17:00:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F399823E3;
	Fri, 13 Feb 2026 16:00:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6aWltNVhj9Id; Fri, 13 Feb 2026 16:00:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96B2F81EC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770998410;
	bh=77p+HxwrQYV/QdGbJ06cvwJAESOmbiA0jVj/Ij2Tvrs=;
	h=In-Reply-To:References:From:To:Cc:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JAJ3v3vATJi2I0l8hXZ1PYAdE2ffyZoMOIWJ30NJn9EK00MrPHpRzMwcrwdfLTsEd
	 5AZcuUrpCtsdO9oCSU7eBX3ykw67vJt9ktyrsPkiLhQ5gGAcRgwl/1TlEo3IUVgmVt
	 a+bN6LL63rgZ87cZ4DBWUTdMiC8zyVrahe2kpzxPdmi19lCjfkx0bNkws7pkeO1/w0
	 pTjDv7NJVD5S6Uj9JTq1Lo+LIg65RPBEocA78bJgyJiik2muQPyfLdoLFW12htfAis
	 Rb8mpXpPo0kYbh646QK06kb1138er36DkyDAAqVQL0M3xl63Gn2sx0qa7XHqsu8TJN
	 1hRZYPTajGrBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96B2F81EC8;
	Fri, 13 Feb 2026 16:00:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 66F71EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 16:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 552E9400B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 16:00:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cvhB838MvT7F for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 16:00:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=bot+bpf-ci@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6F57440060
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F57440060
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F57440060
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 16:00:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C71616132E;
 Fri, 13 Feb 2026 16:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0815FC116C6;
 Fri, 13 Feb 2026 16:00:06 +0000 (UTC)
Content-Type: multipart/mixed; boundary="===============7943291750325700544=="
MIME-Version: 1.0
Message-Id: <73f7405c9054157df20cc9bb4babbea3e3727e2093ce508b01871557690cf24e@mail.kernel.org>
In-Reply-To: <20260213-bpf-xdp-meta-rxcksum-v2-2-a82c4802afbe@kernel.org>
References: <20260213-bpf-xdp-meta-rxcksum-v2-2-a82c4802afbe@kernel.org>
From: bot+bpf-ci@kernel.org
To: lorenzo@kernel.org, donald.hunter@gmail.com, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, sdf@fomichev.me, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 aleksander.lobakin@intel.com, andrii@kernel.org, martin.lau@linux.dev,
 eddyz87@gmail.com, song@kernel.org, yonghong.song@linux.dev,
 kpsingh@kernel.org, haoluo@google.com, jolsa@kernel.org, shuah@kernel.org,
 maciej.fijalkowski@intel.com
Cc: jakub@cloudflare.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 aleksandr.loktionov@intel.com, lorenzo@kernel.org, ast@kernel.org,
 andrii@kernel.org, daniel@iogearbox.net, martin.lau@kernel.org,
 eddyz87@gmail.com, yonghong.song@linux.dev, clm@meta.com,
 ihor.solodrai@linux.dev
Date: Fri, 13 Feb 2026 16:00:06 +0000 (UTC)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770998406;
 bh=whQkudV1SP30aO8I7dV0xsnAsYatFTQhrUgJ+sjo/1M=;
 h=In-Reply-To:References:Subject:From:To:Cc:Date:From;
 b=H2SCLUiHDLnAwodQZXTH8btk+XcP2E1n18noDQLIIGgWut55lveURlQZJGiVLPSL9
 e0hN3eLVSTFiBM1+oQXzxNulKEAVCnxVXh5BS5tvnevJflB8eLVwGVmGQ1KB749JUe
 OdAduXL5cn0KoNBLfubk0/hkxcPYGOOghizOTD2CNPFSXcANeADG60LGVAGXMtALD5
 5L29Ow1zd4EiT9db+1hQjg9VxM0i5RBFeMYIiSj3jpt6p3tzHSdpsyFIzRKKFsTW8b
 fjlDWCpqqzewoJnnq3oM7LF4/zL4dK3HIVFEt+nQR7ZtnvH3xGQt/3X9EE+e4hu+KU
 JGnHRirgi5wCg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=H2SCLUiH
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 2/5] net: veth: Add
 xmo_rx_checksum callback to veth driver
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	CTYPE_MIXED_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bpf-ci];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:martin.lau@kernel.org,m:clm@meta.com,m:ihor.solodrai@linux.dev,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	FORGED_SENDER(0.00)[bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+,1:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[cloudflare.com,vger.kernel.org,lists.osuosl.org,intel.com,kernel.org,iogearbox.net,gmail.com,linux.dev,meta.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DD751137C20
X-Rspamd-Action: no action

--===============7943291750325700544==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

> diff --git a/drivers/net/veth.c b/drivers/net/veth.c
> index 9982412fd7f2..3ec77599299a 100644
> --- a/drivers/net/veth.c
> +++ b/drivers/net/veth.c
> @@ -1697,6 +1697,35 @@ static int veth_xdp_rx_vlan_tag(const struct xdp_md *ctx, __be16 *vlan_proto,
>  	return err;
>  }
>
> +static int veth_xdp_rx_checksum(const struct xdp_md *ctx,
> +				enum xdp_checksum *ip_summed,
> +				u32 *cksum_meta)
> +{
> +	const struct veth_xdp_buff *_ctx = (void *)ctx;
> +	const struct sk_buff *skb = _ctx->skb;
> +
> +	if (!skb)
> +		return -ENODATA;
> +
> +	*ip_summed = skb->ip_summed;

Is this assignment needed? Every branch in the switch below overwrites
*ip_summed, so this line has no effect. It looks like a leftover from v1
where the raw skb->ip_summed was the intended output value.

> +	switch (skb->ip_summed) {
> +	case CHECKSUM_COMPLETE:
> +		*ip_summed = XDP_CHECKSUM_COMPLETE;
> +		*cksum_meta = skb->csum;
> +		break;
> +	case CHECKSUM_UNNECESSARY:
> +		*ip_summed = XDP_CHECKSUM_UNNECESSARY;
> +		*cksum_meta = skb->csum_level;
> +		break;
> +	default:
> +		*ip_summed = XDP_CHECKSUM_NONE;
> +		*cksum_meta = 0;
> +		break;
> +	}

[ ... ]


---
AI reviewed your patch. Please fix the bug or email reply why it's not a bug.
See: https://github.com/kernel-patches/vmtest/blob/master/ci/claude/README.md

CI run summary: https://github.com/kernel-patches/bpf/actions/runs/21992879200

AI-authorship-score: low
AI-authorship-explanation: Multiple version iterations over months with incremental refinements, a non-native English typo, and a refactoring leftover are all characteristic of human development.
issues-found: 1
issue-severity-score: low
issue-severity-explanation: Dead code assignment from v1 refactoring leftover has no functional impact but is unnecessary.

--===============7943291750325700544==--
