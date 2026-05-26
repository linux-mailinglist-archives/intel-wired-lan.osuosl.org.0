Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MC8bNS3TFWrRcgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 19:06:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A01B15DA576
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 19:06:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17A3640FE8;
	Tue, 26 May 2026 17:06:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nYUI3XBMR4xD; Tue, 26 May 2026 17:06:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F32D40FEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779815210;
	bh=n11Yvwqz+rqZT/ZKP/UpHkRhFhWQS/84ypYO7E9okBA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tYDY2faBx+Fw7JKiXjXIf1EzYENlsXAaTdvlIdpC5IT/IUKMAQCKkdExRKQ01757l
	 54UED8MHWdZ8tLPlnBMS+mlN9/10D8lWSVqSxIoDLdH1rW/xwS60nH5J8nqpi+sLP7
	 9aBZkGI6FEB9tpDeE28vCnfZKlbHtWVAxUt1PVoqucHdbLcFEfC1UOhpTtTxhngUJF
	 vLrWxErXs1QFfudXVgWJq1ixldLk3ntWxorxR7FyeAmPz1rnso64B+Raa01WADILDK
	 PU9kDu9V+VQGgxN705YUbzDE9/oNJ5Jel4uiZp80F8T5Q1zZveqAeEMp2HV/RixSHT
	 xNlzB5gkEHTvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F32D40FEE;
	Tue, 26 May 2026 17:06:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D47D6297
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 17:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA05981E00
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 17:06:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NNG0lvr2yYV0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 17:06:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DB1E881DFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB1E881DFD
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB1E881DFD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 17:06:47 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 60CA660018;
 Tue, 26 May 2026 17:06:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2B761F000E9;
 Tue, 26 May 2026 17:06:44 +0000 (UTC)
Date: Tue, 26 May 2026 18:06:42 +0100
From: Simon Horman <horms@kernel.org>
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 aleksandr.loktionov@intel.com, arkadiusz.kubalewski@intel.com
Message-ID: <20260526170642.GA2256768@horms.kernel.org>
References: <20260520105311.5336-1-przemyslaw.korba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260520105311.5336-1-przemyslaw.korba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779815206;
 bh=n11Yvwqz+rqZT/ZKP/UpHkRhFhWQS/84ypYO7E9okBA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=L74nACt4vDpTQ1KQExp061+LDxI5s2krwDeWN78xNPBref7J6thsPR6qAf/5kO7kt
 aATz9hKovOTTaQ18g359htOPn+NvTMcKe5Zj7+Y4riJ69VD2G5Zj0I+y73i/kw4i/c
 I1B7rE1i/SG/cTjLHasSy0Uzvlwvq2z4UY3abPM/aXqwNXeHtr2ju1RDb8oYLuPY7k
 zZwRWW/x5tGsL/Zyr7yFBhWodkABOjqWKrcCAZNPHeww9UtJxMcygKVOv9u0ILCaeb
 9XlGnd7Nt8g5V8n8mUkISvrfIsxvK12QrFfWvhkw3c192PUHaABUUg1qxhUeOPH6DQ
 8iCfyYm8QmLWw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=L74nACt4
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: support SBQ posted
 writes with non-posted support for CGU
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
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
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
X-Rspamd-Queue-Id: A01B15DA576
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 20, 2026 at 12:52:03PM +0200, Przemyslaw Korba wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Sideband queue (SBQ) is a HW queue with very short completion time. All
> SBQ writes were posted by default, which means that the driver did not
> have to wait for completion from the neighbor device, because there was
> none. This introduced unnecessary delays, where only those delays were
> "ensuring" that the command is "completed" and this was a potential race
> condition.
> 
> Add the possibility to perform non-posted writes where it's necessary to
> wait for completion, instead of relying on fake completion from the FW,
> where only the delays are guarding the writes.
> 
> Flush the SBQ by reading address 0 from the PHY 0 before issuing SYNC
> command to ensure that writes to all PHYs were completed and skip SBQ
> message completion if it's posted.
> 
> E810 only supports opcode 0x01, but its FW always sends completion
> responses for this opcode, so the driver waits for each write to complete.
> This makes E810 writes synchronous and eliminates the need for SBQ flush.
> 
> To analyze if delays are gone, look for and compare time spent in
> ice_sq_send_cmd — posted writes should return immediately after the wr32.
> That can be done for example by adjusting phc time with phc_ctl on E830
> device, for less than 2 seconds to use this new mechanism. Without it,
> command below will fail.
> 
> Reproduction steps:
> phc_ctl eth13 adj 1
> phc_ctl[4478170.994]: adjusted clock by 1.000000 seconds
> 
> Check trace for timing for comparisions:
> echo ice_sbq_send_cmd > /sys/kernel/debug/tracing/set_ftrace_filter
> echo function_graph > /sys/kernel/debug/tracing/current_tracer
> cat /sys/kernel/debug/tracing/trace
> 
> Tested on:
>   - Intel E830 NIC (FW version 1.00)
>   - Kernel 6.19.0+
> 
> Fixes: 8f5ee3c477a8 ("ice: add support for sideband messages")
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v3:
> - include information in comments and commit message about different
> E810 behavior
> v2:
> https://lore.kernel.org/intel-wired-lan/20260508102247.826375-1-przemyslaw.korba@intel.com/

Thanks for the update.

Reviewed-by: Simon Horman <horms@kernel.org>

