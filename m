Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD6D7184A0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 16:19:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B6E0834D5;
	Wed, 31 May 2023 14:19:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B6E0834D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685542770;
	bh=z4pAUrDvY/43YHM/1QQ9D6bWSvuzc30SoKvydha9HoE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LitKhk/0xv92tMOcHRczAhgNKvXztgIijKdBYdBkU2ZDcyndD2AjmGexp3SSZYj4S
	 NZwXzx6pcxsaPsMYayJ0ZUxAiCaHF1FzEBtJoUllpP9XwPF4mxF/FSx/UJ6L0tIDga
	 TnSmfcLOlSZFTAiHhwmVpXprwarbil8/Oe1H/oeks9hhRj5pDMmE/feS9BiYyITLo9
	 6P3/V4a0btsjHy7iBkpBvkZN9sJ816yUBqz8DcVfgnZE9SJ1WvcGqz+LMKi5Qgn+oL
	 X4dIhYhPi/fa4aD4dGUeSvzbuPyZNV4gEElMuwU9sAm3ZrAivXWkIcmXpWXB40QkQm
	 ZzY+xxYlNwxjw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c7vsL1gvlM4v; Wed, 31 May 2023 14:19:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71B24813F9;
	Wed, 31 May 2023 14:19:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71B24813F9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0BEA91BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 14:19:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D857D408D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 14:19:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D857D408D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RLFw0h202OUe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 14:19:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82263404F4
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 82263404F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 14:19:22 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-5-0m9wvqPgPq21bfEMQdB3MQ-1; Wed, 31 May 2023 10:19:20 -0400
X-MC-Unique: 0m9wvqPgPq21bfEMQdB3MQ-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-96f9996fb3dso491619366b.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 07:19:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685542758; x=1688134758;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nb6k4fw9fqQ8jT2M+Vl61EiEK3TteOntz31CpQtxp0c=;
 b=J63S1oG5PjIW9ema/V+l0Xq52c5BkjV2uYwJzWeyQEnNovVtKzVlcueVEoI5pz78Ol
 KnV8C2xlWEcAImOzPG+r2Qrd/H/JyA2OHPffJ9K7blJJKfWFpMN9dbuD5vQ6C0LpEaxQ
 AGjh1W+0Tyj2XPdMEdXGZII6WjmfAS/tWgcN/IYBXB+Zqozd/yVwvk6fAk+sIN0atgTF
 Cyh8qNppFck4Nvm648TKSjh+3CHtz8aMB18QOOxRHzr6n43DVVCrZqzF24tZ4BBLVz3z
 mcgpMNuUywoDLfPuq3M6OpJVuflpc8YxeF81tvl6zyBRaeZyH2K7rrCmgkHzuPVYcAqi
 u52A==
X-Gm-Message-State: AC+VfDx/EEYnVtcdkUZTE0smVbtDSwDZnukES6qRDyruzKKJUBCIH38y
 2DowOwoNj5P1tKbnShsV+6lSUay1+hDhoX8b0BE9U4PmWYqXMKmvmVUQyLZWTMYVR+AhtwGLo9i
 mmVkB7pDPaouOHNNU+OwzZ6O0cF9m/wtscigYM4NPWxGJeA==
X-Received: by 2002:a17:907:d24:b0:96f:d6bd:390c with SMTP id
 gn36-20020a1709070d2400b0096fd6bd390cmr6141536ejc.67.1685542758569; 
 Wed, 31 May 2023 07:19:18 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ64P+NLJ2V90zeXvIoQW4TgqsWf0OqpLqf5X8sbpNTPxDStoCSAeouqbdx7DxD0lv/o/xlDRNbbRjCp9t8dWBk=
X-Received: by 2002:a17:907:d24:b0:96f:d6bd:390c with SMTP id
 gn36-20020a1709070d2400b0096fd6bd390cmr6141524ejc.67.1685542758258; Wed, 31
 May 2023 07:19:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230530174605.2772054-1-jacob.e.keller@intel.com>
 <20230530174605.2772054-6-jacob.e.keller@intel.com>
In-Reply-To: <20230530174605.2772054-6-jacob.e.keller@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 31 May 2023 16:19:06 +0200
Message-ID: <CADEbmW0zqcb9AqHTcy=+bk70ippSR0Ze9FJDMcXBAeT7XWgsLg@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1685542761;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nb6k4fw9fqQ8jT2M+Vl61EiEK3TteOntz31CpQtxp0c=;
 b=ddhDVgyK5R6ipAIYivjaNPQEJqYeSTZmygoEqvnrGDlwVICDgc5vvHmQSHJw/+HbyH8Bcu
 lygTvJ1NT2wMpe4dXvr82Yu+5w9Qes0g67r93+dKjHqXJqiSlg1NggqkdwgMLoaaYEsE26
 OsRiVUMHYuKqHl1YyhHKqBBA8i9EJng=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ddhDVgyK
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: do not re-enable
 miscellaneous interrupt until thread_fn completes
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBNYXkgMzAsIDIwMjMgYXQgNzo0NuKAr1BNIEphY29iIEtlbGxlciA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPiB3cm90ZToKPgo+IEF0IHRoZSBlbmQgb2YgaWNlX21pc2NfaW50cigp
IHRoZSBkcml2ZXIgY2FsbHMgaWNlX2lycV9keW5hbWljX2VuYSgpIHRvCj4gcmUtZW5hYmxlIHRo
ZSBtaXNjZWxsYW5lb3VzIGludGVycnVwdC4gVGhpcyBpcyBkb25lIGJlZm9yZSB0aGUKPiBpY2Vf
bWlzY19pbnRyX3RocmVhZF9mbiBjYW4gcnVuIGFuZCBjb21wbGV0ZS4KPgo+IEFjY29yZGluZyB0
byB0aGUga2VybmVsIGZ1bmN0aW9uIGNvbW1lbnQgZG9jdW1lbnRhdGlvbiBmb3IKPiByZXF1ZXN0
X3RocmVhZGVkX2lycSgpLCB0aGUgaW50ZXJydXB0IHNob3VsZCByZW1haW4gZGlzYWJsZWQgdW50
aWwgdGhlCj4gdGhyZWFkIGZ1bmN0aW9uIGNvbXBsZXRlcyBpdHMgdGFzay4KPgo+IEJ5IHJlLWVu
YWJsaW5nIHRoZSBpbnRlcnJ1cHQgYXQgdGhlIGVuZCBvZiB0aGUgaGFyZCBJUlEsIGl0IGlzIHBv
c3NpYmxlIGZvcgo+IGEgbmV3IGludGVycnVwdCB0byB0cmlnZ2VyIHdoaWxlIHRoZSB0aHJlYWQg
ZnVuY3Rpb24gaXMgcHJvY2Vzc2luZy4gVGhpcyBpcwo+IHByb2JsZW1hdGljIGZvciBQVFAgVHgg
dGltZXN0YW1wcy4KPgo+IEZvciBFODIyIGRldmljZXMsIHRoZSBoYXJkd2FyZSBpbiB0aGUgUEhZ
IGtlZXBzIHRyYWNrIG9mIGhvdyBtYW55Cj4gb3V0c3RhbmRpbmcgdGltZXN0YW1wcyBhcmUgZ2Vu
ZXJhdGVkIGFuZCBob3cgbWFueSB0aW1lc3RhbXBzIGFyZSByZWFkIGZyb20KPiB0aGUgUEhZLgo+
Cj4gVGhpcyBjb3VudGVyIGlzIGluY3JlbWVudGVkIG9uY2UgZm9yIGVhY2ggdGltZXN0YW1wIHRo
YXQgaXMgY2FwdHVyZWQgYnkKPiBoYXJkd2FyZSwgYW5kIGRlY3JlbWVudGVkIG9uY2UgZWFjaCB0
aW1lIGEgdGltZXN0YW1wIGlzIHJlYWQgZnJvbSB0aGUgUEhZLgo+IFRoZSBQSFkgd2lsbCBub3Qg
Z2VuZXJhdGUgYSBuZXcgaW50ZXJydXB0IHVubGVzcyB0aGlzIGludGVybmFsIGNvdW50ZXIgaXMK
PiB6ZXJvIGJlZm9yZSB0aGUgbW9zdCByZWNlbnRseSBjYXB0dXJlZCB0aW1lc3RhbXAuCj4KPiBC
ZWNhdXNlIG9mIHRoaXMgY291bnRlciBiZWhhdmlvciwgYSByYWNlIHdpdGggdGhlIGhhcmQgSVJR
IGFuZCB0aHJlYWRlZCBJUlEKPiBmdW5jdGlvbiBjYW4gcmVzdWx0IGluIHRoZSBwb3RlbnRpYWwg
Zm9yIHRoZSBjb3VudGVyIHRvIGdldCBzdHVjayBzdWNoIHRoYXQKPiBubyBuZXcgaW50ZXJydXB0
cyB3aWxsIGJlIHRyaWdnZXJlZCB1bnRpbCB0aGUgZGV2aWNlIGlzIHJlc2V0Lgo+Cj4gQ29uc2lk
ZXIgdGhlIGZvbGxvd2luZyBmbG93Ogo+Cj4gIDEgLT4gVHggdGltZXN0YW1wIGNvbXBsZXRlcyBp
biBoYXJkd2FyZQo+ICAyIC0+IHRpbWVzdGFtcCBpbnRlcnJ1cHQgb2NjdXJzCj4gIDMgLT4gaWNl
X21pc2NfaW50cigpIHJlLWVuYWJsZXMgdGltZXN0YW1wIGludGVycnVwdCwgYW5kIHdha2VzIHRo
ZQo+ICAgICAgIHRocmVhZF9mbgo+ICA0IC0+IHRocmVhZF9mbiBpcyBydW5uaW5nIGFuZCBwcm9j
ZXNzaW5nIFR4IHRpbWVzdGFtcAo+ICA1IC0+IHRoZSBUeCB0aW1lc3RhbXAgaXMgcmVhZCBmcm9t
IFBIWSwgY2xlYXJpbmcgdGhlIGNvdW50ZXIKPiAgNiAtPiBhIG5ldyBUeCB0aW1lc3RhbXAgY29t
cGxldGVzIGluIGhhcmR3YXJlLCB0cmlnZ2VyaW5nIGludGVycnVwdAo+ICA3IC0+IHRoZSB0aHJl
YWRfZm4gaGFzbid0IGV4aXRlZCBhbmQgcmVwb3J0ZWQgSVJRIGhhbmRsZWQKPiAgOCAtPiBpY2Vf
bWlzY19pbnRyKCkgdHJpZ2dlcnMgYW5kIHNlZXMgUFRQIGludGVycnVwdCwgc28gdHJpZXMgdG8g
d2FrZSB0aHJlYWQKPiAgOSAtPiB0aHJlYWRfZm4gaXMgYWxyZWFkeSBydW5uaW5nIChJUlFURl9S
VU5USFJFQUQgaXMgc2V0IHN0aWxsISkgc28gd2UKPiAgICAgICBza2lwIHJ1bm5pbmcgdGhlIHRo
cmVhZC4uLgoKVGhlcmUgaXMgYSBtaXN1bmRlcnN0YW5kaW5nIGhlcmUuIElSUVRGX1JVTlRIUkVB
RCBkb2VzIG5vdCByZW1haW4gc2V0CmZvciB0aGUgZXhlY3V0aW9uIG9mIHRocmVhZF9mbi4gVGhl
IElSUSB0aHJlYWQgY2xlYXJzIHRoZSBmbGFnCipiZWZvcmUqIGl0IHN0YXJ0cyBleGVjdXRpbmcg
eW91ciB0aHJlYWRfZm4uIFNlZSBrZXJuZWwvaXJxL21hbmFnZS5jLgpUaGUgSVJRIHRocmVhZCdz
IG1haW4gbG9vcCBpcyBpbiBpcnFfdGhyZWFkKCkuIEV2ZXJ5IGl0ZXJhdGlvbiBvZiB0aGUKbG9v
cCBzdGFydHMgd2l0aCBpcnFfd2FpdF9mb3JfaW50ZXJydXB0KCkuIEl0IHVzZXMKInRlc3RfYW5k
X2NsZWFyX2JpdChJUlFURl9SVU5USFJFQUQsIC4uLikiIHRvIGNoZWNrIGlmIHRoZXJlJ3Mgd29y
ayB0bwpkby4KClNvIGl0J3Mgbm90IHBvc3NpYmxlIGZvciBzdGVwIDkgdG8gZm9yZ2V0IHRoZSBp
bnRlcnJ1cHQgbGlrZSB0aGF0LiBJZgp0aHJlYWRfZm4gaXMgc3RpbGwgZXhlY3V0aW5nLCB0aGUg
c2V0dGluZyBvZiBJUlFURl9SVU5USFJFQUQgYnkgdGhlCmhhcmQgaW50ZXJydXB0IGhhbmRsZXIg
d2lsbCB0ZWxsIHRoZSBJUlEgdGhyZWFkIHRvIGdvIHRocm91Z2ggdGhlIGxvb3AKYWdhaW4uCgpN
aWNoYWwKCj4gMTAgLT4gYW4gb3V0c3RhbmRpbmcgdGltZXN0YW1wIGlzIHJlbWFpbmluZyBidXQg
d2UgbmV2ZXIgcmVhZCBpdAo+IDExIC0+IGludGVycnVwdCBuZXZlciB0cmlnZ2VycyBhZ2Fpbgo+
Cj4gVGhlIGZpeCBmb3IgdGhpcyBjb21wbGljYXRlZCByYWNlIGNvbmRpdGlvbiBpcyBzaW1wbGU6
IGRvIG5vdCByZS1lbmFibGUgdGhlCj4gbWlzY2VsbGFuZW91cyBpbnRlcnJ1cHQgdW50aWwgKmFm
dGVyKiB0aGUgdGhyZWFkIGZ1bmN0aW9uIGNvbXBsZXRlcy4gSWYgYQo+IG5ldyB0aW1lc3RhbXAg
ZXZlbnQgdHJpZ2dlcnMgd2hpbGUgdGhlIGludGVycnVwdCBpcyBkaXNhYmxlZCwgaXQgd2lsbCBi
ZQo+IHJlbWVtYmVyZWQgYW5kIHNob3VsZCBjYXVzZSB0aGUgaW50ZXJydXB0IHRvIHRyaWdnZXIg
YWdhaW4gaW1tZWRpYXRlbHkKPiBhZnRlciB3ZSByZS1lbmFibGUgdGhlIGludGVycnVwdC4KPgo+
IEZpeGVzOiAxMjI5YjMzOTczYzcgKCJpY2U6IEFkZCBsb3cgbGF0ZW5jeSBUeCB0aW1lc3RhbXAg
cmVhZCIpCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5j
IHwgOSArKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4g
aW5kZXggNzJlMWI5MTliMmQzLi41MWZlM2RhMGQ1NGYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+IEBAIC0zMTc5LDggKzMxNzksNiBAQCBzdGF0aWMg
aXJxcmV0dXJuX3QgaWNlX21pc2NfaW50cihpbnQgX19hbHdheXNfdW51c2VkIGlycSwgdm9pZCAq
ZGF0YSkKPiAgICAgICAgICAgICAgICAgfQo+ICAgICAgICAgfQo+Cj4gLSAgICAgICBpY2VfaXJx
X2R5bmFtaWNfZW5hKGh3LCBOVUxMLCBOVUxMKTsKPiAtCj4gICAgICAgICByZXR1cm4gSVJRX1dB
S0VfVEhSRUFEOwo+ICB9Cj4KPiBAQCAtMzE5Miw2ICszMTkwLDkgQEAgc3RhdGljIGlycXJldHVy
bl90IGljZV9taXNjX2ludHIoaW50IF9fYWx3YXlzX3VudXNlZCBpcnEsIHZvaWQgKmRhdGEpCj4g
IHN0YXRpYyBpcnFyZXR1cm5fdCBpY2VfbWlzY19pbnRyX3RocmVhZF9mbihpbnQgX19hbHdheXNf
dW51c2VkIGlycSwgdm9pZCAqZGF0YSkKPiAgewo+ICAgICAgICAgc3RydWN0IGljZV9wZiAqcGYg
PSBkYXRhOwo+ICsgICAgICAgc3RydWN0IGljZV9odyAqaHc7Cj4gKwo+ICsgICAgICAgaHcgPSAm
cGYtPmh3Owo+Cj4gICAgICAgICBpZiAoaWNlX2lzX3Jlc2V0X2luX3Byb2dyZXNzKHBmLT5zdGF0
ZSkpCj4gICAgICAgICAgICAgICAgIHJldHVybiBJUlFfSEFORExFRDsKPiBAQCAtMzIwNCw4ICsz
MjA1LDYgQEAgc3RhdGljIGlycXJldHVybl90IGljZV9taXNjX2ludHJfdGhyZWFkX2ZuKGludCBf
X2Fsd2F5c191bnVzZWQgaXJxLCB2b2lkICpkYXRhKQo+ICAgICAgICAgfQo+Cj4gICAgICAgICBp
ZiAocGYtPm9pY3JfbWlzYyAmIFBGSU5UX09JQ1JfVFNZTl9UWF9NKSB7Cj4gLSAgICAgICAgICAg
ICAgIHN0cnVjdCBpY2VfaHcgKmh3ID0gJnBmLT5odzsKPiAtCj4gICAgICAgICAgICAgICAgIC8q
IFByb2Nlc3Mgb3V0c3RhbmRpbmcgVHggdGltZXN0YW1wcy4gSWYgdGhlcmUgaXMgbW9yZSB3b3Jr
LAo+ICAgICAgICAgICAgICAgICAgKiByZS1hcm0gdGhlIGludGVycnVwdCB0byB0cmlnZ2VyIGFn
YWluLgo+ICAgICAgICAgICAgICAgICAgKi8KPiBAQCAtMzIxNyw2ICszMjE2LDggQEAgc3RhdGlj
IGlycXJldHVybl90IGljZV9taXNjX2ludHJfdGhyZWFkX2ZuKGludCBfX2Fsd2F5c191bnVzZWQg
aXJxLCB2b2lkICpkYXRhKQo+ICAgICAgICAgICAgICAgICBwZi0+b2ljcl9taXNjICY9IH5QRklO
VF9PSUNSX1RTWU5fVFhfTTsKPiAgICAgICAgIH0KPgo+ICsgICAgICAgaWNlX2lycV9keW5hbWlj
X2VuYShodywgTlVMTCwgTlVMTCk7Cj4gKwo+ICAgICAgICAgcmV0dXJuIElSUV9IQU5ETEVEOwo+
ICB9Cj4KPiAtLQo+IDIuNDAuMC40NzEuZ2JkN2YxNGQ5MzUzYgo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
