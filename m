Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E5726A17E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 11:06:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6AB2986693;
	Tue, 15 Sep 2020 09:06:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MU-B9JlAw52x; Tue, 15 Sep 2020 09:06:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B921C86685;
	Tue, 15 Sep 2020 09:06:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C0791BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 09:06:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 246258638F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 09:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eV8OXWYC2QIX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 09:06:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [148.163.129.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8847286357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 09:06:09 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.65.60])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 F3C8460080; Tue, 15 Sep 2020 09:06:08 +0000 (UTC)
Received: from us4-mdac16-13.ut7.mdlocal (unknown [10.7.65.237])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id F25B72009A; 
 Tue, 15 Sep 2020 09:06:08 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.37])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 8F18C1C0052;
 Tue, 15 Sep 2020 09:06:08 +0000 (UTC)
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 39E9CB40060;
 Tue, 15 Sep 2020 09:06:08 +0000 (UTC)
Received: from [10.17.20.203] (10.17.20.203) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 15 Sep
 2020 10:06:03 +0100
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, <netdev@vger.kernel.org>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
 <20200915014455.1232507-10-jesse.brandeburg@intel.com>
From: Edward Cree <ecree@solarflare.com>
Message-ID: <aaa15cdb-179b-bca7-6d41-4a861aaa3470@solarflare.com>
Date: Tue, 15 Sep 2020 10:05:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200915014455.1232507-10-jesse.brandeburg@intel.com>
Content-Language: en-GB
X-Originating-IP: [10.17.20.203]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.6.1012-25666.003
X-TM-AS-Result: No-6.372600-8.000000-10
X-TMASE-MatchedRID: zGP2F0O7j/vmLzc6AOD8DfHkpkyUphL9AQ8mtiWx//oKQo6lRC5cFSv1
 E0/IJGO+8XVI39JCRnSjfNAVYAJRAuvV11lepJ0adhnFihmbnwUO9z+P2gwiBTuwTDpX8ii0e/p
 wbu325erffZepmMNvHVY40rXt0Xcr+IYlG6Z6vA09oFMnLLzjBToSfZud5+GgUuD8MzNnG8pFyI
 +e6WbBknvak7WQi+a7vEmXEq243oS/WXZS/HqJ2paWKijZlsbB2bNx1HEv7HAqtq5d3cxkNWgS/
 DSnw/xUE0bja0DYkh8opw2Dnel5ogn2Sj6IO9etfdaEyt4HPuI=
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--6.372600-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.6.1012-25666.003
X-MDID: 1600160769-fQ2g6Zp_xvXI
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 09/10] sfc: fix kdoc
 warning
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

T24gMTUvMDkvMjAyMCAwMjo0NCwgSmVzc2UgQnJhbmRlYnVyZyB3cm90ZToKPiBrZXJuZWwtZG9j
IHNjcmlwdCBhcyB1c2VkIGJ5IFc9MSwgaXMgY29uZnVzZWQgYnkgdGhlIG1hY3JvCj4gdXNhZ2Ug
aW5zaWRlIHRoZSBoZWFkZXIgZGVzY3JpYmluZyB0aGUgZWZ4X3B0cF9kYXRhIHN0cnVjdC4KPgo+
IGRyaXZlcnMvbmV0L2V0aGVybmV0L3NmYy9wdHAuYzozNDU6IHdhcm5pbmc6IEZ1bmN0aW9uIHBh
cmFtZXRlciBvciBtZW1iZXIgJ01DX0NNRF9QVFBfSU5fVFJBTlNNSVRfTEVOTUFYJyBub3QgZGVz
Y3JpYmVkIGluICdlZnhfcHRwX2RhdGEnCj4KPiBBZnRlciBzb21lIGRpc2N1c3Npb24gb24gdGhl
IGxpc3QsIGJyZWFrIHRoaXMgcGF0Y2ggb3V0IHRvCj4gYSBzZXBhcmF0ZSBvbmUsIGFuZCBmaXgg
dGhlIGlzc3VlIHRocm91Z2ggYSBjcmVhdGl2ZQo+IG1hY3JvIGRlY2xhcmF0aW9uLgo+Cj4gU2ln
bmVkLW9mZi1ieTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+
Cj4gQ2M6IEVkd2FyZCBDcmVlIDxlY3JlZUBzb2xhcmZsYXJlLmNvbT4KSSBzdGlsbCBkb24ndCBs
b3ZlIGl0LCBidXQgaXQnbGwgZG8sIHNvIGhhdmUgYW4KQWNrZWQtYnk6IEVkd2FyZCBDcmVlIDxl
Y3JlZUBzb2xhcmZsYXJlLmNvbT4KCihCdXQgcGxlYXNlIG1ha2Ugc3VyZSB3aG9ldmVyIG1haW50
YWlucyBzY3JpcHRzL2tlcm5lbC1kb2Mga25vd3MgdGhhdArCoGl0J3MgYnJlYWtpbmcgb24gYSBy
ZWFzb25hYmxlIGNvbnN0cnVjdCBhbmQgZm9yY2luZyB0aGUgY29kZSB0byBiZQrCoF9sZXNzXyBz
ZWxmLWRvY3VtZW50aW5nIHRoYW4gaXQgb3RoZXJ3aXNlIGNvdWxkIGJlLikKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
