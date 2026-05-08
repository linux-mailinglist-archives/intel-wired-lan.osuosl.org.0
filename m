Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFFDAe9v/mnNqgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 01:21:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 801334FCB58
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 01:21:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C49C061C61;
	Fri,  8 May 2026 23:21:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hnNiTPjs5rIs; Fri,  8 May 2026 23:21:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BD2D61C62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778282476;
	bh=RWngU6f+RaL4O87KOVpxj0kcSATTCJEvVplDySGTeKw=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A1nsIdwOApe2BC4n/iz+PFUGE5nlh/h8fgTPaWVxyMt8KPYxe2valt1rC+5SWkFXw
	 PsdjddTprwC/EH2qOkE56QExfuR6meYA5M1pTNw/FSlRzhaK9jVyXrahP1s0KnVlw3
	 FsHDl9U4MLLrnBjD9y4MZ1nJI1xV1tVfDz74Ns9SgvKCMTsqRAlm0RUlZ6xrGUZ3+f
	 WK1RIZU0CoXntUIqMKwEsBNNltpoeTyvh6QDMzNityBQWovS7RgrDOPUtXTMVgG/dS
	 RbBdExO0l4OZfL9suwt+ZMAjpDl+4CZaOxOrOtErg3C89IOH1tfaAk7vLNuIIsXN3j
	 v6o8fvBA99ElA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BD2D61C62;
	Fri,  8 May 2026 23:21:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 280CC272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 23:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F5C361C60
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 23:21:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4L5rrk5PAODb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 23:21:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2567961C5F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2567961C5F
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2567961C5F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 23:21:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 787B56024D;
 Fri,  8 May 2026 23:21:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 269A3C2BCB0;
 Fri,  8 May 2026 23:21:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 B9EA838119DB; Fri,  8 May 2026 23:20:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <177828241855.890779.16522525518979245121.git-patchwork-notify@kernel.org>
Date: Fri, 08 May 2026 23:20:18 +0000
References: <20260506-jk-iwl-net-2026-05-04-v2-0-a5ea4dc837a9@intel.com>
In-Reply-To: <20260506-jk-iwl-net-2026-05-04-v2-0-a5ea4dc837a9@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778282470;
 bh=jiBBAh+tYPq01D1+yZYu764BQl5VgaiQlj5egEd6T0U=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=eGEMfB7a+7c7g+M7fl40Y1/cUSASCmqYG57gbOiuRivqSYO7Ftt6/G3ctm/cwL7xa
 FA8/EBMRBzleoY7ayfyoTccvw2H58W4jrqx1BvFnfCjCQ6u3gZ1d8c7k0DvPTMQ7aU
 W3WgwTAw8//YvOWCENb63O0dSJj94Hn/SuCdO4CNh66drMI2wGB817NTQDqZ8Wsgwo
 9s5xFDpWhgpq8R76n8Kq4qJ/JdWxfBc0bXTErFafgRWaBqcNe5JUHdMRVw7ChxupyL
 azNUEuSmrh95xB7tdLNMtyUxIh0UC+dn/9Rpg+LEEO+rXh+SoePCDA0P/3gVHPOjcW
 D0ZWnmksKyPJg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=eGEMfB7a
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/8] Intel Wired LAN Driver
 Updates 2026-05-04 (i40e, ice, idpf)
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
Cc: piotr.kwapulinski@intel.com, emil.s.tantilov@intel.com,
 gregkh@linuxfoundation.org, tactii@gmail.com, edumazet@google.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, kohei@enjuk.jp,
 ivecera@redhat.com, bvanassche@acm.org, przemyslaw.kitszel@intel.com,
 Samuel.salin@intel.com, arkadiusz.kubalewski@intel.com,
 aleksandr.loktionov@intel.com, arpanax.arland@intel.com,
 intel-wired-lan@lists.osuosl.org, david.m.ertman@intel.com, pabeni@redhat.com,
 stable@kernel.org, pmenzel@molgen.mpg.de, maciej.fijalkowski@intel.com,
 kuba@kernel.org, willemb@google.com, sunithax.d.mekala@intel.com,
 joshua.a.hay@intel.com, stable@vger.kernel.org, andrew+netdev@lunn.ch,
 marcin.szycik@linux.intel.com, horms@kernel.org, netdev@vger.kernel.org,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 801334FCB58
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[netdevbpf];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:piotr.kwapulinski@intel.com,m:emil.s.tantilov@intel.com,m:gregkh@linuxfoundation.org,m:tactii@gmail.com,m:edumazet@google.com,m:madhu.chittim@intel.com,m:anthony.l.nguyen@intel.com,m:kohei@enjuk.jp,m:ivecera@redhat.com,m:bvanassche@acm.org,m:przemyslaw.kitszel@intel.com,m:Samuel.salin@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:arpanax.arland@intel.com,m:david.m.ertman@intel.com,m:pabeni@redhat.com,m:stable@kernel.org,m:pmenzel@molgen.mpg.de,m:maciej.fijalkowski@intel.com,m:kuba@kernel.org,m:willemb@google.com,m:sunithax.d.mekala@intel.com,m:joshua.a.hay@intel.com,m:stable@vger.kernel.org,m:andrew+netdev@lunn.ch,m:marcin.szycik@linux.intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linuxfoundation.org,gmail.com,google.com,enjuk.jp,redhat.com,acm.org,lists.osuosl.org,kernel.org,molgen.mpg.de,vger.kernel.org,lunn.ch,linux.intel.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
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
X-Rspamd-Action: no action

Hello:

This series was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 06 May 2026 14:48:09 -0700 you wrote:
> Matt Volrath fixes two issues with the i40e driver probe routine, ensuring
> that PTP is properly cleaned up if the probe fails.
> 
> Emil corrects the initialization of the read_dev_clk_lock spinlock in
> idpf_ptp_init, ensuring it is initialized prior to when the
> ptp_schedule_worker() is called.
> 
> [...]

Here is the summary with links:
  - [net,v2,1/8] i40e: Cleanup PTP registration on probe failure
    https://git.kernel.org/netdev/net/c/1619553b0a6b
  - [net,v2,2/8] i40e: Cleanup PTP pins on probe failure
    https://git.kernel.org/netdev/net/c/678b713ece1e
  - [net,v2,3/8] idpf: fix read_dev_clk_lock spinlock init in idpf_ptp_init()
    https://git.kernel.org/netdev/net/c/da4f76b6a84e
  - [net,v2,4/8] idpf: fix double free and use-after-free in aux device error paths
    https://git.kernel.org/netdev/net/c/6c77b9510829
  - [net,v2,5/8] ice: fix setting RSS VSI hash for E830
    https://git.kernel.org/netdev/net/c/b3cda96feb60
  - [net,v2,6/8] ice: fix locking in ice_dcb_rebuild()
    https://git.kernel.org/netdev/net/c/0ded1f36ba40
  - [net,v2,7/8] ice: dpll: fix rclk pin state get for E810
    https://git.kernel.org/netdev/net/c/cce709d8df6b
  - [net,v2,8/8] ice: dpll: fix misplaced header macros
    https://git.kernel.org/netdev/net/c/30f1658fc538

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


