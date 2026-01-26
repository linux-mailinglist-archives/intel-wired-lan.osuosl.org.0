Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOcFBcubd2n0iwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 17:52:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 688CA8AF60
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 17:52:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06EA660C24;
	Mon, 26 Jan 2026 16:52:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PTaVGHOxRqCV; Mon, 26 Jan 2026 16:52:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A9C960C27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769446343;
	bh=y/ZLXg/bukRRC9lfu2j5gYFIwAJwqmvfj4ggjQwJ9TU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U6ZR8Qk/MXQdJfNEItK8slJVgvg8leMgJcSDm/gkK+NLS10H7yuLF1peZm9azp1p5
	 0i1tO+2UaWUwhJt7JZnEfhv3iyC5Yz0LZoGFPZRmECjbmaEhmBEaZIdIpjzqSQ7fvF
	 EgS4NtbB9qNTfACzaRQB9C5z7uOvs0IyqMx7083FdXVl1gZlncQoXC39LLQJgmAbNT
	 BMilKridxy+++gpQvmkciivbcsggWWKkCXlwD6YKN3qsFmojHH4f1fnrZlXq8C6NNq
	 pbnHd234c8KHL8hIENjJ1LUNCWZh7Fwt8ApHElP53SaeDtqTl9mrwET4ymv7qrg8Od
	 QMnroAiUPxvqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A9C960C27;
	Mon, 26 Jan 2026 16:52:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 81794355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 16:52:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70BA940912
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 16:52:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y9NatDVHjkki for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 16:52:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C5B8740817
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5B8740817
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C5B8740817
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 16:52:18 +0000 (UTC)
Received: from [192.168.2.221] (p57bd931f.dip0.t-ipconnect.de [87.189.147.31])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BFB144C4430092;
 Mon, 26 Jan 2026 17:51:37 +0100 (CET)
Message-ID: <4eae4d1a-8043-4186-bd38-87f47dd35eda@molgen.mpg.de>
Date: Mon, 26 Jan 2026 17:51:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
References: <20260125140423.2077845-1-lihaoxiang@isrc.iscas.ac.cn>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260125140423.2077845-1-lihaoxiang@isrc.iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] i40e: add an error handling path in
 i40e_xsk_pool_enable()
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,mpg.de:email,molgen.mpg.de:mid];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[mpg.de:server fail,smtp3.osuosl.org:server fail,iscas.ac.cn:server fail,osuosl.org:server fail,molgen.mpg.de:server fail];
	FORGED_RECIPIENTS(0.00)[m:lihaoxiang@isrc.iscas.ac.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 688CA8AF60
X-Rspamd-Action: no action

Dear Haoxiang,


Thank you for your patch.

Am 25.01.26 um 15:04 schrieb Haoxiang Li:
> In i40e_xsk_pool_enable(), the memory allocated by 
> xsk_pool_dma_map() should be released if some error occurs. Add an
> error handling path to do so.

(Please be aware to use the fully allowed text width of 75 characters
per line. (It wouldn’t save a line here though.))

Please add a Fixes: tag.

> Signed-off-by: Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn> --- drivers/
> net/ethernet/intel/i40e/i40e_xsk.c | 12 ++++++++---- 1 file changed,
> 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/
> net/ethernet/intel/i40e/i40e_xsk.c index 9f47388eaba5..92b853a75b28
> 100644 --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c +++ b/
> drivers/net/ethernet/intel/i40e/i40e_xsk.c @@ -108,23 +108,27 @@
> static int i40e_xsk_pool_enable(struct i40e_vsi *vsi, if
> (if_running) { err = i40e_queue_pair_disable(vsi, qid); if (err) -
> return err; +			goto unmap;
> 
> err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true); if (err) -
> return err; +			goto unmap;
> 
> err = i40e_queue_pair_enable(vsi, qid); if (err) -			return err; +
> goto unmap;
> 
> /* Kick start the NAPI context so that receiving will start */ err =
> i40e_xsk_wakeup(vsi->netdev, qid, XDP_WAKEUP_RX); if (err) -
> return err; +			goto unmap; }
> 
> return 0; + +unmap: +	xsk_pool_dma_unmap(pool, I40E_RX_DMA_ATTR); +
> return err; }
> 
> /**


Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
