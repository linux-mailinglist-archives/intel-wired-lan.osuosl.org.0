Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CASJFS8egmmhPQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 17:11:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F880DBB64
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 17:11:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B892340316;
	Tue,  3 Feb 2026 16:11:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qQbWpj-2_MWk; Tue,  3 Feb 2026 16:11:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03E1E4043F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770135084;
	bh=AQB8uYt1k0DQ2RqLSdvBp5gJURU1XLNMalqQltuuufQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fDRP/hhRRbtpWFPbfF4O58ngirSC5DPSkDgLibhSn63IlVddQEj3dD8EF5AHlON+T
	 quMZje6j0reR6LSpVT2gF20Say3QRNJkMOci1wcTlU58HNhZp17s3iDSygZcwtvgWk
	 RWEbxczh1lO85qiEZnRq68AIICCtW9oEDG1nr4I7QIVcNm04gEEpP2evOLMZHWsr8K
	 UXmO5uiez0dU5aYu47EvC/8ALDcTxKfnG4iR3hJBk/FvMi28TTXsl3eg/nyaTYGnbg
	 +r5g3eq9igxqn0Dy00kwcvgCYtj21A1AWuNH36NZzJpIY9i12HMj4iH6Lp78dtKAHZ
	 uq3rzU6nqHKYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03E1E4043F;
	Tue,  3 Feb 2026 16:11:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C8B3913D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 16:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2B0340310
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 16:11:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xk1Pg4rP1p7R for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 16:11:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D9A33402D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9A33402D9
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9A33402D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 16:11:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4F37E42DF4;
 Tue,  3 Feb 2026 16:11:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7489C116D0;
 Tue,  3 Feb 2026 16:11:14 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: ivecera@redhat.com
Date: Tue,  3 Feb 2026 16:11:02 +0000
Message-ID: <20260203161102.1894146-1-horms@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260202171638.17427-8-ivecera@redhat.com>
References: <20260202171638.17427-8-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770135080;
 bh=1tbIX25+8uE6MY6wp88tD9hkDQp221nFtwfC6Jl67ow=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Jmsb8G4qpkmXi91BggH1JrBWPeFNli0npPW+MBfy9+3crsdSYQ2EtJt5uEvWy+8EF
 p1pfJz0kXtBcroFMeY2v9SjKhWZixreEcjYD8e/PX/AISi6b/VpLq41N4tGWiYk/Yo
 K00vxt3eE1vsNY5n7YlgG1moDVr4rCj2Bko/ksSMwOXwBjMX57ZmBZA0XAmIL6/Q6g
 3wb4g3I2XqnGXLc4mSzDU15k0uqzm6a/nEzS3uGMcfWlXYHBs7oNF0IzX3VCz7M665
 l9zYsUfA2hL7QiBh9l4i6CFPvrI9oEW33iOo8o4FwgUWiP3URE0GjmDEVTEeqh/2Qx
 jwvcaSWrGf/vg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Jmsb8G4q
Subject: Re: [Intel-wired-lan] [net-next, v4,
 7/9] dpll: Add reference count tracking support
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
Cc: edumazet@google.com, anthony.l.nguyen@intel.com, leon@kernel.org,
 andrew+netdev@lunn.ch, linux-rdma@vger.kernel.org,
 przemyslaw.kitszel@intel.com, arkadiusz.kubalewski@intel.com,
 aleksandr.loktionov@intel.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, jiri@resnulli.us, richardcochran@gmail.com,
 Prathosh.Satish@microchip.com, vadim.fedorenko@linux.dev,
 netdev@vger.kernel.org, mbloch@nvidia.com, linux-kernel@vger.kernel.org,
 tariqt@nvidia.com, aleksander.lobakin@intel.com,
 Simon Horman <horms@kernel.org>, jonathan.lemon@gmail.com, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:leon@kernel.org,m:andrew+netdev@lunn.ch,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jiri@resnulli.us,m:richardcochran@gmail.com,m:Prathosh.Satish@microchip.com,m:vadim.fedorenko@linux.dev,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:jonathan.lemon@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[google.com,intel.com,kernel.org,lunn.ch,vger.kernel.org,lists.osuosl.org,redhat.com,resnulli.us,gmail.com,microchip.com,linux.dev,nvidia.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5F880DBB64
X-Rspamd-Action: no action

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
dpll: Add reference count tracking support

This commit adds REF_TRACKER infrastructure support to the DPLL subsystem,
allowing developers to track and debug reference counting leaks for
dpll_device and dpll_pin objects via debugfs.

> diff --git a/include/linux/dpll.h b/include/linux/dpll.h
> --- a/include/linux/dpll.h
> +++ b/include/linux/dpll.h

[ ... ]

> @@ -223,16 +231,17 @@ dpll_netdev_add_pin_handle(struct sk_buff *msg, const struct net_device *dev)
>  }
>
>  static inline struct dpll_pin *
> -fwnode_dpll_pin_find(struct fwnode_handle *fwnode)
> +fwnode_dpll_pin_find(struct fwnode_handle *fwnode, dpll_tracker *tracker);
>  {
>  	return NULL;
>  }

There appears to be a stray semicolon at the end of the function signature
on the line with the tracker parameter. This would cause a compile error
when CONFIG_DPLL is disabled since the function body follows what looks
like a forward declaration.

Should the semicolon be removed so the stub function compiles correctly?
