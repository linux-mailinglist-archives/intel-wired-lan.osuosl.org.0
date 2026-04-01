Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMc8H5LIzGn5WgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 09:26:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D764375D01
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 09:26:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A521040C30;
	Wed,  1 Apr 2026 07:26:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gc__ImQZEh8Q; Wed,  1 Apr 2026 07:26:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDAA340C27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775028367;
	bh=6faZ48iN3rBNZokz/jM6+kkvvUyTVA1i62R0Nn+CKxc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fl1PoCUg8rjkLtKBF/P0WNl19SWf8MzpupvhXgl+V+v446+76p+yfhgVHjaYZP77b
	 P9W6hKdWvLo3LfMETo1enw2jzKfAg2sfmpNsPbTbvjcggYXJ/3T+3wKw08QZ/Kolh4
	 Tt0CBwZknlCT8GzTqVbRvoizZJRoQ+nQ6STPNn1x9BZK9KZbttjspEd9VO24+W/liF
	 8l+noImT9/JRWZo+MLZGXbbNs4D9WbykPHNCTPIzov9vtW+DLtRaVFliEzyuH41Q3F
	 RgH2QNQtL18j13TCFR1h32xgGJzdsMfe2jA0Ly56RZJfMOWaqX40Zj2iqm8GU7M5xh
	 UNwPWbIiGcAVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDAA340C27;
	Wed,  1 Apr 2026 07:26:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A536E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FE5960FDF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:26:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XVsHeL-Jpcid for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 07:26:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.41;
 helo=mail-lf1-f41.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3D8EC60FD8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D8EC60FD8
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D8EC60FD8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 07:26:03 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-59e4989dacdso5910307e87.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Apr 2026 00:26:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775028361; x=1775633161;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=6faZ48iN3rBNZokz/jM6+kkvvUyTVA1i62R0Nn+CKxc=;
 b=Anqzrt60zDdm/LpJKYQXc6xZJo6KUWpgp1WgBDcNFtFEMnEYXU4q8sZMEN1NU9a75b
 osRCnpgyXKOm4RwuMgPK8s6blxi/S8zbm+AAPJb68H2RTJ7Co2qRQEPWlafskLK2Gn9H
 F5h8J1sg5TcCKUcAa3psuuI/M9G+gRMZxnTxYUcuJTyvwf9TY4gxMfQkIIjRlfaCO8u8
 0KXIBBKxojf0QRa5Bd6DeXVz14l+0HDPgHK/dnC1V1FtrS1VFMMQwjBiN+yFbNVcxxRD
 AtDK6EPsPnryL5swTxlSAnQ9VDP2UjXLbD6EbS69vTsOLWvOr0xe6KTCqQ7K8l/uenTT
 lDFQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTsywStRYO74FhaxwMFiMIX+yAz0evsiE8GM8anbXbNykOAjHI50fIItTVHFRQvcTlroXzhxkNQCH8dHacNzg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzl0npT1dvX2SH7eTbzxbwWC3tRDMRe5KTsUcv7r2pWXQyw89Bp
 VuJIKfNRJkt4KNX4Dqp8L1xRckEefMIqWZiEiZAWWjrInYvynh7kEgJF
X-Gm-Gg: ATEYQzySHCC1io8Zyq91Hj34IIUtJU/JB2/kHr9egFl8O7jhGR9ajExSz56Zb26SQ3U
 VdL7DqwNUhWQKqGD7vDPKJi5319SVKCFKlezIIyBaI7wuPXUgo9OXn2efU5HjzGgk4kVPbzPv5I
 nnmn2ZSWHH7nsOdScn6y0sk/b6FNRNRvs8vqoFjnn5GIYW1qr1gL5jYsp2WySn/ESRJnWgNdeAm
 4vhjN0x0Z0GCvJXBHWqiQyzVOamePEKD1GjeBzCsSNEV+yKdwVbwK8fi7GSpOHrGctGqwrp0yZQ
 RUMCLENva0AQz6jxsRIjxbENhEGhVCR6cNazZt94JAMk07tiC7FyLW1xVK9pK9MbiQ2nZiFnpxC
 vSF8i/3fcHQyR4ITRTQb5m1YOf8SLzIPj1OAzHwFB/pfDfinbXFODgE77AnBNxn1YSWPtILdM7b
 28t0z4JVTq4bDBvD4ng+NcKxx6zazeNwDCK+esQ5kkoYLZlvpJ1LL0tPfrxXg/SSeGd/SOEng=
X-Received: by 2002:a05:6512:33c7:b0:5a1:52f7:3cd1 with SMTP id
 2adb3069b0e04-5a2c1f3fd39mr821188e87.37.1775028360469; 
 Wed, 01 Apr 2026 00:26:00 -0700 (PDT)
Received: from onyx.my.domain (n4wtl2temhmxvc9uj89-1.v6.elisa-mobile.fi.
 [2001:999:48c:ff1:3920:79f7:a7df:45d9])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a2b13b13bbsm3111080e87.0.2026.04.01.00.25.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2026 00:26:00 -0700 (PDT)
Date: Wed, 1 Apr 2026 10:25:56 +0300
From: Timo Teras <timo.teras@iki.fi>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Cc: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, "Brandt, Todd E"
 <todd.e.brandt@intel.com>, David Box <david.e.box@linux.intel.com>, Len
 Brown <lenb@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "marmarek@invisiblethingslab.com"
 <marmarek@invisiblethingslab.com>, "jeremie.wenger@edu.ge.ch"
 <jeremie.wenger@edu.ge.ch>
Message-ID: <20260401102556.64d226c8@onyx.my.domain>
In-Reply-To: <f39683ed-7397-40ec-ad0f-833664ea5c8b@intel.com>
References: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
 <20260210131158.1055ad48@onyx.my.domain>
 <745b1cd3-3e02-4d50-b1cb-0463ae6a9dd3@intel.com>
 <20260212111506.16bc402a@onyx.my.domain>
 <29b8a4b4-66d4-47e5-a316-b88a03b3882c@intel.com>
 <20260226143616.608ba411@onyx.my.domain>
 <35bc35d8-ff5d-4596-9f9f-6ab563c890b0@intel.com>
 <f39683ed-7397-40ec-ad0f-833664ea5c8b@intel.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iki.fi
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure
 PLL clock gate value and re-enable K1 on Meteor Lake
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:vitaly.lifshits@intel.com,m:todd.e.brandt@intel.com,m:david.e.box@linux.intel.com,m:lenb@kernel.org,m:marmarek@invisiblethingslab.com,m:jeremie.wenger@edu.ge.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[iki.fi];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:url,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER(0.00)[timo.teras@iki.fi,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[timo.teras@iki.fi,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5D764375D01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi

On Wed, 1 Apr 2026 10:07:45 +0300
"Ruinskiy, Dima" <dima.ruinskiy@intel.com> wrote:

> On 25/03/2026 17:49, Ruinskiy, Dima wrote:
> > On 26/02/2026 14:36, Timo Teras wrote: =20
> >> Yes, generally maintaining a large quirk set is infeasible.
> >>
> >> But this is my point: if the affected set of machines with this issue
> >> is so large that maintaining a quirk set becomes infeasible, then
> >> the proposed change will make life very difficult for large enough
> >> set of people that a better solution should be devised.
> >> =20
> > At this point, with the current PLL change, it looks like the number of=
=20
> > affected systems would be smaller than would be with the previous PLL=20
> > value.
> >=20
> > So far we have not received additional reports of regressions caused by=
=20
> > this patch, other than yours. So, perhaps, the it can be manageable wit=
h=20
> > a DMI quirk approach. I went ahead and implemented the infrastructure,=
=20
> > it's actually quite a small change, and does what I want (automatically=
=20
> > alters the default value of the K1 disable flag).

I would not make quick judgement on not receiving any reports that there
is not other hardware where this causes issues. I do hope this is
the situation. But as it happened in the past the reports start typically
with a delay after the commit makes it into an upstream release.

We had the patched kernel with the PLL change running for a bit longer
time, and we observed that it also caused packet loss / very slow network
issues in the Dell laptop. Especially with the later suggested value 0x226.

> > Could you share the DMI IDs of your system, where the issue is observed=
?=20
> > Most likely the sys_vendor, product_family and product_name, located=20
> > under /sys/class/dmi/id would be the most useful. I can add them as an=
=20
> > initial DMI table entry for v3 of this patch (or a follow-up patch).

sys_vendor: Dell Inc.
product_family: Dell Pro Laptops
product_name: Dell Pro 16 Plus PB16250

See also the original report for a full dmesg at:
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/048=
860.html

=46rom dmesg:

DMI: Dell Inc. Dell Pro 16 Plus PB16250/0W8RP8, BIOS 2.3.1 05/16/2025
e1000e 0000:00:1f.6 eth0: MAC: 16, PHY: 12, PBA No: FFFFFF-0FF

I would not be surprised if other Dell models with same chipset are
affected. But this is the only one I have available to test with.

Maybe its worth to check based on sys_vendor and/or product_family
together with the MAC and/or PHY version? That is to exclude product_name?

Thanks!

Timo
