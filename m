Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2477CFFAC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 18:34:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E4FA4305F;
	Thu, 19 Oct 2023 16:34:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E4FA4305F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697733254;
	bh=I3IppnNWEcGo5P7rQY2T2accGpOnWIaLD3i/I94cO8I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MP/Yj1Zm3aFd3dW0vAq7f3GgkurFWsLUORMWiw2b5RZcsB3wljhFacgkx4NAae3pz
	 kaiPb8XBrD5t5DexmYUBPXwj6/EowEEowzKy88phSEGMAAWBmp6Ouu4LmDSS9kJMqw
	 BV6IWJExXXLrmroMlwSrVn8YPMXgNkFRYS4dmNU3vI66UW9/0GTNppcQq2f2GgX837
	 K7TQVmuVBIGRViBf8NSoEvOhij0pwRFLwuPhdpO8bda2+2baR5m10BHPXcnPDD1sJb
	 nggLp6CpnmAdBV3hcDWzyry615QL+roUyDPzCbL4Kh/kJ3peb7eHH61mAOFPdGG37l
	 vtsYyXfsU7wUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uiayxMsaYzu8; Thu, 19 Oct 2023 16:34:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F4C04305A;
	Thu, 19 Oct 2023 16:34:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F4C04305A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E215E1BF27A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9CA483EC6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:34:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9CA483EC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lsn5pe74vdlI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 16:34:06 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BBD9783EBE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:34:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBD9783EBE
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-640-3Ma3c47kOIGexr4gLson0Q-1; Thu, 19 Oct 2023 12:34:03 -0400
X-MC-Unique: 3Ma3c47kOIGexr4gLson0Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7AFBB10201F3;
 Thu, 19 Oct 2023 16:34:02 +0000 (UTC)
Received: from [10.45.226.105] (unknown [10.45.226.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 776832026D4C;
 Thu, 19 Oct 2023 16:34:01 +0000 (UTC)
Message-ID: <cda1cc98-7c0e-4712-830a-9ba0bfeb951c@redhat.com>
Date: Thu, 19 Oct 2023 18:34:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>,
 "Drewek, Wojciech" <wojciech.drewek@intel.com>
References: <20231018111527.78194-1-mschmidt@redhat.com>
 <MW4PR11MB577642AB058202687D511502FDD5A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <CADEbmW34Xu9Hq+LN0WfiYZyjnJ244K970wjn-0p-e1tpBkmsDw@mail.gmail.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <CADEbmW34Xu9Hq+LN0WfiYZyjnJ244K970wjn-0p-e1tpBkmsDw@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697733244;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6E1CxE28rwmvHmrmBaqAZc7hemqiqtzus/CxVrqL/Sc=;
 b=f7Mk0iU+IBidx8M+fApSnPqRs8GIhDnovcOW7QI7RSotmQPBgFOMPUmrQUPp8RxP736M0S
 Jc3fUh+/z8AygjYzaq8Mx3K/cag9fk8OwIdNC0XfRMHI9esO3F/kYOWt6MtxyMaNQtaGru
 o15VWW0MfT64Z9dfOgT8iumdMJafh3U=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=f7Mk0iU+
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: delete unused
 iavf_mac_info fields
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxOC4gMTAuIDIzIDE3OjExLCBNaWNoYWwgU2NobWlkdCB3cm90ZToKPiBPbiBXZWQsIE9j
dCAxOCwgMjAyMyBhdCAxOjI24oCvUE0gRHJld2VrLCBXb2pjaWVjaAo+IDx3b2pjaWVjaC5kcmV3
ZWtAaW50ZWwuY29tPiAgd3JvdGU6Cj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+Pj4g
RnJvbTogTWljaGFsIFNjaG1pZHQ8bXNjaG1pZHRAcmVkaGF0LmNvbT4KPj4+IFNlbnQ6IFdlZG5l
c2RheSwgT2N0b2JlciAxOCwgMjAyMyAxOjE1IFBNCj4+PiBUbzppbnRlbC13aXJlZC1sYW5AbGlz
dHMub3N1b3NsLm9yZwo+Pj4gQ2M6IEtlbGxlciwgSmFjb2IgRTxqYWNvYi5lLmtlbGxlckBpbnRl
bC5jb20+OyBEcmV3ZWssIFdvamNpZWNoCj4+PiA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT47
IEJyYW5kZWJ1cmcsIEplc3NlCj4+PiA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+OyBOZ3V5
ZW4sIEFudGhvbnkgTAo+Pj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjtuZXRkZXZAdmdl
ci5rZXJuZWwub3JnCj4+PiBTdWJqZWN0OiBbUEFUQ0ggbmV0LW5leHRdIGlhdmY6IGRlbGV0ZSB1
bnVzZWQgaWF2Zl9tYWNfaW5mbyBmaWVsZHMKPj4+Cj4+PiAnc2FuX2FkZHInIGFuZCAnbWFjX2Zj
b2VxJyBtZW1iZXJzIG9mIHN0cnVjdCBpYXZmX21hY19pbmZvIGFyZSB1bnVzZWQuCj4+PiAndHlw
ZScgaXMgd3JpdGUtb25seS4gRGVsZXRlIGFsbCB0aHJlZS4KPj4+Cj4+PiBUaGUgZnVuY3Rpb24g
aWF2Zl9zZXRfbWFjX3R5cGUgdGhhdCBzZXRzICd0eXBlJyBhbHNvIGNoZWNrcyBpZiB0aGUgUENJ
Cj4+PiB2ZW5kb3IgSUQgaXMgSW50ZWwuIFRoaXMgaXMgdW5uZWNlc3NhcnkuIERlbGV0ZSB0aGUg
d2hvbGUgZnVuY3Rpb24uCj4+Pgo+Pj4gSWYgaW4gdGhlIGZ1dHVyZSB0aGVyZSdzIGEgbmVlZCBm
b3IgdGhlIE1BQyB0eXBlIChvciBvdGhlciBQQ0kKPj4+IElELWRlcGVuZGVudCBkYXRhKSwgSSB3
b3VsZCBwcmVmZXIgdG8gdXNlIC5kcml2ZXJfZGF0YSBpbiBpYXZmX3BjaV90YmxbXQo+Pj4gZm9y
IHRoaXMgcHVycG9zZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU2NobWlkdDxtc2No
bWlkdEByZWRoYXQuY29tPgo+PiBSZXZpZXdlZC1ieTogV29qY2llY2ggRHJld2VrPHdvamNpZWNo
LmRyZXdla0BpbnRlbC5jb20+Cj4+Cj4+IE5pY2UgY2xlYW51cCwgSSd2ZSBzZWVuIHNpbWlsYXIg
dW51c2VkIGZpZWxkcyBpbiBpNDBlIGFzIHdlbGwuCj4+IEFueSBwbGFucyBmb3IgaTQwZSBjbGVh
bnVwPwo+IE5vLCBJIGFtIG5vdCBwbGFubmluZyB0byBsb29rIGludG8gaTQwZSBjbGVhbnVwcyBp
biB0aGUgbmVhciBmdXR1cmUuCj4gSXZhbiBtaWdodCB3YW50IHRvIGRvIHRoYXQgdGhvdWdoLiBb
QWRkaW5nIGhpbSB0byB0aGUgdGhyZWFkXQo+IE1pY2hhbAoKT0ssIEkgd2lsbCBkbyBpdC4uLgoK
VGhhbmtzLApJdmFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
