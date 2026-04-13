Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBzACBDz3GnZYQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 15:43:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A18373ECAC4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 15:43:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29C79846E6;
	Mon, 13 Apr 2026 13:43:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cLYnOQcKlEdx; Mon, 13 Apr 2026 13:43:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5A6C84756
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776087821;
	bh=JZRbzp28INPhxUNdsYLMyoaBffxpzsTwUo9FanaDUQk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P/oEFost/ciFp+dJLW8I21S5zt5hMKFrbf7ygGPvAx6i5gEXMOGL5hyd3rMa3rp1S
	 IeIBFAEloNx4R2nDEzh746bORT0uC3Hl/mZ2Erc1DXbjk4r/hJNauUYzwqEdpREcWo
	 Aua0E9nUrY3iYczn/8w2p3c8tB/Z2L0zYZ758Vwndg0NZQyRpo8x87ORJ6DcPXeBh6
	 tHmb2gRSCfDlBMtpJllY5dghAty+t8RN+W3aQxHVhoIcbAOc8toGV6Y5I0dDZECIIg
	 qFdvKRp3tHaGUVlYL/Vwnq72aeZmTI6nHSt+kSrvmmJrxcO1atS3ItTuc3tYLNJuij
	 JpZC7hf1VycpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5A6C84756;
	Mon, 13 Apr 2026 13:43:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 04C87237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 13:43:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA7C042325
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 13:43:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QT49qVs4Iuvc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 13:43:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4DC934229C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DC934229C
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DC934229C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 13:43:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 17A1D6091C;
 Mon, 13 Apr 2026 13:43:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7A04C2BCB4;
 Mon, 13 Apr 2026 13:43:36 +0000 (UTC)
Date: Mon, 13 Apr 2026 14:43:34 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260413134334.GP469338@kernel.org>
References: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
 <20260408131154.2661818-7-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260408131154.2661818-7-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776087817;
 bh=ZFAMrSY8jw7Ij+knpPaJsB0Cm3Po6aQaaQ3IiLfQUog=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oUoG8juz+ZV1bFSwY92yONhOy4d/ti0+M/1zb31HvLm6g16/O1wIDHFZiCIG2VG0Y
 /us+KqUkPoMCCHTTPVYI7Xxay43OefA5cRgFJLG/PEHil7xCbvu6fM3z1trgq2I3pe
 LEXfALQd5ZOqRMYrdZmuGsaNqGl2XMGuYJKLapES5rLxWmCkAk3egTZam5mSCilxcA
 8uexhE7jAF0Z/46Y22oiKXROxwL8OF2CBtELixs11prlorUcgZcZuqeQ6sDg0Ol1Ac
 ZB0srmiOvhhpxkFFV0YlpajtzdjW3A2bXRzu2T5ad392Kp0chl4c7VNI8zjuOfnBmi
 lK3BHjwEuDYhg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oUoG8juz
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 6/6] ixgbe: fix integer
 overflow and wrong bit position in ixgbe_validate_rtr()
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A18373ECAC4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 03:11:54PM +0200, Aleksandr Loktionov wrote:
> Two bugs in the same loop in ixgbe_validate_rtr():
> 
> 1. The 3-bit traffic-class field was extracted by shifting a u32 and
>    assigning the result directly to a u8.  For user priority 0 this is
>    harmless; for UP[5..7] the shift leaves bits [15..21] in the u32
>    which are then silently truncated when stored in u8.  Mask with
>    IXGBE_RTRUP2TC_UP_MASK before the assignment so only the intended
>    3 bits are kept.
> 
> 2. When clearing an out-of-bounds entry the mask was always shifted by
>    the fixed constant IXGBE_RTRUP2TC_UP_SHIFT (== 3), regardless of
>    which loop iteration was being processed.  This means only UP1 (bit
>    position 3) was ever cleared; UP0,2..7 (positions 0, 6, 9, ..., 21)
>    were left unreset, so invalid TC mappings persisted in hardware and
>    could mis-steer received packets to the wrong traffic class.
>    Use i * IXGBE_RTRUP2TC_UP_SHIFT to target the correct 3-bit field
>    for each iteration.
> 
> Swap the operand order in the mask expression to place the constant
> on the right per kernel coding style (noted by David Laight).
> 
> Fixes: e7589eab9291 ("ixgbe: consolidate, setup for multiple traffic classes")
> Cc: stable@vger.kernel.org
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2:
>  - Add Fixes: tag; reroute to iwl-net (wrong bit positions cause packet
>    mis-steering); swap to (reg >> ...) & MASK operand order per David
>    Laight.

Reviewed-by: Simon Horman <horms@kernel.org>

