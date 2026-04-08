Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONdDJcEX1mnwAwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 10:54:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A573B959C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 10:54:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1D7982329;
	Wed,  8 Apr 2026 08:54:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SKVJ7qFfokDZ; Wed,  8 Apr 2026 08:54:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5211D8232C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775638462;
	bh=Gq9JVzqu3RbrK+ulSwPbxKbAFCkTQzPJ7QGif9weboM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5Rpj/ORJkx2rjXHYrYzNi16LBZKa3fBCIQCxWH//ffZi46lktY2K1RctqOQQXNwSV
	 Lw2fN5ZLD21e079j4ek283zgaBQdVNQgrvJVs7A6gQMBHhu6AIBakx4trSDbucHzvw
	 EdhOVSOz6FTTVYmJz3D+riRXCS2o3zgLB5KgnMgeh92bFD/AstIjaa4wbxO55hkTy1
	 xoVsEhHARuyvltXPYsgCZN30iN89EFFYGbVy3GzD8GsDv7HD+pajwNAXeZ08NbGz2z
	 Qq2vx9QwB30jrWodL249Pfw1wRQe711WzRwxz+q+z788Z8z2vtxH3z2BtCtQH3/S+i
	 atOHTm84Ocm4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5211D8232C;
	Wed,  8 Apr 2026 08:54:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 56354237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 08:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47E5F40EF6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 08:54:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JLOBbFI2FJae for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 08:54:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 391F640CDF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 391F640CDF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 391F640CDF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 08:54:19 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-319-oPoVRgj_PF6m8nzc_U0eOg-1; Wed, 08 Apr 2026 04:54:16 -0400
X-MC-Unique: oPoVRgj_PF6m8nzc_U0eOg-1
X-Mimecast-MFC-AGG-ID: oPoVRgj_PF6m8nzc_U0eOg_1775638456
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-488b966e9dbso15447105e9.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Apr 2026 01:54:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775638455; x=1776243255;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Gq9JVzqu3RbrK+ulSwPbxKbAFCkTQzPJ7QGif9weboM=;
 b=Wc+FzpabNPdjEDHPXHY7XoExbzWOAtt6vt+GKyOSEWYuEKrFmCKFMYWpirqMjawJHY
 xCOgCKdYGMMGrO4B0g71l/kOnq2aFreNIPH7X/5TDHpxjpfuoX6MfLM+QnMO9VBlQ3j0
 aQ2WbvDB8PsOMTSmTmn2ZiEn085AjUjxOh+lIoo6eB5iaCpzw9xkR7Bo0ODM386AFSFO
 FKOUrqkaNyQf7wEPSSiiT+JaIm5FI50FxC4s8yruzIz5/RJEM+s/hgoLabrDWxp3rj1A
 g5munARxlmN1Wo9CPgmz0sjTxTgZPk3K9Y/2qFQB1aYJRriLxWMj0rMxLgkI/oKppkZN
 3huA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUeh5lL85odlWhx6M6Ruz7Bpw+N1yNyZOZmhRzRLA+DDPmLs/Oc5bpG0z9jWbXJJ4r7AkQeat9l+DShgUYaOO8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzHjLOQ+5/7gwGeieJmPZHHXS0oG53LVodBWk4mUBl3TMaqv+Ye
 s4dIudNgT5maHInqEcBLOyLUtXiVYNN0qxxQq9SCXSkA0EAHBLSHv9h3Ul/AruSIXQ1bZiJxGAb
 Xj8zZ/+XEdzjiPluoAlpmdpYYU9ZLxO9RSQZ0W1jtyzRouiFWbkngjgi9ZShJaqW+Z3H8r3E=
X-Gm-Gg: AeBDievmVDltvh0xoEq1Vei7ESQ/XHZRetgmXm31NQBotutQyuvb8uxrFs7ybshfmaG
 uthoXwJnHZhiPS9Hw/HdKsQBBUr/CsM+81VhGlQAmsv+4gT4ehSMexppwVu0cqF6kLFfZpSdU45
 EqqkHqEt9S7JIGo5dY8/K8CKMlYMqEhNq0WIQ7OtIurCHmgZZALDEksUA0tGnYMVmLd6HG0thkr
 4D/upEP8qkRdVZfeJZS5sh7fwSl28oGKag2dDWKlotHS13K2QR/+p1TFFL2jzwqthy8kiB+He8A
 6tit1ZWCGuMP2y2B4RT3uZ51BBxaXKbv3l/NyQsFbfyIEC3brDhb5shxBdrIkOS5xB143M/1gWB
 8OiySBuRP9JS7tsJj1cRk
X-Received: by 2002:a05:600c:5292:b0:485:2ce2:4c87 with SMTP id
 5b1f17b1804b1-488996cd77cmr300561175e9.4.1775638455358; 
 Wed, 08 Apr 2026 01:54:15 -0700 (PDT)
X-Received: by 2002:a05:600c:5292:b0:485:2ce2:4c87 with SMTP id
 5b1f17b1804b1-488996cd77cmr300560825e9.4.1775638454876; 
 Wed, 08 Apr 2026 01:54:14 -0700 (PDT)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-488c76c6205sm15808305e9.1.2026.04.08.01.54.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Apr 2026 01:54:13 -0700 (PDT)
Message-ID: <d74a9071-336d-4fec-a061-bf9a3a444678@redhat.com>
Date: Wed, 8 Apr 2026 10:54:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Rinitha, SX" <sx.rinitha@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260213141651.2231124-1-poros@redhat.com>
 <IA1PR11MB6241B58FF425A8684CFAE7A28B50A@IA1PR11MB6241.namprd11.prod.outlook.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <IA1PR11MB6241B58FF425A8684CFAE7A28B50A@IA1PR11MB6241.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ii9TzzrW1Jzsbv7IP_93dS8pugoeyVYyVWMXUhR1hWQ_1775638456
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775638458;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Gq9JVzqu3RbrK+ulSwPbxKbAFCkTQzPJ7QGif9weboM=;
 b=EZZF8wAJ3T9n8gCrcfJMsX8fuLQ3KMQ9/wEHZ7oilfRiJlJkcVGn3d06TMSYKlg+UWY2xS
 yxEcgAqss6OUSVRznpaYACxyRC2AVohWLDORFDMHCQb2b4YlndUp0hJXHnDgYTKN3+4xO6
 V+gcYr56s7TDSAXx9aQKK+qgZmK9hcc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EZZF8wAJ
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix missing SMA pin
 initialization in DPLL subsystem
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
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:sx.rinitha@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: B1A573B959C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/1/26 18:29, Rinitha, SX wrote:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Petr Oros
>> Sent: 13 February 2026 19:47
>> To: netdev@vger.kernel.org
>> Cc: Vecera, Ivan <ivecera@redhat.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet <edumazet@google.com>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; intel-wired-lan@lists.osuosl.org; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; linux-kernel@vger.kernel.org
>> Subject: [Intel-wired-lan] [PATCH net] ice: fix missing SMA pin initialization in DPLL subsystem
>>
>> The DPLL SMA/U.FL pin redesign introduced ice_dpll_sw_pin_frequency_get() which gates frequency reporting on the pin's active flag. This flag is determined by ice_dpll_sw_pins_update() from the PCA9575 GPIO expander state. Before the redesign, SMA pins were exposed as direct HW input/output pins and ice_dpll_frequency_get() returned the CGU frequency unconditionally — the PCA9575 state was never consulted.
>>
>> The PCA9575 powers on with all outputs high, setting ICE_SMA1_DIR_EN, ICE_SMA1_TX_EN, ICE_SMA2_DIR_EN and ICE_SMA2_TX_EN. Nothing in the driver writes the register during initialization, so
>> ice_dpll_sw_pins_update() sees all pins as inactive and
>> ice_dpll_sw_pin_frequency_get() permanently returns 0 Hz for every SW pin.
>>
>> Fix this by writing a default SMA configuration in
>> ice_dpll_init_info_sw_pins(): clear all SMA bits, then set SMA1 and
>> SMA2 as active inputs (DIR_EN=0) with U.FL1 output and U.FL2 input disabled. Each SMA/U.FL pair shares a physical signal path so only one pin per pair can be active at a time. U.FL pins still report frequency 0 after this fix: U.FL1 (output-only) is disabled by ICE_SMA1_TX_EN which keeps the TX output buffer off, and U.FL2
>> (input-only) is disabled by ICE_SMA2_UFL2_RX_DIS. They can be activated by changing the corresponding SMA pin direction via dpll netlink.
>>
>> Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
>> Signed-off-by: Petr Oros <poros@redhat.com>
>> ---
>> drivers/net/ethernet/intel/ice/ice_dpll.c | 17 +++++++++++++++++
>> 1 file changed, 17 insertions(+)
>>
> When SMA1 is changed from output to input , U.FL1 (input) is expected to get connected but is still disconnected
> Similary, when SMA2 is changed from input to output , U.FL2 (output) is still disconnected

Hi Rinitha,

Thanks for testing this.
The initialization patch itself is correct. After boot, the PCA9575
register is written to a known-good default state and SMA1/SMA2
properly report as active inputs with the expected frequency.

The behavior you describe (U.FL1/U.FL2 staying disconnected after
SMA direction change) is a pre-existing issue in
ice_dpll_sma_direction_set(), not in the initialization path.

I am addressing this in v2 of "[PATCH iwl-net] ice: fix U.FL pin
state set affecting paired SMA pin" with an expanded scope that
covers both directions of the SMA/U.FL pairing.

Is it OK like this?

Regards,
Petr

