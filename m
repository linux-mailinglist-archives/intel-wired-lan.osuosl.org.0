Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEOQOsefFWr9WgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 15:27:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 671565D6761
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 15:27:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B0D460F96;
	Tue, 26 May 2026 13:27:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f5R8kd1cMUQV; Tue, 26 May 2026 13:27:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0A8760F8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779802052;
	bh=MOoP5D+3GayAYX2czvg1Rx3yDcS/IwtTCjoyb2Dq9dI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fjNFUSfUq5BoVyChAqtQr/JLPtfgK52oTdUhhegipfcPpdXNlhLk/tKmZj61izQRm
	 PYrPsDSxsfxufm0oJg7HpXAey7tVya/KLAzcd0T1rpfRMAEfoYS7FSp0LYsfBaIG4q
	 6z2uXE/IaZgHxsMt6NFw0WulX4jCKowV3tTpTsVYNxGFMza83o5tQbAUAr4ZnAKOeE
	 hhwDd73rmBY9LWC6XCotyCNU+PJ6f2bmi4FYuAbuKUBzQLrT83wMdEp46ejPXfXg7t
	 h6P5LeCWIlSUJ14c0+A6mYu2yvCaEpwNWsq+VLSO944wvLqqM3exZHofKwJHZNrQVi
	 dxUZhcqNn5Fxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0A8760F8E;
	Tue, 26 May 2026 13:27:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7FAB3297
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 13:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D0B640FE3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 13:27:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k5kcb_l2bU6n for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 13:27:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3FFF840FB5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FFF840FB5
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3FFF840FB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 13:27:26 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-48e8132c6d0so67062365e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 06:27:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779802044; x=1780406844;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MOoP5D+3GayAYX2czvg1Rx3yDcS/IwtTCjoyb2Dq9dI=;
 b=VpybRN0y1KLIbr30+q8L5A0epdrQpkLwiCnJgRv/xthL6Wpg24IYWLggUJVv7Ud2Ms
 B5qWrqVjP2gXs/xNcKXUqTXA4i+R2/KSQIozPVRk5gW6TscduI/68JQwYA3OE5TXutY4
 E5lDGMzyEASJ4AoXfVcW2RWcTnngKOt0aXDf+JRacm/2qrnMgl16IZRRk4dWI9yQgkaT
 SEBz/HLc2XK7vcDjvfPHqHW8ykjiW1XXHClUBBXVw5k3Hybwv3ef4+U0v0raap/3VmQ1
 EikUPwMAFDumCcv9MfXT/Cwdwgw/22oFXqA79ti+2iXn56B7x+K0XGKe49EJ6jIwOucT
 zlwQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ+lvjkb68VcIs6dD8v53Wd+sTn9Gw2+wpYChjRdWR/amar43hFACaLlnyjtXisq2Yixe0Kbt6UdbjzoqxFgxH0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzMhQfDf/8Qk2RGhnUMV4yXqxdnQDuISBdXKWj78c9pXdeUGe+y
 V7Qx7wvHpAJeksBw2KawvP6VYTOpGptURIXijkk0MYMIIRK3UJc/KhiMO1eLZpfIgT0=
X-Gm-Gg: Acq92OG6U5jPedk3sUsparBzS0jiJl+gwS4lTiM7iYGZIE1lDoeUD6QbujW4ERtbfCY
 XSnKRKmc/WUBFlECP43dmow1OMIoJHEOIZwZSWYg2y91pHq4N9gR1YmKJZweF988+CV1YExKKHs
 GvhmAWxsq2lvptGr/T4yKLsMn602PrBJi1D6UrrErCA9TVMA5Sc+5MzpNbRnrLj073E6Cq2HFyW
 LOQta1RjZiC4ALwLO+a0KlnHLvatGUql5JzHd1RgXbs5lvE3oYzR9VFG39lWGhGOGKmEqc9+qlh
 U3UuiuD1ed70Bg9nt93EgUHoMEhcV6LLG3Yzy9Hv84DcEoABDSEPZpi7jLMECR1PFmyWONySA3x
 w0NMeEHRw5M8efWRvZeazTmj01UNk19n/0vq0eRdzYDTg+0bScmJQj0iDIeTWJnc+BTLwto4bqu
 eH848/Ce+MLxHcKFJRxtU3KI7ImsgcSOUk
X-Received: by 2002:a05:600c:4f52:b0:490:4f91:5519 with SMTP id
 5b1f17b1804b1-4904f91568dmr296207535e9.18.1779802043944; 
 Tue, 26 May 2026 06:27:23 -0700 (PDT)
Received: from localhost ([140.209.217.212]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4904526c926sm578470375e9.1.2026.05.26.06.27.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2026 06:27:23 -0700 (PDT)
Date: Tue, 26 May 2026 15:27:19 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <ahWfsblAd0Cgpe25@FV6GYCPJ69>
References: <20260526093419.639220-1-grzegorz.nitka@intel.com>
 <20260526093419.639220-4-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260526093419.639220-4-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1779802044; x=1780406844;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=MOoP5D+3GayAYX2czvg1Rx3yDcS/IwtTCjoyb2Dq9dI=;
 b=E1IGe/CwR3wJSZvfWq4matOEbcPXG6NN7XqWTekKYeFiYJaKVdcL+uJUIDlBzrHKGO
 NUBT+9yx6jPn/1HC9V0sHhmbwlP9TlETNRXzI6VA/kKfL0RFZinE0YM99vEGY2II+eXc
 WZ0ku2gz0K7euWBowdv7XywT0Xtl+17/XUVSmTEYQuEMUILX0k6ZVUf3KQMaejaRIoKk
 hHHEtIoQocKg6QNxtwBtHdN4uhnXa5Pstvs+0RtHEHRAnz+aERrlVi0TciZGEaRuSbms
 LHmjQt09IKFT2tujH4DAVYbHyaBuXBLWh2xeHq8x/mV9L4I5KUujdADzsfCFrK01K8RM
 xo/g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20251104.gappssmtp.com
 header.i=@resnulli-us.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=E1IGe/Cw
Subject: Re: [Intel-wired-lan] [PATCH v11 net-next 3/8] dpll: extend pin
 notifier with notification source ID
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
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
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 671565D6761
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Tue, May 26, 2026 at 11:34:14AM +0200, grzegorz.nitka@intel.com wrote:
>Extend the DPLL pin notification API to include a source identifier
>indicating where the notification originates. This allows notifier
>consumers to distinguish between notifications coming from
>an associated DPLL instance, a parent pin, or the pin itself.
>
>A new field, src_clock_id, is added to struct dpll_pin_notifier_info
>and is passed through all pin-related notification paths. Callers of
>dpll_pin_notify() are updated to provide a meaningful source identifier
>based on their context:
>  - pin registration/unregistration uses the DPLL's clock_id,
>  - pin-on-pin operations use the parent pin's clock_id,
>  - pin changes use the pin's own clock_id.
>
>As introduced in the commit ("dpll: allow registering FW-identified pin
>with a different DPLL"), it is possible to share the same physical pin
>via firmware description (fwnode) with DPLL objects from different
>kernel modules. This means that a given pin can be registered multiple
>times.
>
>Driver such as ICE (E825 devices) rely on this mechanism when listening
>for the event where a shared-fwnode pin appears, while avoiding reacting
>to events triggered by their own registration logic.
>
>This change only extends the notification metadata and does not alter
>existing semantics for drivers that do not use the new field.
>
>Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
