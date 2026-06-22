Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HWlBHLaYOGoZeQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 04:06:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E5B6AC02C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 04:06:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=yvR037zU;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72A3761B4F;
	Mon, 22 Jun 2026 02:06:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K0LwHKccDv_U; Mon, 22 Jun 2026 02:06:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6725F6F573
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782094002;
	bh=604Ftnw3RlYE7qLA16IHEAgduTmhXG06bpguMOrP5Do=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=yvR037zU0CzkGOcyyG4rcLSAZGCCwEXXF/IpTbbQC6YecY3sc/wpssfmDipJkMJlG
	 eLXqp8v0c58iQzvIRnAKuePiiQAUwKMCap9odsJg+kejMeanONcWA46U5YkipIBW6t
	 m9Ki2+pXknsuLCwqJ2MBXgqkVNs/2WcquQMb0QQdE1+os7Wl6jZHw5L/+sC9PvNtiY
	 kqahK6N3sXYrtK0lLR/mhRvuoo3QQTWuM6yagQDxzSF6s9Q1VSOOgMp0MGru18V012
	 7Z3NI1QJxIoO79otNVSRsuSjwddb5oBVfErHDJH/I+qxl8ieRDduq4AIqU10z0bHMr
	 oIzxC0I6IN/7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6725F6F573;
	Mon, 22 Jun 2026 02:06:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9196C367
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 02:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7434C6152C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 02:06:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RzkWbX3oHHqu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 02:06:39 +0000 (UTC)
X-Greylist: delayed 511 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 22 Jun 2026 02:06:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 926916130B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 926916130B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=acelan.kao@canonical.com; receiver=<UNKNOWN> 
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 926916130B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 02:06:38 +0000 (UTC)
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com
 [209.85.214.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 466263F212
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 01:58:04 +0000 (UTC)
Received: by mail-pl1-f198.google.com with SMTP id
 d9443c01a7336-2c6cf1126cbso35061415ad.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 18:58:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782093482; x=1782698282;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=604Ftnw3RlYE7qLA16IHEAgduTmhXG06bpguMOrP5Do=;
 b=tOo4eUC94cD8JnDCD/MnOV3O1jG+KUQGc3JtRkHFLjGv/yORPJNoTdX79l2KXIraEy
 9NnyfX77l+B5tIsbsL9R5T3kBW05XQ+flp+Mvd9aNdRzcAu16luea66VIZ5Dd8lVNlh2
 tZX4cayieRcNbnXuy3RfPHVvtzDHU65s+X5u7i+P9c0w3Tw/mD6x8BcQdlqUaKeenpbF
 O4gYCsnk2PdWct8xJvcS3i/uIesJPyytM1bvlnk1JFVy2FDrswiGycTF7qPGquGiNP9y
 fvxVQWIdpVYDAc7l5gmr0UOfRjAez3ddEmzwftfyX++kq6n+3lzLF8+gzgnew35d3Fu8
 8bDA==
X-Forwarded-Encrypted: i=1;
 AHgh+Ro7nw18QC6x+YthscN6cki6LQib8CaH9Ek7QZT+6xGHBYaASF8XUPsH8tySYY62YXHfg0ff18JV56L79Kpb0ys=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxlQOzWTZPGwRd8z8hyIHOgYX8XaPixMxMus/Q1xfjSsGxYAeoX
 bd3Hts7NTVheloMCBesgL38y9tpwP7xe1wd/8hGg4rYd6UZ5kOXfau6VTZ8akEtEXWiEsnhXzns
 rwb64A79oxUyfCspoiVTFLo+fynPcLUhe1eDiAbo410AqaJBKlITivsL+bY2z1WYj++Oi7zc00o
 hj/awj1Bf+eyKVxeo9vr0=
X-Gm-Gg: AfdE7cmD/sre1qED1fAcvCQqrx1ep1sOOk5JVzCtlxFJF0zobXhmN4iylv8W3iOFYwa
 XBeP18IcD59mSt1OAkFmmHuBKfdHi7RzA3xjXzpNhkgoWFlGEDM8I5g5WvO1lOvAmnSp3k3OpWg
 B2D+VpmBDSQUvn70spZo5UWKw3LHOXAyYPzEVA2mOLSZv1shgFl0xGqg386Wdgelt80IoOFjG1+
 loNHRNEkZh8ivT3YIQA3f+zJGx3EMpZtmybpqcTf+a5rnBiK1K+i0ZkTJNOeoTwVlDdQWBeBFjV
 t3pUKoFFouPELLSw7ws9Xo9eItjfo/lOkA+F4PovqftAgrrbLHUOohPIhFEPt/SALwGcm8nqlvi
 7dbP47tx0hy9AD77JPulljYzwEISd8CsrOxRDvNtTPQ6gQdK58/Ru7cKyIYJlPMU+JZY=
X-Received: by 2002:a17:902:ec92:b0:2be:3850:297e with SMTP id
 d9443c01a7336-2c71901d472mr129593165ad.31.1782093482427; 
 Sun, 21 Jun 2026 18:58:02 -0700 (PDT)
X-Received: by 2002:a17:902:ec92:b0:2be:3850:297e with SMTP id
 d9443c01a7336-2c71901d472mr129592915ad.31.1782093482042; 
 Sun, 21 Jun 2026 18:58:02 -0700 (PDT)
Received: from acelan-Precision-5480 (211-75-139-220.hinet-ip.hinet.net.
 [211.75.139.220]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2c7436af585sm61372645ad.5.2026.06.21.18.57.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Jun 2026 18:58:01 -0700 (PDT)
Date: Mon, 22 Jun 2026 09:57:55 +0800
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <ajiHH-RaHUjgraMh@acelan-Precision-5480>
Mail-Followup-To: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>, 
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260618073324.1843310-1-acelan.kao@canonical.com>
 <IA3PR11MB8986B77F49DF672178FEE4BCE5E32@IA3PR11MB8986.namprd11.prod.outlook.com>
 <c3030882-55c8-486f-8ff3-571d001b99a1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c3030882-55c8-486f-8ff3-571d001b99a1@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1782093484;
 bh=604Ftnw3RlYE7qLA16IHEAgduTmhXG06bpguMOrP5Do=;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
 Content-Type:In-Reply-To;
 b=g75IpVluHdVu8qwGAN3gl0sunEp9Aoo4nqD7raGrSkKthDNGsQMqhpq8ZcYl7z13n
 WXLWkLVyjL9AHFlOjySCgzApMam3CaY6lRBtcReU+q/NxAGCF6OryQ06yRidjNFkLQ
 OpO9HWFVAPPeMPpYFADe3hQTbNrO/IKvun0AuwqthhxfaErLNxYc1nimMvW/jBqeaD
 fdv7KvkoWI1OhyFXAH7JVsGV+I/ck3uRp7r3uh++aQW3S41JFXfa7gaTHFPFhjLWb0
 EKcv4VyByEkHLMbF4rGrdFnHgRaF7cvNFNAe8dgg+BpeGFBazsJnYtwDBg4nCYweJV
 uf8QxQEZc3V27oRebXdc32lxFzLO5Ghsqzy85QODC4lsvY2XAeyMdISXEtWpsVZMJC
 Ag+bW1J1t77qwCnUE1K+92YoZb7GQXm0La8xAHJ64W1UEy05OIPrqaAmBtxGL2+lI6
 ALV/qBqDdH4+TPo8QWgtChygckgKW6BlDzsJLjOe27E/PsGuSDwjVZZ13qUWLvQkCW
 QZr18QHwW7wkVNnsGyTW8uLybgSHVD/U+n2vf5eOUhNBJQnLqAmLg3Ni7afX3TIbl9
 YhFwhuG9yHNbro7mfqU8cKM2cUEj8A94DWk+0wwDsxh6A/1lgUwUysXB+dVyTN6yBZ
 knsCg3RNzagg2JXfuFYK+2Fo=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=g75IpVlu
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC passthrough
 after reset
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
From: "Chia-Lin Kao \(AceLan\) via Intel-wired-lan"
 <intel-wired-lan@osuosl.org>
Reply-To: "Chia-Lin Kao \(AceLan\)" <acelan.kao@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[acelan.kao@canonical.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 01E5B6AC02C

On Thu, Jun 18, 2026 at 11:51:35AM +0300, Ruinskiy, Dima wrote:
> On 18/06/2026 10:55, Loktionov, Aleksandr wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > > Of Chia-Lin Kao (AceLan) via Intel-wired-lan
> > > Sent: Thursday, June 18, 2026 9:33 AM
> > > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > > Przemyslaw <przemyslaw.kitszel@intel.com>
> > > Cc: Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> > > <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> > > Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; intel-
> > > wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> > > kernel@vger.kernel.org
> > > Subject: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC passthrough
> > > after reset
> > >
> > > Some systems support MAC passthrough for dock Ethernet controllers by
> > > having firmware rewrite the receive address registers after the
> > > controller reset completes.
> > >
> > > igc resets the controller before reading RAL0/RAH0, so that reset can
> > > restore the controller native MAC address temporarily. If the driver
> > > reads the registers immediately, it can race the firmware rewrite and
> > > keep the native dock MAC instead of the host passthrough MAC.
> > >
> > > For LMVP devices, poll RAL0/RAH0 after reset and before reading the
> > > MAC address. Stop once the address registers change to another valid
> > > Ethernet address, allowing firmware a bounded window to complete the
> > > passthrough update.
> > >
Hi Aleksandr and Dima,

Let me answer your questions below.

> > Good day, Chia-Lin
> >
> > It'd be great if you could share more details on how to reproduce the issue.
> >
> > What exact hardware setup is affected (dock model, NIC, system)?
We've observed this issue for a long time, and encountered the issue on
Lenovo's P15 Gen 2 (type 20YQ, 20YR) Laptops (ThinkPad) the first
time at 2021 and added 600ms delay.
Recently, we encountered the same issue on Dell, too, and then
increased the delay to 1000ms.
And now, the issue occurs again.

https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1942999
https://lore.kernel.org/lkml/20210702045120.22855-2-aaron.ma@canonical.com/
https://bugs.launchpad.net/ubuntu/+source/linux-oem-6.17/+bug/2143197

> > Which firmware/BIOS version?
It doesn't happen on a single firmware or BIOS, and not a single
hardware or a single brand.

> > How often does the race trigger?
It may happen when re-plug the dock cable.
With the mainline kernel, it's easy to reproduce the issue by
re-plugging the dock cable.

> > Do you have a way to reliably reproduce it?
Yes, I can find some machines to reproduce the issue reliably.

> >
> > Also, what is the observed behavior vs. expected behavior? For example,
> > which MAC address is seen and which one should be used?
Here is the debugging logs, fc:4c:ea:ae:a1:e3 is the MAC
address of the machine, and c4:d6:d3:83:75:d1 is the MAC of the dock.

It gets the correct passthrough MAC address after bootup and the
first re-plug at 40s, and fails to update the MAC address in time
after couple of re-plugs.

[    0.689873] igc 0000:70:00.0: MAC debug before reset_hw: RAL0=0xaeea4cfc RAH0=0x8000e3a1 RAR0=fc:4c:ea:ae:a1:e3 valid=1
[    0.755187] igc 0000:70:00.0: MAC debug after reset_hw: RAL0=0x83d3d6c4 RAH0=0x8000d175 RAR0=c4:d6:d3:83:75:d1 valid=1
[    0.755576] igc 0000:70:00.0: MAC debug: eth_platform_get_mac_address ret=-19, reading RAR0/NVM fallback
[    0.755582] igc 0000:70:00.0: MAC debug: read_mac_addr ret=0 addr=fc:4c:ea:ae:a1:e3 perm_addr=fc:4c:ea:ae:a1:e3
[    4.687730] igc 0000:70:00.0: MAC debug firmware: fwnode=<none> props(mac=0 local=0 address=0) fwnode_ret=-19 fwnode_mac=00:00:00:00:00:00 device_ret=-2 device_mac=00:00:00:00:00:00 is_tbt=0 external=0 hotplug_bridge=0
[    4.687739] igc 0000:70:00.0: MAC debug before reset_hw: RAL0=0xaeea4cfc RAH0=0x8000e3a1 RAR0=fc:4c:ea:ae:a1:e3 valid=1
[    4.748545] igc 0000:70:00.0: MAC debug after reset_hw: RAL0=0x83d3d6c4 RAH0=0x8000d175 RAR0=c4:d6:d3:83:75:d1 valid=1
[    4.748937] igc 0000:70:00.0: MAC debug: eth_platform_get_mac_address ret=-19, reading RAR0/NVM fallback
[    4.748944] igc 0000:70:00.0: MAC debug: read_mac_addr ret=0 addr=fc:4c:ea:ae:a1:e3 perm_addr=fc:4c:ea:ae:a1:e3
[   40.892715] igc 0000:70:00.0: MAC debug firmware: fwnode=<none> props(mac=0 local=0 address=0) fwnode_ret=-19 fwnode_mac=00:00:00:00:00:00 device_ret=-2 device_mac=00:00:00:00:00:00 is_tbt=0 external=0 hotplug_bridge=0
[   40.892724] igc 0000:70:00.0: MAC debug before reset_hw: RAL0=0x83d3d6c4 RAH0=0x8000d175 RAR0=c4:d6:d3:83:75:d1 valid=1
[   40.953524] igc 0000:70:00.0: MAC debug after reset_hw: RAL0=0x83d3d6c4 RAH0=0x8000d175 RAR0=c4:d6:d3:83:75:d1 valid=1
[   40.953933] igc 0000:70:00.0: MAC debug: eth_platform_get_mac_address ret=-19, reading RAR0/NVM fallback
[   40.953941] igc 0000:70:00.0: MAC debug: read_mac_addr ret=0 addr=c4:d6:d3:83:75:d1 perm_addr=c4:d6:d3:83:75:d1
...
[  307.387282] igc 0000:70:00.0: MAC poll change at 700ms: RAL0=0xaeea4cfc RAH0=0x8000e3a1 RAR0=fc:4c:ea:ae:a1:e3 valid=1 prev=c4:d6:d3:83:75:d1
[  328.826084] igc 0000:38:00.0: MAC poll change at 1000ms: RAL0=0xaeea4cfc RAH0=0x8000e3a1 RAR0=fc:4c:ea:ae:a1:e3 valid=1 prev=c4:d6:d3:83:75:d1
[  429.070519] igc 0000:38:00.0: MAC poll change at 1100ms: RAL0=0xaeea4cfc RAH0=0x8000e3a1 RAR0=fc:4c:ea:ae:a1:e3 valid=1 prev=c4:d6:d3:83:75:d1
[  466.509571] igc 0000:70:00.0: MAC poll change at 1000ms: RAL0=0xaeea4cfc RAH0=0x8000e3a1 RAR0=fc:4c:ea:ae:a1:e3 valid=1 prev=c4:d6:d3:83:75:d1

> >
> In addition to that - I would ask - when the race triggers - how much wait
> time do you need to reliably resolve it (i.e., for the FW to have completed
> the MAC update)?
We have tried to unconditionally wait for 1 second while probing, but
it still not enough sometimes. In rare case, it might exceed 2
seconds.

https://git.launchpad.net/~ubuntu-kernel/ubuntu/+source/linux/+git/noble/tree/drivers/net/ethernet/intel/igc/igc_main.c?h=hwe-7.0-next#n7205
	if (pci_is_thunderbolt_attached(pdev))
		msleep(1000);

>
> Because 100 iterations of 100msec each - this translates to up-to 10
> seconds, no?
Yes, just in case it takes longer.
I think 5 seconds should be enough if you feel this is feasible.

> The weak spot here is what if you are on an LMvP system where MAC
> passthrough has not been enabled. You will always wait for the full 10
> seconds after every reset until you give up and just continue with the
> default MAC. Hardly desirable behavior.
Right, that is the case. But we won't re-plug the dock frequently, so
it is not so bad to wait for a while for the Ethernet to get connected.

>
> We've implemented something like this in another driver at one point, and
> the default polling timeout there is 1 second (which does not affect the UX
> too much).
>
> A better way may be using a FW interrupt to notify the driver when the MAC
> address has been updated. The usability of this approach depends on whether
> it is possible to update the MAC address up the stack after the device has
> already been initialized. Does the framework support this?
I wish we can detect if the MAC passthrough is enabled, so that we
know if we need to poll for the MAC address.
For the FW interrupt mechanism also needs BIOS support, and we don't
have the power to push this.

>
> Thanks,
> Dima.
>
> >
> > > Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
> > > ---
> > >   drivers/net/ethernet/intel/igc/igc_main.c | 48
> > > +++++++++++++++++++++++
> > >   1 file changed, 48 insertions(+)
> > >
> > > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > > b/drivers/net/ethernet/intel/igc/igc_main.c
> > > index 2c9e2dfd8499..fa9752ed8bc5 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > > @@ -11,6 +11,7 @@
> > >   #include <net/pkt_sched.h>
> > >   #include <linux/bpf_trace.h>
> > >   #include <net/xdp_sock_drv.h>
> > > +#include <linux/etherdevice.h>
> > >   #include <linux/pci.h>
> > >   #include <linux/mdio.h>
> > >
> > > @@ -69,6 +70,52 @@ static const struct pci_device_id igc_pci_tbl[] = {
> > >
> > >   MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
> > >
> > > +static void igc_read_rar0(struct igc_hw *hw, u8 *addr, u32 *ral, u32
> > > +*rah) {
> > > +	*ral = rd32(IGC_RAL(0));
> > > +	*rah = rd32(IGC_RAH(0));
> > > +
> > > +	addr[0] = *ral & 0xff;
> > > +	addr[1] = (*ral >> 8) & 0xff;
> > > +	addr[2] = (*ral >> 16) & 0xff;
> > > +	addr[3] = (*ral >> 24) & 0xff;
> > > +	addr[4] = *rah & 0xff;
> > > +	addr[5] = (*rah >> 8) & 0xff;
> > > +}
> > > +
> > > +static bool igc_is_lmvp_device(struct pci_dev *pdev) {
> > > +	switch (pdev->device) {
> > > +	case IGC_DEV_ID_I225_LMVP:
> > > +	case IGC_DEV_ID_I226_LMVP:
> > > +		return true;
> > > +	default:
> > > +		return false;
> > > +	}
> > > +}
> > > +
> > > +static void igc_wait_for_lmvp_mac_passthrough(struct pci_dev *pdev,
> > > +					      struct igc_hw *hw)
> > > +{
> > > +	u8 addr[ETH_ALEN] __aligned(2);
> > > +	u32 orig_ral, orig_rah;
> > > +	u32 ral, rah;
> > > +	int i;
> > > +
> > > +	if (!igc_is_lmvp_device(pdev))
> > > +		return;
> > > +
> > > +	igc_read_rar0(hw, addr, &orig_ral, &orig_rah);
> > > +
> > > +	for (i = 0; i < 100; i++) {
> > > +		msleep(100);
> > > +		igc_read_rar0(hw, addr, &ral, &rah);
> > > +		if ((ral != orig_ral || rah != orig_rah) &&
> > > +		    is_valid_ether_addr(addr))
> > > +			return;
> > > +	}
> > > +}
> > > +
> > >   enum latency_range {
> > >   	lowest_latency = 0,
> > >   	low_latency = 1,
> > > @@ -7259,6 +7306,7 @@ static int igc_probe(struct pci_dev *pdev,
> > >   	 * known good starting state
> > >   	 */
> > >   	hw->mac.ops.reset_hw(hw);
> > > +	igc_wait_for_lmvp_mac_passthrough(pdev, hw);
> > >
> > >   	if (igc_get_flash_presence_i225(hw)) {
> > >   		if (hw->nvm.ops.validate(hw) < 0) {
> > > --
> > > 2.53.0
> >
>
