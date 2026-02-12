Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMvjBsA9jmkMBQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 21:53:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDF71310EB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 21:53:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB1BC6072D;
	Thu, 12 Feb 2026 20:53:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aqSY-TPLadRD; Thu, 12 Feb 2026 20:53:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BF3A60699
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770929596;
	bh=kmi2KpdNutp/lnxWHeXmO0XUXwcVgkExZIzgwKZ+NYE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t182PB8/8yrsmYfGHVzzwaSwtwA+BcAdSesTCus2YaPDzDuvOiwQcHrSif3wygtsu
	 w+rZRcnw6IAPdZc/y94e7weNT3F6eJUCool4vJo2yS/6CpVBrjz4iAr18J7CgS8S0S
	 Fy6Vs7Ux80JA/HX8Xo0d7Bw4ENu8PSLb5pWPj0H0Xi7bEum7tNYr2RBHXOebNx0/bD
	 022pVn9Ng+So0a6IJlhmEZrk4mJRr3bKnUSO/cBn2gG/7dOZrAQsw8v+o2NqgHjq1O
	 16aif384ELUkJD4d9gsKEwlcikFAoh7bLYfxx6LTFN6WlyFUnIW5mKFUvpcws8I6WU
	 Q/UcfRkbvcJ3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BF3A60699;
	Thu, 12 Feb 2026 20:53:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CEA0C23D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 20:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B214640A45
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 20:53:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PRsapZdRpJSr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 20:53:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0EF8C40370
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EF8C40370
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0EF8C40370
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 20:53:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7A47F60018;
 Thu, 12 Feb 2026 20:53:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38BEDC4CEF7;
 Thu, 12 Feb 2026 20:53:10 +0000 (UTC)
Date: Thu, 12 Feb 2026 20:53:08 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aY49tNkdtd48KLHq@horms.kernel.org>
References: <20260211091008.236185-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211091008.236185-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770929591;
 bh=iIYldWO1yWWolN4bbBuyPnJV93TUrrkg80C+Xk+0TG8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ML+Q0QqQExCIEzt7Fb+XfoWE7sXr7uEQ2RqdkokUX7il/S+CSCfdRB3k/sQMUrHH1
 m+vRPnrvgsty8IO9MCUPNz/DQ902Gwxty1eYKDmGHa9WpoZXNjoVexSfh52tOlOBZh
 OubEyfYokGPMkr+kepYNT2l8stISbZJVW0TWhruWRAWivblb2GSqDCcTEJGZuqjtBN
 kT0EG0lELKwdGPbk2czHkf009PosoKUKLMTAwhUcK2b3zXApEkTKxCgwIad/np1fCN
 Pk6Xb5wHzl0G3cKH0j5iCFeb4otMKouIMKzBHqo43xa2QDTGLggZEdVGF3co5QoXN/
 3Jhd990IAJcFg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ML+Q0QqQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] libie: prevent memleak in
 fwlog code
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
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4BDF71310EB
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 10:10:08AM +0100, Michal Swiatkowski wrote:
> All cmd_buf buffers are allocated and need to be freed after usage.
> Add an error unwinding path that properly frees these buffers.
> 
> The memory leak  happens whenever fwlog configuration is changed. For
> example:
> 
> $echo 256K > /sys/kernel/debug/ixgbe/0000\:32\:00.0/fwlog/log_size
> 
> Fixes: 96a9a9341cda ("ice: configure FW logging")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

