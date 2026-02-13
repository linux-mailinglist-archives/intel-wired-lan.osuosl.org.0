Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNzCDMA/j2lXOQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 16:14:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C381376F8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 16:14:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFCF241CCA;
	Fri, 13 Feb 2026 15:14:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AuBE0W6E2xd7; Fri, 13 Feb 2026 15:14:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1535B41CBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770995643;
	bh=aFFEPcTusdmKMcB1BD0CaAYJ7BU1C0I7jO7XrI4yo8c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1Khal4/lA8pjvi6/AhJCBRThTBQh43vnDX5oHRP7cMMmKlAWfmPY1AUBkKRZAD4rH
	 +08znj0TTcTuImOWsYiqKOx1abCwB3FHCXNjac8rtd5cgmRvfq0ItoR1tJcBTwMv6b
	 pecaCw1SWISRwQCpX5Dmk74mqjD37ThHNK77KPd1BXj4VO3oNvJAtvACIME38HUJco
	 nftprNN2F4bUM5cW3Jy3UVSHlYOvshZZB0dH0Nen9uPQpqSIt8qfDmzfYCV5TmW3pb
	 C1mvA2Hn6aOYwS7/5btjqOufvHYdJzXWsVgL8Qd+M+yI19nySpQuj17trytRHSVEqF
	 QDvDq8O+oEf3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1535B41CBD;
	Fri, 13 Feb 2026 15:14:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BDE0EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:14:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E3B1607BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:14:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7GaHyyDrcN3A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 15:14:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 785D46074E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 785D46074E
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 785D46074E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:14:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4E8B16001A;
 Fri, 13 Feb 2026 15:13:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F38EC116C6;
 Fri, 13 Feb 2026 15:13:57 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 jedrzej.jagielski@intel.com, anthony.l.nguyen@intel.com,
 pmenzel@molgen.mpg.de, netdev@vger.kernel.org
Date: Fri, 13 Feb 2026 15:13:44 +0000
Message-ID: <20260213151344.2513857-1-horms@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260213030940.1809797-1-aleksandr.loktionov@intel.com>
References: <20260213030940.1809797-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770995639;
 bh=3bq173aJ5nk+kZXQK+mYY1RtdGNP6XtLgOFXb3IkeiY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=s4jSZ0ILRX0h9SzisEh1YWZmn6dTUbhxn2kagXrzEJlHs7/l1XLroPzUajfE8Dw3F
 eoPNIOVD6pf0UdhzOtAc/4bZSRGsBPw3laI2Xj9galB9mpQpShnOBCboLhGcLLzoNM
 VUC9HFi5hPF1HcJp1sv9jjrL8njpJneBPn1o7PY+foR4dflBfIbmnu9NG1s455Gcy6
 M5XKP1Kio32x62BeloRXu8oMABUeGeKmctAPBIA2u6VvqMUaXM9AC2QRYtC2pAO/hi
 8o7C94D0KdLTSgNWFsvd9HJVK0Li5htJpdyJXTFVOtse1+LsI/Qe9sfm3/K95JT+s0
 VknEvxTBTlATw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=s4jSZ0IL
Subject: Re: [Intel-wired-lan] [iwl-next,
 v3] ixgbe: fix unaligned u32 access in ixgbe_update_flash_X550()
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:pmenzel@molgen.mpg.de,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 33C381376F8
X-Rspamd-Action: no action

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ixgbe: fix unaligned u32 access in ixgbe_update_flash_X550()

This commit adds a u32 member to union ixgbe_hic_hdr2 to ensure 4-byte
alignment on the stack, preventing unaligned 32-bit accesses when
ixgbe_host_interface_command() treats the buffer as a u32 array.

> ixgbe: fix unaligned u32 access in ixgbe_update_flash_X550()
>
> ixgbe_host_interface_command() treats its buffer as a u32 array. The
> local buffer we pass in was a union of byte-sized fields, which gives
> it 1-byte alignment on the stack. On strict-align architectures this
> can cause unaligned 32-bit accesses.
>
> Add a u32 member to union ixgbe_hic_hdr2 so the object is 4-byte
> aligned, and pass the u32 member when calling
> ixgbe_host_interface_command().
>
> No functional change on x86; prevents unaligned accesses on
> architectures that enforce natural alignment.
>
> Fixes: 49425dfc7451 ("ixgbe: Add support for x550em_a 10G MAC type")

Does this Fixes tag point to the correct commit? The alignment issue
appears to have been introduced by commit 6a14ee0cfb19 ("ixgbe: Add X550
support function pointers") from 2014-12-05, which introduced both the
union ixgbe_hic_hdr2 without a u32 member for proper alignment and the
ixgbe_update_flash_X550() function that passes this buffer to
ixgbe_host_interface_command().

Commit 49425dfc7451 from 2016-04-01 only added support for the x550em_a
MAC type and did not introduce the alignment bug.

Should the Fixes tag be:
Fixes: 6a14ee0cfb19 ("ixgbe: Add X550 support function pointers")

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> index 61f2ef67defd..eb5bf3b6bbb5 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> @@ -2798,6 +2798,7 @@ struct ixgbe_hic_hdr2_rsp {
>  };
>
>  union ixgbe_hic_hdr2 {
> +	u32 buf[1];
>  	struct ixgbe_hic_hdr2_req req;
>  	struct ixgbe_hic_hdr2_rsp rsp;
>  };

[ ... ]
