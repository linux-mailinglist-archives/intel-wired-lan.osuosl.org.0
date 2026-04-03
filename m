Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AKjIMG4z2kd0AYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 14:55:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD6C3943F2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 14:55:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7E5740770;
	Fri,  3 Apr 2026 12:55:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hUyDfFInR6Mn; Fri,  3 Apr 2026 12:55:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 417634083E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775220926;
	bh=y+37bVZcgQBtf0jbOaXhR0YgeNNsDG5B8sPbrnerN9k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J8+/87VNz2WD98zkd7d+hRLT/eLZ6QLpggzjcUnsvB8Eu+mpPL+FE+rwqDRvu3Kbg
	 WotCks+fAGa1kY9uUfFnCQjEz2aHmkGTqoYGOLPMFXVxVsB68nauiypuXZV855iEpQ
	 tux16f0XWPX7irQFNWOsKe5+dmNOBJmPAzD+Jr8BVitNf/uXGEoBPZNDsudrLG0DzV
	 jdgsEVNMTN0TV9htfWhKovrnF571VWxtqxndpJY6CxQl1hNgzzpG5Y/WxIrvaNIJlT
	 9xXF0H/Ep1Wdc6THi0fjtRRQ3CUU2E6FRcMtmK5XJxKFCeR6fPIECQRB1+CNMfizo8
	 NF4Rsq+evbgbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 417634083E;
	Fri,  3 Apr 2026 12:55:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4580F1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 247A0607A0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:55:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DCXEQieRSnSH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 12:55:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 736A0606D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 736A0606D3
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 736A0606D3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:55:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id F359A4396E;
 Fri,  3 Apr 2026 12:55:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF89AC4CEF7;
 Fri,  3 Apr 2026 12:55:22 +0000 (UTC)
Date: Fri, 3 Apr 2026 13:55:20 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Message-ID: <20260403125520.GA105440@horms.kernel.org>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-9-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327072332.130320-9-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775220923;
 bh=hRHbs1nZiBxTW53Dr0PK/q49gOnA+srDX4sDHcKT/U0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KupXL9c1SOTFLELhbeEvZqVLN9rUlFO3MhzaB6z2L09ny7U2mHCyQHaKmI3iSeIup
 pEJ84bkq93g8ZA0fS249HT5PeBcFO3yixizyo7mcR4uN0ek/QI8BROkzGaqeoC+qoK
 012NavwbizjkM/9cZrZm1ekueAfoHaCKyJgdkfErXW6Cd1UOBTP0j6Zr5s34ViQxa1
 5y2nC+Hkk0cO3qQnB/QrS5Hr6XvODNu8ZaST2GTW/M7vJKT5lMBRERc5ZIP5nwbMZ4
 eDzIZ5lXROUgDzWiXcByC+MeXTdM9SH++Gr6OtIfxDGmo6O/sVD6DU06M82jkwRTmK
 /rCSRYn8TTe/w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KupXL9c1
Subject: Re: [Intel-wired-lan] [PATCH net] ice: use READ_ONCE() to access
 cached PHC time
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:sergey.temerkhanov@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6CD6C3943F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 08:23:32AM +0100, Aleksandr Loktionov wrote:
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> 
> ptp.cached_phc_time is a 64-bit value updated by a periodic work item
> on one CPU and read locklessly on another.  On 32-bit or non-atomic
> architectures this can result in a torn read.  Use READ_ONCE() to
> enforce a single atomic load.
> 
> Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
> Cc: stable@vger.kernel.org
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

