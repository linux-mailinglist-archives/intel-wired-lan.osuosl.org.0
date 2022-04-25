Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3D050DF4B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 13:47:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F47360D6C;
	Mon, 25 Apr 2022 11:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NNMmE-n3Ur-B; Mon, 25 Apr 2022 11:47:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DDD060C29;
	Mon, 25 Apr 2022 11:47:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1CFC31BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 11:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17AEE405C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 11:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WBhSRPHzS6rP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Apr 2022 11:47:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 317E8404EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 11:47:29 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id s21so5744221wrb.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 04:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=zL3zAyFVSY3b9tOnPyfU+7HZbn2fwn34DVHclMTOxIM=;
 b=LrsaqLT1q3SQ0uASZlNpLZwn2OT10CWeUnsTzofQWIG4W4bfOEmT13Q91UpjOLMq7s
 lrpBPBf94SI7EbFNxbrX+Z/FunV8lwcQwOa8PswQHuORAvup4TEAo9xf7hVSakwwOPnA
 GuyV9BEc3s+TJiupOCo9LTsOKC9C6/h//ZfyR20aJ+FFVWNNnmWzPtf364WCXaoPaiM5
 lJvrTGrUjdYY83vBcra2zXLR6P5SmQ0YLe3A8WGIcfxftiwix3egfw7A3/HPPdM1/fDx
 ZBTN1+CxT+TbhNO/G/yP80ZMrIydOgwnA8vEQlWD/vnscKXAi3LFneb72yKNQ2XFhKBZ
 2N3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=zL3zAyFVSY3b9tOnPyfU+7HZbn2fwn34DVHclMTOxIM=;
 b=n5S/+EmRfWIUUi/5sj02AAnyelo9XZqISWWhiG4tQLUtBJf6FqHmTvl33y/Ls5N2jG
 Qr0h3zOOArrxI6klift6k5GqXnddvMjI35O6WCtc30DmMcH13YO9x4CvaqjlOq9ldKag
 2HxH9ipljJFFp+TCDMLQ7FsKOLCvyiv/3GjTOyI7FrZPHXK1w3DdjKorUx760lhHC0ot
 KyEHkSptRmVsuFXDm6AyPLY019bOxlM1/CwvRiyh+nQbNRNWwqVL5X/rw7qI4NUSzGFM
 w3m/nodnc3IFwE8Ht5qmThuitKXtkD3bOe2O3xt53NfFOUqG8bIbNpn6MSm3WwKdbaF6
 u1YQ==
X-Gm-Message-State: AOAM532gO7+g6zXQgFjvtF7y0tjYoTVhIuzJkATIss/ykNGTnEjjg1we
 2aaPDq+HagxfrWvsxMPdJTI=
X-Google-Smtp-Source: ABdhPJyszTsPH0cgFDvwgEGg3ulNmRSFpWw0T28e1SHB0fW84CGCOgMtYS/1BwvzpMIoRdQ6c5PcsA==
X-Received: by 2002:a5d:5228:0:b0:20a:d7e9:7ed8 with SMTP id
 i8-20020a5d5228000000b0020ad7e97ed8mr5654205wra.687.1650887247334; 
 Mon, 25 Apr 2022 04:47:27 -0700 (PDT)
Received: from [192.168.1.5] ([41.42.183.233])
 by smtp.gmail.com with ESMTPSA id
 f4-20020a7bc8c4000000b0038ebbe10c5esm11185583wml.25.2022.04.25.04.47.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 04:47:26 -0700 (PDT)
Message-ID: <1efd4c00-4c78-2330-cfb3-fe81493e7e68@gmail.com>
Date: Mon, 25 Apr 2022 13:47:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Nikolay Aleksandrov <razor@blackwall.org>, netdev@vger.kernel.org
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <c3a882e4fb6f9228f704ebe3c1fcace14ee6cdf2.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <7c8367b6-95c7-ea39-fafe-72495f343625@blackwall.org>
 <d89eefc2-664f-8537-d10e-6fdfbb6823ed@gmail.com>
 <4bf69eef-7444-1238-0f4a-fb0fccda080c@blackwall.org>
 <3bcb2d3d-8b8b-8a8f-1285-7277394b4e6b@gmail.com>
 <0f1e1250-920a-c7d1-900c-98ef3e0456d8@blackwall.org>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <0f1e1250-920a-c7d1-900c-98ef3e0456d8@blackwall.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] rtnetlink: add extack
 support in fdb del handlers
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
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, sbrivio@redhat.com, claudiu.manoil@nxp.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 UNGLinuxDriver@microchip.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uINmi2aTigI8v2aTigI8v2aLZoNmi2aIg2aLZozrZpdmiLCBOaWtvbGF5IEFsZWtzYW5kcm92
IHdyb3RlOgo+IE9uIDQvMjUvMjIgMDA6MDksIEFsYWEgTW9oYW1lZCB3cm90ZToKPj4KPj4gT24g
2aLZpOKAjy/ZpOKAjy/Zotmg2aLZoiDZotmhOtml2aUsIE5pa29sYXkgQWxla3NhbmRyb3Ygd3Jv
dGU6Cj4+PiBPbiAyNC8wNC8yMDIyIDIyOjQ5LCBBbGFhIE1vaGFtZWQgd3JvdGU6Cj4+Pj4gT24g
2aLZpOKAjy/ZpOKAjy/Zotmg2aLZoiDZotmhOtmg2aIsIE5pa29sYXkgQWxla3NhbmRyb3Ygd3Jv
dGU6Cj4+Pj4+IE9uIDI0LzA0LzIwMjIgMTU6MDksIEFsYWEgTW9oYW1lZCB3cm90ZToKPj4+Pj4+
IEFkZCBleHRhY2sgc3VwcG9ydCB0byAubmRvX2ZkYl9kZWwgaW4gbmV0ZGV2aWNlLmggYW5kCj4+
Pj4+PiBhbGwgcmVsYXRlZCBtZXRob2RzLgo+Pj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEFs
YWEgTW9oYW1lZCA8ZW5nLmFsYWFtb2hhbWVkc29saW1hbi5hbUBnbWFpbC5jb20+Cj4+Pj4+PiAt
LS0KPj4+Pj4+IGNoYW5nZXMgaW4gVjM6Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZml4IGVy
cm9ycyByZXBvcnRlZCBieSBjaGVja3BhdGNoLnBsCj4+Pj4+PiAtLS0KPj4+Pj4+IMKgwqAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmPCoMKgwqDCoMKgwqDCoCB8IDQg
KystLQo+Pj4+Pj4gwqDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9tc2NjL29jZWxvdF9uZXQuY8Kg
wqDCoMKgwqDCoMKgwqDCoMKgIHwgNCArKy0tCj4+Pj4+PiDCoMKgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L3Fsb2dpYy9xbGNuaWMvcWxjbmljX21haW4uYyB8IDIgKy0KPj4+Pj4+IMKgwqAgZHJpdmVy
cy9uZXQvbWFjdmxhbi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHwgMiArLQo+Pj4+Pj4gwqDCoCBkcml2ZXJzL25ldC92eGxhbi92eGxhbl9j
b3JlLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyICstCj4+Pj4+PiDC
oMKgIGluY2x1ZGUvbGludXgvbmV0ZGV2aWNlLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHwgMiArLQo+Pj4+Pj4gwqDCoCBuZXQvYnJpZGdlL2JyX2ZkYi5j
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8IDIgKy0KPj4+Pj4+IMKgwqAgbmV0L2JyaWRnZS9icl9wcml2YXRlLmjCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDIgKy0KPj4+Pj4+IMKgwqAg
bmV0L2NvcmUvcnRuZXRsaW5rLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8IDQgKystLQo+Pj4+Pj4gwqDCoCA5IGZpbGVzIGNoYW5nZWQs
IDEyIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyAKPj4+Pj4+IGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPj4+Pj4+IGluZGV4IGQ3
Njg5MjU3ODVjYS4uN2I1NWQ4ZDk0ODAzIDEwMDY0NAo+Pj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPj4+Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4+Pj4+PiBAQCAtNTY3OCwxMCArNTY3OCwxMCBA
QCBpY2VfZmRiX2FkZChzdHJ1Y3QgbmRtc2cgKm5kbSwgc3RydWN0IAo+Pj4+Pj4gbmxhdHRyIF9f
YWx3YXlzX3VudXNlZCAqdGJbXSwKPj4+Pj4+IMKgwqAgc3RhdGljIGludAo+Pj4+Pj4gwqDCoCBp
Y2VfZmRiX2RlbChzdHJ1Y3QgbmRtc2cgKm5kbSwgX19hbHdheXNfdW51c2VkIHN0cnVjdCBubGF0
dHIgCj4+Pj4+PiAqdGJbXSwKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBuZXRf
ZGV2aWNlICpkZXYsIGNvbnN0IHVuc2lnbmVkIGNoYXIgKmFkZHIsCj4+Pj4+PiAtwqDCoMKgwqDC
oMKgwqAgX19hbHdheXNfdW51c2VkIHUxNiB2aWQpCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgX19h
bHdheXNfdW51c2VkIHUxNiB2aWQsIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykKPj4+
Pj4+IMKgwqAgewo+Pj4+Pj4gwqDCoMKgwqDCoMKgIGludCBlcnI7Cj4+Pj4+PiAtCj4+Pj4+PiAr
Cj4+Pj4+IFdoYXQncyBjaGFuZ2VkIGhlcmU/Cj4+Pj4gSW4gdGhlIHByZXZpb3VzIHZlcnNpb24s
IEkgcmVtb3ZlZCB0aGUgYmxhbmsgbGluZSBhZnRlciAiaW50IGVycjsiIAo+Pj4+IGFuZCB5b3Ug
c2FpZCBJIHNob3VsZG4ndCBzbyBJIGFkZGVkIGJsYW5rIGxpbmUuCj4+Pj4KPj4+IFllYWgsIG15
IHF1ZXN0aW9uIGlzIGFyZSB5b3UgZml4aW5nIGEgZG9zIGVuZGluZyBvciBzb21ldGhpbmcgZWxz
ZT8KPj4+IFRoZSBibGFuayBsaW5lIGlzIGFscmVhZHkgdGhlcmUsIHdoYXQncyB3cm9uZyB3aXRo
IGl0Pwo+PiBObywgSSBkaWRuJ3QuCj4+Pgo+Pj4gVGhlIHBvaW50IGlzIGl0J3Mgbm90IG5pY2Ug
dG8gbWl4IHN0eWxlIGZpeGVzIGFuZCBvdGhlciBjaGFuZ2VzLCAKPj4+IG1vcmUgc28KPj4+IGlm
IG5vdGhpbmcgaXMgbWVudGlvbmVkIGluIHRoZSBjb21taXQgbWVzc2FnZS4KPj4gR290IGl0LCBT
bywgd2hhdCBzaG91bGQgSSBkbyB0byBmaXggaXQ/Cj4KPiBEb24ndCBjaGFuZ2UgdGhhdCBsaW5l
PyBJIG1lYW4gSSdtIGV2ZW4gc3VycHJpc2VkIHRoaXMgbWFkZSBpdCBpbiB0aGUgCj4gcGF0Y2gu
IEFzIEkgbWVudGlvbmVkIGFib3ZlLCB0aGVyZSBpcyBhbHJlYWR5IGEgbmV3IGxpbmUgdGhlcmUg
c28gSSdtIAo+IG5vdCBzdXJlIGhvdyB5b3UncmUgcmVtb3ZpbmcgaXQgYW5kIGFkZGluZyBpdCBh
Z2Fpbi4gOikKPgo+IENoZWVycywKPiDCoE5pawoKClRoYW5rcyBOaWssIEkgd2lsbCBmaXggdGhp
cy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
