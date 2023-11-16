Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 121CA7EE20E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 14:59:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A5A18382F;
	Thu, 16 Nov 2023 13:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A5A18382F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700143184;
	bh=NRSORMaaZ0/uWkSTjHNQRH4kwGsBpOV3HTlsMWR6rKw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F84tox904lRyufXXGN+SqkAPYXr0S6PGYjTC1G9Ecj9s8nlJ25bihjtQlJjAh4Haa
	 +sfVmG2QnkBjxlIC3RTYZof2SlDyH3kt9q00gkuGVXHwGDrY6yT+QRBg/fNcMghsy+
	 qsXyilpLUXCLae+MKCYVW4FzykPDxQDtghKMjAbuY8m77F7KinQijfz0XXd5qvRNJ8
	 Jcs6iAZ3uvFLecXdPHKghCsFTO7U/Epa6s9/oC5ygSRML7xrsHH0SPTrq8rFkDdLyB
	 0xDaByAf6QybjjI9fRx7Je3xpGfZJ9rKtWWd+9HjloEgorkjiCSqaMBPb+a7QGG+jZ
	 s31+fKexl2HpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MxMTpfXMWaaY; Thu, 16 Nov 2023 13:59:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08256837C9;
	Thu, 16 Nov 2023 13:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08256837C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7252C1BF228
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 13:59:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41EE6837C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 13:59:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41EE6837C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o9jCArTCKZhW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 13:59:36 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7923D83777
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 13:59:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7923D83777
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-226-tRuM4eFGNN2-6MYcUchipw-1; Thu,
 16 Nov 2023 08:59:29 -0500
X-MC-Unique: tRuM4eFGNN2-6MYcUchipw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 488243C0F42D;
 Thu, 16 Nov 2023 13:59:28 +0000 (UTC)
Received: from [10.45.225.144] (unknown [10.45.225.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4B06440C6EBB;
 Thu, 16 Nov 2023 13:59:26 +0000 (UTC)
Message-ID: <483acf53-fe96-4ef3-933a-c5fd446042f6@redhat.com>
Date: Thu, 16 Nov 2023 14:59:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org
References: <20231113125856.346047-1-ivecera@redhat.com>
 <20231113125856.346047-4-ivecera@redhat.com>
 <3c640be7-8f1e-4f9e-8556-3aac92644dec@intel.com>
 <36889885-71c7-46f7-8c21-e5791986ad5a@redhat.com>
 <72250942-17af-4f8d-b11f-ba902fbe2b58@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <72250942-17af-4f8d-b11f-ba902fbe2b58@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1700143175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rcFm4CYE9xVUh7GTYUarkXRDjUbvhgbuzrK/6r8vxYo=;
 b=WmB/JECO93Rnrbc3GTthi86PAQ3MqLtdHTn+yBCWlhNRyShJdOfFuz4tvcxreWUtF9Qdfj
 mmfIWwlougnpAiEWFF96HQO5tomETCSRHG+NViaiZHElr1XJya6kE6cFgeeGQLBRVTLm2E
 dRKNnoU3UG1TMvBD094f9I41+tyJJqU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WmB/JECO
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/5] i40e: Add helpers to
 find VSI and VEB by SEID and use them
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDE2LiAxMS4gMjMgMTM6MzcsIFdvamNpZWNoIERyZXdlayB3cm90ZToKPiAKPiAKPiBPbiAx
NS4xMS4yMDIzIDE4OjAxLCBJdmFuIFZlY2VyYSB3cm90ZToKPj4KPj4gT24gMTMuIDExLiAyMyAx
NDoyNywgV29qY2llY2ggRHJld2VrIHdyb3RlOgo+Pj4KPj4+IE9uIDEzLjExLjIwMjMgMTM6NTgs
IEl2YW4gVmVjZXJhIHdyb3RlOgo+Pj4+IEFkZCB0d28gaGVscGVycyBpNDBlXyh2ZWJ8dnNpKV9n
ZXRfYnlfc2VpZCgpIHRvIGZpbmQgY29ycmVzcG9uZGluZwo+Pj4+IFZFQiBvciBWU0kgYnkgdGhl
aXIgU0VJRCB2YWx1ZSBhbmQgdXNlIHRoZXNlIGhlbHBlcnMgdG8gcmVwbGFjZQo+Pj4+IGV4aXN0
aW5nIG9wZW4tY29kZWQgbG9vcHMuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBJdmFuIFZlY2Vy
YTxpdmVjZXJhQHJlZGhhdC5jb20+Cj4+Pj4gLS0tCj4+PiBPbmx5IG9uZSBuaXQKPj4+IFJldmll
d2VkLWJ5OiBXb2pjaWVjaCBEcmV3ZWs8d29qY2llY2guZHJld2VrQGludGVsLmNvbT4KPj4+Cj4+
Pj4gIMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5owqDCoMKgwqDCoMKg
wqAgfCAzNCArKysrKysrKysKPj4+PiAgwqAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfZGVidWdmcy5jwqDCoMKgIHwgMzggKystLS0tLS0tLQo+Pj4+ICDCoCBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jwqDCoCB8IDc2ICsrKysrKy0tLS0tLS0tLS0t
LS0KPj4+PiAgwqAgMyBmaWxlcyBjaGFuZ2VkLCA2NCBpbnNlcnRpb25zKCspLCA4NCBkZWxldGlv
bnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGUuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oCj4+Pj4g
aW5kZXggMWU5MjY2ZGUyNzBiLi4yMjBiNWNlMzE1MTkgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgKPj4+PiArKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaAo+Pj4+IEBAIC0xMzYwLDQgKzEzNjAsMzggQEAgc3Rh
dGljIGlubGluZSBzdHJ1Y3QgaTQwZV9wZiAqaTQwZV9od190b19wZihzdHJ1Y3QgaTQwZV9odyAq
aHcpCj4+Pj4gIMKgIMKgIHN0cnVjdCBkZXZpY2UgKmk0MGVfaHdfdG9fZGV2KHN0cnVjdCBpNDBl
X2h3ICpodyk7Cj4+Pj4gIMKgICsvKioKPj4+PiArICogaTQwZV92c2lfZ2V0X2J5X3NlaWQgLSBm
aW5kIFZTSSBieSBTRUlECj4+Pj4gKyAqIEBwZjogcG9pbnRlciB0byBhIFBGCj4+Pj4gKyAqKi8K
Pj4+PiArc3RhdGljIGlubGluZSBzdHJ1Y3QgaTQwZV92c2kgKgo+Pj4+ICtpNDBlX3ZzaV9nZXRf
Ynlfc2VpZChzdHJ1Y3QgaTQwZV9wZiAqcGYsIHUxNiBzZWlkKQo+Pj4+ICt7Cj4+Pj4gK8KgwqDC
oCBzdHJ1Y3QgaTQwZV92c2kgKnZzaTsKPj4+PiArwqDCoMKgIGludCBpOwo+Pj4+ICsKPj4+PiAr
wqDCoMKgIGk0MGVfcGZfZm9yX2VhY2hfdnNpKHBmLCBpLCB2c2kpCj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIGlmICh2c2ktPnNlaWQgPT0gc2VpZCkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gdnNpOwo+Pj4+ICsKPj4+PiArwqDCoMKgIHJldHVybiBOVUxMOwo+Pj4+ICt9Cj4+Pj4g
Kwo+Pj4+ICsvKioKPj4+PiArICogaTQwZV92ZWJfZ2V0X2J5X3NlaWQgLSBmaW5kIFZFQiBieSBT
RUlECj4+Pj4gKyAqIEBwZjogcG9pbnRlciB0byBhIFBGCj4+Pj4gKyAqKi8KPj4+PiArc3RhdGlj
IGlubGluZSBzdHJ1Y3QgaTQwZV92ZWIgKgo+Pj4+ICtpNDBlX3ZlYl9nZXRfYnlfc2VpZChzdHJ1
Y3QgaTQwZV9wZiAqcGYsIHUxNiBzZWlkKQo+Pj4+ICt7Cj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgaTQw
ZV92ZWIgKnZlYjsKPj4+PiArwqDCoMKgIGludCBpOwo+Pj4+ICsKPj4+PiArwqDCoMKgIGk0MGVf
cGZfZm9yX2VhY2hfdmViKHBmLCBpLCB2ZWIpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmICh2ZWIt
PnNlaWQgPT0gc2VpZCkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gdmViOwo+
Pj4+ICsKPj4+PiArwqDCoMKgIHJldHVybiBOVUxMOwo+Pj4+ICt9Cj4+PiBJIHdvdWxkIHByZWZl
ciBpNDBlX2dldF97dmVifHZzaX1fYnlfc2VpZCBidXQgaXQncyBteSBvcGluaW9uLgo+Pgo+PiBJ
J2QgcmF0aGVyIHVzZSBpNDBlX3BmXyBwcmVmaXguLi4KPj4KPj4gV2hhdCBhYm91dCBpNDBlX3Bm
X2dldF92c2lfYnlfc2VpZCgpIGFuZCBpNDBlX3BmX2dldF92ZWJfYnlfc2VpZCgpID8KPiAKPiBT
b3VuZHMgZ29vZCwgbXkgcG9pbnQgd2FzIHRoYXQgSSBwcmVmZXIgdG8gaGF2ZSAiZ2V0IiBiZWZv
cmUgInt2ZWJ8dnNpfSIKCk9LLCBnb3QgaXQuLi4gV2lsbCByZXBvc3QgdjIgd2l0aCB0aGlzIGNo
YW5nZSArICJ0b28gbWFueSBhbHNvLi4uIiBpc3N1ZSA7LSkKCkJ0dy4gd2hhdCBhYm91dCB0aGUg
bGFzdCBwYXRjaD8KCkl2YW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
