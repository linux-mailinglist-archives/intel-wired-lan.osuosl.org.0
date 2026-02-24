Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6C75OivXnWk0SQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 17:51:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 695E718A155
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 17:51:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B39BA60E09;
	Tue, 24 Feb 2026 16:51:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EwpZUdYUCpRv; Tue, 24 Feb 2026 16:51:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30F13613E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771951913;
	bh=P1y4bP+5R77sG3n+hg3sIZ8so3DA4XftpNuy6lZ2+Wk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y9CQ8vVFRGKLFXAr1T5C6zxvQiUslJH5gjmF+jdm6BtlNmJ0Dy3eEmWTmwZLytF8m
	 upcXZMTHnxX7+elEsvIzKQ2DV8ajSPRBnL3cOmuxIM6B5mpokwVcinZ0D51bgp4FTI
	 ccIOdynswUnumKjkstfUPrtZYVCmFos3NX+e2cKCGSYVRxPJXMXwRgOhxzycw1F9bY
	 6b+5ZhhNj+vR/6ZQvlti8kkMQTgkc49gtn4jurHJQLcn9DFYJBateCFzQv27T4d2p5
	 X8cQN/XPs0meJ5g96+5v8rQTIrxOFFG0YhCnBDEG5cDddmYPa0HcuUf/eHTqM8wG4a
	 OOgh6mFriHbcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30F13613E1;
	Tue, 24 Feb 2026 16:51:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 067AE249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 16:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E520E84535
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 16:51:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kkXbUcf-3AAO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 16:51:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C4FD84534
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C4FD84534
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C4FD84534
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 16:51:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8015B600AE;
 Tue, 24 Feb 2026 16:51:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D678DC116D0;
 Tue, 24 Feb 2026 16:51:47 +0000 (UTC)
Date: Tue, 24 Feb 2026 16:51:45 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: netdev@vger.kernel.org, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <aZ3XIa2a1XiI4cQY@horms.kernel.org>
References: <20260223-jk-improve-fw-update-activate-message-v1-1-ce2b4abcf79f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-jk-improve-fw-update-activate-message-v1-1-ce2b4abcf79f@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771951909;
 bh=NbJZkDphPUQpxbHFYoF66qaDcKzRN4oeXu/r0CVUxhM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g8t3n5vrKeBclrgxx/DXcZSaeTJtDIoC7NTnka3pudEyN12jLjzMCfPzRFSwmHvNH
 cqNjdRGYSj7GqfLEBxbf9rJQH5cnnfXas96W3UUPPGXphKQ6iQgihcCsSxGukNim0x
 m8o78nbhwzW6h6cgkh5w6DQZRMLyTLfi7MV0cf/lGTiGje8PBMLn6AbdPog3y6hBIo
 ubbZUxJAh9htnvRPy3iGNi99CBY4Va4P3DJJIfv+sfy8CWDila94nOt8kezpt8Q2ru
 bPoGQpQD4ujLJZownHPzSU326ehGEEIL0aa2LI/c5z55KnZmBUMKDYU8Y2wEyWXpDb
 3orzodgnHpCjw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=g8t3n5vr
Subject: Re: [Intel-wired-lan] [PATCH] ice: mention fw_activate action along
 with devlink reload
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,horms.kernel.org:mid];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 695E718A155
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 04:12:17PM -0800, Jacob Keller wrote:
> The ice driver reports a helpful status message when updating firmware
> indicating what action is necessary to enable the new firmware. This is
> done because some updates require power cycling or rebooting the machine
> but some can be activated via devlink.
> 
> The ice driver only supports activating firmware with the specific action
> of "fw_activate" a bare "devlink dev reload" will *not* update the
> firmware, and will only perform driver reinitialization.
> 
> Update the status message to explicitly reflect that the reload must use
> the fw_activate action.
> 
> I considered modifying the text to spell out the full command, but felt
> that was both overkill and something that would belong better as part of
> the user space program and not hard coded into the kernel driver output.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Thanks Jacob, all,

I agree that this text strikes a good balance.

Reviewed-by: Simon Horman <horms@kernel.org>
