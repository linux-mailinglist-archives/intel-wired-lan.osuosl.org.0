Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJGwJ2GCz2mwwwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 11:03:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9DE392862
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 11:03:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14D6560863;
	Fri,  3 Apr 2026 09:03:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xM6P_Kg5EQ7i; Fri,  3 Apr 2026 09:03:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D00360876
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775207006;
	bh=2F60cdF8ckIsepJMKQjGfZnqOQL0rwKQd/NQxGoaqI0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fmuluGMqreYAK84ywgKBf+UJnvaSXocNy+P1l1dcuN+Ptc0bJVy3I3jFmGBb50qBs
	 w0UQYBqqb8Zogx4IBiPDQ+zlmfGJNVnEFMCKkclzrftfFBLIojd/5YXeR9c1TeuCXi
	 eeNdKh5afpficwRIntBRAfPm1sxPDeEgjKRg4py2B+xXhzRdPXfdNs+oLG6Zu1/vTg
	 F+d79LC58RmAPFgi5hh0JO2O3xgAVe7x3CKyFdrbj1wcWaw6ZelT2wZt6xXhpckezi
	 //uzMryKal+47XIP4eQ/2OAeMcun9hjo5wEKiGv7G3nCQOuBFe4R1tzN24hnnyLaaW
	 K7UCM3owRNbXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D00360876;
	Fri,  3 Apr 2026 09:03:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E1AA51F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 09:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C755140C93
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 09:03:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wG0CgL07n2U5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 09:03:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2AAE140C52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AAE140C52
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2AAE140C52
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 09:03:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B8EEC43D71;
 Fri,  3 Apr 2026 09:03:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADF37C4CEF7;
 Fri,  3 Apr 2026 09:03:22 +0000 (UTC)
Date: Fri, 3 Apr 2026 10:03:20 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260403090320.GD11973@horms.kernel.org>
References: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
 <20260327072236.129802-3-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327072236.129802-3-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775207003;
 bh=uYfpJf1PlvTAcU8ebq/7cUHKuXcqf0B8lI+Qqwxgiac=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fEFLPM+n8Z3KnW7gkt6ce0BmuStcIfeS7hNNF/HDFaepeanRfHftg8nIKukK5Bqmx
 awokF0zpn0VeW7wii7OL37qFwS94wvjcuHgNWHgn54HHDYbIApF6/Vwg50Zhtktlto
 YJEKNT11BxJ/PdxP0DnKbKMz4rpUbf4lkIZ4DGrpMZOl4n/XlZpciIOVpxTfwF/ie5
 /Ihl/RTMeLv7EvPrAxRjSkWEcngNi+I4o13R5WJLnd56xnvHdEpR94HQnYzAjL2vS+
 fkr7ApOR+epGTleXYa2ArCJf4rOtDTIhi8YeM1zwOPGHqHMdEqYayTO4Rb17KAzl5H
 qJhBOJGWKMuhw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=fEFLPM+n
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: check cross-timestamp
 timeout bits
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,intel.com:email,osuosl.org:dkim];
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
X-Rspamd-Queue-Id: DF9DE392862
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 08:22:34AM +0100, Aleksandr Loktionov wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Polling for cross-timestamp active bit depends on HW scheduling and
> actual timeout may happen before the driver finishes polling.
> 
> Check cross-timestamp timeout bits to ensure that the driver finishes
> the operation earlier when HW indicates timeout.
> 
> Fixes: 92456e795ac6 ("ice: Add unified ice_capture_crosststamp")
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

