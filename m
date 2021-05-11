Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0837437A839
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 May 2021 15:54:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2C474032A;
	Tue, 11 May 2021 13:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h0ihTP_u74D7; Tue, 11 May 2021 13:54:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31A1E405A2;
	Tue, 11 May 2021 13:54:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 828C11BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 09:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7BECB402F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 09:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xk3dmiNiFW2M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 May 2021 09:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1ED6402A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 09:25:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BAA5561469;
 Tue, 11 May 2021 09:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620725119;
 bh=SxEDkhQ4NDmmQJU/qD2f8WKt2ZN30zjdTiLd/JmT63A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qYIzsO6/tiOl8TGJ6a2eiShRAv5ZaMzH0UMz1Okj8KRt9xtY+LR/anIcVUrTbZiX4
 89BZ53+EXyXMYuHsL+U06kiuxNXt/5HwXMQCdDP/VjD4quHGFE+7gbD3gJVXax5DaY
 uPQ39ZXYcixN6FyJ12+nOvdmqwpol10wPiVFzbtkGhu9sXEQXyPXQcHwYGaPn1WAFe
 4EHVQRoUTs78Ah0GJIhGex565u4aOD5+o97KCk6BlvJCrZe2QVlJEyby3BUR9BJh2D
 ihJkCCdqkHc4Kaa3576AZpMqo1MX3GKHjJMVLdhoGH+hccpOnzojw8qINBpykxkRxP
 IMzqRB+GVylEA==
Date: Tue, 11 May 2021 11:25:08 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20210511112508.4547bca8@coco.lan>
In-Reply-To: <de6d1fa5b7934f4afd61370d9c58502bef588466.camel@infradead.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
 <20210510135518.305cc03d@coco.lan>
 <de6d1fa5b7934f4afd61370d9c58502bef588466.camel@infradead.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 11 May 2021 13:54:42 +0000
Subject: Re: [Intel-wired-lan] [PATCH 00/53] Get rid of UTF-8 chars that can
 be mapped as ASCII
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, keyrings@vger.kernel.org,
 linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
 linux-rdma@vger.kernel.org, x86@kernel.org, linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-sgx@vger.kernel.org, coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RW0gTW9uLCAxMCBNYXkgMjAyMSAxNDo0OTo0NCArMDEwMApEYXZpZCBXb29kaG91c2UgPGR3bXcy
QGluZnJhZGVhZC5vcmc+IGVzY3JldmV1OgoKPiBPbiBNb24sIDIwMjEtMDUtMTAgYXQgMTM6NTUg
KzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZToKPiA+IFRoaXMgcGF0Y2ggc2VyaWVz
IGlzIGRvaW5nIGNvbnZlcnNpb24gb25seSB3aGVuIHVzaW5nIEFTQ0lJIG1ha2VzCj4gPiBtb3Jl
IHNlbnNlIHRoYW4gdXNpbmcgVVRGLTguIAo+ID4gCj4gPiBTZWUsIGEgbnVtYmVyIG9mIGNvbnZl
cnRlZCBkb2N1bWVudHMgZW5kZWQgd2l0aCB3ZWlyZCBjaGFyYWN0ZXJzCj4gPiBsaWtlIFpFUk8g
V0lEVEggTk8tQlJFQUsgU1BBQ0UgKFUrRkVGRikgY2hhcmFjdGVyLiBUaGlzIHNwZWNpZmljCj4g
PiBjaGFyYWN0ZXIgZG9lc24ndCBkbyBhbnkgZ29vZC4KPiA+IAo+ID4gT3RoZXJzIHVzZSBOTy1C
UkVBSyBTUEFDRSAoVStBMCkgaW5zdGVhZCBvZiAweDIwLiBIYXJtbGVzcywgdW50aWwKPiA+IHNv
bWVvbmUgdHJpZXMgdG8gdXNlIGdyZXBbMV0uICAKPiAKPiBSZXBsYWNpbmcgdGhvc2UgbWFrZXMg
c2Vuc2UuIEJ1dCByZXBsYWNpbmcgZW1kYXNoZXMg4oCUIHdoaWNoIGFyZSBhCj4gZGlzdGluY3Qg
Y2hhcmFjdGVyIHRoYXQgaGFzIG5vIGRpcmVjdCByZXBsYWNlbWVudCBpbiBBU0NJSSBhbmQgd2hp
Y2gKPiBwZW9wbGUgZG8gKmRlbGliZXJhdGVseSogdXNlIGluc3RlYWQgb2YgaHlwaGVuLW1pbnVz
IOKAlCBkb2VzIG5vdC4KPiAKPiBQZXJoYXBzIHN0aWNrIHRvIHRob3NlIHR3bywgYW5kIGFueSBj
YXNlcyB3aGVyZSBhbiBlbWRhc2ggb3IgZW5kYXNoIGhhcwo+IGJlZW4gdXNlZCB3aGVyZSBVKzAw
MkQgSFlQSEVOLU1JTlVTICpzaG91bGQqIGhhdmUgYmVlbiB1c2VkLgoKT2suIEknbGwgcmV3b3Jr
IHRoZSBzZXJpZXMgZXhjbHVkaW5nIEVNL0VOIERBU0ggY2hhcnMgZnJvbSBpdC4KSSdsbCB0aGVu
IGFwcGx5IG1hbnVhbGx5IHRoZSBjaGFuZ2VzIGZvciBFTS9FTiBEQVNIIGNoYXJzIAoocHJvYmFi
bHkgb24gYSBzZXBhcmF0ZSBzZXJpZXMpIHdoZXJlIGl0IHNlZW1zIHRvIGZpdC4gVGhhdCBzaG91
bGQKbWFrZSBlYXNpZXIgdG8gZGlzY3VzcyBzdWNoIHJlcGxhY2VtZW50cy4KCj4gQW5kIHBsZWFz
ZSBmaXggeW91ciBjb3ZlciBsZXR0ZXIgd2hpY2ggbWFkZSBubyByZWZlcmVuY2UgdG8gJ2dyZXAn
LCBhbmQKPiBvbmx5IHByZXNlbnRlZCBhIGNvbXBsZXRlbHkgYm9ndXMgYXJndW1lbnQgZm9yIHRo
ZSBjaGFuZ2UgaW5zdGVhZC4KCk9LIQoKUmVnYXJkcywKTWF1cm8KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
