Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAaEEU0L3mnRmQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:39:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEEB3F80EF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:39:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5932684C0D;
	Tue, 14 Apr 2026 09:39:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XgQIcmzpxvRH; Tue, 14 Apr 2026 09:39:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA70C84C02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776159562;
	bh=MXXFAToo9EzIDdBta6v0imomcaJvuDPhjCP1LfWd7So=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WKvO/lsVLRVrNY+L3NMDxpnQljj0ylDI2jK3oZVwXt0c4XnSwRHjvOKp88rH/BR29
	 IIL5g3qrMQMdixU9J1YwsQkD9nSi3u2Wyi9f1b7CuRG1C6Bze5oFAPb1lYqVLd0wzP
	 1GcQBt/HSUu+rrE+JMMcNvJgwzEeU9gw4NM61dieSLBkHdVUl2li3IlvPg6kvnLha6
	 d1aXi3fSYb98gRceNFOmW5Hw18gRb5U9T+qPcjuEuQZPYO4C1dIKrtxyA4w77bLCUb
	 Eg3AARU06/bDCcqQN6B+SrUvOzq4+MM6SFY55gYVg2M7ie3OSLSjAvAsZHbWYhbA7A
	 3E8DgtLW4MWCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA70C84C02;
	Tue, 14 Apr 2026 09:39:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 85747283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 832C642468
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:39:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cRJ7xefdQ-hG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 09:39:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 927A940191
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 927A940191
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 927A940191
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:39:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4A24543E43;
 Tue, 14 Apr 2026 09:39:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C7AFC19425;
 Tue, 14 Apr 2026 09:39:18 +0000 (UTC)
Date: Tue, 14 Apr 2026 10:39:16 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20260414093916.GC469338@kernel.org>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-11-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260410074921.1254213-11-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776159560;
 bh=aRRkx0oARVYmRtTLmp4iTQ4iYhOU1FS1vixYruiSzXM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rPL+iy91P84aOq8oVXrZS+OCE26GzRiphmhPKnGfJDaCiA8itZ+ds0x62sRuq9hQ7
 MpDKW0DicvbqfLUOAxPVYtIYRtsX/eWiUZqCkqRQIzBExHxA9ZDAGF71HSmSC61uFI
 rLcA1qM8Yrqimid6cxDml4ELjo8+Qq/Y8DmnFZlfUxzea/p02kiGpDf9dVCJZdl9zc
 gUGdJeqI6YP4Ijx6JEpKKSTTJU5yQRoBxMv9iZmZueminiZ32f7eYCn5vhF+Hzfn7h
 DH/bmMqQilooM+O2Mp/idGYoAXOZuE760aG5NVYzKNu+fHpJJtomuPqzOQQ7SgQt3U
 TT/pSSUdJqRvw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rPL+iy91
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 10/10] ice: promote Tx FIFO
 drain timeout message from dev_dbg to dev_warn
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BAEEB3F80EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 09:49:21AM +0200, Aleksandr Loktionov wrote:
> The message emitted when the Tx FIFO fails to drain within the
> timeout period is currently at dev_dbg level, making it invisible
> unless debug logging is enabled. Promote it to dev_warn so that
> users and administrators can detect Tx timestamp path issues
> without enabling extra logging.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

