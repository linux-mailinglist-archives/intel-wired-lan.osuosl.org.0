Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0564174A5E8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 23:30:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4965C60B95;
	Thu,  6 Jul 2023 21:30:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4965C60B95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688679057;
	bh=IsAh47cufcaCWL9JIG/PbQ+dcLQG81vUnD0yfUbZASA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=M3Dx1NayZW0JOFQQEC+M4xoxULHWyko3J7MBOystMayZoh/J7bjbpK+bhmFkprhFO
	 WfeZ4qjsfzp+UYaO+pwBuKnFobD3oAFPlbdKXkMvR+q0XhY7ppfywtX6OPw3sL4TXZ
	 4iJtFJp1RDidIOEnlf49q9/PrOrNhZggwPGC0T1PDSrjzTslqY09pC9gZuvFMQYcpo
	 RT5vb+i4bySzE2zrvwJrsttXQ2tb3uLK48ZRfhJTZQy2kuoyTWUOOMhWyqDeLRc6J+
	 tmcNiEAPQHyVeSUtbdcoQzUfFOQn+lc2UfEdCWrEkqAA4T2BJTJzuim3MIW8OuYXLN
	 6DdafEGnhx4Tw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sqnhvr-DiYC8; Thu,  6 Jul 2023 21:30:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2033360B7C;
	Thu,  6 Jul 2023 21:30:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2033360B7C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D3CB91BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 21:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB492821A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 21:30:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB492821A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EymhvQCXWz6z for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 21:30:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9BE8821A6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9BE8821A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 21:30:49 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-146-8K87KW3_PBi5FCZVcWJKhw-1; Thu, 06 Jul 2023 17:30:47 -0400
X-MC-Unique: 8K87KW3_PBi5FCZVcWJKhw-1
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-7675fc3333eso90065885a.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jul 2023 14:30:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688679046; x=1691271046;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:reply-to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=J7jc5Xt5OwHj0jB9aQC+Uq3PbScwoHTvSP8Bz1i/QuU=;
 b=Q38muR5CpSufwjSkZTKjpk5EgCOpyWvRfVc1/8oX4xRA0VGkJ1XUt+A2ijGvtgYr4p
 eR8rC4q+HPFP2lOwm9O3/61ZxFVcBBW6ZKKiaGOXD0XTPxRtqBcciXilDfoxhDhDj1Zo
 bFXALDfZ1TBS3umuP43byDCEto+7Ak/FmEKoJkVAhGDLVor5VaKk63UPCNDn4fcWOPcb
 LlMrqxNzGwWaUZ2fjoIlmwHy7kkJL2XzF/d1qKhR0cZqbYywb5skOiXcUJyDZ4Rlcs2W
 Ae1pVlV5AcRrIxUuL/WEdOWwCeZNuvl5m3WtihQDHXKGpco4G4XnlX1zFAWTJwo5tN9z
 B36A==
X-Gm-Message-State: ABy/qLakF9ey32ZHTzfJuGFF1u0V6+yxwVaeVYT2Zi4MMu0FwRdmYLt+
 WnsQ+0PtY96PEUirNR02vQhNclKBPtkpqpl3kb5YC0xNYYWXkCrLn2SSskBoJSna35J3cwMpxof
 FMwkUi9i4rkdRlXzjBhFRJmE2TyvB3w==
X-Received: by 2002:a05:620a:2493:b0:767:6cd5:ec8b with SMTP id
 i19-20020a05620a249300b007676cd5ec8bmr8376332qkn.27.1688679046724; 
 Thu, 06 Jul 2023 14:30:46 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHgvJsIbhCSjhTrZoP7QXnDNAQZfTuhcVK1JVsu6+bJKK8QySVPVB5tWG6oX59lKUJk0aCmyA==
X-Received: by 2002:a05:620a:2493:b0:767:6cd5:ec8b with SMTP id
 i19-20020a05620a249300b007676cd5ec8bmr8376305qkn.27.1688679046478; 
 Thu, 06 Jul 2023 14:30:46 -0700 (PDT)
Received: from [192.168.2.56] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 m14-20020a05620a13ae00b00765ac1335c2sm1150488qki.75.2023.07.06.14.30.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Jul 2023 14:30:45 -0700 (PDT)
Message-ID: <eda7b84e56123bce167a64133572440e6806ef1e.camel@redhat.com>
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 06 Jul 2023 23:30:41 +0200
In-Reply-To: <20230619105813.369912-1-poros@redhat.com>
References: <20230619105813.369912-1-poros@redhat.com>
Organization: Red Hat
User-Agent: Evolution 3.48.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688679048;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J7jc5Xt5OwHj0jB9aQC+Uq3PbScwoHTvSP8Bz1i/QuU=;
 b=UKjBqyEfqNaILtNw1IvjtMnn+F3LbHq3Vw1ABM+cE/oCqiwH3BzFDxDZpfXQUuh48CbbAr
 LUYRLgTh4UDqcCWb7Svz8GuHraLERoVi6AvV2gGBGgK9gcHmf5p6W9mtAZ9UJ5kcbmDFZO
 +ADTkMOh077tRCfw2g87EMzdh01cjJ0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UKjBqyEf
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Unregister netdev and
 devlink_port only once
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
Reply-To: poros@redhat.com
Cc: pmenzel@molgen.mpg.de, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UGV0ciBPcm9zIHDDrcWhZSB2IFBvIDE5LiAwNi4gMjAyMyB2IDEyOjU4ICswMjAwOgo+IFNpbmNl
IGNvbW1pdCA2NjI0ZTc4MGE1NzdmYyAoImljZTogc3BsaXQgaWNlX3ZzaV9zZXR1cCBpbnRvIHNt
YWxsZXIKPiBmdW5jdGlvbnMiKSBpY2VfdnNpX3JlbGVhc2UgZG9lcyB0aGluZ3MgdHdpY2UuIFRo
ZXJlIGlzIHVucmVnaXN0ZXIKPiBuZXRkZXYgd2hpY2ggaXMgdW5yZWdpc3RlcmVkIGluIGljZV9k
ZWluaXRfZXRoIGFsc28uCj4gCj4gSXQgYWxzbyB1bnJlZ2lzdGVycyB0aGUgZGV2bGlua19wb3J0
IHR3aWNlIHdoaWNoIGlzIGFsc28gdW5yZWdpc3RlcmVkCj4gaW4gaWNlX2RlaW5pdF9ldGgoKS4g
VGhpcyBkb3VibGUgZGVyZWdpc3RyYXRpb24gaXMgaGlkZGVuIGJlY2F1c2UKPiBkZXZsX3BvcnRf
dW5yZWdpc3RlciBpZ25vcmVzIHRoZSByZXR1cm4gdmFsdWUgb2YgeGFfZXJhc2UuCj4gCkhpLAoK
SXMgaXQgcG9zc2libGUgdG8gcHVzaCB0aGlzIHBhdGNoIGZvcndhcmQ/IEkgdGhpbmsgdGhlIHF1
ZXN0aW9ucyBoYXZlCmJlZW4gYW5zd2VyZWQuIE9yIGlzIHNvbWV0aGluZyBzdGlsbCB1bmNsZWFy
PwoKUmVnYXJkcywKUGV0cgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
