Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GK2iKdc/4mmB3wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 16:12:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 662D241BEA4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 16:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A71F760DED;
	Fri, 17 Apr 2026 14:12:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4758RbsSG099; Fri, 17 Apr 2026 14:12:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA17460DF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776435154;
	bh=ryoRaDaB74hTSk9z9i+CfUNNbIGWXuhFT7wWMRQ+Gj4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xtes4eSZeZYkE7HZZmqgHEf3yeP3Qxu+2Yirq1GO49+PjfBrSB8csocZhL+0YUROt
	 01Feu7vH9l//yDe84gdP5AhbW8/+t97x6VNBKdibPiZ8mISZhssGf5paBm40e4Wkmn
	 A/C1rSOibmTdcSN/VAO616NGDGjuynpbLQYnwwGm1UpVllYn9FYe1VNBOz/KwmkSvU
	 TwEDNv92aSBJRH9P1h/VgtMASMryrFaW+FFf9/G7d0axyC51VXlY2VTEjzYadgu9CZ
	 5Ji+eNHyywAFPdD/zYH4nJ4VKCW32ALkYfc9zB8Ir+ErS7L/o8Vdv6aZ0zw3zxjWkI
	 kOY9v7c2s90wg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA17460DF0;
	Fri, 17 Apr 2026 14:12:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A54D7396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B67F401A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:12:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id miY4kDSjGtVs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 14:12:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E775940026
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E775940026
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E775940026
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:12:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A510A60138;
 Fri, 17 Apr 2026 14:12:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AABB3C19425;
 Fri, 17 Apr 2026 14:12:28 +0000 (UTC)
Date: Fri, 17 Apr 2026 15:12:26 +0100
From: Simon Horman <horms@kernel.org>
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260417141226.GF31784@horms.kernel.org>
References: <20260415102511.1560665-1-przemyslaw.korba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260415102511.1560665-1-przemyslaw.korba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776435150;
 bh=LPMz+wvVSpzcjh14fUZJ2kJ+IffLKQsd9VxWmRRI0n8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ClTow22DVaBwTimMV8DHetTUvp7mCeucU4ZJ+VkxVMIi/zc2PY40S+L0YmAlftSXm
 ZGLWBqUpypDz/SYjedkVL43tIR9XvPdV8ekidacuL3XNtLJFmm8/22zPPCa14ir3bA
 Tvnf7wK/+XHQbPQzO1BKyFJlKskv8Js8QVCcqfVeffso5INtzLqvJMzBVcEYzUGa5o
 ii+z/yNloQF1ippW3VwmQot17MXnLjd/sQuzUVkNM1QzO9ySiXKmHCuser4ERoTwkR
 UQa/PXddFaArajmTQX3i1VHmzCtfhyJwo5aTEvYwaLASZnTJmxFMTMfILVyMOCE8eb
 sdZ/exf+9m6GA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ClTow22D
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: set
 supported_extts_flags for rising edge
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
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,intel.com:email,osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 662D241BEA4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 12:25:05PM +0200, Przemyslaw Korba wrote:
> The i40e driver always supported only rising edge detection, so
> advertise PTP_RISING_EDGE, and PTP_STRICT_FLAGS to ensure the
> PTP core properly validates user requests.
> 
> Fixes: 7c571ac57d9d ("net: ptp: introduce .supported_extts_flags to ptp_clock_info")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

