Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIkNCTYL3mnRmQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:39:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BAA3F80C6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:39:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CADC428EF;
	Tue, 14 Apr 2026 09:39:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iGHgYh8AESPv; Tue, 14 Apr 2026 09:38:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0D5A428C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776159539;
	bh=/J82LbjAOwM7Yp+CsiEbDlGZEmeFrL+3b950wa4gWf0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cmMSB8OwsVFZ1LWC3n5nYAzrApKxOyOMu7nVSQYTMNzBhynzFoJ8E9xPM/y6v0KZL
	 FMsJu5ngBkYGBKeTdyMLXwWkbYvByngma8xG5KO90W7SYfREWJssZqt5N6TGA6hZXs
	 j9sRkaNoqMDIkr9ESuH69wYw7ag7Gfz/RFZ75MrYsjv/XBnehy2g6u848N5fN1mfjw
	 oUIdHCMO5lI1kfqFB3uZx7pZhRZmKqylLOTpUvHcf5YofidMvAsML5wdt0NNLWPuVw
	 Cx0cnFrntXrjm45AQs8vI8wkkpx5x1KNrdlAiQZiRxrn1r4e1Nhm5GcUMq/lFDwOYc
	 dj73EmbPSw4Lw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0D5A428C8;
	Tue, 14 Apr 2026 09:38:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D5465237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB743428C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:38:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OY9zwFjPSQt3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 09:38:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 26AE0428C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26AE0428C1
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26AE0428C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:38:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 13E41600AD;
 Tue, 14 Apr 2026 09:38:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5A32C2BCB4;
 Tue, 14 Apr 2026 09:38:54 +0000 (UTC)
Date: Tue, 14 Apr 2026 10:38:52 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260414093852.GA469338@kernel.org>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-9-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260410074921.1254213-9-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776159535;
 bh=V0Twrt94RMQHR87PARXsvnrB4lobZx+97fuAAeeHGfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gTdHq9mbrBoCjTJQZ7S5TZYU/IpPVc6NmfIQcdb2pGBVtfNAeBxJUq3ee44Q2JUaY
 tXrQS7kEa+DLy4KJ94kICM2Kf5WBqDVJdd9EF2js/0iqld7WrStkcuhOYrpdKFS+k6
 pfNf+tvAsS9CMMFR+ilvENDVwFx8Z+ERLlXpqb1UF4ZQVXynmQj/b/oXJDYaxgxWoM
 V24+no4uU0uTmuTMq3yXeHUVHz27zFy2m8vabdYusciJMXYaaTqS4mK+BtOvGXnRa5
 LeMp1J14LbYTZ04i+uZTAMPa7L6bfNSh0JnKTO5gI4wJQbRAF785U/zgMAYGBgZKvk
 kWa5cRbllyzmA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gTdHq9mb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 8/10] ice: move
 ice_phy_get_speed_eth56g() from ice_ptp_hw.c to ice_common.c
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
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
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 96BAA3F80C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 09:49:19AM +0200, Aleksandr Loktionov wrote:
> ice_phy_get_speed_eth56g() is currently a file-local (static)
> helper in ice_ptp_hw.c. Future users outside that compilation
> unit require access to it.

FWIIW, I think it would be slightly better if this patch was accompanied by
such a user.

> 
> Move the function to ice_common.c, add a declaration in
> ice_common.h, and relocate the enum ice_eth56g_link_spd from
> ice_ptp_hw.h to ice_type.h so it is visible to callers of the
> new exported function.
> 
> Suggested-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

