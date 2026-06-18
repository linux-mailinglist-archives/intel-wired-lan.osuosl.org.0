Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wWAGJMkMNGoiMQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 17:20:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F3D6A1302
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 17:20:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=omhCnE1p;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B750E611E8;
	Thu, 18 Jun 2026 15:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NlX5afGfIYxS; Thu, 18 Jun 2026 15:20:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1453B61348
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781796039;
	bh=iJKgupwTg5WwxEIjpjz5zSB35xMfokN/RkJan+N9JxU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=omhCnE1pWm060C4SEHSjkNvzPz1tXq1hByZBTAnyCk9TvahD73IRmthYbHpHuGTua
	 9o7JlUKtu2dCQHYA1T25yxOixOk9RMk4aiLUgCIe9UP+R/JiHPWGbXH2tdeXIK8uDD
	 MSX4RRIML5EfBGVL/Ya1vlSw+rQpYJVpMXVONrEuhLo7Zva5sJF2O3q8Y6OQtv4nMu
	 0YRejtMrJBy1pADxN/X4BHPvI/GCAmQPlnFMnAU+N8Nh1QCxAO/JP0BC7r7aQCBeHl
	 b76BHi73z2973zodWK6FpsV5gWkw5BJDM0hsMHlaVqrn62kowR6EhTF9G81TTQNsf7
	 WamB+qCuEHWuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1453B61348;
	Thu, 18 Jun 2026 15:20:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D09E2BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 15:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A3D78426F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 15:20:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iBWD3clv8z2U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 15:20:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B811E80D5C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B811E80D5C
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B811E80D5C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 15:20:35 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id D86F043ECB;
 Thu, 18 Jun 2026 15:20:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 792281F000E9;
 Thu, 18 Jun 2026 15:20:33 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: robert.malz@canonical.com
Cc: Simon Horman <horms@kernel.org>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Date: Thu, 18 Jun 2026 16:20:03 +0100
Message-ID: <20260618152003.909400-1-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260617120753.1785565-1-robert.malz@canonical.com>
References: <20260617120753.1785565-1-robert.malz@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1781796034;
 bh=iJKgupwTg5WwxEIjpjz5zSB35xMfokN/RkJan+N9JxU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=P5OD24O95OD4OIoSxLKZUCF1Lrcw//AApzFMAub/HL4F6TLp6pt6l0WuAyy8B4Z15
 JOwN2IWMP/19DiHvnI5iL4kti87vzizOLgrc5/Dqy2NWN+FDFk2WXgCiiIojTsiCl9
 s35V8aKkA4w4UEvnkgHs4bUYGtp5zdeI4pyvHGCymBJKQPKwURVSIhKwj/LXczULxO
 DKE0RkmogEMiBgT4UwHeFa2R+Y3RbArBbZ3JUN4xzkWGoqNtrrzf9wQoptY9eLS4Kf
 nLg768APq2KfVyzE6I3b3aeluls1oQpCp43O+EH64PrTsD9UFCyKucDYSAXEvoOKYB
 3yOtN16WRQ8XA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=P5OD24O9
Subject: Re: [Intel-wired-lan] [PATCH iwl v3] ice: retry reading NVM if
 admin queue returns EBUSY
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:robert.malz@canonical.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 15F3D6A1302

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: retry reading NVM if admin queue returns EBUSY
    
When the admin queue command to read NVM returns EBUSY, the driver
currently treats it as a fatal error and aborts the entire read operation.
This patch adds retry logic to handle this condition.

> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c

[ ... ]

> @@ -96,11 +97,25 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
>  					 offset, read_size,
>  					 data + bytes_read, last_cmd,
>  					 read_shadow_ram, NULL);
> -		if (status)
> -			break;
> -
> -		bytes_read += read_size;
> -		offset += read_size;
> +		if (status) {
> +			if (hw->adminq.sq_last_status != LIBIE_AQ_RC_EBUSY ||
> +			    retry_cnt > ICE_SQ_SEND_MAX_EXECUTE)

[Severity: Low]
Does this check allow an extra retry execution? Since retry_cnt starts at 0, 
using a strictly greater-than check allows the loop to retry 4 times
(5 total executions) instead of the 3 executions intended by
ICE_SQ_SEND_MAX_EXECUTE.

> +				break;
> +			ice_debug(hw, ICE_DBG_NVM,
> +				  "NVM read EBUSY error, retry %d\n",
> +				  retry_cnt + 1);
> +			last_cmd = false;
> +			ice_release_nvm(hw);
> +			msleep(ICE_SQ_SEND_DELAY_TIME_MS);

[Severity: High]
Does dropping the NVM lock here violate the caller's assumption of mutual
exclusion?

Callers of ice_read_flat_nvm() typically acquire the NVM lock beforehand to
ensure an atomic read of multiple sectors without interleaved writes. By
explicitly dropping the lock during the msleep() window, another thread, VF,
or PF could acquire the NVM lock and modify the NVM before the read resumes,
potentially resulting in reading torn or inconsistent NVM data.

> +			status = ice_acquire_nvm(hw, ICE_RES_READ);
> +			if (status)
> +				break;

[Severity: High]
Can this lead to an unbalanced NVM resource lock release and potential data
corruption?

If ice_acquire_nvm() fails here, the loop breaks and returns an error with the
lock currently unheld. However, callers like ice_read_flash_module() are
unaware of this internal lock state change and will unconditionally call
ice_release_nvm() upon failure:

drivers/net/ethernet/intel/ice/ice_nvm.c:ice_read_flash_module() {
	status = ice_acquire_nvm(hw, ICE_RES_READ);
	if (status)
		return status;

	status = ice_read_flat_nvm(hw, start + offset, &length, data, false);

	ice_release_nvm(hw);
    ...

Because firmware tracks resource locks per-PF rather than per-OS-thread, this
errant second release could forcefully strip the lock from another thread on
the same PF that successfully acquired it, exposing the NVM to concurrent
modification.

> +			retry_cnt++;
> +		} else {
> +			bytes_read += read_size;
> +			offset += read_size;
> +			retry_cnt = 0;
> +		}
>  	} while (!last_cmd);
>  
>  	*length = bytes_read;
