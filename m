Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKUbE+mwjGkDsQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA8A1263BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6034B80F46;
	Wed, 11 Feb 2026 16:40:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fQ0_gJTeXVIv; Wed, 11 Feb 2026 16:40:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3940B80FF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770828006;
	bh=Oit2nNRrqBeMGYtL8OQWBfms5CgiFatWQuLCQh7S0ss=;
	h=In-Reply-To:References:From:To:Cc:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m14S4TDpqQMR+hf2pppyFxEI/MRX3axzLhmve0q2wIPIJQ84IvYbMNCesv/laumN9
	 KsRVcAK9p+zCG/kyEzi4FOKwm261iHt3Mx1M5ayKFMKNUYsznYAVOByZGGvBrFHj5Y
	 8w3jEiYC5HmsBOl55evDQVaFeKCjzvgL6ia0y1cHKa/cl215MITaXpSkPb884d+QsE
	 2IbiYPlsozm9xJVtV2a5Ffj8sRkza3YyYvO2/dpPxiKBOZkmfxEHT/BYJkoE9ukt83
	 gyr2gVPkREqWW/Wznvcq/nqk2lCVw3UdRN8aW5RJJJxGesy3yOuR4DXjvjaPBUPl1L
	 7YQCcE0K64ulw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3940B80FF8;
	Wed, 11 Feb 2026 16:40:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 171A323D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 045D940876
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:54:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O12s3Ag56vfN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 17:54:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=bot+bpf-ci@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 12E9140810
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12E9140810
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12E9140810
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:54:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A1DFF60136;
 Tue, 10 Feb 2026 17:54:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1E21C116C6;
 Tue, 10 Feb 2026 17:54:53 +0000 (UTC)
Content-Type: multipart/mixed; boundary="===============2885316481438239449=="
MIME-Version: 1.0
Message-Id: <0900ad8e7ac913e4af38568dc5f51849e2110f7a986b115e134f4b5391ad9da1@mail.kernel.org>
In-Reply-To: <20260210-bpf-xdp-meta-rxcksum-v1-1-e5d55caa0541@kernel.org>
References: <20260210-bpf-xdp-meta-rxcksum-v1-1-e5d55caa0541@kernel.org>
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
Date: Tue, 10 Feb 2026 17:54:53 +0000 (UTC)
X-Mailman-Approved-At: Wed, 11 Feb 2026 16:40:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770746094;
 bh=rYeZ3klsKY1YG7OtbH4ZTtsskEDYDxBsjAqO/hHR+9k=;
 h=In-Reply-To:References:Subject:From:To:Cc:Date:From;
 b=cx1dN0hH4qmxVFBUbAzYn93ccRvQOifix5jd509zwFydIY81ObDTydph8BhYG6uXK
 YALA37O9ksudu7K+ySHS7HtaJmhBdc4RYL+4LlC7SaeRf7mI65f08brJ2TFxhmLS4m
 UDpJaiJ8Q4stCbYslb+msp0tc6A3Ii3otUg/r1qo2XzfW+XKJa0AfzPjR/JMNJSKMP
 go+obanrDrS5dXgqSL5TF1+7JXfXrW5D3BLNMT1bbYUp3HT9OfrN+282ukm+ssGrFD
 VVDxJNlB5vJy5Wh9NgCygB9/iWqnae0eKDtlrfsNRi405duPQp/VwCYsuNOiMKGrh5
 dSBZXL+dCj1hA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cx1dN0hH
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/5] netlink: specs: Add XDP
 RX checksum capability to XDP metadata specs
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
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
X-Rspamd-Queue-Id: BCA8A1263BB
X-Rspamd-Action: no action

--===============2885316481438239449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

> diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> index 330ece2eabdb..dc62d572e3ac 100644
> --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> @@ -110,6 +110,13 @@ int rx(struct xdp_md *ctx)
>  	else
>  		meta->hint_valid |= XDP_META_FIELD_VLAN_TAG;
>
> +	err = bpf_xdp_metadata_rx_checksum(ctx, &meta->ip_summed,
> +					   &meta->cksum_meta);

This call to bpf_xdp_metadata_rx_checksum() appears to be missing its extern
declaration. The other kfuncs in this file have declarations like:

extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx,
                                         __u64 *timestamp) __ksym;
extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, __u32 *hash,
                                    enum xdp_rss_hash_type *rss_type) __ksym;
extern int bpf_xdp_metadata_rx_vlan_tag(const struct xdp_md *ctx,
                                        __be16 *vlan_proto,
                                        __u16 *vlan_tci) __ksym;

Should there be a corresponding declaration for bpf_xdp_metadata_rx_checksum?

> +	if (err)
> +		meta->rx_cksum_err = err;
> +	else
> +		meta->hint_valid |= XDP_META_FIELD_CHECKSUM;
> +
>  	__sync_add_and_fetch(&pkts_redir, 1);
>  	return bpf_redirect_map(&xsk, ctx->rx_queue_index, XDP_PASS);
>  }

> diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c

[ ... ]

> @@ -254,6 +277,11 @@ static void verify_xdp_metadata(void *data, clockid_t clock_id)
>  		printf("No rx_vlan_tci or rx_vlan_proto, err=%d\n",
>  		       meta->rx_vlan_tag_err);
>  	}
> +
> +	if (meta->hint_valid & XDP_META_FIELD_CHECKSUM)
> +		print_rx_cksum(meta->ip_summed, meta->cksum_meta);
> +	else
> +		printf("No rx_chsum, err=%d\n", meta->rx_cksum_err);
                       ^^^^^^

Minor typo: "rx_chsum" should be "rx_cksum" to match the variable naming
(rx_cksum_err) and be consistent with other similar messages.


---
AI reviewed your patch. Please fix the bug or email reply why it's not a bug.
See: https://github.com/kernel-patches/vmtest/blob/master/ci/claude/README.md

CI run summary: https://github.com/kernel-patches/bpf/actions/runs/21875603263

AI-authorship-score: low
AI-authorship-explanation: The commit is from an established kernel maintainer and follows existing code patterns, with the errors being typical human oversights (missing declaration, typo) rather than AI-generated issues.
issues-found: 2
issue-severity-score: medium
issue-severity-explanation: Missing extern declaration for kfunc will cause compilation failure of the BPF selftest program, plus a minor typo in error output.

--===============2885316481438239449==--
