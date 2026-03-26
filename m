Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPA4FUmnxWlUAQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 22:38:17 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB1733C04E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 22:38:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FE1940FDA;
	Thu, 26 Mar 2026 21:38:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eq1X0h2QePuX; Thu, 26 Mar 2026 21:38:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3B5B40FC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774561093;
	bh=+Zvg/ouTTX5hfkCZKmKPm0sfVNDHyK4iYrrSKx2SXCg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UFn0RWaMH8mjiCNg+sWwCdMayOK6MgP5ePm2jjnL/HFCMPiCFlEvQ/dJfscHdxvKc
	 vn0UBwHKyLEZTF89LbNtMWawkx8l/76RdRarUXXZemB7qsJwLQ+QBRrHIiCpUviGPL
	 fedRFnVwPSrlznWed9k8hImOMkOvg9ZxLk1ilSG9Lr9o1eaK+UaI/Hw3mQmGWVDuDA
	 Sh59n53XPmu8ev/swYEggInS2fBC0aqwJ8qeFKSGkE3Tn59h03yeTRg/evu8F65EVh
	 YgRNCafHr6w33QnGQNOdSaKRaKzZbpflQIayTwOiflo9rTz9hRNRjjIPiHlbr9Qcpf
	 tapKFJtTVa80A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3B5B40FC4;
	Thu, 26 Mar 2026 21:38:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 38C42249
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 21:38:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B0C740E95
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 21:38:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bvOEhY1hX9L2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 21:38:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 850FF40FAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 850FF40FAB
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 850FF40FAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 21:38:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id EAA8840C33;
 Thu, 26 Mar 2026 21:38:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F649C116C6;
 Thu, 26 Mar 2026 21:38:09 +0000 (UTC)
Date: Thu, 26 Mar 2026 14:38:08 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20260326143808.1fd69825@kernel.org>
In-Reply-To: <20260325063143.261806-2-przemyslaw.kitszel@intel.com>
References: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
 <20260325063143.261806-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774561089;
 bh=AKkd3ppFc84ObBdwBC0HhQtk41jJEhFN8N8H316ksdk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SxUuXfQ76qYfBkJJ9Y9lfUH3N5eSzipqbgOJ7ENaF5deO8NoA2r68B/lPWt3deX21
 O7ioay7Qs6A5Yk63Rhzx/y2BOJd6NcmTyPP4jzENgsu9cl7eqGfQP2X8kvee7fui2l
 EMZrXlQXqPKhY8/sDRe1sFfpW03SNrPj39lMQkNlqxevn6REFYh4ihHLQwoB8mGrIU
 X7RLR60SPriBcXfdU6QZCYoG8lBlN3rGYECTRqnlqlJJZBarq0iLe7fbI4gB2h/SUU
 m+68KmCwcmeZ7bfhG40d1qcS1OrqG5zynoLRubvHTpyYv6ILSa+nASkZV63Wt275ZA
 nxZznDuKHL5Pg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=SxUuXfQ7
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] devlink: unify
 devlink_shd_get_priv() into devlink_priv()
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4CB1733C04E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026 07:26:52 +0100 Przemek Kitszel wrote:
> Current API makes it possible to access shared devlink instance's priv
> data:
> 
> 	void *devlink_shd_get_priv(struct devlink *devlink);
> 
> but it is easy to forget (especially during rebase from "before shared
> devlinks" era) and call:
> 
> 	void *devlink_priv(struct devlink *devlink);
> 
> which even has the same signature, so it's hard to catch the error.

The implicit conversion may make things hard to reason about.
Are you sure you actually mean that it's "easy to forget" or
it's easier for OOT transition?

If we are worried about misuse we should instead add an accessor
for "individual" (better name welcome) instance and WARN_ON()
when devlink_priv() is used in the shared setup.

Or add a third argument to devlink_priv() which will pass the size 
of the LHS ptr, and warn on attempts to access priv of the wrong
size?
