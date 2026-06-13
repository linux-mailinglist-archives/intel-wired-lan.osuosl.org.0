Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zL2FOGHALWrejQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Jun 2026 22:41:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6658967FAD4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Jun 2026 22:41:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=bVdynpCP;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E98FD40524;
	Sat, 13 Jun 2026 20:41:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CrLXB3GCdcA1; Sat, 13 Jun 2026 20:41:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1561E405D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781383263;
	bh=7KvCpdXomycTSlNZCr6JrFjKv4URbtC8VTq1VyYP0YE=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bVdynpCPgCIRoHGtNkklhtQci0AUuV3dAjBULJ4llrdM5GGsnabR5ryDQlljZvuzP
	 ObpcZMQGu71co70R8jbv8Oxq/3QM7E6UBpNC4bwnsMmUuGAKC/H2Fz1XMEVLMqBdkA
	 rGIitQlSPApMIPu04O1O55eC+Le8cwU/u3Aor9WfZzPKzabhcatGtcoiGjarw+d07v
	 5o0ENZ9kN1yM7CtRmpMIP4cCcQfvZEZt/9Ph0gvTqThy/pqK0zGjE0bfE/V00Cpkp4
	 028hLFIcvNvCjJ69fMsl2ZTMpQdcFqNoH4mBpt0N+Qkh7EGkGtQUaT+87QjmJQTWm8
	 a5jjXvT6vqVFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1561E405D0;
	Sat, 13 Jun 2026 20:41:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DCC3DDE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jun 2026 20:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DACBF80DC1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jun 2026 20:41:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OsnjWojGgW1w for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Jun 2026 20:41:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F345080D88
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F345080D88
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F345080D88
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jun 2026 20:41:00 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 1A7A8400CC;
 Sat, 13 Jun 2026 20:41:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED9601F000E9;
 Sat, 13 Jun 2026 20:40:59 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 568F83A54A32; Sat, 13 Jun 2026 20:40:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <178138325589.1587607.11012960354687352250.git-patchwork-notify@kernel.org>
Date: Sat, 13 Jun 2026 20:40:55 +0000
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
In-Reply-To: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
To: Nitka@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org,
 Grzegorz <grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1781383260;
 bh=7KvCpdXomycTSlNZCr6JrFjKv4URbtC8VTq1VyYP0YE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc;
 b=ZZU1Vs6Wq2VR+A+giCsV4fvBNE98FEYmqEOamQGIwgpPERz0TMofOQerE/OuCuKnh
 xpfqEZ9Cz77qb55Z5sPYA3I6vslXBt5hGTse1aiX5GN+E5yTLFPMSCAaggpqZxHwKE
 JEsD96247qq7K45+qtHvVCOpI9Yjf9vsfjR06HmT8dt8U9k/ESR8KlcTMfS/N2HtWS
 DDgpWaV1dDUuSj/Oqc+aU9ovSU8P7YSQ5FDttiabSWux/YVR+Kagn3rA2iDCNjwoyQ
 7sNFrdb9zlbm2LYvPXd+vnun4YcbAYcz9IZ2KnVxRBxF0Sk6SdG2r6Xxn0GFXyzdiz
 YVaBWpmB9zLdg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=ZZU1Vs6W
Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 00/13] dpll/ice: Add
 generic DPLL type and full TX reference clock control for E825
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, kuba@kernel.org,
 jiri@resnulli.us, edumazet@google.com, netdev@vger.kernel.org,
 richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 Prathosh.Satish@microchip.com, andrew+netdev@lunn.ch,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[netdevbpf];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,vger.kernel.org,gmail.com,intel.com,microchip.com,lunn.ch,lists.osuosl.org,davemloft.net];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FORGED_RECIPIENTS(0.00)[m:Nitka@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org,m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[patchwork-bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchwork-bot@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[140.211.166.137:from];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6658967FAD4

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Sun,  7 Jun 2026 20:30:32 +0200 you wrote:
> NOTE: This series is intentionally submitted on net-next (not
> intel-wired-lan) as early feedback of DPLL subsystem changes is
> welcomed. In the past possible approaches were discussed in [1].
> 
> This series adds TX reference clock support for E825 devices and exposes
> TX clock selection and synchronization status via the Linux DPLL
> subsystem.
> 
> [...]

Here is the summary with links:
  - [v14,net-next,01/13] dpll: add generic DPLL type
    https://git.kernel.org/netdev/net-next/c/9375487c0c78
  - [v14,net-next,02/13] dpll: allow registering FW-identified pin with a different DPLL
    https://git.kernel.org/netdev/net-next/c/c191b319f208
  - [v14,net-next,03/13] dpll: fix stale iteration in dpll_pin_on_pin_unregister()
    https://git.kernel.org/netdev/net-next/c/32239d600236
  - [v14,net-next,04/13] dpll: send delete notification before unregister in on-pin rollback
    https://git.kernel.org/netdev/net-next/c/e83b403eb142
  - [v14,net-next,05/13] dpll: emit per-dpll delete notifications in dpll_pin_on_pin_unregister()
    https://git.kernel.org/netdev/net-next/c/df0ba51ccf87
  - [v14,net-next,06/13] dpll: guard sync-pair removal on full pin unregister
    https://git.kernel.org/netdev/net-next/c/0a5c720a7d57
  - [v14,net-next,07/13] dpll: balance create/delete notifications in __dpll_pin_(un)register
    https://git.kernel.org/netdev/net-next/c/1a2292101c0d
  - [v14,net-next,08/13] dpll: extend pin notifier with notification source ID
    https://git.kernel.org/netdev/net-next/c/0bf47f722fa9
  - [v14,net-next,09/13] dpll: allow fwnode pins to attempt state change without capability bit
    https://git.kernel.org/netdev/net-next/c/521b6d5de08d
  - [v14,net-next,10/13] ice: introduce TXC DPLL device and TX ref clock pin framework for E825
    https://git.kernel.org/netdev/net-next/c/5db36ee62849
  - [v14,net-next,11/13] ice: implement CPI support for E825C
    https://git.kernel.org/netdev/net-next/c/fff4ed70ca9b
  - [v14,net-next,12/13] ice: add Tx reference clock index handling to AN restart command
    https://git.kernel.org/netdev/net-next/c/4128bda8fc1d
  - [v14,net-next,13/13] ice: implement E825 TX ref clock control and TXC hardware sync status
    https://git.kernel.org/netdev/net-next/c/e075d7768386

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


