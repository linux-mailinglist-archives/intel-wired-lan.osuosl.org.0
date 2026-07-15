Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MXnrJrUeV2pUFgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 07:46:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9A975ABE2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 07:46:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=FNZFnKly;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8AA6406DC;
	Wed, 15 Jul 2026 05:46:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 04yjQwksyr-g; Wed, 15 Jul 2026 05:46:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E604406B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784094385;
	bh=IoG1Whp3gfhDFJ0umUwcIOIJfD5L91Xz9sc0pOou7vk=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=FNZFnKlymNaBKtHXuy6ZMDf3+FpLAKIIDxc7ljwiqpsY3O7WObB3GZGi4zVTpf7ci
	 IlHhoPGnmzOnhx5R6EWPzm5UpM8dIUgdtZoifD4MvJQCUTi4pPPCPFmg0sviShCAh/
	 w5ftY6cWuGAH20CAhLH5qD+BdkcA/npee54s3ptgjIi6tzYaLgX3tFmhU4iO5NMZQ6
	 QQJ528W/bMKWa9y1bElRcu2eyw26Whkp5+dTdSVrhiiOQWS0FgvljYIQAsWi3IzC3+
	 Bm1i4H7no9W1mYNSiY3uKcLkqhhLEBN8PHazlhWm2quPuisJJBXzkYUO45iKXLZ/t/
	 wHLEKJgBX4r4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E604406B3;
	Wed, 15 Jul 2026 05:46:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A9833203
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 05:46:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AD15406AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 05:46:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hRp8CfWGIUfy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 05:46:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=acelan.kao@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0AC69406A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AC69406A9
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0AC69406A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 05:46:21 +0000 (UTC)
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 873173F57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 05:46:18 +0000 (UTC)
Received: by mail-pj1-f70.google.com with SMTP id
 98e67ed59e1d1-38dc101287aso5664122a91.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 22:46:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1784094377; x=1784699177;
 h=in-reply-to:content-disposition:content-type:mime-version
 :references:mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to:content-type;
 bh=IoG1Whp3gfhDFJ0umUwcIOIJfD5L91Xz9sc0pOou7vk=;
 b=eBZbvQDViRYXjPGOto5QTpMrtX7HiyTgKWiXQht9LHJmMJjSQ/5WH4AVGrUbnDhMIF
 kJMWgeEa6NUKXKDBWONjBY2a7P/MsXpK2HqQMUkh10pR9KChXP+ZWQNLaYXJ+LBrAvqg
 /01iDHHdw4iJuuF/3IKGjlhPHKEXQsCuD13HLk26KqaB8N7tyvfHFmMqURERDa4a4tfw
 r9q8fGUoOZJpdXOx9FncIOGaaf7KKNH4/WhoY0zFP3zXURqo7CPIKWgVkYjTb1Cd9sOQ
 mCENOtPf7XFZC3v3hVViB4QcICbLLIY4YGUAsYGigYLzcrIFDs+NPB4Ym1JpOm2JlVf+
 HCVA==
X-Forwarded-Encrypted: i=1;
 AHgh+RrSM2DjEJHxgKqfABhBGco4CJIhCbckS8Ccf5FzX6+gLZ81f7qU1rOr2aoBeDPQDX7tmKoWvTOoJyKbxYQB8aE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwENHIiFjLK5Dr0a35bjFLC00D5q3Jm+Vb6TUHKoiaz5jK46gYC
 nyt5F8J7zKT4tc9KK3FmxfxsvCH0ypeWkKCTKkWGbPltiTRdyhUOReG0VQh6bfKHFr1eBFycuxR
 5zR333Oc+wEdHPV4BCoq2SjVgGtpuWE/gYLFfB4TD9fLj0VXuLY3RTpvhDYXxZszu4GaHMM1e9l
 ofJc73bQurYkDtmDdqfiLxng==
X-Gm-Gg: AfdE7ckxyU+W2UTnFsXe7u1/18wuZPyepr0tQrobJ3/OBzL+HKKxUKPbHQ/9Qhf5lJV
 Voz5Suc0m3D0cSnAImYe9r5k8g72UbPX0ZBekf5c4mcXMIdxm5OfPArw0XJAXp7MXLCsl6x1DPq
 sCTkStM9XBxLcjbUXbha9tDSiCi2+ChExqxXQTxuP58jCpm2fenGEgv4MtbOBSPEX0FHBEo0rwI
 J7aIwF2+G/bdK4pDUH/SB/BjmTJ/5C2cqe3aOZkQKb7Bg91j/Es4nly6QDlejOgOs/K5FUwp0nD
 mf0nFw/wSQWJEsXNAUgtKWtqCN8UFm9oE2pK+94SPRhczCKBdn+gBrdHgcrfLa5N3lAlsJUOBEg
 sW/QRYrPlnr9D7tVVuCLc58Tn9tv6jhI7rM0kfGazqPu7hrinE+/sOpUT/k2wQ/xyOpQ=
X-Received: by 2002:a17:90b:28c4:b0:38d:fda6:4873 with SMTP id
 98e67ed59e1d1-38e17db7bd5mr6184605a91.10.1784094376915; 
 Tue, 14 Jul 2026 22:46:16 -0700 (PDT)
X-Received: by 2002:a17:90b:28c4:b0:38d:fda6:4873 with SMTP id
 98e67ed59e1d1-38e17db7bd5mr6184580a91.10.1784094376304; 
 Tue, 14 Jul 2026 22:46:16 -0700 (PDT)
Received: from acelan-Precision-5480 (211-75-139-220.hinet-ip.hinet.net.
 [211.75.139.220]) by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-313b4cbafa1sm86874914eec.6.2026.07.14.22.46.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2026 22:46:15 -0700 (PDT)
Date: Wed, 15 Jul 2026 13:46:09 +0800
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
Message-ID: <alcd_FnUdrQug5cm@acelan-Precision-5480>
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
 <ajiHH-RaHUjgraMh@acelan-Precision-5480>
 <1d6c3aae-c9b1-42da-b5fa-6f8ee9ebcae1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1d6c3aae-c9b1-42da-b5fa-6f8ee9ebcae1@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1784094378;
 bh=IoG1Whp3gfhDFJ0umUwcIOIJfD5L91Xz9sc0pOou7vk=;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
 Content-Type:In-Reply-To;
 b=P7xPp+mXbUEhruHoV7a+jX1u/PIuspN3CGYNetDZMRpmFordWnqQ6go4PteBc1M/o
 Z5JkKwabJHkN81bNkudLJdpdsNfCPO91NLNFS0pEs2TwchK68t2LTzrx5zuri4H9vN
 bfmXtAHPYp/6mGn5jv9dPJS4ESF9FuUbZb7HUA1pEJa71MwCToakOnBvXVyj7sPzVU
 KFSy6eq4dgHL64+9jdgRBwn+RxUOaXHMc7CrmLDhFEjIZYiNHuKaNT4X4wZ0U9GT4t
 LI8dDuKTZID5K05Ac8O5k6+YT2yPOvCo/b6t+2y4niTE+N0vFRSgwVGRWcbMbWl0dV
 6Jk8sefcEYAP2GFvWJFWvSMet3Q00QAUgLDglQvdGXkCBu/HQ1O97lLRl0GqqZV7RK
 Ko5dGfPjrFUqY+XhEQLPcmN3OdZ+GCgsvzIxwyaF+DjkmPy8fzNrAba+v1xNxSvV42
 nw5Awz5mt5hCTwUqkSdabwLQ+S1b+yJfd9wU4GL0HNP7/BdhiUR9gd3ZT+rkmyL9ym
 2cbOjEfyzVNIReqOwu6AW3Chki5JXr6jX/h+xh40j8cLz+siZJ/QiV+iKeOBqDaKL9
 JGkfYfA2AZn0u9Q7ZdLOGX+XpIt5fmlyGwplXVKdo2ildXs06FrvXMns6Lw9fuH22d
 0EU8E0LTH6BGjG5/jt1bkfKo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=P7xPp+mX
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:email,canonical.com:replyto,acelan-Precision-5480:mid,osuosl.org:from_smtp,osuosl.org:from_mime,osuosl.org:dkim];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[acelan.kao@canonical.com];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B9A975ABE2

On Mon, Jun 29, 2026 at 07:42:43PM +0300, Ruinskiy, Dima wrote:
> Hi AceLan,
>
> Some more comments below.
>
> On 22/06/2026 4:57, Chia-Lin Kao (AceLan) wrote:
>
> > >
> > > Because 100 iterations of 100msec each - this translates to up-to 10
> > > seconds, no?
> > Yes, just in case it takes longer.
> > I think 5 seconds should be enough if you feel this is feasible.
> 5 seconds also sounds excessive, assuming the majority of the systems do not
> support / enable MAC passthrough via the FW feature (and I have a hunch it
> is the case). 2 seconds... maybe, but then you say that in some rare cases
> it exceeds 2 seconds as well. What if in some even rare cases it exceeds
> 5/10 seconds? Perhaps because of some glitch it will not come up at all on
> this cycle. Should the driver always wait?
>
> > I wish we can detect if the MAC passthrough is enabled, so that we
> > know if we need to poll for the MAC address.
> Unfortunately, like you I am not aware of any way for the driver to know
> whether MAC passthrough via FW is enabled. Because of this we have been
> exploring a simpler way to support this feature via ACPI objects (which are
> set by the BIOS when MAC passthrough is enabled and are easy for the driver
> to query). I know some vendors have already implemented it, and I am
> currently drafting a patch to send.
Any good news about this patch?

>
> > For the FW interrupt mechanism also needs BIOS support, and we don't
> > have the power to push this.
> The mechanism I have in mind does not require BIOS support - the I225/I226
> FW already supports the required interrupt, AFAIK - it merely needs to be
> enabled in the igc driver. With that said, there still remains the question
> of how to notify the network stack above us that the MAC address has changed
> post-probe - and whether it is even supported.
>
> --Dima
>
> >
> > >
> > > Thanks,
> > > Dima.
> > >
> > > >
> > > > > Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
> > > > > ---
> > > > >    drivers/net/ethernet/intel/igc/igc_main.c | 48
> > > > > +++++++++++++++++++++++
> > > > >    1 file changed, 48 insertions(+)
> > > > >
> > > > > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > > > > b/drivers/net/ethernet/intel/igc/igc_main.c
> > > > > index 2c9e2dfd8499..fa9752ed8bc5 100644
> > > > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > > > > @@ -11,6 +11,7 @@
> > > > >    #include <net/pkt_sched.h>
> > > > >    #include <linux/bpf_trace.h>
> > > > >    #include <net/xdp_sock_drv.h>
> > > > > +#include <linux/etherdevice.h>
> > > > >    #include <linux/pci.h>
> > > > >    #include <linux/mdio.h>
> > > > >
> > > > > @@ -69,6 +70,52 @@ static const struct pci_device_id igc_pci_tbl[] = {
> > > > >
> > > > >    MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
> > > > >
> > > > > +static void igc_read_rar0(struct igc_hw *hw, u8 *addr, u32 *ral, u32
> > > > > +*rah) {
> > > > > +	*ral = rd32(IGC_RAL(0));
> > > > > +	*rah = rd32(IGC_RAH(0));
> > > > > +
> > > > > +	addr[0] = *ral & 0xff;
> > > > > +	addr[1] = (*ral >> 8) & 0xff;
> > > > > +	addr[2] = (*ral >> 16) & 0xff;
> > > > > +	addr[3] = (*ral >> 24) & 0xff;
> > > > > +	addr[4] = *rah & 0xff;
> > > > > +	addr[5] = (*rah >> 8) & 0xff;
> > > > > +}
> > > > > +
> > > > > +static bool igc_is_lmvp_device(struct pci_dev *pdev) {
> > > > > +	switch (pdev->device) {
> > > > > +	case IGC_DEV_ID_I225_LMVP:
> > > > > +	case IGC_DEV_ID_I226_LMVP:
> > > > > +		return true;
> > > > > +	default:
> > > > > +		return false;
> > > > > +	}
> > > > > +}
> > > > > +
> > > > > +static void igc_wait_for_lmvp_mac_passthrough(struct pci_dev *pdev,
> > > > > +					      struct igc_hw *hw)
> > > > > +{
> > > > > +	u8 addr[ETH_ALEN] __aligned(2);
> > > > > +	u32 orig_ral, orig_rah;
> > > > > +	u32 ral, rah;
> > > > > +	int i;
> > > > > +
> > > > > +	if (!igc_is_lmvp_device(pdev))
> > > > > +		return;
> > > > > +
> > > > > +	igc_read_rar0(hw, addr, &orig_ral, &orig_rah);
> > > > > +
> > > > > +	for (i = 0; i < 100; i++) {
> > > > > +		msleep(100);
> > > > > +		igc_read_rar0(hw, addr, &ral, &rah);
> > > > > +		if ((ral != orig_ral || rah != orig_rah) &&
> > > > > +		    is_valid_ether_addr(addr))
> > > > > +			return;
> > > > > +	}
> > > > > +}
> > > > > +
> > > > >    enum latency_range {
> > > > >    	lowest_latency = 0,
> > > > >    	low_latency = 1,
> > > > > @@ -7259,6 +7306,7 @@ static int igc_probe(struct pci_dev *pdev,
> > > > >    	 * known good starting state
> > > > >    	 */
> > > > >    	hw->mac.ops.reset_hw(hw);
> > > > > +	igc_wait_for_lmvp_mac_passthrough(pdev, hw);
> > > > >
> > > > >    	if (igc_get_flash_presence_i225(hw)) {
> > > > >    		if (hw->nvm.ops.validate(hw) < 0) {
> > > > > --
> > > > > 2.53.0
> > > >
> > >
>
