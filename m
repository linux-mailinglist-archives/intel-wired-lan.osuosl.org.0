Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D346C5003
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 17:05:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00BA181776;
	Wed, 22 Mar 2023 16:05:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00BA181776
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679501150;
	bh=o4OdMW4mxp+yQsacAEPls9jr7wKBmVNUDDgnJCPvcpw=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QwplAEtd0Dq+tjkJO6+aAgokIp7AsKl0DXN+ilq4ALZOh5B8LBce3NkFdK8DQcQyO
	 t6xHrD3ZS4gOUZW5Z6T/rpUesy1eKoDn529zpr+q6wvH5Iq3mvP0Fvaz6WT8zBvNWL
	 dDJIAJX2l7OOGbFIiytXak4DK04EteGOx1QOk6QSTZnGOgRK6Xch/fYij7ON5CkT7j
	 vnJZM8rreSFnAaOjq1JBgqJlJFMWQWwWzHKfGK3BiLObr9iteWyzzoNpLfjbPpWRQ/
	 nHw0rb0VCbZazOdEE4Z04jktgi8UjWrL5KVFby3hkpy69p9NiOzcUPUqC++pE7NRD+
	 +WVnf4fwqyVeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8o0LMY4vG5Dl; Wed, 22 Mar 2023 16:05:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF43781418;
	Wed, 22 Mar 2023 16:05:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF43781418
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7CE21BF35F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:05:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC62B80C38
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:05:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC62B80C38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KdCGjZGsQ9ss for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 16:05:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0767580C33
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0767580C33
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:05:38 +0000 (UTC)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-657-a_16EJ1LO3OJIAqbMnwooA-1; Wed, 22 Mar 2023 12:05:15 -0400
X-MC-Unique: a_16EJ1LO3OJIAqbMnwooA-1
Received: by mail-ed1-f71.google.com with SMTP id
 a27-20020a50c31b000000b0050047ecf4bfso21721603edb.19
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 09:05:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679501113;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=R19EYQl/3a1OZn/7iEThbID+2P3CKP86RKDBkJY/6ig=;
 b=LzLt+YWNE8mFwC+Z1EjL/Hon6Fv3Jh9G4dCCsJWSma4lsbWQKqXZwgZBk+kPZA3yom
 a+T+l/J1ic0CCk7l1z8f4WsnkdW1xMsbLJ2zBJcU1mm7El5FSFbxYv7hXOm6cH5Od4DW
 Tx+Dw1XCbRqm3B8W9BjTShTDucWWmtGHrXrE3uQGCSSWw2PXUbgz8YGmBiwcr+1IIA1i
 YpEhwX2fxc+NH7nSfV9zcP/w+1+uUtxqKQpTJUUy/GKkTn80YAoSFSlStww5d2BDmvJ4
 l8Vf+BhOcAMfVRsxOmpeDjRTRO45MkfwldIEr4eIC63QQ0yJ0moUD7Z0XKbkQX2uowjd
 Cepg==
X-Gm-Message-State: AO0yUKViwqcLxV8ZMTsEU0AGKcAzHdBE9QnPQw3Q1ioiiW6Rkw6QfEts
 /jYA2fOgIJgGg9wXNFXJ7ejiNY6Qwt0ZlwpTToNCpldN3yUIMLtbod/Da7w4i+RHg6KzvAvfFU/
 jQLk8IEGNVMSy4ozwOnq6WOE+OpIyrg==
X-Received: by 2002:a17:907:d9f:b0:930:3916:df1d with SMTP id
 go31-20020a1709070d9f00b009303916df1dmr9416067ejc.0.1679501113602; 
 Wed, 22 Mar 2023 09:05:13 -0700 (PDT)
X-Google-Smtp-Source: AK7set+eEG+9Nhjdu7pvohVMislIOYYj5JHPc8wzmjUCjfXB2jEEvGgjHeH7cZ4uUEeLZG8BmQFvpw==
X-Received: by 2002:a17:907:d9f:b0:930:3916:df1d with SMTP id
 go31-20020a1709070d9f00b009303916df1dmr9416034ejc.0.1679501113325; 
 Wed, 22 Mar 2023 09:05:13 -0700 (PDT)
Received: from [192.168.42.100] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 22-20020a170906309600b0092f289b6fdbsm7373117ejv.181.2023.03.22.09.05.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Mar 2023 09:05:12 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <080640fc-5835-26f1-2b20-ff079bd59182@redhat.com>
Date: Wed, 22 Mar 2023 17:05:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
 <167940643669.2718137.4624187727245854475.stgit@firesoul>
 <CAKH8qBuv-9TXAmi0oTbB0atC4f6jzFcFhAgQ3D89VX45vUU9hw@mail.gmail.com>
In-Reply-To: <CAKH8qBuv-9TXAmi0oTbB0atC4f6jzFcFhAgQ3D89VX45vUU9hw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679501136;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=R19EYQl/3a1OZn/7iEThbID+2P3CKP86RKDBkJY/6ig=;
 b=e751NzglxZIcoI0blkQhUVgEid/csE8kp5gXg7c642yZ1MqSttVTdaLHisnYAiBdjkLSA1
 9isOc8Z89j/NhfVxTXP+hKtzwVpCawQcI4ahccOu4w/EV19kADR5nMH8/KF4TESahh7rEx
 bKmmojbuMikwTV+OC29WrYE0MHTepZA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=e751Nzgl
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 3/6] selftests/bpf:
 xdp_hw_metadata RX hash return code info
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, yoong.siang.song@intel.com,
 brouer@redhat.com, boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 hawk@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMS8wMy8yMDIzIDE5LjQ3LCBTdGFuaXNsYXYgRm9taWNoZXYgd3JvdGU6Cj4gT24gVHVl
LCBNYXIgMjEsIDIwMjMgYXQgNjo0N+KAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPiA8YnJv
dWVyQHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBXaGVuIGRyaXZlciBkZXZlbG9wZXJzIGFkZCBY
RFAtaGludHMga2Z1bmNzIGZvciBSWCBoYXNoIGl0IGlzCj4+IHByYWN0aWNhbCB0byBwcmludCB0
aGUgcmV0dXJuIGNvZGUgaW4gYnBmX3ByaW50ayB0cmFjZSBwaXBlIGxvZy4KPj4KPj4gUHJpbnQg
aGFzaCB2YWx1ZSBhcyBhIGhleCB2YWx1ZSwgYm90aCBBRl9YRFAgdXNlcnNwYWNlIGFuZCBicGZf
cHJvZywKPj4gYXMgdGhpcyBtYWtlcyBpdCBlYXNpZXIgdG8gc3BvdCBwb29yIHF1YWxpdHkgaGFz
aGVzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJA
cmVkaGF0LmNvbT4KPj4gLS0tCj4+ICAgLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94
ZHBfaHdfbWV0YWRhdGEuYyAgfCAgICA5ICsrKysrKy0tLQo+PiAgIHRvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYyAgICAgIHwgICAgNSArKysrLQo+PiAgIDIgZmls
ZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAt
LWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEu
YyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+
PiBpbmRleCA0MGMxN2FkYmY0ODMuLmNlMDcwMTBlNGQ0OCAxMDA2NDQKPj4gLS0tIGEvdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4+ICsrKyBiL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+PiBAQCAt
NzcsMTAgKzc3LDEzIEBAIGludCByeChzdHJ1Y3QgeGRwX21kICpjdHgpCj4+ICAgICAgICAgICAg
ICAgICAgbWV0YS0+cnhfdGltZXN0YW1wID0gMDsgLyogVXNlZCBieSBBRl9YRFAgYXMgbm90IGF2
YWlsIHNpZ25hbCAqLwo+PiAgICAgICAgICB9Cj4+Cj4+IC0gICAgICAgaWYgKCFicGZfeGRwX21l
dGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCkpCj4+IC0gICAgICAgICAgICAgICBi
cGZfcHJpbnRrKCJwb3B1bGF0ZWQgcnhfaGFzaCB3aXRoICV1IiwgbWV0YS0+cnhfaGFzaCk7Cj4+
IC0gICAgICAgZWxzZQo+PiArICAgICAgIHJldCA9IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChj
dHgsICZtZXRhLT5yeF9oYXNoKTsKPj4gKyAgICAgICBpZiAocmV0ID49IDApIHsKPj4gKyAgICAg
ICAgICAgICAgIGJwZl9wcmludGsoInBvcHVsYXRlZCByeF9oYXNoIHdpdGggMHglMDhYIiwgbWV0
YS0+cnhfaGFzaCk7Cj4+ICsgICAgICAgfSBlbHNlIHsKPj4gKyAgICAgICAgICAgICAgIGJwZl9w
cmludGsoInJ4X2hhc2ggbm90LWF2YWlsIGVycm5vOiVkIiwgcmV0KTsKPj4gICAgICAgICAgICAg
ICAgICBtZXRhLT5yeF9oYXNoID0gMDsgLyogVXNlZCBieSBBRl9YRFAgYXMgbm90IGF2YWlsIHNp
Z25hbCAqLwo+PiArICAgICAgIH0KPj4KPj4gICAgICAgICAgcmV0dXJuIGJwZl9yZWRpcmVjdF9t
YXAoJnhzaywgY3R4LT5yeF9xdWV1ZV9pbmRleCwgWERQX1BBU1MpOwo+PiAgIH0KPj4gZGlmZiAt
LWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+PiBpbmRleCA0MDBi
ZmUxOWFiZmUuLmYzZWMwN2NjZGM5NSAxMDA2NDQKPj4gLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxm
dGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jCj4+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+PiBAQCAtMyw2ICszLDkgQEAKPj4gICAvKiBSZWZl
cmVuY2UgcHJvZ3JhbSBmb3IgdmVyaWZ5aW5nIFhEUCBtZXRhZGF0YSBvbiByZWFsIEhXLiBGdW5j
dGlvbmFsIHRlc3QKPj4gICAgKiBvbmx5LCBkb2Vzbid0IHRlc3QgdGhlIHBlcmZvcm1hbmNlLgo+
PiAgICAqCj4+ICsgKiBCUEYtcHJvZyBicGZfcHJpbnRrIGluZm8gb3V0b3V0IGNhbiBiZSBhY2Nl
c3MgdmlhCj4+ICsgKiAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlX3BpcGUKPiAKPiBz
L291dG91dC9vdXRwdXQvCj4gCgpGaXhlZCBpbiBWMwoKPiBCdXQgbGV0J3MgbWF5YmUgZHJvcCBp
dD8gSWYgeW91IHdhbnQgdG8gbWFrZSBpdCBtb3JlIHVzYWJsZSwgbGV0J3MKPiBoYXZlIGEgc2Vw
YXJhdGUgcGF0Y2ggdG8gZW5hYmxlIHRyYWNpbmcgYW5kIHBlcmlvZGljYWxseSBkdW1wIGl0IHRv
Cj4gdGhlIGNvbnNvbGUgaW5zdGVhZCAoYXMgcHJldmlvdXNseSBkaXNjdXNzZWQpLgoKQ2F0J2lu
ZyAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlX3BpcGUgd29yayBmb3IgbWUgcmVnYXJk
bGVzcyBvZgpzZXR0aW5nIGluCi9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvZXZlbnRzL2JwZl90
cmFjZS9icGZfdHJhY2VfcHJpbnRrL2VuYWJsZQoKV2UgbGlrZWx5IG5lZWQgYSBmb2xsb3d1cCBw
YXRjaCB0aGF0IGFkZHMgYSBCUEYgY29uZmlnIHN3aXRjaCB0aGF0IGNhbgpkaXNhYmxlIGJwZl9w
cmludGsgY2FsbHMsIGJlY2F1c2UgdGhpcyBhZGRzIG92ZXJoZWFkIGFuZCB0aHVzIGFmZmVjdHMK
dGhlIHRpbWVzdGFtcHMuCgo+IFdpdGggdGhpcyBhZGRyZXNzZWQ6Cj4gQWNrZWQtYnk6IFN0YW5p
c2xhdiBGb21pY2hldiA8c2RmQGdvb2dsZS5jb20+Cj4gCj4+ICsgKgo+PiAgICAqIFJYOgo+PiAg
ICAqIC0gVURQIDkwOTEgcGFja2V0cyBhcmUgZGl2ZXJ0ZWQgaW50byBBRl9YRFAKPj4gICAgKiAt
IE1ldGFkYXRhIHZlcmlmaWVkOgo+PiBAQCAtMTU2LDcgKzE1OSw3IEBAIHN0YXRpYyB2b2lkIHZl
cmlmeV94ZHBfbWV0YWRhdGEodm9pZCAqZGF0YSwgY2xvY2tpZF90IGNsb2NrX2lkKQo+Pgo+PiAg
ICAgICAgICBtZXRhID0gZGF0YSAtIHNpemVvZigqbWV0YSk7Cj4+Cj4+IC0gICAgICAgcHJpbnRm
KCJyeF9oYXNoOiAldVxuIiwgbWV0YS0+cnhfaGFzaCk7Cj4+ICsgICAgICAgcHJpbnRmKCJyeF9o
YXNoOiAweCUwOFhcbiIsIG1ldGEtPnJ4X2hhc2gpOwo+PiAgICAgICAgICBwcmludGYoInJ4X3Rp
bWVzdGFtcDogICVsbHUgKHNlYzolMC40ZilcbiIsIG1ldGEtPnJ4X3RpbWVzdGFtcCwKPj4gICAg
ICAgICAgICAgICAgIChkb3VibGUpbWV0YS0+cnhfdGltZXN0YW1wIC8gTkFOT1NFQ19QRVJfU0VD
KTsKPj4gICAgICAgICAgaWYgKG1ldGEtPnJ4X3RpbWVzdGFtcCkgewo+Pgo+Pgo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
