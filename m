Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIRBK8OmvWkAAAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:57:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E7F2E09C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:57:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A092961BE5;
	Fri, 20 Mar 2026 19:57:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4SxbTQkMyeMj; Fri, 20 Mar 2026 19:57:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30A0E6123F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774036673;
	bh=Jk5qqr2tdqgySy720KQi+pqP8yQdikH9WG+p8Q5OJ7c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iBVlUBXRnCI6dz2Z+Mp/4Zh4gu4sygz989kAUmr5qwmhu34WfkgYtPDmTbisv0dj6
	 Dg0XMg/o78yEKxEiiKxKqW+AmC6SGY9+UoLFUXhYq2YNMQjuAw6pscJf8stsWPJ4u3
	 D2cBBApBQSmy3Ad8zP00LCXQgUS8/SpJ+d8GIA3C8/2TW1EseA0F+MsEpUSWevZm6l
	 y3uN4RC1PPdjSc7Gt7IWHDLFG9zJ6lU/kjIm+MQ/hK4KR70s2PcFb/N9WxKy8hfHBm
	 YBZ2XCVzikyMEVXDK/Bzk3NkSfv0F+MtrfpICH6PxkBPI4A+UDOvVOEh6lcN0ZyJaN
	 3gpTOeW83VXfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30A0E6123F;
	Fri, 20 Mar 2026 19:57:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A9FC25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FFD56123A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:57:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J_TgkPZ6g_pj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 19:57:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5FBC86122A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FBC86122A
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5FBC86122A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:57:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 84F0D60130;
 Fri, 20 Mar 2026 19:57:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A875C4CEF7;
 Fri, 20 Mar 2026 19:57:47 +0000 (UTC)
Date: Fri, 20 Mar 2026 19:57:45 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260320195745.GL74886@horms.kernel.org>
References: <20260320050548.422684-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260320050548.422684-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774036669;
 bh=t9B5H/VMcIfqiAeXQ2rk4ql7kLQyXGHI4PB6+emckco=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IZQD51Wq0om2Wvtrzk6MVzOo4jz7mM6ilPx3AstsPy1bfXYeHSw0XvXIztMkJFbW8
 ywbvKNcdjW8vuk5QNVPFHPk1pFF2RxQ8cYVuN4wOOM+/6b/YI5ReVQFENCJYSqfMDo
 lyH22JGkMzpQl1FQ6pkuJ9o29cmlncy2ozQBIDagco0XQtvdJ/598Y3cyyxW6kFnAV
 b1CGMcIWI7rxdzA+8k7kiJRjSaX7YhlzLajB/M9VcuI/Ddeup6xm7WF2TGm+d0c4mI
 wc0K4XWUcMGtKGzd8LY7Wvvrej+bAugXgPp5Vu+9mEBv9m9byNWQadyLEKdHuBWImC
 bAlQWePinaYzQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IZQD51Wq
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: reduce loglevel to
 debug for 'Can't delete DSCP' message
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F2E7F2E09C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 06:05:48AM +0100, Aleksandr Loktionov wrote:
> From: Grzegorz Nitka <grzegorz.nitka@intel.com>
> 
> Reduce netdev message "Can't delete DSCP netlink app ..." from error
> to debug level when in FW (firmware) DCB mode.
> This is not a real error and a kind of expected behavior. The device
> is fully operational and error message might be wrongly interpreted by
> the user.
> 
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

