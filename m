Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CxmGxOgFWr9WgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 15:28:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 066745D67B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 15:28:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91CCE40FE5;
	Tue, 26 May 2026 13:28:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E2PMB_DpKMcd; Tue, 26 May 2026 13:28:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B85440FFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779802128;
	bh=/tryWe3YGVmPy2bnscHQmtWVBpbnu81ctvwLdXdUsQA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=owxohogq+GnmiFXDViIquCNDYhiTvO+gze97XvsVPmi75GT8OkzLKQhS9crbBIhR/
	 gTpkMrm+dP2A0lEYFMSC8iAc8HBBDxaK0MgD8UscJeOYVTZVzmTlZbLMtxhlysp5kI
	 9d5leUrLqrVHThXYj/HxDUt48u9cfxsaF4McOzKMOgqladXiDcZt+Ad2EpoU/V2kwJ
	 vW6UZZhylROunAaWucRc/XfAjR0+4BnoB8vjVVKipG02DDp/BO+D0VIjr+7/8P7Xwp
	 yxURozgZp3HfoPd3xafdC/tBQEuPvfjDhxV4Gh9xJd81aaKwdwkBq97E394exAwCn0
	 w3a2tOka5Miog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B85440FFC;
	Tue, 26 May 2026 13:28:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E7AF265
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 13:28:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 404AF830A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 13:28:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xp8ugYlDTs4R for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 13:28:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42f; helo=mail-wr1-x42f.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D1AF981E12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1AF981E12
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D1AF981E12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 13:28:44 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-4585a116a4aso8803749f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 06:28:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779802123; x=1780406923;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/tryWe3YGVmPy2bnscHQmtWVBpbnu81ctvwLdXdUsQA=;
 b=ePejiSKtckr44xRSxgfzNTRyJ4m9yF2rTpGjgmTGF1oqCE9zVJWhmPi9OC+iXPSsiv
 PbO2cd9Rz3ZsPFLjI9qis2v/hSLWDppRJhg1YVAWijA6DjjbFIXB8oq0QOAYGKxzZATB
 qFh9HrSRKqDLnsNGU8X9CJy2ZKtabs+mZTW/68J+oehhNrkPPzOWCF0zN7OZlXcxbtm7
 GeKLJxr+EuDEK3gjDLAh+/uDEUhuLn5Y7XYHWDkG5jfDgBnNFTu8RysDID8//e0olrbb
 aqYti2oBfPRLx6mFNTBGtjdcZb+9WBlNvtwNrRp8UOLgnHS/1NUuRW5Om6lz6zIqUZih
 k0NQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/fGNGSrIaGCcDfbwWv1uEidHQh1eYxHnWmqj0rcYSv0ki5tacY8RpuJd1qfkWWWEktKwhZ8ZBFtcgF7Gzok40=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyHncdBwT64PQxRPGtTG4L4Bp9Pc+XSwUK00jX41YkYn0aXscVh
 X3m07E2WFM3oxoQ4OWfxTciNpj0/HK3QffDhGUkdg7s+Q0D3COYnv/sUFLjp5baBc0M=
X-Gm-Gg: Acq92OFS5NmCGdNQSxvExMFdhQfsp1OkFWEy5eFjG55i0MtgiRnpzsFvlEcKeM4rI9n
 GiclR0B8/nd3NEFUHwzFGrWcj2M7sNvAaLdY5nyRoKVY3QBD1znbYsUxMmR+lqGnwz9YnCEbxIa
 kag0TOI6483jLC6AsesEdr7wtFbzN7Lp2Yevh6Ws1mYOi25a52VE2aAyhScmm+oogDInkLyhUVK
 qRvXWPFyijkbYIqzPDDFk+IjtwCVtZRKczrVdE7rpmc1bKBxpmRawx1VCaB42fZ/H44Roh1XBwT
 eqZYT5RkpjEvBF5x+PuJOyRUBqpDDxUE5ZzDd3MvGXTviSXd+4L5UOlvDhm0cdOKMq5ftEAUtMQ
 zeyw9t05bhO/iS3oLWa1A6OIispzoU0kwNZ/79NYaGzFl38v5ErZRSBOuQz+GZGZY0dzTZEp22/
 FTvDFipLp060BD3mDHne3yug2BjrvExCFATN+qPozfLVg=
X-Received: by 2002:a05:6000:1a85:b0:43d:762e:76ba with SMTP id
 ffacd0b85a97d-45eb367fb35mr31350080f8f.17.1779802122476; 
 Tue, 26 May 2026 06:28:42 -0700 (PDT)
Received: from localhost ([140.209.217.212]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45eb6d4741bsm37119736f8f.22.2026.05.26.06.28.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2026 06:28:42 -0700 (PDT)
Date: Tue, 26 May 2026 15:28:38 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <ahWgAPoysfluToIf@FV6GYCPJ69>
References: <20260526093419.639220-1-grzegorz.nitka@intel.com>
 <20260526093419.639220-2-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260526093419.639220-2-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1779802123; x=1780406923;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/tryWe3YGVmPy2bnscHQmtWVBpbnu81ctvwLdXdUsQA=;
 b=b5A8/XE3o14YsC06YPZYcpwNYHSQqwW8YkvtgvfxJVpnxye4sbHJ2BXe+Hr2y9eHzs
 XMeRqmhHqL8luxu9r7gm1OBtXIvOXqNWZHMk7cGA5eCle5svV6ROWnwykvr/EGQU+lKk
 0od7UF3mjrj59+UNMQFIjiZSAiuhPRIToZX9w/UZSOwW8G+RM6KQChZynxsy5Ie83GPK
 XZy2e+t8eDpYS53ajToDUvMUdN0ZD1eBKhOw6OSYfRXfaJ/UxNMI5CuJrmibd5W+RKYS
 pKHAoUQLBwRkyIp6ZYvKz5o7iFHLA5tOiaFYTFARfIkaIFO2BMdnSeNEwPPtmfsEraka
 HCNA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20251104.gappssmtp.com
 header.i=@resnulli-us.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=b5A8/XE3
Subject: Re: [Intel-wired-lan] [PATCH v11 net-next 1/8] dpll: add generic
 DPLL type
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
Cc: ivecera@redhat.com, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 kuba@kernel.org, vadim.fedorenko@linux.dev, edumazet@google.com,
 netdev@vger.kernel.org, richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 Prathosh.Satish@microchip.com, andrew+netdev@lunn.ch,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:dkim];
	URIBL_MULTI_FAIL(0.00)[nvidia.com:server fail,osuosl.org:server fail,intel.com:server fail,smtp4.osuosl.org:server fail];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[resnulli.us];
	FORGED_SENDER(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,intel.com,kernel.org,linux.dev,google.com,vger.kernel.org,gmail.com,microchip.com,lunn.ch,lists.osuosl.org,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 066745D67B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Tue, May 26, 2026 at 11:34:12AM +0200, grzegorz.nitka@intel.com wrote:
>Add DPLL_TYPE_GENERIC to represent DPLL devices which do not fit the
>existing PPS or EEC classes.
>
>The UAPI type is intentionally generic. During netdev discussion,
>maintainers pointed out that introducing identifiers tied to a specific
>placement or single design does not scale across ASICs and vendors.
>The role of a DPLL is already inferable from the spawning driver,
>bus device, and pin topology, without encoding additional
>purpose-specific taxonomy in the type name.
>
>Using a generic type keeps the UAPI extensible and avoids premature
>naming that may become incorrect as new hardware topologies are
>exposed through the DPLL subsystem.
>
>Expose the new type through UAPI and netlink specification as "generic".
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
