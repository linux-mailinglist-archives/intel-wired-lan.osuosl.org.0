Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPTANZgpomn/0QQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Feb 2026 00:32:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FBA1BF053
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Feb 2026 00:32:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8AC681425;
	Fri, 27 Feb 2026 23:32:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SgEoTsTTASGP; Fri, 27 Feb 2026 23:32:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 240A78143E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772235157;
	bh=pE/WkHibMahveIB6Gg1XiQ/l8aiTIZhOpMT4mEMqZY0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2uE1nq47RGADc2FhdVXSzqaxyChrokO0u14b3vJ2ijt6sJziynr9T1z1JD8R+iijr
	 B97J4WAr6FHyYZo/nwLDPiWCJ7JJwH8S8AxpHhSs7goU+ax775ywIhHwJRBJB8ondN
	 YCkZsqbwYNe9xMjU+YCuxrLq96nAQOepL+6dDCxbc1CMLIqsXVwYSl5Iw/KAEh1un9
	 gmYdw05I1gBERrU+bmBMuZSvJqeF4KzvkP1n7h63YPIM4t8N0ALfmiO1fa93WY8Yc8
	 M6QlU+B8faBg4SOaYYYLgOIoZ4lwubhVz2l4dszLKRZkomXbLJykDQIW+bh5bkT/Aj
	 VgIKVYOBDuYuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 240A78143E;
	Fri, 27 Feb 2026 23:32:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D0B8E1F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 23:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C238440BFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 23:32:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SAjjNaDXt6Fd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 23:32:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 253F040BC0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 253F040BC0
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 253F040BC0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 23:32:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8083A40750;
 Fri, 27 Feb 2026 23:32:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ECDFC116C6;
 Fri, 27 Feb 2026 23:32:32 +0000 (UTC)
Date: Fri, 27 Feb 2026 15:32:31 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Donald Hunter <donald.hunter@gmail.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard
 Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Andrii Nakryiko <andrii@kernel.org>, Martin
 KaFai Lau <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, KP
 Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <20260227153231.78d16b69@kernel.org>
In-Reply-To: <aaGaaExy63bGa7Or@lore-desk>
References: <20260217-bpf-xdp-meta-rxcksum-v3-0-30024c50ba71@kernel.org>
 <20260217-bpf-xdp-meta-rxcksum-v3-1-30024c50ba71@kernel.org>
 <20260218174742.62a4074f@kernel.org> <aZbuWBnmh_SQJyVf@lore-desk>
 <20260219091344.1d8517f3@kernel.org> <aZyKWoxnywXKWth9@lore-desk>
 <20260223151845.06db43b0@kernel.org> <aaGaaExy63bGa7Or@lore-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772235153;
 bh=Gl9pmWCL2mZ3Wj2qs5uUBK7sBEzBWHxCsN6KpmSpLyE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bYtorbVy8qSlQjd7l1kWdzABNB9LzHi1Yio+QUGF124fthAQR4f7N7zIWocCokrSH
 6HaBhcp86x89uxkTA+TomGUmaAKGghBTTfUj6NahDiwWzUslVXL08VjcFnQDBOg/Io
 jyBIrRLIllBPatXEVoiFJHXpmt5KhzPtf+D0Re3hGlhYRxI1cD5E/n8MIHPmo6nQnx
 lTGii9JUO/lCUBoJsSz3jzYhokGuvhV8Zl6U5EpX+Z9QTXz7gvLD+4IP0br6nhQbR5
 k932/+YF5E7zJZSNex52AGGP6IAizHjxsVGjkKr7/ZWJWRMQfK/pYEtaLaZqXXc5tK
 K/alACU4cz6Ng==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bYtorbVy
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 1/5] netlink: specs: Add
 XDP RX checksum capability to XDP metadata specs
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FREEMAIL_CC(0.00)[gmail.com,davemloft.net,google.com,redhat.com,kernel.org,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,cloudflare.com,vger.kernel.org,lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 11FBA1BF053
X-Rspamd-Action: no action

On Fri, 27 Feb 2026 14:21:44 +0100 Lorenzo Bianconi wrote:
> > > At the moment there is no way to store the csum value we got running
> > > bpf_xdp_metadata_rx_checksum() in order to be consumed during
> > > xdp_buff/xdp_frame to skb conversion (this info can just be consumed in the
> > > ebpf program bound to the NIC) but  
> > 
> > I think the scope here is much narrower than the xdp_buf to xdp_frame
> > to skb conversion. We are just pass information between the program and
> > driver which owns xdp_buff. Very similar to your new xmo.
> > 
> > We could either tell the driver to discard the csum complete or even
> > add a helper to "adjust" the the csum value. Similar to the helper
> > we have to adjust the csum in TC / skb context.  
> 
> IIUC, for the CSUM_COMPLETE case, we want to add a kfunc used to update (or
> invalidate) the checksum value (if the packet has been modified by the eBPF
> program bounded to the NIC) and report the updated checksum to the driver if
> the XDP verdict is XDP_PASS. Correct?
> 
> I guess we could have two approaches here:
> - Write the new checksum value into the xdp_metadata area (if available)
>   where the driver can load it and update the checksum value before
>   allocating the skb.
>   The main downside of this approach is we need modify each driver.
> - Add a new xmo callback used to set the checksum value and report it
>   from the eBPF program into a specific memory area provided by the driver
>   (e.g. DMA descriptor) that is used to build the skb.
>  
> What do you think?

Exactly. The invalidation is easier 'cause using a single bit in the
flags should be uncontroversial. If we want to be able to repair /
provide the csum complete then we have to pick one of the two options
you outlined. As you may suspect from previous discussions I favor 
the latter. But we'd probably have to have a PoC with either one and
see where the consensus falls.

Actually, thinking about it more, I guess this is not just a
CSUM_COMPLETE issue. XDP_PASS will also risk reporting invalid
UNNECESSARY to the stack (e.g. when XDP stripped a UDP tunnel
which which the NIC compute the UNNECESSARY but the packet inside
the tunnel has an invalid csum).

> Moreover, since we already have this issue upstream, do you think
> this new feature must be part this series or can we do it with a
> follow-up patch/series?

We don't have to add the kfunc to adjust / invalidate the csum.
But we should document how the drivers are expected to behave until
such kfunc exists and we should add a selftest that checks the
documented expectation.
