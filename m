Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8E99BAED2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 09:58:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3896B606B3;
	Mon,  4 Nov 2024 08:58:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ydVCZrv0hj3y; Mon,  4 Nov 2024 08:58:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 977C660682
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730710699;
	bh=fOKmCxycDlf7GLnm1KtEkgjsbi8WHP37Yj1Sa2CnxNE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cTe106JrnwRVhilH3mqO/Ftkcbwoyq8yGyhF3VjAyX2SQc2GlT5uu4cy39IMtkbru
	 VHzM6vTK8XeoFrL/60aKpoj+TqCOe+JXrErbhPIWgJRQm9Rwh0LYgIEaQBl7L+CvdN
	 wMWRB7XOn8hs1nKLb92tN3KclL6NTeQD9nEDn3B8OPcxrw1UHr0Wg/7mExUBz7qrOi
	 fGK/kXq1svMvuRUfs5dZ0JG7vHaMkFEiivzu4iLIMAFVx7cHHoxOZ5bdVJ29OjE291
	 47bdlxoRHp901ZYBi3uy8+/7g2VIuE65S7TMr3ruubOUtbYasPBoMZObKxtaTDorBi
	 fOo+d8ftXmSPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 977C660682;
	Mon,  4 Nov 2024 08:58:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CFF5DB8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 08:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 583F86058C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 08:58:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GT50qFgtnxsB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 08:58:16 +0000 (UTC)
X-Greylist: delayed 405 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 04 Nov 2024 08:58:14 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6DFC4605A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DFC4605A9
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.58.85.151;
 helo=eu-smtp-delivery-151.mimecast.com; envelope-from=david.laight@aculab.com;
 receiver=<UNKNOWN> 
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DFC4605A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 08:58:13 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-96-WZK9QpgdPQ-pFjUIMEnDYg-1; Mon, 04 Nov 2024 08:51:26 +0000
X-MC-Unique: WZK9QpgdPQ-pFjUIMEnDYg-1
Received: from AcuMS.Aculab.com (10.202.163.6) by AcuMS.aculab.com
 (10.202.163.6) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Mon, 4 Nov
 2024 08:51:25 +0000
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Mon, 4 Nov 2024 08:51:25 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Michal Swiatkowski' <michal.swiatkowski@linux.intel.com>, Michal Schmidt
 <mschmidt@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pawel.chmielewski@intel.com" <pawel.chmielewski@intel.com>,
 "sridhar.samudrala@intel.com" <sridhar.samudrala@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "konrad.knitter@intel.com" <konrad.knitter@intel.com>,
 "marcin.szycik@intel.com" <marcin.szycik@intel.com>,
 "wojciech.drewek@intel.com" <wojciech.drewek@intel.com>,
 "nex.sw.ncis.nat.hpm.dev@intel.com" <nex.sw.ncis.nat.hpm.dev@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v6 2/9] ice: devlink PF MSI-X max
 and min parameter
Thread-Index: AQHbLogBIclfjUnNDkKuhxeYRHRRbbKmzwWw
Date: Mon, 4 Nov 2024 08:51:25 +0000
Message-ID: <ad5bf0e312d44737a18c076ab2990924@AcuMS.aculab.com>
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
 <20241028100341.16631-3-michal.swiatkowski@linux.intel.com>
 <CADEbmW0=G8u7Y8L2fFTzan8S+Uz04nAMC+-dkj-rQb_izK88pg@mail.gmail.com>
 <ZyhxmxnxPcLk2ZcX@mev-dev.igk.intel.com>
In-Reply-To: <ZyhxmxnxPcLk2ZcX@mev-dev.igk.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=ACULAB.COM
Subject: Re: [Intel-wired-lan] [iwl-next v6 2/9] ice: devlink PF MSI-X max
 and min parameter
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogTWljaGFsIFN3aWF0a293c2tpDQo+IFNlbnQ6IDA0IE5vdmVtYmVyIDIwMjQgMDc6MDMN
Ci4uLg0KPiA+IFRoZSB0eXBlIG9mIHRoZSBkZXZsaW5rIHBhcmFtZXRlcnMgbXNpeF92ZWNfcGVy
X3BmX3ttaW4sbWF4fSBpcw0KPiA+IHNwZWNpZmllZCBhcyB1MzIsIHNvIHlvdSBtdXN0IHVzZSB2
YWx1ZS52dTMyIGV2ZXJ5d2hlcmUgeW91IHdvcmsgd2l0aA0KPiA+IHRoZW0sIG5vdCB2dTE2Lg0K
PiA+DQo+IA0KPiBJIHdpbGwgY2hhbmdlIGl0Lg0KDQpZb3UgYWxzbyBuZWVkIGEgcHJldHR5IGdv
b2QgcmVhc29uIHRvIHVzZSB1MTYgYW55d2hlcmUgYXQgYWxsLg0KSnVzdCBiZWNhdXNlIHRoZSBk
b21haW4gb2YgdGhlIHZhbHVlIGlzIHNtYWxsIGRvZXNuJ3QgbWVhbiB0aGUNCmJlc3QgdHlwZSBp
c24ndCBbdW5zaWduZWRdIGludC4NCg0KQW55IGFyaXRobWV0aWMgKHBhcnRpY3VsYXJseSBvbiBu
b24geDg2KSBpcyBsaWtlbHkgdG8gaW5jcmVhc2UNCnRoZSBjb2RlIHNpemUgYWJvdmUgYW55IHBl
cmNlaXZlZCBkYXRhIHNhdmluZy4NCg0KCURhdmlkDQoNCi0NClJlZ2lzdGVyZWQgQWRkcmVzcyBM
YWtlc2lkZSwgQnJhbWxleSBSb2FkLCBNb3VudCBGYXJtLCBNaWx0b24gS2V5bmVzLCBNSzEgMVBU
LCBVSw0KUmVnaXN0cmF0aW9uIE5vOiAxMzk3Mzg2IChXYWxlcykNCg==

