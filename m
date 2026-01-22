Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNt3Dr5BcmnpfAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 16:26:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ABC68C0D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 16:26:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B43B4134C;
	Thu, 22 Jan 2026 15:26:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cq-Lifs-eLjm; Thu, 22 Jan 2026 15:26:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DC1941321
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769095610;
	bh=EC6SH53RK9tBd5Fp7gIiY7yZ4DLB1JMDI6tC+GGvcN0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cPag+Dzcz60vWYksLFtFsfRt3P+XxfhHt34aw7DcpAnFfm5fU/XYRCRMnYVxn8wtu
	 MZaD+s8NXf51hvxvesvzksEWFZ/ggmTg+lE6MIh7qchDa7JID7GP9s22/GpZqb0J/T
	 pqhIxrmLC2g8V8fI98+7SG7ylF7/MuCo+nzRoiK/I285SRGf+hUVJR9Pmhh6f8TYf8
	 h4DU2WZvY+VdtA9ApEr6Kmoa1iFpVgEeJbZM154V/fz3J3T2ZqaPY/M7jQUUpM9e/3
	 zqnyD8UgNiwZTmUr1PiVtSKvL4nDZI3Q+X8tuZ5CEq756DrDmH9nMuEMgVXjT6WBqv
	 ahlBJhhqwp4kA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DC1941321;
	Thu, 22 Jan 2026 15:26:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 996B6122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 09:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B04540E54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 09:39:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bCN5bGlZh3wx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 09:39:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1236; helo=mail-dl1-x1236.google.com;
 envelope-from=dqfext@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8DE9D40E4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DE9D40E4B
Received: from mail-dl1-x1236.google.com (mail-dl1-x1236.google.com
 [IPv6:2607:f8b0:4864:20::1236])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8DE9D40E4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 09:39:52 +0000 (UTC)
Received: by mail-dl1-x1236.google.com with SMTP id
 a92af1059eb24-12332910300so239225c88.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 01:39:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769074791; x=1769679591;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=EC6SH53RK9tBd5Fp7gIiY7yZ4DLB1JMDI6tC+GGvcN0=;
 b=X553QNHcm/wDSgM7f0u2ReDwn5mEu8ttyXFx9sBphDAFlAy8OE6RNcBQ1fDwWDvTU9
 KlM6DGCCFhx3w8DY8uPJ7LBytrZBDJtB55XtpsNlB8g8XBHqcBkNE5tqPZoQ1NojHowC
 sdl0euNYN+ZE7IfdRQr5QfwM+X5sxvfeXWSyOnZ2HhTT+0ccMfBuSsZfrhcPSUA7NRm6
 basJPTCgj0tMQ+LPF8wEEZ99gqeKjkjqMySoLrUyMunEfRkO8l2BjRLiRNmM/qk1nwwy
 +hilyp+DTiS0tYoysRJEOECJ2iz2Z96XzM7nwdRP6By2PGgGmggKKFYB9ugIdTtRYtfD
 Q4dA==
X-Gm-Message-State: AOJu0YwVocjVJqEoGoYmMgbHT+ffJubP0brFscAOu/LeVjLrf5pxasXk
 VPwlnGKxRJMVtVZayrR7RTmWmKusLb0KAP+BeLAhLN6K+UZjwRsBBKBd
X-Gm-Gg: AZuq6aJKsp2g9+vYEOXOX7HmrPVQVFzI1N3UYlIrADHjz2hLgPZAnEU7L8F7lWq6zQE
 TiAVaZWMNHJYxMELoCzpmfhX4LOeCEyNP3PH7ecbPXMDpfMM9PpdDhyAKSO0M9HFG13xi/4ZaYR
 hrfOfMw6WNwm7jrdis8aOgxHiO4uBWjqs1+w71A7efe6OQeneib3Kgn0xpKXaMPH84OjLgvFtit
 iR8YK+4K/j2BytI6jbN8sqhUzcNX+bN5/kuCVbpeb1vsoGDBOnfBekQ6YMDbgzt9YNRq/qawSWm
 ddsdABOHRuamWnU7DhIYGrsVgxUuYLRysxnPqflJmeWtV/1d47aupp+7d+VHjBU0aa1zrJnxPze
 uLVBwBNzJDYSSsGnuyGY74mTaOeq1rX7v7Mry9TAOPpigYEZn2WI634ais0LotkE=
X-Received: by 2002:a05:7022:4586:b0:122:9d:bd43 with SMTP id
 a92af1059eb24-1244a70cd2bmr17402148c88.19.1769074791226; 
 Thu, 22 Jan 2026 01:39:51 -0800 (PST)
Received: from gmail.com ([2a09:bac5:1f0e:28::4:33f])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-1244ac57fd0sm28473087c88.3.2026.01.22.01.39.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jan 2026 01:39:50 -0800 (PST)
From: Qingfang Deng <dqfext@gmail.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 22 Jan 2026 17:39:33 +0800
Message-ID: <20260122093940.213113-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260122085102.1117651-1-aleksandr.loktionov@intel.com>
References: <20260122085102.1117651-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 22 Jan 2026 15:26:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769074791; x=1769679591; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EC6SH53RK9tBd5Fp7gIiY7yZ4DLB1JMDI6tC+GGvcN0=;
 b=kO+tc/WvOf5DefhY9NvS/Cv7bd8OObR/ZpSgdmayfEXRczPDJQEoj34qxmibz2a8C+
 fOloqcd4RgUxpDRwRzlN4FFzCID4z7GM1VcXqpTLyEI6gCLCLDmMsnZx/iJ+MOlI7DBt
 PqFSfNNm/CKrshM8W0l3NHqBjOb4XdzoebZth5Q50vBJ10zHE4rLOk2Sxu+xhQWVIU0b
 1RHFqUvp+MsAK/aJtz6Duip2BLygaRJ+LBp5dglj0QvbAxC0vHYTPDLY+egEDF3NDnsq
 0nW4M12UX71VejWkLddpRwrobCpnLmnDpMkbfbDTe8eP0nMphqKL6L1qo2WpsYFbvbMG
 kM1A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=kO+tc/Wv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: fix type punning
 in ixgbe_update_flash_X550
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jedrzej.jagielski@intel.com,m:gch981213@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[dqfext@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[dqfext@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,vger.kernel.org,gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F1ABC68C0D
X-Rspamd-Action: no action

On Thu, 22 Jan 2026 09:51:02 +0100, Aleksandr Loktionov wrote:
> Add a u32 buffer array member to union ixgbe_hic_hdr2 and use it
> directly instead of casting the union address to u32 pointer. This
> avoids potential strict aliasing violations and makes the code more
> explicit about the buffer usage.
> 
> The ixgbe_host_interface_command function expects a void* buffer, so
> providing a proper u32 array member in the union is the correct
> approach rather than relying on pointer casting. This eliminates the
> type punning issue where we were casting the union pointer to u32*.
> 
> By using buffer.buf instead of &buffer, we pass the address of the
> u32 array directly, which is semantically correct and avoids any
> potential undefined behavior from strict aliasing rule violations.

This commit message is unnecessarily verbose, looks like AI-generated.
The kernel is built with -fno-strict-aliasing, so it's okay to not
follow the rule.
What you're fixing is likely an alignment issue. (see below)

> 
> Fixes: 49425dfc7451 ("ixgbe: Add support for x550em_a 10G MAC type")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> index 61f2ef6..eb5bf3b 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> @@ -2798,6 +2798,7 @@ struct ixgbe_hic_hdr2_rsp {
>  };
>  
>  union ixgbe_hic_hdr2 {
> +	u32 buf[1];

The alignment of this union was 1 byte. By adding a u32 member, you're
effectively making it align to u32 (4 bytes).

>  	struct ixgbe_hic_hdr2_req req;
>  	struct ixgbe_hic_hdr2_rsp rsp;
>  };
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> index 76d2fa3..4a0ccbf 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> @@ -1228,7 +1228,7 @@ static int ixgbe_update_flash_X550(struct ixgbe_hw *hw)
>  	buffer.req.buf_lenl = FW_SHADOW_RAM_DUMP_LEN;
>  	buffer.req.checksum = FW_DEFAULT_CHECKSUM;
>  
> -	status = ixgbe_host_interface_command(hw, &buffer, sizeof(buffer),
> +	status = ixgbe_host_interface_command(hw, buffer.buf, sizeof(buffer),
>  					      IXGBE_HI_COMMAND_TIMEOUT, false);

`buffer` is a local variable allocated on stack, and the compiler did
not guarantee its alignment. As ixgbe_host_interface_command() casts
`buffer` to a u32 array, this may cause an unaligned-access exception
on some arch.

For your reference, I addressed a similar issue previously:
https://lore.kernel.org/all/20230601015432.159066-1-dqfext@gmail.com/

Please update your message, and try not to use completely-AIGC phrases.

>  	return status;
>  }
> -- 
> 2.52.0
> 
> 

Regards,
Qingfang
