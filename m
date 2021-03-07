Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137A3330426
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Mar 2021 20:13:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B04D4309D;
	Sun,  7 Mar 2021 19:13:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NX7PBeN7VyBO; Sun,  7 Mar 2021 19:13:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 779FD43096;
	Sun,  7 Mar 2021 19:13:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E05751BF352
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 19:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDD8B46F3D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 19:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n4_99-hpNPxY for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Mar 2021 19:13:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6437C4336C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 19:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615144395;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=je7sr164Izpo6Fo1oymYQkhom9vxq8Rat0Oti+DbdM8=;
 b=h07PipvDbK0So6SFEDVKAmEY/nMBuvkElIUCBGFp5LX/QGCMLAf0X9kinny31xswFN24eZ
 DSlI/irJYKEo8jcxo2SqNCYt48coHT5UdCAHqa2zBeFyGNmYQKwyd21H33ZkQGbb/nkbBb
 QuHcms096/+V6eDT99hfdw6/BTRKtGw=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-418-_TyJtjAHMKOfcsmyRtCqWw-1; Sun, 07 Mar 2021 14:13:14 -0500
X-MC-Unique: _TyJtjAHMKOfcsmyRtCqWw-1
Received: by mail-ed1-f72.google.com with SMTP id i19so4034291edy.18
 for <intel-wired-lan@lists.osuosl.org>; Sun, 07 Mar 2021 11:13:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=je7sr164Izpo6Fo1oymYQkhom9vxq8Rat0Oti+DbdM8=;
 b=oWJoc+xebMNzoFxffT+F5Iq8GTqIGhacLoca1roaTneMUwcnFPjMLoApLM+TqS10kn
 PVNvd3zMpR1P0AyNtRZocmPMKK7lesMRK/Vn0mry4TgeM3ZxggDF0AvFY0NbANTS3XuI
 UEoCFMImsdUmvkO+hLppBD58v203xvASIZdjmHWhPVkySK7+G6A8PAiOBJblRgIhQk6z
 L9jCa41bAgdeg/KLm7Qyv/6Dw7NhA6Qgoj1Mb0u5j7xbLvO2NhEFzz8u51cMvG3QYMw3
 O3zRRwIEfF96ps7sTFSXpZgtcJu2WNc6VJXhN/ebuNYNBtzUythi0RfVPGGngT7ECSs/
 KLtg==
X-Gm-Message-State: AOAM533mBafCRP5fFPyLZ3ac+ehLEDGOPlHo0syW9ZBJRYLvW7SCRu9H
 jos1Atau8mRlYGidogORlLFdp5RWriK7LrQfeMXUvCBMMZE5p4M8Z5CCHrcFtgCoFbjouDkQzcS
 8DMDNm9toNInZu2fLBiPyO/U7j6gBD0DlIjtKlwr8jarV1XNJqjtakySLuyGpto9LUa6X04URJ6
 ZuzRQX5g==
X-Received: by 2002:aa7:c4c2:: with SMTP id p2mr18908291edr.213.1615144393151; 
 Sun, 07 Mar 2021 11:13:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyUEUSe5HdGCBcDa+3JQ9Y9qVFxJH9C4XlCacigko0z2znz3WTf1JL5ZTd2VkpBhEbl1wnFGA==
X-Received: by 2002:aa7:c4c2:: with SMTP id p2mr18908261edr.213.1615144392817; 
 Sun, 07 Mar 2021 11:13:12 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id w18sm5366857ejn.23.2021.03.07.11.13.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Mar 2021 11:13:12 -0800 (PST)
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "David E. Box" <david.e.box@linux.intel.com>, irenic.rajneesh@gmail.com,
 mgross@linux.intel.com
References: <20210305190608.1834164-1-david.e.box@linux.intel.com>
 <113b08b2-ead1-7f4c-1b09-4f3572d6134f@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <3e339312-f265-ce7e-dc70-253d1c93256d@redhat.com>
Date: Sun, 7 Mar 2021 20:13:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <113b08b2-ead1-7f4c-1b09-4f3572d6134f@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] platform/x86: intel_pmc: Ignore GBE
 LTR on Tiger Lake platforms
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpPbiAzLzcvMjEgOTozOSBBTSwgTmVmdGluLCBTYXNoYSB3cm90ZToKPiBPbiAzLzUvMjAy
MSAyMTowNiwgRGF2aWQgRS4gQm94IHdyb3RlOgo+PiBEdWUgdG8gYSBIVyBsaW1pdGF0aW9uLCB0
aGUgTGF0ZW5jeSBUb2xlcmFuY2UgUmVwb3J0aW5nIChMVFIpIHZhbHVlCj4+IHByb2dyYW1tZWQg
aW4gdGhlIFRpZ2VyIExha2UgR0JFIGNvbnRyb2xsZXIgaXMgbm90IGxhcmdlIGVub3VnaCB0byBh
bGxvdwo+PiB0aGUgcGxhdGZvcm0gdG8gZW50ZXIgUGFja2FnZSBDMTAsIHdoaWNoIGluIHR1cm4g
cHJldmVudHMgdGhlIHBsYXRmb3JtIGZyb20KPj4gYWNoaWV2aW5nIGl0cyBsb3cgcG93ZXIgdGFy
Z2V0IGR1cmluZyBzdXNwZW5kLXRvLWlkbGUuwqAgSWdub3JlIHRoZSBHQkUgTFRSCj4+IHZhbHVl
IG9uIFRpZ2VyIExha2UuIExUUiBpZ25vcmUgZnVuY3Rpb25hbGl0eSBpcyBjdXJyZW50bHkgcGVy
Zm9ybWVkIHNvbGVseQo+PiBieSBhIGRlYnVnZnMgd3JpdGUgY2FsbC4gU3BsaXQgb3V0IHRoZSBM
VFIgY29kZSBpbnRvIGl0cyBvd24gZnVuY3Rpb24gdGhhdAo+PiBjYW4gYmUgY2FsbGVkIGJ5IGJv
dGggdGhlIGRlYnVnZnMgd3JpdGVyIGFuZCBieSB0aGlzIHdvcmsgYXJvdW5kLgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBEYXZpZCBFLiBCb3ggPGRhdmlkLmUuYm94QGxpbnV4LmludGVsLmNvbT4KPj4g
UmV2aWV3ZWQtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGludGVsLmNvbT4KPj4gQ2M6
IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnCj4+IC0tLQo+PiDCoCBkcml2ZXJzL3Bs
YXRmb3JtL3g4Ni9pbnRlbF9wbWNfY29yZS5jIHwgNTUgKysrKysrKysrKysrKysrKysrKystLS0t
LS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L2ludGVsX3BtY19jb3Jl
LmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni9pbnRlbF9wbWNfY29yZS5jCj4+IGluZGV4IGVlMmY3
NTc1MTViMC4uYWIzMWViNjQ2YTFhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4
Ni9pbnRlbF9wbWNfY29yZS5jCj4+ICsrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L2ludGVsX3Bt
Y19jb3JlLmMKPj4gQEAgLTg2MywzNCArODYzLDQ1IEBAIHN0YXRpYyBpbnQgcG1jX2NvcmVfcGxs
X3Nob3coc3RydWN0IHNlcV9maWxlICpzLCB2b2lkICp1bnVzZWQpCj4+IMKgIH0KPj4gwqAgREVG
SU5FX1NIT1dfQVRUUklCVVRFKHBtY19jb3JlX3BsbCk7Cj4+IMKgIC1zdGF0aWMgc3NpemVfdCBw
bWNfY29yZV9sdHJfaWdub3JlX3dyaXRlKHN0cnVjdCBmaWxlICpmaWxlLAo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBjaGFyIF9fdXNlciAqdXNlcmJ1
ZiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90IGNv
dW50LCBsb2ZmX3QgKnBwb3MpCj4+ICtzdGF0aWMgaW50IHBtY19jb3JlX3dyaXRlX2x0cl9pZ25v
cmUodTMyIHZhbHVlKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IHBtY19kZXYgKnBtY2Rl
diA9ICZwbWM7Cj4+IMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IHBtY19yZWdfbWFwICptYXAgPSBw
bWNkZXYtPm1hcDsKPj4gLcKgwqDCoCB1MzIgdmFsLCBidWZfc2l6ZSwgZmQ7Cj4+IC3CoMKgwqAg
aW50IGVycjsKPj4gLQo+PiAtwqDCoMKgIGJ1Zl9zaXplID0gY291bnQgPCA2NCA/IGNvdW50IDog
NjQ7Cj4+IC0KPj4gLcKgwqDCoCBlcnIgPSBrc3RydG91MzJfZnJvbV91c2VyKHVzZXJidWYsIGJ1
Zl9zaXplLCAxMCwgJnZhbCk7Cj4+IC3CoMKgwqAgaWYgKGVycikKPj4gLcKgwqDCoMKgwqDCoMKg
IHJldHVybiBlcnI7Cj4+ICvCoMKgwqAgdTMyIGZkOwo+PiArwqDCoMKgIGludCBlcnIgPSAwOwo+
PiDCoCDCoMKgwqDCoMKgIG11dGV4X2xvY2soJnBtY2Rldi0+bG9jayk7Cj4+IMKgIC3CoMKgwqAg
aWYgKHZhbCA+IG1hcC0+bHRyX2lnbm9yZV9tYXgpIHsKPj4gK8KgwqDCoCBpZiAoZmxzKHZhbHVl
KSA+IG1hcC0+bHRyX2lnbm9yZV9tYXgpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IC1F
SU5WQUw7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dF91bmxvY2s7Cj4+IMKgwqDCoMKg
wqAgfQo+PiDCoCDCoMKgwqDCoMKgIGZkID0gcG1jX2NvcmVfcmVnX3JlYWQocG1jZGV2LCBtYXAt
Pmx0cl9pZ25vcmVfb2Zmc2V0KTsKPj4gLcKgwqDCoCBmZCB8PSAoMVUgPDwgdmFsKTsKPj4gK8Kg
wqDCoCBmZCB8PSB2YWx1ZTsKPj4gwqDCoMKgwqDCoCBwbWNfY29yZV9yZWdfd3JpdGUocG1jZGV2
LCBtYXAtPmx0cl9pZ25vcmVfb2Zmc2V0LCBmZCk7Cj4+IMKgIMKgIG91dF91bmxvY2s6Cj4+IMKg
wqDCoMKgwqAgbXV0ZXhfdW5sb2NrKCZwbWNkZXYtPmxvY2spOwo+PiArCj4+ICvCoMKgwqAgcmV0
dXJuIGVycjsKPj4gK30KPj4gKwo+PiArc3RhdGljIHNzaXplX3QgcG1jX2NvcmVfbHRyX2lnbm9y
ZV93cml0ZShzdHJ1Y3QgZmlsZSAqZmlsZSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY29uc3QgY2hhciBfX3VzZXIgKnVzZXJidWYsCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfdCBjb3VudCwgbG9mZl90ICpwcG9z
KQo+PiArewo+PiArwqDCoMKgIHUzMiBidWZfc2l6ZSwgdmFsOwo+PiArwqDCoMKgIGludCBlcnI7
Cj4+ICsKPj4gK8KgwqDCoCBidWZfc2l6ZSA9IGNvdW50IDwgNjQgPyBjb3VudCA6IDY0Owo+PiAr
Cj4+ICvCoMKgwqAgZXJyID0ga3N0cnRvdTMyX2Zyb21fdXNlcih1c2VyYnVmLCBidWZfc2l6ZSwg
MTAsICZ2YWwpOwo+PiArwqDCoMKgIGlmIChlcnIpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
ZXJyOwo+PiArCj4+ICvCoMKgwqAgZXJyID0gcG1jX2NvcmVfd3JpdGVfbHRyX2lnbm9yZSgxVSA8
PCB2YWwpOwo+PiArCj4+IMKgwqDCoMKgwqAgcmV0dXJuIGVyciA9PSAwID8gY291bnQgOiBlcnI7
Cj4+IMKgIH0KPj4gwqAgQEAgLTExODksNiArMTIwMCwxNSBAQCBzdGF0aWMgaW50IHF1aXJrX3h0
YWxfaWdub3JlKGNvbnN0IHN0cnVjdCBkbWlfc3lzdGVtX2lkICppZCkKPj4gwqDCoMKgwqDCoCBy
ZXR1cm4gMDsKPj4gwqAgfQo+PiDCoCArc3RhdGljIGludCBxdWlya19sdHJfaWdub3JlKHUzMiB2
YWwpCj4+ICt7Cj4+ICvCoMKgwqAgaW50IGVycjsKPj4gKwo+PiArwqDCoMKgIGVyciA9IHBtY19j
b3JlX3dyaXRlX2x0cl9pZ25vcmUodmFsKTsKPj4gKwo+PiArwqDCoMKgIHJldHVybiBlcnI7Cj4+
ICt9Cj4+ICsKPj4gwqAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWlfc3lzdGVtX2lkIHBtY19jb3Jl
X2RtaV90YWJsZVtdwqAgPSB7Cj4+IMKgwqDCoMKgwqAgewo+PiDCoMKgwqDCoMKgIC5jYWxsYmFj
ayA9IHF1aXJrX3h0YWxfaWdub3JlLAo+PiBAQCAtMTI0NCw2ICsxMjY0LDE1IEBAIHN0YXRpYyBp
bnQgcG1jX2NvcmVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gwqDCoMKg
wqDCoCBwbWNkZXYtPnBtY194cmFtX3JlYWRfYml0ID0gcG1jX2NvcmVfY2hlY2tfcmVhZF9sb2Nr
X2JpdCgpOwo+PiDCoMKgwqDCoMKgIGRtaV9jaGVja19zeXN0ZW0ocG1jX2NvcmVfZG1pX3RhYmxl
KTsKPj4gwqAgK8KgwqDCoCAvKgo+PiArwqDCoMKgwqAgKiBPbiBUR0wsIGR1ZSB0byBhIGhhcmR3
YXJlIGxpbWl0YXRpb24sIHRoZSBHQkUgTFRSIGJsb2NrcyBQQzEwIHdoZW4KPj4gK8KgwqDCoMKg
ICogYSBjYWJsZSBpcyBhdHRhY2hlZC4gVGVsbCB0aGUgUE1DIHRvIGlnbm9yZSBpdC4KPj4gK8Kg
wqDCoMKgICovCj4+ICvCoMKgwqAgaWYgKHBtY2Rldi0+bWFwID09ICZ0Z2xfcmVnX21hcCkgewo+
IEkgd291bGQgc3VnZ2VzdDogaWYgKHBtY2Rldi0+bWFwID49ICZ0Z2xfcmVnX21hcCkKCkVybSwg
bm8ganVzdCBuby4gdGdsX3JlZ19tYXAgaXMgYSBnbG9iYWwgdmFyaWFibGUgeW91IGNhbiBhYnNv
bHV0ZWx5IE5PVCByZWx5Cm9uIHRoZSBvcmRlcmluZyBvZiBnbG9iYWwgdmFyaWFibGVzIGluIG1l
bW9yeSBsaWtlIHRoaXMuIE1vcmVvdmVyIHVzaW5nIG9yZGVyZWQKY29tcGFyaXNvbnMgb24gcG9p
bnRlcnMgZ2VuZXJhbGx5IGlzIGEgdmVyeSBiYWQgaWRlYSwgcGxlYXNlIGRvbid0LgoKUmVnYXJk
cywKCkhhbnMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
