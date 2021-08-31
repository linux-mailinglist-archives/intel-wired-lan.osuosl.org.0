Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 225CB3FCEE5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 22:58:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1F1F401EA;
	Tue, 31 Aug 2021 20:58:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fKBeA4gvKrFE; Tue, 31 Aug 2021 20:58:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6615401CB;
	Tue, 31 Aug 2021 20:58:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D786B1BF853
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 20:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0E694021C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 20:58:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=jumptrading.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QYMrH3HqpDkl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 20:58:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on20708.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eab::708])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E6A2E400A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 20:58:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kglvrhnhgfSf1k15Xe3iAP9WCN8+gP7DPVSjyVXBJiC/Kp8YJKNNLnHvbNOZdGW/uTNflCIfAe2MLJ36x4GTUGmdrT9DCkLWWRZ1EiJhn0OahpSWnIFtxqjggpz61ScNogbSRUH4f258CUJ2cBokh+6cPP3JEEgt0BJ1AVdzvVTJclTUo51ge8wXtdlcDddVxRhBvxOfRYzXdMu0xnD+mzX8zQHgraX56/Kvh8bFUnrnY8mETJl35TZ9co4GnZLXN+4b5LUYqDXFBqwpr9icyIViWzsvkxmQOTp01XscPK3ExiDTlh3zsYg4rSD1UQ58s1fcHF3n8CiUAFY5FCr22g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xekWPhIU+ICC+wyj0yHwxZYORRtoVe9CV5CjxrPto9w=;
 b=OlSh0w2MJ9lx+jioReiD18oj+DDc47GKW4DCek245JqgxQyXWdHU/EzSa/UuRE69EGEEONcfEWWHMSSg7qsxt1SI7VghEgysL5xduHG9j/UdBAJ2joBX1fJoAJU2yU6mIB4BEkdzSSBcstle/phsf97lH4V/Zp9rXot15tIE1+/4KjS90yTO6x3+IEJ8l/rRk9T7PCYzbqBnuaxDNfm4UFXNOajJvGg9krsZtxWya/45lRBSEXXLUamP03/0+7f661JDvQMjOXl5ny9Hwyi5c6BAawtZUD55W2XpjrGtNGFAWpt6X+Mv9plqfIq5MeGgeZItLV57Khby7X+H3Dx2SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 208.78.215.133) smtp.rcpttodomain=lists.osuosl.org
 smtp.mailfrom=chidv-pwl1.w2k.jumptrading.com; dmarc=fail (p=reject sp=reject
 pct=100) action=oreject header.from=jumptrading.com; dkim=none (message not
 signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jumptrading.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xekWPhIU+ICC+wyj0yHwxZYORRtoVe9CV5CjxrPto9w=;
 b=F2Y0G2EEtzzia318YjcXuP2IYtq9BAuK/5r+kijNs9qF7BuIRr/SGfrxvJq4wHoJroLZvIGywuFPzFYU9zcb0sea1CCnB9mvfXFUkqqT1Rwb+FAjAnDDgr5X8EluBVuic9F2PYOMpBQkm0XtRR/1u1stPZWr6bwwqYQsa3Zyxmk=
Received: from DM5PR15CA0033.namprd15.prod.outlook.com (2603:10b6:4:4b::19) by
 DM6PR14MB2985.namprd14.prod.outlook.com (2603:10b6:5:1ac::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4457.18; Tue, 31 Aug 2021 20:58:32 +0000
Received: from DM6NAM11FT055.eop-nam11.prod.protection.outlook.com
 (2603:10b6:4:4b:cafe::f) by DM5PR15CA0033.outlook.office365.com
 (2603:10b6:4:4b::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17 via Frontend
 Transport; Tue, 31 Aug 2021 20:58:32 +0000
X-MS-Exchange-Authentication-Results: spf=none (sender IP is 208.78.215.133)
 smtp.mailfrom=chidv-pwl1.w2k.jumptrading.com; lists.osuosl.org; dkim=none
 (message not signed) header.d=none;lists.osuosl.org; dmarc=fail
 action=oreject header.from=jumptrading.com;
Received-SPF: None (protection.outlook.com: chidv-pwl1.w2k.jumptrading.com
 does not designate permitted sender hosts)
Received: from mail.jumptrading.com (208.78.215.133) by
 DM6NAM11FT055.mail.protection.outlook.com (10.13.173.103) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4457.17 via Frontend Transport; Tue, 31 Aug 2021 20:58:32 +0000
Received: from fpif-exnw1.w2k.jumptrading.com (7.145.13.95) by
 fpif-exvnw1.w2k.jumptrading.com (7.145.12.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Tue, 31 Aug 2021 15:58:32 -0500
Received: from njwf-esa1.w2k.jumptrading.com (7.9.212.139) by
 fpif-exnw1.w2k.jumptrading.com (7.145.13.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.15
 via Frontend Transport; Tue, 31 Aug 2021 15:58:31 -0500
X-Internal-Message: True
Received: from chidv-pwl1.w2k.jumptrading.com ([7.2.64.201])
 by njwf-esa1.w2k.jumptrading.com with ESMTP; 31 Aug 2021 20:58:31 +0000
Received: by chidv-pwl1.w2k.jumptrading.com (Postfix, from userid 44223)
 id 79544600D2; Tue, 31 Aug 2021 15:58:31 -0500 (CDT)
Date: Tue, 31 Aug 2021 15:58:31 -0500
From: PJ Waskiewicz <pwaskiewicz@jumptrading.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <20210831205831.GA115243@chidv-pwl1.w2k.jumptrading.com>
References: <20210826221916.127243-1-pwaskiewicz@jumptrading.com>
 <50c21a769633c8efa07f49fc8b20fdfb544cf3c5.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50c21a769633c8efa07f49fc8b20fdfb544cf3c5.camel@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea494e86-3426-481e-f7c1-08d96cc217af
X-MS-TrafficTypeDiagnostic: DM6PR14MB2985:
X-Microsoft-Antispam-PRVS: <DM6PR14MB2985BA9B9A945007F61AF6BC88CC9@DM6PR14MB2985.namprd14.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7SpV+oXN1fNJ0n/EaXGG7y6fTV8kftPhpqDETI9fI6a1QnIOXI3HECjsX9ZkvkkrQdJq/qwKzlD1k+0wLa0CJLG1vTEktSQGpqGM0MsURHJZo5RE+gogyugDc0WkgPEHehojJwXJW+x8B9QB+lZSsY8fMhVS25t2q1pMa5EYkxI+sE1vryprPX3ZpOIkcgn5X93ZmPucYXl9lI2BJ30nC96/y6YT8hZ6rC8CWTbW5f7g85wgyifvja9XeGqX9PGBkEUcSxy7gvRG05+su0RSKQ/kUCbZEJmphRMU1PNB7eYj+zncRBp++o3amcUhqbfSQGHxBrXIEN3j/zVFTiQdUTYZubf+09NNsb/HFrITVHFbCYftsurvkVaaIaiQUs0v1FggXXntIEjeJPm1DdWmCjJvXy3NsFgi2bgUxviHnHtjrbKiUkq4HfEjjGDh0u40NWekz6C9mgNMbOY57Ma5fJDsdi4gP6n6to8+Rz+gc0Yz8U4CVZMr5Ze5q2h9v9i99mrIr92rfCWWvNfAZUlSukXpY3jXiPNMWqXwp0Mzn16bNxsw+A0iTCLUsCxIgSz1GvdwG6M51hDHHzyLWqFLxJFhtbxwJlK2L35XizbTUOrIy867QVKGDrUomc1na5w+AUnMh7Ao+fCTeEat5tmBiF37LVHNl3QWO+DeqZBS6hk=
X-Forefront-Antispam-Report: CIP:208.78.215.133; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.jumptrading.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(46966006)(26005)(6862004)(8676002)(1076003)(70206006)(35950700001)(8936002)(107886003)(2906002)(82310400003)(47076005)(336012)(33656002)(356005)(426003)(83380400001)(70586007)(81166007)(83170400001)(316002)(5660300002)(54906003)(42186006)(508600001)(4326008)(6266002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: jumptrading.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2021 20:58:32.6149 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea494e86-3426-481e-f7c1-08d96cc217af
X-MS-Exchange-CrossTenant-Id: 11f2af73-8873-4240-85a3-063ce66fc61c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=11f2af73-8873-4240-85a3-063ce66fc61c; Ip=[208.78.215.133];
 Helo=[mail.jumptrading.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT055.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR14MB2985
Subject: Re: [Intel-wired-lan] [PATCH 1/1] i40e: Avoid double IRQ free on
 error path in probe()
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
Cc: "pjwaskiewicz@gmail.com" <pjwaskiewicz@gmail.com>, "Dziedziuch,
 SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 PJ Waskiewicz <pwaskiewicz@jumptrading.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBBdWcgMzAsIDIwMjEgYXQgMDg6NTI6NDFQTSArMDAwMCwgTmd1eWVuLCBBbnRob255
IEwgd3JvdGU6Cj4gT24gVGh1LCAyMDIxLTA4LTI2IGF0IDE3OjE5IC0wNTAwLCBQSiBXYXNraWV3
aWN6IHdyb3RlOgo+ID4gVGhpcyBmaXhlcyBhbiBlcnJvciBwYXRoIGNvbmRpdGlvbiB3aGVuIHBy
b2JlKCkgZmFpbHMgZHVlIHRvIHRoZQo+ID4gZGVmYXVsdCBWU0kgbm90IGJlaW5nIGF2YWlsYWJs
ZSBvciBvbmxpbmUgeWV0IGluIHRoZSBmaXJtd2FyZS4gSWYKPiA+IHRoYXQgaGFwcGVucywgdGhl
IHByZXZpb3VzIHRlYXJkb3duIHBhdGggd291bGQgY2xlYXIgdGhlIGludGVycnVwdAo+ID4gc2No
ZW1lLCB3aGljaCBhbHNvIGZyZWVkIHRoZSBJUlFzIHdpdGggdGhlIE9TLiBUaGVuIHRoZSBlcnJv
ciBwYXRoCj4gPiBmb3IgdGhlIHN3aXRjaCBzZXR1cCAocHJlLVZTSSkgd291bGQgYXR0ZW1wdCB0
byBmcmVlIHRoZSBPUyBJUlFzCj4gPiBhcyB3ZWxsLgo+Cj4gSGkgUEosCgpIaSBUb255LAoKPgo+
IFRoZXNlIGNvbW1lbnRzIGFyZSBmcm9tIHRoZSBpNDBlIHRlYW0uCj4KPiBZZXMgaW4gY2FzZSB3
ZSBmYWlsIGFuZCBnbyB0byBlcnJfdnNpcyBsYWJlbCBpbiBpNDBlX3Byb2JlKCkgd2Ugd2lsbAo+
IGNhbGwgaTQwZV9yZXNldF9pbnRlcnJ1cHRfY2FwYWJpbGl0eSB0d2ljZSBidXQgdGhpcyBpcyBu
b3QgYSBwcm9ibGVtLgo+IFRoaXMgaXMgYmVjYXVzZSBwY2lfZGlzYWJsZV9tc2kvcGNpX2Rpc2Fi
bGVfbXNpeCB3aWxsIGJlIGNhbGxlZCBvbmx5IGlmCj4gYXBwcm9wcmlhdGUgZmxhZ3MgYXJlIHNl
dCBvbiBQRiBhbmQgaWYgdGhpcyBmdW5jdGlvbiBpcyBjYWxsZWQgb25lcyBpdAo+IHdpbGwgY2xl
YXIgdGhvc2UgZmxhZ3MuIFNvIGV2ZW4gaWYgd2UgY2FsbAo+IGk0MGVfcmVzZXRfaW50ZXJydXB0
X2NhcGFiaWxpdHkgdHdpY2Ugd2Ugd2lsbCBub3QgZGlzYWJsZSBtc2kgdmVjdG9ycwo+IHR3aWNl
Lgo+Cj4gVGhlIGlzc3VlIGhlcmUgaXMgZGlmZmVyZW50IGhvd2V2ZXIuIEl0IGlzIGZhaWxpbmcg
aW4gZnJlZV9pcnEgYmVjYXVzZQo+IHdlIGFyZSB0cnlpbmcgdG8gZnJlZSBhbHJlYWR5IGZyZWUg
dmVjdG9yLiBUaGlzIGlzIGJlY2F1c2Ugc2V0dXAgb2YKPiBtaXNjIGlycSB2ZWN0b3JzIGluIGk0
MGVfcHJvYmUgaXMgZG9uZSBhZnRlciBpNDBlX3NldHVwX3BmX3N3aXRjaC4gSWYKPiBpNDBlX3Nl
dHVwX3BmX3N3aXRjaCBmYWlscyB0aGVuIHdlIHdpbGwganVtcCB0byBlcnJfdnNpcyBhbmQgY2Fs
bAo+IGk0MGVfY2xlYXJfaW50ZXJydXB0X3NjaGVtZSB3aGljaCB3aWxsIHRyeSB0byBmcmVlIHRo
b3NlIG1pc2MgaXJxCj4gdmVjdG9ycyB3aGljaCB3ZXJlIG5vdCB5ZXQgYWxsb2NhdGVkLiBXZSBz
aG91bGQgaGF2ZSB0aGUgcHJvcGVyIGZpeCBmb3IKPiB0aGlzIHJlYWR5IHNvb24uCgpZZXMsIEkn
bSBhd2FyZSBvZiB3aGF0J3MgaGFwcGVuaW5nIGhlcmUgYW5kIHdoeSBpdCdzIGZhaWxpbmcuIFNh
ZGx5LCBJIGFtCnByZXR0eSBzdXJlIEkgd3JvdGUgdGhpcyBjb2RlIGJhY2sgaW4gbGlrZSAyMDEx
IG9yIDIwMTIsIGFuZCBiZWluZyBhbiBlcnJvcgpwYXRoLCBpdCBoYXNuJ3QgcmVhbGx5IGJlZW4g
dGVzdGVkLgoKSSBkb24ndCByZWFsbHkgY2FyZSBob3cgdGhpcyBnZXRzIGZpeGVkIHRvIGJlIGhv
bmVzdC4gV2UgaGl0IHRoaXMgaW4KcHJvZHVjdGlvbiB3aGVuIG91ciBMT00sIGZvciB3aGF0ZXZl
ciByZWFzb24sIGZhaWxlZCB0byBpbml0aWFsaXplIHRoZQppbnRlcm5hbCBzd2l0Y2ggb24gaG9z
dCBib290LiBXZSBlc2NhbGF0ZWQgdG8gb3VyIGRpc3RybyB2ZW5kb3IsIHRoZXkKZGlkIGVzY2Fs
YXRlIHRvIEludGVsLCBhbmQgaXQgd2Fzbid0IHJlYWxseSBwcmlvcml0aXplZC4gU28gSSBzZW50
CmEgcGF0Y2ggdGhhdCBkb2VzIGZpeCB0aGUgaXNzdWUuCgpJZiB0aGUgdGVhbSB3YW50cyB0byBy
ZXNwaW4gdGhpcyBzb21laG93LCBnbyBhaGVhZC4gQnV0IHRoaXMgZG9lcyBmaXgKdGhlIGltbWVk
aWF0ZSBpc3N1ZSB0aGF0IHdoZW4gYmFpbGluZyBvdXQgaW4gcHJvYmUoKSBkdWUgdG8gdGhlIG1h
aW4gVlNJCm5vdCBiZWluZyBvbmxpbmUgZm9yIHdoYXRldmVyIHJlYXNvbiwgdGhlIGRyaXZlciBi
bGluZGx5IGF0dGVtcHRzIHRvIGNsZWFuCnVwIHRoZSBtaXNjIE1TSS1YIHZlY3RvciB0d2ljZS4g
VGhpcyBjaGFuZ2UgZml4ZXMgdGhhdCBiZWhhdmlvci4gSSdkIGxpa2UKdGhpcyB0byBub3QgbGFu
Z3Vpc2ggd2FpdGluZyBmb3IgYSBkaWZmZXJlbnQgZml4LCBzaW5jZSBJJ2QgbGlrZSB0byBwb2lu
dCBvdXIKZGlzdHJvIHZlbmRvciB0byB0aGlzIChvciBhbm90aGVyKSBwYXRjaCB0byBjaGVycnkt
cGljaywgc28gd2UgY2FuIGdldCB0aGlzCmludG8gcHJvZHVjdGlvbi4gT3RoZXJ3aXNlIG91ciBw
bGF0Zm9ybSByb2xsb3V0IGhpdHRpbmcgdGhpcyBwcm9ibGVtIGlzCmdvaW5nIHRvIGJlIHF1aXRl
IGJ1bXB5LCB3aGljaCBpcyB2ZXJ5IG11Y2ggbm90IGlkZWFsLgoKQ2hlZXJzLAotUEoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCgpOb3RlOiBUaGlzIGVtYWlsIGlzIGZvciB0aGUg
Y29uZmlkZW50aWFsIHVzZSBvZiB0aGUgbmFtZWQgYWRkcmVzc2VlKHMpIG9ubHkgYW5kIG1heSBj
b250YWluIHByb3ByaWV0YXJ5LCBjb25maWRlbnRpYWwsIG9yIHByaXZpbGVnZWQgaW5mb3JtYXRp
b24gYW5kL29yIHBlcnNvbmFsIGRhdGEuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNp
cGllbnQsIHlvdSBhcmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgYW55IHJldmlldywgZGlzc2VtaW5h
dGlvbiwgb3IgY29weWluZyBvZiB0aGlzIGVtYWlsIGlzIHN0cmljdGx5IHByb2hpYml0ZWQsIGFu
ZCByZXF1ZXN0ZWQgdG8gbm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kIGRlc3Ryb3kg
dGhpcyBlbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzLiBFbWFpbCB0cmFuc21pc3Npb24gY2Fubm90
IGJlIGd1YXJhbnRlZWQgdG8gYmUgc2VjdXJlIG9yIGVycm9yLWZyZWUuIFRoZSBDb21wYW55LCB0
aGVyZWZvcmUsIGRvZXMgbm90IG1ha2UgYW55IGd1YXJhbnRlZXMgYXMgdG8gdGhlIGNvbXBsZXRl
bmVzcyBvciBhY2N1cmFjeSBvZiB0aGlzIGVtYWlsIG9yIGFueSBhdHRhY2htZW50cy4gVGhpcyBl
bWFpbCBpcyBmb3IgaW5mb3JtYXRpb25hbCBwdXJwb3NlcyBvbmx5IGFuZCBkb2VzIG5vdCBjb25z
dGl0dXRlIGEgcmVjb21tZW5kYXRpb24sIG9mZmVyLCByZXF1ZXN0LCBvciBzb2xpY2l0YXRpb24g
b2YgYW55IGtpbmQgdG8gYnV5LCBzZWxsLCBzdWJzY3JpYmUsIHJlZGVlbSwgb3IgcGVyZm9ybSBh
bnkgdHlwZSBvZiB0cmFuc2FjdGlvbiBvZiBhIGZpbmFuY2lhbCBwcm9kdWN0LiBQZXJzb25hbCBk
YXRhLCBhcyBkZWZpbmVkIGJ5IGFwcGxpY2FibGUgZGF0YSBwcm90ZWN0aW9uIGFuZCBwcml2YWN5
IGxhd3MsIGNvbnRhaW5lZCBpbiB0aGlzIGVtYWlsIG1heSBiZSBwcm9jZXNzZWQgYnkgdGhlIENv
bXBhbnksIGFuZCBhbnkgb2YgaXRzIGFmZmlsaWF0ZWQgb3IgcmVsYXRlZCBjb21wYW5pZXMsIGZv
ciBsZWdhbCwgY29tcGxpYW5jZSwgYW5kL29yIGJ1c2luZXNzLXJlbGF0ZWQgcHVycG9zZXMuIFlv
dSBtYXkgaGF2ZSByaWdodHMgcmVnYXJkaW5nIHlvdXIgcGVyc29uYWwgZGF0YTsgZm9yIGluZm9y
bWF0aW9uIG9uIGV4ZXJjaXNpbmcgdGhlc2UgcmlnaHRzIG9yIHRoZSBDb21wYW554oCZcyB0cmVh
dG1lbnQgb2YgcGVyc29uYWwgZGF0YSwgcGxlYXNlIGVtYWlsIGRhdGFyZXF1ZXN0c0BqdW1wdHJh
ZGluZy5jb20uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
