Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4039350E23B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 15:46:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9265405B4;
	Mon, 25 Apr 2022 13:46:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UOUKk-M2JSs1; Mon, 25 Apr 2022 13:46:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF1014045C;
	Mon, 25 Apr 2022 13:46:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC4F31BF470
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 21:52:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1DBE401F2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 21:52:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bGT9QEeBcpFM for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 21:52:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E52A54002B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 21:52:43 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id be20so8048080edb.12
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 14:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=HtsX7xXS5KyrSdS4F8RNS0VhDr01GCN2iAGgDFc6qBs=;
 b=Bk78u/NaLlBh/+udP1b42wGjGXL+P807SEn3bt4RGvsZ6lVNKA9vUhLUIDtJu4SHO9
 T9/5Z7yK5+CdL++dKToG8H03+Ijpr644TnAzeuf9hCa+Ky3DfQxmNbQ5argOSQrrIU3U
 GtLq73xG7eQILwhJGkUrnG9H1nHp9VbOLtGWDH+J8duVnfd4noatHsIok+vlhVQxcBwV
 fU1Niw1hMc/3HNwc+i2lL1L6woChrXpSTZvUa1Z58wx1w8zInanQQoj7M88+ZRlDn2Dj
 PAvZYWy4uvkiXgYhKbE7+XzaWRy0A+uRrdNZTwRRDs7joSr1nBCKZ/TZFLMqIaVXcRHo
 le3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=HtsX7xXS5KyrSdS4F8RNS0VhDr01GCN2iAGgDFc6qBs=;
 b=Do+G+WLp2yHTNrX4jP1x+fuUz3aMYmtb45wn9lsProG03Im/Jy1LBLNfpcey5AnW6u
 kJleP3WHS8gkSqpXbOUdQd9XLJNUZhCTMtKXuScubr63getssJdl9H9Amng2iBSYp5wX
 sERZhtNoQs9FJR9R8VLeczIoSxYo44gOhXYP4Kvq1P11gJU1+uOSF/IeLLcGY9ub8e4t
 UW2UFcoD6wcJdgXm4qkUUPpHqW4mCcMYG/DmzU0tbszPV4Y9v45JB6cySooOyds+azC/
 IOYLXZE6edy1it8vqN0TmEgLmKvYouHewUv4xEFDvmvE44K/33AaUhbOTT+2Qaz4fQ1U
 Ydvg==
X-Gm-Message-State: AOAM533//yHwQCh514YShHUUPhzvIBCvP/0MGPzUTo5p4zGlr2Z7dBJU
 O+1xBUIrGDesB+R1Dg/lqLwbOw==
X-Google-Smtp-Source: ABdhPJxA/GkBOyzYFPNHFGGUbgZYaFFMjxcPjHcOGJU9afJPo3NAvQlf/gAy8hcMlADO4H+DYaO7FQ==
X-Received: by 2002:a05:6402:42d4:b0:416:5cac:a9a0 with SMTP id
 i20-20020a05640242d400b004165caca9a0mr15984539edc.86.1650837161997; 
 Sun, 24 Apr 2022 14:52:41 -0700 (PDT)
Received: from [192.168.0.117] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 a94-20020a509ee7000000b00425e7035c4bsm619579edf.61.2022.04.24.14.52.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 14:52:41 -0700 (PDT)
Message-ID: <0f1e1250-920a-c7d1-900c-98ef3e0456d8@blackwall.org>
Date: Mon, 25 Apr 2022 00:52:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>, netdev@vger.kernel.org
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <c3a882e4fb6f9228f704ebe3c1fcace14ee6cdf2.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <7c8367b6-95c7-ea39-fafe-72495f343625@blackwall.org>
 <d89eefc2-664f-8537-d10e-6fdfbb6823ed@gmail.com>
 <4bf69eef-7444-1238-0f4a-fb0fccda080c@blackwall.org>
 <3bcb2d3d-8b8b-8a8f-1285-7277394b4e6b@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <3bcb2d3d-8b8b-8a8f-1285-7277394b4e6b@gmail.com>
X-Mailman-Approved-At: Mon, 25 Apr 2022 13:46:25 +0000
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

T24gNC8yNS8yMiAwMDowOSwgQWxhYSBNb2hhbWVkIHdyb3RlOgo+IAo+IE9uINmi2aTigI8v2aTi
gI8v2aLZoNmi2aIg2aLZoTrZpdmlLCBOaWtvbGF5IEFsZWtzYW5kcm92IHdyb3RlOgo+PiBPbiAy
NC8wNC8yMDIyIDIyOjQ5LCBBbGFhIE1vaGFtZWQgd3JvdGU6Cj4+PiBPbiDZotmk4oCPL9mk4oCP
L9mi2aDZotmiINmi2aE62aDZoiwgTmlrb2xheSBBbGVrc2FuZHJvdiB3cm90ZToKPj4+PiBPbiAy
NC8wNC8yMDIyIDE1OjA5LCBBbGFhIE1vaGFtZWQgd3JvdGU6Cj4+Pj4+IEFkZCBleHRhY2sgc3Vw
cG9ydCB0byAubmRvX2ZkYl9kZWwgaW4gbmV0ZGV2aWNlLmggYW5kCj4+Pj4+IGFsbCByZWxhdGVk
IG1ldGhvZHMuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEFsYWEgTW9oYW1lZCA8ZW5nLmFs
YWFtb2hhbWVkc29saW1hbi5hbUBnbWFpbC5jb20+Cj4+Pj4+IC0tLQo+Pj4+PiBjaGFuZ2VzIGlu
IFYzOgo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZml4IGVycm9ycyByZXBvcnRlZCBieSBjaGVj
a3BhdGNoLnBsCj4+Pj4+IC0tLQo+Pj4+PiDCoMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfbWFpbi5jwqDCoMKgwqDCoMKgwqAgfCA0ICsrLS0KPj4+Pj4gwqDCoCBkcml2ZXJz
L25ldC9ldGhlcm5ldC9tc2NjL29jZWxvdF9uZXQuY8KgwqDCoMKgwqDCoMKgwqDCoMKgIHwgNCAr
Ky0tCj4+Pj4+IMKgwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvcWxvZ2ljL3FsY25pYy9xbGNuaWNf
bWFpbi5jIHwgMiArLQo+Pj4+PiDCoMKgIGRyaXZlcnMvbmV0L21hY3ZsYW4uY8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDIgKy0KPj4+Pj4g
wqDCoCBkcml2ZXJzL25ldC92eGxhbi92eGxhbl9jb3JlLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfCAyICstCj4+Pj4+IMKgwqAgaW5jbHVkZS9saW51eC9uZXRkZXZpY2Uu
aMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyICstCj4+
Pj4+IMKgwqAgbmV0L2JyaWRnZS9icl9mZGIuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyICstCj4+Pj4+IMKgwqAgbmV0L2JyaWRn
ZS9icl9wcml2YXRlLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8IDIgKy0KPj4+Pj4gwqDCoCBuZXQvY29yZS9ydG5ldGxpbmsuY8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgNCArKy0tCj4+
Pj4+IMKgwqAgOSBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMo
LSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfbWFpbi5jIAo+Pj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
bWFpbi5jCj4+Pj4+IGluZGV4IGQ3Njg5MjU3ODVjYS4uN2I1NWQ4ZDk0ODAzIDEwMDY0NAo+Pj4+
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+Pj4+PiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+Pj4+PiBAQCAt
NTY3OCwxMCArNTY3OCwxMCBAQCBpY2VfZmRiX2FkZChzdHJ1Y3QgbmRtc2cgKm5kbSwgc3RydWN0
IAo+Pj4+PiBubGF0dHIgX19hbHdheXNfdW51c2VkICp0YltdLAo+Pj4+PiDCoMKgIHN0YXRpYyBp
bnQKPj4+Pj4gwqDCoCBpY2VfZmRiX2RlbChzdHJ1Y3QgbmRtc2cgKm5kbSwgX19hbHdheXNfdW51
c2VkIHN0cnVjdCBubGF0dHIgKnRiW10sCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVj
dCBuZXRfZGV2aWNlICpkZXYsIGNvbnN0IHVuc2lnbmVkIGNoYXIgKmFkZHIsCj4+Pj4+IC3CoMKg
wqDCoMKgwqDCoCBfX2Fsd2F5c191bnVzZWQgdTE2IHZpZCkKPj4+Pj4gK8KgwqDCoMKgwqDCoMKg
IF9fYWx3YXlzX3VudXNlZCB1MTYgdmlkLCBzdHJ1Y3QgbmV0bGlua19leHRfYWNrICpleHRhY2sp
Cj4+Pj4+IMKgwqAgewo+Pj4+PiDCoMKgwqDCoMKgwqAgaW50IGVycjsKPj4+Pj4gLQo+Pj4+PiAr
Cj4+Pj4gV2hhdCdzIGNoYW5nZWQgaGVyZT8KPj4+IEluIHRoZSBwcmV2aW91cyB2ZXJzaW9uLCBJ
IHJlbW92ZWQgdGhlIGJsYW5rIGxpbmUgYWZ0ZXIgImludCBlcnI7IiAKPj4+IGFuZCB5b3Ugc2Fp
ZCBJIHNob3VsZG4ndCBzbyBJIGFkZGVkIGJsYW5rIGxpbmUuCj4+Pgo+PiBZZWFoLCBteSBxdWVz
dGlvbiBpcyBhcmUgeW91IGZpeGluZyBhIGRvcyBlbmRpbmcgb3Igc29tZXRoaW5nIGVsc2U/Cj4+
IFRoZSBibGFuayBsaW5lIGlzIGFscmVhZHkgdGhlcmUsIHdoYXQncyB3cm9uZyB3aXRoIGl0Pwo+
IE5vLCBJIGRpZG4ndC4KPj4KPj4gVGhlIHBvaW50IGlzIGl0J3Mgbm90IG5pY2UgdG8gbWl4IHN0
eWxlIGZpeGVzIGFuZCBvdGhlciBjaGFuZ2VzLCBtb3JlIHNvCj4+IGlmIG5vdGhpbmcgaXMgbWVu
dGlvbmVkIGluIHRoZSBjb21taXQgbWVzc2FnZS4KPiBHb3QgaXQsIFNvLCB3aGF0IHNob3VsZCBJ
IGRvIHRvIGZpeCBpdD8KCkRvbid0IGNoYW5nZSB0aGF0IGxpbmU/IEkgbWVhbiBJJ20gZXZlbiBz
dXJwcmlzZWQgdGhpcyBtYWRlIGl0IGluIHRoZSAKcGF0Y2guIEFzIEkgbWVudGlvbmVkIGFib3Zl
LCB0aGVyZSBpcyBhbHJlYWR5IGEgbmV3IGxpbmUgdGhlcmUgc28gSSdtIApub3Qgc3VyZSBob3cg
eW91J3JlIHJlbW92aW5nIGl0IGFuZCBhZGRpbmcgaXQgYWdhaW4uIDopCgpDaGVlcnMsCiAgTmlr
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
