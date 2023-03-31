Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D96AA6D2372
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 17:03:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71A876179C;
	Fri, 31 Mar 2023 15:03:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71A876179C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680275013;
	bh=jB1NgXpDDG7RAOhKlWQze5eurnAl7vgSMVUh8l4CBSA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t5UVmSCD8OmjKEkNI/r5r0oshcObr3MIolkeD2Y4wOF8uDNX4iUywvy8C8ENzf7X1
	 WtLLV2vKpOdZildYDw4Q+nVRifkFSaiuhf6vnNO5aW7O08fntzoLmkm+FGKEM3vQjL
	 tB5aoqJ1WU8ChHhclyQpgmbk6GgRC61bGfXF2xB0NKsmlXJR9e/YMeJh0oBix2FIgW
	 hCqL9AS5wzx/4Xm3QmXQcfrr11zicdXl1I+UKYjzN7DqbKj+gBvLYWi4VbFXtK2HQh
	 l2eGMc/pA06bXp/wr0scYjzmVR76rBWYZoNEf4AbbAylUjcsKXMayHswfWQt9iZK13
	 rgl/sjb9PA8xg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bi3F8jA7ni93; Fri, 31 Mar 2023 15:03:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54D0C605D8;
	Fri, 31 Mar 2023 15:03:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54D0C605D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 378571BF33F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10EFE405C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10EFE405C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBXBghjt8xBX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 15:03:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A53A405C2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A53A405C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:24 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-27-FDIny1NROJGiQI5iw8F-Iw-1; Fri, 31 Mar 2023 11:03:19 -0400
X-MC-Unique: FDIny1NROJGiQI5iw8F-Iw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E46029ABA03;
 Fri, 31 Mar 2023 15:03:18 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 036B0492C3E;
 Fri, 31 Mar 2023 15:03:18 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 1A22830736C72;
 Fri, 31 Mar 2023 17:03:17 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Fri, 31 Mar 2023 17:03:17 +0200
Message-ID: <168027499706.3941176.15786196864241739433.stgit@firesoul>
In-Reply-To: <168027495947.3941176.6690238098903275241.stgit@firesoul>
References: <168027495947.3941176.6690238098903275241.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680275003;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NTHm0roWAf7TQFvInPD+g2gqpP2BBJVAUuG4X2BR8/k=;
 b=WpRQTFCdLn64x4dWwtFBm8kcKgexBTbHHim3L6OcZdoCjrgv4me0gNhxsR/f7sy9Y/40rM
 A8vUk+VSKhBdx1kSZHzO8WgWCt/IBFs3HwgZ7phGSFE34h0LpnQYczJ3sXPejAGsCa9K1d
 iibNnQvBxYLndTaPEj2XWuntfVnLjt0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WpRQTFCd
Subject: [Intel-wired-lan] [PATCH bpf V4 3/5] veth: bpf_xdp_metadata_rx_hash
 add xdp rss hash type
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, tariqt@nvidia.com, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, pabeni@redhat.com,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, edumazet@google.com,
 hawk@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VXBkYXRlIEFQSSBmb3IgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKCkgd2l0aCBhcmcgZm9yIHhk
cCByc3MgaGFzaCB0eXBlLgoKVGhlIHZldGggZHJpdmVyIGN1cnJlbnRseSBvbmx5IHN1cHBvcnQg
WERQLWhpbnRzIGJhc2VkIG9uIFNLQiBjb2RlIHBhdGguClRoZSBTS0IgaGF2ZSBsb3N0IGluZm9y
bWF0aW9uIGFib3V0IHRoZSBSU1MgaGFzaCB0eXBlLCBieSBjb21wcmVzc2luZwp0aGUgaW5mb3Jt
YXRpb24gZG93biB0byBhIHNpbmdsZSBiaXRmaWVsZCBza2ItPmw0X2hhc2gsIHRoYXQgb25seSBr
bm93cwppZiB0aGlzIHdhcyBhIEw0IGhhc2ggdmFsdWUuCgpJbiBwcmVwYXJhdGlvbiBmb3IgdmV0
aCwgdGhlIHhkcF9yc3NfaGFzaF90eXBlIGhhdmUgYW4gTDQgaW5kaWNhdGlvbgpiaXQgdGhhdCBh
bGxvdyB1cyB0byByZXR1cm4gYSBtZWFuaW5nZnVsIEw0IGluZGljYXRpb24gd2hlbiB3b3JraW5n
CndpdGggU0tCIGJhc2VkIHBhY2tldHMuCgpGaXhlczogMzA2NTMxZjAyNDlmICgidmV0aDogU3Vw
cG9ydCBSWCBYRFAgbWV0YWRhdGEiKQpTaWduZWQtb2ZmLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJv
dWVyIDxicm91ZXJAcmVkaGF0LmNvbT4KQWNrZWQtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNl
biA8dG9rZUByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvbmV0L3ZldGguYyB8ICAgMTEgKysrKysr
KystLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvdmV0aC5jIGIvZHJpdmVycy9uZXQvdmV0aC5jCmluZGV4
IGMxMTc4OTE1NDk2ZC4uZjUzODFlN2M5MzEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC92ZXRo
LmMKKysrIGIvZHJpdmVycy9uZXQvdmV0aC5jCkBAIC0xNjQ4LDE0ICsxNjQ4LDE5IEBAIHN0YXRp
YyBpbnQgdmV0aF94ZHBfcnhfdGltZXN0YW1wKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwgdTY0
ICp0aW1lc3RhbXApCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgdmV0aF94ZHBfcnhfaGFz
aChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIHUzMiAqaGFzaCkKK3N0YXRpYyBpbnQgdmV0aF94
ZHBfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIHUzMiAqaGFzaCwKKwkJCSAgICBl
bnVtIHhkcF9yc3NfaGFzaF90eXBlICpyc3NfdHlwZSkKKwogewogCXN0cnVjdCB2ZXRoX3hkcF9i
dWZmICpfY3R4ID0gKHZvaWQgKiljdHg7CisJc3RydWN0IHNrX2J1ZmYgKnNrYiA9IF9jdHgtPnNr
YjsKIAotCWlmICghX2N0eC0+c2tiKQorCWlmICghc2tiKQogCQlyZXR1cm4gLUVOT0RBVEE7CiAK
LQkqaGFzaCA9IHNrYl9nZXRfaGFzaChfY3R4LT5za2IpOworCSpoYXNoID0gc2tiX2dldF9oYXNo
KHNrYik7CisJKnJzc190eXBlID0gc2tiLT5sNF9oYXNoID8gWERQX1JTU19UWVBFX0w0X0FOWSA6
IFhEUF9SU1NfVFlQRV9OT05FOworCiAJcmV0dXJuIDA7CiB9CiAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
