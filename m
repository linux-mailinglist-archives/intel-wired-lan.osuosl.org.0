Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AC7718862
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 19:23:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 215F381FE3;
	Wed, 31 May 2023 17:23:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 215F381FE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685553784;
	bh=Qzkd3R0FlSuz/V5Zn9M+lksZPGMdA1qhZ9lff+9PLu0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZCCyX6D29Y7lAQe6yqWjAooZk2T4Lx91Ut4EzIpJLs8rlLvyY710r0/+2/Dco42Sb
	 3skK/UPzlbPqE7PQbKhUrFsYjQAtSJLBL8+pYKTVo62NELrB65z1Z8dfa4u7+cIJHr
	 C58jEN8Wb/RkyVTVluDa3Od5GcYpxTHFiezH+rZVZMREBToYZqWtIcksL1vlsGxKwy
	 bIW/Wk2j2W4VOm4mA5lpN1GE4KpfLAiCP6EXeztDmvXcNyEIegKL6WlMH9N86Eebiy
	 oL/IUQ0TsaiDotw4MD1aGP+T6qJUwzED8OV05K+c0mvTqmVRzQeWdHERUeUaN0fX8M
	 C+HBN3HfvXnmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VVKnHit_g8UF; Wed, 31 May 2023 17:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DABD81FB8;
	Wed, 31 May 2023 17:23:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DABD81FB8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7BA781BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 53C0E40520
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:22:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53C0E40520
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U9XU7gbmS4cu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 17:22:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35137400DC
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 35137400DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 17:22:56 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-1b026657a6fso42328305ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 10:22:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685553775; x=1688145775;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YrVwJAEjjvnvIKuJ6uTt26n9KFNYPZA2r93TFT7MbBM=;
 b=Evx4dFVXJ1sRT5d0CBDfFHGXzBi3WAn6alT+qy+ag7r+1MqWJv3GceGUSamZ9yCjE1
 YKZwQrQfwPCsS357ozaLSIWiUCbS1U5ApGZbxjkk8s3PcurWLXBo+URuISeCWBiwWtti
 V0XaCUwTQ++var4bN/sHGoM1qI+UJN/6eGh9X/TVIJ9nDZI0rKvqvcj0qhHL5NM9Dw4/
 4cV6STUKVFyW4CIGneQXN4pVqC6n96zA2EXMEu2B0wc6g5YtevhWP/voxhC8BsTbAKNC
 bYFZtuXp4RvF2FysbjVmqzPtyrs5gynTSyPPmZG2pmHRwlKam2sgpNwkP/FdvKiQLs6u
 dPNg==
X-Gm-Message-State: AC+VfDwdcBg0zdmQ8RC0EZ+NeR/65B1JmmYtARQ33RlkVYrXHz4FYmeG
 D5Izy4KZJYBePfDw5ru5dF0hMMGnQx5sHLxwOFM=
X-Google-Smtp-Source: ACHHUZ59Rc3El2kV4KaAoX205BGG2z29ZAqm5s0jPQoGNbX4kBK5ZhAdR9Xp24SNx29R1CuG5QwOv74WZ5CgDptbbuk=
X-Received: by 2002:a17:902:d490:b0:1aa:e425:2527 with SMTP id
 c16-20020a170902d49000b001aae4252527mr7161331plg.21.1685553775293; Wed, 31
 May 2023 10:22:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
 <20230525125746.553874-4-aleksander.lobakin@intel.com>
 <8828262f1c238ab28be9ec87a7701acd791af926.camel@gmail.com>
 <cb7d3479-63a5-31b4-355d-b12a7e1b2878@intel.com>
In-Reply-To: <cb7d3479-63a5-31b4-355d-b12a7e1b2878@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 31 May 2023 10:22:18 -0700
Message-ID: <CAKgT0Ud204CiJeB-5zcTKdrv7ODrfP09t73CqRhps7g3qhWU5w@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685553775; x=1688145775;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YrVwJAEjjvnvIKuJ6uTt26n9KFNYPZA2r93TFT7MbBM=;
 b=PTfLVn0ji4zAktKm8RzoDA3NBcmQMpDY6XyqpSzdauKVxASokup2dHBitvuhbykBsQ
 pJVnj3bkMmWUhDAkIO3bvFN86+KLCwuBubtZSY15vU6DzvnLoFIbfzol5ddUvV0XgLdl
 MjOYDB+CFmsd4HG8tIARZ7xAJpcjJaViKYaqEvK3tUhoDQYvj+pDJdf4FfUV91gqY34W
 O5I9ZfBeIs4YBPvg+MJ247CIAjRK48j/nJf06pH3KgGnuNPJ32QtyJq/hidzC3gELEWd
 5YNrXnhfWBq+u0GXxj8/fq40P7h1By472f9bnVZok1GCWkdEMoK4RfftxrJzBS1AwjuG
 sHjQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=PTfLVn0j
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/12] iavf: optimize Rx
 buffer allocation a bunch
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBNYXkgMzEsIDIwMjMgYXQgODoxNOKAr0FNIEFsZXhhbmRlciBMb2Jha2luCjxhbGVr
c2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPiB3cm90ZToKPgo+IEZyb206IEFsZXhhbmRlciBIIER1
eWNrIDxhbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPgo+IERhdGU6IFR1ZSwgMzAgTWF5IDIwMjMg
MDk6MTg6NDAgLTA3MDAKPgo+ID4gT24gVGh1LCAyMDIzLTA1LTI1IGF0IDE0OjU3ICswMjAwLCBB
bGV4YW5kZXIgTG9iYWtpbiB3cm90ZToKPiA+PiBUaGUgUnggaG90cGF0aCBjb2RlIG9mIElBVkYg
aXMgbm90IHdlbGwtb3B0aW1pemVkIFRCSC4gQmVmb3JlIGRvaW5nIGFueQo+ID4+IGZ1cnRoZXIg
YnVmZmVyIG1vZGVsIGNoYW5nZXMsIHNoYWtlIGl0IHVwIGEgYml0LiBOb3RhYmx5Ogo+ID4+Cj4g
Pj4gMS4gQ2FjaGUgbW9yZSB2YXJpYWJsZXMgb24gdGhlIHN0YWNrLgo+ID4+ICAgIERNQSBkZXZp
Y2UsIFJ4IHBhZ2Ugc2l6ZSwgTlRDIC0tIHRoZXNlIGFyZSB0aGUgbW9zdCBjb21tb24gdGhpbmdz
Cj4gPj4gICAgdXNlZCBhbGwgdGhyb3VnaG91dCB0aGUgaG90cGF0aCwgb2Z0ZW4gaW4gbG9vcHMg
b24gZWFjaCBpdGVyYXRpb24uCj4gPj4gICAgSW5zdGVhZCBvZiBmZXRjaGluZyAob3IgZXZlbiBj
YWxjdWxhdGluZywgYXMgd2l0aCB0aGUgcGFnZSBzaXplKSB0aGVtCj4gPj4gICAgZnJvbSB0aGUg
cmluZyBhbGwgdGhlIHRpbWUsIGNhY2hlIHRoZW0gb24gdGhlIHN0YWNrIGF0IHRoZSBiZWdpbm5p
bmcKPiA+PiAgICBvZiB0aGUgTkFQSSBwb2xsaW5nIGNhbGxiYWNrLiBOVEMgd2lsbCBiZSB3cml0
dGVuIGJhY2sgYXQgdGhlIGVuZCwKPiA+PiAgICB0aGUgcmVzdCBhcmUgdXNlZCByZWFkLW9ubHks
IHNvIG5vIHN5bmMgbmVlZGVkLgo+ID4KPiA+IFRoZSBhZHZhbnRhZ2Ugb2YgdGhpcyBpcyBnb2lu
ZyB0byB2YXJ5IGJhc2VkIG9uIHRoZSBhdHRyaWJ1dGUuIE9uZSBvZgo+ID4gdGhlIHJlYXNvbnMg
d2h5IEkgbGVmdCBtb3N0IG9mIHRoaXMgb24gdGhlIHJpbmcgaXMgYmVjYXVzZSB0aGUgc2VjdGlv
bgo+ID4gb2YgdGhlIHJpbmcgbW9zdCBvZiB0aGVzZSB2YXJpYWJsZXMgd2VyZSBtZWFudCB0byBi
ZSByZWFkLW1vc3RseSBhbmQKPiA+IHNob3VsZG4ndCBoYXZlIHJlc3VsdGVkIGluIGFueSBhZGRp
dGlvbmFsIG92ZXJoZWFkIHZlcnN1cyBhY2Nlc3NpbmcKPiA+IHRoZW0gZnJvbSB0aGUgc3RhY2su
Cj4KPiBCdXQgbm90IGFsbCBvZiB0aGVzZSB2YXJpYWJsZXMgYXJlIHJlYWQtb25seS4gRS5nLiBO
VEMgaXMgb2Z0ZW4KPiBtb2RpZmllZC4gUGFnZSBzaXplIHdhcyBjYWxjdWxhdGVkIHBlciBkZXNj
cmlwdG9yLCBidXQgY291bGQgYmUgb25jZSBhCj4gcG9sbCBjeWNsZSBzdGFydHMsIGFuZCBzbyBv
bi4KClllYWgsIHRoZSBudGMgc2hvdWxkIGJlIGNhcnJpZWQgaW4gdGhlIHN0YWNrLiBUaGUgb25s
eSByZWFzb24gZm9yCnVzaW5nIHRoZSByaW5nIHZhcmlhYmxlIHdhcyBiZWNhdXNlIGluIHRoZSBj
YXNlIG9mIGl4Z2JlIHdlIGhhZCB0byBkbwpzb21lIHRyaWNrcyB3aXRoIGl0IHRvIGRlYWwgd2l0
aCBSU0MgYXMgd2Ugd2VyZSBlaXRoZXIgYWNjZXNzaW5nIG50YwpvciB0aGUgYnVmZmVyIHBvaW50
ZWQgdG8gYnkgdGhlIGRlc2NyaXB0b3IuIEkgdGhpbmsgbW9zdCBvZiB0aGF0IGNvZGUKaGFzIGJl
ZW4gcmVtb3ZlZCBmb3IgaTQwZSB0aG91Z2guCgo+ID4KPiA+PiAyLiBEb24ndCBtb3ZlIHRoZSBy
ZWN5Y2xlZCBidWZmZXJzIGFyb3VuZCB0aGUgcmluZy4KPiA+PiAgICBUaGUgaWRlYSBvZiBwYXNz
aW5nIHRoZSBwYWdlIG9mIHRoZSByaWdodC1ub3ctcmVjeWNsZWQtYnVmZmVyIHRvIGEKPiA+PiAg
ICBkaWZmZXJlbnQgYnVmZmVyLCBpbiB0aGlzIGNhc2UsIHRoZSBmaXJzdCBvbmUgdGhhdCBuZWVk
cyB0byBiZQo+ID4+ICAgIGFsbG9jYXRlZCwgbW9yZW92ZXIsIG9uIGVhY2ggbmV3IGZyYW1lLCBp
cyBmdW5kYW1lbnRhbGx5IHdyb25nLiBJdAo+ID4+ICAgIGludm9sdmVzIGEgZmV3IG8nIGZldGNo
ZXMsIGJyYW5jaGVzIGFuZCB0aGVuIHdyaXRlcyAoYW5kIG9uZSBSeAo+ID4+ICAgIGJ1ZmZlciBz
dHJ1Y3QgaXMgYXQgbGVhc3QgMzIgYnl0ZXMpIHdoZXJlIHRoZXkncmUgY29tcGxldGVseSB1bm5l
ZWRlZCwKPiA+PiAgICBidXQgZ2l2ZXMgbm8gZ29vZCAtLSB0aGUgcmVzdWx0IGlzIHRoZSBzYW1l
IGFzIGlmIHdlJ2QgcmVjeWNsZSBpdAo+ID4+ICAgIGlucGxhY2UsIGF0IHRoZSBzYW1lIHBvc2l0
aW9uIHdoZXJlIGl0IHdhcyB1c2VkLiBTbyBkcm9wIHRoaXMgYW5kIGxldAo+ID4+ICAgIHRoZSBt
YWluIHJlZmlsbGluZyBmdW5jdGlvbiB0YWtlIGNhcmUgb2YgYWxsIHRoZSBidWZmZXJzLCB3aGlj
aCB3ZXJlCj4gPj4gICAgcHJvY2Vzc2VkIGFuZCBub3cgbmVlZCB0byBiZSByZWN5Y2xlZC9yZWZp
bGxlZC4KPiA+Cj4gPiBUaGUgbmV4dF90b19hbGxvYyBsb2dpYyB3YXMgcHV0IGluIHBsYWNlIHRv
IGRlYWwgd2l0aCBzeXN0ZW1zIHRoYXQgYXJlCj4gPiBleHBlcmllbmNpbmcgbWVtb3J5IGlzc3Vl
cy4gU3BlY2lmaWNhbGx5IHdoYXQgY2FuIGVuZCB1cCBoYXBwZW5pbmcgaXMKPiA+IHRoYXQgdGhl
IHJpbmcgY2FuIHN0YWxsIGR1ZSB0byBmYWlsaW5nIG1lbW9yeSBhbGxvY2F0aW9ucyBhbmQgdGhl
Cj4gPiBtZW1vcnkgY2FuIGdldCBzdHVjayBvbiB0aGUgcmluZy4gRm9yIHRoYXQgcmVhc29uIHdl
IHdlcmUgZXNzZW50aWFsbHkKPiA+IGRlZnJhZ21lbnRpbmcgdGhlIGJ1ZmZlcnMgd2hlbiB3ZSBz
dGFydGVkIHN1ZmZlcmluZyBtZW1vcnkgcHJlc3N1cmUgc28KPiA+IHRoYXQgdGhleSBjb3VsZCBi
ZSByZXVzdWVkIGFuZC9vciBmcmVlZCBmb2xsb3dpbmcgaW1tZWRpYXRlIHVzZS4KPiA+Cj4gPiBC
YXNpY2FsbHkgd2hhdCB5b3UgYXJlIHRyYWRpbmcgb2ZmIGlzIHNvbWUgZXhjZXB0aW9uIGhhbmRs
aW5nIGZvcgo+ID4gcGVyZm9ybWFuY2UgYnkgcmVtb3ZpbmcgaXQuCj4KPiBJJ20gbm90IHN1cmUg
dGhpcyBoZWxwcyBhIGxvdCwgYnV0IE9UT0ggdGhpcyByZWFsbHkgc2xvd3MgZG93biB0aGluZ3Ms
Cj4gZXNwLiBnaXZlbiB0aGF0IHRoaXMgY29kZSBpcyBydW4gYWxsIHRoZSB0aW1lLCBub3Qgb25s
eSB3aGVuIGEgbWVtb3J5Cj4gYWxsb2NhdGlvbiBmYWlsIGhhcHBlbnMuCgpUaGUgdGhpbmcgaXMg
d2hlbiB0aGluZ3MgYnJlYWsgdGhleSBoYXZlIHRvIGJlIGZpeGVkLiBGb3Igb3VyIHB1cnBvc2Vz
CnNpbmNlIHlvdSBhcmUgZ2V0dGluZyByaWQgb2YgdGhlIHJlY3ljbGluZyBhbnl3YXkgaXQgaXMg
Z29pbmcgdG8gYmUKcmlwcGVkIG91dCBvbmUgd2F5IG9yIHRoZSBvdGhlci4gSnVzdCB3YW50ZWQg
dG8gcHJvdmlkZSBhIGJpdCBvZgpoaXN0b3J5IGFzIHRvIHdoeSBpdCBpcyBiZWluZyBkb25lIHRo
YXQgd2F5LgoKPiA+Cj4gPj4gMy4gRG9uJ3QgYWxsb2NhdGUgd2l0aCAlR1BGX0FUT01JQyBvbiBp
ZnVwLgo+ID4+ICAgIFRoaXMgaW52b2x2ZWQgaW50cm9kdWNpbmcgdGhlIEBnZnAgcGFyYW1ldGVy
IHRvIGEgY291cGxlIGZ1bmN0aW9ucy4KPiA+PiAgICBEb2Vzbid0IGNoYW5nZSBhbnl0aGluZyBm
b3IgUnggLT4gc29mdGlycS4KPiA+Cj4gPiBBbnkgc3BlY2lmaWMgcmVhc29uIGZvciB0aGlzPyBK
dXN0IHdvbmRlcmluZyBpZiB0aGlzIGlzIG1lYW50IHRvCj4gPiBhZGRyZXNzIHNvbWUgc29ydCBv
ZiBtZW1vcnkgcHJlc3N1cmUgaXNzdWUgc2luY2UgaXQgYmFzaWNhbGx5IGp1c3QKPiA+IG1lYW5z
IHRoZSBhbGxvY2F0aW9uIGNhbiBnbyBvdXQgYW5kIHRyeSB0byBmcmVlIG90aGVyIG1lbW9yeS4K
Pgo+IFllcywgSSdtIG5vIE1NIGV4cGVydCwgYnV0IEkndmUgc2VlbiBwbGVudHkgb2YgdGltZXMg
bWVzc2FnZXMgZnJvbSB0aGUKPiBNTSBmb2xrcyB0aGF0IEFUT01JQyBzaG91bGRuJ3QgYmUgdXNl
ZCBpbiBub24tYXRvbWljIGNvbnRleHRzLiBBdG9taWMKPiBhbGxvY2F0aW9uIGlzIGFibGUgdG8g
Z3JhYiBtZW1vcnkgZnJvbSBzb21lIHNvcnQgb2YgY3JpdGljYWwgcmVzZXJ2cyBhbmQKPiBhbGwg
dGhhdCwgYW5kIHRoZSBsZXNzIHdlIHRvdWNoIHRoZW0sIHRoZSBiZXR0ZXIuIE91dHNpZGUgb2Yg
YXRvbWljCj4gY29udGV4dHMgdGhleSBzaG91bGQgbm90IGJlIHRvdWNoZWQuCgpGb3Igb3VyIHB1
cnBvc2VzIHRob3VnaCB0aGUgUnggcGF0aCBpcyBtb3JlLW9yLWxlc3MgYWx3YXlzIGluCmludGVy
cnVwdCBjb250ZXh0LiBUaGF0IGlzIHdoeSBpdCBoYWQgZGVmYXVsdGVkIHRvIGp1c3QgYWx3YXlz
IHVzaW5nCkdGUF9BVE9NSUMuIEZvciB5b3VyIHB1cnBvc2VzIHlvdSBjb3VsZCBwcm9iYWJseSBs
ZWF2ZSBpdCB0aGF0IHdheQpzaW5jZSB5b3UgYXJlIGdvaW5nIHRvIGJlIHB1bGxpbmcgb3V0IG1v
c3Qgb2YgdGhpcyBjb2RlIGFueXdheS4KCj4gPgo+ID4+IDQuIDEgYnVkZ2V0IHVuaXQgPT0gMSBk
ZXNjcmlwdG9yLCBub3Qgc2tiLgo+ID4+ICAgIFRoZXJlIGNvdWxkIGJlIHVuZGVyZmxvdyB3aGVu
IHJlY2VpdmluZyBhIGxvdCBvZiBmcmFnbWVudGVkIGZyYW1lcy4KPiA+PiAgICBJZiBlYWNoIG9m
IHRoZW0gd291bGQgY29uc2lzdCBvZiAyIGZyYWdzLCBpdCBtZWFucyB0aGF0IHdlJ2QgcHJvY2Vz
cwo+ID4+ICAgIDY0IGRlc2NyaXB0b3JzIGF0IHRoZSBwb2ludCB3aGVyZSB3ZSBwYXNzIHRoZSAz
MnRoIHNrYiB0byB0aGUgc3RhY2suCj4gPj4gICAgQnV0IHRoZSBkcml2ZXIgd291bGQgY291bnQg
dGhhdCBvbmx5IGFzIGEgaGFsZiwgd2hpY2ggY291bGQgbWFrZSBOQVBJCj4gPj4gICAgcmUtZW5h
YmxlIGludGVycnVwdHMgcHJlbWF0dXJlbHkgYW5kIGNyZWF0ZSB1bm5lY2Vzc2FyeSBDUFUgbG9h
ZC4KPiA+Cj4gPiBOb3Qgc3VyZSBJIGFncmVlIHdpdGggdGhpcy4gVGhlIHByb2JsZW0gaXMgdGhl
IG92ZXJoZWFkIGZvciBhbiBza2IKPiA+IGdvaW5nIHVwIHRoZSBzdGFjayB2ZXJzdXMgYSBmcmFn
bWVudCBhcmUgcHJldHR5IHNpZ25maWNhbnQuIEtlZXAgaW4KPiA+IG1pbmQgdGhhdCBtb3N0IG9m
IHRoZSBvdmVyaGVhZCBmb3IgYSBzaW5nbGUgYnVmZmVyIG9jY3VycyB3Lwo+ID4gbmFwaV9ncm9f
cmVjZWl2ZSBhbmQgaXMgbm90IGFjdHVhbGx5IGF0IHRoZSBkcml2ZXIgaXRzZWxmLiBUaGUgd2hv
bGUKPiA+IHBvaW50IG9mIHRoZSBidWRnZXQgaXMgdG8gbWV0ZXIgb3V0IHVuaXRzIG9mIHdvcmss
IG5vdCB0byBrZWVwIHlvdSBpbgo+ID4gdGhlIGJ1c3kgbG9vcC4gVGhpcyBzdGFydHMgbG9va2lu
ZyBsaWtlIHRoZSBvbGQgY29kZSB3aGVyZSB0aGUgSW50ZWwKPiA+IGRyaXZlcnMgd2VyZSByZXR1
cm5pbmcgZWl0aGVyIGJ1ZGdldCBvciAwIGluc3RlYWQgb2Ygc3VwcG9ydGluZyB0aGUKPiA+IG1p
ZGRsZSBncm91bmQuCj4KPiBObywgY2VydGFpbmx5IG5vdCB0aGlzIDpECj4KPiBUaGUgcG9pbnQg
b2YgYnVkZ2V0IGlzIHRvIGxpbWl0IHRoZSBhbW91bnQgb2YgdGltZSBkcml2ZXJzIGNhbiBzcGVu
ZCBvbgo+IGNsZWFuaW5nIHRoZWlyIHJpbmdzLiBNYWtpbmcgc2tiIHRoZSB1bml0IG1ha2VzIHRo
ZSB1bml0IHZlcnkgbG9naWNhbAo+IGFuZCBmbGV4aWJsZSwgYnV0IEknZCBzYXkgaXQgc2hvdWxk
IGFsd2F5cyBiZSBzb2xpZC4gSW1hZ2luZSB5b3UgZ2V0IGEKPiBmcmFtZSB3aGljaCBnb3Qgc3Bh
bm5lZCBhY3Jvc3MgNSBidWZmZXJzLiBZb3Ugc3BlbmQgeDUgdGltZSAocm91Z2hseSkgdG8KPiBi
dWlsZCBhbiBza2IgYW5kIHBhc3MgaXQgdXAgdGhlIHN0YWNrIHZzIHdoZW4geW91IGdldCBhIGxp
bmVhciBmcmFtZSBpbgo+IG9uZSBidWZmZXIsIGJ1dCBhY2NvcmRpbmcgdG8geW91ciBsb2dpY3Mg
Ym90aCBvZiB0aGVzZSBjYXNlcyBjb3VudCBhcyAxCj4gdW5pdCwgd2hpbGUgdGhlIGFtb3VudCBv
ZiB0aW1lIHNwZW50IGRpZmZlcnMgc2lnbmlmaWNhbnRseS4gSSBjYW4ndCBzYXkKPiB0aGF0J3Mg
ZmFpciBlbm91Z2guCgpJIHdvdWxkIHNheSBpdCBpcy4gTGlrZSBJIHNhaWQgbW9zdCBvZiB0aGUg
b3ZlcmhlYWQgaXMgdGhlIHN0YWNrLCBub3QKdGhlIGRyaXZlci4gU28gaWYgd2UgYXJlIGNsZWFu
aW5nIDUgZGVzY3JpcHRvcnMgYnV0IG9ubHkgcHJvY2Vzc2luZwpvbmUgc2tiIHRoZW4gSSB3b3Vs
ZCBzYXkgaXQgaXMgb25seSBvbmUgdW5pdCBpbiB0ZXJtcyBvZiBidWRnZXQuIFRoaXMKaXMgb25l
IG9mIHRoZSByZWFzb25zIHdoeSB3ZSBkb24ndCBjaGFyZ2UgVHggdG8gdGhlIE5BUEkgYnVkZ2V0
LiBUeApjbGVhbiB1cCBpcyBleHRyZW1lbHkgbGlnaHR3ZWlnaHQgYXMgaXQgaXMgb25seSBmcmVl
aW5nIG1lbW9yeSwgYW5kIGluCmNhc2VzIG9mIFR4IGFuZCBSeCBiZWluZyBtaXhlZCBjYW4gZXNz
ZW50aWFsbHkgYmUgZm9sZGVkIGluIGFzIFR4CmJ1ZmZlcnMgY291bGQgYmUgcmV1c2VkIGZvciBS
eC4KCklmIHdlIGFyZSB3YW50aW5nIHRvIGluY3JlYXNlIHRoZSB3b3JrIGJlaW5nIGRvbmUgcGVy
IHBvbGwgaXQgd291bGQKbWFrZSBtb3JlIHNlbnNlIHRvIHN0aWNrIHRvIGludGVycnVwdHMgYW5k
IGZvcmNlIGl0IHRvIGJhY2tsb2cgbW9yZQpwYWNrZXRzIHBlciBpbnRlcnJ1cHQgc28gdGhhdCBp
dCBpcyBwcm9jZXNzaW5nIDY0IHNrYnMgcGVyIGNhbGwuCgo+ID4KPiA+PiA1LiBTaG9ydGN1dCAh
c2l6ZSBjYXNlLgo+ID4+ICAgIEl0J3Mgc3VwZXIgcmFyZSwgYnV0IHBvc3NpYmxlIC0tIGZvciBl
eGFtcGxlLCBpZiB0aGUgbGFzdCBidWZmZXIgb2YKPiA+PiAgICB0aGUgZnJhZ21lbnRlZCBmcmFt
ZSBjb250YWluZWQgb25seSBGQ1MsIHdoaWNoIHdhcyB0aGVuIHN0cmlwcGVkIGJ5Cj4gPj4gICAg
dGhlIEhXLiBJbnN0ZWFkIG9mIGNoZWNraW5nIGZvciBzaXplIHNldmVyYWwgdGltZXMgd2hlbiBw
cm9jZXNzaW5nLAo+ID4+ICAgIHF1aWNrbHkgcmV1c2UgdGhlIGJ1ZmZlciBhbmQganVtcCB0byB0
aGUgc2tiIGZpZWxkcyBwYXJ0Lgo+ID4+IDYuIFJlZmlsbCB0aGUgcmluZyBhZnRlciBmaW5pc2hp
bmcgdGhlIHBvbGxpbmcgbG9vcC4KPiA+PiAgICBQcmV2aW91c2x5LCB0aGUgbG9vcCB3YXNuJ3Qg
c3RhcnRpbmcgYSBuZXcgaXRlcmF0aW9uIGFmdGVyIHRoZSA2NHRoCj4gPj4gICAgZGVzYywgbWVh
bmluZyB0aGF0IHdlIHdlcmUgYWx3YXlzIGxlYXZpbmcgMTYgYnVmZmVycyBub24tcmVmaWxsZWQK
PiA+PiAgICB1bnRpbCB0aGUgbmV4dCBOQVBJIHBvbGwuIEl0J3MgYmV0dGVyIHRvIHJlZmlsbCB0
aGVtIHdoaWxlIHRoZXkncmUKPiA+PiAgICBzdGlsbCBob3QsIHNvIGRvIHRoYXQgcmlnaHQgYWZ0
ZXIgZXhpdGluZyB0aGUgbG9vcCBhcyB3ZWxsLgo+ID4+ICAgIEZvciBhIGZ1bGwgY3ljbGUgb2Yg
NjQgZGVzY3MsIHRoZXJlIHdpbGwgYmUgNCByZWZpbGxzIG9mIDE2IGRlc2NzCj4gPj4gICAgZnJv
bSBub3cgb24uCj4gPj4KPiA+PiBGdW5jdGlvbjogYWRkL3JlbW92ZTogNC8yIGdyb3cvc2hyaW5r
OiAwLzUgdXAvZG93bjogNDczLy02NDcgKC0xNzQpCj4gPj4KPiA+PiArIHVwIHRvIDIlIHBlcmZv
cm1hbmNlLgo+ID4+Cj4gPgo+ID4gV2hhdCBpcyB0aGUgdGVzdCB5b3Ugc2F3IHRoZSAyJSBwZXJm
b3JtYW5jZSBpbXByb3ZlbWVudCBpbj8gSXMgaXQKPiA+IHNvbWV0aGluZyBYRFAgcmVsYXRlZCBv
ciBhIGZ1bGwgc3RhY2sgdGVzdD8KPgo+IE5vdCBYRFAsIGl0J3Mgbm90IHByZXNlbnQgaW4gdGhp
cyBkcml2ZXIgYXQgdGhpcyBwb2ludCA6RAo+IFN0YWNrIHRlc3QsIGJ1dCB3aXRob3V0IHVzZXJj
b3B5IG92ZXJoZWFkLiBUcmFmZ2VuIGJvbWJzIHRoZSBOSUMsIHRoZQo+IGRyaXZlciBidWlsZHMg
c2ticyBhbmQgcGFzc2VzIGl0IHVwIHRoZSBzdGFjaywgdGhlIHN0YWNrIGRvZXMgR1JPIGV0YywK
PiBhbmQgdGhlbiB0aGUgZnJhbWVzIGdldCBkcm9wcGVkIG9uIElQIGlucHV0IGJlY2F1c2UgdGhl
cmUncyBubyBzb2NrZXQuCgpTbyBvbmUgdGhpbmcgeW91IG1pZ2h0IHdhbnQgdG8gbG9vayBhdCB3
b3VsZCBiZSBhIGZ1bGwgc3RhY2sgdGVzdCB3Lwpzb21ldGhpbmcgc3VjaCBhcyBuZXRwZXJmIHZl
cnN1cyBvcHRpbWl6aW5nIGZvciBhIGRyb3Agb25seSB0ZXN0LgpPdGhlcndpc2UgdGhhdCBjYW4g
bGVhZCB0byBvcHRpbWl6YXRpb25zIHRoYXQgd2lsbCBhY3R1YWxseSBodXJ0CmRyaXZlciBwZXJm
b3JtYW5jZSBpbiB0aGUgbG9uZyBydW4uCgo+ID4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5k
ZXIgTG9iYWtpbiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4KPiA+Cj4gPiBBbHNvIG9u
ZSB0aGluZyBJIGFtIG5vdCBhIGh1Z2UgZmFuIG9mIGlzIGEgcGF0Y2ggdGhhdCBpcyByZWFsbHkg
YQo+ID4gcGF0Y2hzZXQgb250byBpdHNlbGYuIFdpdGggYWxsIDYgaXRlbXMgY2FsbGVkIG91dCBo
ZXJlIEkgd291bGQgaGF2ZQo+ID4gcHJlZmVycmVkIHRvIHNlZSB0aGlzIGFzIDYgcGF0Y2hlcyBh
cyBpdCB3b3VsZCBoYXZlIGJlZW4gZWFzaWVyIHRvCj4gPiByZXZpZXcuCj4KPiBBZ3JlZSBCVFcs
IEknbSBub3QgYSBmYW4gb2YgdGhpcyBwYXRjaCBlaXRoZXIuIEkgd2Fzbid0IHN1cmUgd2hhdCB0
byBkbwo+IHdpdGggaXQsIGFzIHNwbGl0dGluZyBpdCBpbnRvIDYgZXhwbG9kZXMgdGhlIHNlcmll
cyBpbnRvIGEgbW9uc3RlciwgYnV0Cj4gcHJvY2VlZGluZyB3aXRob3V0IGl0IGluY3JlYXNlcyBk
aWZmc3RhdCBhbmQgY29tcGxpY2F0ZXMgdGhpbmdzIGxhdGVyCj4gb24uIEknbGwgdHJ5IHRoZSBs
YXR0ZXIsIGJ1dCB3aWxsIHNlZS4gMTcgcGF0Y2hlcyBpcyBub3QgdGhlIEVuZCBvZiBEYXlzCj4g
YWZ0ZXIgYWxsLgoKT25lIHRoaW5nIHlvdSBtYXkgd2FudCB0byBjb25zaWRlciB0byBjb25kZW5z
ZSBzb21lIG9mIHRoZXNlIHBhdGNoZXMKd291bGQgYmUgdG8gbG9vayBhdCBwb3NzaWJseSBjb21i
aW5pbmcgcGF0Y2hlcyA0IGFuZCA1IHdoaWNoIGRpc2FibGUKcmVjeWNsaW5nIGFuZCB1c2UgYSBm
dWxsIDRLIHBhZ2UuIEl0IHNlZW1zIGxpa2Ugb2YgdGhvc2UgcGF0Y2hlcyBvbmUKZW5kcyB1cCBy
ZWRvaW5nIHRoZSBvdGhlciBzaW5jZSBzbyBtYW55IG9mIHRoZSBkbWFfc3luYyBjYWxscyBhcmUK
dXBkYXRlZCBpbiBib3RoLgoKPiA+Cj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMgfCAgIDIgKy0KPiA+PiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWF2Zi9pYXZmX3R4cnguYyB8IDI1OSArKysrKysrKystLS0tLS0tLS0tLQo+ID4+
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdHhyeC5oIHwgICAzICstCj4g
Pj4gIDMgZmlsZXMgY2hhbmdlZCwgMTE0IGluc2VydGlvbnMoKyksIDE1MCBkZWxldGlvbnMoLSkK
Pgo+IFsuLi5dCj4KPiA+PiBAQCAtOTQzLDIzICs5NDUsMTcgQEAgYm9vbCBpYXZmX2FsbG9jX3J4
X2J1ZmZlcnMoc3RydWN0IGlhdmZfcmluZyAqcnhfcmluZywgdTE2IGNsZWFuZWRfY291bnQpCj4g
Pj4KPiA+PiAgICAgICAgICAgICAgLyogY2xlYXIgdGhlIHN0YXR1cyBiaXRzIGZvciB0aGUgbmV4
dF90b191c2UgZGVzY3JpcHRvciAqLwo+ID4+ICAgICAgICAgICAgICByeF9kZXNjLT53Yi5xd29y
ZDEuc3RhdHVzX2Vycm9yX2xlbiA9IDA7Cj4gPj4gLQo+ID4+IC0gICAgICAgICAgICBjbGVhbmVk
X2NvdW50LS07Cj4gPj4gLSAgICB9IHdoaWxlIChjbGVhbmVkX2NvdW50KTsKPiA+PiArICAgIH0g
d2hpbGUgKC0tdG9fcmVmaWxsKTsKPiA+Cj4gPiBKdXN0IGEgbml0LiBZb3UgbWlnaHQgd2FudCB0
byBicmVhayB0aGlzIHVwIGludG8gdHdvIHN0YXRlbWVudHMgbGlrZSBJCj4gPiBoYWQgYmVmb3Jl
LiBJIGtub3cgc29tZSBwZW9wbGUgd2l0aGluIEludGVsIHdlcmVuJ3QgYSBodWdlIGZhbiBvZiB3
aGVuCj4gPiBJIHVzZWQgdG8gZG8gdGhhdCBraW5kIG9mIHRoaW5nIGFsbCB0aGUgdGltZSBpbiBs
b29wcyB3aGVyZSBJIHdvdWxkIGRvCj4gPiB0aGUgZGVjcmVtZW50IGFuZCB0ZXN0IGluIG9uZSBs
aW5lLi4gOikKPgo+IFNob3VsZCBJIHBsZWFzZSB0aGVtIG9yIGRvIGl0IGFzIEkgd2FudCB0bz8g
OkQgSSByZWFsaXplIGZyb20gdGhlCj4gY29tcGlsZXIncyBQb1YgaXQncyBtb3N0IGxpa2VseSB0
aGUgc2FtZSwgYnV0IGR1bm5vLCB3aHkgbm90LgoKSWYgbm9ib2R5IGludGVybmFsbHkgaXMgYnVn
Z2luZyB5b3UgYWJvdXQgaXQgdGhlbiBJIGFtIGZpbmUgd2l0aCBpdC4gSQpqdXN0IGtub3cgYmFj
ayBkdXJpbmcgbXkgZXJhIHBlb3BsZSB3b3VsZCBjb21wbGFpbiBhYm91dCB0aGF0IGZyb20gYQpt
YWludGFpbmFiaWxpdHkgcGVyc3BlY3RpdmUuIEkgZ3Vlc3MgSSBnb3QgdHJhaW5lZCB0byBjYXRj
aCB0aG9zZSBraW5kCm9mIHRoaW5ncyBhcyBhIHJlc3VsdC4KCj4gPgo+ID4+Cj4gPj4gICAgICBp
ZiAocnhfcmluZy0+bmV4dF90b191c2UgIT0gbnR1KQo+ID4+ICAgICAgICAgICAgICBpYXZmX3Jl
bGVhc2VfcnhfZGVzYyhyeF9yaW5nLCBudHUpOwo+ID4+Cj4gPj4gLSAgICByZXR1cm4gZmFsc2U7
Cj4KPiBbLi4uXQo+Cj4gPj4gICAgICAvKiBpZiB3ZSBhcmUgdGhlIGxhc3QgYnVmZmVyIHRoZW4g
dGhlcmUgaXMgbm90aGluZyBlbHNlIHRvIGRvICovCj4gPj4gICNkZWZpbmUgSUFWRl9SWERfRU9G
IEJJVChJQVZGX1JYX0RFU0NfU1RBVFVTX0VPRl9TSElGVCkKPiA+PiAgICAgIGlmIChsaWtlbHko
aWF2Zl90ZXN0X3N0YXRlcnIocnhfZGVzYywgSUFWRl9SWERfRU9GKSkpCj4gPgo+ID4gWW91IG1h
eSB3YW50IHRvIHNlZSBpZiB5b3UgY2FuIGdldCByaWQgb2YgdGhpcyBmdW5jdGlvbiBlbnRpcmVs
eSwKPiA+IHBlcmhhcHMgeW91IGRvIGluIGEgbGF0ZXIgcGF0Y2guIFRoaXMgZnVuY3Rpb24gd2Fz
IGFkZGVkIGZvciBpeGdiZSBiYWNrCj4gPiBpbiB0aGUgZGF5IHRvIGFsbG93IHVzIHRvIHBsYWNl
IHRoZSBza2IgYmFjayBpbiB0aGUgcmluZyBmb3IgdGhlIFJTQwo+ID4gYmFzZWQgd29ya2xvYWRz
IHdoZXJlIHdlIGhhZCB0byBkZWFsIHdpdGggaW50ZXJsZWF2ZWQgZnJhbWVzIGluIHRoZSBSeAo+
ID4gcGF0aC4KPiA+Cj4gPiBGb3IgZXhhbXBsZSwgb25lIHF1ZXN0aW9uIGhlcmUgd291bGQgYmUg
d2h5IGFyZSB3ZSBwYXNzaW5nIHNrYj8gSXQKPiA+IGlzbid0IHVzZWQgYXMgZmFyIGFzIEkgY2Fu
IHRlbGwuCj4KPiBZZXMsIEknbSBvcHRpbWl6aW5nIGFsbCB0aGlzIG91dCBsYXRlciBpbiB0aGUg
c2VyaWVzLiBJIHdhcyBzdXJwcmlzZWQKPiBqdXN0IGFzIG11Y2ggYXMgeW91IHdoZW4gSSBzYXcg
c2tiIGdldHRpbmcgcGFzc2VkIHRvIGRvIG5vdGhpbmcgLl8uCgpUaGUgZnVubnkgcGFydCBmb3Ig
bWUgaXMgdGhhdCBpdCBpcyBsaWtlIHJldmlld2luZyBjb2RlIHdyaXR0ZW4gdmlhIGEKZ2FtZSBv
ZiB0ZWxlcGhvbmUuIEkgcmVjb2duaXplIHRoZSBjb2RlIGJ1dCBoYXZlIHRvIHRoaW5rIGFib3V0
IGl0CnNpbmNlIHRoZXJlIGFyZSBhbGwgdGhlIGJpdHMgb2YgY2hhbmdlcyBhbmQgc3VjaCBmcm9t
IHRoZSBvcmlnaW5hbAppeGdiZS4KCj4gWy4uLl0KPgo+IFRoYW5rcyBmb3IgdGhlIGRldGFpbGVk
IHJldmlld3MsIHN0dWZmIHRoYXQgSW50ZWwgb2Z0ZW4gbGFja3MgOnMgOkQKCk5vIHByb2JsZW0s
IGl0IHdhcyB0aGUgbGVhc3QgSSBjb3VsZCBkbyBzaW5jZSBJIGFtIHJlc3BvbnNpYmxlIGZvciBz
bwptdWNoIG9mIHRoaXMgY29kZSBpbiB0aGUgZWFybGllciBkcml2ZXJzIGFueXdheS4gSWYgbm90
aGluZyBlbHNlIEkKZmlndXJlZCBJIGNvdWxkIHByb3ZpZGUgYSBiaXQgb2YgaGlzdG9yeSBvbiB3
aHkgc29tZSBvZiB0aGlzIHdhcyB0aGUKd2F5IGl0IHdhcy4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
