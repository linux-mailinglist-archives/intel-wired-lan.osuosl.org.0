Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E88150D455
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Apr 2022 20:59:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 243974019A;
	Sun, 24 Apr 2022 18:59:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LPu_1qusTKw7; Sun, 24 Apr 2022 18:59:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2A6C40156;
	Sun, 24 Apr 2022 18:59:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55D6B1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 18:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 506B740895
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 18:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WKsESue1Onsk for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 18:59:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18CF4404CC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 18:59:48 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id s21so3311114wrb.8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 11:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=UetoLqapA6ApIfhlhvJs0ER3TpWmnZlfPjVC22O9EkM=;
 b=WwQHeOrWBO3Xhjgz+UueEcCs69FxpEIIQ6Y897xnnVOKr2y3oqq9bH/NbSRdLepY8m
 svuNmKA9VbRH7eboFBwvCpCeDDF0oqvxi9nmToG+8YqBlaVyzCPDwVRsdVpQ17gFttWO
 LWfQo0Qo2BuXuVMM1nsPbhraighTsW4D7RXIcRaRH5IsvEvzqJ8YeLo5gUmGrLDXsQ5f
 F1YWimulAVHvDgHF39OjMdmoaXSYnHDfLdhATUUQeMte9qU03jsEWw2atMeIlZjLD8Ts
 gZEiitddqUvpKB3A5ddmgdLkgOar88dTlpZ6Fgov2lx+Xw78XsKwjiILIXhWCWtOfdaA
 8eNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=UetoLqapA6ApIfhlhvJs0ER3TpWmnZlfPjVC22O9EkM=;
 b=ZyPkpWi/YAZXOHW/+Gt32b9czcNurErg3zph3TSqLhDkJsNf4J6kRE4CskliB6HIfS
 pwTd7qoyJ1lQ67N0U2kqak4IMH/MF32v8OzeofChgts9NypVciqNhfC3KSGYj0ZPj9K2
 MvAg6NPJvKecix+3rYF0OHPkJ3OgF8KmsRIW/dwPYrMla12cEfQ2upbdZhhNxu7+py79
 QGLQ1xmq29Qlb04pUAmAkeWqgRVXW6pK9G7Ib2ZILskdwZaTIhBLDDGOtVQs0oJJwRjN
 jn1qX8JdsnHzMcC+4VIEnrgACnPIR8KYclvqWccQZaXgAWFM88/sM1wJsfQHLpiaJuBy
 3KFQ==
X-Gm-Message-State: AOAM531r7JLccG2sHIeRQcIUEVSiqUMfDnYYn7ITvATEiaDTQsxVF2BM
 shpU6lgjG5NmaaltkrduUbI=
X-Google-Smtp-Source: ABdhPJxPPxL52UOgSeebd7hxhdRrnGgQpveMSkz2hQaRwG3p298ySC3BTHwdztZ2IFvy2MebH2XfgA==
X-Received: by 2002:a5d:588a:0:b0:204:1f72:2d90 with SMTP id
 n10-20020a5d588a000000b002041f722d90mr11707294wrf.651.1650826787183; 
 Sun, 24 Apr 2022 11:59:47 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 v18-20020adfc5d2000000b0020589b76704sm7878857wrg.70.2022.04.24.11.59.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 11:59:46 -0700 (PDT)
Message-ID: <e8ca868f-bbd6-c638-310c-d9c36aedb5d3@gmail.com>
Date: Sun, 24 Apr 2022 20:59:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Julia Lawall <julia.lawall@inria.fr>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
 <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
 <alpine.DEB.2.22.394.2204242054350.21756@hadrien>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <alpine.DEB.2.22.394.2204242054350.21756@hadrien>
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net: vxlan:
 vxlan_core.c: Add extack support to vxlan_fdb_delete
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
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uINmi2aTigI8v2aTigI8v2aLZoNmi2aIg2aLZoDrZpdmmLCBKdWxpYSBMYXdhbGwgd3JvdGU6
Cj4KPiBPbiBTdW4sIDI0IEFwciAyMDIyLCBBbGFhIE1vaGFtZWQgd3JvdGU6Cj4KPj4gT24g2aLZ
pC/ZpC/Zotmg2aLZoiDZodmoOtmh2aUsIEp1bGlhIExhd2FsbCB3cm90ZToKPj4+IE9uIFN1biwg
MjQgQXByIDIwMjIsIEFsYWEgTW9oYW1lZCB3cm90ZToKPj4+Cj4+Pj4gQWRkIGV4dGFjayB0byB2
eGxhbl9mZGJfZGVsZXRlIGFuZCB2eGxhbl9mZGJfcGFyc2UKPj4+IEl0IGNvdWxkIGJlIGhlbHBm
dWwgdG8gc2F5IG1vcmUgYWJvdXQgd2hhdCBhZGRpbmcgZXh0YWNrIHN1cHBvcnQgaW52b2x2ZXMu
Cj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEFsYWEgTW9oYW1lZCA8ZW5nLmFsYWFtb2hhbWVkc29s
aW1hbi5hbUBnbWFpbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gY2hhbmdlcyBpbiBWMjoKPj4+PiAJLSBm
aXggc3BlbGxpbmcgdnhsYW5fZmRiX2RlbGV0ZQo+Pj4+IAktIGFkZCBtaXNzaW5nIGJyYWNlcwo+
Pj4+IAktIGVkaXQgZXJyb3IgbWVzc2FnZQo+Pj4+IC0tLQo+Pj4+IGNoYW5nZXMgaW4gVjM6Cj4+
Pj4gCWZpeCBlcnJvcnMgcmVwb3J0ZWQgYnkgY2hlY2twYXRjaC5wbAo+Pj4gQnV0IHlvdXIgY2hh
bmdlcyB3b3VsZCBzZWVtIHRvIGFsc28gYmUgaW50cm9kdWNpbmcgbW9yZSBjaGVja3BhdGNoIGVy
cm9ycywKPj4+IGJlY2F1c2UgdGhlIExpbnV4IGtlcm5lbCBjb2Rpbmcgc3R5bGUgcHV0cyBhIHNw
YWNlIGJlZm9yZSBhbiB7IGF0IHRoZQo+Pj4gc3RhcnQgb2YgYW4gaWYgYnJhbmNoLgo+PiBJIHJh
biBjaGVja3BhdGNoIHNjcmlwdCBiZWZvcmUgc3VibWl0dGluZyB0aGlzIHBhdGNoIGFuZCBnb3Qg
bm8gZXJyb3IKPiBPSywgd2hldGhlciBjaGVja3BhdGNoIGNvbXBsYWlucyBvciBub3QgZG9lc24n
dCByZWFsbHkgbWF0dGVyLiAgVGhlIHBvaW50Cj4gaXMgdGhhdCBpbiB0aGUgTGludXgga2VybmVs
LCBvbmUgd3JpdGVzOgo+Cj4gaWYgKC4uLikgewo+Cj4gYW5kIG5vdAo+Cj4gaWYgKC4uLil7Cj4K
PiBZb3UgY2FuIHNlZSBvdGhlciBleGFtcGxlcyBvZiBpZnMgaW4gdGhlIExpbnV4IGtlcm5lbC4K
CgpZZXMsIGdvdCBpdC4gSSB3aWxsIGZpeCBpdC4KCgpUaGFua3MsCgpBbGFhCgo+Cj4ganVsaWEK
Pgo+Pj4ganVsaWEKPj4+Cj4+Pj4gLS0tCj4+Pj4gICAgZHJpdmVycy9uZXQvdnhsYW4vdnhsYW5f
Y29yZS5jIHwgMzYgKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+Pj4+ICAgIDEg
ZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC92eGxhbi92eGxhbl9jb3JlLmMKPj4+PiBiL2RyaXZl
cnMvbmV0L3Z4bGFuL3Z4bGFuX2NvcmUuYwo+Pj4+IGluZGV4IGNmMmY2MDAzNzM0MC4uNGUxODg2
NjU1MTAxIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvbmV0L3Z4bGFuL3Z4bGFuX2NvcmUuYwo+
Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L3Z4bGFuL3Z4bGFuX2NvcmUuYwo+Pj4+IEBAIC0xMTI5LDE5
ICsxMTI5LDIzIEBAIHN0YXRpYyB2b2lkIHZ4bGFuX2ZkYl9kc3RfZGVzdHJveShzdHJ1Y3Qgdnhs
YW5fZGV2Cj4+Pj4gKnZ4bGFuLCBzdHJ1Y3QgdnhsYW5fZmRiICpmLAo+Pj4+Cj4+Pj4gICAgc3Rh
dGljIGludCB2eGxhbl9mZGJfcGFyc2Uoc3RydWN0IG5sYXR0ciAqdGJbXSwgc3RydWN0IHZ4bGFu
X2RldiAqdnhsYW4sCj4+Pj4gICAgCQkJICAgdW5pb24gdnhsYW5fYWRkciAqaXAsIF9fYmUxNiAq
cG9ydCwgX19iZTMyCj4+Pj4gKnNyY192bmksCj4+Pj4gLQkJCSAgIF9fYmUzMiAqdm5pLCB1MzIg
KmlmaW5kZXgsIHUzMiAqbmhpZCkKPj4+PiArCQkJICAgX19iZTMyICp2bmksIHUzMiAqaWZpbmRl
eCwgdTMyICpuaGlkLCBzdHJ1Y3QKPj4+PiBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykKPj4+PiAg
ICB7Cj4+Pj4gICAgCXN0cnVjdCBuZXQgKm5ldCA9IGRldl9uZXQodnhsYW4tPmRldik7Cj4+Pj4g
ICAgCWludCBlcnI7Cj4+Pj4KPj4+PiAgICAJaWYgKHRiW05EQV9OSF9JRF0gJiYgKHRiW05EQV9E
U1RdIHx8IHRiW05EQV9WTkldIHx8IHRiW05EQV9JRklOREVYXSB8fAo+Pj4+IC0JICAgIHRiW05E
QV9QT1JUXSkpCj4+Pj4gLQkJcmV0dXJuIC1FSU5WQUw7Cj4+Pj4gKwkgICAgdGJbTkRBX1BPUlRd
KSl7Cj4+Pj4gKwkJCU5MX1NFVF9FUlJfTVNHKGV4dGFjaywgIkRTVCwgVk5JLCBpZmluZGV4IGFu
ZCBwb3J0IGFyZQo+Pj4+IG11dHVhbGx5IGV4Y2x1c2l2ZSB3aXRoIE5IX0lEIik7Cj4+Pj4gKwkJ
CXJldHVybiAtRUlOVkFMOwo+Pj4+ICsJCX0KPj4+Pgo+Pj4+ICAgIAlpZiAodGJbTkRBX0RTVF0p
IHsKPj4+PiAgICAJCWVyciA9IHZ4bGFuX25sYV9nZXRfYWRkcihpcCwgdGJbTkRBX0RTVF0pOwo+
Pj4+IC0JCWlmIChlcnIpCj4+Pj4gKwkJaWYgKGVycil7Cj4+Pj4gKwkJCU5MX1NFVF9FUlJfTVNH
KGV4dGFjaywgIlVuc3VwcG9ydGVkIGFkZHJlc3MgZmFtaWx5Iik7Cj4+Pj4gICAgCQkJcmV0dXJu
IGVycjsKPj4+PiArCQl9Cj4+Pj4gICAgCX0gZWxzZSB7Cj4+Pj4gICAgCQl1bmlvbiB2eGxhbl9h
ZGRyICpyZW1vdGUgPSAmdnhsYW4tPmRlZmF1bHRfZHN0LnJlbW90ZV9pcDsKPj4+Pgo+Pj4+IEBA
IC0xMTU3LDI0ICsxMTYxLDMwIEBAIHN0YXRpYyBpbnQgdnhsYW5fZmRiX3BhcnNlKHN0cnVjdCBu
bGF0dHIgKnRiW10sCj4+Pj4gc3RydWN0IHZ4bGFuX2RldiAqdnhsYW4sCj4+Pj4gICAgCX0KPj4+
Pgo+Pj4+ICAgIAlpZiAodGJbTkRBX1BPUlRdKSB7Cj4+Pj4gLQkJaWYgKG5sYV9sZW4odGJbTkRB
X1BPUlRdKSAhPSBzaXplb2YoX19iZTE2KSkKPj4+PiArCQlpZiAobmxhX2xlbih0YltOREFfUE9S
VF0pICE9IHNpemVvZihfX2JlMTYpKXsKPj4+PiArCQkJTkxfU0VUX0VSUl9NU0coZXh0YWNrLCAi
SW52YWxpZCB2eGxhbiBwb3J0Iik7Cj4+Pj4gICAgCQkJcmV0dXJuIC1FSU5WQUw7Cj4+Pj4gKwkJ
fQo+Pj4+ICAgIAkJKnBvcnQgPSBubGFfZ2V0X2JlMTYodGJbTkRBX1BPUlRdKTsKPj4+PiAgICAJ
fSBlbHNlIHsKPj4+PiAgICAJCSpwb3J0ID0gdnhsYW4tPmNmZy5kc3RfcG9ydDsKPj4+PiAgICAJ
fQo+Pj4+Cj4+Pj4gICAgCWlmICh0YltOREFfVk5JXSkgewo+Pj4+IC0JCWlmIChubGFfbGVuKHRi
W05EQV9WTkldKSAhPSBzaXplb2YodTMyKSkKPj4+PiArCQlpZiAobmxhX2xlbih0YltOREFfVk5J
XSkgIT0gc2l6ZW9mKHUzMikpewo+Pj4+ICsJCQlOTF9TRVRfRVJSX01TRyhleHRhY2ssICJJbnZh
bGlkIHZuaSIpOwo+Pj4+ICAgIAkJCXJldHVybiAtRUlOVkFMOwo+Pj4+ICsJCX0KPj4+PiAgICAJ
CSp2bmkgPSBjcHVfdG9fYmUzMihubGFfZ2V0X3UzMih0YltOREFfVk5JXSkpOwo+Pj4+ICAgIAl9
IGVsc2Ugewo+Pj4+ICAgIAkJKnZuaSA9IHZ4bGFuLT5kZWZhdWx0X2RzdC5yZW1vdGVfdm5pOwo+
Pj4+ICAgIAl9Cj4+Pj4KPj4+PiAgICAJaWYgKHRiW05EQV9TUkNfVk5JXSkgewo+Pj4+IC0JCWlm
IChubGFfbGVuKHRiW05EQV9TUkNfVk5JXSkgIT0gc2l6ZW9mKHUzMikpCj4+Pj4gKwkJaWYgKG5s
YV9sZW4odGJbTkRBX1NSQ19WTkldKSAhPSBzaXplb2YodTMyKSl7Cj4+Pj4gKwkJCU5MX1NFVF9F
UlJfTVNHKGV4dGFjaywgIkludmFsaWQgc3JjIHZuaSIpOwo+Pj4+ICAgIAkJCXJldHVybiAtRUlO
VkFMOwo+Pj4+ICsJCX0KPj4+PiAgICAJCSpzcmNfdm5pID0gY3B1X3RvX2JlMzIobmxhX2dldF91
MzIodGJbTkRBX1NSQ19WTkldKSk7Cj4+Pj4gICAgCX0gZWxzZSB7Cj4+Pj4gICAgCQkqc3JjX3Zu
aSA9IHZ4bGFuLT5kZWZhdWx0X2RzdC5yZW1vdGVfdm5pOwo+Pj4+IEBAIC0xMTgzLDEyICsxMTkz
LDE2IEBAIHN0YXRpYyBpbnQgdnhsYW5fZmRiX3BhcnNlKHN0cnVjdCBubGF0dHIgKnRiW10sCj4+
Pj4gc3RydWN0IHZ4bGFuX2RldiAqdnhsYW4sCj4+Pj4gICAgCWlmICh0YltOREFfSUZJTkRFWF0p
IHsKPj4+PiAgICAJCXN0cnVjdCBuZXRfZGV2aWNlICp0ZGV2Owo+Pj4+Cj4+Pj4gLQkJaWYgKG5s
YV9sZW4odGJbTkRBX0lGSU5ERVhdKSAhPSBzaXplb2YodTMyKSkKPj4+PiArCQlpZiAobmxhX2xl
bih0YltOREFfSUZJTkRFWF0pICE9IHNpemVvZih1MzIpKXsKPj4+PiArCQkJTkxfU0VUX0VSUl9N
U0coZXh0YWNrLCAiSW52YWxpZCBpZmluZGV4Iik7Cj4+Pj4gICAgCQkJcmV0dXJuIC1FSU5WQUw7
Cj4+Pj4gKwkJfQo+Pj4+ICAgIAkJKmlmaW5kZXggPSBubGFfZ2V0X3UzMih0YltOREFfSUZJTkRF
WF0pOwo+Pj4+ICAgIAkJdGRldiA9IF9fZGV2X2dldF9ieV9pbmRleChuZXQsICppZmluZGV4KTsK
Pj4+PiAtCQlpZiAoIXRkZXYpCj4+Pj4gKwkJaWYgKCF0ZGV2KXsKPj4+PiArCQkJTkxfU0VUX0VS
Ul9NU0coZXh0YWNrLCJEZXZpY2Ugbm90IGZvdW5kIik7Cj4+Pj4gICAgCQkJcmV0dXJuIC1FQURE
Uk5PVEFWQUlMOwo+Pj4+ICsJCX0KPj4+PiAgICAJfSBlbHNlIHsKPj4+PiAgICAJCSppZmluZGV4
ID0gMDsKPj4+PiAgICAJfQo+Pj4+IEBAIC0xMjI2LDcgKzEyNDAsNyBAQCBzdGF0aWMgaW50IHZ4
bGFuX2ZkYl9hZGQoc3RydWN0IG5kbXNnICpuZG0sIHN0cnVjdAo+Pj4+IG5sYXR0ciAqdGJbXSwK
Pj4+PiAgICAJCXJldHVybiAtRUlOVkFMOwo+Pj4+Cj4+Pj4gICAgCWVyciA9IHZ4bGFuX2ZkYl9w
YXJzZSh0YiwgdnhsYW4sICZpcCwgJnBvcnQsICZzcmNfdm5pLCAmdm5pLCAmaWZpbmRleCwKPj4+
PiAtCQkJICAgICAgJm5oaWQpOwo+Pj4+ICsJCQkgICAgICAmbmhpZCwgZXh0YWNrKTsKPj4+PiAg
ICAJaWYgKGVycikKPj4+PiAgICAJCXJldHVybiBlcnI7Cj4+Pj4KPj4+PiBAQCAtMTI5MSw3ICsx
MzA1LDcgQEAgc3RhdGljIGludCB2eGxhbl9mZGJfZGVsZXRlKHN0cnVjdCBuZG1zZyAqbmRtLAo+
Pj4+IHN0cnVjdCBubGF0dHIgKnRiW10sCj4+Pj4gICAgCWludCBlcnI7Cj4+Pj4KPj4+PiAgICAJ
ZXJyID0gdnhsYW5fZmRiX3BhcnNlKHRiLCB2eGxhbiwgJmlwLCAmcG9ydCwgJnNyY192bmksICZ2
bmksICZpZmluZGV4LAo+Pj4+IC0JCQkgICAgICAmbmhpZCk7Cj4+Pj4gKwkJCSAgICAgICZuaGlk
LCBleHRhY2spOwo+Pj4+ICAgIAlpZiAoZXJyKQo+Pj4+ICAgIAkJcmV0dXJuIGVycjsKPj4+Pgo+
Pj4+IC0tCj4+Pj4gMi4zNi4wCj4+Pj4KPj4+Pgo+Pj4+Cj4gPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
