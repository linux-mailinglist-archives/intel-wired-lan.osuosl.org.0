Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A04B0378F66
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 15:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B7B560BB6;
	Mon, 10 May 2021 13:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pItfdNVLEQge; Mon, 10 May 2021 13:53:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1985360A62;
	Mon, 10 May 2021 13:53:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D9C0A1BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 11:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0B6140483
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 11:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q-Rsc_PRzwp7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 11:55:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBCDD402EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 11:55:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 383C061260;
 Mon, 10 May 2021 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620647729;
 bh=dyIPtb49LgFnCoKazyq+bQhPSj3PCobNssG21KHdoK4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=S4cpkndG9UuTYGkhKfO3hJLbYIHDWve5Su3QQFRXInDkMRoAu9bVjsNPKBQQExFiA
 MH/LvEqboPFe5Mg323DsrqgW7WJPZfjJ5OWh3KcGd7Kzb/Ed/OuhsjfzebDsCLf+jo
 Z2y3h21hX1f0r0znndE/gsvI3+7MfvcFNE3R9vJ3F6eSaoK3rYc9HAxpysQKCzq2nw
 XliTZNXkMCNQpYy6ormSrp00pDOW21OImF+xXBpjWC/JIXAZfq/wrXo3rh38peS5/g
 BQeri8Wl+fs0ihvm/Fcaw0vxpMvqk7Fkm7kctYIMuGKithMKv3Kd8J2NMAGsk2M1IJ
 Z8/9XzwZufeKA==
Date: Mon, 10 May 2021 13:55:18 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20210510135518.305cc03d@coco.lan>
In-Reply-To: <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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

SGkgRGF2aWQsCgpFbSBNb24sIDEwIE1heSAyMDIxIDExOjU0OjAyICswMTAwCkRhdmlkIFdvb2Ro
b3VzZSA8ZHdtdzJAaW5mcmFkZWFkLm9yZz4gZXNjcmV2ZXU6Cgo+IE9uIE1vbiwgMjAyMS0wNS0x
MCBhdCAxMjoyNiArMDIwMCwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+ID4gVGhlcmUg
YXJlIHNldmVyYWwgVVRGLTggY2hhcmFjdGVycyBhdCB0aGUgS2VybmVsJ3MgZG9jdW1lbnRhdGlv
bi4KPiA+IAo+ID4gU2V2ZXJhbCBvZiB0aGVtIHdlcmUgZHVlIHRvIHRoZSBwcm9jZXNzIG9mIGNv
bnZlcnRpbmcgZmlsZXMgZnJvbQo+ID4gRG9jQm9vaywgTGFUZVgsIEhUTUwgYW5kIE1hcmtkb3du
LiBUaGV5IHdlcmUgcHJvYmFibHkgaW50cm9kdWNlZAo+ID4gYnkgdGhlIGNvbnZlcnNpb24gdG9v
bHMgdXNlZCBvbiB0aGF0IHRpbWUuCj4gPiAKPiA+IE90aGVyIFVURi04IGNoYXJhY3RlcnMgd2Vy
ZSBhZGRlZCBhbG9uZyB0aGUgdGltZSwgYnV0IHRoZXkncmUgZWFzaWx5Cj4gPiByZXBsYWNlYWJs
ZSBieSBBU0NJSSBjaGFycy4KPiA+IAo+ID4gQXMgTGludXggZGV2ZWxvcGVycyBhcmUgYWxsIGFy
b3VuZCB0aGUgZ2xvYmUsIGFuZCBub3QgZXZlcnlib2R5IGhhcyBVVEYtOAo+ID4gYXMgdGhlaXIg
ZGVmYXVsdCBjaGFyc2V0LCBiZXR0ZXIgdG8gdXNlIFVURi04IG9ubHkgb24gY2FzZXMgd2hlcmUg
aXQgaXMgcmVhbGx5Cj4gPiBuZWVkZWQuICAKPiAKPiBObywgdGhhdCBpcyBhYnNvbHV0ZWx5IHRo
ZSB3cm9uZyBhcHByb2FjaC4KPiAKPiBJZiBzb21lb25lIGhhcyBhIGxvY2FsIHNldHVwIHdoaWNo
IG1ha2VzIGJvZ3VzIGFzc3VtcHRpb25zIGFib3V0IHRleHQKPiBlbmNvZGluZ3MsIHRoYXQgaXMg
dGhlaXIgb3duIG1pc3Rha2UuCj4gCj4gV2UgZG9uJ3QgZG8gdGhlbSBhbnkgZmF2b3VycyBieSB0
cnlpbmcgdG8gKmhpZGUqIGl0IGluIHRoZSBjb21tb24gY2FzZQo+IHNvIHRoYXQgdGhleSBkb24n
dCBub3RpY2UgaXQgZm9yIGxvbmdlci4KPiAKPiBUaGVyZSByZWFsbHkgaXNuJ3QgbXVjaCBleGN1
c2UgZm9yIHN1Y2ggYnJva2VubmVzcywgdGhpcyBmYXIgaW50byB0aGUKPiAyMXN0IGNlbnR1cnku
Cj4gCj4gRXZlbiAqYmVmb3JlKiBVVEYtOCBjYW1lIGFsb25nIGluIHRoZSBmaW5hbCBkZWNhZGUg
b2YgdGhlIGxhc3QKPiBtaWxsZW5uaXVtLCBpdCB3YXMgaW1wb3J0YW50IHRvIGtub3cgd2hpY2gg
Y2hhcmFjdGVyIHNldCBhIGdpdmVuIHBpZWNlCj4gb2YgdGV4dCB3YXMgZW5jb2RlZCBpbi4KPiAK
PiBJbiBmYWN0IGl0IHdhcyBldmVuICptb3JlKiBpbXBvcnRhbnQgYmFjayB0aGVuLCB3ZSBjb3Vs
ZG4ndCBqdXN0IGFzc3VtZQo+IFVURi04IGV2ZXJ5d2hlcmUgbGlrZSB3ZSBjYW4gaW4gbW9kZXJu
IHRpbWVzLgo+IAo+IEdpdCBjYW4gYWxyZWFkeSBkbyB0aGluZ3MgbGlrZSBDUkxGIGNvbnZlcnNp
b24gb24gY2hlY2tpbmcgZmlsZXMgb3V0IHRvCj4gbWF0Y2ggbG9jYWwgY29udmVudGlvbnM7IGlm
IHlvdSB3YW50IHRvIHRlYWNoIGl0IHRvIGRvIGNoYXJhY3RlciBzZXQKPiBjb252ZXJzaW9ucyB0
b28gdGhlbiBJIHN1cHBvc2UgdGhhdCBtaWdodCBiZSB1c2VmdWwgdG8gYSBmZXcgZGV2ZWxvcGVy
cwo+IHdobyd2ZSBmYWxsZW4gdGhyb3VnaCBhIHRpbWUgd2FycCBhbmQgc3RpbGwgbmVlZCBpdC4g
QnV0IG5vYm9keSdzIGV2ZXIKPiBib3RoZXJlZCBiZWZvcmUgYmVjYXVzZSBpdCBqdXN0IGlzbid0
IG5lY2Vzc2FyeSB0aGVzZSBkYXlzLgo+IAo+IFBsZWFzZSAqZG9uJ3QqIGF0dGVtcHQgdG8gYWRk
cmVzcyB0aGlzIGFuYWNocm9uaXN0aWMgYW5kIGVzb3RlcmljCj4gInJlcXVpcmVtZW50IiBieSBk
cmFnZ2luZyB0aGUga2VybmVsIHNvdXJjZSBiYWNrIGluIHRpbWUgYnkgdGhyZWUKPiBkZWNhZGVz
LgoKTm8uIFRoZSBpZGVhIGlzIG5vdCB0byBnbyBiYWNrIHRocmVlIGRlY2FkZXMgYWdvLiAKClRo
ZSBnb2FsIGlzIGp1c3QgdG8gYXZvaWQgdXNlIFVURi04IHdoZXJlIGl0IGlzIG5vdCBuZWVkZWQu
IFNlZSwgdGhlIHZhc3QKbWFqb3JpdHkgb2YgVVRGLTggY2hhcnMgYXJlIGtlcHQ6CgoJLSBOb24t
QVNDSUkgTGF0aW4gYW5kIEdyZWVrIGNoYXJzOwoJLSBCb3ggZHJhd2luZ3M7CgktIGFycm93czsK
CS0gbW9zdCBzeW1ib2xzLgoKVGhlcmUsIGl0IG1ha2VzIHBlcmZlY3Qgc2Vuc2UgdG8ga2VlcCB1
c2luZyBVVEYtOC4KCldlIHNob3VsZCBrZWVwIHVzaW5nIFVURi04IG9uIEtlcm5lbC4gVGhpcyBp
cyBzb21ldGhpbmcgdGhhdCBpdCBzaG91bGRuJ3QKYmUgY2hhbmdlZC4KCi0tLQoKVGhpcyBwYXRj
aCBzZXJpZXMgaXMgZG9pbmcgY29udmVyc2lvbiBvbmx5IHdoZW4gdXNpbmcgQVNDSUkgbWFrZXMK
bW9yZSBzZW5zZSB0aGFuIHVzaW5nIFVURi04LiAKClNlZSwgYSBudW1iZXIgb2YgY29udmVydGVk
IGRvY3VtZW50cyBlbmRlZCB3aXRoIHdlaXJkIGNoYXJhY3RlcnMKbGlrZSBaRVJPIFdJRFRIIE5P
LUJSRUFLIFNQQUNFIChVK0ZFRkYpIGNoYXJhY3Rlci4gVGhpcyBzcGVjaWZpYwpjaGFyYWN0ZXIg
ZG9lc24ndCBkbyBhbnkgZ29vZC4KCk90aGVycyB1c2UgTk8tQlJFQUsgU1BBQ0UgKFUrQTApIGlu
c3RlYWQgb2YgMHgyMC4gSGFybWxlc3MsIHVudGlsCnNvbWVvbmUgdHJpZXMgdG8gdXNlIGdyZXBb
MV0uCgpbMV0gdHJ5IHRvIHJ1bjoKCiAgICAkIGdpdCBncmVwICJDUFUgMCBoYXMgYmVlbiIgRG9j
dW1lbnRhdGlvbi9SQ1UvCgogICAgaXQgd2lsbCByZXR1cm4gbm90aGluZyB3aXRoIGN1cnJlbnQg
dXBzdHJlYW0uCgogICAgQnV0IGl0IHdpbGwgd29yayBmaW5lIGFmdGVyIHRoZSBzZXJpZXMgaXMg
YXBwbGllZDoKCiAgICAkIGdpdCBncmVwICJDUFUgMCBoYXMgYmVlbiIgRG9jdW1lbnRhdGlvbi9S
Q1UvCiAgICAgIERvY3VtZW50YXRpb24vUkNVL0Rlc2lnbi9EYXRhLVN0cnVjdHVyZXMvRGF0YS1T
dHJ1Y3R1cmVzLnJzdDp8ICMuIENQVSAwIGhhcyBiZWVuIGluIGR5bnRpY2staWRsZSBtb2RlIGZv
ciBxdWl0ZSBzb21lIHRpbWUuIFdoZW4gaXQgICB8CiAgICAgIERvY3VtZW50YXRpb24vUkNVL0Rl
c2lnbi9EYXRhLVN0cnVjdHVyZXMvRGF0YS1TdHJ1Y3R1cmVzLnJzdDp8ICAgIG5vdGljZXMgdGhh
dCBDUFUgMCBoYXMgYmVlbiBpbiBkeW50aWNrIGlkbGUgbW9kZSwgd2hpY2ggcXVhbGlmaWVzICB8
CgpUaGUgbWFpbiBwb2ludCBvbiB0aGlzIHNlcmllcyBpcyB0byByZXBsYWNlIGp1c3QgdGhlIG9j
Y3VycmVuY2VzCndoZXJlIEFTQ0lJIHJlcHJlc2VudHMgdGhlIHN5bWJvbCBlcXVhbGx5IHdlbGws
IGUuIGcuIGl0IGlzIGxpbWl0ZWQKZm9yIHRob3NlIGNoYXJzOgoKCS0gVSsyMDEwICgn4oCQJyk6
IEhZUEhFTgoJLSBVKzAwYWQgKCfCrScpOiBTT0ZUIEhZUEhFTgoJLSBVKzIwMTMgKCfigJMnKTog
RU4gREFTSAoJLSBVKzIwMTQgKCfigJQnKTogRU0gREFTSAoKCS0gVSsyMDE4ICgn4oCYJyk6IExF
RlQgU0lOR0xFIFFVT1RBVElPTiBNQVJLCgktIFUrMjAxOSAoJ+KAmScpOiBSSUdIVCBTSU5HTEUg
UVVPVEFUSU9OIE1BUksKCS0gVSswMGI0ICgnwrQnKTogQUNVVEUgQUNDRU5UCgoJLSBVKzIwMWMg
KCfigJwnKTogTEVGVCBET1VCTEUgUVVPVEFUSU9OIE1BUksKCS0gVSsyMDFkICgn4oCdJyk6IFJJ
R0hUIERPVUJMRSBRVU9UQVRJT04gTUFSSwoKCS0gVSswMGQ3ICgnw5cnKTogTVVMVElQTElDQVRJ
T04gU0lHTgoJLSBVKzIyMTIgKCfiiJInKTogTUlOVVMgU0lHTgoKCS0gVSsyMjE3ICgn4oiXJyk6
IEFTVEVSSVNLIE9QRVJBVE9SCgkgICh0aGlzIG9uZSB1c2VkIGFzIGEgcG9pbnRlciByZWZlcmVu
Y2UgbGlrZSAiKmZvbyIgb24gQyBjb2RlCgkgICBleGFtcGxlIGluc2lkZSBhIGRvY3VtZW50IGNv
bnZlcnRlZCBmcm9tIExhVGVYKQoKCS0gVSswMGJiICgnwrsnKTogUklHSFQtUE9JTlRJTkcgRE9V
QkxFIEFOR0xFIFFVT1RBVElPTiBNQVJLCgkgICh0aGlzIG9uZSBhbHNvIHVzZWQgd3JvbmdseSBv
biBhbiBBQkkgZmlsZSwgbWVhbmluZyAnPicpCgoJLSBVKzAwYTAgKCfCoCcpOiBOTy1CUkVBSyBT
UEFDRQoJLSBVK2ZlZmYgKCfvu78nKTogWkVSTyBXSURUSCBOTy1CUkVBSyBTUEFDRQoKVXNpbmcg
dGhlIGFib3ZlIHN5bWJvbHMgd2lsbCBqdXN0IHRyaWNrIHRvb2xzIGxpa2UgZ3JlcCBmb3Igbm8g
Z29vZApyZWFzb24uCgpUaGFua3MsCk1hdXJvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
