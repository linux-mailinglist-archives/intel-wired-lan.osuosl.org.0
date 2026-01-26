Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLpNKoYrd2nacwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 09:53:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1678185A42
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 09:53:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC7EB409B3;
	Mon, 26 Jan 2026 08:53:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FNxgdctExEcG; Mon, 26 Jan 2026 08:53:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D64AC40996
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769417603;
	bh=jp2YKnFbnxz5/htZhYWH5VNgJe6QGCUeU7Pj5Fj3VkQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Il2r3mSKLsvK4sNSuf6xEk+1At8296MSlica4N77Obx6yLsuA1X56OAODm7ZygYT2
	 I7kHuXtist/MakRxV/labbqdOJgbT+imqxtaOZlfHP7zSFc5rFyrf86dE5RVyzwOft
	 UsbEl6ooHzMWO8O2lZC8whlU4v6R3Jsekl+OZrLz6JgxZJt7FwDDCSGhX2rpuzm7DG
	 t1jQR7JPe1ojSWC/+wbiwXlpSlAIn6qLUG7vlPZ3O9YcdvJIBPuK+FNWd9SC/3J3PL
	 cvA990t9KnlRuz/3OyG3qlD1u97jlLUIe4V027RkFXuqAY6eQchBChnqY5vUg+WyX0
	 65bRy8CmXMeiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D64AC40996;
	Mon, 26 Jan 2026 08:53:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F543355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 08:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0084360B6C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 08:53:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qn_KPiwOFhpu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 08:53:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B379760B6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B379760B6A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B379760B6A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 08:53:18 +0000 (UTC)
Received: from [192.168.2.221] (p57bd931f.dip0.t-ipconnect.de [87.189.147.31])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4BE374C1A25A03;
 Mon, 26 Jan 2026 09:53:03 +0100 (CET)
Message-ID: <450d5022-48c4-4b7b-9406-5df9833bd26d@molgen.mpg.de>
Date: Mon, 26 Jan 2026 09:53:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
References: <20260126084442.413230-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260126084442.413230-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: fix unaligned u32
 access in
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jedrzej.jagielski@intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 1678185A42
X-Rspamd-Action: no action

Dear Aleksandr,


Thank you for your patch. The subject/title seems incomplete (stray 
trailing *in*).

Am 26.01.26 um 09:44 schrieb Aleksandr Loktionov:
> ixgbe_host_interface_command() treats its buffer as a u32 array. The
> local buffer we pass in was a union of byte-sized fields, which gives
> it 1-byte alignment on the stack. On strict-align architectures this
> can cause unaligned 32-bit accesses.
> 
> Add a u32 member to union ixgbe_hic_hdr2 so the object is 4-byte
> aligned, and pass the u32 member when calling ixgbe_host_interface_command().

The line could be wrapped to adhere to the 75 characters per line.

> No functional change on x86; prevents unaligned accesses on
> architectures that enforce natural alignment.
>   
> Fixes: 49425dfc7451 ("ixgbe: Add support for x550em_a 10G MAC type")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v1 -> v2 change title and concentrate on alignement issue
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 1 +
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 2 +-
>   2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> index 61f2ef6..eb5bf3b 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> @@ -2798,6 +2798,7 @@ struct ixgbe_hic_hdr2_rsp {
>   };
>   
>   union ixgbe_hic_hdr2 {
> +	u32 buf[1];
>   	struct ixgbe_hic_hdr2_req req;
>   	struct ixgbe_hic_hdr2_rsp rsp;
>   };
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> index 76d2fa3..4a0ccbf 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> @@ -1228,7 +1228,7 @@ static int ixgbe_update_flash_X550(struct ixgbe_hw *hw)
>   	buffer.req.buf_lenl = FW_SHADOW_RAM_DUMP_LEN;
>   	buffer.req.checksum = FW_DEFAULT_CHECKSUM;
>   
> -	status = ixgbe_host_interface_command(hw, &buffer, sizeof(buffer),
> +	status = ixgbe_host_interface_command(hw, buffer.buf, sizeof(buffer),
>   					      IXGBE_HI_COMMAND_TIMEOUT, false);
>   	return status;
>   }

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
