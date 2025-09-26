Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA52CBA340D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 11:53:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E38961B58;
	Fri, 26 Sep 2025 09:53:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6SYNyz7Hq-pL; Fri, 26 Sep 2025 09:53:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BE3661BDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758880417;
	bh=bWkXBny+UHpij+8hxnO+3KC7pvUQx06te/ZHnr8ukFQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GAvkD2ZkGfbLPOhbkz6IJexXBMaoZ0OFTztaCXGpFrnBmZtRdCc846ofoT8oVHQx+
	 KkB57zFgLWQxTyfxUcdrdnCHrEBKpwOKmy3SpSLGpW0MoDADBHAop0upRrYNC0bUE6
	 37fJLR9VlggKjlCNkiJ+zn8p9PM7uiN4fVSRpFIGpj3ozlf4nqHsSKwyBXLEzULKx/
	 HWvrPh75hdqZf8itQ2caLDdpCwVxglMU4Sq5yXjfyayHSXU/gMDftHaDCH7dKmJ0Sb
	 VDSYG0nOs5OfbGO9Mt3000eGq6J6kOhxTQsWUDWipUpZ/7r5bj2yyJICwfkgCBU/y5
	 u2hYiQrhlrWDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BE3661BDE;
	Fri, 26 Sep 2025 09:53:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 36B69177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 09:53:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F2DC61B85
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 09:53:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vr4kufH8IQBp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 09:53:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 83EBA61B58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83EBA61B58
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 83EBA61B58
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 09:53:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A8C3F4057C;
 Fri, 26 Sep 2025 09:53:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E7FCC4CEF4;
 Fri, 26 Sep 2025 09:53:27 +0000 (UTC)
Message-ID: <0608935c-1c1c-4374-a058-bc78d114c630@kernel.org>
Date: Fri, 26 Sep 2025 11:53:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
 <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <20250925-bpf-xdp-meta-rxcksum-v2-1-6b3fe987ce91@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758880413;
 bh=ABg3JBeJ+y7C2RlZnbDls+ChldG2KSsda0gRwyTvuI0=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=cas4uuwFB7OKkpV/FnG+acSoxR41ScdeuIv7ja/onD16BlgqutbP/jnASuWyGWEdM
 8A4uYWl5EAcwpG98C1N4Ag1ZWbEMdhOxY1CwbS9Y093SnHo/Sin1nllvyrnAwoE4wY
 /ntmer5ATxSnRkDWeyQm9kDH6SgE7j1xrIeQQ5gV6+naE0yRVLQg3yN3zR5TwsOwPL
 ryAMFZtLb7ksQyThdnNDE0OO4R8B+WSD34eiH244lSeGsUy6BHHQtJY9/5HS8rzLa4
 CYBCEcCYH2R+CoaLVfxIQlXLRnqv3w1HQ1sfFRZDF2xZqoZrxOEgSX94ofgcD2uSFz
 e/lJOFgG/SQaA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=cas4uuwF
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



On 25/09/2025 11.30, Lorenzo Bianconi wrote:
> +/**
> + * bpf_xdp_metadata_rx_checksum - Read XDP frame RX checksum.
> + * @ctx: XDP context pointer.
> + * @ip_summed: Return value pointer indicating checksum result.
> + * @cksum_meta: Return value pointer indicating checksum result metadata.
> + *
> + * In case of success, ``ip_summed`` is set to the RX checksum result. Possible
> + * values are:
> + * ``XDP_CHECKSUM_NONE``
> + * ``XDP_CHECKSUM_UNNECESSARY``
> + * ``XDP_CHECKSUM_COMPLETE``
> + * ``XDP_CHECKSUM_PARTIAL``
> + *
> + * In case of success, ``cksum_meta`` contains the hw computed checksum value
> + * for ``XDP_CHECKSUM_COMPLETE`` or the ``csum_level`` for
> + * ``XDP_CHECKSUM_UNNECESSARY``. It is set to 0 for ``XDP_CHECKSUM_NONE`` and
> + * ``XDP_CHECKSUM_PARTIAL``.
> + *

It is very important that we explain the meaning of XDP_CHECKSUM_NONE.
As I hinted in other email, this also covers the non-existing FAIL case.

If the hardware detects a wrong or failed checksum, the code still
returns CHECKSUM_NONE. This is where we could consider adding a
CHECKSUM_FAIL return value instead.
The driver will also return CHECKSUM_NONE for the cases where it cannot
parse the packet, and therefor naturally cannot calculate the checksum
(given it doesn't know the protocol).

Thus, for CHECKSUM_NONE we don't know if this is because of bad checksum
or hardware don't know this packet type.  The philosophy is that 
hardware might be wrong and cannot know of newer protocols, so it is 
safer to let software handle recalculation of checksum for all negative 
cases.

Thus, if we want to use this in a (XDP) DDoS filter, then we need to
combine RX-hash info about if hardware saw this as an L4 packet or not
(see XDP_RSS_L4 / enum xdp_rss_hash_type).  If hardware saw this as e.g.
XDP_RSS_L4_TCP (or XDP_RSS_L4_UDP) and rx-csum is CHECKSUM_NONE, then we
know this was a wrong/failed checksum (given this hardware knows howto
csum TCP).

What do people think: Do we leave it as an exercise to the BPF-developer
to deduct hardware detected a wrong/failed checksum, as that is possible
as described above.  Or do we introduce a CHECKSUM_FAILED?

An argument for sticking with CHECKSUM_NONE, is that it will make it
much easier to add driver support, as we don't need to deal with any
logic changes in the existing code.


> + * Return:
> + * * Returns 0 on success or ``-errno`` on error.
> + * * ``-EOPNOTSUPP`` : means device driver does not implement kfunc
> + * * ``-ENODATA``    : means no RX-timestamp available for this frame
> + */
> +__bpf_kfunc int bpf_xdp_metadata_rx_checksum(const struct xdp_md *ctx,
> +					     u8 *ip_summed, u32 *cksum_meta)
> +{
> +	return -EOPNOTSUPP;
> +}
> +

