Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AE880DAC5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 20:23:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A47ED60EDF;
	Mon, 11 Dec 2023 19:23:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A47ED60EDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702322625;
	bh=kU4LnpprBlR8ad5jdZuzdg8RJgHVzDiozfLx9s5TMbA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Obcewi1VxhGyHTgDaPbFY08uwfDbSBDuq/1adACoNYs0wX/UYfrsBmxoDPOW77Wzr
	 rapysQpXLP/WJ2xfCXbxfy+dWQmqHtmy0K1fDRC8C6PkmPG8wXl6zWoSzwypuIuoca
	 +EWZt0k8bFCK4NakcFgw6vpF3U/9yNx36FUubcgAWhF/OkStBcoALoJVDDR2u4q7YW
	 TrcCPb7NZrfDWGiwfZtcbhWJ7TRgyI0SdaYOWQV/YnRO10mczbpomCE1Cql6JuTX/H
	 28SnjchwqaYwmTuz6harjZkCE5ZF5Hm7s48CZWBt5Fi422sAYVSBJa30wox0xIMyBV
	 TGrTu7I6s2Ccg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Do9zDqXmKCYT; Mon, 11 Dec 2023 19:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B67960AEF;
	Mon, 11 Dec 2023 19:23:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B67960AEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E98291BF396
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 19:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDC0760AEF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 19:23:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDC0760AEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xm9wW1An1P72 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 19:23:39 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F06A60AED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 19:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F06A60AED
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 0DA72CE0AEE;
 Mon, 11 Dec 2023 19:23:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5331C433C8;
 Mon, 11 Dec 2023 19:23:33 +0000 (UTC)
Date: Mon, 11 Dec 2023 11:23:32 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20231211112332.2abc94ae@kernel.org>
In-Reply-To: <03d7e8b0-8766-4f59-afd4-15b592693a83@intel.com>
References: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
 <20231207172010.1441468-9-aleksander.lobakin@intel.com>
 <1103fe8f-04c8-8cc4-8f1b-ff45cea22b54@huawei.com>
 <03d7e8b0-8766-4f59-afd4-15b592693a83@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702322614;
 bh=NQb2rHrXZBC2qUTW9Bi96GGbDXlv9qtiv4KE2DukMZQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AMme99iKkntnUrXuqksuKV8S9Z0XBRo4r/dUWRy7Ecb/57h3O5zfQDbYuhWxXTbDW
 rNOS/yeyWp4FG6kT4ZpqR3/gG+U7uuzKWQAqStlqNnYSnByosexY2n6mRAJmRhapS5
 MFNJSQqQYA8zCGRVNzw+7c/2jamKT3Z+EP7fPWPKm0Pg7DnSyweEaxDJ/4qC1QdwEH
 kyE3xq3Rus0MbPaZ0bkqBhPkgfTUv+x6MDaQ7xhO8VBZOb/8tNSUJU6f8wX1eQ7y/x
 DJpJ5C+NGJQ3rRjcqXHLr/c96oukNWoVRtm93UjY2E7tRCoYTzjmTl4SLYpN/CctNX
 s8pnQR/Dt9cJg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=AMme99iK
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 08/12] libie: add Rx
 buffer management (via Page Pool)
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
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David
 Christensen <drc@linux.vnet.ibm.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAxMSBEZWMgMjAyMyAxMToxNjoyMCArMDEwMCBBbGV4YW5kZXIgTG9iYWtpbiB3cm90
ZToKPiBJZGVhbGx5LCBJJ2QgbGlrZSB0byBwYXNzIGEgQ1BVIElEIHRoaXMgcXVldWUgd2lsbCBi
ZSBydW4gb24gYW5kIHVzZQo+IGNwdV90b19ub2RlKCksIGJ1dCBjdXJyZW50bHkgdGhlcmUncyBu
byBOVU1BLWF3YXJlIGFsbG9jYXRpb25zIGluIHRoZQo+IEludGVsIGRyaXZlcnMgYW5kIFJ4IHF1
ZXVlcyBkb24ndCBnZXQgdGhlIGNvcnJlc3BvbmRpbmcgQ1BVIElEIHdoZW4KPiBjb25maWd1cmlu
Zy4gSSBtYXkgcmV2aXNpdCB0aGlzIGxhdGVyLCBidXQgZm9yIG5vdyBOVU1BX05PX05PREUgaXMg
dGhlCj4gbW9zdCBvcHRpbWFsIHNvbHV0aW9uIGhlcmUuCgpIbSwgSSd2ZSBiZWVuIHdvbmRlcmlu
ZyBhYm91dCBwZXJzaXN0ZW50IElSUSBtYXBwaW5ncy4gRHJpdmVycwpyZXNldHRpbmcgSVJRIG1h
cHBpbmcgb24gcmVjb25maWd1cmF0aW9uIGlzIGEgbWFqb3IgUElUQSBpbiBwcm9kdWN0aW9uCmNs
dXN0ZXJzLiBZb3UgY2hhbmdlIHRoZSBSU1MgaGFzaCBhbmQgc29tZSBOSUNzIHN1ZGRlbmx5IGZv
cmdldAphZmZpbml0aXphdGlvbiDwn6Sv77iPCgpUaGUgY29ubmVjdGlvbiB3aXRoIG1lbW9yeSBh
bGxvY2F0aW9ucyBjaGFuZ2VzIHRoZSBtYXRoIG9uIHRoYXQgYSBiaXQuCgpUaGUgcXVlc3Rpb24g
aXMgcmVhbGx5IHdoZXRoZXIgd2UgYWRkIENQVSA8PiBOQVBJIGNvbmZpZyBhcyBhIG5ldGRldgpO
ZXRsaW5rIEFQSSBvciBidWlsZCBhcm91bmQgdGhlIGdlbmVyaWMgSVJRIGFmZmluaXR5IEFQSS4g
VGhlIGxhdHRlciAKaXMgZGVmaW5pdGVseSBiZXR0ZXIgZnJvbSAiZG9uJ3QgZHVwbGljYXRlIHVB
UEkiIHBlcnNwZWN0aXZlLgpCdXQgd2UgbmVlZCB0byByZXNldCB0aGUgcXVldWVzIGFuZCByZWFs
bG9jYXRlIHRoZWlyIHN0YXRlIHdoZW4gCnRoZSBtYXBwaW5nIGlzIGNoYW5nZWQuIEFuZCBzaHV0
dGluZyBkb3duIHF1ZXVlcyBvbiAKCiAgZWNobyAkY3B1ID4gLy4uL3NtcF9hZmZpbml0eV9saXN0
CgpzZWVtcyBtb2RlcmF0ZWx5IGluc2FuZS4gUGVyaGFwcyBzb21lIG1pZGRsZS1ncm91bmQgZXhp
c3RzLgoKQW55d2F5LCBpZiB5b3UgZG8gZmluZCBjeWNsZXMgdG8gdGFja2xlIHRoaXMgLSBwbHMg
dHJ5IHRvIGRvIGl0CmdlbmVyaWNhbGx5IG5vdCBqdXN0IGZvciBJbnRlbD8gOikKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
