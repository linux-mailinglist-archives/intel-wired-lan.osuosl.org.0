Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCFQHukREGryTAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 10:20:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D775B06F7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 10:20:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E4BF4259F;
	Fri, 22 May 2026 08:20:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z48mneMQNwnp; Fri, 22 May 2026 08:20:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 783A5425A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779438054;
	bh=FtBUHZ5NTfzEhm+9SPa+wbOEFPDSpIs8MinMBuqfMJM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=frAbix5OplL+fE/Rc+tMNE2UfI1QyKUIT8fEw9B7SLbQ7XrECM4utnIFRK8lv1CZ7
	 +lidh4LoMxVkCbynw/MneEd92EGwuJNdXpp9g24qEm8jiBobeE2gLoz8eqV2ElFml3
	 SZr3C7Y52G0TXOSpAWRbc4kh1yEmDIN90GAD+VvXG/ZS9VkHHYuF8tlr/s2dRvDey8
	 c5x/ysB2nRW4lhrwdhwFQOKGZup+sl71CB7BxWC7oAa/CizGlUUbu3kVP0xK0JPwsw
	 SdAC/br/47r1Uq+F5zT0rMNhPTB0ZmKTeSUPGTjosTyKBtHuRqQ7pFcedBegaU+lo3
	 ETOxZxgr10KAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 783A5425A6;
	Fri, 22 May 2026 08:20:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 81AD9282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 08:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7350E4259F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 08:20:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hfkSgIygbCMd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2026 08:20:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42f; helo=mail-wr1-x42f.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 873B542599
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 873B542599
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 873B542599
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 08:20:51 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-452169ae568so4558174f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 01:20:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779438049; x=1780042849;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=FtBUHZ5NTfzEhm+9SPa+wbOEFPDSpIs8MinMBuqfMJM=;
 b=eR/4pXKqOeuRbAotQiftNkWEgc+vh5dQbHOWUBK+r6v7T1CrYWvGlnVBXfRmGEfKf3
 FxdMTMyUQ+QZke60ES21LIJ/kqeIJv0gd+1fi2Xm3mRgakfYI6F4zbe9K2GlJvBHV5lw
 ynBSnjxhA53608kJlmBWcSbX5qg5e6E0TzpTMOEKsmWeCk8eSdGknwEQ7sFP4lHkOy1v
 XVSVcjfLA5Sly1XWApU6ACQo1JnpPWI/jX+VwQguUjMFdkz8ElfiyApY8zC4h6mjqlu1
 jmxqltycNpoyVHNJ4BkDOr+pqFm2arvPS6TxaiNXs7cApNkMLML3baE160SmFhK7AXAA
 ySww==
X-Forwarded-Encrypted: i=1;
 AFNElJ9ySNyOyB5YqEFyuI4LjY5v61ZafnuoyorH8XQF+w8w1bM8uCf8xKr1n93D8rseqWWza0HRGEx25S+Mq0vzerc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyCZ9r6oT6Z0wTuYWg8FoWCcObY4ra+VRFpEpyzlJoBOEfGet3H
 87H40oseU7d7p7nPO3CHVFmJAxDVevbQ517mdd0epT8jYFiVyHPOWOKH
X-Gm-Gg: Acq92OHiu9NVnhgrCLlzvDo4s4Ufddg1fw4RtadaOJLxDhtBQuD1hUBVifzncwtRio8
 f3ucvQG1oJOMDU2Z+wSqvb0XfDv+568DcniqVcC329+y4RvddHKRQaakvs+NAEABVWzm5NHlS6i
 P6YcxBM3nDTumULYHtu4dL38KX6qDqKHdEagnvJLhXSYRrAsL8ge+c5yXM68bwxh+Av8ASZm3F5
 rxi6yX3wZpNQdCMIqKaiDpvydOZRdOdDrFBKyaJ3mXs5FMD8hKzby8RCqo3iNIdAc/5+cpdY4Kh
 s2RYnbOUYKkzE77Ahv+8C5EHCIm+sY+NZXW7j9ODbqFC/FlWhkw2W1J3ZeBL5bFDQcG9JNSMR5r
 UDoWNcZF+QsyGQwMxQjMa0kXORGwOV9qcYGWg6/cqGlTYJGc5143AHqVVOYi1+T+obNTh4Bdm/b
 8nKylyTEfBF2HvBj+C7wGdv+c365gY/7r4Iap6zSu23raY3dFZzDYGW0A25H6/6uSahjXmUIMT6
 oo=
X-Received: by 2002:a05:6000:1446:b0:43d:7a97:78af with SMTP id
 ffacd0b85a97d-45eb38e04e3mr3459686f8f.42.1779438048957; 
 Fri, 22 May 2026 01:20:48 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45eb6d49132sm2187929f8f.24.2026.05.22.01.20.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2026 01:20:48 -0700 (PDT)
Date: Fri, 22 May 2026 09:20:42 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Ashwin Gundarapu <linuxuser509@zohomail.in>
Cc: "anthonylnguyen" <anthony.l.nguyen@intel.com>,
 "anthony.l.nguyen@intel.com" <przemyslaw.kitszel@intel.com>, "andrewnetdev"
 <andrew+netdev@lunn.ch>, "davem" <davem@davemloft.net>, "edumazet"
 <edumazet@google.com>, "kuba" <kuba@kernel.org>, "pabeni"
 <pabeni@redhat.com>, "intel-wired-lan" <intel-wired-lan@lists.osuosl.org>,
 "netdev" <netdev@vger.kernel.org>, "linux-kernel"
 <linux-kernel@vger.kernel.org>
Message-ID: <20260522092042.5773213f@pumpkin>
In-Reply-To: <19e4e74ff40.601fab765713.9212104302286035517@zohomail.in>
References: <19e4e74ff40.601fab765713.9212104302286035517@zohomail.in>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1779438049; x=1780042849; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FtBUHZ5NTfzEhm+9SPa+wbOEFPDSpIs8MinMBuqfMJM=;
 b=PccLHEsTUPB1VXnOeMlEAQnOTZlt7riqqDv+ho4u5brIVaPETctLU2Fzg7Q1+r1ANx
 pb5B8VXakiWk5E4bBaHOrsJSGJ+JFuNHgHYYmIz21+y+lZEq9y5FZJAP7TcXlyPpp6bl
 kU8KsTZ5pet3t2qiHgksf2vrM9lffQcAvkf1S2nKmpLoZPiyEQcYJE9ySQt/2GXOmVhj
 PuGLQmy6iMogPqIi9/Tqfrm3vRR9+r4o3uP4zySZWQY1suBkvTTVJvTpO+zxxLk1tM2p
 VK95WbjH7NY4RhQ4dtLhynn7EYDGldmeMaiuGO9ddepF/ItsgHZxdvnXKzARM3BYHVTR
 YBmQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=PccLHEsT
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: e100: remove redundant
 static variable initializations
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linuxuser509@zohomail.in,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[checkpatch.pl:url,zohomail.in:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 66D775B06F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 22 May 2026 12:22:30 +0530
Ashwin Gundarapu <linuxuser509@zohomail.in> wrote:

> From: Ashwin Gundarapu <linuxuser509@zohomail.in>
> Date: Fri, 22 May 2026 12:20:23 +0530
> Subject: [PATCH] net: e100: remove redundant static variable initializations
> 
> Remove '= 0' from static variables eeprom_bad_csum_allow and use_io.
> Static variables are zero-initialized by default.
> 
> Found by checkpatch.pl

Not worth the churn for existing code.

-- David

> 
> Signed-off-by: Ashwin Gundarapu <linuxuser509@zohomail.in>
> ---
>  drivers/net/ethernet/intel/e100.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
> index bfacf877ca40..bdddd4315cbb 100644
> --- a/drivers/net/ethernet/intel/e100.c
> +++ b/drivers/net/ethernet/intel/e100.c
> @@ -167,8 +167,8 @@ MODULE_FIRMWARE(FIRMWARE_D101S);
>  MODULE_FIRMWARE(FIRMWARE_D102E);
> 
>  static int debug = 3;
> -static int eeprom_bad_csum_allow = 0;
> -static int use_io = 0;
> +static int eeprom_bad_csum_allow;
> +static int use_io;
>  module_param(debug, int, 0);
>  module_param(eeprom_bad_csum_allow, int, 0444);
>  module_param(use_io, int, 0444);
> --
> 2.43.0
> 

