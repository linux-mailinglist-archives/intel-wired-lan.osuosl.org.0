Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NrFMF/zAmrpywEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 11:31:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB37A51DC10
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 11:31:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CFD8821C5;
	Tue, 12 May 2026 09:31:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZIfF8WueT2Bq; Tue, 12 May 2026 09:31:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3B8B821BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778578266;
	bh=ZWGliR6sRyQy4Vu1Ez5x0amITnRfnSKZvyfPx2T25Jw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sYMnS1Cagre6vyL4AfN6kJ3UMtEMNBwdoCXJ2EqM4c/7vHCKDQPmaxYjzNlzqpfFY
	 M7obRhl4ROUeHw+a+D0wj5CXhY+Mwvz2IqPlJb2d5nhnlw1cQdmZVPj9RIBLWhhKF2
	 WwQvhH+m6JXzbNPj0LlauoWOXX3iNQfEqjDrN7bubowwBVNY5VxntPEphE98a6D7ty
	 Mrq6ukdIzlykf4rLHtzQ8jf/srbSXSXOPmORPJ/JRAvzUs2MEkX2bSk3HM5Bog8+5p
	 xqYIk26RbvW6jmcqBs1oiKnKBU0vyJQo/yaXX+VYzG+JLoYVQn1vTQerMfPn0EadwZ
	 2bTMsVNPL+ihQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3B8B821BF;
	Tue, 12 May 2026 09:31:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6512C223
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 56DDA821BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7B2N_nsm25gx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 09:31:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 86CAD821BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86CAD821BC
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86CAD821BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A0E4E44332;
 Tue, 12 May 2026 09:31:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DECCEC2BCF6;
 Tue, 12 May 2026 09:31:01 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: przemyslaw.korba@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, aleksandr.loktionov@intel.com,
 arkadiusz.kubalewski@intel.com
Date: Tue, 12 May 2026 10:27:41 +0100
Message-ID: <20260512092740.290008-2-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260508102247.826375-1-przemyslaw.korba@intel.com>
References: <20260508102247.826375-1-przemyslaw.korba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778578263;
 bh=/Lkf0xtjR8+DcAGM3D4n7rN02RixsrTSOnsw4O3WC10=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M0C1PluAnOEvd3FHFCLKsCriNp2pN7jslbKG13ypogFIFfLacjv/lI4SOjIFHfj0E
 mFuA5EJAHtbq5Rif4W09Kz0ses2CrvoIlfeJg7v9Oo6DYxbYqzwiB3EW5U69tkUXZ0
 aqnsVZuRFJf0HJXP0w6qTTAOdUiU14KDWtv3321u0vncE9pgm7OPYwb/2b5DChRBFP
 WI4t0ecWLeswRdw6eOhsXS/ou2rVdD8nK4mDAnEH1tbWeuEmk4QAePwYnND3ica2l2
 j6rUJh1KAr0Rzlh6TDKHt+7bKeVlq7qgCr/RbNBMXsVfV/HGApk72sEtZQ+z18qaqV
 TAUOKSn01e3uQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=M0C1PluA
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: support SBQ posted
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
X-Rspamd-Queue-Id: BB37A51DC10
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: support SBQ posted writes with non-posted support for CGU

This commit introduces non-posted SBQ writes while allowing posted writes
to skip completion waits. It also adds an SBQ flush by reading address 0
from PHY 0 before issuing a SYNC command to ensure writes are completed.

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 24fb7a3e14d63..ec4c85ad12e4d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -352,6 +352,17 @@ void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
>  static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
>  {
>  	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
> +	struct ice_sbq_msg_input msg = {
> +		.dest_dev = ice_sbq_dev_phy_0,
> +		.opcode = ice_sbq_msg_rd,
> +	};
> +	int err;
> +
> +	if (hw->mac_type != ICE_MAC_E810) {
> +		err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
> +		if (err)
> +			dev_warn(ice_hw_to_dev(hw), "Failed to flush SBQ: %d\n", err);
> +	}

[ ... ]

> @@ -4469,15 +4482,15 @@ static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
>   */
>  static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
>  {
> -	struct ice_sbq_msg_input msg = {0};
> +	struct ice_sbq_msg_input msg = {
> +		.dest_dev = ice_sbq_dev_phy_0,
> +		.opcode = ice_sbq_msg_wr_p,
> +		.msg_addr_low = lower_16_bits(addr),
> +		.msg_addr_high = upper_16_bits(addr),
> +		.data = val
> +	};

Since ice_write_phy_reg_e810() is updated to use the posted write opcode
(ice_sbq_msg_wr_p), it will skip the completion wait and return immediately.

If the SBQ flush in ice_ptp_exec_tmr_cmd() explicitly skips E810 devices
via the check for hw->mac_type != ICE_MAC_E810, does this leave E810 PHY
writes entirely asynchronous and unguarded?

Could this lead to a race condition where the writes have not actually
completed before the SYNC_EXEC_CMD is executed?
