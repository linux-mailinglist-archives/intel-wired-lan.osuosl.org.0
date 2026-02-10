Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oA7eHfOwjGkDsQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B8B1263D0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56E206111C;
	Wed, 11 Feb 2026 16:40:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qRzMyy4fvgDZ; Wed, 11 Feb 2026 16:40:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 739D060B54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770828007;
	bh=jL+ZA49EZbpc9uLVMpGGSoBkpi1nqcUjoi98EzlV52M=;
	h=In-Reply-To:References:From:To:Cc:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MUh+Bbt3HnQCAuxlcbPHJVZHMFA5OmjR2TqD3vNFkClETYdwBwH8jIdmxN966XZvM
	 FnQGcXnnkSgwKkweIANTyQNP0In/+x1JTitWxXrp/Wtx5A1FP5e4/cJig1Z100XZN7
	 F0OJasp/SF3Plk644mH2tAxkeNKrL3ok5HKWjJRCTzxxBZVv+mRSsQ1FBK4RPolh1e
	 ospOhTSVE69yHEANaBph4f5ooTN5BgnIEV5gyDL5qwEfbJVRXcpP6cNkT+LqPERaEY
	 khFFEsD2rdgQEko9gAo/Zcb9DilV0LcyxIdziYQ0G5wRzbqeqNUH4uAdBPj9WGClSS
	 SpNHcYGu3O2bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 739D060B54;
	Wed, 11 Feb 2026 16:40:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A92423D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4CBA0411C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:55:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D5y6j3puG3Ed for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 17:54:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=bot+bpf-ci@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7BE20411AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BE20411AD
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BE20411AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:54:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7EE6C60141;
 Tue, 10 Feb 2026 17:54:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2AFAC116C6;
 Tue, 10 Feb 2026 17:54:57 +0000 (UTC)
Content-Type: multipart/mixed; boundary="===============5180779401008178218=="
MIME-Version: 1.0
Message-Id: <47acb6cc57c54a7f63de587c66306f0cc006907afe0601049f63e22af812d175@mail.kernel.org>
In-Reply-To: <20260210-bpf-xdp-meta-rxcksum-v1-2-e5d55caa0541@kernel.org>
References: <20260210-bpf-xdp-meta-rxcksum-v1-2-e5d55caa0541@kernel.org>
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
 lorenzo@kernel.org, ast@kernel.org, andrii@kernel.org, daniel@iogearbox.net,
 martin.lau@kernel.org, eddyz87@gmail.com, yonghong.song@linux.dev,
 clm@meta.com, ihor.solodrai@linux.dev
Date: Tue, 10 Feb 2026 17:54:57 +0000 (UTC)
X-Mailman-Approved-At: Wed, 11 Feb 2026 16:40:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770746098;
 bh=bXbCzhilE2J1SjH3AHgYT2z07lxejMikTfvqH+y+qsc=;
 h=In-Reply-To:References:Subject:From:To:Cc:Date:From;
 b=jki4NPnZhrV89b2prpfvMmoM6uGwcVy6PdQWTQnHuSN1f432jef3qLeFkLhYSTBnI
 jjF7ppW7Odwvx3ln0iORuiw0rYe1ebei7PNeWhadvHWqoQ3rI/wY6U8h9eOg3TSlL5
 3KyO3SFDcnHtRuswDPxwBJPFkJGA4+KfDmdF5l9CeN+/Ys0GtdwF+Cx6eJU101aOgb
 OTKA9vPRpFWTHQs9RYTWvGqhpb17VOigGhZ4apso0Q7tbwnr9ruJ3qA6A4R7F+5kTf
 t33TipPx9J1JoasEN0Cha7pvzBzK2i/d9fxvl7UjlWtB9qaxADFOTDriLZSj4cMOfD
 8m63hJkKTVlrA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jki4NPnZ
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/5] net: veth: Add
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bpf-ci];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:martin.lau@kernel.org,m:clm@meta.com,m:ihor.solodrai@linux.dev,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	FORGED_SENDER(0.00)[bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[40];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[cloudflare.com,vger.kernel.org,lists.osuosl.org,kernel.org,iogearbox.net,gmail.com,linux.dev,meta.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mail.kernel.org:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
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
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E3B8B1263D0
X-Rspamd-Action: no action

--===============5180779401008178218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

> diff --git a/drivers/net/veth.c b/drivers/net/veth.c
> --- a/drivers/net/veth.c
> +++ b/drivers/net/veth.c
> @@ -1693,6 +1693,25 @@ static int veth_xdp_rx_vlan_tag(const struct xdp_md *ctx, __be16 *vlan_proto,
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
> +	/* For locally generated packets ip_summed is set to
> +	 * CHECKSUM_PARTIAL.
> +	 */
> +	*ip_summed = skb->ip_summed;
> +	*cksum_meta = 0;

Should cksum_meta return different values based on ip_summed?

The API documentation in net/core/xdp.c states that cksum_meta should contain:
- the hw computed checksum value for XDP_CHECKSUM_COMPLETE
- the csum_level for XDP_CHECKSUM_UNNECESSARY
- 0 for XDP_CHECKSUM_NONE and XDP_CHECKSUM_PARTIAL

The ice driver implementation in this same series handles these cases:

    switch (ip_summed) {
    case XDP_CHECKSUM_COMPLETE:
        *cksum_meta = csum_unfold(...);  /* hw computed checksum */
        break;
    case XDP_CHECKSUM_UNNECESSARY:
        if (tunnel)
            *cksum_meta = 1;  /* csum_level */
        break;
    default:
        *cksum_meta = 0;
        break;
    }

While veth typically handles locally generated packets (CHECKSUM_PARTIAL) or
packets with CHECKSUM_NONE, packets forwarded from other interfaces could have
CHECKSUM_COMPLETE or CHECKSUM_UNNECESSARY with csum_level > 0.

Would something like the following be more consistent with the API:

    switch (skb->ip_summed) {
    case CHECKSUM_COMPLETE:
        *cksum_meta = skb->csum;
        break;
    case CHECKSUM_UNNECESSARY:
        *cksum_meta = skb->csum_level;
        break;
    default:
        *cksum_meta = 0;
        break;
    }

> +
> +	return 0;
> +}

[ ... ]


---
AI reviewed your patch. Please fix the bug or email reply why it's not a bug.
See: https://github.com/kernel-patches/vmtest/blob/master/ci/claude/README.md

CI run summary: https://github.com/kernel-patches/bpf/actions/runs/21875603263

AI-authorship-score: low
AI-authorship-explanation: The commit follows established kernel patterns, has a concise commit message, and is authored by a known kernel contributor with extensive networking experience.
issues-found: 1
issue-severity-score: low
issue-severity-explanation: API inconsistency where cksum_meta always returns 0 instead of returning skb->csum for CHECKSUM_COMPLETE or skb->csum_level for CHECKSUM_UNNECESSARY as documented.

--===============5180779401008178218==--
