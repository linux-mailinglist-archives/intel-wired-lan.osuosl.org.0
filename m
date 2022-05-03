Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9642651848C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 May 2022 14:45:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCEF960DED;
	Tue,  3 May 2022 12:45:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6PXruHsxHrA1; Tue,  3 May 2022 12:45:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A54B860D4F;
	Tue,  3 May 2022 12:45:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDA9C1BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 12:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D85F940933
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 12:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=ibm.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UzYZRpCjhQrG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 May 2022 12:45:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C132A40932
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 12:45:46 +0000 (UTC)
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 243AHhcD018592;
 Tue, 3 May 2022 12:45:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : subject :
 from : to : cc : date : in-reply-to : references : content-type :
 mime-version : content-transfer-encoding; s=pp1;
 bh=z5pRrwadTvaMNn3IfMVuln6dl3dg7299RmoATTWlzwg=;
 b=D0+Qdgb0wJMI40BA+uEYDB2P6ae4KozbuZ5K2JQhR9fNK/vvaCLl8k/uzHk+kiFMdb7H
 frtHTtYr0bpz3U0IBPVI0yQiqYkMij/Qoal91w/qxWeeTfyH0L7yu9WYWJMH3RduaEWk
 S6cryHXPNrOrbD1mNOGwPNQlFI6C53VncjhyvgIMu1Jg+xG0WtcFVVuOcaCsVeeVCOiR
 0uhyts6SV9au3nINgAaS/hrT/qrRyKsFOW8eEMnTceJ/nZod58M93wWyEA61QO4+KW5i
 9z5ydpwqezzhj4U7nSkKGL5hsRg1/vAaS0NeoTph0IkgsHmgbps2PLUqi8Ikbl+Z9nUM uA== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3fu2gx29ac-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 May 2022 12:45:28 +0000
Received: from m0098399.ppops.net (m0098399.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 243CT501031317;
 Tue, 3 May 2022 12:45:27 GMT
Received: from ppma06fra.de.ibm.com (48.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.72])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3fu2gx299h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 May 2022 12:45:27 +0000
Received: from pps.filterd (ppma06fra.de.ibm.com [127.0.0.1])
 by ppma06fra.de.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 243CgoEL007825;
 Tue, 3 May 2022 12:45:24 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com
 (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
 by ppma06fra.de.ibm.com with ESMTP id 3fttcj0kqv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 May 2022 12:45:24 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 243CjMSU52232586
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 3 May 2022 12:45:22 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7E1005204F;
 Tue,  3 May 2022 12:45:22 +0000 (GMT)
Received: from sig-9-145-89-42.uk.ibm.com (unknown [9.145.89.42])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 7FCD85204E;
 Tue,  3 May 2022 12:45:21 +0000 (GMT)
Message-ID: <867e70df01fc938abf93ffa15a3f1989a8fb136b.camel@linux.ibm.com>
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: "Maciej W. Rozycki" <macro@orcam.me.uk>
Date: Tue, 03 May 2022 14:45:21 +0200
In-Reply-To: <alpine.DEB.2.21.2205012324130.9383@angie.orcam.me.uk>
References: <20220429135108.2781579-1-schnelle@linux.ibm.com>
 <20220429135108.2781579-36-schnelle@linux.ibm.com>
 <alpine.DEB.2.21.2205012324130.9383@angie.orcam.me.uk>
X-Mailer: Evolution 3.28.5 (3.28.5-18.el8) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: UXMkE0Jl2bfDY_C86ZbGXUit00mBBjDH
X-Proofpoint-ORIG-GUID: K2hn79ghKwvBH28giVmJiMbz3A6Tgxi4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-03_03,2022-05-02_03,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1011
 mlxscore=0 malwarescore=0 mlxlogscore=474 bulkscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205030092
Subject: Re: [Intel-wired-lan] [RFC v2 21/39] net: add HAS_IOPORT
 dependencies
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:CAN NETWORK DRIVERS" <linux-can@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "open list:AX.25 NETWORK LAYER" <linux-hams@vger.kernel.org>,
 linux-pci@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU3VuLCAyMDIyLTA1LTAxIGF0IDIzOjQ4ICswMTAwLCBNYWNpZWogVy4gUm96eWNraSB3cm90
ZToKPiBPbiBGcmksIDI5IEFwciAyMDIyLCBOaWtsYXMgU2NobmVsbGUgd3JvdGU6Cj4gCj4gPiBJ
biBhIGZ1dHVyZSBwYXRjaCBIQVNfSU9QT1JUPW4gd2lsbCByZXN1bHQgaW4gaW5iKCkvb3V0Yigp
IGFuZCBmcmllbmRzCj4gPiBub3QgYmVpbmcgZGVjbGFyZWQuIFdlIHRodXMgbmVlZCB0byBhZGQg
SEFTX0lPUE9SVCBhcyBkZXBlbmRlbmN5IGZvcgo+ID4gdGhvc2UgZHJpdmVycyB1c2luZyB0aGVt
LiBJdCBhbHNvIHR1cm5zIG91dCB0aGF0IHdpdGggSEFTX0lPUE9SVCBoYW5kbGVkCj4gPiBleHBs
aWNpdGx5IEhBTVJBRElPIGRvZXMgbm90IG5lZWQgdGhlICFTMzkwIGRlcGVuZGVuY3kgYW5kIHN1
Y2Nlc3NmdWxseQo+ID4gYnVpbGRzIHRoZSBicHFldGhlciBkcml2ZXIuCj4gWy4uLl0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9mZGRpL0tjb25maWcgYi9kcml2ZXJzL25ldC9mZGRpL0tj
b25maWcKPiA+IGluZGV4IDg0NmJmNDFjMjcxNy4uZmEzZjFlMGZlMTQzIDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9uZXQvZmRkaS9LY29uZmlnCj4gPiArKysgYi9kcml2ZXJzL25ldC9mZGRpL0tj
b25maWcKPiA+IEBAIC0yOSw3ICsyOSw3IEBAIGNvbmZpZyBERUZaQQo+ID4gIAo+ID4gIGNvbmZp
ZyBERUZYWAo+ID4gIAl0cmlzdGF0ZSAiRGlnaXRhbCBERUZUQS9ERUZFQS9ERUZQQSBhZGFwdGVy
IHN1cHBvcnQiCj4gPiAtCWRlcGVuZHMgb24gRkRESSAmJiAoUENJIHx8IEVJU0EgfHwgVEMpCj4g
PiArCWRlcGVuZHMgb24gRkRESSAmJiAoUENJIHx8IEVJU0EgfHwgVEMpICYmIEhBU19JT1BPUlQK
PiA+ICAJaGVscAo+ID4gIAkgIFRoaXMgaXMgc3VwcG9ydCBmb3IgdGhlIERJR0lUQUwgc2VyaWVz
IG9mIFRVUkJPY2hhbm5lbCAoREVGVEEpLAo+ID4gIAkgIEVJU0EgKERFRkVBKSBhbmQgUENJIChE
RUZQQSkgY29udHJvbGxlcnMgd2hpY2ggY2FuIGNvbm5lY3QgeW91Cj4gCj4gIE5BSywgdGhpcyBo
YXMgdG8gYmUgc29ydGVkIG91dCBkaWZmZXJlbnRseSAoYW5kIEkgdGhpbmsgd2UgZGlzY3Vzc2Vk
IGl0IAo+IGJlZm9yZSkuCj4gCj4gIFRoZSBkcml2ZXIgd29ya3MganVzdCBmaW5lIHdpdGggTU1J
TyB3aGVyZSBhdmFpbGFibGUsIHNvIGlmIGBpbmInL2BvdXRiJyAKPiBkbyBnZXQgcmVtb3ZlZCwg
dGhlbiBvbmx5IHBhcnRzIHRoYXQgcmVseSBvbiBwb3J0IEkvTyBuZWVkIHRvIGJlIGRpc2FibGVk
LiAgCj4gSW4gZmFjdCB0aGVyZSdzIGFscmVhZHkgc3VjaCBwcm92aXNpb24gdGhlcmUgaW4gZHJp
dmVycy9uZXQvZmRkaS9kZWZ4eC5jIAo+IGZvciBUVVJCT2NoYW5uZWwgc3lzdGVtcyAoQ09ORklH
X1RDKSwgd2hpY2ggaGF2ZSBubyBwb3J0IEkvTyBzcGFjZSBlaXRoZXI6Cj4gCj4gI2lmIGRlZmlu
ZWQoQ09ORklHX0VJU0EpIHx8IGRlZmluZWQoQ09ORklHX1BDSSkKPiAjZGVmaW5lIGRmeF91c2Vf
bW1pbyBicC0+bW1pbwo+ICNlbHNlCj4gI2RlZmluZSBkZnhfdXNlX21taW8gdHJ1ZQo+ICNlbmRp
Zgo+IAo+IHNvIEkgZ3Vlc3MgaXQncyBqdXN0IHRoZSBjb25kaXRpb25hbCB0aGF0IHdpbGwgaGF2
ZSB0byBiZSBjaGFuZ2VkIHRvOgo+IAo+ICNpZmRlZiBDT05GSUdfSEFTX0lPUE9SVAo+IAo+IHJl
cGxhY2luZyB0aGUgY3VycmVudCBleHBsaWNpdCBidXMgZGVwZW5kZW5jeSBsaXN0LiAgVGhlIGNv
bXBpbGVyIHdpbGwgCj4gdGhlbiBvcHRpbWlzZSBhd2F5IGFsbCB0aGUgcG9ydCBJL08gc3R1ZmYg
KHRob3VnaCBJIHN1c3BlY3QgZHVtbXkgZnVuY3Rpb24gCj4gZGVjbGFyYXRpb25zIG1heSBiZSBy
ZXF1aXJlZCBmb3IgYGluYicvYG91dGInLCBldGMuKS4KPiAKPiAgSSBjYW4gdmVyaWZ5IGEgc3Vp
dGFibGUgY2hhbmdlIHdpdGggYSBUVVJCT2NoYW5uZWwgY29uZmlndXJhdGlvbiBvbmNlIHRoZSAK
PiBNSVBTIHBhcnQgaGFzIGJlZW4gc29ydGVkLgo+IAo+ICAgTWFjaWVqCgpXaXRoIGRmeF91c2Vf
bW1pbyBjaGFuZ2VkIGFzIHlvdSBwcm9wb3NlIGFib3ZlIHRoaW5ncyBjb21waWxlIG9uIHMzOTAK
d2hpY2ggcHJldmlvdXNseSByYW4gaW50byBtaXNzaW5nIChub3cgX19jb21waWxlX2Vycm9yKCkp
IGlubCgpIHZpYQpkZnhfcG9ydF9yZWFkX2xvbmcoKSAtPiBkZnhfaW5sKCkgLT4gIGlubCgpLgoK
TG9va2luZyBhdCB0aGUgb3RoZXIgdXNlcyBvZiBkZnhfdXNlX21taW8gSSBub3RpY2UgaG93ZXZl
ciB0aGF0IGluCmRmeF9nZXRfYmFycygpLCBpbmIoKSBhY3R1YWxseSBnZXRzIGNhbGxlZCB3aGVu
IGRmeF91c2VfbW1pbyBpcyB0cnVlLgpUaGlzIGhhcHBlbnMgaWYgZGZ4X2J1c19laXNhIGlzIGFs
c28gdHJ1ZS4gTm93IHRoYXQgdmFyaWFibGUgaXMganVzdAp0aGUgY2FjaGVkIHJlc3VsdCBvZiBE
RlhfQlVTX0VJU0EoZGV2KSB3aGljaCBpcyBkZWZpbmVkIHRvIDAgaWYKQ09ORklHX0VJU0EgaXMg
dW5zZXQuIEknbSBub3QgMTAwJSBzdXJlIGlmIGdvaW5nIHRocm91Z2ggYSBsb2NhbAp2YXJpYWJs
ZSBpcyBzdGlsbCBjb25zaWRlcmVkIHRyaXZpYWwgZW5vdWdoIGRlYWQgY29kZSBlbGltaW5hdGlv
biwgYXQKbGVhc3QgaXQgd29ya3MgZm9yIG1l4oSiLiBJIGRpZCBhbHNvIGNoZWNrIHRoZSBHQ0Mg
ZG9jcyBhbmQgdGhleQpleHBsaWNpdGx5IHNheSB0aGF0IF9fYXR0cmlidXRlX18oZXJyb3IpIGlz
IHN1cHBvc2VkIHRvIGJlIHVzZWQgd2hlbgpkZWFkIGNvZGUgZWxpbWluYXRpb24gZ2V0cyByaWQg
b2YgdGhlIGVycm9yIHBhdGhzLgoKSSB0aGluayB3ZSBhbHNvIG5lZWQgYSAiZGVwZW5kcyBvbiBI
QVNfSU9QT1JUIiBmb3IgImNvbmZpZyBIQVZFX0VJU0EiCmp1c3QgYXMgSSdtIGFkZGluZyBmb3Ig
ImNvbmZpZyBJU0EiLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
