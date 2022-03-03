Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F2B4CB7E2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Mar 2022 08:32:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E8FD40156;
	Thu,  3 Mar 2022 07:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FmDkiBu1dAvz; Thu,  3 Mar 2022 07:32:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CC6A400FE;
	Thu,  3 Mar 2022 07:32:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8C651BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 07:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E4CD415CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 07:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TnoBApnkU2qP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Mar 2022 07:32:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6877F415CA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 07:32:36 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id qt6so8671897ejb.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Mar 2022 23:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Gor8M86/GsIuBlid/S84lkBznvRDaKBCWzgLUKh5JV4=;
 b=k+fk9urovAn8Fq6hF831psJF6X0Hx41hiPVDAocMfW4Gi2tjP5gBRRyYi9UY1gS3y9
 T1f7NxhpZChRCZGs3wiKfQBYFQeu68Ugjwk2rWVNy++UqI5E9Ffm7Qe5sREsy932o9zn
 yoQiy9LiamLlfFC8y8nGBw2mIwTduboT8pHpf33UZ2RGjV2D/meZqmuHsAbl7tfxfJuC
 e8redX9TOEvOJZ9E1AYG0yGidZEg6kfprz6yLCxUQC7gampXaGyLYaXWTA6umkTeR66S
 hL8UX9htvKnv+kjTxwKZtpIsvgv4G4bDiBBsZxSW5S7a6ZZ6AFWNSxZHN5mDaVwEmoV0
 Hg1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Gor8M86/GsIuBlid/S84lkBznvRDaKBCWzgLUKh5JV4=;
 b=3GJkqIR9gE8vNyRKEfH48H905ir886GBQ8AW9LQVBiJwLYj9ipuURzTgcIsmZI963U
 xdUPGRymQljVV9BtZKqRCpsG0nLwf1umqe/UCFh4b2Qa/kV1p6pxIjK8GqhqATYyWtnq
 uvUuAZ/91W+sgHkDDlQvkZ+yhPeI47Yubx63GZFN9JFm9f14cpImyh3wh1TFPqEMo50f
 vpc9T+gSqqgj8Y3D/hLcWVZuxkPWKgUAiVjzvlqa/jYxvFyPivKpm3HiYmquxL8Y9/LL
 CD7OTVw2a5/axwtAA8FCUfLK0dLGI4Cb+EybALcOyzlP992ZmvquyNZH3ZRzfF7M2Sxo
 1/eQ==
X-Gm-Message-State: AOAM5324w1aWXUmU+eWWm0PpYvnHW6KwkarUnYxMLADE7Rq0pyKtd6c3
 qmAdfp6ID/hRf8HUYJz8ZjQ=
X-Google-Smtp-Source: ABdhPJzeteUoFgq8PxHWf79kt1+XNtdp+qSeHQzci99kHRtMUTD40dS4a5KNav7C0/39ueCDeIyc3w==
X-Received: by 2002:a17:906:7c93:b0:6cd:341a:a1d5 with SMTP id
 w19-20020a1709067c9300b006cd341aa1d5mr25639417ejo.698.1646292754302; 
 Wed, 02 Mar 2022 23:32:34 -0800 (PST)
Received: from smtpclient.apple ([2a02:8109:9d80:3f6c:896:faf2:6663:1f74])
 by smtp.gmail.com with ESMTPSA id
 gj18-20020a170907741200b006da82539c83sm410819ejc.73.2022.03.02.23.32.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Mar 2022 23:32:33 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
From: Jakob Koschel <jakobkoschel@gmail.com>
In-Reply-To: <39404befad5b44b385698ff65465abe5@AcuMS.aculab.com>
Date: Thu, 3 Mar 2022 08:32:31 +0100
Message-Id: <A568BD90-FE81-4740-B1D3-C795EB636A5A@gmail.com>
References: <1077f17e50d34dc2bbfdf4e52a1cb2fd@AcuMS.aculab.com>
 <20220303022729.9321-1-xiam0nd.tong@gmail.com>
 <39404befad5b44b385698ff65465abe5@AcuMS.aculab.com>
To: David Laight <David.Laight@ACULAB.COM>
X-Mailer: Apple Mail (2.3693.60.0.1.1)
Subject: Re: [Intel-wired-lan] [PATCH 2/6] treewide: remove using list
 iterator after loop body as a ptr
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "kgdb-bugreport@lists.sourceforge.net" <kgdb-bugreport@lists.sourceforge.net>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "c.giuffrida@vu.nl" <c.giuffrida@vu.nl>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "samba-technical@lists.samba.org" <samba-technical@lists.samba.org>,
 "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-cifs@vger.kernel.org" <linux-cifs@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 "h.j.bos@vu.nl" <h.j.bos@vu.nl>, "jgg@ziepe.ca" <jgg@ziepe.ca>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "bjohannesmeyer@gmail.com" <bjohannesmeyer@gmail.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "christophe.jaillet@wanadoo.fr" <christophe.jaillet@wanadoo.fr>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-sgx@vger.kernel.org" <linux-sgx@vger.kernel.org>,
 "nathan@kernel.org" <nathan@kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-f2fs-devel@lists.sourceforge.net"
 <linux-f2fs-devel@lists.sourceforge.net>,
 Xiaomeng Tong <xiam0nd.tong@gmail.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "rppt@kernel.org" <rppt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Cgo+IE9uIDMuIE1hciAyMDIyLCBhdCAwNTo1OCwgRGF2aWQgTGFpZ2h0IDxEYXZpZC5MYWlnaHRA
QUNVTEFCLkNPTT4gd3JvdGU6Cj4gCj4gRnJvbTogWGlhb21lbmcgVG9uZwo+PiBTZW50OiAwMyBN
YXJjaCAyMDIyIDAyOjI3Cj4+IAo+PiBPbiBXZWQsIDIgTWFyIDIwMjIgMTQ6MDQ6MDYgKzAwMDAs
IERhdmlkIExhaWdodAo+PiA8RGF2aWQuTGFpZ2h0QEFDVUxBQi5DT00+IHdyb3RlOgo+Pj4gSSB0
aGluayB0aGF0IGl0IHdvdWxkIGJlIGJldHRlciB0byBtYWtlIGFueSBhbHRlcm5hdGUgbG9vcCBt
YWNybwo+Pj4ganVzdCBzZXQgdGhlIHZhcmlhYmxlIHRvIE5VTEwgb24gdGhlIGxvb3AgZXhpdC4K
Pj4+IFRoYXQgaXMgZWFzaWVyIHRvIGNvZGUgZm9yIGFuZCB0aGUgY29tcGlsZXIgbWlnaHQgYmUg
cGVyc3VhZGVkIHRvCj4+PiBub3QgcmVkbyB0aGUgdGVzdC4KPj4gCj4+IE5vLCB0aGF0IHdvdWxk
IGxlYWQgdG8gYSBOVUxMIGRlcmVmZXJlbmNlLgo+IAo+IFdoeSwgaXQgd291bGQgbWFrZSBpdCBi
IGV0aGUgc2FtZSBhcyB0aGUgJ2Vhc3kgdG8gdXNlJzoKPiAJZm9yIChpdGVtID0gaGVhZDsgaXRl
bTsgaXRlbSA9IGl0ZW0tPm5leHQpIHsKPiAJCS4uLgo+IAkJaWYgKC4uLikKPiAJCQlicmVhazsK
PiAJCS4uLgo+IAl9Cj4gCWlmICghaXRlbSkKPiAJCXJldHVybjsKPiAKPj4gVGhlIHByb2JsZW0g
aXMgdGhlIG1pcy11c2Ugb2YgaXRlcmF0b3Igb3V0c2lkZSB0aGUgbG9vcCBvbiBleGl0LCBhbmQK
Pj4gdGhlIGl0ZXJhdG9yIHdpbGwgYmUgdGhlIEhFQUQncyBjb250YWluZXJfb2YgcG9pbnRlciB3
aGljaCBwb2ludGVycwo+PiB0byBhIHR5cGUtY29uZnVzZWQgc3RydWN0LiBTaWRlbm90ZTogVGhl
ICptaXMtdXNlKiBoZXJlIHJlZmVycyB0bwo+PiBtaXN0YWtlbHkgYWNjZXNzIHRvIG90aGVyIG1l
bWJlcnMgb2YgdGhlIHN0cnVjdCwgaW5zdGVhZCBvZiB0aGUKPj4gbGlzdF9oZWFkIG1lbWJlciB3
aGljaCBhY3V0YWxseSBpcyB0aGUgdmFsaWQgSEVBRC4KPiAKPiBUaGUgcHJvYmxlbSBpcyB0aGF0
IHRoZSBIRUFEJ3MgY29udGFpbmVyX29mIHBvaW50ZXIgc2hvdWxkIG5ldmVyCj4gYmUgY2FsY3Vs
YXRlZCBhdCBhbGwuCj4gVGhpcyBpcyB3aGF0IGlzIGZ1bmRhbWVudGFsbHkgYnJva2VuIGFib3V0
IHRoZSBjdXJyZW50IGRlZmluaXRpb24uCj4gCj4+IElPVywgeW91IHdvdWxkIGRlcmVmZXJlbmNl
IGEgKE5VTEwgKyBvZmZzZXRfb2ZfbWVtYmVyKSBhZGRyZXNzIGhlcmUuCj4gCj4gV2hlcmU/Cj4g
Cj4+IFBsZWFzZSByZW1pbmQgbWUgaWYgaSBtaXNzZWQgc29tZXRoaW5nLCB0aGFua3MuCj4+IAo+
PiBDYW4geW91IHNoYXJlIHlvdXIgImFsdGVybmF0aXZlIGRlZmluaXRpb25zIiBkZXRhaWxzPyB0
aGFua3MhCj4gCj4gVGhlIGxvb3Agc2hvdWxkIHByb2JhYmx5IHVzZSBhcyBleHRyYSB2YXJpYWJs
ZSB0aGF0IHBvaW50cwo+IHRvIHRoZSAnbGlzdCBub2RlJyBpbiB0aGUgbmV4dCBzdHJ1Y3R1cmUu
Cj4gU29tZXRoaW5nIGxpa2U6Cj4gCWZvciAoeHh4ICppdGVyID0gaGVhZC0+bmV4dDsKPiAJCWl0
ZXIgPT0gJmhlYWQgPyAoKGl0ZW0gPSBOVUxMKSwwKSA6ICgoaXRlbSA9IGxpc3RfaXRlbShpdGVy
KSwxKSk7Cj4gCQlpdGVyID0gaXRlbS0+bWVtYmVyLT5uZXh0KSB7Cj4gCSAgIC4uLgo+IFdpdGgg
YSBiaXQgb2YgY2FzdGluZyB5b3UgY2FuIHVzZSAnaXRlbScgdG8gaG9sZCAnaXRlcicuCgpJIHRo
aW5rIHRoaXMgd291bGQgbWFrZSBzZW5zZSwgaXQgd291bGQgbWVhbiB5b3Ugb25seSBhc3NpZ24g
dGhlIGNvbnRhaW5pbmcKZWxlbWVudCBvbiB2YWxpZCBlbGVtZW50cy4KCkkgd2FzIHRoaW5raW5n
IHNvbWV0aGluZyBhbG9uZyB0aGUgbGluZXMgb2Y6CgojZGVmaW5lIGxpc3RfZm9yX2VhY2hfZW50
cnkocG9zLCBoZWFkLCBtZW1iZXIpCQkJCQlcCglmb3IgKHN0cnVjdCBsaXN0X2hlYWQgKmxpc3Qg
PSBoZWFkLT5uZXh0LCB0eXBlb2YocG9zKSBwb3M7CVwKCSAgICAgbGlzdCA9PSBoZWFkID8gMCA6
ICgoIHBvcyA9IGxpc3RfZW50cnkocG9zLCBsaXN0LCBtZW1iZXIpLCAxKSk7CVwKCSAgICAgbGlz
dCA9IGxpc3QtPm5leHQpCgpBbHRob3VnaCB0aGUgaW5pdGlhbGl6YXRpb24gYmxvY2sgb2YgdGhl
IGZvciBsb29wIGlzIG5vdCB2YWxpZCBDLCBJJ20Kbm90IHN1cmUgdGhlcmUgaXMgYW55IHdheSB0
byBkZWNsYXJlIHR3byB2YXJpYWJsZXMgb2YgYSBkaWZmZXJlbnQgdHlwZQppbiB0aGUgaW5pdGlh
bGl6YXRpb24gcGFydCBvZiB0aGUgbG9vcC4KCkkgYmVsaWV2ZSBhbGwgdGhpcyBkb2VzIGlzIGdl
dCByaWQgb2YgdGhlICZwb3MtPm1lbWJlciA9PSAoaGVhZCkgY2hlY2sKdG8gdGVybWluYXRlIHRo
ZSBsaXN0LgpJdCBhbG9uZSB3aWxsIG5vdCBmaXggYW55IG9mIHRoZSBvdGhlciBpc3N1ZXMgdGhh
dCB1c2luZyB0aGUgaXRlcmF0b3IKdmFyaWFibGUgYWZ0ZXIgdGhlIGxvb3AgY3VycmVudGx5IGhh
cy4KCgpBRkFJSyBBZHJpw6FuIE1vcmVubyBpcyB3b3JraW5nIG9uIGRvaW5nIHNvbWV0aGluZyBh
bG9uZyB0aG9zZSBsaW5lcwpmb3IgdGhlIGxpc3QgaXRlcmF0b3IgaW4gb3BlbnZzd2l0Y2ggKHRo
YXQgd2FzIHNpbWlsYXIgdG8gdGhlIGtlcm5lbApvbmUgYmVmb3JlKSBbMV0uCgpJICp0aGluayog
dGhleSBkb24ndCBkZWNsYXJlICdwb3MnIHdpdGhpbiB0aGUgbG9vcCB3aGljaCB3ZSAqZG8gd2Fu
dCoKdG8gYXZvaWQgYW55IHVzZXMgb2YgaXQgYWZ0ZXIgdGhlIGxvb3AuCihJZiBwb3MgaXMgbm90
IGRlY2xhcmVkIGluIHRoZSBpbml0aWFsaXphdGlvbiBibG9jaywgc2hhZG93aW5nIHRoZQoqb3V0
ZXIqIHBvcywgaXQgd291bGQganVzdCBwb2ludCB0byB0aGUgbGFzdCBlbGVtZW50IG9mIHRoZSBs
aXN0IG9yIHN0YXkKdW5pbml0aWFsaXplZCBpZiB0aGUgbGlzdCBpcyBlbXB0eSkuCgoKWzFdIGh0
dHBzOi8vd3d3Lm1haWwtYXJjaGl2ZS5jb20vb3ZzLWRldkBvcGVudnN3aXRjaC5vcmcvbXNnNjM0
OTcuaHRtbAoKCj4gCj4+IAo+Pj4gT1RPSCB0aGVyZSBtYXkgYmUgYWx0ZXJuYXRpdmUgZGVmaW5p
dGlvbnMgdGhhdCBjYW4gYmUgdXNlZCB0byBnZXQKPj4+IHRoZSBjb21waWxlciAob3Igb3RoZXIg
Y29tcGlsZXItbGlrZSB0b29scykgdG8gZGV0ZWN0IGJyb2tlbiBjb2RlLgo+Pj4gRXZlbiBpZiB0
aGUgZGVmaW5pdGlvbiBjYW4ndCBwb3NzaWJseSBnZW5lcmF0ZSBhIHdvcmtpbmcga2Vycm5lbC4K
Pj4gCj4+IFRoZSAibGlzdF9mb3JfZWFjaF9lbnRyeV9pbnNpZGUocG9zLCB0eXBlLCBoZWFkLCBt
ZW1iZXIpIiB3YXkgbWFrZXMKPj4gdGhlIGl0ZXJhdG9yIGludmlzaWFibGUgb3V0c2lkZSB0aGUg
bG9vcCwgYW5kIHdvdWxkIGJlIGNhdGNoZWQgYnkKPj4gY29tcGlsZXIgaWYgdXNlLWFmdGVyLWxv
b3AgdGhpbmdzIGhhcHBlbmVkLgo+IAo+IEl0IGlzIGFsc28gYSBjb21wZXRlIFBJVEEgZm9yIGFu
eXRoaW5nIGRvaW5nIGEgc2VhcmNoLgo+IAo+IAlEYXZpZAo+IAo+IC0KPiBSZWdpc3RlcmVkIEFk
ZHJlc3MgTGFrZXNpZGUsIEJyYW1sZXkgUm9hZCwgTW91bnQgRmFybSwgTWlsdG9uIEtleW5lcywg
TUsxIDFQVCwgVUsKPiBSZWdpc3RyYXRpb24gTm86IDEzOTczODYgKFdhbGVzKQo+IAoKLSBKYWtv
YgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
