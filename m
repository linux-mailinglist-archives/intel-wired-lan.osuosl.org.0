Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHtaCjU+nmkrUQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 01:11:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A84BE18E545
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 01:11:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32E38614B0;
	Wed, 25 Feb 2026 00:11:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y2h_7nobMkys; Wed, 25 Feb 2026 00:11:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FCAC60F91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771978290;
	bh=LI0Vauyjm/WJVa11JM6KDXC/Wmorzdglu6DvCKsqx3s=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q5spx5M+K0Mv39ao7IW7PSPREfO2WhbuDS6ATLpU/+uYjkItrnfkrHCuYUp+M3681
	 JlzfUuahbkr8mZKtbgYLZuq73FLxps1Nhl8pWjUtaSkYYrfcqM2GhozfWzWMV6gdj/
	 if4gL3ChjEbsLsg0uoHpjDtxYqceo9EfehAg7+yrpAVsnDcsKOYU+kpjf48P4Yn8PE
	 RrgJnYGHB8lTvEeUsAR6c5NQg9QolXz3xCymxy1WZXMGDGJy8S7fMK6ZODjaJw+JaM
	 O4GlYdcqWA6irp/YoP1PDSo02h3gCmghCLhUvDMuN92SgkRtTPxnDqERvH+K0x7luL
	 RJGyQ8Qjkzi+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FCAC60F91;
	Wed, 25 Feb 2026 00:11:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 339F323D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:11:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1971A40279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:11:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gc03ZUvDvZEM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 00:11:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6DE8C4007B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DE8C4007B
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6DE8C4007B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 00:11:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 68D8A43E4E;
 Wed, 25 Feb 2026 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED3C0C116D0;
 Wed, 25 Feb 2026 00:11:25 +0000 (UTC)
Date: Tue, 24 Feb 2026 16:11:25 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20260224161125.4dc744eb@kernel.org>
In-Reply-To: <842bb101-d73c-4470-a01e-f49f96847370@intel.com>
References: <20260220004027.729384-14-anthony.l.nguyen@intel.com>
 <20260222162835.23954-1-horms@kernel.org>
 <842bb101-d73c-4470-a01e-f49f96847370@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771978287;
 bh=Eu/+E6Fe9CTf+32ncOdkyu0tZxs9mpbn4gaiq8dFxqQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lbi/yUtoqADzlCBITKE11CFaiT9gHa2IQJaQhHBj1QC+6Wt2Qjk5Geuw94XAswPnu
 VkNTgQaQoYnKdsGeCm3WEwDZDkTq5zeElAauS5dhoIMmHiyF5JHWUdTfM80fYjEClV
 DHnsPzaCHBM8HBh5yXL6LcVO+DfE9r33ZR54RDBEOAsDN08T8Il9U8SpkaANG8oZZN
 pJe6Mf4+tnK+oQyqMbMs1wFexYT97Et3D98VX/C4iOkLhGnjnA6gt0OsXa+RytVUus
 CZzyyxuSi2c1rYLqn2/47SjD+KzY0LLWR5xujimd1Sx1k8X0gj/qHI9ZED9J2VuA++
 slqj/wVFasEVw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=lbi/yUto
Subject: Re: [Intel-wired-lan] [net,
 13/13] e1000e: correct TIMINCA on ADP/TGP systems with wrong XTAL
 frequency
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
Cc: piotr.kwapulinski@intel.com, brett.creeley@amd.com,
 emil.s.tantilov@intel.com, sx.rinitha@intel.com, brianvv@google.com,
 jedrzej.jagielski@intel.com, edumazet@google.com, boolli@google.com,
 decot@google.com, avigailx.dahan@intel.com, joe@dama.to,
 przemyslaw.kitszel@intel.com, Samuel.salin@intel.com, en-wei.wu@canonical.com,
 aleksandr.loktionov@intel.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 david.m.ertman@intel.com, pabeni@redhat.com, pmenzel@molgen.mpg.de,
 richardcochran@gmail.com, aaron.ma@canonical.com, sreedevi.joshi@intel.com,
 willemb@google.com, netdev@vger.kernel.org, joshua.a.hay@intel.com,
 stable@vger.kernel.org, davem@davemloft.net, andrew+netdev@lunn.ch,
 tglx@kernel.org, Simon Horman <horms@kernel.org>, sridhar.samudrala@intel.com,
 vitaly.lifshits@intel.com, dima.ruinskiy@intel.com, rafal.romanowski@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[intel.com,amd.com,google.com,dama.to,canonical.com,lists.osuosl.org,redhat.com,molgen.mpg.de,gmail.com,vger.kernel.org,davemloft.net,lunn.ch,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[37];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:piotr.kwapulinski@intel.com,m:brett.creeley@amd.com,m:emil.s.tantilov@intel.com,m:sx.rinitha@intel.com,m:brianvv@google.com,m:jedrzej.jagielski@intel.com,m:edumazet@google.com,m:boolli@google.com,m:decot@google.com,m:avigailx.dahan@intel.com,m:joe@dama.to,m:przemyslaw.kitszel@intel.com,m:Samuel.salin@intel.com,m:en-wei.wu@canonical.com,m:aleksandr.loktionov@intel.com,m:michal.kubiak@intel.com,m:jacob.e.keller@intel.com,m:david.m.ertman@intel.com,m:pabeni@redhat.com,m:pmenzel@molgen.mpg.de,m:richardcochran@gmail.com,m:aaron.ma@canonical.com,m:sreedevi.joshi@intel.com,m:willemb@google.com,m:netdev@vger.kernel.org,m:joshua.a.hay@intel.com,m:stable@vger.kernel.org,m:davem@davemloft.net,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:sridhar.samudrala@intel.com,m:vitaly.lifshits@intel.com,m:dima.ruinskiy@intel.com,m:rafal.romanowski@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.979];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A84BE18E545
X-Rspamd-Action: no action

On Tue, 24 Feb 2026 14:59:36 -0800 Tony Nguyen wrote:
> Yea, looks like we need to do some adjustments here. Also, the AI review 
> I just ran on this is reporting another issue that we'll need to look 
> into. I'm going to drop this one from the series to not hold the others 
> up on this.

I'd sometimes apply series partially for y'all but FWIW the idpf
"defensive programming instead of proper rollback" patches really
don't make me want to interact with this series more than I have to.
You don't have to rework them. Just expect some delays, I guess.
