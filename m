Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B83506D38E4
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Apr 2023 17:50:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEB9881987;
	Sun,  2 Apr 2023 15:50:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEB9881987
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680450609;
	bh=vqQSq+0C8d3tM4zehsiJUrG8WF0E8cpBkPCT4Z7U6OI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jbnrDq0XssH4536TDMunXrGLbz8ATFjTYbALGXJ2ZCAFVMXMM2OULsdResbFRfR+7
	 i0TZqQNih8BfrVVBgJA9leG/UztmvCSwfDWbJBgKjjJjhAaBddCetsXAzzZkG+Wrs9
	 8f2QkVqvzs50IOuwK4uf1xY4zcauj3p17rwDLrcIlA/d8ZhIlMLMDjnHgKb5902qBI
	 ZNXWvB24dOglt/G8mBeWFKMTq3tH5YSAyi+kK4mbAssA8TgmcedmsBBB4jLHSMYDJH
	 E9jTPBLpyV2DgIJDK5z5v/Ot4vMe+0/PAtBGUazkot+p/JzJQ7w4l+fVp9+1nNUI3H
	 Aj/oqWA2DiWxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KDcLF_ZL9hKa; Sun,  2 Apr 2023 15:50:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADA9381A3E;
	Sun,  2 Apr 2023 15:50:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADA9381A3E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E51C01BF40B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 15:50:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B793C81902
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 15:50:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B793C81902
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j4GbIzm86eOQ for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Apr 2023 15:50:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A4CA818D4
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A4CA818D4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 15:50:02 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id x3so108005483edb.10
 for <intel-wired-lan@lists.osuosl.org>; Sun, 02 Apr 2023 08:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680450600; x=1683042600;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=A3H+yKErz+asdo8QewHRhcyQgjCu7p9+bA2Tn/wzQyc=;
 b=ozawN8yFen0POjLf9T+ngwoYTZxQNzxCT+0iUm5iQwby3VI7Cqw5c0yyvBezMz17cx
 0B9/mrS3cBpwYCuBm0xG+k3fnmiw5tx7XR+bX9Qh4cYMN20fnbrcRbV+devmkvlp4nWa
 pmpRdTuNvIv9fbdv6mL9wZB2l/OMOYz78nLcX/CcBaOm8+cb83vcsTxL5Xf9+ZGMPoy/
 45BCZI3HtrAIp2xvdLD6LZZ9WffFlq+Cc4u4wDpXaqElYsHVjKc+Oc00Sf4X0p7rWWbj
 seQ+RlYE82+tglzTXDDA/R5i6n5sUhgtXAorQdTZw9sP+3Bw/mp+IX//ExHkrqDfglDj
 9r4g==
X-Gm-Message-State: AAQBX9fNngEzn7Tcu3IMGbr5W8SN+D00lm19xG5jomHSJLHle0F+h6ks
 tImVBUyBryqklTev+0wXE1RaxVPsf8ZyM0f09es=
X-Google-Smtp-Source: AKy350ax2HWtO6rXgzdemCo1alFkS8HV4Clz+W1EVu6BR1XzxsyNuc7e1sTnlgfbloPRYVtbjT3fruEPtP2eFcoMP5Y=
X-Received: by 2002:a50:9502:0:b0:4fb:2593:846 with SMTP id
 u2-20020a509502000000b004fb25930846mr3463253eda.3.1680450600264; Sun, 02 Apr
 2023 08:50:00 -0700 (PDT)
MIME-Version: 1.0
References: <168042409059.4051476.8176861613304493950.stgit@firesoul>
 <168042420344.4051476.9107061652824513113.stgit@firesoul>
In-Reply-To: <168042420344.4051476.9107061652824513113.stgit@firesoul>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Sun, 2 Apr 2023 08:49:49 -0700
Message-ID: <CAADnVQ+JEP0sOyOOWbYKHackb4PmNYYcDGXnksucJt2mQGwi7g@mail.gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680450600; x=1683042600;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=A3H+yKErz+asdo8QewHRhcyQgjCu7p9+bA2Tn/wzQyc=;
 b=AXrfuLSQ2rAeeY46rK+Ifd00OqdmfpQpSBpyMtqEIYfzKeOIpil2Yr1FMG4TG2kyIU
 sM2807/dLEcUCCq7F3iTsJjroIsEdp3/6uyqKLWztzzZPmFHAeYTkclQizNuFjxOO2L2
 MLCoOPenyvuv9yxgFCMU9dbt+OCF4E5KvvHWZonDhVPBxWmin07ve190M9A0/w60VcUn
 n+EY/QLp3zkRDIAYQnnlXVZeCRw6E3ZVBWwV1EvPae2AA/s4jIjc9IAuMI01l4WhLSj4
 72QguFFCOrWWAkczf5Jz0ihnb5MMLHh9vPHB4eiUjQCVqBWEYuYDBTVMf7tLx4wteBdx
 RGxw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=AXrfuLSQ
Subject: Re: [Intel-wired-lan] [PATCH bpf V6 5/5] selftests/bpf: Adjust
 bpf_xdp_metadata_rx_hash for new arg
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
Cc: Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 anthony.l.nguyen@intel.com, Stanislav Fomichev <sdf@google.com>, "Ong,
 Boon Leong" <boon.leong.ong@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, xdp-hints@xdp-project.net,
 Daniel Borkmann <daniel@iogearbox.net>, linux-rdma@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Martin KaFai Lau <martin.lau@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, Leon Romanovsky <leon@kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 LKML <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>, "Song,
 Yoong Siang" <yoong.siang.song@intel.com>, bpf <bpf@vger.kernel.org>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU3VuLCBBcHIgMiwgMjAyMyBhdCAxOjMw4oCvQU0gSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8
YnJvdWVyQHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gVXBkYXRlIEJQRiBzZWxmdGVzdHMgdG8gdXNl
IHRoZSBuZXcgUlNTIHR5cGUgYXJndW1lbnQgZm9yIGtmdW5jCj4gYnBmX3hkcF9tZXRhZGF0YV9y
eF9oYXNoLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVy
QHJlZGhhdC5jb20+Cj4gQWNrZWQtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUBy
ZWRoYXQuY29tPgo+IEFja2VkLWJ5OiBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBnb29nbGUuY29t
Pgo+IC0tLQo+ICAuLi4vc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL3hkcF9tZXRhZGF0YS5jICAg
ICAgICB8ICAgIDIgKysKPiAgLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdf
bWV0YWRhdGEuYyAgfCAgIDE0ICsrKysrKysrKy0tLS0tCj4gIHRvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEuYyAgIHwgICAgNiArKystLS0KPiAgdG9vbHMvdGVz
dGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0YTIuYyAgfCAgICA3ICsrKystLS0K
PiAgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jICAgICAgfCAg
ICAyICstCj4gIHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfbWV0YWRhdGEuaCAgICAg
ICAgIHwgICAgMSArCj4gIDYgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMTIgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3By
b2dfdGVzdHMveGRwX21ldGFkYXRhLmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJv
Z190ZXN0cy94ZHBfbWV0YWRhdGEuYwo+IGluZGV4IGFhNGJlYWU5OWY0Zi4uOGM1ZTk4ZGE5YWU5
IDEwMDY0NAo+IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9nX3Rlc3RzL3hk
cF9tZXRhZGF0YS5jCj4gKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dfdGVz
dHMveGRwX21ldGFkYXRhLmMKPiBAQCAtMjczLDYgKzI3Myw4IEBAIHN0YXRpYyBpbnQgdmVyaWZ5
X3hza19tZXRhZGF0YShzdHJ1Y3QgeHNrICp4c2spCj4gICAgICAgICBpZiAoIUFTU0VSVF9ORVEo
bWV0YS0+cnhfaGFzaCwgMCwgInJ4X2hhc2giKSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC0x
Owo+Cj4gKyAgICAgICBBU1NFUlRfRVEobWV0YS0+cnhfaGFzaF90eXBlLCAwLCAicnhfaGFzaF90
eXBlIik7Cj4gKwo+ICAgICAgICAgeHNrX3JpbmdfY29uc19fcmVsZWFzZSgmeHNrLT5yeCwgMSk7
Cj4gICAgICAgICByZWZpbGxfcngoeHNrLCBjb21wX2FkZHIpOwo+Cj4gZGlmZiAtLWdpdCBhL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rvb2xz
L3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+IGluZGV4IDRj
NTViNGQ3OWQzZC4uN2IzZmMxMmU5NmQ2IDEwMDY0NAo+IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+IEBAIC0xNCw4ICsxNCw4IEBA
IHN0cnVjdCB7Cj4KPiAgZXh0ZXJuIGludCBicGZfeGRwX21ldGFkYXRhX3J4X3RpbWVzdGFtcChj
b25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBfX3U2NCAqdGltZXN0YW1wKSBfX2tzeW07Cj4gLWV4dGVybiBpbnQgYnBmX3hk
cF9tZXRhZGF0YV9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwKPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBfX3UzMiAqaGFzaCkgX19rc3ltOwo+ICtleHRlcm4g
aW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIF9f
dTMyICpoYXNoLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0geGRw
X3Jzc19oYXNoX3R5cGUgKnJzc190eXBlKSBfX2tzeW07Cj4KPiAgU0VDKCJ4ZHAiKQo+ICBpbnQg
cngoc3RydWN0IHhkcF9tZCAqY3R4KQo+IEBAIC03NCwxMCArNzQsMTQgQEAgaW50IHJ4KHN0cnVj
dCB4ZHBfbWQgKmN0eCkKPiAgICAgICAgIGVsc2UKPiAgICAgICAgICAgICAgICAgbWV0YS0+cnhf
dGltZXN0YW1wID0gMDsgLyogVXNlZCBieSBBRl9YRFAgYXMgbm90IGF2YWlsIHNpZ25hbCAqLwo+
Cj4gLSAgICAgICBpZiAoIWJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZtZXRhLT5yeF9o
YXNoKSkKPiAtICAgICAgICAgICAgICAgYnBmX3ByaW50aygicG9wdWxhdGVkIHJ4X2hhc2ggd2l0
aCAldSIsIG1ldGEtPnJ4X2hhc2gpOwo+IC0gICAgICAgZWxzZQo+ICsgICAgICAgaWYgKCFicGZf
eGRwX21ldGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCwgJm1ldGEtPnJ4X2hhc2hf
dHlwZSkpIHsKPiArICAgICAgICAgICAgICAgYnBmX3ByaW50aygicG9wdWxhdGVkIHJ4X2hhc2g6
MHglWCB0eXBlOjB4JVgiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIG1ldGEtPnJ4X2hh
c2gsIG1ldGEtPnJ4X2hhc2hfdHlwZSk7Cj4gKyAgICAgICAgICAgICAgIGlmICghKG1ldGEtPnJ4
X2hhc2hfdHlwZSAmIFhEUF9SU1NfTDQpKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGJwZl9w
cmludGsoInJ4X2hhc2ggbG93IHF1YWxpdHkgTDMgaGFzaCB0eXBlIik7Cj4gKyAgICAgICB9IGVs
c2Ugewo+ICAgICAgICAgICAgICAgICBtZXRhLT5yeF9oYXNoID0gMDsgLyogVXNlZCBieSBBRl9Y
RFAgYXMgbm90IGF2YWlsIHNpZ25hbCAqLwo+ICsgICAgICAgfQoKRGlkbid0IHdlIGFncmVlIGlu
IHRoZSBwcmV2aW91cyB0aHJlYWQgdG8gcmVtb3ZlIHRoZXNlIHByaW50a3MgYW5kCnJlcGxhY2Ug
dGhlbSB3aXRoIGFjdHVhbCBzdGF0cyB0aGF0IHVzZXIgc3BhY2UgY2FuIHNlZT8KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
