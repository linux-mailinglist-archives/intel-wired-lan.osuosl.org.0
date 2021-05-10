Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CDF378F57
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 15:53:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10D3B83E12;
	Mon, 10 May 2021 13:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Z5Cw2byL1dZ; Mon, 10 May 2021 13:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D1AC83434;
	Mon, 10 May 2021 13:53:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3D7C1BF41A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 10:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EED0A83976
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 10:52:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u6w4UU4RKH-0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 10:52:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65094835A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 10:52:54 +0000 (UTC)
Received: from ip4d14bd53.dynamic.kabel-deutschland.de ([77.20.189.83]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lg3Wn-0008EG-Lc; Mon, 10 May 2021 12:52:45 +0200
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
From: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <c4479ced-f4d8-1a1e-ee54-9abc55344187@leemhuis.info>
Date: Mon, 10 May 2021 12:52:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <cover.1620641727.git.mchehab+huawei@kernel.org>
Content-Language: en-BS
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1620643974;6b37550e;
X-HE-SMSGID: 1lg3Wn-0008EG-Lc
X-Mailman-Approved-At: Mon, 10 May 2021 13:53:01 +0000
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org, linux-iio@vger.kernel.org,
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

Ck9uIDEwLjA1LjIxIDEyOjI2LCBNYXVybyBDYXJ2YWxobyBDaGVoYWIgd3JvdGU6Cj4KPiBBcyBM
aW51eCBkZXZlbG9wZXJzIGFyZSBhbGwgYXJvdW5kIHRoZSBnbG9iZSwgYW5kIG5vdCBldmVyeWJv
ZHkgaGFzIFVURi04Cj4gYXMgdGhlaXIgZGVmYXVsdCBjaGFyc2V0LCBiZXR0ZXIgdG8gdXNlIFVU
Ri04IG9ubHkgb24gY2FzZXMgd2hlcmUgaXQgaXMgcmVhbGx5Cj4gbmVlZGVkLgo+IFvigKZdCj4g
VGhlIHJlbWFpbmluZyBwYXRjaGVzIG9uIHNlcmllcyBhZGRyZXNzIHN1Y2ggY2FzZXMgb24gKi5y
c3QgZmlsZXMgYW5kIAo+IGluc2lkZSB0aGUgRG9jdW1lbnRhdGlvbi9BQkksIHVzaW5nIHRoaXMg
cGVybCBtYXAgdGFibGUgaW4gb3JkZXIgdG8gZG8gdGhlCj4gY2hhcnNldCBjb252ZXJzaW9uOgo+
IAo+IG15ICVjaGFyX21hcCA9ICgKPiBb4oCmXQo+IAkweDIwMTMgPT4gJy0nLAkJIyBFTiBEQVNI
Cj4gCTB4MjAxNCA9PiAnLScsCQkjIEVNIERBU0gKCkkgbWlnaHQgYmUgcGVyZm9ybWluZyBiaWtl
IHNoZWRkaW5nIGhlcmUsIGJ1dCB3b3VsZG4ndCBpdCBiZSBiZXR0ZXIgdG8KcmVwbGFjZSB0aG9z
ZSB0d28gd2l0aCAiLS0iLCBhcyBleHBsYWluZWQgaW4KaHR0cHM6Ly9lbi53aWtpcGVkaWEub3Jn
L3dpa2kvRGFzaCNBcHByb3hpbWF0aW5nX3RoZV9lbV9kYXNoX3dpdGhfdHdvX29yX3RocmVlX2h5
cGhlbnMKCkZvciBFTSBEQVNIIHRoZXJlIHNlZW1zIHRvIGJlIGV2ZW4gIi0tLSIsIGJ1dCBJJ2Qg
c2F5IHRoYXQgaXMgYSBiaXQgdG9vCm11Y2guCgpPciBkbyB5b3UgZmVhciB0aGUgZXh0cmEgd29y
ayBhcyBzb21lIGxpbmVzIHRoZW4gbWlnaHQgYnJlYWsgdGhlCjgwLWNoYXJhY3RlciBsaW1pdCB0
aGVuPwoKQ2lhbywgVGhvcnN0ZW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
