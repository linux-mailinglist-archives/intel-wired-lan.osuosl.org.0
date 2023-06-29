Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B73B742939
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 17:15:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AD56415C2;
	Thu, 29 Jun 2023 15:15:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AD56415C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688051744;
	bh=97jtSNVah1upc4e/4ERjOvmspCAme3riEhVAfCZJdxE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vL10wbfRwibia+hQ7W71imdcfucurKbN9LiR96qIf6XxiRsd724FQWwG2Gqb6PS0p
	 bJ10jXrt6Lf0dFL8hUFn3W0G20tqVK9fMpWJ44hbfwruaJSSzhQEg6WpqPGAdy0ruy
	 khW3S7PgJ9NRoYLYc+Iivwm0c9kPzPq3qmG3cdWJ7kA+6f12cEpl1Ufiv2NU54BcBb
	 baqIynYhuIUvOkgC7cHOQ3yKI+CXJ6s3qiDLZ+CL7GwJkDMRJ/O8W8WfPgkcAFNkcV
	 yNShuS1to0eE06WYSI2GDKryzF1vo75UbVRdhcTnPDUBNaHzVnsL0MECKIwdT7PbOZ
	 DYcVMDI47lH+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xYiJ0x3YEuKs; Thu, 29 Jun 2023 15:15:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5DAE405AD;
	Thu, 29 Jun 2023 15:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5DAE405AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D48D1BF279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22107404C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22107404C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uiuBdPgQKZ_d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 08:26:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59DD3400DA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59DD3400DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:26:43 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-37-b7up1kU4MdKgs5CqgRZoww-1; Thu, 29 Jun 2023 04:26:40 -0400
X-MC-Unique: b7up1kU4MdKgs5CqgRZoww-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-30932d15a30so270156f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 01:26:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688027200; x=1690619200;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2X/9hjh4GCRep3Yr5A88t6/9ZJUgY/QuDsFgqFDxHcg=;
 b=DCjRct7eC3LYYLeC5OqQVM6qdlZy2hNhJ4/UldibHCUIoUgg9cb19XFG5CWFkgL3OT
 Y9Ll874e6a9dJiiwiopSmHnNOvLwecVAPOykuCwHTFCs9t1f2tu6G9iV6D1mSPT05sGf
 Ov9bAeCcZk/7Re3RdUExdkA/upJNSELsH0/0dJjPKaE0YsaioMrJLywM1ZNyeP4zVW2O
 ccQr+POsaEVWK0zls/gUscLntjsuqWCHicmNEp37PUXc1KO8gXzPleZNy+U7ctYZcVcW
 Jy72SVETIV0E5FRQBvJC8E7NQg7liQgVmWAp0nIjCr1y8hiNCg0PsXxWTGdyYlXGQnyr
 psFQ==
X-Gm-Message-State: AC+VfDwF2xXZ3CEC9vIrHtPCmMpTri65Hq7Xds1XN8QCaVKVwBidx9X6
 usBbswDAEuFZB5lU9fThPnVJP82jQwBUMxqT9c/eCWPCTauQE9LIzoMhI5RZLxqiTvB2Ci+rK71
 9T3oqwE3vEZuQmdEBqfts5uJv9oD+CYt/tSRHuIBBIZYXHg==
X-Received: by 2002:a5d:4c49:0:b0:307:9702:dfc8 with SMTP id
 n9-20020a5d4c49000000b003079702dfc8mr32317056wrt.48.1688027199778; 
 Thu, 29 Jun 2023 01:26:39 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7omIpTgTvWmp/XA4qHqIcJGGRJMHLQApXBTxOevoUf3FMPyDoPRMaq5jK0ngggDraIqFDpoXXUgwpysfyG+3w=
X-Received: by 2002:a5d:4c49:0:b0:307:9702:dfc8 with SMTP id
 n9-20020a5d4c49000000b003079702dfc8mr32317009wrt.48.1688027199420; Thu, 29
 Jun 2023 01:26:39 -0700 (PDT)
MIME-Version: 1.0
References: <CACLnSDhkUA=19905RKk=f1WBkd3jTEDcvytJCgavi90FroXb5w@mail.gmail.com>
 <ZJ0/StDYFANB1COA@nanopsycho>
In-Reply-To: <ZJ0/StDYFANB1COA@nanopsycho>
From: Vitaly Grinberg <vgrinber@redhat.com>
Date: Thu, 29 Jun 2023 11:26:28 +0300
Message-ID: <CACLnSDgudK155J8myg99Q+sr18sUy5nJOQsBWtgsFBPGRVhDCQ@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Thu, 29 Jun 2023 15:15:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688027202;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2X/9hjh4GCRep3Yr5A88t6/9ZJUgY/QuDsFgqFDxHcg=;
 b=UalajFWSBy0qITeImnTR8Yh+pO5iHnOpdgx7eKPuyYugE3YwonarzuAn6iBBMJUdJpFw3g
 Ptf+ggvnF23HcYQjKgKxSbKu/kBo772JrysoXAj4KCr+ciz0sgpkJlDExITHYHfQJ1WdX3
 WWR105kFr1OzgbgINMKWJ/WD47hSuQo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UalajFWS
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 00/10] Create common DPLL
 configuration API
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
Cc: geert+renesas@glider.be, linux-doc@vger.kernel.org, razor@blackwall.org,
 phil@nwl.cc, jesse.brandeburg@intel.com, edumazet@google.com,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, linux-clk@vger.kernel.org, lucien.xin@gmail.com,
 leon@kernel.org, corbet@lwn.net, linux-rdma@vger.kernel.org,
 masahiroy@kernel.org, Michael Tsirkin <mst@redhat.com>,
 Javier Martinez Canillas <javierm@redhat.com>, vadfed@meta.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, vadfed@fb.com,
 Paolo Abeni <pabeni@redhat.com>, ricardo.canuelo@collabora.com, arnd@arndb.de,
 idosch@nvidia.com, richardcochran@gmail.com, claudiajkang@gmail.com,
 kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 David Airlie <airlied@redhat.com>, nicolas.dichtel@6wind.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk, sj@kernel.org,
 vadim.fedorenko@linux.dev, linux@zary.sk, gregkh@linuxfoundation.org,
 ogabbay@kernel.org, nipun.gupta@amd.com, linux-kernel@vger.kernel.org,
 andy.ren@getcruise.com, tzimmermann@suse.de, jonathan.lemon@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net, milena.olech@intel.com,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgSmlyaSwKV2UgYXJlIHB1c2hpbmcgZm9yIGl0IHRvIGJlIGltcGxlbWVudGVkIGluIEludGVs
IEljZSBkcml2ZXIuClRoYW5rcywKVml0YWx5CgpPbiBUaHUsIEp1biAyOSwgMjAyMyBhdCAxMToy
MuKAr0FNIEppcmkgUGlya28gPGppcmlAcmVzbnVsbGkudXM+IHdyb3RlOgo+Cj4gVGh1LCBKdW4g
MjIsIDIwMjMgYXQgMDk6NDQ6MTlBTSBDRVNULCB2Z3JpbmJlckByZWRoYXQuY29tIHdyb3RlOgo+
ID5IaSwKPiA+Q291bGQgaXQgYmUgcG9zc2libGUgdG8gYWRkIFBQUyBEUExMIHBoYXNlIG9mZnNl
dCB0byB0aGUgbmV0bGluayBBUEk/IFdlCj4gPmFyZSByZWx5aW5nIG9uIGl0IGluIHRoZSBFODEw
LWJhc2VkIGdyYW5kbWFzdGVyIGltcGxlbWVudGF0aW9uLgo+Cj4gSW4gd2hpY2ggZHJpdmVyIHlv
dSBuZWVkIHRvIGltcGxlbWVudCB0aGlzPwo+Cj4KPiA+VGhhbmtzLAo+ID5WaXRhbHkKPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
