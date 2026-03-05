Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCL1N/uqqWlSBwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 17:10:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC4B2152C8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 17:10:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 999DA81761;
	Thu,  5 Mar 2026 16:10:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VKL0a8_IpbAh; Thu,  5 Mar 2026 16:10:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7331812E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772727031;
	bh=MxO/uAuSvwaEX32/aOvmiV92TkJ2Kk9u1kPBjcGefy4=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DteMWgMmA1ji1SHIlfk74+JTmvCKgzAUhYKUUYCgwP0lwxnRpLRYwbO73NmI405Aj
	 9/mf0cNXacsZ3yvb5JLS+1IQuxc7taUsP+/5jCLhep2PsSk1eNJCWcTpSGteV7nZlp
	 ErJ87iBL+/1igeALI8es131ZLBVhK3xA6mO4SVJSEGVeH1LHJ+ihtdvtOqRkem9eRc
	 rdjCSCDUHWNHtLzDAVtcQkFsG5ln1Vl6OHmO9yAcNhBYRD7FC8XMhg4mWFnA6I/8tD
	 PrYtdnIvvvXXxnVDttFW9CoTDyYokZTJP2XWZFhuJnLyZRDYAtfk64YcOEs0/h/vED
	 Zwd7xEg7GJEvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7331812E8;
	Thu,  5 Mar 2026 16:10:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 941CA25B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 16:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91D7460BEE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 16:10:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 47H8pk0Gk1op for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 16:10:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C16CF60BEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C16CF60BEC
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C16CF60BEC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 16:10:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 384C1419AB;
 Thu,  5 Mar 2026 16:10:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09B15C116C6;
 Thu,  5 Mar 2026 16:10:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 3FE653808200; Thu,  5 Mar 2026 16:10:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <177272702805.3188128.16309701518912320444.git-patchwork-notify@kernel.org>
Date: Thu, 05 Mar 2026 16:10:28 +0000
References: <20260305111253.2317394-2-larysa.zaremba@intel.com>
In-Reply-To: <20260305111253.2317394-2-larysa.zaremba@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, kuba@kernel.org,
 claudiu.manoil@nxp.com, vladimir.oltean@nxp.com, wei.fang@nxp.com,
 xiaoning.wang@nxp.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, sdf@fomichev.me,
 andrii@kernel.org, martin.lau@linux.dev, eddyz87@gmail.com, song@kernel.org,
 yonghong.song@linux.dev, kpsingh@kernel.org, haoluo@google.com,
 jolsa@kernel.org, horms@kernel.org, shuah@kernel.org,
 aleksander.lobakin@intel.com, maciej.fijalkowski@intel.com,
 bastien.curutchet@bootlin.com, tushar.vyavahare@intel.com,
 kernelxing@tencent.com, rbm@suse.com, echaudro@redhat.com,
 lorenzo@kernel.org, toke@redhat.com, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org, aleksandr.loktionov@intel.com,
 dtatulea@nvidia.com, magnus.karlsson@intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772727028;
 bh=XkVTGgjybgKXZp1qt304mUns/GTshs03+4QI6M7emKQ=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=pJfHnw1PbGoVjYrwIafL+sqM5ACrKoPeYeM+WMHXQSNVzQkeLJdwDbcj1a5uBNNdJ
 BuvVGHLKoKDiG8WQVhoBATOs+JGvFpBk/FKjbhK6SEiykJYMR1bOlci0Iva/GwZj5E
 rHIWv4INmohx5G6E6T5ZRgKasDjDm+oyIbs00bFGtY0bg3IMG+3iQUGH12oQG3Fi0o
 Q+Ec5yC4V+59xLXVyIdoLCNtst33sLrQEdy2k+LR9+x3tld3vYSUsCkPmdroW1eQTp
 BI9/O0QCIXBz6comfzwNag2tq7+1nv+JuI9kyTWxsW+s/qS20r1YYF81VOoMGoe8Fo
 6wy8AMu24AZsg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pJfHnw1P
Subject: Re: [Intel-wired-lan] [PATCH net v5 1/9] xdp: use modulo operation
 to calculate XDP frag tailroom
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
X-Rspamd-Queue-Id: DEC4B2152C8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[netdevbpf];
	RCPT_COUNT_TWELVE(0.00)[45];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:kuba@kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktiono
 v@intel.com,m:dtatulea@nvidia.com,m:magnus.karlsson@intel.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Hello:

This series was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Thu,  5 Mar 2026 12:12:42 +0100 you wrote:
> The current formula for calculating XDP tailroom in mbuf packets works only
> if each frag has its own page (if rxq->frag_size is PAGE_SIZE), this
> defeats the purpose of the parameter overall and without any indication
> leads to negative calculated tailroom on at least half of frags, if shared
> pages are used.
> 
> There are not many drivers that set rxq->frag_size. Among them:
> * i40e and enetc always split page uniformly between frags, use shared
>   pages
> * ice uses page_pool frags via libeth, those are power-of-2 and uniformly
>   distributed across page
> * idpf has variable frag_size with XDP on, so current API is not applicable
> * mlx5, mtk and mvneta use PAGE_SIZE or 0 as frag_size for page_pool
> 
> [...]

Here is the summary with links:
  - [net,v5,1/9] xdp: use modulo operation to calculate XDP frag tailroom
    https://git.kernel.org/netdev/net/c/88b6b7f7b216
  - [net,v5,2/9] xsk: introduce helper to determine rxq->frag_size
    https://git.kernel.org/netdev/net/c/16394d805399
  - [net,v5,3/9] ice: fix rxq info registering in mbuf packets
    https://git.kernel.org/netdev/net/c/02852b47c706
  - [net,v5,4/9] ice: change XDP RxQ frag_size from DMA write length to xdp.frame_sz
    https://git.kernel.org/netdev/net/c/e142dc4ef0f4
  - [net,v5,5/9] i40e: fix registering XDP RxQ info
    https://git.kernel.org/netdev/net/c/8f497dc8a614
  - [net,v5,6/9] i40e: use xdp.frame_sz as XDP RxQ info frag_size
    https://git.kernel.org/netdev/net/c/c69d22c6c46a
  - [net,v5,7/9] libeth, idpf: use truesize as XDP RxQ info frag_size
    https://git.kernel.org/netdev/net/c/75d9228982f2
  - [net,v5,8/9] net: enetc: use truesize as XDP RxQ info frag_size
    https://git.kernel.org/netdev/net/c/f8e18abf183d
  - [net,v5,9/9] xdp: produce a warning when calculated tailroom is negative
    https://git.kernel.org/netdev/net/c/8821e857759b

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


