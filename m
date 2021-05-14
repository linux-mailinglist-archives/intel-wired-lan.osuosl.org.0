Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09A0380BC9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 May 2021 16:29:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39EEC40497;
	Fri, 14 May 2021 14:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WqCDyDgYvmZM; Fri, 14 May 2021 14:29:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7D9040490;
	Fri, 14 May 2021 14:29:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 175B41BF275
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 14:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04A8260628
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 14:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DqDMQpR0i_dI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 May 2021 14:18:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7F3E60613
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 14:18:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9C73C61408;
 Fri, 14 May 2021 14:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621001918;
 bh=c7dfcDSUedN/VQoQv/XM8fRZG2HhOOW57vq4i3XI37w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OQ+w8jq41p/pK8QPzt383K43rnWDvG9IebEZzoZj7WKu0EgpEM3a4OB9pZnDV5/lC
 MxVWpkmQpp2inFtKTGn6bM1fAR+gA+04aBXFsHrR34k+VM9wQUFTEenWCHNxw8mV5S
 Rr3kzMIGVT+KJ8CgQJfj5jt0KJvZQg0gfBfD7ImGjDrz6TXEWqjpD0nn1NC8t6bBSV
 Y2m7PBzQCXheFvsYF9jZqx3chr66nJXcElBiHfvACPcxjY0VNJoiSeft4M6sPjRp9i
 /15Ta8qfh6z3LjSIBpnNeZl0hFKEsFjvWWGKfF/qxDT0jcgdTLCyifuXI2D1S1QhIL
 whK9i7cORQs2g==
Date: Fri, 14 May 2021 16:18:25 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <20210514161825.4e4c0d3e@coco.lan>
In-Reply-To: <8b8bc929-2f07-049d-f24c-cb1f1d85bbaa@gmail.com>
References: <cover.1620823573.git.mchehab+huawei@kernel.org>
 <d2fed242fbe200706b8d23a53512f0311d900297.camel@infradead.org>
 <20210514102118.1b71bec3@coco.lan>
 <61c286b7afd6c4acf71418feee4eecca2e6c80c8.camel@infradead.org>
 <8b8bc929-2f07-049d-f24c-cb1f1d85bbaa@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 May 2021 14:29:00 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 00/40] Use ASCII subset instead of
 UTF-8 alternate symbols
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
 linux-pci@vger.kernel.org, dri-devel@lists.freedesktop.org,
 keyrings@vger.kernel.org, linux-sgx@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-rdma@vger.kernel.org,
 linux-acpi@vger.kernel.org, Mali DP Maintainers <malidp@foss.arm.com>,
 linux-input@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RW0gRnJpLCAxNCBNYXkgMjAyMSAxMjowODozNiArMDEwMApFZHdhcmQgQ3JlZSA8ZWNyZWUueGls
aW54QGdtYWlsLmNvbT4gZXNjcmV2ZXU6Cgo+IEZvciBhbnlvbmUgd2hvIGRvZXNuJ3Qga25vdyBh
Ym91dCBpdDogWCBoYXMgdGhpcyB3b25kZXJmdWwgdGhpbmcgY2FsbGVkCj4gIHRoZSBDb21wb3Nl
IGtleVsxXS4gIEZvciBpbnN0YW5jZSwgdHlwZSDijoQtLS0gdG8gZ2V0IOKAlCwgb3Ig4o6EPCIg
Zm9yIOKAnC4KPiBNdWNoIG1vcmUgbW5lbW9uaWMgdGhhbiBVbmljb2RlIGNvZGVwb2ludHM7IGFu
ZCB5b3UgY2FuIGV4dGVuZCBpdCB3aXRoCj4gIHVzZXItZGVmaW5lZCBzZXF1ZW5jZXMgaW4geW91
ciB+Ly5YQ29tcG9zZSBmaWxlLgoKR29vZCB0aXAuIEkgaGF2ZW4ndCB1c2UgY29tcG9zaXRlIGZv
ciB5ZWFycywgYXMgVVMtaW50bCB3aXRoIGRlYWQga2V5cyBpcwplbm91Z2ggZm9yIDk5Ljk5OSUg
b2YgbXkgbmVlZHMuIAoKQnR3LCBhdCBsZWFzdCBvbiBGZWRvcmEgd2l0aCBNYXRlLCBDb21wb3Np
dGUgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdC4gSXQgaGFzCnRvIGJlIGVuYWJsZWQgZmlyc3QgdXNp
bmcgdGhlIHNhbWUgdG9vbCB0aGF0IGFsbG93cyBjaGFuZ2luZyB0aGUgS2V5Ym9hcmQKbGF5b3V0
WzFdLgoKWWV0LCB0eXBpbmcgYW4gRU4gREFTSCBmb3IgZXhhbXBsZSwgd291bGQgYmUgIjxjb21w
b3NpdGU+LS0uIiwgd2l0aCBpcyA0CmtleXN0cm9rZXMgaW5zdGVhZCBvZiBqdXN0IHR3byAoJy0t
JykuIEl0IG1lYW5zIHR3aWNlIHRoZSBlZmZvcnQgOy0pCgpbMV0gS0RFLCBHTm9tZSwgTWF0ZSwg
Li4uIGhhdmUgZGlmZmVyZW50IHdheXMgdG8gZW5hYmxlIGl0IGFuZCB0byAKICAgIHNlbGVjdCB3
aGF0IGtleSB3b3VsZCBiZSBjb25zaWRlcmVkIDxjb21wb3NpdGU+OgoKCWh0dHBzOi8vZHJ5LnNh
aWxpbmdpc3N1ZXMuY29tL3VzLWludGVybmF0aW9uYWwta2V5Ym9hcmQtbGF5b3V0Lmh0bWwKCWh0
dHBzOi8vaGVscC51YnVudHUuY29tL2NvbW11bml0eS9Db21wb3NlS2V5CgpUaGFua3MsCk1hdXJv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
