Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459408394B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2019 21:04:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF4B787D0E;
	Tue,  6 Aug 2019 19:04:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DnU6228QwhOn; Tue,  6 Aug 2019 19:04:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 160BE87CDB;
	Tue,  6 Aug 2019 19:04:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 27DB81BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 15:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2152521574
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 15:53:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dRgIPbg8H-RM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2019 15:53:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by silver.osuosl.org (Postfix) with ESMTPS id EEAE12094D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 15:53:10 +0000 (UTC)
Received: from pps.filterd (m0170394.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x76FZWLh014756
 for <intel-wired-lan@lists.osuosl.org>; Tue, 6 Aug 2019 11:53:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=nfYxhfi86doHjndXXSZxZRT3NfXpSWbxGGXXfgyCS/0=;
 b=o+BipkYNL0Rcc8Q8fpXCZy7ImK3eZUXoyxzMgPYdzPOUSHJ4jz8bKcE1/NGLbG196pwm
 cIWYvKRuARsYKR4jNi7cnjZptexjJJomXFi3T0F5KyH64LPUPxpVrJE10T7ccW9tllMQ
 Usz7R45mzaUHAGI1TxVbZ9m4hi1TR4+pw9PYFtjMHcElk35/Cv4hHkvd/yRJR5vvG5gF
 iDyOD/CRzQf0tXZv/R0PU58us2EgP0/oECflVpeYfeWJI6tMRJ1nfhVdDQRJfozm6oo7
 aFp3WX66Q+HmbuTT1c1JBMR2Dkj8j+nGeVd9fidkQQeOXUMyYujX2tZ+Lk2mhF6tNQLG XQ== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2u54u6ch0m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Aug 2019 11:53:09 -0400
Received: from pps.filterd (m0134318.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x76FqkE2096472
 for <intel-wired-lan@lists.osuosl.org>; Tue, 6 Aug 2019 11:53:09 -0400
Received: from ausxippc101.us.dell.com (ausxippc101.us.dell.com
 [143.166.85.207])
 by mx0a-00154901.pphosted.com with ESMTP id 2u54wgeey4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Aug 2019 11:53:09 -0400
X-LoopCount0: from 10.166.132.127
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,346,1549951200"; d="scan'208";a="1282221332"
From: <Mario.Limonciello@dell.com>
To: <pmenzel@molgen.mpg.de>, <jeffrey.t.kirsher@intel.com>
Thread-Topic: MDI errors during resume from ACPI S3 (suspend to ram)
Thread-Index: AQHVTGy4cv+XwO2TC0mYS3+6gWgQH6buROIg
Date: Tue, 6 Aug 2019 15:53:06 +0000
Message-ID: <2277f25bc44c4aebaac59942de2e24bb@AUSX13MPC105.AMER.DELL.COM>
References: <81004059-6d91-d8be-c80e-70c52359350d@molgen.mpg.de>
In-Reply-To: <81004059-6d91-d8be-c80e-70c52359350d@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-08-06T15:53:05.0856508Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-06_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908060152
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908060151
X-Mailman-Approved-At: Tue, 06 Aug 2019 19:04:35 +0000
Subject: Re: [Intel-wired-lan] MDI errors during resume from ACPI S3
 (suspend to ram)
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnpl
bEBtb2xnZW4ubXBnLmRlPg0KPiBTZW50OiBUdWVzZGF5LCBBdWd1c3QgNiwgMjAxOSAxMDozNiBB
TQ0KPiBUbzogSmVmZiBLaXJzaGVyDQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3Ns
Lm9yZzsgTGludXggS2VybmVsIE1haWxpbmcgTGlzdDsgTGltb25jaWVsbG8sIE1hcmlvDQo+IFN1
YmplY3Q6IE1ESSBlcnJvcnMgZHVyaW5nIHJlc3VtZSBmcm9tIEFDUEkgUzMgKHN1c3BlbmQgdG8g
cmFtKQ0KPiANCj4gRGVhciBMaW51eCBmb2xrcywNCj4gDQo+IA0KPiBUcnlpbmcgdG8gZGVjcmVh
c2UgdGhlIHJlc3VtZSB0aW1lIG9mIExpbnV4IDUuMy1yYzMgb24gdGhlIERlbGwgT3B0aVBsZXgN
Cj4gNTA0MCB3aXRoIHRoZSBkZXZpY2UgYmVsb3cNCj4gDQo+ICAgICAkIGxzcGNpIC1ubiAtcyAw
MDoxZi42DQo+ICAgICAwMDoxZi42IEV0aGVybmV0IGNvbnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBD
b3Jwb3JhdGlvbiBFdGhlcm5ldCBDb25uZWN0aW9uICgyKQ0KPiBJMjE5LVYgWzgwODY6MTViOF0g
KHJldiAzMSkNCj4gDQo+IHBtLWdyYXBo4oCZcyBzY3JpcHQgYHNsZWVwZ3JhcGgucHlgIHNob3dz
LCB0aGF0IHRoZSBkcml2ZXIgKmUxMDAwZSogdGFrZXMNCj4gYXJvdW5kIDQwMCBtcywgd2hpY2gg
aXMgcXVpdGUgYSBsb3QuIFRoZSBjYWxsIGdyYXBoIHRyYWNlIHNob3dzIHRoYXQNCj4gYGUxMDAw
ZV9yZWFkX3BoeV9yZWdfbWRpYygpYCBpcyByZXNwb25zaWJsZSBmb3IgYSBsb3Qgb2YgdGhvc2Uu
IEZyb20NCj4gYGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9waHkuY2AgWzFdOg0K
PiANCj4gICAgICAgICBmb3IgKGkgPSAwOyBpIDwgKEUxMDAwX0dFTl9QT0xMX1RJTUVPVVQgKiAz
KTsgaSsrKSB7DQo+ICAgICAgICAgICAgICAgICB1ZGVsYXkoNTApOw0KPiAgICAgICAgICAgICAg
ICAgbWRpYyA9IGVyMzIoTURJQyk7DQo+ICAgICAgICAgICAgICAgICBpZiAobWRpYyAmIEUxMDAw
X01ESUNfUkVBRFkpDQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOw0KPiAgICAgICAg
IH0NCj4gICAgICAgICBpZiAoIShtZGljICYgRTEwMDBfTURJQ19SRUFEWSkpIHsNCj4gICAgICAg
ICAgICAgICAgIGVfZGJnKCJNREkgUmVhZCBkaWQgbm90IGNvbXBsZXRlXG4iKTsNCj4gICAgICAg
ICAgICAgICAgIHJldHVybiAtRTEwMDBfRVJSX1BIWTsNCj4gICAgICAgICB9DQo+ICAgICAgICAg
aWYgKG1kaWMgJiBFMTAwMF9NRElDX0VSUk9SKSB7DQo+ICAgICAgICAgICAgICAgICBlX2RiZygi
TURJIEVycm9yXG4iKTsNCj4gICAgICAgICAgICAgICAgIHJldHVybiAtRTEwMDBfRVJSX1BIWTsN
Cj4gICAgICAgICB9DQo+IA0KPiBVbmZvcnR1bmF0ZWx5LCBlcnJvcnMgYXJlIG5vdCBsb2dnZWQg
aWYgZHluYW1pYyBkZWJ1ZyBpcyBkaXNhYmxlZCwNCj4gc28gcmVidWlsZGluZyB0aGUgTGludXgg
a2VybmVsIHdpdGggYENPTkZJR19EWU5BTUlDX0RFQlVHYCwgYW5kDQo+IA0KPiAgICAgZWNobyAi
ZmlsZSBkcml2ZXJzL25ldC9ldGhlcm5ldC8qICtwIiB8IHN1ZG8gdGVlDQo+IC9zeXMva2VybmVs
L2RlYnVnL2R5bmFtaWNfZGVidWcvY29udHJvbA0KPiANCj4gSSBnb3QgdGhlIG1lc3NhZ2VzIGJl
bG93Lg0KPiANCj4gICAgIFsgNDE1OS4yMDQxOTJdIGUxMDAwZSAwMDAwOjAwOjFmLjYgbmV0MDA6
IE1ESSBFcnJvcg0KPiAgICAgWyA0MTYwLjI2Nzk1MF0gZTEwMDBlIDAwMDA6MDA6MWYuNiBuZXQw
MDogTURJIFdyaXRlIGRpZCBub3QgY29tcGxldGUNCj4gICAgIFsgNDE2MC4zNTk4NTVdIGUxMDAw
ZSAwMDAwOjAwOjFmLjYgbmV0MDA6IE1ESSBFcnJvcg0KPiANCj4gQ2FuIHlvdSBwbGVhc2Ugc2hl
ZCBhIGxpdHRsZSBtb3JlIGxpZ2h0IGludG8gdGhlc2UgZXJyb3JzPyBQbGVhc2UNCj4gZmluZCB0
aGUgZnVsbCBsb2cgYXR0YWNoZWQuDQo+IA0KPiANCj4gS2luZCByZWdhcmRzLA0KPiANCj4gUGF1
bA0KPiANCj4gDQo+IFsxXToNCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy9uDQo+IGV0L2V0aGVy
bmV0L2ludGVsL2UxMDAwZS9waHkuYyNuMjA2DQoNClN0cmljdGx5IGFzIGEgcmVmZXJlbmNlIHBv
aW50IHlvdSBtYXkgY29uc2lkZXIgdHJ5aW5nIHRoZSBvdXQtb2YtdHJlZSBkcml2ZXIgdG8gc2Vl
IGlmIHRoZXNlDQpiZWhhdmlvcnMgcGVyc2lzdC4NCg0KaHR0cHM6Ly9zb3VyY2Vmb3JnZS5uZXQv
cHJvamVjdHMvZTEwMDAvDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
