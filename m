Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qM3sKRKEwmkAegQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 13:31:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7A430840D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 13:31:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 664B38225B;
	Tue, 24 Mar 2026 12:31:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2UtMRP0pk3gA; Tue, 24 Mar 2026 12:31:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE0C2821E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774355471;
	bh=cNaZ16Av/pHiTgNmSUlJBQ+S1AKjelzqjrsdrMAWcQU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YcwXgHAcfZo/HSe53qngqdCGTbNPnYsNOX3UbE+7hR9TfADko3IZ/YMM1cpFYsrg9
	 U4IOfdLTrGywUjmjsJsMon5NTZvj0YwHZb4mH1suUhZrDNAsqOEbRvv9CoTco51Wbm
	 jBCCYq4NGOkQZMosdr1/Rjhor9umGzggSu5cho3s4zidKHj3OhdrkD7ZqtAhYpfKxj
	 KzT843RvHUVgsdxMpUsaLU/F6zwlNdqKjJphcGB5TzEf5zF4wC+wtjE+bnDZyz/4iP
	 ytMHqspXYPbKLRn2Te7uCaAVz6kUg+fW19nvb0H6GGyGcesT7nRQ9rcEeQYYjQc6fj
	 CUYbkgWBGkszg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE0C2821E3;
	Tue, 24 Mar 2026 12:31:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 62E58F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 12:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 546386090B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 12:31:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id peodObqlwdDq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 12:31:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 745FF60B53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 745FF60B53
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 745FF60B53
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 12:31:09 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-486b9675d36so43648885e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 05:31:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774355467; x=1774960267;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cNaZ16Av/pHiTgNmSUlJBQ+S1AKjelzqjrsdrMAWcQU=;
 b=b/MWEyEm/c7Y5/4+cuompZnOLv6glM+BcwpAAe+K0J+tzw++eetvH0R/3JfWchLDq4
 PRU+kANbPmXR9LfSTuLjHK7TJj3DmJ4ez2DPGgweS4brLLrxEcmD9BnXIYDMr/b7pgtI
 Wp6dV5kd4P4Ig7KAqf6hQbduqkPpJSZHeaLDeidUuJnBtTTJcWMV6EbefPSxLO3pm3t+
 9G3je7ZCiImvnV9+asQPEQJFvlysU4NDa1s/sftEA/fu20+JGz5PdO6/N5VE5t21q0oj
 8M7v+riEJUzdhOCys7r/1vPT7deS+Jk7GS1xsAbKTfl6ZTvqRteaNE/A7saS/D4RI0WA
 597Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCX3bHT3AM9v1sm0hi6MTwby3CAJqczW5qjN434/Qkr4rqfKTNC4h9CV1ZyRXoUk3ankgBBr0z/HV938BsCJCt0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxQfLD/NcPHZufaba4TJ/nTqcf08Cuix+kxO8DNVuxSj5j8rFn7
 AOA9gtJXlRUcXM0vbgX1Zs+mFSvwSw+2FLBYsDgssUSA6tOlhcADOaEb/du4l9dwl6k=
X-Gm-Gg: ATEYQzwGmGUkt7d/9uN7YiozJJAttmaG9uhVEJnHwe2g3J1XnX3JKQeniayfkp2dUc8
 tU79N2v/mvYTfzSRrNynYOYfUAL3L3uh/ghbpbTVZwAL95fdgEp+3I0x0O+oGVSTJhbc9Uek9ZI
 dhAd466HpHC/8YaXyYl/2TT6YGy8TBOV0BevzhzRoDpnEfV8YDuAtMnmyLDKOd1Wqm5XktFu10k
 sa/zt26O6dybkU8l3E2PiG86HsK8OuMEF3vFRET/I/VUSUKBDaO+1f6HBK/8uBUKvNYZkl/yjIR
 RGNN8H6IR63PM2prTcZ+Ieg3/geGwy8angvWWSt4E7VcgbK19qEBDYzd4a3hu/SJojTSHcq7J4E
 ZVRRTjRvTZEmvdtOiITXsLylPgRj1rMFagsYJfc108/Yu8lqz5EyhouKjlsRqfl9WMC4B4nFAf7
 4DQynz6YQGysTEPrIB9KEW48d1j2cQ0co31iM=
X-Received: by 2002:a05:600c:528e:b0:485:3fc8:de9c with SMTP id
 5b1f17b1804b1-486fedb2ef0mr212873175e9.12.1774355467376; 
 Tue, 24 Mar 2026 05:31:07 -0700 (PDT)
Received: from FV6GYCPJ69 ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48711764625sm50073125e9.14.2026.03.24.05.31.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2026 05:31:06 -0700 (PDT)
Date: Tue, 24 Mar 2026 13:31:04 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <ao4eviden4pqqxpxhnrymdv2nkb4qumewoevuf4khbhqprvv5n@7ie2fsz77t63>
References: <20260321222627.1193603-1-grzegorz.nitka@intel.com>
 <20260321222627.1193603-2-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260321222627.1193603-2-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1774355467; x=1774960267;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cNaZ16Av/pHiTgNmSUlJBQ+S1AKjelzqjrsdrMAWcQU=;
 b=R+i/fdFwCCmPKVQ40ezfedcrtWYY+0rxViKDZP1uhFAT2LI4fh558rWIQs04y0jtVT
 X+mhyxMeItzgx67DA+5szENkjUAU9WkNLv/CQYDHauZDnfXWS/AkhNXOZcX/wzQcvYYO
 5Bj+QUptKgwtXfn9TWDuGUZZtjK1sy2l00jrnj/87OayJBEzsy5/TATBsQO20bMjWW2T
 /Uccy8MVXxDOPCVxaabPio2XFAsDqcw7In16M+ZXbz8q+/pv3981fgk0z+qyQiqJoLEV
 rUe9Ub0UKi33Eqi0GFKG2HbOw/UYZtHld1QZIaLMotVdRjgy2OXAhGpaNJDD2IP8ULSF
 wMZA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=R+i/fdFw
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 1/8] dpll: add new DPLL
 type for transmit clock (TXC) usage
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	DMARC_NA(0.00)[resnulli.us];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EA7A430840D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Sat, Mar 21, 2026 at 11:26:20PM +0100, grzegorz.nitka@intel.com wrote:
>Extend the DPLL subsystem with a new DPLL type, DPLL_TYPE_TXC,
>representing devices that drive a transmit reference clock. Certain
>PHYs, MACs and SerDes blocks use a dedicated TX reference clock for
>link operation, and this clock domain is distinct from PPS- and
>EEC-driven synchronization sources. Defining a dedicated type allows
>user space and drivers to correctly classify and configure DPLLs
>intended for TX clock generation.
>
>The corresponding netlink specification is updated to expose "txc"
>
>Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
