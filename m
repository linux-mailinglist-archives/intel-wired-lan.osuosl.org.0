Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SA7jEeWfFWr9WgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 15:28:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B52C5D6782
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 15:28:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DEF640FE5;
	Tue, 26 May 2026 13:28:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AbiUp3biy9qq; Tue, 26 May 2026 13:28:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5508E40FE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779802080;
	bh=AF9tJ1amhlOtaGqlNAAzlZV5h8kKDyKt4veK2cMLXSI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yk4crW2HwduDCt8PeDpp19o1aZt4/3RMkGlqyuKJApIncT92oCE8dfhCEEsIyAFwy
	 NVF+5ZCaxB1Hy7BJZedjB+6+tr4ROW8d/l87UemFzBZPCMMg9CoK1KhSuW0SULcz2N
	 5gOzQklAIE5/rARXhN9pp4l/QlI/7JUgsbbh3qF6MXtNpED/uX7jarRsVlARQyRBP+
	 4FybVHRd4VrTa1C5MQD5Domzi8Z429EJj2H7PBqTCP2+/NAV8KM0pbltMlqOMlxeP6
	 I8mOFYODytG9cnIaL46GbpmSxDyYOT+OB44q2k/DvCxQOOvTWWBx1/4ZiPhyfiVl26
	 Q9PkmSckGwFZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5508E40FE7;
	Tue, 26 May 2026 13:28:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D3271297
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 13:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B857C40885
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 13:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BtUyfJM3ieDK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 13:27:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 187B64087B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 187B64087B
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 187B64087B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 13:27:55 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-49041e84237so34237485e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 06:27:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779802074; x=1780406874;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AF9tJ1amhlOtaGqlNAAzlZV5h8kKDyKt4veK2cMLXSI=;
 b=QRjTUoo1PVPXr5bpBqEYd3U3g+ZlJHuDY4lKje498/5ar7eLX0wfOfFz9Gp57P3cK0
 JBVyDQkSpuD2GTt9IXLbH18XteU+MaUSUkECeot+C8msFALMmxFdr0hYADvWsdNubQ5r
 CuMoXaF5FLZ2NEhELqozB0trlet3vW/52+BjYas0btBoUaFxzFlIbF/0zsDQULgknFse
 6hmhpZAqlhc/kKpfTCtwAZDwXDc0NXhGreLGxbvUt8nVa7bY/aRM9x0tiqoJvq+j/ZU/
 wj6XbayPdRFQjIuuf6949YGCLSQDZ3aPWqF4f345DoO1O9vGqCaQqBmNLHI4pDBjp7R/
 EIkQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/Md/jBigDsqCyjzx7drcbY60Kf9NfN5Y7pI1tCA6SNlpZ+m3RheRL6qGWkzuSrHoKa2sW/+/yYr7OAT/0MBDk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxrUgwSoIkAeX6hvj/NCOIjFjfXBLkS3/aQVd7z4AW6C8LoMKz/
 bWhP+50lhPzFhOKs41b0/4GeBwhnnPUbrNXkj/8SOqG2pmmp4KMV6l68h9YIxci8CPk=
X-Gm-Gg: Acq92OF1LTKiplGebTX4N+vJSucCMUC10SLAd2Caigbuzkad35x90s6+rID3ktT7YSa
 +oldDigrdaZiUuD2A9UYPTdmHqMvVk7eUP5Yi26E/6xiO1XIde8fkEE6+kfntmT+pHhkRJeWXZd
 Oqr0qvvoxG6ok8j5/bDKR9UcHZAoRAKzg+9bY7YUhaBERNLMOCZCknePSTZT95aiorlvdkdzlli
 UWr5hut6jHsAwGeJOxkpenOb33L/vKlOiLq8gkUMTmsIp23PRhN3JbqZBRp/nr4+KClie3QvVna
 pR8hKaR1SvQrZg5Fj3Qs/MCJjeVdn/jYosTFDX6OpAntdNIKN12gc/DZIHnspY+KKqXD5KhYiAa
 Ad8hQRfVElsGfTptYiDH4LFARIg38UtkfPMyi45dtWr5C2QZsUGLG8sbTN3efgrlOIcrvZQG/w1
 MFJvLrrYj+ud1nNv6h9EC9x4dhI3IxvHJbQyA9ITysRLU=
X-Received: by 2002:a05:600d:4448:20b0:48f:d620:c27f with SMTP id
 5b1f17b1804b1-490422687c3mr189986545e9.4.1779802073553; 
 Tue, 26 May 2026 06:27:53 -0700 (PDT)
Received: from localhost ([140.209.217.212]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-49045284855sm330056955e9.0.2026.05.26.06.27.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2026 06:27:53 -0700 (PDT)
Date: Tue, 26 May 2026 15:27:49 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <ahWf0HAr3sRfXw0Q@FV6GYCPJ69>
References: <20260526093419.639220-1-grzegorz.nitka@intel.com>
 <20260526093419.639220-5-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260526093419.639220-5-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1779802074; x=1780406874;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=AF9tJ1amhlOtaGqlNAAzlZV5h8kKDyKt4veK2cMLXSI=;
 b=bk8eIfmpzpxHcvRaBiZBagZlgKFHX20sIxNrAu6bAoLwDYBbmNGFmm9FXKKzyteX0w
 OVZoWlxGx3aimxTLdCVeT6SIoQgkdxalliWaspE8SjDTnNgGnAniPYzpejOaZrYNp88m
 zV+pFHJkJv94WPiudUE/yh21WWHmMzOR3/AKelR68r8CG8oN5Yf4suoLTyselR+N7F2C
 hNbshC6PLUQnQUNbidbpbIsQ9Vz3rAl/940kkxy7kTprfJTJCzNDuJshMUFfg6wDFZFv
 6e2UTkCYqtbwrJxXqYaD5I3EO2AAlzvPcj4aUKyVUGq6Gh8kGMOoaOIOwb1YecLXvka+
 lMDw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20251104.gappssmtp.com
 header.i=@resnulli-us.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=bk8eIfmp
Subject: Re: [Intel-wired-lan] [PATCH v11 net-next 4/8] dpll: allow fwnode
 pins to attempt state change without capability bit
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,intel.com:email];
	URIBL_MULTI_FAIL(0.00)[nvidia.com:server fail,osuosl.org:server fail,smtp4.osuosl.org:server fail,intel.com:server fail];
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
X-Rspamd-Queue-Id: 7B52C5D6782
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Tue, May 26, 2026 at 11:34:15AM +0200, grzegorz.nitka@intel.com wrote:
>Pins registered with an fwnode may have .state_on_dpll_set implemented
>without advertising DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE upfront.
>Requiring the bit for fwnode pins ties firmware description to driver
>implementation details unnecessarily.
>
>Relax the capability check in dpll_pin_state_set() and
>dpll_pin_on_pin_state_set(): when a pin has an associated fwnode, bypass
>the capability gate and let the ops layer decide, returning -EOPNOTSUPP
>if .state_on_dpll_set is absent. Non-fwnode pins retain the original
>strict behavior.
>
>This is used later in the series by the SyncE_Ref output pin, which
>relies on the fwnode path for state control.
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
