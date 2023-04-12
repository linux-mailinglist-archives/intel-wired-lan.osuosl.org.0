Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6296DFE23
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 20:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2E5D613E1;
	Wed, 12 Apr 2023 18:57:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2E5D613E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681325828;
	bh=FrzfNio3hAYLu8GqlvNVTF/kLvFvonM3/1GMSciH70Y=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u3GBxNLS2y/viZ670e3DGKW5mPzhOttBs1tSJHgFoexYXaxPh+lpADwpdnXzowDLR
	 Vy3nLnD5I7wJ0tOp1CIdgspOIM8w8MwCNMV6C8kstv3aXpXzzAAq+4eFp0hWnaK0yP
	 nOQxZibw9VHEH5Rkdj0QX0OSYib84T3GWtHISE1a165Bcv61iplPepXc2guroMSSig
	 RfVi8h2BPiEZZaKOmPdwBWn396ygpLRF7OIDuA2zym8aNjh6WxMFfuNyt6MYDq2dpb
	 n4wsBaeF954StISkvFD1Am3dgwmU8r8uwyrmXQ+JIWl/OXO5qLEp3UGiYOZ8IYwUfw
	 Z3MiLk0sVYSYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DEaDQNKuRN8b; Wed, 12 Apr 2023 18:57:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A33D61112;
	Wed, 12 Apr 2023 18:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A33D61112
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EC321BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 18:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F04644070F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 18:57:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F04644070F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RW-Sf1pT4JJX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 18:57:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2460400AB
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2460400AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 18:57:01 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id 191so2439016pga.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:57:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681325821;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sHYXkYaef6xMNFmaZnkKzH+IKK7bhNbi9t2F6EAC6M8=;
 b=M1o+20jwaCD7Jvq+m40frcMo28LGVgmQmmtT7C3uj95rzI9D1zMOZeQnOwncWXSG+L
 qy47dpfbpaPR61BWSRpwZzPbfasS+ZLR1JvyLQ+LZHuFCAMiGtoKZZ6dV0vqRcA/Uey3
 LwdyYOym/in2a58xDSwERIrfu0hCHQHxH5pmu/1JYxO//gpAeAHTDEjufVpFJQxaScDT
 rpN72nD/ehw9vJQuc86TBrF2jGm4Fm5yFWKsxy8qseg/J9sG+Hxy7ysTOs6ZVBXg9H48
 tHBRkvSGJqXOPWK+roIw2NaJSJpPRICuhJlv5yvpIGlddXUT2OTCw5Z8DaA9bW0c1f0Z
 ConQ==
X-Gm-Message-State: AAQBX9epB0Mq8+7N8Zz7zhD5vD16T2c7RyoASIdS5++8colz4+ZUtIar
 s0Ckf8AWbaQgZ1c7l9hwsLGiXwKNQvzVTv8Fqbbm8Q==
X-Google-Smtp-Source: AKy350asSOWvzYYWk3xZPCNn85M1GUh5aXVd/UqL2CaLUxUIrW5LUiHM1WCh8gu/XhXgKmAXccrklI07joG66CYJ6E4=
X-Received: by 2002:a65:4681:0:b0:513:6b94:8907 with SMTP id
 h1-20020a654681000000b005136b948907mr880151pgr.1.1681325820765; Wed, 12 Apr
 2023 11:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <168132448251.317773.2526885806604122764.stgit@firesoul>
 <168132451707.317773.15960209122204110352.stgit@firesoul>
In-Reply-To: <168132451707.317773.15960209122204110352.stgit@firesoul>
From: Stanislav Fomichev <sdf@google.com>
Date: Wed, 12 Apr 2023 11:56:49 -0700
Message-ID: <CAKH8qBu0B1tQBKtGp0-n8eet+4rQRTPE3rrCr5Ve0CG6uYR7Kg@mail.gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1681325821;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sHYXkYaef6xMNFmaZnkKzH+IKK7bhNbi9t2F6EAC6M8=;
 b=TuoQ6JVKp2k/cFPXNyeuO/F/TOiztKMjN9sXg8H64JYl6kg3bdh2aWRaJL6RRsNcKW
 DJOzoEtWM9RiDETkmdPHNEJQUN+f4QvXeR28ACr0ns+ASVmBQTaFxSYOJguvjPSXOf/L
 1A4RSQ6Q16cm87R23Tqns/d9AfqB7Tb41aTuaFulG/wxXXKGEK8DcriRQVZne1xIxoIa
 wrOUXDRrrYKApE4p6AVzkwq942bKDane/X3ICADPACDDMki5/AEJkV0+9eHSOdLC/1ni
 j8Y+H2FjR7EyDfl1hNal8++dP0IIQNIgQHybab0EHhxH23u5mcmzQakJzPmfMb5rsN4f
 FtUw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=TuoQ6JVK
Subject: Re: [Intel-wired-lan] [PATCH bpf V9 1/6] selftests/bpf:
 xdp_hw_metadata remove bpf_printk and add counters
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
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, martin.lau@kernel.org, larysa.zaremba@intel.com,
 leon@kernel.org, netdev@vger.kernel.org,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBBcHIgMTIsIDIwMjMgYXQgMTE6MzXigK9BTSBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVy
Cjxicm91ZXJAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBUaGUgdG9vbCB4ZHBfaHdfbWV0YWRhdGEg
Y2FuIGJlIHVzZWQgYnkgZHJpdmVyIGRldmVsb3BlcnMKPiBpbXBsZW1lbnRpbmcgWERQLWhpbnRz
IG1ldGFkYXRhIGtmdW5jcy4KPgo+IFJlbW92ZSBhbGwgYnBmX3ByaW50ayBjYWxscywgYXMgdGhl
IHRvb2wgYWxyZWFkeSB0cmFuc2ZlcnMgYWxsIHRoZQo+IFhEUC1oaW50cyByZWxhdGVkIGluZm9y
bWF0aW9uIHZpYSBtZXRhZGF0YSBhcmVhIHRvIEFGX1hEUAo+IHVzZXJzcGFjZSBwcm9jZXNzLgo+
Cj4gQWRkIGNvdW50ZXJzIGZvciBwcm92aWRpbmcgcmVtYWluaW5nIGluZm9ybWF0aW9uIGFib3V0
IGZhaWx1cmUgYW5kCj4gc2tpcHBlZCBwYWNrZXQgZXZlbnRzLgo+Cj4gU2lnbmVkLW9mZi1ieTog
SmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+CgpBY2tlZC1ieTogU3Rh
bmlzbGF2IEZvbWljaGV2IDxzZGZAZ29vZ2xlLmNvbT4KCm5pdDogbWF5YmUgdGhvc2UgKysgc2hv
dWxkIGJlIF9fc3luY19hZGRfYW5kX2ZldGNoIGluc3RlYWQ/IFRoZW4geW91CnNob3VsZCBiZSBh
YmxlIHRvIGRyb3Agdm9sYXRpbGUuLgoKPiAtLS0KPiAgLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2Jw
Zi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYyAgfCAgIDM2ICsrKysrKysrKysrKy0tLS0tLS0tCj4g
IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYyAgICAgIHwgICAg
NCArKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBf
aHdfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdf
bWV0YWRhdGEuYwo+IGluZGV4IDRjNTViNGQ3OWQzZC4uOGEwNDIzNDNjYjBjIDEwMDY0NAo+IC0t
LSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+
ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEu
Ywo+IEBAIC0xMiw2ICsxMiwxMCBAQCBzdHJ1Y3Qgewo+ICAgICAgICAgX190eXBlKHZhbHVlLCBf
X3UzMik7Cj4gIH0geHNrIFNFQygiLm1hcHMiKTsKPgo+ICt2b2xhdGlsZSBfX3U2NCBwa3RzX3Nr
aXAgPSAwOwo+ICt2b2xhdGlsZSBfX3U2NCBwa3RzX2ZhaWwgPSAwOwo+ICt2b2xhdGlsZSBfX3U2
NCBwa3RzX3JlZGlyID0gMDsKPiArCj4gIGV4dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF90
aW1lc3RhbXAoY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgX191NjQgKnRpbWVzdGFtcCkgX19rc3ltOwo+ICBleHRlcm4g
aW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsCj4g
QEAgLTI2LDcgKzMwLDcgQEAgaW50IHJ4KHN0cnVjdCB4ZHBfbWQgKmN0eCkKPiAgICAgICAgIHN0
cnVjdCB1ZHBoZHIgKnVkcCA9IE5VTEw7Cj4gICAgICAgICBzdHJ1Y3QgaXBoZHIgKmlwaCA9IE5V
TEw7Cj4gICAgICAgICBzdHJ1Y3QgeGRwX21ldGEgKm1ldGE7Cj4gLSAgICAgICBpbnQgcmV0Owo+
ICsgICAgICAgaW50IGVycjsKPgo+ICAgICAgICAgZGF0YSA9ICh2b2lkICopKGxvbmcpY3R4LT5k
YXRhOwo+ICAgICAgICAgZGF0YV9lbmQgPSAodm9pZCAqKShsb25nKWN0eC0+ZGF0YV9lbmQ7Cj4g
QEAgLTQ2LDE3ICs1MCwyMCBAQCBpbnQgcngoc3RydWN0IHhkcF9tZCAqY3R4KQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIHVkcCA9IE5VTEw7Cj4gICAgICAgICB9Cj4KPiAtICAgICAgIGlmICgh
dWRwKQo+ICsgICAgICAgaWYgKCF1ZHApIHsKPiArICAgICAgICAgICAgICAgcGt0c19za2lwKys7
Cj4gICAgICAgICAgICAgICAgIHJldHVybiBYRFBfUEFTUzsKPiArICAgICAgIH0KPgo+IC0gICAg
ICAgaWYgKHVkcC0+ZGVzdCAhPSBicGZfaHRvbnMoOTA5MSkpCj4gKyAgICAgICAvKiBGb3J3YXJk
aW5nIFVEUDo5MDkxIHRvIEFGX1hEUCAqLwo+ICsgICAgICAgaWYgKHVkcC0+ZGVzdCAhPSBicGZf
aHRvbnMoOTA5MSkpIHsKPiArICAgICAgICAgICAgICAgcGt0c19za2lwKys7Cj4gICAgICAgICAg
ICAgICAgIHJldHVybiBYRFBfUEFTUzsKPiArICAgICAgIH0KPgo+IC0gICAgICAgYnBmX3ByaW50
aygiZm9yd2FyZGluZyBVRFA6OTA5MSB0byBBRl9YRFAiKTsKPiAtCj4gLSAgICAgICByZXQgPSBi
cGZfeGRwX2FkanVzdF9tZXRhKGN0eCwgLShpbnQpc2l6ZW9mKHN0cnVjdCB4ZHBfbWV0YSkpOwo+
IC0gICAgICAgaWYgKHJldCAhPSAwKSB7Cj4gLSAgICAgICAgICAgICAgIGJwZl9wcmludGsoImJw
Zl94ZHBfYWRqdXN0X21ldGEgcmV0dXJuZWQgJWQiLCByZXQpOwo+ICsgICAgICAgZXJyID0gYnBm
X3hkcF9hZGp1c3RfbWV0YShjdHgsIC0oaW50KXNpemVvZihzdHJ1Y3QgeGRwX21ldGEpKTsKPiAr
ICAgICAgIGlmIChlcnIpIHsKPiArICAgICAgICAgICAgICAgcGt0c19mYWlsKys7Cj4gICAgICAg
ICAgICAgICAgIHJldHVybiBYRFBfUEFTUzsKPiAgICAgICAgIH0KPgo+IEBAIC02NSwyMCArNzIs
MTkgQEAgaW50IHJ4KHN0cnVjdCB4ZHBfbWQgKmN0eCkKPiAgICAgICAgIG1ldGEgPSBkYXRhX21l
dGE7Cj4KPiAgICAgICAgIGlmIChtZXRhICsgMSA+IGRhdGEpIHsKPiAtICAgICAgICAgICAgICAg
YnBmX3ByaW50aygiYnBmX3hkcF9hZGp1c3RfbWV0YSBkb2Vzbid0IGFwcGVhciB0byB3b3JrIik7
Cj4gKyAgICAgICAgICAgICAgIHBrdHNfZmFpbCsrOwo+ICAgICAgICAgICAgICAgICByZXR1cm4g
WERQX1BBU1M7Cj4gICAgICAgICB9Cj4KPiAtICAgICAgIGlmICghYnBmX3hkcF9tZXRhZGF0YV9y
eF90aW1lc3RhbXAoY3R4LCAmbWV0YS0+cnhfdGltZXN0YW1wKSkKPiAtICAgICAgICAgICAgICAg
YnBmX3ByaW50aygicG9wdWxhdGVkIHJ4X3RpbWVzdGFtcCB3aXRoICVsbHUiLCBtZXRhLT5yeF90
aW1lc3RhbXApOwo+IC0gICAgICAgZWxzZQo+ICsgICAgICAgZXJyID0gYnBmX3hkcF9tZXRhZGF0
YV9yeF90aW1lc3RhbXAoY3R4LCAmbWV0YS0+cnhfdGltZXN0YW1wKTsKPiArICAgICAgIGlmIChl
cnIpCj4gICAgICAgICAgICAgICAgIG1ldGEtPnJ4X3RpbWVzdGFtcCA9IDA7IC8qIFVzZWQgYnkg
QUZfWERQIGFzIG5vdCBhdmFpbCBzaWduYWwgKi8KPgo+IC0gICAgICAgaWYgKCFicGZfeGRwX21l
dGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCkpCj4gLSAgICAgICAgICAgICAgIGJw
Zl9wcmludGsoInBvcHVsYXRlZCByeF9oYXNoIHdpdGggJXUiLCBtZXRhLT5yeF9oYXNoKTsKPiAt
ICAgICAgIGVsc2UKPiArICAgICAgIGVyciA9IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgs
ICZtZXRhLT5yeF9oYXNoKTsKPiArICAgICAgIGlmIChlcnIpCj4gICAgICAgICAgICAgICAgIG1l
dGEtPnJ4X2hhc2ggPSAwOyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBub3QgYXZhaWwgc2lnbmFsICov
Cj4KPiArICAgICAgIHBrdHNfcmVkaXIrKzsKPiAgICAgICAgIHJldHVybiBicGZfcmVkaXJlY3Rf
bWFwKCZ4c2ssIGN0eC0+cnhfcXVldWVfaW5kZXgsIFhEUF9QQVNTKTsKPiAgfQo+Cj4gZGlmZiAt
LWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+IGluZGV4IDFjOGFj
YjY4Yjk3Ny4uM2I5NDJlZjcyOTdiIDEwMDY0NAo+IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3Rz
L2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+IEBAIC0yMTIsNyArMjEyLDkgQEAgc3RhdGljIGludCB2
ZXJpZnlfbWV0YWRhdGEoc3RydWN0IHhzayAqcnhfeHNrLCBpbnQgcnhxLCBpbnQgc2VydmVyX2Zk
KQo+ICAgICAgICAgd2hpbGUgKHRydWUpIHsKPiAgICAgICAgICAgICAgICAgZXJybm8gPSAwOwo+
ICAgICAgICAgICAgICAgICByZXQgPSBwb2xsKGZkcywgcnhxICsgMSwgMTAwMCk7Cj4gLSAgICAg
ICAgICAgICAgIHByaW50ZigicG9sbDogJWQgKCVkKVxuIiwgcmV0LCBlcnJubyk7Cj4gKyAgICAg
ICAgICAgICAgIHByaW50ZigicG9sbDogJWQgKCVkKSBza2lwPSVsbHUgZmFpbD0lbGx1IHJlZGly
PSVsbHVcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICByZXQsIGVycm5vLCBicGZfb2JqLT5i
c3MtPnBrdHNfc2tpcCwKPiArICAgICAgICAgICAgICAgICAgICAgIGJwZl9vYmotPmJzcy0+cGt0
c19mYWlsLCBicGZfb2JqLT5ic3MtPnBrdHNfcmVkaXIpOwo+ICAgICAgICAgICAgICAgICBpZiAo
cmV0IDwgMCkKPiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgICAgICAg
ICAgaWYgKHJldCA9PSAwKQo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
