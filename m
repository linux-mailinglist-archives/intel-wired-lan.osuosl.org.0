Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671576DF3B6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 13:31:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0261441D3B;
	Wed, 12 Apr 2023 11:31:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0261441D3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681299092;
	bh=2i4T8DruAzzY6PIgE4H5JgptOwqFBU6yF9MuZY1DTp4=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yzh5xY0PxR3wzk9sy7D3blT3oarNf6vxkaBqUPF9s+8Mv/9JND5qrIBPwWXQFjkRo
	 7R/2wuoTiURcADO49d2wIRQbQykSVRAYnIB34B7DOgrVVzmi/F+PMpv0RBxqsHDmgf
	 HnN8qbvly2NQbwcaZl6vpjT+vZbla05hPkUWjFESUUyZq4aWBhgZrR7W0GE4jhWhJA
	 wtSJ91YDDAxUxGp/yy3T0xf56RZ8W3YWz38TE6AjyLXyJ72zqJQ0bdkSX9yQcIMITO
	 MF0fjaEesxgqReXlUsTzqDjjl9i6krIdhgqnoVLIP1kOs5Ki1SG+xFT+kChBkV/gLd
	 ytASgX82t0Lcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2KtunHa30Jf9; Wed, 12 Apr 2023 11:31:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C49DA40B60;
	Wed, 12 Apr 2023 11:31:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C49DA40B60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FC421BF417
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB97B83B30
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:31:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB97B83B30
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CjjZcvFnQUHO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 11:31:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9212F83AFF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9212F83AFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:31:24 +0000 (UTC)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-55-N4FSh-qNOuG8tjtYt7Yimw-1; Wed, 12 Apr 2023 07:31:22 -0400
X-MC-Unique: N4FSh-qNOuG8tjtYt7Yimw-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-94a56ea01e9so130113266b.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 04:31:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681299081; x=1683891081;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Nk2HN4LYcyDaWmfUhz3C+OW0ZEf1uFXTpNavnDkV0cc=;
 b=ONYtMVfBp1HwYlvCq36HgDf2qlLi9d3jneRPjdRhHTEkEksu2KMdkwkl5APEluEgQc
 xSHFvI6yOL8JMc7ft2n3i0MbVqVemfeZI/Ojpduf4fh2bXi5b18UE6Rh9VbC+IUjbwfp
 IUEgwLD5hsqcZCIWbTpyiKjjJquBQnJmZZKpv7X1HozULg5yLKjCnI8pasS6uJaP0gaO
 zVxvSni1LqFAlAfzLADBkthLxbPkkCOYxdmEvBoqIr72heeJcOncxq6zjY4mBxOB7MI2
 Qk1uSnHGcngnI3HHrWdHljeU6KU5XjzGFfE6MRVkZM9ryy8ZoqUIRepvNLb7ocz5xSwF
 sf8w==
X-Gm-Message-State: AAQBX9eCPu89lb3JK/ZupcrZY29mTL7dfK4MtYiFsJfLPe+qTkwbFgrG
 t7i1csw0MSC+XyWZDfnQIMgR0XxUWjLVtxjw/9pPm5JU0HnxJlUwJOXw6J3NfwO9W3y0XPIPHBp
 vH/w3oFrR6w79Ut2IjrrC/HUfiaR87w==
X-Received: by 2002:a05:6402:752:b0:504:b5e2:1106 with SMTP id
 p18-20020a056402075200b00504b5e21106mr1901053edy.31.1681299081165; 
 Wed, 12 Apr 2023 04:31:21 -0700 (PDT)
X-Google-Smtp-Source: AKy350bWSnMhtYTS7XybJW7QFtVttBmNYOBb1gK7QmiwkJ3R5PmWWhPKTh95b+l/GZUnSauQBragxw==
X-Received: by 2002:a05:6402:752:b0:504:b5e2:1106 with SMTP id
 p18-20020a056402075200b00504b5e21106mr1901027edy.31.1681299080782; 
 Wed, 12 Apr 2023 04:31:20 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 o2-20020a056402444200b00501c2a9e16dsm6523178edb.74.2023.04.12.04.31.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Apr 2023 04:31:20 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <8cd2d200-09ec-57c2-0619-963dfe5efd58@redhat.com>
Date: Wed, 12 Apr 2023 13:31:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Simon Horman <simon.horman@corigine.com>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
 <168098189656.96582.16141211495116669329.stgit@firesoul>
 <ZDQnFmZdESpF1BEz@corigine.com>
In-Reply-To: <ZDQnFmZdESpF1BEz@corigine.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681299083;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Nk2HN4LYcyDaWmfUhz3C+OW0ZEf1uFXTpNavnDkV0cc=;
 b=iSSNlxBG3vCcLR4kZk41eUoiMccBNsEhhO230ppJs46jzDaBfRiqoMvwiCjNmIePApShlD
 /eThYrWxzEme9B5KNfgNH8RL4XAA7QhVL7rs6hONkry5BRujebhT824YXec/sRXm4leJrw
 ONq2+3bQlPEbrbF9JwZRDBOWxEQmbE0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=iSSNlxBG
Subject: Re: [Intel-wired-lan] [PATCH bpf V7 4/7] mlx5:
 bpf_xdp_metadata_rx_hash add xdp rss hash type
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

CgpPbiAxMC8wNC8yMDIzIDE3LjExLCBTaW1vbiBIb3JtYW4gd3JvdGU6Cj4gT24gU2F0LCBBcHIg
MDgsIDIwMjMgYXQgMDk6MjQ6NTZQTSArMDIwMCwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90
ZToKPj4gVXBkYXRlIEFQSSBmb3IgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKCkgd2l0aCBhcmcg
Zm9yIHhkcCByc3MgaGFzaCB0eXBlCj4+IHZpYSBtYXBwaW5nIHRhYmxlLgo+Pgo+PiBUaGUgbWx4
NSBoYXJkd2FyZSBjYW4gYWxzbyBpZGVudGlmeSBhbmQgUlNTIGhhc2ggSVBTRUMuICBUaGlzIGlu
ZGljYXRlCj4+IGhhc2ggaW5jbHVkZXMgU1BJIChTZWN1cml0eSBQYXJhbWV0ZXJzIEluZGV4KSBh
cyBwYXJ0IG9mIElQU0VDIGhhc2guCj4+Cj4+IEV4dGVuZCB4ZHAgY29yZSBlbnVtIHhkcF9yc3Nf
aGFzaF90eXBlIHdpdGggSVBTRUMgaGFzaCB0eXBlLgo+Pgo+PiBGaXhlczogYmM4ZDQwNWIxYmE5
ICgibmV0L21seDVlOiBTdXBwb3J0IFJYIFhEUCBtZXRhZGF0YSIpCj4+IFNpZ25lZC1vZmYtYnk6
IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRoYXQuY29tPgo+PiBBY2tlZC1ieTog
VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4+IEFja2VkLWJ5OiBT
dGFuaXNsYXYgRm9taWNoZXYgPHNkZkBnb29nbGUuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUvZW4veGRwLmMgfCAgIDYwICsrKysrKysrKysr
KysrKysrKysrKysKPj4gICBpbmNsdWRlL2xpbnV4L21seDUvZGV2aWNlLmggICAgICAgICAgICAg
ICAgICAgICAgfCAgIDE0ICsrKystCj4+ICAgaW5jbHVkZS9uZXQveGRwLmggICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAgMiArCj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCA3MyBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2VuL3hkcC5jIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvbWVsbGFub3gvbWx4NS9jb3JlL2VuL3hkcC5jCj4+IGluZGV4IGVmZTYwOWY4ZTNhYS4uOTdl
ZjFkZjk0ZDUwIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9t
bHg1L2NvcmUvZW4veGRwLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gv
bWx4NS9jb3JlL2VuL3hkcC5jCj4+IEBAIC0zNCw2ICszNCw3IEBACj4+ICAgI2luY2x1ZGUgPG5l
dC94ZHBfc29ja19kcnYuaD4KPj4gICAjaW5jbHVkZSAiZW4veGRwLmgiCj4+ICAgI2luY2x1ZGUg
ImVuL3BhcmFtcy5oIgo+PiArI2luY2x1ZGUgPGxpbnV4L2JpdGZpZWxkLmg+Cj4+ICAgCj4+ICAg
aW50IG1seDVlX3hkcF9tYXhfbXR1KHN0cnVjdCBtbHg1ZV9wYXJhbXMgKnBhcmFtcywgc3RydWN0
IG1seDVlX3hza19wYXJhbSAqeHNrKQo+PiAgIHsKPj4gQEAgLTE2OSwxNSArMTcwLDcyIEBAIHN0
YXRpYyBpbnQgbWx4NWVfeGRwX3J4X3RpbWVzdGFtcChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgs
IHU2NCAqdGltZXN0YW1wKQo+PiAgIAlyZXR1cm4gMDsKPj4gICB9Cj4+ICAgCj4+ICsvKiBNYXBw
aW5nIEhXIFJTUyBUeXBlIGJpdHMgQ1FFX1JTU19IVFlQRV9JUCArIENRRV9SU1NfSFRZUEVfTDQg
aW50byA0LWJpdHMqLwo+PiArI2RlZmluZSBSU1NfVFlQRV9NQVhfVEFCTEUJMTYgLyogNC1iaXRz
IG1heCAxNiBlbnRyaWVzICovCj4+ICsjZGVmaW5lIFJTU19MNAkJR0VOTUFTSygxLCAwKQo+PiAr
I2RlZmluZSBSU1NfTDMJCUdFTk1BU0soMywgMikgLyogU2FtZSBhcyBDUUVfUlNTX0hUWVBFX0lQ
ICovCj4+ICsKPj4gKy8qIFZhbGlkIGNvbWJpbmF0aW9ucyBvZiBDUUVfUlNTX0hUWVBFX0lQICsg
Q1FFX1JTU19IVFlQRV9MNCBzb3J0ZWQgbnVtZXJpY2FsICovCj4+ICtlbnVtIG1seDVfcnNzX2hh
c2hfdHlwZSB7Cj4+ICsJUlNTX1RZUEVfTk9fSEFTSAk9IChGSUVMRF9QUkVQX0NPTlNUKFJTU19M
MywgQ1FFX1JTU19JUF9OT05FKSB8Cj4+ICsJCQkJICAgRklFTERfUFJFUF9DT05TVChSU1NfTDQs
IENRRV9SU1NfTDRfTk9ORSkpLAo+PiArCVJTU19UWVBFX0wzX0lQVjQJPSAoRklFTERfUFJFUF9D
T05TVChSU1NfTDMsIENRRV9SU1NfSVBWNCkgfAo+PiArCQkJCSAgIEZJRUxEX1BSRVBfQ09OU1Qo
UlNTX0w0LCBDUUVfUlNTX0w0X05PTkUpKSwKPj4gKwlSU1NfVFlQRV9MNF9JUFY0X1RDUAk9IChG
SUVMRF9QUkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUFY0KSB8Cj4+ICsJCQkJICAgRklFTERf
UFJFUF9DT05TVChSU1NfTDQsIENRRV9SU1NfTDRfVENQKSksCj4+ICsJUlNTX1RZUEVfTDRfSVBW
NF9VRFAJPSAoRklFTERfUFJFUF9DT05TVChSU1NfTDMsIENRRV9SU1NfSVBWNCkgfAo+PiArCQkJ
CSAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X1VEUCkpLAo+PiArCVJTU19U
WVBFX0w0X0lQVjRfSVBTRUMJPSAoRklFTERfUFJFUF9DT05TVChSU1NfTDMsIENRRV9SU1NfSVBW
NCkgfAo+PiArCQkJCSAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X0lQU0VD
KSksCj4+ICsJUlNTX1RZUEVfTDNfSVBWNgk9IChGSUVMRF9QUkVQX0NPTlNUKFJTU19MMywgQ1FF
X1JTU19JUFY2KSB8Cj4+ICsJCQkJICAgRklFTERfUFJFUF9DT05TVChSU1NfTDQsIENRRV9SU1Nf
TDRfTk9ORSkpLAo+PiArCVJTU19UWVBFX0w0X0lQVjZfVENQCT0gKEZJRUxEX1BSRVBfQ09OU1Qo
UlNTX0wzLCBDUUVfUlNTX0lQVjYpIHwKPj4gKwkJCQkgICBGSUVMRF9QUkVQX0NPTlNUKFJTU19M
NCwgQ1FFX1JTU19MNF9UQ1ApKSwKPj4gKwlSU1NfVFlQRV9MNF9JUFY2X1VEUAk9IChGSUVMRF9Q
UkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUFY2KSB8Cj4+ICsJCQkJICAgRklFTERfUFJFUF9D
T05TVChSU1NfTDQsIENRRV9SU1NfTDRfVURQKSksCj4+ICsJUlNTX1RZUEVfTDRfSVBWNl9JUFNF
Qwk9IChGSUVMRF9QUkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUFY2KSB8Cj4+ICsJCQkJICAg
RklFTERfUFJFUF9DT05TVChSU1NfTDQsIENRRV9SU1NfTDRfSVBTRUMpKSwKPj4gK30gbWx4NV9y
c3NfaGFzaF90eXBlOwo+IAo+IEhpIEplc3BlciwKPiAKPiBTcGFyc2Ugc2VlbXMgY29uZnVzZWQg
YWJvdXQgJ21seDVfcnNzX2hhc2hfdHlwZScgb24gdGhlIGxpbmUgYWJvdmUuCj4gQW5kIEkgYW0g
dG9vLiBQZXJoYXBzIGl0IGNhbiBiZSByZW1vdmVkPwo+IAoKWWVzLCBpdCBjYW4gYmUgcmVtb3Zl
ZCAoaW4gVjgpLgoKVGhlIHJlYXNvbi90cmljayBmb3IgZG9pbmcgdGhpcyB3YXMgdG8gZ2V0IGNv
bXBpbGVyIHRvIGNyZWF0ZSB0aGUgZW51bQpzeW1ib2wsIHdoaWNoIGFsbG93ZWQgbWUgdG8gaW5z
cGVjdCB0aGUgdHlwZSB1c2luZyBwYWhvbGUgKHNlZSBjbWQKYmVsb3cpLiAgKFRoaXMgd2lsbCBh
bHNvIGV4cG9zZSB0aGlzIHRvIEJURiwgYnV0IGl0IGlzbid0IGFjdHVhbGx5CnVzZWZ1bCB0byBr
ZWVwIGFyb3VuZCBmb3IgQlRGLCBzbyBJIHdpbGwgcmVtb3ZlIGl0IGluIFY4LikKCgokIHBhaG9s
ZSAtQyBtbHg1X3Jzc19oYXNoX3R5cGUgCmRyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21s
eDUvY29yZS9lbi94ZHAubwplbnVtIG1seDVfcnNzX2hhc2hfdHlwZSB7CglSU1NfVFlQRV9OT19I
QVNIICAgICAgID0gMCwKCVJTU19UWVBFX0wzX0lQVjQgICAgICAgPSA0LAoJUlNTX1RZUEVfTDRf
SVBWNF9UQ1AgICA9IDUsCglSU1NfVFlQRV9MNF9JUFY0X1VEUCAgID0gNiwKCVJTU19UWVBFX0w0
X0lQVjRfSVBTRUMgPSA3LAoJUlNTX1RZUEVfTDNfSVBWNiAgICAgICA9IDgsCglSU1NfVFlQRV9M
NF9JUFY2X1RDUCAgID0gOSwKCVJTU19UWVBFX0w0X0lQVjZfVURQICAgPSAxMCwKCVJTU19UWVBF
X0w0X0lQVjZfSVBTRUMgPSAxMSwKfTsKClRoaXMgaXMgcHJhY3RpY2FsIHRvIGZvciByZXZpZXdl
cnMgdG8gc2VlIGlmIGJlbG93IGNvZGUgaXMgY29ycmVjdDoKCiA+ICsvKiBJbnZhbGlkIGNvbWJp
bmF0aW9ucyB3aWxsIHNpbXBseSByZXR1cm4gemVybywgYWxsb3dzIG5vIGJvdW5kYXJ5IApjaGVj
a3MgKi8KID4gK3N0YXRpYyBjb25zdCBlbnVtIHhkcF9yc3NfaGFzaF90eXBlIAptbHg1X3hkcF9y
c3NfdHlwZVtSU1NfVFlQRV9NQVhfVEFCTEVdID0gewogPiArCVtSU1NfVFlQRV9OT19IQVNIXQkg
PSBYRFBfUlNTX1RZUEVfTk9ORSwKID4gKwlbMV0JCQkgPSBYRFBfUlNTX1RZUEVfTk9ORSwgLyog
SW1wbGljaXQgemVybyAqLwogPiArCVsyXQkJCSA9IFhEUF9SU1NfVFlQRV9OT05FLCAvKiBJbXBs
aWNpdCB6ZXJvICovCiA+ICsJWzNdCQkJID0gWERQX1JTU19UWVBFX05PTkUsIC8qIEltcGxpY2l0
IHplcm8gKi8KID4gKwlbUlNTX1RZUEVfTDNfSVBWNF0JID0gWERQX1JTU19UWVBFX0wzX0lQVjQs
CiA+ICsJW1JTU19UWVBFX0w0X0lQVjRfVENQXQkgPSBYRFBfUlNTX1RZUEVfTDRfSVBWNF9UQ1As
CiA+ICsJW1JTU19UWVBFX0w0X0lQVjRfVURQXQkgPSBYRFBfUlNTX1RZUEVfTDRfSVBWNF9VRFAs
CiA+ICsJW1JTU19UWVBFX0w0X0lQVjRfSVBTRUNdID0gWERQX1JTU19UWVBFX0w0X0lQVjRfSVBT
RUMsCiA+ICsJW1JTU19UWVBFX0wzX0lQVjZdCSA9IFhEUF9SU1NfVFlQRV9MM19JUFY2LAogPiAr
CVtSU1NfVFlQRV9MNF9JUFY2X1RDUF0JID0gWERQX1JTU19UWVBFX0w0X0lQVjZfVENQLAogPiAr
CVtSU1NfVFlQRV9MNF9JUFY2X1VEUF0gICA9IFhEUF9SU1NfVFlQRV9MNF9JUFY2X1VEUCwKID4g
KwlbUlNTX1RZUEVfTDRfSVBWNl9JUFNFQ10gPSBYRFBfUlNTX1RZUEVfTDRfSVBWNl9JUFNFQywK
ID4gKwlbMTJdCQkJID0gWERQX1JTU19UWVBFX05PTkUsIC8qIEltcGxpY2l0IHplcm8gKi8KID4g
KwlbMTNdCQkJID0gWERQX1JTU19UWVBFX05PTkUsIC8qIEltcGxpY2l0IHplcm8gKi8KID4gKwlb
MTRdCQkJID0gWERQX1JTU19UWVBFX05PTkUsIC8qIEltcGxpY2l0IHplcm8gKi8KID4gKwlbMTVd
CQkJID0gWERQX1JTU19UWVBFX05PTkUsIC8qIEltcGxpY2l0IHplcm8gKi8KID4gK307Cgo+IGRy
aXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDUvY29yZS9lbi94ZHAuYzoxOTg6Mzogd2Fy
bmluZzogc3ltYm9sICdtbHg1X3Jzc19oYXNoX3R5cGUnIHdhcyBub3QgZGVjbGFyZWQuIFNob3Vs
ZCBpdCBiZSBzdGF0aWM/Cj4gCj4gLi4uCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
