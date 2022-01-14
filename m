Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A739548EEB9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 17:51:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44921812ED;
	Fri, 14 Jan 2022 16:51:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l5yLrNMH5Ck2; Fri, 14 Jan 2022 16:51:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C29580E17;
	Fri, 14 Jan 2022 16:51:45 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 655861BF362
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 16:51:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 528E9401C5
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 16:51:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MaOQm6qa5jug for <intel-wired-lan@osuosl.org>;
 Fri, 14 Jan 2022 16:51:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9010A40176
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 16:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642179099;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=912e1eTIK4JPbQHZk/1krckW0H7nOEZ7D/D65ylc5E0=;
 b=T5iujN4nliGAm9LAk5ydN1engBPHEGujnV3ibGvBbDmcgad1t+FVlL5Oo3m+Fg9OBYiaSi
 V0K8E7CPkk8LAhV+fZoaPh51CjrEElJ4sUwfIicvTGjkOJGq5DutpB7EA8/pjgnK5Ufnpr
 eP9qkA95OrqGVan8uHcEVqh2HwrE8Ac=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-664-J63XQOwXNQKM6UpdvpEpJQ-1; Fri, 14 Jan 2022 11:51:38 -0500
X-MC-Unique: J63XQOwXNQKM6UpdvpEpJQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EDA17185303B;
 Fri, 14 Jan 2022 16:51:36 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-14.ams2.redhat.com
 [10.36.112.14])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E3852DE79;
 Fri, 14 Jan 2022 16:51:36 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 06027A80ED6; Fri, 14 Jan 2022 17:51:35 +0100 (CET)
Date: Fri, 14 Jan 2022 17:51:34 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Denis Kirjanov <dkirjanov@suse.de>
Message-ID: <YeGqFq2oJqIzar53@calimero.vinschen.de>
Mail-Followup-To: Denis Kirjanov <dkirjanov@suse.de>,
 intel-wired-lan@osuosl.org, netdev@vger.kernel.org,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Lennert Buytenhek <buytenh@wantstofly.org>,
 Alexander Lobakin <alexandr.lobakin@intel.com>
References: <20220114114354.1071776-1-vinschen@redhat.com>
 <20220114114354.1071776-3-vinschen@redhat.com>
 <5521e35f-3adf-2949-f360-12e2f7946480@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5521e35f-3adf-2949-f360-12e2f7946480@suse.de>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: Re: [Intel-wired-lan] [PATCH 2/2 net-next v2] igb: refactor XDP
 registration
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
Cc: intel-wired-lan@osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gSmFuIDE0IDE3OjEzLCBEZW5pcyBLaXJqYW5vdiB3cm90ZToKPiAxLzE0LzIyIDE0OjQzLCBD
b3Jpbm5hIFZpbnNjaGVuINC/0LjRiNC10YI6Cj4gPiBPbiBjaGFuZ2luZyB0aGUgUlggcmluZyBw
YXJhbWV0ZXJzIGlnYiB1c2VzIGEgaGFjayB0byBhdm9pZCBhIHdhcm5pbmcKPiA+IHdoZW4gY2Fs
bGluZyB4ZHBfcnhxX2luZm9fcmVnIHZpYSBpZ2Jfc2V0dXBfcnhfcmVzb3VyY2VzLiAgSXQganVz
dAo+ID4gY2xlYXJzIHRoZSBzdHJ1Y3QgeGRwX3J4cV9pbmZvIGNvbnRlbnQuCj4gPiAKPiA+IENo
YW5nZSB0aGlzIHRvIHVucmVnaXN0ZXIgaWYgd2UncmUgYWxyZWFkeSByZWdpc3RlcmVkIGluc3Rl
YWQuICBBTGlnbgo+ID4gY29kZSB0byB0aGUgaWdjIGNvZGUuCj4gPiAKPiA+IEZpeGVzOiA5Y2Jj
OTQ4YjVhMjBjICgiaWdiOiBhZGQgWERQIHN1cHBvcnQiKQo+ID4gU2lnbmVkLW9mZi1ieTogQ29y
aW5uYSBWaW5zY2hlbiA8dmluc2NoZW5AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX2V0aHRvb2wuYyB8ICA0IC0tLS0KPiA+ICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgICAgfCAxNSArKysrKysrKysr
Ky0tLS0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQo+ID4gWy4uLl0KPiA+ICsJaWYgKHJlcyA8IDApIHsKPiA+ICsJCW5ldGRldl9lcnIocnhf
cmluZy0+bmV0ZGV2LAo+ID4gKwkJCSAgICJGYWlsZWQgdG8gcmVnaXN0ZXIgeGRwX3J4cSBpbmRl
eCAldVxuIiwKPiA+ICsJCQkgICByeF9yaW5nLT5xdWV1ZV9pbmRleCk7Cj4gbml0OiB3b3VsZCBi
ZSBuaWNlIHRvIGhhdmUgdGhlIHNhbWUgcHJpbnRpbmcgZnVuY3Rpb25zIGxpa2UgZGV2X2Vycigp
Cj4gaW4gdGhlIGVycm9yIGNhc2UKClRoYW5rcywgSSBwdXNoZWQgYSB2My4KCgpDb3Jpbm5hCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
