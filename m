Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AaTNeuwjGkDsQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C841263C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D46B481090;
	Wed, 11 Feb 2026 16:40:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yeS9DFn9hAQ4; Wed, 11 Feb 2026 16:40:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0887F8104C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770828008;
	bh=YpXiaYnVmqNwidZkJEnmtG0TR4avoOOBSxThfNjSxd0=;
	h=In-Reply-To:References:From:To:Cc:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CX/lpT4qWHQrtF/Hd0FGSoO/JKtjd6Kt/MQ+TVK4s4Ud78Mm25EDHGybI2Y9NiCMh
	 ILJDzcxQxzJtE6OZVL7EmSCb5Z+IgsA6n+N6Q6FV2uukfGw7+1zYSqsLx53PKfAzb5
	 xbuhX3+JrrekMmvitsO3ztKRSFpzm32HIPpvUcyiHGE0nRhKtjXMMDylmt8H0d8FE2
	 gZQkS2PB+iSaNgdfgoUxZOakj8+hoYrc8lZ3HeC6bLTEWPourupNU8PQVejxHi7t1W
	 xq6NelzgDplVg9ebtPbsWBVl7hF1AhRa6b6wRn3JmjdaxGJx3hmXivE3nu+yS67SID
	 vKkmTHDf6lb1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0887F8104C;
	Wed, 11 Feb 2026 16:40:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 74D4F2EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56E2660C17
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:55:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJQGlPtRWztb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 17:55:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=bot+bpf-ci@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7B1BC60B5A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B1BC60B5A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B1BC60B5A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:55:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1F5074091D;
 Tue, 10 Feb 2026 17:55:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71B82C116C6;
 Tue, 10 Feb 2026 17:54:59 +0000 (UTC)
Content-Type: multipart/mixed; boundary="===============0303600655882961055=="
MIME-Version: 1.0
Message-Id: <dd3b3afa8e6e8b17cf8ee8b20afd776ee37341ecefedfc1e921a8171bae29cee@mail.kernel.org>
In-Reply-To: <20260210-bpf-xdp-meta-rxcksum-v1-5-e5d55caa0541@kernel.org>
References: <20260210-bpf-xdp-meta-rxcksum-v1-5-e5d55caa0541@kernel.org>
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
Date: Tue, 10 Feb 2026 17:54:59 +0000 (UTC)
X-Mailman-Approved-At: Wed, 11 Feb 2026 16:40:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770746100;
 bh=1LMuUcwE1wyJRGlh8WvdZKXrTG99TlMZf6rQ/9HEioY=;
 h=In-Reply-To:References:Subject:From:To:Cc:Date:From;
 b=rjpSXJC1JmdOiDmWcR4D9NYq0bDPcFfqRldKoNI0qo5lSCr2gCHBonjiRmEve4b9I
 izaJSEMN6WOKT4o2P/VuRs/ThZvqbLEfUHeXRDPcxXFh14rsi+3BvuEuS+i1mf0zEl
 5rIgZWUPJpHs34mxL71ktuBrNB5EhQw3pWSHgwZoV6BMmAwV5HlRjiVxMZxuOdqXTu
 yk3XDXot+mqftV5JR38GqFOyayAYVJn6fK/fbw9M2MxCqEGtE79g+yHECytKILajTH
 LVwCWBlEFKGrB3pJPmtrsCuOPh5aQtFNKBDnRIz0r/D4ikuNLTy0a69KB05DN5VHnS
 32N1Gt9gURdgg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rjpSXJC1
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 5/5] selftests/bpf: Add
 bpf_xdp_metadata_rx_checksum support to xdp_hw_metadat prog
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
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	CTYPE_MIXED_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bpf-ci];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	FREEMAIL_CC(0.00)[cloudflare.com,vger.kernel.org,lists.osuosl.org,kernel.org,iogearbox.net,gmail.com,linux.dev,meta.com];
	MIME_TRACE(0.00)[0:+,1:+];
	RCPT_COUNT_TWELVE(0.00)[40];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:martin.lau@kernel.org,m:clm@meta.com,m:ihor.solodrai@linux.dev,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 57C841263C2
X-Rspamd-Action: no action

--===============0303600655882961055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

> selftests/bpf: Add bpf_xdp_metadata_rx_checksum support to xdp_hw_metadat prog

This isn't a bug, but there's a typo in the subject line - "xdp_hw_metadat"
should be "xdp_hw_metadata".

> diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
> --- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c

[ ... ]

> +	if (meta->hint_valid & XDP_META_FIELD_CHECKSUM)
> +		print_rx_cksum(meta->ip_summed, meta->cksum_meta);
> +	else
> +		printf("No rx_chsum, err=%d\n", meta->rx_cksum_err);
                    ^^^^^^^^

Should "rx_chsum" be "rx_checksum"?  The other error messages in this
function use the full field names: "rx_hash", "rx_timestamp",
"rx_vlan_tci".

> diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c

[ ... ]

> +	err = bpf_xdp_metadata_rx_checksum(ctx, &meta->ip_summed,
> +					   &meta->cksum_meta);

The file declares extern __ksym for the other XDP metadata kfuncs:

    extern int bpf_xdp_metadata_rx_timestamp(...) __ksym;
    extern int bpf_xdp_metadata_rx_hash(...) __ksym;
    extern int bpf_xdp_metadata_rx_vlan_tag(...) __ksym;

Should bpf_xdp_metadata_rx_checksum have a matching extern declaration
for consistency?


---
AI reviewed your patch. Please fix the bug or email reply why it's not a bug.
See: https://github.com/kernel-patches/vmtest/blob/master/ci/claude/README.md

CI run summary: https://github.com/kernel-patches/bpf/actions/runs/21875603263

AI-authorship-score: low
AI-authorship-explanation: The presence of typos and natural integration with existing kernel patterns suggest human authorship; no AI-like patterns detected.
issues-found: 3
issue-severity-score: low
issue-severity-explanation: Three minor issues found in test code: two typos (commit subject, error message) and a missing extern declaration for consistency.

--===============0303600655882961055==--
