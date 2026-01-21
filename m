Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDTpKKI8cGmgXAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 03:40:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ED74FEC2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 03:40:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0DA560C27;
	Wed, 21 Jan 2026 02:40:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mDdlg7YRajxM; Wed, 21 Jan 2026 02:40:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F14E60C28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768963231;
	bh=3H4bzSRWxadtr0XyHCArWon468q49YyhMq9PXcRtOWA=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E7nvBaYs67w2ZdhmqQMlQB/DjMZgbxSapKvncUSYc7x4EERBq3Y45OcQmKh5nPxpq
	 s/m36ZzcThZvDgEZ3BUArmbq7U3kW7PrfvOorNUgYW2DVGv8Yl5anaGTc4+Jv1d7Wo
	 c8eK0mpd90+ydV8CesmlcvAe71w569eS21Ad3F25fhX0tDl/3KBJsauaKK3lJ2ImPM
	 Eo2SD3Pg7rEn2UzHFf6rc2KxBGZvkmaLv4aEyl4iQLUJoLeIWXuycCl/uaWx3s1iMt
	 leZU/vWWn3AXF4WK8qo/3a2YCNqsIxCh4IoArZX9L9T1wKsiu1nvrXmiEb44KekrsK
	 07KIpImLrd0zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F14E60C28;
	Wed, 21 Jan 2026 02:40:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DA63C169
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 02:40:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C72B340D9E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 02:40:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cvQ2Hm5u-v_j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 02:40:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EB37C40D9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB37C40D9C
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB37C40D9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 02:40:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4ECC260123;
 Wed, 21 Jan 2026 02:40:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04014C19424;
 Wed, 21 Jan 2026 02:40:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 8BBB9380820D; Wed, 21 Jan 2026 02:40:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176896322309.699622.15744094488253371273.git-patchwork-notify@kernel.org>
Date: Wed, 21 Jan 2026 02:40:23 +0000
References: <20260119162720.1463859-1-mmyangfl@gmail.com>
In-Reply-To: <20260119162720.1463859-1-mmyangfl@gmail.com>
To: Yangfl <mmyangfl@gmail.com>
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 pavan.kumar.linga@intel.com, phani.r.burra@intel.com, willemb@google.com,
 alan.brady@intel.com, sridhar.samudrala@intel.com, joshua.a.hay@intel.com,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1768963226;
 bh=kU4ivi3it5EOayRcuk2PGsOSIABVoKbr13xV7JDnuyI=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=H+TFNmjy86zH6Vd9cQTCklv1uMDdw1OCATQTpq/hflNnK6PWiikynVkZMlDVYRiHl
 YuRnJ1EXCUBW8hFGcpcrFxU6nOBrJq1lQI2+NyZCrYNfn1D0nUyjdyBbkOhNUslL6/
 LtUujWiihzDPcAUjVu3WvfZXoTMLzkB24WMK9SOXxMu2gVK61gr3G/n9UmemyIy1Eh
 g3I29XgFevbXzv9/xMD0GbI7q1l7tJZgcQAYn/wo1UKqtKSnEsK06ngQjA06KjYXBS
 GYbpkN1nGm37oGkgUQKcCOWtkGo7LeIue3dNUb5HNSSdevYKwOxqa2gVQ21ZIxpiED
 Ud1v4QtY7LRTg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=H+TFNmjy
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: Fix data race in
 idpf_net_dim
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[netdevbpf];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mmyangfl@gmail.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:pavan.kumar.linga@intel.com,m:phani.r.burra@intel.com,m:willemb@google.com,m:alan.brady@intel.com,m:sridhar.samudrala@intel.com,m:joshua.a.hay@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 51ED74FEC2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello:

This patch was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 20 Jan 2026 00:27:16 +0800 you wrote:
> In idpf_net_dim(), some statistics protected by u64_stats_sync, are read
> and accumulated in ignorance of possible u64_stats_fetch_retry() events.
> The correct way to copy statistics is already illustrated by
> idpf_add_queue_stats(). Fix this by reading them into temporary variables
> first.
> 
> Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
> Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
> Signed-off-by: David Yang <mmyangfl@gmail.com>
> 
> [...]

Here is the summary with links:
  - [net] idpf: Fix data race in idpf_net_dim
    https://git.kernel.org/netdev/net/c/5fbe395cd1fd

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


