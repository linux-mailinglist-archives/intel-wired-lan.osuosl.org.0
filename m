Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAtdJnbL4GkdmAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 13:43:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 890C140D987
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 13:43:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B10860710;
	Thu, 16 Apr 2026 11:43:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9IBS1IByogwb; Thu, 16 Apr 2026 11:43:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D71C6070E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776339827;
	bh=y+Fwq2OQSz0NDX3k5uEX8j3YvfXrtK+Qwqa12x5RwGI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dI9JQRVOr6ygwg10BIUztnXtyCukjzAO2U4C3o9ZZpDldGpeXDgbl1LvQJCVAJYDq
	 e8iKm0MQ1q/Gmwy1RexTnj12G1U0tfQ7F9sMuBiyRfEAsGTdtH7chUm/DnpJSBRyVp
	 rShEKPbqYdHVYCfn1hXjqedRDmKyF3m0W+F6luBXy8jXqugQnpWyxPFPiMPCOaKN9r
	 UrDW/rObIAnOzgbW+VISdWlwQI09OwD46aOjbhwfOVYLRO+/iUQbbAGCo5lPSEALQc
	 WoLItC71a4VO3S8lumXqBb0uYKxdighU593CRON/dEFvzGiPMG0EpQsCsCFor2HOVx
	 NpLB54u2Ckl6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D71C6070E;
	Thu, 16 Apr 2026 11:43:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A98D32CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 11:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B5BA80CA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 11:43:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EK_SbHBIK_EX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 11:43:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::334; helo=mail-wm1-x334.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9E2D480CA3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E2D480CA3
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E2D480CA3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 11:43:40 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-48334ee0aeaso77114965e9.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 04:43:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776339819; x=1776944619;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=y+Fwq2OQSz0NDX3k5uEX8j3YvfXrtK+Qwqa12x5RwGI=;
 b=YwsU6udkiBrGnvQ2jNzbm9WHrjPy2s0C4MIWQgoc4uWb9gpKB6tEWwuS8ssyAnt/D2
 +b6TIZEXCmXjuK86RHj0tAQxcQzhFrZRP4i9tHGIJJZhPtwaBsAjUej0hPVx45D8HtKN
 /InJn4PGZCO7CDPBwBHabshTKyacRN/+Si1jxlbAd+ZaTYzFi/fMy/xLQD5k4aV2ksxI
 uNhbnYSg/QwWmHPN6Q+YUqfEfvYb+h2XW3nOqv2jbLbDgWJjZFzEj2Ci3/Uv9/20SW+C
 7A54IVQ98l4cHXwzbKlNMJYdpgFc+M/qcs+xdpXFJCNyNVSR+uXA7Q6iuKcBOewq1hnG
 3lYA==
X-Forwarded-Encrypted: i=1;
 AFNElJ8nv9QitNuBlH608Z5ve7wVneIbNTHY9+EKFZJnZ4WAg7San9lMRsVwO0eaP6wkSDy+mkZIWbgSl3+eDN5xTHY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyotNsnz4nd86XWS1iGv0XrM4Hw4eSZd2YOgkhrzST+B0VQZDGg
 qbhmw8e6M2spetM29dvZC1E4lXzDSCIwgZJJqVGbxb/63SqN1HWQ+w5CNN909pPMCS4=
X-Gm-Gg: AeBDieto8uuOOa1O3HS0n+4vNpCAmyKCcnlvgRRBCrtNe+WN0fX2vOdK6f2eT0zxg/3
 rJM+HaikC3ESzesCGaOV4HalEMIAwnemfjniYFGhggTvGePvswbRbRAnAJoe/9vrIhlqAJtz8vU
 Tklr5hzQN2rgEhG3ctu1yN9MUaWy58379XZERv3CmCXOxPTru/blMdzQr0E71F0DVIHbTJUvBVG
 BY01G6dxScpkOWZcMiSUBoKfC2KR58jnmLlj/rxycLlgyLffPyoxCYMoDxfa9x1XZ0PniFIMs9k
 A6WPZ6K9p5m0YMVns8d98DJMx8+Iwe+7NdU5zTELIpAQpgpOQAf4WuZOJcYv9reHzEEKorFw48D
 xHfSv3br8rZ/4xpZv946398xwHDwXhayYHpDiVXSFE7Gvdilt6H4LrORW61zHJcat5JdW0foKXF
 UgVDPBLJpLJIRcRhe/Pdrhu/qmzr8LuQ7m4Q==
X-Received: by 2002:a05:600c:3f0a:b0:488:afb5:6a21 with SMTP id
 5b1f17b1804b1-488d68764b0mr351693715e9.15.1776339818549; 
 Thu, 16 Apr 2026 04:43:38 -0700 (PDT)
Received: from FV6GYCPJ69 ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-488f08b960esm72542545e9.0.2026.04.16.04.43.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2026 04:43:37 -0700 (PDT)
Date: Thu, 16 Apr 2026 13:43:32 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Petr Oros <poros@redhat.com>
Message-ID: <gpjn22psgdvoavp6n2npl5k4i7gp5vxniwrl47gvycfptmjdqp@rl76aletywq5>
References: <20260416113952.389405-1-poros@redhat.com>
 <20260416113952.389405-3-poros@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260416113952.389405-3-poros@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1776339819; x=1776944619;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=y+Fwq2OQSz0NDX3k5uEX8j3YvfXrtK+Qwqa12x5RwGI=;
 b=GUMI+sIS85AbKglqJicRN87d3ymw4QDFU69eqaTeCJhHFcY9n2+WwsFeNADefd7g9o
 wcEBrGkRoRZnkEHlV15HX6o5t2qjeZ5rXLhJndfSgE5L9ICNbOklUhzspsoPcJOG10LV
 xGU8THZ7WqLzUs1Mx/4y7PuL1qs4PsNR/AVaNjRU0NGhww3ibj5yecmZJ8zbYJAwLa5+
 uSmagouCDNrFUlurNan2dlH9BgXKhOqFr8lC9o/5DlSPuWCpsuYBwVZjG0wd1jRfVJxf
 Ja/cQxannL++5vWWG30gybIk5XxVIHPXwZBcJekmqGlm9B+iizshQurC7THa7Bjva1Kg
 oZxw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20251104.gappssmtp.com
 header.i=@resnulli-us.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=GUMI+sIS
Subject: Re: [Intel-wired-lan] [PATCH net v6 2/2] ice: fix missing dpll
 notifications for SW pins
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
Cc: Ivan Vecera <ivecera@redhat.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Rinitha S <sx.rinitha@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:sx.rinitha@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[resnulli.us];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 890C140D987
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thu, Apr 16, 2026 at 01:39:52PM +0200, poros@redhat.com wrote:

[..]

>@@ -1233,7 +1259,6 @@ static int ice_dpll_sma_direction_set(struct ice_dpll_pin *p,
> 			ret = ice_dpll_pin_state_update(p->pf, target,
> 							type, extack);
> 	}
>-

?

> 	return ret;
> }
> 

[..]
