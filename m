Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SO9yKPWwjGkDsQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 652F71263D7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 795956112F;
	Wed, 11 Feb 2026 16:40:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sPao2K1nEiyM; Wed, 11 Feb 2026 16:40:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEB0461120
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770828008;
	bh=/Z89kjNIWY0VINr+vZGPHeTTZHc/93JV5sVKb4+gpko=;
	h=In-Reply-To:References:From:To:Cc:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rCLs5rsSTVvf+5oVY6YL66UuBak9fCdEns1C9wMCCtWYQFLj8d119nBI9kDNcJo4G
	 SvKzEatyOrcygbTOYATM3UcdodWj7dOqmjNPoXlYWdOx97BiQkck38AeOadpyN3i7u
	 WsAWp5c6YHKGpotpf66BfNaClmfJO6OOxmoMmTGivUH/h8czgTt9evsctDL5sGZSCQ
	 Clj7INx0KDTXkssowpOjiAsGDIzJVI88zMsBCKuJ1uh8ltDowN74M/6tDyZ5B9JxYc
	 QcvPRwADHQoJPHrXkM/Ncbqe6BkpBX6I7zei/Dl3oGSHcyeJHeNFoWNxEDjDX31uTu
	 BNP2LeHByOhZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEB0461120;
	Wed, 11 Feb 2026 16:40:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A0188341
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:55:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7EC34411C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:55:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x0EGgalVxMI0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 17:55:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=bot+bpf-ci@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 942B2411AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 942B2411AD
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 942B2411AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:55:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2D18D444E9;
 Tue, 10 Feb 2026 17:55:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E45DC116C6;
 Tue, 10 Feb 2026 17:55:01 +0000 (UTC)
Content-Type: multipart/mixed; boundary="===============7295902335523839857=="
MIME-Version: 1.0
Message-Id: <8d3fe8a5425f2e6af5a75f8d1a26d1b460719b1e904b6e1499747ca479b73832@mail.kernel.org>
In-Reply-To: <20260210-bpf-xdp-meta-rxcksum-v1-4-e5d55caa0541@kernel.org>
References: <20260210-bpf-xdp-meta-rxcksum-v1-4-e5d55caa0541@kernel.org>
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
Date: Tue, 10 Feb 2026 17:55:01 +0000 (UTC)
X-Mailman-Approved-At: Wed, 11 Feb 2026 16:40:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770746102;
 bh=oakjD26/4tkGvWqhilxMCc4hiHX5ft4jQ4Iq6CfC8Ok=;
 h=In-Reply-To:References:Subject:From:To:Cc:Date:From;
 b=IV5HWXkc/FCiRpLej35EorMs268YVetMhHEcMuM8RZrQDwNon4ujlVriIsWMItPQO
 EqpPqMEeYxMCD6O4YFIrEvdJEAaFfqIGPwZOjfLqaxtmbteFvtM06iSeex9Dz5XBgO
 eId3ASq6UbrOQNwrEjse/Tdi30l18VlSWm7BlPWh5mf4t33MAhtXT3IbgjW51LF+r9
 vzEBdcZkI3eZTjdO3Q29eABxls3qZxt/DDPJl5+t8fLfEvnhAh5SbzAkjEx5m1VN5S
 rM53+ku47GAnrwJMK4bvWMODcdVtJF+2hO0GTGelBaK5cYQfywiYVchoItLmFSR3p/
 OS8Eizj1vbL9A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IV5HWXkc
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 4/5] selftests/bpf: Add
 selftest support for bpf_xdp_metadata_rx_checksum
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.kernel.org:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
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
X-Rspamd-Queue-Id: 652F71263D7
X-Rspamd-Action: no action

--===============7295902335523839857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

> diff --git a/tools/testing/selftests/bpf/progs/xdp_metadata.c b/tools/testing/selftests/bpf/progs/xdp_metadata.c
> index 09bb8a038d52..ef6a5584a187 100644
> --- a/tools/testing/selftests/bpf/progs/xdp_metadata.c
> +++ b/tools/testing/selftests/bpf/progs/xdp_metadata.c

[ ... ]

> @@ -98,6 +98,7 @@ int rx(struct xdp_md *ctx)
>  	bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash, &meta->rx_hash_type);
>  	bpf_xdp_metadata_rx_vlan_tag(ctx, &meta->rx_vlan_proto,
>  				     &meta->rx_vlan_tci);
> +	bpf_xdp_metadata_rx_checksum(ctx, &meta->ip_summed, &meta->cksum_meta);

Is there a missing extern declaration for bpf_xdp_metadata_rx_checksum()?
The other kfuncs used in this file have extern declarations with __ksym:

extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx,
                                         __u64 *timestamp) __ksym;
extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, __u32 *hash,
                                    enum xdp_rss_hash_type *rss_type) __ksym;
extern int bpf_xdp_metadata_rx_vlan_tag(const struct xdp_md *ctx,
                                        __be16 *vlan_proto,
                                        __u16 *vlan_tci) __ksym;

Without a similar declaration for bpf_xdp_metadata_rx_checksum(), the BPF
program may fail to compile or link.


---
AI reviewed your patch. Please fix the bug or email reply why it's not a bug.
See: https://github.com/kernel-patches/vmtest/blob/master/ci/claude/README.md

CI run summary: https://github.com/kernel-patches/bpf/actions/runs/21875603263

AI-authorship-score: low
AI-authorship-explanation: The code follows standard BPF selftest patterns and appears to be written by a domain expert familiar with XDP metadata kfuncs.
issues-found: 1
issue-severity-score: medium
issue-severity-explanation: Missing extern declaration for bpf_xdp_metadata_rx_checksum kfunc will cause BPF program build failure.

--===============7295902335523839857==--
