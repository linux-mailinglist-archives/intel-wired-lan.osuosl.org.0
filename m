Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLE2Lc2Pz2kzxQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 12:00:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C66393183
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 12:00:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10DA960889;
	Fri,  3 Apr 2026 10:00:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WHKajylL7SiW; Fri,  3 Apr 2026 10:00:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8668A60883
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775210442;
	bh=/p5XixUxCC27uL4fhvJqLess3RgiwpsA47qI4D+6Ayk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w+810a54O28pwyiGyT+lihtIpfVd1r4lrW5tpj3sfzB41mtffH/5oX7/ZmGWY6mr0
	 RhsNhMMKubzpmpfws5YZWBMoREr91wJ4HVbifpyb3NX0A0j3puFe9dZ7IY8I5nDe9M
	 L8tHHaT5z/fhVyH1w+oM5phAtZAPcBX7voeNR0JaPVqL/zBR0vWTmqsQzP8T8vcyjz
	 CV6nhdOIWSPXd2OhTmE3iBtOH8EVVy8aEhqWqyEFlDXhD6lHqRySNE3lTHx1MtEMLw
	 8LLRS/fw97M3bqdKQkdPSGlqkeawLrs/dysMvYPZsyf4iTZnbqq2tOKJvdnBwxhiwY
	 dwDfXnXXmP9cQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8668A60883;
	Fri,  3 Apr 2026 10:00:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 039621A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 10:00:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD4EE40AF2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 10:00:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tK7ppjtBU7Qz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 10:00:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C7EB240ACA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7EB240ACA
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7EB240ACA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 10:00:38 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-486fd3a577eso15542375e9.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Apr 2026 03:00:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775210436; x=1775815236;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=/p5XixUxCC27uL4fhvJqLess3RgiwpsA47qI4D+6Ayk=;
 b=MuDDhP8KcySsBF4mBaiY0EosbXDtpmnVrAeEeU3LtaMuwco+musSDKDqOstKLVmcX+
 wsc8JYHAIOY8DgBh32IvHSUCwc9PAIO9V3ldJoCEfCc3LRZqv1s30Z3LjVL34Bit9Zo6
 cnV0fIXUFvamA8CqmZmr4/IbVPAox3W6yu7sJHtACw4AWzn5y1e68lBx+udmfN0fM7y/
 2ubZZYmtVuzGmUFf4nK8RA7ieqIAGE0znNvYwjIjeDUbIagIJzR+cxP/DkDUFlAloWat
 fSb31K3bu3IVOvUXFGPn1oL6tGgVFim/4ccVyZBrLVgK5KrS4gARGoWLXGJbjPphJvlO
 X12A==
X-Gm-Message-State: AOJu0YwtK59ZT4DPNW0lXsnm5tqTd/FvrfosFDbtiGb7aYj8JH07bFwr
 gfKbiQgwJNqjbx737i3rLg93hGTPIgvbU9aWkhdJXBEJ//ZB7epzcMyZ
X-Gm-Gg: ATEYQzySz+kdBNhCanbT8mhrwDD4w3PgH4DYYrK4cbEcTU/xqTOqcP1d5w8DvO9O0Fw
 60FRBANZEYMWJfF5kyT5OjE+6cv7IBnvlAli68EqQudw8xB6qZqNgBcFp1u/wm1pyMRwE8SxMwZ
 V1SpvFOSpBHHAD0f65FyJkysiwXK3i96f7Nn6SF1g4yAfF6s6fR3Dx4f5zwGDJHUIHvKIm4jdZY
 /IcvAwL49QOUqPWc6HSJ7SC5XMqX06J+yg7WUWMH003rk5XbULnpHObie4szE/X3i7yV8GMrTuZ
 nPcLxETPWfgX3+X0bc8G9yFo5+IsvXEBCogAZvMQHL2m5Zhs/MCCYGZWNcXIGI3Qzub0rQ5CUDn
 Men0/PA0RE2CxNGQeJj8+PQBnljiR23In5RzR6lWEwHjA1zNReNoGFnq1/mUInkyYq9/ak3fYpl
 MbQWCFn03HLzOjnj/MnQP1gyRBcb+sAkxPhwUsQcllhuECuvDIlJH4r1r3PMRt
X-Received: by 2002:a05:600c:5292:b0:486:fbd1:9dc0 with SMTP id
 5b1f17b1804b1-488997a51b2mr37684005e9.22.1775210436221; 
 Fri, 03 Apr 2026 03:00:36 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48899d1b12bsm20958925e9.5.2026.04.03.03.00.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2026 03:00:35 -0700 (PDT)
Date: Fri, 3 Apr 2026 11:00:34 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260403110034.6fe45f70@pumpkin>
In-Reply-To: <20260327073046.134085-10-aleksandr.loktionov@intel.com>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
 <20260327073046.134085-10-aleksandr.loktionov@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775210436; x=1775815236; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/p5XixUxCC27uL4fhvJqLess3RgiwpsA47qI4D+6Ayk=;
 b=UFQ5QZjls0tUSR9uQ305kM2T54c8Y2gAsd8xG4df2yfmPpYGdFHQTVAsBKZbfi1rjc
 nO8jrIyv1UfpBbB0xDEGgCIx47N5N4iTiygIeJRVd4qKEaT+Ec5dzEQuLxaA1VySVHaE
 gEFa6hhvy7lsbjvcybxQnZvHRRHHfxfFQQ3RQrcLET+kQ55tmO7yYRff2ndW2U8U0OUn
 iWCy/DIU8u1xAXB2p1QGGHzFmzLXc0ssfSnXm/AEBWgkAWKTToImwlS8b8ycdYq9uQgN
 alvsEakMJn8W12JLZhl0/2ory5qWJTddlXPwgJm6MBHoI6lKFeiQa3RdnYui7DHkp/kE
 Hg1g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=UFQ5QZjl
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: fix integer overflow
 and wrong bit position in ixgbe_validate_rtr()
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A5C66393183
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 27 Mar 2026 08:30:44 +0100
Aleksandr Loktionov <aleksandr.loktionov@intel.com> wrote:

> Two bugs in the same loop in ixgbe_validate_rtr():
> 
> 1. When extracting 3-bit traffic class values from the IXGBE_RTRUP2TC
>    register the shifted value was assigned directly to a u8, silently
>    truncating any bits above bit 7.  Mask with IXGBE_RTRUP2TC_UP_MASK
>    before the assignment so only the intended 3 bits are kept.
> 
> 2. When clearing an out-of-bounds entry the mask was always shifted by
>    the fixed constant IXGBE_RTRUP2TC_UP_SHIFT (== 3), regardless of
>    which loop iteration was being processed.  This means only the entry
>    at bit position 3 was ever cleared; entries at bit positions 0, 6, 9,
>    ..., 21 were left unreset.  Use i * IXGBE_RTRUP2TC_UP_SHIFT to target
>    the correct field for each iteration.
> 
> Also replace the hardcoded 0x7 literal with the IXGBE_RTRUP2TC_UP_MASK
> constant for consistency with other parts of the driver.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 9aec66c..53b82a5 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -9798,11 +9798,12 @@ static void ixgbe_validate_rtr(struct ixgbe_adapter *adapter, u8 tc)
>  	rsave = reg;
>  
>  	for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
> -		u8 up2tc = reg >> (i * IXGBE_RTRUP2TC_UP_SHIFT);
> +		u8 up2tc = IXGBE_RTRUP2TC_UP_MASK &
> +			   (reg >> (i * IXGBE_RTRUP2TC_UP_SHIFT));

That really ought to be the opposite way round: expr & constant.
Or add a second line to mask the value.

	David

>  
>  		/* If up2tc is out of bounds default to zero */
>  		if (up2tc > tc)
> -			reg &= ~(0x7 << IXGBE_RTRUP2TC_UP_SHIFT);
> +			reg &= ~(IXGBE_RTRUP2TC_UP_MASK << (i * IXGBE_RTRUP2TC_UP_SHIFT));
>  	}
>  
>  	if (reg != rsave)

