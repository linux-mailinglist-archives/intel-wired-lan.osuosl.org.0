Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E211570D78D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 May 2023 10:34:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BEC64191D;
	Tue, 23 May 2023 08:34:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BEC64191D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684830897;
	bh=i7rIZtxt2PxGApdfO7WCWQNkq/QAo+xgBzC/tx/g2HY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NfrfivvhBkJXAya1Fx2i9HHB66opPUKwU82XCJC0WLjZj9dM8Osh9hrJK4Jj+HVaa
	 soaSxElIWqvO15kIacfqtDkXRvjTPuB5AJV8bCT1l/XlXvodzdbw9mFY3Zo2FNXV21
	 +zaU5atNfq0RlhVF/Gy8VwVWspM0vZMc4GHTIxmcfo0ajn/r4LRizsFerZeLzb+8pO
	 wmWzrgZRx7c4gxKN7gSlK4iQV18EQtZtX0p37Yr5JlbZuCx8x/wzCoNNvApjJigIld
	 kFTFRYLpn+KyvlslWBQCSET8HpYv6Hk8y5NuW0TB1nCo+XQY5wHHwk3XX1oGbymz2Y
	 k7dYdCvAPS1Yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G3KhskYQAACB; Tue, 23 May 2023 08:34:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F3E44095A;
	Tue, 23 May 2023 08:34:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F3E44095A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB8851BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 08:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA92260E2D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 08:34:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA92260E2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BcV35AwP8en7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 May 2023 08:34:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D027360F44
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D027360F44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 08:34:47 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0D00A61E4052B;
 Tue, 23 May 2023 10:34:05 +0200 (CEST)
Message-ID: <b64d5d35-e3ba-467d-6826-3b0406fd46e3@molgen.mpg.de>
Date: Tue, 23 May 2023 10:34:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20230511230731.105152-1-vinicius.gomes@intel.com>
 <20230511230731.105152-4-vinicius.gomes@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230511230731.105152-4-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/4] igc: Retrieve TX
 timestamp during interrupt handling
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBWaW5pY2l1cywKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgoKQW0gMTIuMDUuMjMg
dW0gMDE6MDcgc2NocmllYiBWaW5pY2l1cyBDb3N0YSBHb21lczoKPiBXaGVuIHRoZSBpbnRlcnJ1
cHQgaXMgaGFuZGxlZCwgdGhlIFRYVFRfMCBiaXQgaW4gdGhlIFRTWU5DVFhDVEwKPiByZWdpc3Rl
ciBzaG91bGQgYWxyZWFkeSBiZSBzZXQgYW5kIHRoZSB0aW1lc3RhbXAgdmFsdWUgYWxyZWFkeSBs
b2FkZWQKPiBpbiB0aGUgYXBwcm9wcmlhdGUgcmVnaXN0ZXIuCj4gCj4gVGhpcyBzaW1wbGlmaWVz
IHRoZSBoYW5kbGluZywgYW5kIHJlZHVjZXMgdGhlIGxhdGVuY3kgZm9yIHJldHJpZXZpbmcKPiB0
aGUgVFggdGltZXN0YW1wLCB3aGljaCBpbmNyZWFzZSB0aGUgYW1vdW50IG9mIFRYIHRpbWVzdGFt
cHMgdGhhdCBjYW4KPiBiZSBoYW5kbGVkIGluIGEgZ2l2ZW4gdGltZSBwZXJpb2QuCgpIb3cgY2Fu
IHRoaXMgYmUgYmVuY2htYXJrZWQ/IEl04oCZZCBiZSBuaWNlIGlmIHlvdSBzaGFyZWQgeW91ciAK
bWVhc3VyZW1lbnRzLCBhbmQgYWRkZWQgdGhlbSB0byB0aGUgY29tbWl0IG1lc3NhZ2UuCgoKS2lu
ZCByZWdhcmRzLAoKUGF1bAoKCj4gU2lnbmVkLW9mZi1ieTogVmluaWNpdXMgQ29zdGEgR29tZXMg
PHZpbmljaXVzLmdvbWVzQGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogS3VydCBLYW56ZW5iYWNo
IDxrdXJ0QGxpbnV0cm9uaXguZGU+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2MvaWdjLmggICAgICB8IDIgKy0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yy9pZ2NfbWFpbi5jIHwgMiArLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Y19wdHAuYyAgfCA5ICsrLS0tLS0tLQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDkgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2MuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2MuaAo+
IGluZGV4IDdkYTA2NTdlYTQ4Zi4uYmUxYTFlNjdjMzliIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2MuaAo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2MuaAo+IEBAIC0yMjgsNyArMjI4LDYgQEAgc3RydWN0IGlnY19hZGFwdGVy
IHsKPiAgIAo+ICAgCXN0cnVjdCBwdHBfY2xvY2sgKnB0cF9jbG9jazsKPiAgIAlzdHJ1Y3QgcHRw
X2Nsb2NrX2luZm8gcHRwX2NhcHM7Cj4gLQlzdHJ1Y3Qgd29ya19zdHJ1Y3QgcHRwX3R4X3dvcms7
Cj4gICAJLyogQWNjZXNzIHRvIHB0cF90eF9za2IgYW5kIHB0cF90eF9zdGFydCBhcmUgcHJvdGVj
dGVkIGJ5IHRoZQo+ICAgCSAqIHB0cF90eF9sb2NrLgo+ICAgCSAqLwo+IEBAIC02MzcsNiArNjM2
LDcgQEAgaW50IGlnY19wdHBfc2V0X3RzX2NvbmZpZyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2
LCBzdHJ1Y3QgaWZyZXEgKmlmcik7Cj4gICBpbnQgaWdjX3B0cF9nZXRfdHNfY29uZmlnKHN0cnVj
dCBuZXRfZGV2aWNlICpuZXRkZXYsIHN0cnVjdCBpZnJlcSAqaWZyKTsKPiAgIHZvaWQgaWdjX3B0
cF90eF9oYW5nKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcik7Cj4gICB2b2lkIGlnY19wdHBf
cmVhZChzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIsIHN0cnVjdCB0aW1lc3BlYzY0ICp0cyk7
Cj4gK3ZvaWQgaWdjX3B0cF90eF93b3JrKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcik7Cj4g
ICAKPiAgICNkZWZpbmUgaWdjX3J4X3BnX3NpemUoX3JpbmcpIChQQUdFX1NJWkUgPDwgaWdjX3J4
X3BnX29yZGVyKF9yaW5nKSkKPiAgIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9p
Z2NfbWFpbi5jCj4gaW5kZXggYjM4MzM1MjY1MWE1Li5lNjg4MGI2ZWExODcgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+IEBAIC01MjE2LDcgKzUyMTYs
NyBAQCBzdGF0aWMgdm9pZCBpZ2NfdHN5bmNfaW50ZXJydXB0KHN0cnVjdCBpZ2NfYWRhcHRlciAq
YWRhcHRlcikKPiAgIAo+ICAgCWlmICh0c2ljciAmIElHQ19UU0lDUl9UWFRTKSB7Cj4gICAJCS8q
IHJldHJpZXZlIGhhcmR3YXJlIHRpbWVzdGFtcCAqLwo+IC0JCXNjaGVkdWxlX3dvcmsoJmFkYXB0
ZXItPnB0cF90eF93b3JrKTsKPiArCQlpZ2NfcHRwX3R4X3dvcmsoYWRhcHRlcik7Cj4gICAJCWFj
ayB8PSBJR0NfVFNJQ1JfVFhUUzsKPiAgIAl9Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfcHRwLmMKPiBpbmRleCA0ZGQwZWVjNWEyNDYuLjE3ZTg5NzBiZDc2MSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYwo+IEBAIC01NDAsOCAr
NTQwLDYgQEAgc3RhdGljIHZvaWQgaWdjX3B0cF9jbGVhcl90eF90c3RhbXAoc3RydWN0IGlnY19h
ZGFwdGVyICphZGFwdGVyKQo+ICAgewo+ICAgCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gICAKPiAt
CWNhbmNlbF93b3JrX3N5bmMoJmFkYXB0ZXItPnB0cF90eF93b3JrKTsKPiAtCj4gICAJc3Bpbl9s
b2NrX2lycXNhdmUoJmFkYXB0ZXItPnB0cF90eF9sb2NrLCBmbGFncyk7Cj4gICAKPiAgIAlkZXZf
a2ZyZWVfc2tiX2FueShhZGFwdGVyLT5wdHBfdHhfc2tiKTsKPiBAQCAtNzA2LDE1ICs3MDQsMTMg
QEAgc3RhdGljIHZvaWQgaWdjX3B0cF90eF9od3RzdGFtcChzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFk
YXB0ZXIpCj4gICAKPiAgIC8qKgo+ICAgICogaWdjX3B0cF90eF93b3JrCj4gLSAqIEB3b3JrOiBw
b2ludGVyIHRvIHdvcmsgc3RydWN0Cj4gKyAqIEBhZGFwdGVyOiBib2FyZCBwcml2YXRlIHN0cnVj
dHVyZQo+ICAgICoKPiAgICAqIFRoaXMgd29yayBmdW5jdGlvbiBjaGVja3MgdGhlIFRTWU5DVFhD
VEwgdmFsaWQgYml0IHRvIGRldGVybWluZSB3aGVuCj4gICAgKiBhIHRpbWVzdGFtcCBoYXMgYmVl
biB0YWtlbiBmb3IgdGhlIGN1cnJlbnQgc3RvcmVkIHNrYi4KPiAgICAqLwo+IC1zdGF0aWMgdm9p
ZCBpZ2NfcHRwX3R4X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICt2b2lkIGlnY19w
dHBfdHhfd29yayhzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIpCj4gICB7Cj4gLQlzdHJ1Y3Qg
aWdjX2FkYXB0ZXIgKmFkYXB0ZXIgPSBjb250YWluZXJfb2Yod29yaywgc3RydWN0IGlnY19hZGFw
dGVyLAo+IC0JCQkJCQkgICBwdHBfdHhfd29yayk7Cj4gICAJc3RydWN0IGlnY19odyAqaHcgPSAm
YWRhcHRlci0+aHc7Cj4gICAJdW5zaWduZWQgbG9uZyBmbGFnczsKPiAgIAl1MzIgdHN5bmN0eGN0
bDsKPiBAQCAtOTg1LDcgKzk4MSw2IEBAIHZvaWQgaWdjX3B0cF9pbml0KHN0cnVjdCBpZ2NfYWRh
cHRlciAqYWRhcHRlcikKPiAgIAo+ICAgCXNwaW5fbG9ja19pbml0KCZhZGFwdGVyLT5wdHBfdHhf
bG9jayk7Cj4gICAJc3Bpbl9sb2NrX2luaXQoJmFkYXB0ZXItPnRtcmVnX2xvY2spOwo+IC0JSU5J
VF9XT1JLKCZhZGFwdGVyLT5wdHBfdHhfd29yaywgaWdjX3B0cF90eF93b3JrKTsKPiAgIAo+ICAg
CWFkYXB0ZXItPnRzdGFtcF9jb25maWcucnhfZmlsdGVyID0gSFdUU1RBTVBfRklMVEVSX05PTkU7
Cj4gICAJYWRhcHRlci0+dHN0YW1wX2NvbmZpZy50eF90eXBlID0gSFdUU1RBTVBfVFhfT0ZGOwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
