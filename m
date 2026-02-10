Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kO0wEPCwjGkDsQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E7C1263C9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 17:40:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1FAE60DB8;
	Wed, 11 Feb 2026 16:40:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4vhGNWOjjfTt; Wed, 11 Feb 2026 16:40:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC0B460BCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770828006;
	bh=cya0hjQvK+1xpTSPzH/YmT47uqaxKjyugM2JA9Rjpwc=;
	h=In-Reply-To:References:From:To:Cc:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bSUGoB8u2JbLKTM+lagdAEdB3vQIIbrqeN2zAIR4tHqybcybHKXuyA56A9O2/Jwp5
	 pU51xohQMo7E6NePYXrXkFIQztSB9Mp7x9w6zkXOnOC6rGVu1qfd9PmqsF1aFJQRvX
	 43+1ADGIjKXMMFDO4pt1z6TA5k3rlyuzrOKtbrE2tnj9ppJ0YwsapHq9EKj8q0Fe0g
	 sugdT1dTyC0KhMofOuJ4qiB/LaS6NjLCG0yq22UxfTThS2CvzOP22QW6QP9VtCAT+e
	 yGgjHtFMl5G5ww0QRxjtNK/oKL4BLhUA/2s1eJTLdAOKDPEAJZGRK5lVApMlSixqkR
	 ke/juZvT8AAkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC0B460BCB;
	Wed, 11 Feb 2026 16:40:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BB9962EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:54:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACE40411C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:54:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H7j5tLeFn_1o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 17:54:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=bot+bpf-ci@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9AC96411AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AC96411AD
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9AC96411AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:54:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7B0F06013D;
 Tue, 10 Feb 2026 17:54:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8003C116C6;
 Tue, 10 Feb 2026 17:54:55 +0000 (UTC)
Content-Type: multipart/mixed; boundary="===============0694556948236941952=="
MIME-Version: 1.0
Message-Id: <fead0617797f86cced73d09a7ef91fbef62a5b47d3b37b5c7c3827e2a4478b81@mail.kernel.org>
In-Reply-To: <20260210-bpf-xdp-meta-rxcksum-v1-3-e5d55caa0541@kernel.org>
References: <20260210-bpf-xdp-meta-rxcksum-v1-3-e5d55caa0541@kernel.org>
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
Date: Tue, 10 Feb 2026 17:54:55 +0000 (UTC)
X-Mailman-Approved-At: Wed, 11 Feb 2026 16:40:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770746096;
 bh=e1xJaT+uG0wdPiJkGC4RZFHoLPIzk8CspqV5GrifOBg=;
 h=In-Reply-To:References:Subject:From:To:Cc:Date:From;
 b=AzesiNURdXz4fdLNWrZWBv/qi1bPZ19rLdpPtyGfK+0NTiTS2SVh4neJq90IYHipY
 n63QcpbBDeJgeRNWUo7c7NHM0Uge43ZGQ1QuMJij21WInr+TbBi4w3YrvooOj6aclR
 i3EVb7UXuJoGXPEkvcDxPj37qEPEyLeJuhGAOgjXNs10GK2S5zuEMcpzzC77OJFt2y
 aQJoQCTOcRo+2ymCslPFE6naVRCWNVNhkG9yuxZ3Loldg5ViAZYhPoU67eUFszSqki
 CgC4yO7+LcyEY0Rz+VAbMprRzlLkL5ydafzg9qYSEKFnndaRcgbBzuSv5htVn//Saa
 zB1l4jw99ybbQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=AzesiNUR
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 3/5] net: ice: Add
 xmo_rx_checksum callback
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
X-Rspamd-Queue-Id: A3E7C1263C9
X-Rspamd-Action: no action

--===============0694556948236941952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c

[ ... ]

> @@ -168,16 +144,49 @@
>  	 * we are indicating we validated the inner checksum.
>  	 */
>  	if (decoded.tunnel_type >= LIBETH_RX_PT_TUNNEL_IP_GRENAT)
> -		skb->csum_level = 1;
> +		*cksum_meta = 1;
>
> -	skb->ip_summed = CHECKSUM_UNNECESSARY;
> +	*ip_summed = XDP_CHECKSUM_UNNECESSARY;
>  	return;

For non-tunneled packets that reach this return, is cksum_meta left
uninitialized? The tunnel_type check only sets *cksum_meta = 1 for
tunneled packets, but there's no else clause setting it to 0.

The caller ice_rx_csum() declares cksum_meta without initialization:

> +static void
> +ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
> +	    union ice_32b_rx_flex_desc *rx_desc, u16 ptype)
> +{
> +	enum xdp_checksum ip_summed;
> +	u32 cksum_meta;
> +
> +	ice_get_rx_csum(rx_desc, ptype, ring, &ip_summed, &cksum_meta);
> +	switch (ip_summed) {
> +	case XDP_CHECKSUM_UNNECESSARY:
> +		skb->csum_level = cksum_meta;

When ip_summed is XDP_CHECKSUM_UNNECESSARY and the packet is not tunneled,
this assigns an uninitialized value to skb->csum_level.

The original code relied on skb fields being pre-initialized to 0, but now
the refactored ice_get_rx_csum() needs to explicitly set *cksum_meta = 0
for the non-tunneled CHECKSUM_UNNECESSARY case, similar to how
checksum_none does.

> +		break;
> +	case XDP_CHECKSUM_COMPLETE:
> +		skb->csum = cksum_meta;
> +		break;
> +	default:
> +		break;
> +	}
> +	skb->ip_summed = ip_summed;
> +}

[ ... ]


---
AI reviewed your patch. Please fix the bug or email reply why it's not a bug.
See: https://github.com/kernel-patches/vmtest/blob/master/ci/claude/README.md

CI run summary: https://github.com/kernel-patches/bpf/actions/runs/21875603263

AI-authorship-score: low
AI-authorship-explanation: The commit shows typical human characteristics including a subtle uninitialized variable bug and minor grammatical imperfections in the commit message, both of which are patterns AI tools tend to avoid.
issues-found: 1
issue-severity-score: medium
issue-severity-explanation: Uninitialized variable causes skb->csum_level to receive garbage values for non-tunneled packets with valid checksums, potentially affecting network stack checksum handling.

--===============0694556948236941952==--
