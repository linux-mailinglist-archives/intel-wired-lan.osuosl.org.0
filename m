Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D24C7F4302
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Nov 2023 10:59:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EC086129C;
	Wed, 22 Nov 2023 09:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EC086129C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700647148;
	bh=85wg4YHTzZs7P4j66xuxycgXedK1O16buq/bNKMxaEs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3gv+gbU8gRxC3eix9RaOhN5+AuxZePMROlFPY+VO+FBUIv220DFDvTrRTazIMiqQa
	 pdKKr09BGAjDu9v8G/IHiR/4rfuQasEiKYlWjEBs5MfHjQ84dJxsHLr9BmjaRIqqls
	 fAI65IDHHzxFK5Ku498YmAR6rhAX7tx7hFz2OaSGnpFVkOVf+KyXnnWRA+w2Akzl7O
	 59KuK+NRw/wuJcwT+FPIYI5Lol2elw7PKUfI/yW95ZqmgEk3sKBA/8fIVGsMQ7mPUy
	 E2eBYE2I24whFUAkeG0D74CTXi20QQ7AYXqJLdMBrFXbq+ZG5CjFauQPHv5qP/aMZr
	 cgez2BVSTmHCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7lJewRQwHEbR; Wed, 22 Nov 2023 09:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B07661219;
	Wed, 22 Nov 2023 09:59:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B07661219
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FE441BF20B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 09:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A56A41B9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 09:59:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A56A41B9C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oy_cU7G7dAAp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Nov 2023 09:59:00 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A8B8D41B9B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 09:59:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8B8D41B9B
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-294-QhcexgQrPJyp37D1Ovkadw-1; Wed,
 22 Nov 2023 04:58:56 -0500
X-MC-Unique: QhcexgQrPJyp37D1Ovkadw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 322863810B1A;
 Wed, 22 Nov 2023 09:58:56 +0000 (UTC)
Received: from [10.45.226.4] (unknown [10.45.226.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 11EE82026D4C;
 Wed, 22 Nov 2023 09:58:53 +0000 (UTC)
Message-ID: <48330ace-2b5f-4919-b5cb-7ac4372120bf@redhat.com>
Date: Wed, 22 Nov 2023 10:58:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20231116152114.88515-1-ivecera@redhat.com>
 <20231116152114.88515-4-ivecera@redhat.com>
 <f90bc4fc-d9e3-468c-8b94-73bea4b2d764@intel.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <f90bc4fc-d9e3-468c-8b94-73bea4b2d764@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1700647139;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZCjzWXii4u28sN5GkNkdatJx6cXmhKIdL34C9BKN+9E=;
 b=NUDPbGJ/wI6kxIVe+gd56yGYKm3RCM7imZFNjCyjNz9TqeiP6osd6FHDrr51sg7ugG4OZZ
 0o0XeI9gstaHn02zEz3UVZ0zUM3sjB4lwPkL0duQfvMQC4YMqxOpSNjFkGVJWcIzGptPiz
 Xytejl5j7H/mFJe4J08FTtEnxZHbqBI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NUDPbGJ/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/5] i40e: Add helpers to
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMi4gMTEuIDIzIDA6MDUsIFRvbnkgTmd1eWVuIHdyb3RlOgo+IAo+IAo+IE9uIDExLzE2
LzIwMjMgNzoyMSBBTSwgSXZhbiBWZWNlcmEgd3JvdGU6Cj4gCj4+IEBAIC0xMzE5NywxNyArMTMx
OTMsMTQgQEAgc3RhdGljIGludCBpNDBlX25kb19icmlkZ2VfZ2V0bGluayhzdHJ1Y3QgCj4+IHNr
X2J1ZmYgKnNrYiwgdTMyIHBpZCwgdTMyIHNlcSwKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaTQwZV92
c2kgKnZzaSA9IG5wLT52c2k7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGk0MGVfcGYgKnBmID0gdnNp
LT5iYWNrOwo+PiDCoMKgwqDCoMKgIHN0cnVjdCBpNDBlX3ZlYiAqdmViID0gTlVMTDsKPj4gLcKg
wqDCoCBpbnQgaTsKPj4gwqDCoMKgwqDCoCAvKiBPbmx5IGZvciBQRiBWU0kgZm9yIG5vdyAqLwo+
PiDCoMKgwqDCoMKgIGlmICh2c2ktPnNlaWQgIT0gcGYtPnZzaVtwZi0+bGFuX3ZzaV0tPnNlaWQp
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVPUE5PVFNVUFA7Cj4+IMKgwqDCoMKgwqAg
LyogRmluZCB0aGUgSFcgYnJpZGdlIGZvciB0aGUgUEYgVlNJICovCj4+IC3CoMKgwqAgaTQwZV9w
Zl9mb3JfZWFjaF92ZWIocGYsIGksIHZlYikKPj4gLcKgwqDCoMKgwqDCoMKgIGlmICh2ZWItPnNl
aWQgPT0gdnNpLT51cGxpbmtfc2VpZCkKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7
Cj4+IC3CoMKgwqAgaWYgKGkgPT0gSTQwRV9NQVhfVkVCKQo+PiArwqDCoMKgIHZlYiA9IGk0MGVf
cGZfZ2V0X3ZlYl9ieV9zZWlkKHBmLCB2c2ktPnVwbGlua19zZWlkKTsKPj4gK8KgwqDCoCBpZiAo
IXZzaSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+IAo+IEluIGFkZGl0aW9uIHRv
IHRoZSBrZG9jIHN0dWZmIHRoYXQgU2ltb24gcG9pbnRlZCBvdXQuIFNob3VsZCB0aGlzIG51bGwg
Cj4gY2hlY2sgYmUgYWdhaW5zdCB2ZWI/Cj4gCk9vcHMsIHRoZSBjaGVjayBzaG91bGQgYmUgYWdh
aW5zdCB2ZWIgaGVyZSBub3QgYWdhbnN0IHZzaS4uLgpHb29kIGV5ZXMsIFRvbnkuIFRoYW5rcywg
SSB3aWxsIGZpeCB0aGlzLgoKSXZhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
