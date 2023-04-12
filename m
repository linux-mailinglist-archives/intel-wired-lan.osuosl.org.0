Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BF56DF2F5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 13:17:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2108C61522;
	Wed, 12 Apr 2023 11:17:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2108C61522
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681298228;
	bh=xQvTGkf3BPBkvVkHEUi0EIB+DOZJof2ZZzhRgcJxPTk=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Cyw1Tq0W4uU4ZgtctMAjY/GQ5/MoUI1tW1Q91dm4LDBk7M4Kn6LyYk42n4I72Xn5b
	 CbUGKhJJXfwLdZFVUqpvIJe84dv6zhlfHmXWUyvtkXAFD7/nPgP5oyxlzz6qz1T93/
	 mClPVA0hqzqAEpeN5wNAyuTjIzXGO7uDdvmeOpfylKryUKrh6yZLaHJ4opMTNvPUhQ
	 sDloWmOuD4ESK3cPU5r4Y74blt0k6Yn3SjLA2mUvMEAkvd03Qkzkwo/C8t4+12Ui//
	 zH6xEg+JJN6mt0EtwKOb53lfOPp1AheB6nIfxSIdEaPfxOai9rJOeDpz87UJT5CAWA
	 qXC8gyDYNg4ew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S8RGEJATtsDg; Wed, 12 Apr 2023 11:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1A1D6151A;
	Wed, 12 Apr 2023 11:17:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1A1D6151A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8A411BF417
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8060B83B37
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:17:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8060B83B37
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aPTYQtzr73xi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 11:16:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E97D83B35
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E97D83B35
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:16:59 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-125-fAh3Y65EO9y86IXJKT8ehg-1; Wed, 12 Apr 2023 07:16:56 -0400
X-MC-Unique: fAh3Y65EO9y86IXJKT8ehg-1
Received: by mail-ed1-f70.google.com with SMTP id
 x1-20020a50ba81000000b0050234a3ad75so5095257ede.23
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 04:16:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681298215; x=1683890215;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ehvr1d/jbxZ+YWSEUG0+v0Njo7GXylIVh8YAQAeYlBM=;
 b=IOq7RwDdPIRp9l5B+ouAIQmPkQlXBMCljria1tHA7mqfj0sku0Vy7QM/fkHJ0zccJr
 mGuNYrLRPOk3e1xKKujh0qik2v3vy4wiYVQMqShDoooAavP18q7ifTJZxURvaAmPIUwg
 lVRAxi03u+gIB6SCGkdJ1yv300bKYyGb+ik9REotgQTpSc3VCnU+PF66TBpWXyGsnAem
 ELyZ8Ez1sjuOhe67YHBR4y9TrIiGPQgtsELB8S47LKtUFDJu4/z5qK7IE6V2lnx2O/L4
 zzzGZdT9UrA0KX/f5XnLzE03g7SyHdSEabQCP8EPZ+dZnR2TnE5Xl5YbiziGr/piEOeF
 4dBQ==
X-Gm-Message-State: AAQBX9cqRpWcU+2pgSVPdU3wtMAnC1QbB1/VMOUlBa53RO52WM3PNIlY
 usUPK3ZGef8ZfNguYjGBQ0Ob2jyG1zXfS1NwARNVa7/wuRh/LG8i+pPpxmhWT/lfsD49Rih7GVU
 ATY0zS7Zr9Mz2PUyptTgqimKxod/J2A==
X-Received: by 2002:a17:906:fae0:b0:931:624b:680c with SMTP id
 lu32-20020a170906fae000b00931624b680cmr5523439ejb.29.1681298215786; 
 Wed, 12 Apr 2023 04:16:55 -0700 (PDT)
X-Google-Smtp-Source: AKy350aU/WJ/sIwojTfk8adw2TCi9w7hbQ5lTxFZjvt+7P+pwVRe6sbMuWkO8uddJ/I5SF7pwr+ocA==
X-Received: by 2002:a17:906:fae0:b0:931:624b:680c with SMTP id
 lu32-20020a170906fae000b00931624b680cmr5523398ejb.29.1681298215440; 
 Wed, 12 Apr 2023 04:16:55 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 hz16-20020a1709072cf000b0094e09ceafc9sm1978330ejc.44.2023.04.12.04.16.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Apr 2023 04:16:54 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <474201b2-d98c-f3ab-aed9-b008bb188d0b@redhat.com>
Date: Wed, 12 Apr 2023 13:16:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Simon Horman <simon.horman@corigine.com>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
 <168098189148.96582.2939096178283411428.stgit@firesoul>
 <ZDQlYqwmyG4Y73Vb@corigine.com>
In-Reply-To: <ZDQlYqwmyG4Y73Vb@corigine.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681298218;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ehvr1d/jbxZ+YWSEUG0+v0Njo7GXylIVh8YAQAeYlBM=;
 b=ZyH+vfuEBKNDVTkfcNXC1RtWrcRUVC8vyeguvIK5MWOkHSljBRugVND90FlNkYzAvh5RP7
 KuqVGFV5HK/xefIkcyaCzcyGwl7D6Sy2mJYxcoCRFS+MBQde/HQckbHNWN8UHkNFsg8C6R
 OwKkuhovVIK1cg8+7NJ85oaMlh7RiUQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZyH+vfuE
Subject: Re: [Intel-wired-lan] [PATCH bpf V7 3/7] xdp: rss hash types
 representation
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, boon.leong.ong@intel.com, hawk@kernel.org,
 xdp-hints@xdp-project.net, daniel@iogearbox.net, linux-rdma@vger.kernel.org,
 john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, kuba@kernel.org,
 pabeni@redhat.com, martin.lau@kernel.org, larysa.zaremba@intel.com,
 leon@kernel.org, netdev@vger.kernel.org,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vu?= =?UTF-8?Q?sen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMC8wNC8yMDIzIDE3LjA0LCBTaW1vbiBIb3JtYW4gd3JvdGU6Cj4gT24gU2F0LCBBcHIg
MDgsIDIwMjMgYXQgMDk6MjQ6NTFQTSArMDIwMCwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90
ZToKPj4gVGhlIFJTUyBoYXNoIHR5cGUgc3BlY2lmaWVzIHdoYXQgcG9ydGlvbiBvZiBwYWNrZXQg
ZGF0YSBOSUMgaGFyZHdhcmUgdXNlZAo+PiB3aGVuIGNhbGN1bGF0aW5nIFJTUyBoYXNoIHZhbHVl
LiBUaGUgUlNTIHR5cGVzIGFyZSBmb2N1c2VkIG9uIEludGVybmV0Cj4+IHRyYWZmaWMgcHJvdG9j
b2xzIGF0IE9TSSBsYXllcnMgTDMgYW5kIEw0LiBMMiAoZS5nLiBBUlApIG9mdGVuIGdldCBoYXNo
Cj4+IHZhbHVlIHplcm8gYW5kIG5vIFJTUyB0eXBlLiBGb3IgTDMgZm9jdXNlZCBvbiBJUHY0IHZz
LiBJUHY2LCBhbmQgTDQKPj4gcHJpbWFyaWx5IFRDUCB2cyBVRFAsIGJ1dCBzb21lIGhhcmR3YXJl
IHN1cHBvcnRzIFNDVFAuCj4+Cj4+IEhhcmR3YXJlIFJTUyB0eXBlcyBhcmUgZGlmZmVyZW50bHkg
ZW5jb2RlZCBmb3IgZWFjaCBoYXJkd2FyZSBOSUMuIE1vc3QKPj4gaGFyZHdhcmUgcmVwcmVzZW50
IFJTUyBoYXNoIHR5cGUgYXMgYSBudW1iZXIuIERldGVybWluaW5nIEwzIHZzIEw0IG9mdGVuCj4+
IHJlcXVpcmVzIGEgbWFwcGluZyB0YWJsZSBhcyB0aGVyZSBvZnRlbiBpc24ndCBhIHBhdHRlcm4g
b3Igc29ydGluZwo+PiBhY2NvcmRpbmcgdG8gSVNPIGxheWVyLgo+Pgo+PiBUaGUgcGF0Y2ggaW50
cm9kdWNlIGEgWERQIFJTUyBoYXNoIHR5cGUgKGVudW0geGRwX3Jzc19oYXNoX3R5cGUpIHRoYXQK
Pj4gY29udGFpbiBjb21iaW5hdGlvbnMgdG8gYmUgdXNlZCBieSBkcml2ZXJzLCB3aGljaCBnZXRz
IGJ1aWxkIHVwIHdpdGggYml0cwo+PiBmcm9tIGVudW0geGRwX3Jzc190eXBlX2JpdHMuIEJvdGgg
ZW51bSB4ZHBfcnNzX3R5cGVfYml0cyBhbmQKPj4geGRwX3Jzc19oYXNoX3R5cGUgZ2V0IGV4cG9z
ZWQgdG8gQlBGIHZpYSBCVEYsIGFuZCBpdCBpcyB1cCB0byB0aGUKPj4gQlBGLXByb2dyYW1tZXIg
dG8gbWF0Y2ggdXNpbmcgdGhlc2UgZGVmaW5lcy4KPj4KPj4gVGhpcyBwcm9wb3NhbCBjaGFuZ2Ug
dGhlIGtmdW5jIEFQSSBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goKSBhZGRpbmcKPj4gYSBwb2lu
dGVyIHZhbHVlIGFyZ3VtZW50IGZvciBwcm92aWRlIHRoZSBSU1MgaGFzaCB0eXBlLgo+Pgo+PiBD
aGFuZ2UgZnVuY3Rpb24gc2lnbmF0dXJlIGZvciBhbGwgeG1vX3J4X2hhc2ggY2FsbHMgaW4gZHJp
dmVycyB0byBtYWtlIGl0Cj4+IGNvbXBpbGUuIFRoZSBSU1MgdHlwZSBpbXBsZW1lbnRhdGlvbnMg
Zm9yIGVhY2ggZHJpdmVyIGNvbWVzIGFzIHNlcGFyYXRlCj4+IHBhdGNoZXMuCj4+Cj4+IEZpeGVz
OiAzZDc2YTRkM2Q0ZTUgKCJicGY6IFhEUCBtZXRhZGF0YSBSWCBrZnVuY3MiKQo+PiBTaWduZWQt
b2ZmLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0LmNvbT4KPj4gQWNr
ZWQtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+PiBBY2tl
ZC1ieTogU3RhbmlzbGF2IEZvbWljaGV2IDxzZGZAZ29vZ2xlLmNvbT4KPj4gLS0tCj4+ICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NC9lbl9yeC5jICAgICAgIHwgICAgMyArCj4+
ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2VuL3hkcC5jIHwgICAg
MyArCj4+ICAgZHJpdmVycy9uZXQvdmV0aC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgICAgMyArCj4+ICAgaW5jbHVkZS9saW51eC9uZXRkZXZpY2UuaCAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAgMyArCj4+ICAgaW5jbHVkZS9uZXQveGRwLmggICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICA0NSArKysrKysrKysrKysrKysrKysrKysrCj4+ICAgbmV0L2NvcmUv
eGRwLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxMCArKysrLQo+PiAg
IDYgZmlsZXMgY2hhbmdlZCwgNjIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDQvZW5fcnguYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDQvZW5fcnguYwo+PiBpbmRleCA0YjVl
NDU5YjZkNDkuLjczZDEwYWE0YzUwMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvbWVsbGFub3gvbWx4NC9lbl9yeC5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21l
bGxhbm94L21seDQvZW5fcnguYwo+PiBAQCAtNjgxLDcgKzY4MSw4IEBAIGludCBtbHg0X2VuX3hk
cF9yeF90aW1lc3RhbXAoY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCB1NjQgKnRpbWVzdGFtcCkK
Pj4gICAJcmV0dXJuIDA7Cj4+ICAgfQo+PiAgIAo+PiAtaW50IG1seDRfZW5feGRwX3J4X2hhc2go
Y29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCB1MzIgKmhhc2gpCj4+ICtpbnQgbWx4NF9lbl94ZHBf
cnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIHUzMiAqaGFzaCwKPj4gKwkJCWVudW0g
eGRwX3Jzc19oYXNoX3R5cGUgKnJzc190eXBlKQo+PiAgIHsKPj4gICAJc3RydWN0IG1seDRfZW5f
eGRwX2J1ZmYgKl9jdHggPSAodm9pZCAqKWN0eDsKPj4gICAKPiAKPiBIaSBKZXNwZXIsCj4gCj4g
SSB0aGluayB5b3UgYWxzbyBuZWVkIHRvIHVwZGF0ZSB0aGUgZGVjbGFyYXRpb24gb2YgbWx4NF9l
bl94ZHBfcnhfaGFzaCgpCj4gaW4gbWx4NF9lbi5oLgo+IAoKVGhhbmtzIGEgbG90IGZvciBzcG90
dGluZyB0aGlzLiBmaXhlZCBpbiBWOC4KLS1KZXNwZXIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
