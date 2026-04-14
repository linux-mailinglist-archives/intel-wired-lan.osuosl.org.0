Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0E3QDGz+3WkRmAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 10:44:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9889C3F77E1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 10:44:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7430461C76;
	Tue, 14 Apr 2026 08:44:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fmmpez57UZBN; Tue, 14 Apr 2026 08:44:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E907461CC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776156265;
	bh=ET3wte8K+UK2w7PAn9uF87YFkYStoAXBNwNcEqaM2oI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A1koNNxGVZMuQaDCfFVtqV5xZ+4hEjRvjefKU6TLpnYvvfK2qimaPfTyNnYfKbGti
	 qilKvy9FLrxNeoXIQNmcYRYDYjcp+cKZc9KdCW4eWs7PvCj1nNC7EGFMFJyZvWSiL0
	 P2W6mTXyT5y6BlIE3OXcWyMp1JBt5JlkzeBPqusZyblaISQlXaes4rBbWH0p75+Uii
	 Bgjcs+oo43YaIvZqU86yWMRslgQkt78a7hcf+FDyXPYZ784GlrSsryZ1mtfTywXKbS
	 rtzRw1rfFyCFFIsANommveLAivA2SX7+pdyNkqA3z3ke2WcJU1Q12/ejOksmX02c5B
	 2fLVTllXBFFVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E907461CC8;
	Tue, 14 Apr 2026 08:44:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 246BB283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 08:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16B0A4076A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 08:44:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ORhHJSDIDhhD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 08:44:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 63A13406F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63A13406F6
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 63A13406F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 08:44:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6837A60018;
 Tue, 14 Apr 2026 08:44:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 048D9C19425;
 Tue, 14 Apr 2026 08:44:18 +0000 (UTC)
Date: Tue, 14 Apr 2026 09:44:16 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20260414084416.GW469338@kernel.org>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-2-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260410074921.1254213-2-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776156260;
 bh=s/RPIBdbqtGV3I+qgmGFUomO2XQA39NxOhQnddEQNNk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ma97uWBCalFaX0n7G7DL1RiXBCVKhs+9NXOThx7gK7GXW/QQPYAApBlVF+7Dw+k/z
 wjvZhox7JSgHEknoB/PQW2vf2a5lyyZWV6M/HNgOgtIq/8Uoavd4B47aPcWFSD/sGd
 iCSc3RwNkfetixCuE7YMiu7yCyYCVK8fuBtZxnIfprvlAniYbYwtIgQtGrkhfWWb7g
 roqigTciyc3SWshbHYlewOgCjgGWSfzr2K2clXXtsOg/iyXGWYoLVNO5QL7GFyLRFU
 9FBhaGrK4taWLBhP5vBFDqY2U3u1A7CmUeDcevGnQpOaVrQyKSeY3ecs6R2sTpVYYG
 e4pxX+j4BkC6Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ma97uWBC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/10] ice: translate FW to SW
 for max num TCs encoding
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:david.m.ertman@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
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
X-Rspamd-Queue-Id: 9889C3F77E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 09:49:12AM +0200, Aleksandr Loktionov wrote:
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> The FW uses a 3-bit field in a TLV to represent the maximum number of
> Traffic Classes supported per interface. Since the maximum value is 8,
> and at least one TC must be supported, the encoding uses bit values of
> 000 to represent 8 TCs.
> 
> The driver currently does not translate this value and reports 0 max TCs
> to the DCBNL interface instead of 8.
> 
> Add a translation when interfacing with the FW to use 0x0 as the value
> for 8 max TCs.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

I'm not sure if you want to reconsider this as a bug fix.
But the code changes look good to me.

Reviewed-by: Simon Horman <horms@kernel.org>
