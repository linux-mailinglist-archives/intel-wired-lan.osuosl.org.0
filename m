Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC80E267662
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 01:11:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8378384E1C;
	Fri, 11 Sep 2020 23:11:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EFWgqWrxdmpJ; Fri, 11 Sep 2020 23:11:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 86E5A86F9A;
	Fri, 11 Sep 2020 23:11:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 301521BF41B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 23:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 294E287B98
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 23:11:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3RT50WzngKmt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 23:11:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [148.163.129.52])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7D1D587B90
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 23:11:34 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.65.60])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 EBFD46006F; Fri, 11 Sep 2020 23:11:33 +0000 (UTC)
Received: from us4-mdac16-4.ut7.mdlocal (unknown [10.7.65.72])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id EABA42009A; 
 Fri, 11 Sep 2020 23:11:33 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.41])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 6CCB11C004F;
 Fri, 11 Sep 2020 23:11:33 +0000 (UTC)
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 1D81C4C006C;
 Fri, 11 Sep 2020 23:11:33 +0000 (UTC)
Received: from [10.17.20.203] (10.17.20.203) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 12 Sep
 2020 00:11:23 +0100
To: Jakub Kicinski <kuba@kernel.org>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-12-jesse.brandeburg@intel.com>
 <227d2fe4-ddf8-89c9-b80b-142674c2cca0@solarflare.com>
 <20200911144207.00005619@intel.com>
 <e2e637ae-8cda-c9a4-91ce-93dbd475fc0c@solarflare.com>
 <20200911152642.62923ba2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Edward Cree <ecree@solarflare.com>
Message-ID: <115bce2a-daaa-a7c5-3c48-44ce345ea008@solarflare.com>
Date: Sat, 12 Sep 2020 00:11:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200911152642.62923ba2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-GB
X-Originating-IP: [10.17.20.203]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.6.1012-25660.003
X-TM-AS-Result: No-3.124500-8.000000-10
X-TMASE-MatchedRID: QW5G6BKkLTrmLzc6AOD8DfHkpkyUphL9CiTOKJLx+V5emWwoCXDj9cH4
 sOUTLtl6Zcz/Uu/FtYO7XIAWdEYuS+SWo/6D9AOphJWD2TZy7hEGchEhVwJY344iwAQuovtY4Bu
 rlNbLTrdr2m2LeKGQIJJw2WJhPKcIE29kWrNuieAZSUX8zcPGn34JYJwdJw4T4PdcWsl+C/M5aN
 wEkGdqbSIHx0QmSwcpHJXbPWdbF9o8gnzDlk9Fs6IBnfMCFBiC9ewculJK3jgcNByoSo036SXi8
 Z7hCx0ohUJOGGla76DhJSQgZSPD5L9ZdlL8eonaC24oEZ6SpSmb4wHqRpnaDjoYZD113WgYjjng
 rjCQrJKuLUuaCnCg1BjXHq4CgwmGGAcz2d+peXNwB1XVgJ6lsgvvGaBTAdaAljNIcAh3F+MN2bS
 n7NZCvofMZMegLDIeGU0pKnas+RbnCJftFZkZizYJYNFU00e7N+XOQZygrvY=
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.124500-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.6.1012-25660.003
X-MDID: 1599865893-2XPgwhGQ0_rs
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 11/11]
 drivers/net/ethernet: clean up mis-targeted comments
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTEvMDkvMjAyMCAyMzoyNiwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4gIlRvb2xjaGFpbiIg
c291bmRzIGEgbGl0dGxlIGdyYW5kIGluIHRoaXMgY29udGV4dCwgdGhlIHNjcmlwdCB0aGF0Cj4g
cGFyc2VzIGtkb2MgZG9lcyBiYXNpYyByZWdleHBzIHRvIGNvbnZlcnQgdGhlIHN0YW5kYXJkIGtl
cm5lbCBtYWNyb3M6Cj4gLi4uCj4gSURLIGlmIHdlIGNhbiBleHBlY3QgaXQgdG8gdW5kZXJzdGFu
ZCByYW5kb20gZHJpdmVyJ3MgbWFjcm9zLi4KSSB3YXNuJ3Qgc3VnZ2VzdGluZyBpdCBzaG91bGQg
X3VuZGVyc3RhbmRfIHRoaXMgbWFjcm8sIGp1c3RyZWNvZ25pc2UKwqB3aGVuIHNvbWV0aGluZyBf
aXNfIGEgbWFjcm8gaXQgZG9lc24ndCB1bmRlcnN0YW5kLCBhbmQgcmVmcmFpbiBmcm9tCsKgd2Fy
bmluZyBhYm91dCBpdCBpbiB0aGF0IGNhc2UuCkJ1dCBJIGRvbid0IGtub3cgaG93IGhhcmQgdGhh
dCB3b3VsZCBiZSB0byBhY2hpZXZlIOKAlCBub3QgYmVpbmcgZmx1ZW50CsKgaW4gUGVybCwgc2Ny
aXB0cy9rZXJuZWwtZG9jIGlzIG1vc3RseSBsaW5lIG5vaXNlIHRvIG1lLsKgIE15IGJlc3QKwqBn
dWVzcyBpcyB0aGF0IG9uIHNlZWluZyAnREVDTEFSRV9BX1RISU5HKG5hbWUsIGFyZ3VtZW50KTsn
IGl0IHJlYWRzCsKgaXQgYXMgdGhvdWdoIGl0IHdlcmUgJ0RFQ0xBUkVfQV9USElORyBuYW1lLCBh
cmd1bWVudDsnLCBtaXN0YWtpbmcKwqB0aGUgbWFjcm8gbmFtZSBmb3IgYSB0eXBlLgpJIHRoaW5r
IHRoZSBvbmx5IHdheSBub24tbWFjcm8gZGVjbGFyYXRpb25zIGNhbiBsZWdpdGltYXRlbHkgY29u
dGFpbgrCoHBhcmVucyBpcyBpbiBmdW5jdGlvbiBwb2ludGVyIHR5cGVzLCBpbiB3aGljaCBjYXNl
IHRoZSBjb250ZW50cyBvZgrCoHRoZSBwYXJlbnMgYXJlIHBhcnQgb2YgdGhlIHR5cGUgYW5kIG5v
dCBkZWNsYXJlZCBpZGVudGlmaWVycy7CoCBTbwrCoHNob3VsZG4ndCBrZXJuZWwtZG9jIGlnbm9y
ZSBhbnl0aGluZyB3aXRoaW4gcGFyZW5zPwo+IFRoaXMgaXMgdGhlIG9ubHkgdXNlIG9mIF9NQ0RJ
X0RFQ0xBUkVfQlVGKCkgaW4gdGhlIHRyZWUKV2VsbCwgZXhjZXB0IGZvciBtY2RpLmgncwrCoMKg
wqAgI2RlZmluZSBNQ0RJX0RFQ0xBUkVfQlVGKF9uYW1lLCBfbGVuKSBfTUNESV9ERUNMQVJFX0JV
RihfbmFtZSwgX2xlbikgPSB7e3swfX19Cj4gLCBob3cgYWJvdXQgY29udmVydGluZyB0aGUgZGVj
bGFyYXRpb24gdG86Cj4KPiAjZGVjbGFyZSBfTUNESV9CVUZfTEVOKF9sZW4pICAgRElWX1JPVU5E
X1VQKF9sZW4sIDQpCj4KPiAJZWZ4X2R3b3JkX3QgdHhidWZbX01DRElfQlVGX0xFTihNQ19DTURf
UFRQX0lOX1RSQU5TTUlUX0xFTk1BWCldOwo+Cj4gV291bGQgdGhhdCB3b3JrPwpUaGF0IGNvdWxk
IHdvcmssIHllcy7CoCBUaG91Z2gsIHByb2JhYmx5IGxvc2UgdGhlIGxlYWRpbmcgdW5kZXJzY29y
ZQrCoGluIHRoYXQgY2FzZS4KCi1lZApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
