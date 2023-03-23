Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5096C623D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Mar 2023 09:52:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C283541CC4;
	Thu, 23 Mar 2023 08:51:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C283541CC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679561518;
	bh=I1ocfZPl+Zyq0Sx4uUqmgCwYgGsrFpioeM+oxkZygUo=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t0QO34JbvB02qdqI4XK7I57jjbLeazrXHjIq7AYQg33quVO6cdd6C83fK0o7MwrlH
	 D3D1HIrTYIreCCMyMFCprP0E9thEn8lOmui/E6od0ElAi0ckd2CKG9F1uUoYav9Odb
	 Cyu0KRqc25v/gUVmd0GQsz2MamuH6UEkaH7AWyjQozzNZsEptrCCKN3XAmNSd2TLyz
	 N+QvVoKRqpculk3nngUFE7bNALDjDV7oRyEPUEWYCrY6vKLh62aQ1014xB5ANQw38H
	 ftzoM6MHsh/LMeRZ8mt+1uCfijITsc3h3CFLNDkdMb2sr1OizSKnloPbvQeDHnTSM/
	 0nR7QgyWJKPbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LxTlAXdyDxsg; Thu, 23 Mar 2023 08:51:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8632C41CB7;
	Thu, 23 Mar 2023 08:51:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8632C41CB7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D4D1B1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 08:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC9B6821DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 08:51:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC9B6821DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8JORF19Vye6T for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Mar 2023 08:51:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A0D4821EB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A0D4821EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 08:51:49 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-453-_poyI6X6P_Wy85OjqvMuHQ-1; Thu, 23 Mar 2023 04:51:47 -0400
X-MC-Unique: _poyI6X6P_Wy85OjqvMuHQ-1
Received: by mail-ed1-f70.google.com with SMTP id
 y24-20020aa7ccd8000000b004be3955a42eso31669698edt.22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 01:51:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679561506;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=j5gzYRXzVkiLOcSv37gdQPBZach6Z3N054lQ3FIqJMg=;
 b=vBBAr7OtgoOhB3HnWvQYFvJJmUALIOPlRvyNt3cpTQTe1l17cOQQJHMCsm8nZwhYLL
 /4vPFROnV6hIpjcscH4g+p381l6NNt1gqwebxSG7+8h+/yevVNNGIeNIXaZPy2XJ9cNR
 EBjM0r41NQH37su7SbIHyBVpnHR+wA1FvtMtdDnnZ19AGf9RZtoiCMXHM7fJYqZsq+XH
 AjSY4DQPHAGN98D6cFqS1Xv9aVFrukMCJmlwYsV+Wg62Zn3hU4KMRlpEEXHnaACNY6uC
 ncnd4lL/3FfnX4ZKQcMO6NXzC+EHwAfwAq4W4+M20nIxVuozj3ZMsRWu7cfTCFNxboMl
 11Tw==
X-Gm-Message-State: AO0yUKWpH/yxnuKcW321pk/sGEug1HiRYtwOM5SQq5QK/i67V8F9sk2V
 4W2ekqwt7G5mnbASZ7/wenJnCYVIjNgFgIIittFzrd2c+4US1QpyY8OyCV35Q+j9RFK+rmrLOCV
 N+sMgiquwb3JHR30cmC0aAL6PHJXkkQ==
X-Received: by 2002:aa7:cb87:0:b0:4fc:154:3fda with SMTP id
 r7-20020aa7cb87000000b004fc01543fdamr10115401edt.4.1679561505961; 
 Thu, 23 Mar 2023 01:51:45 -0700 (PDT)
X-Google-Smtp-Source: AK7set9ArOW5k1PgG9N2RSTMxnzGIZveA0mr+cYVpJ89mRrFw1sLL8uekgGPY0/WSR1hHofSGeufVA==
X-Received: by 2002:aa7:cb87:0:b0:4fc:154:3fda with SMTP id
 r7-20020aa7cb87000000b004fc01543fdamr10115390edt.4.1679561505647; 
 Thu, 23 Mar 2023 01:51:45 -0700 (PDT)
Received: from [192.168.42.100] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 m10-20020a50998a000000b004e48f8df7e2sm8935019edb.72.2023.03.23.01.51.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Mar 2023 01:51:45 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <d7ac4f80-b65c-5201-086e-3b2645cbe7fe@redhat.com>
Date: Thu, 23 Mar 2023 09:51:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
 <167940643669.2718137.4624187727245854475.stgit@firesoul>
 <CAKH8qBuv-9TXAmi0oTbB0atC4f6jzFcFhAgQ3D89VX45vUU9hw@mail.gmail.com>
 <080640fc-5835-26f1-2b20-ff079bd59182@redhat.com>
 <CAADnVQKsxzLTZ2XoLbmKKLAeaSyvf3P+w8V143iZ4cEWWTEUfw@mail.gmail.com>
 <CAKH8qBuHaaqnV-_mb1Roao9ZDrEHm+1Cj77hPZSRgwxoqphvxQ@mail.gmail.com>
 <CAADnVQ+6FeQ97DZLco3OtbtXQvGUAY4nr5tM++6NEDr+u8m7GQ@mail.gmail.com>
 <CAKH8qBvzVASpUu3M=6ohDqJgJjoR33jQ-J44ESD9SdkvFoGAZg@mail.gmail.com>
 <CAADnVQLC7ma7SWPOcjXhsZ2N0OyVtBr7TzCoT-_Dn+zQ2DEyWg@mail.gmail.com>
 <CAKH8qBuqxxVM9fSB43cAvvTnaHkA-JNRy=gufCqYf5GNbRA-8g@mail.gmail.com>
In-Reply-To: <CAKH8qBuqxxVM9fSB43cAvvTnaHkA-JNRy=gufCqYf5GNbRA-8g@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679561508;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=j5gzYRXzVkiLOcSv37gdQPBZach6Z3N054lQ3FIqJMg=;
 b=NwCrm250Efw6SOBDKFEFvbgSWE4hQnHTdYr+wfbTrffsHaVcEc3BhGZZcMkRs1xP6h9yH6
 PH6cOUvS59U1X3qq5eWd7hQHt9d82Sn7RHrZvUvdR5eDpZFnSpg8D+6ITMBvbVFtNxouDE
 PcxUlPBaC9zDokcfK67OMKD6UVRymh0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NwCrm250
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
Cc: xdp-hints@xdp-project.net, Martin KaFai Lau <martin.lau@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Network Development <netdev@vger.kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, "Song,
 Yoong Siang" <yoong.siang.song@intel.com>, brouer@redhat.com, "Ong,
 Boon Leong" <boon.leong.ong@intel.com>, anthony.l.nguyen@intel.com,
 bpf <bpf@vger.kernel.org>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIyLzAzLzIwMjMgMjAuMzMsIFN0YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPiBPbiBXZWQs
IE1hciAyMiwgMjAyMyBhdCAxMjozMOKAr1BNIEFsZXhlaSBTdGFyb3ZvaXRvdgo+IDxhbGV4ZWku
c3Rhcm92b2l0b3ZAZ21haWwuY29tPiB3cm90ZToKPj4KPj4gT24gV2VkLCBNYXIgMjIsIDIwMjMg
YXQgMTI6MjPigK9QTSBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBnb29nbGUuY29tPiB3cm90ZToK
Pj4+Cj4+PiBPbiBXZWQsIE1hciAyMiwgMjAyMyBhdCAxMjoxN+KAr1BNIEFsZXhlaSBTdGFyb3Zv
aXRvdgo+Pj4gPGFsZXhlaS5zdGFyb3ZvaXRvdkBnbWFpbC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4g
T24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgMTI6MDDigK9QTSBTdGFuaXNsYXYgRm9taWNoZXYgPHNk
ZkBnb29nbGUuY29tPiB3cm90ZToKPj4+Pj4KPj4+Pj4gT24gV2VkLCBNYXIgMjIsIDIwMjMgYXQg
OTowN+KAr0FNIEFsZXhlaSBTdGFyb3ZvaXRvdgo+Pj4+PiA8YWxleGVpLnN0YXJvdm9pdG92QGdt
YWlsLmNvbT4gd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4gT24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgOTow
NeKAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPj4+Pj4+IDxqYnJvdWVyQHJlZGhhdC5jb20+
IHdyb3RlOgo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IE9uIDIxLzAzLzIwMjMgMTku
NDcsIFN0YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPj4+Pj4+Pj4gT24gVHVlLCBNYXIgMjEsIDIw
MjMgYXQgNjo0N+KAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPj4+Pj4+Pj4gPGJyb3VlckBy
ZWRoYXQuY29tPiB3cm90ZToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBXaGVuIGRyaXZlciBkZXZlbG9w
ZXJzIGFkZCBYRFAtaGludHMga2Z1bmNzIGZvciBSWCBoYXNoIGl0IGlzCj4+Pj4+Pj4+PiBwcmFj
dGljYWwgdG8gcHJpbnQgdGhlIHJldHVybiBjb2RlIGluIGJwZl9wcmludGsgdHJhY2UgcGlwZSBs
b2cuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gUHJpbnQgaGFzaCB2YWx1ZSBhcyBhIGhleCB2YWx1ZSwg
Ym90aCBBRl9YRFAgdXNlcnNwYWNlIGFuZCBicGZfcHJvZywKPj4+Pj4+Pj4+IGFzIHRoaXMgbWFr
ZXMgaXQgZWFzaWVyIHRvIHNwb3QgcG9vciBxdWFsaXR5IGhhc2hlcy4KPj4+Pj4+Pj4+Cj4+Pj4+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0
LmNvbT4KPj4+Pj4+Pj4+IC0tLQo+Pj4+Pj4+Pj4gICAgLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2Jw
Zi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYyAgfCAgICA5ICsrKysrKy0tLQo+Pj4+Pj4+Pj4gICAg
dG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jICAgICAgfCAgICA1
ICsrKystCj4+Pj4+Pj4+PiAgICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rp
bmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+Pj4+Pj4+Pj4gaW5kZXggNDBj
MTdhZGJmNDgzLi5jZTA3MDEwZTRkNDggMTAwNjQ0Cj4+Pj4+Pj4+PiAtLS0gYS90b29scy90ZXN0
aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPj4+Pj4+Pj4+ICsrKyBi
L3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+Pj4+
Pj4+Pj4gQEAgLTc3LDEwICs3NywxMyBAQCBpbnQgcngoc3RydWN0IHhkcF9tZCAqY3R4KQo+Pj4+
Pj4+Pj4gICAgICAgICAgICAgICAgICAgbWV0YS0+cnhfdGltZXN0YW1wID0gMDsgLyogVXNlZCBi
eSBBRl9YRFAgYXMgbm90IGF2YWlsIHNpZ25hbCAqLwo+Pj4+Pj4+Pj4gICAgICAgICAgIH0KPj4+
Pj4+Pj4+Cj4+Pj4+Pj4+PiAtICAgICAgIGlmICghYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0
eCwgJm1ldGEtPnJ4X2hhc2gpKQo+Pj4+Pj4+Pj4gLSAgICAgICAgICAgICAgIGJwZl9wcmludGso
InBvcHVsYXRlZCByeF9oYXNoIHdpdGggJXUiLCBtZXRhLT5yeF9oYXNoKTsKPj4+Pj4+Pj4+IC0g
ICAgICAgZWxzZQo+Pj4+Pj4+Pj4gKyAgICAgICByZXQgPSBicGZfeGRwX21ldGFkYXRhX3J4X2hh
c2goY3R4LCAmbWV0YS0+cnhfaGFzaCk7Cj4+Pj4+Pj4+PiArICAgICAgIGlmIChyZXQgPj0gMCkg
ewo+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgIGJwZl9wcmludGsoInBvcHVsYXRlZCByeF9oYXNo
IHdpdGggMHglMDhYIiwgbWV0YS0+cnhfaGFzaCk7Cj4+Pj4+Pj4+PiArICAgICAgIH0gZWxzZSB7
Cj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAgYnBmX3ByaW50aygicnhfaGFzaCBub3QtYXZhaWwg
ZXJybm86JWQiLCByZXQpOwo+Pj4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgbWV0YS0+cnhfaGFz
aCA9IDA7IC8qIFVzZWQgYnkgQUZfWERQIGFzIG5vdCBhdmFpbCBzaWduYWwgKi8KPj4+Pj4+Pj4+
ICsgICAgICAgfQo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+ICAgICAgICAgICByZXR1cm4gYnBmX3JlZGly
ZWN0X21hcCgmeHNrLCBjdHgtPnJ4X3F1ZXVlX2luZGV4LCBYRFBfUEFTUyk7Cj4+Pj4+Pj4+PiAg
ICB9Cj4+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hk
cF9od19tZXRhZGF0YS5jIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRh
ZGF0YS5jCj4+Pj4+Pj4+PiBpbmRleCA0MDBiZmUxOWFiZmUuLmYzZWMwN2NjZGM5NSAxMDA2NDQK
Pj4+Pj4+Pj4+IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRh
dGEuYwo+Pj4+Pj4+Pj4gKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19t
ZXRhZGF0YS5jCj4+Pj4+Pj4+PiBAQCAtMyw2ICszLDkgQEAKPj4+Pj4+Pj4+ICAgIC8qIFJlZmVy
ZW5jZSBwcm9ncmFtIGZvciB2ZXJpZnlpbmcgWERQIG1ldGFkYXRhIG9uIHJlYWwgSFcuIEZ1bmN0
aW9uYWwgdGVzdAo+Pj4+Pj4+Pj4gICAgICogb25seSwgZG9lc24ndCB0ZXN0IHRoZSBwZXJmb3Jt
YW5jZS4KPj4+Pj4+Pj4+ICAgICAqCj4+Pj4+Pj4+PiArICogQlBGLXByb2cgYnBmX3ByaW50ayBp
bmZvIG91dG91dCBjYW4gYmUgYWNjZXNzIHZpYQo+Pj4+Pj4+Pj4gKyAqIC9zeXMva2VybmVsL2Rl
YnVnL3RyYWNpbmcvdHJhY2VfcGlwZQo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBzL291dG91dC9vdXRwdXQv
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBGaXhlZCBpbiBWMwo+Pj4+Pj4+Cj4+Pj4+Pj4+IEJ1
dCBsZXQncyBtYXliZSBkcm9wIGl0PyBJZiB5b3Ugd2FudCB0byBtYWtlIGl0IG1vcmUgdXNhYmxl
LCBsZXQncwo+Pj4+Pj4+PiBoYXZlIGEgc2VwYXJhdGUgcGF0Y2ggdG8gZW5hYmxlIHRyYWNpbmcg
YW5kIHBlcmlvZGljYWxseSBkdW1wIGl0IHRvCj4+Pj4+Pj4+IHRoZSBjb25zb2xlIGluc3RlYWQg
KGFzIHByZXZpb3VzbHkgZGlzY3Vzc2VkKS4KPj4+Pj4+Pgo+Pj4+Pj4+IENhdCdpbmcgL3N5cy9r
ZXJuZWwvZGVidWcvdHJhY2luZy90cmFjZV9waXBlIHdvcmsgZm9yIG1lIHJlZ2FyZGxlc3Mgb2YK
Pj4+Pj4+PiBzZXR0aW5nIGluCj4+Pj4+Pj4gL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy9ldmVu
dHMvYnBmX3RyYWNlL2JwZl90cmFjZV9wcmludGsvZW5hYmxlCj4+Pj4+Pj4KPj4+Pj4+PiBXZSBs
aWtlbHkgbmVlZCBhIGZvbGxvd3VwIHBhdGNoIHRoYXQgYWRkcyBhIEJQRiBjb25maWcgc3dpdGNo
IHRoYXQgY2FuCj4+Pj4+Pj4gZGlzYWJsZSBicGZfcHJpbnRrIGNhbGxzLCBiZWNhdXNlIHRoaXMg
YWRkcyBvdmVyaGVhZCBhbmQgdGh1cyBhZmZlY3RzCj4+Pj4+Pj4gdGhlIHRpbWVzdGFtcHMuCj4+
Pj4+Pgo+Pj4+Pj4gTm8uIFRoaXMgaXMgYnkgZGVzaWduLgo+Pj4+Pj4gRG8gbm90IHVzZSBicGZf
cHJpbnRrKiBpbiBwcm9kdWN0aW9uLgoKSSBmdWxseSBhZ3JlZSBkbyBub3QgdXNlIGJwZl9wcmlu
dGsgaW4gKnByb2R1Y3Rpb24qLgoKPj4+Pj4KPj4+Pj4gQnV0IHRoYXQncyBub3QgZm9yIHRoZSBw
cm9kdWN0aW9uPyB4ZHBfaHdfbWV0YWRhdGEgaXMgYSBzbWFsbCB0b29sIHRvCj4+Pj4+IHZlcmlm
eSB0aGF0IHRoZSBtZXRhZGF0YSBiZWluZyBkdW1wZWQgaXMgY29ycmVjdCAoZHVyaW5nIHRoZQo+
Pj4+PiBkZXZlbG9wbWVudCkuCj4+Pj4+IFdlIGhhdmUgYSBwcm9wZXIgKGxlc3MgdmVyYm9zZSkg
c2VsZnRlc3QgaW4KPj4+Pj4ge3Byb2dzLHByb2dfdGVzdHN9L3hkcF9tZXRhZGF0YS5jIChvdmVy
IHZldGgpLgo+Pj4+PiBUaGlzIHhkcF9od19tZXRhZGF0YSB3YXMgc3VwcG9zZWQgdG8gYmUgdXNl
ZCBmb3IgcnVubmluZyBpdCBhZ2FpbnN0Cj4+Pj4+IHRoZSByZWFsIGhhcmR3YXJlLCBzbyBoYXZp
bmcgYXMgbXVjaCBkZWJ1Z2dpbmcgYXQgaGFuZCBhcyBwb3NzaWJsZQo+Pj4+PiBzZWVtcyBoZWxw
ZnVsPyAoYXQgbGVhc3QgaXQgd2FzIGhlbHBmdWwgdG8gbWUgd2hlbiBwbGF5aW5nIHdpdGggbWx4
NCkKCk15IGV4cGVyaWVuY2Ugd2hlbiBkZXZlbG9waW5nIHRoZXNlIGtmdW5jcyBmb3IgaWdjIChy
ZWFsIGhhcmR3YXJlKSwgdGhpcwoidG9vbCIgeGRwX2h3X21ldGFkYXRhIHdhcyBzdXBlciBoZWxw
ZnVsLCBiZWNhdXNlIGl0IHdhcyB2ZXJ5IHZlcmJvc2UKKGFuZCBJIHdhcyBqdWdnbGluZyByZWFk
aW5nIGNoaXAgcmVnaXN0ZXJzIEJFL0xFIGFuZCBzZWUgcGF0Y2gxIGEgYnVnZ3kKaW1wbGVtZW50
YXRpb24gZm9yIFJYLWhhc2gpLgoKQXMgSSB3cm90ZSBpbiBjb3Zlci1sZXR0ZXIsIEkgcmVjb21t
ZW5kIG90aGVyIGRyaXZlciBkZXZlbG9wZXJzIHRvIGRvCnRoZSBzYW1lLCBiZWNhdXNlIGl0IHJl
YWxseSBoZWxwIHNwZWVkIHVwIHRoZSBkZXZlbG9wbWVudC4gSW4gdGhlb3J5CnhkcF9od19tZXRh
ZGF0YSBkb2Vzbid0IGJlbG9uZyBpbiBzZWxmdGVzdHMgZGlyZWN0b3J5IGFuZCBJTUhPIGl0IHNo
b3VsZApoYXZlIGJlZW4gcGxhY2VkIGluIHNhbXBsZXMvYnBmLywgYnV0IGdpdmVuIHRoZSByZWxh
dGlvbnNoaXAgd2l0aCByZWFsCnNlbGZ0ZXN0IHtwcm9ncyxwcm9nX3Rlc3RzfS94ZHBfbWV0YWRh
dGEuYyBJIHRoaW5rIGl0IG1ha2VzIHNlbnNlIHRvCmtlZXAgaGVyZS4KCgo+Pj4+Cj4+Pj4gVGhl
IG9ubHkgdXNlIG9mIGJwZl9wcmludGsgaXMgZm9yIGRlYnVnZ2luZyBvZiBicGYgcHJvZ3MgdGhl
bXNlbHZlcy4KPj4+PiBJdCBzaG91bGQgbm90IGJlIHVzZWQgaW4gYW55IHRvb2wuCj4+Pgo+Pj4g
SG1tLCBnb29kIHBvaW50LiBJIGd1ZXNzIGl0IGFsc28gbWVhbnMgd2Ugd29uJ3QgaGF2ZSB0byBt
ZXNzIHdpdGgKPj4+IGVuYWJsaW5nL2R1bXBpbmcgZnRyYWNlIChhbmQgZG9uJ3QgbmVlZCB0aGlz
IGNvbW1lbnQgYWJvdXQgY2F0J2luZyB0aGUKPj4+IGZpbGUpLgo+Pj4gSmVzcGVyLCBtYXliZSB3
ZSBjYW4gaW5zdGVhZCBwYXNzIHRoZSBzdGF0dXMgb2YgdGhvc2UKPj4+IGJwZl94ZHBfbWV0YWRh
dGFfeHh4IGtmdW5jcyB2aWEgJ3N0cnVjdCB4ZHBfbWV0YSc/IEFuZCBkdW1wIHRoaXMgaW5mbwo+
Pj4gZnJvbSB0aGUgdXNlcnNwYWNlIGlmIG5lZWRlZC4KPj4KPj4gVGhlcmUgYXJlIHNvIG1hbnkg
b3RoZXIgd2F5cyBmb3IgYnBmIHByb2cgdG8gY29tbXVuaWNhdGUgd2l0aCB1c2VyIHNwYWNlLgo+
PiBVc2UgcmluZ2J1ZiwgcGVyZl9ldmVudCBidWZmZXIsIGdsb2JhbCB2YXJzLCBtYXBzLCBldGMu
Cj4+IHRyYWNlX3BpcGUgaXMgZGVidWcgb25seSBiZWNhdXNlIGl0J3MgZ2xvYmFsIGFuZCB3aWxs
IGNvbmZsaWN0IHdpdGgKPj4gYWxsIG90aGVyIGRlYnVnIHNlc3Npb25zLgoKSSB3YW50IHRvIGhp
Z2hsaWdodCBhYm92ZSBwYXJhZ3JhcGg6IEl0IGlzIHZlcnkgdHJ1ZSBmb3IgcHJvZHVjdGlvbgpj
b2RlLiAoQW55b25lIEdvb2dsaW5nIHRoaXMgcGF5IGF0dGVudGlvbiB0byBhYm92ZSBwYXJhZ3Jh
cGgpLgoKPiAKPiDwn5GNIG1ha2VzIHNlbnNlLCB0eSEgaG9wZWZ1bGx5IHdlIHdvbid0IGhhdmUg
dG8gYWRkIGEgc2VwYXJhdGUgY2hhbm5lbAo+IGZvciB0aG9zZSBhbmQgY2FuIChhYil1c2UgdGhl
IG1ldGFkYXRhIGFyZWEuCj4gCgpQcm9wb3NlZCBzb2x1dGlvbjogSG93IGFib3V0IGRlZmF1bHQg
ZGlzYWJsaW5nIHRoZSBicGZfcHJpbnRrJ3MgdmlhIGEgCm1hY3JvIGRlZmluZSwgYW5kIHRoZW4g
ZHJpdmVyIGRldmVsb3BlciBjYW4gbWFudWFsbHkgcmVlbmFibGUgdGhlbSAKZWFzaWx5IHZpYSBh
IHNpbmdsZSBkZWZpbmUsIHRvIGVuYWJsZSBhIGRlYnVnZ2luZyBtb2RlLgoKSSB3YXMgb25seSB3
YXRjaGluZyAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlX3BpcGUgd2hlbiBJIHdhcyAK
ZGVidWdnaW5nIGEgZHJpdmVyIGlzc3VlLiAgVGh1cywgYW4gZXh0cmEgc3RlcCBvZiBtb2RpZnlp
bmcgYSBzaW5nbGUgCmRlZmluZSBpbiBCUEYgc2VlbXMgZWFzaWVyLCB0aGFuIGluc3RydW1lbnRp
bmcgbXkgZHJpdmVyIHdpdGggcHJpbnRrLgoKLS1KZXNwZXIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
