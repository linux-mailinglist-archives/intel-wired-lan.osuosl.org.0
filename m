Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E19AB6F6A60
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 May 2023 13:47:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A3F7615D1;
	Thu,  4 May 2023 11:47:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A3F7615D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683200824;
	bh=Yq/3A0eqGNSCLlK4PebXixtkuLf4jv6yW6JBRnLBwhs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m4vK61AKSNAjZ29l6fgJFjOLhMuWCjQjxNcekBfjP7FcPvk15d0dIt/mLh2tI+BI7
	 W38TSbpcBoP549F4Chc1J0m2PdUo8p2VEXDykSL2AM9zXAJfW+Pjg72z2OuUKwA8lV
	 EdGrpEFlQ0SDWZzlkJFRX68bJ175zaKYZTiRtJ4fk/INcQ5qESrgYqACxbup+Fb55c
	 Ro1LU1QpSlKGHSnFbkpurVwZuCGuevZp3bYsj9bfuguGktX3wFjK8zSFT2ju8ZDljQ
	 VLWtOXt3C19TQNfoZU9YXcmz79tpv75/9xkv7K0MjGzauv8UMYM2weo3lViH676ecg
	 CUZYQ7eyfFdKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FlLstrPSlXtC; Thu,  4 May 2023 11:47:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E431615BE;
	Thu,  4 May 2023 11:47:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E431615BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D91DF1BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 11:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB4BF84010
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 11:46:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB4BF84010
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0BOJCouLaXIf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 11:46:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA1CB84018
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA1CB84018
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 11:46:56 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-551-jrb2ic4sP0KU-lldhUaFZw-1; Thu, 04 May 2023 07:46:54 -0400
X-MC-Unique: jrb2ic4sP0KU-lldhUaFZw-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-95376348868so46294366b.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 04 May 2023 04:46:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683200813; x=1685792813;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=a3EBSwmzMoTZm5svidv0hQFC/s0JttHuuNBrBCx0FgE=;
 b=MG5cqPupUt44CeT0VLduX4PlxbU7/j8xsFH/uTcQA0c8VepPn7nth7+ySCD7qcWRns
 2LjvjWA2T+UU9xj91O+t0Bnu1DpO6nHehFQQqxjsSl8JPoXhPLDH3Nx913VSFWm8BnPo
 mdZi70TMXhZrFaPEEGRsiqgUo3WO+nJlQuGgI9ifw/b9D+2lStXAfzGA76KDC1QVhvP4
 /GPSC6UuloPOFI8KVvkAhu0S9+qPYjAEkUKJfH53+f6UXqjSHBfGAVYll59/I1aqFivt
 Vm1bO1BtYKfQT9QxSSU1V/Hz0LQdQMaN+Y3hFxaBMrq2I1IJ6dfH2Hevic2x5pCPEO78
 B+RA==
X-Gm-Message-State: AC+VfDx5yT3JwY8OFEAGE9QdvMmZ3ifaGTG4Iqbgy1O+5Sc5sG0tc3CT
 M3x/gZCdi39JSXhhazORdQN9lD7JxFKyw+ocRqFYoYyTBs0ic3SxRocWJnDFfeTpNpW66KRSgYV
 Dros7ZWjCY//T/sznVkEYCi1xaAKFxk4ZsWwEgyyuO4s+VA==
X-Received: by 2002:a17:907:dab:b0:94f:128d:63db with SMTP id
 go43-20020a1709070dab00b0094f128d63dbmr6280041ejc.17.1683200813187; 
 Thu, 04 May 2023 04:46:53 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4Ljayj7sn8jMXBsXyZpCHUn78yuExYMFHCt0YqaSsL7+P5unkBnMw5hOGO9VBTi9eSalh5LQctwxLbXkAHe0s=
X-Received: by 2002:a17:907:dab:b0:94f:128d:63db with SMTP id
 go43-20020a1709070dab00b0094f128d63dbmr6280029ejc.17.1683200812840; Thu, 04
 May 2023 04:46:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230427092309.3122-1-jan.sokolowski@intel.com>
In-Reply-To: <20230427092309.3122-1-jan.sokolowski@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 4 May 2023 13:46:42 +0200
Message-ID: <CADEbmW1u-p6drMsk-XQMYPCmNm_P8dgHG6O0tQ+=2db_kW4LTQ@mail.gmail.com>
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1683200815;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a3EBSwmzMoTZm5svidv0hQFC/s0JttHuuNBrBCx0FgE=;
 b=g1X1qi5nRBUvdh15n4eHQ6jUgLDkcVsE9DNgO2kIJ0CBrwlb1fXSAvQ2GpFPWm+RwBecbQ
 UEgaP4S9nHWiuNB91J/O62xf0PVATxtGjUY1kCrGhwqk7qRR4mX8uslBnjBx3QxYByw+0f
 60VjK/BN/V2QXZAbt2Gsxvusqk7Z/5A=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=g1X1qi5n
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix undersized tx_flags
 variable
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBBcHIgMjcsIDIwMjMgYXQgMTE6MTnigK9BTSBKYW4gU29rb2xvd3NraQo8amFuLnNv
a29sb3dza2lAaW50ZWwuY29tPiB3cm90ZToKPgo+IEFzIG5vdCBhbGwgSUNFX1RYX0ZMQUdTXyog
Zml0IGluIGN1cnJlbnQgMTYtYml0IGxpbWl0ZWQKPiB0eF9mbGFncyBmaWVsZCwgc29tZSBWTEFO
LXJlbGF0ZWQgZmxhZ3Mgd291bGQgbm90IHByb3Blcmx5IGFwcGx5Lgo+Cj4gRml4IHRoYXQgYnkg
cmVmYWN0b3JpbmcgdHhfZmxhZ3MgdmFyaWFibGUgaW50byBmbGFncyBvbmx5IGFuZAo+IGEgc2Vw
YXJhdGUgdmFyaWFibGUgdGhhdCBob2xkcyBWTEFOIElELiBBcyB0aGVyZSBpcyBzb21lIHNwYWNl
IGxlZnQsCj4gdHlwZSB2YXJpYWJsZSBjYW4gZml0IGJldHdlZW4gdGhvc2UgdHdvLiBQYWhvbGUg
cmVwb3J0cyBubyBzaXplCj4gY2hhbmdlIHRvIGljZV90eF9idWYgc3RydWN0Lgo+Cj4gRml4ZXM6
IGFhMWQzZmFmNzFhNiAoImljZTogUm9idXN0aWZ5IGNsZWFuaW5nL2NvbXBsZXRpbmcgWERQIFR4
IGJ1ZmZlcnMiKQo+IFNpZ25lZC1vZmYtYnk6IEphbiBTb2tvbG93c2tpIDxqYW4uc29rb2xvd3Nr
aUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEFsZXhhbmRlciBMb2Jha2luIDxhbGVrc2FuZGVy
LmxvYmFraW5AaW50ZWwuY29tPgoKSSB0ZXN0ZWQgdGhhdCB3aXRoIHRoaXMgcGF0Y2ggdGhlIGtl
cm5lbCBub3cgcGFzc2VzIFZMQU4gdGVzdHMgaW4gb3VyCmxhYiBhZ2FpbiAoYSB0ZXN0IGJhc2Vk
IG9uIExOU1QgVmxhbnNSZWNpcGUsCmh0dHBzOi8vbG5zdC5yZWFkdGhlZG9jcy5pby9lbi9sYXRl
c3QvdmxhbnNfcmVjaXBlLmh0bWwpLgoKVGVzdGVkLWJ5OiBNaWNoYWwgU2NobWlkdCA8bXNjaG1p
ZHRAcmVkaGF0LmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
