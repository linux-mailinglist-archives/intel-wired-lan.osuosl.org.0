Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2103F9082
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Aug 2021 00:37:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 160A782F98;
	Thu, 26 Aug 2021 22:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 89D8IlkROImK; Thu, 26 Aug 2021 22:37:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6015280E12;
	Thu, 26 Aug 2021 22:37:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0764A1BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 22:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01C8A426DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 22:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=jumptrading.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y9i-_moSQRZg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 22:19:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2110.outbound.protection.outlook.com [40.107.243.110])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21D0D426D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 22:19:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZOF3vOvlegN0WhhgicrH/yDmr5xZuYyD9zZnWOjeZPrSdx/QCQ/0OJ0YHj44vzKSW2acfbu/JoK6c2/W0yDSmNyx5SbECXqdHQUWhTPrU/QW2t5ojBp/hM6JZVyOqcu/jbFChp3gHxF4NxB8+0rey54j0kfTZujsVo0Eyh3KzpMhMmw3pdvN7ho/mmmWN0TxcprRP70njGc2k2TSpBeC7jFRr+Q84lxgeronsvU96s8QPYB+wBoVP41R4qEhAk7066L7XO4ach1q5gMKXYHcrUiOvMoSu8MfVZBfXAWsGFkuccNTXKTBuPzSa4uN3K2u+E7ncCGpLH6LN6lag5IQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y8pdtuMVn0RfK9YlRKctXBoavkeZeGynmgG5NR53h5Y=;
 b=OolWCgImkBaH0JyxU7Bk5B9qjLsKwtMkRhqSaUqUBYDFHEqaUFaCX96lku51Jp0Lh5jktfSuSsQzxe1m9JNiq+q5sSjgq+YMOmX48e3ulQ0ETMmopvGFW5bsVcCsbi+8YJ792ZAbex4YT9ByA+BpIXxrJjTmElU+DNv32i/gyxC/1m8HSvTMKU044Wn9Ws+9xaC1usl9D4PFPn8MfPkFDIDv9X4pl7Wn83JenayBczjmVf2lZwuJ+xeCKj3Lut6SxjlRXGgf+OlRfaBuvVrB+1DpctHx4oEeeyhefOJJiyGVesqSWVcv4Mf9R5ax5zH/zLRsaHDuMikIZv81RESOdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 208.78.215.133) smtp.rcpttodomain=lists.osuosl.org
 smtp.mailfrom=fpif-pwl1.w2k.jumptrading.com; dmarc=fail (p=reject sp=reject
 pct=100) action=oreject header.from=jumptrading.com; dkim=none (message not
 signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jumptrading.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y8pdtuMVn0RfK9YlRKctXBoavkeZeGynmgG5NR53h5Y=;
 b=R3D9kV4Z/Lpa0WqrxLNlNtWPYdlsFSKlKV9rHFQPGLD5i3nkUtGga0OGsKhAjqtsuiGtyqHFImEjEdviCZmCVWkuCmkELWUugUptBp7FEbu/JtPvOrnr1E4ABW2YWdYDkRgboGoNxaDzjp+qEz66mwgwphQE6PDgV5adgnRELfU=
Received: from BN0PR02CA0024.namprd02.prod.outlook.com (2603:10b6:408:e4::29)
 by CY4PR14MB1253.namprd14.prod.outlook.com (2603:10b6:903:95::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.22; Thu, 26 Aug
 2021 22:19:35 +0000
Received: from BN8NAM11FT061.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:e4:cafe::82) by BN0PR02CA0024.outlook.office365.com
 (2603:10b6:408:e4::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.21 via Frontend
 Transport; Thu, 26 Aug 2021 22:19:35 +0000
X-MS-Exchange-Authentication-Results: spf=none (sender IP is 208.78.215.133)
 smtp.mailfrom=fpif-pwl1.w2k.jumptrading.com; lists.osuosl.org; dkim=none
 (message not signed) header.d=none;lists.osuosl.org; dmarc=fail
 action=oreject header.from=jumptrading.com;
Received-SPF: None (protection.outlook.com: fpif-pwl1.w2k.jumptrading.com does
 not designate permitted sender hosts)
Received: from mail.jumptrading.com (208.78.215.133) by
 BN8NAM11FT061.mail.protection.outlook.com (10.13.177.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4457.17 via Frontend Transport; Thu, 26 Aug 2021 22:19:34 +0000
Received: from fpif-exnw1.w2k.jumptrading.com (7.145.13.95) by
 fpif-exnw1.w2k.jumptrading.com (7.145.13.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Thu, 26 Aug 2021 17:19:33 -0500
Received: from njwf-esa1.w2k.jumptrading.com (7.9.212.139) by
 fpif-exnw1.w2k.jumptrading.com (7.145.13.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.15
 via Frontend Transport; Thu, 26 Aug 2021 17:19:33 -0500
X-Internal-Message: True
Received: from fpif-pwl1.w2k.jumptrading.com ([7.145.13.98])
 by njwf-esa1.w2k.jumptrading.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 26 Aug 2021 22:19:33 +0000
Received: by fpif-pwl1.w2k.jumptrading.com (Postfix, from userid 44223)
 id 98124802478; Thu, 26 Aug 2021 17:19:32 -0500 (CDT)
From: PJ Waskiewicz <pwaskiewicz@jumptrading.com>
To: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
Date: Thu, 26 Aug 2021 17:19:16 -0500
Message-ID: <20210826221916.127243-1-pwaskiewicz@jumptrading.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 40f89bd8-6ce4-47b6-c83b-08d968df9597
X-MS-TrafficTypeDiagnostic: CY4PR14MB1253:
X-Microsoft-Antispam-PRVS: <CY4PR14MB1253D6793D53DCA4E18BC221E1C79@CY4PR14MB1253.namprd14.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w5/FrK8T0bCh/bL3QbGxLoJFDC42LaK7eIFHS2I0D5CdI35vJGJrHD0ALJoUS/fFvcBGlrZmKN22SuM8h6m1oTSdWd5PtHvsp8SC7FOZ9uMETJZ2yDpgBpp+nTXyuI088hdlNma4f4ebJJqpvrV+5jEa940HjavvR3fZ4721vqB+ask/+G5KPaMnGrj8zEaeMRDtpKMHBXX58Y5t/nRAnbG5cpAyxrKSOfsMtJsqID3lCZNUz89Uh126Gq4G7YP8wYTbxr2kUANleoMLjGDPgGFAvW18xihefeTJK41VSXaPOOFmwtGpq5bIE057OYJOWAquIizzTzq7F2K3/Kxi6dTp6qabCOYmEHHarWTCKlqRmCqnQQWKPyPRrbVve7P9GOSvMP5tQaiTVF4cwneUArba4/GRnnUSBd/pf0xDWstOTAJ6XdZ22INFsBbgstqPZn7sRRv4W6aC77owN+jX5nGwqEY0tkcAyuyREayzt3qEkNCKvEFUd17LNLhllUSTOc0IdLZWwv1DBl44TqEU7wCgRN59e41yX9c9RbeVuG+7G/n/dyd5VfUISg84fWTaZJiDE4Wr2XkEEa2W5NDyjxmNg0LUS8lO9JCIISvlERiXpOIB6vVDU4m91lwzZoCD81gfvQ2P1n5IRuhup6XLEzqtBoaysXb172eMTVs7gnU=
X-Forefront-Antispam-Report: CIP:208.78.215.133; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.jumptrading.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(376002)(346002)(396003)(136003)(39860400002)(46966006)(36756003)(82740400003)(107886003)(336012)(83170400001)(426003)(110136005)(35950700001)(47076005)(498600001)(83380400001)(5660300002)(45080400002)(82310400003)(1076003)(6666004)(356005)(4326008)(54906003)(81166007)(8936002)(26005)(6266002)(8676002)(70586007)(42186006)(316002)(2616005)(2906002)(70206006);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: jumptrading.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2021 22:19:34.5834 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 40f89bd8-6ce4-47b6-c83b-08d968df9597
X-MS-Exchange-CrossTenant-Id: 11f2af73-8873-4240-85a3-063ce66fc61c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=11f2af73-8873-4240-85a3-063ce66fc61c; Ip=[208.78.215.133];
 Helo=[mail.jumptrading.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT061.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR14MB1253
Subject: [Intel-wired-lan] [PATCH 1/1] i40e: Avoid double IRQ free on error
 path in probe()
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
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, netdev@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>,
 PJ Waskiewicz <pwaskiewicz@jumptrading.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhpcyBmaXhlcyBhbiBlcnJvciBwYXRoIGNvbmRpdGlvbiB3aGVuIHByb2JlKCkgZmFpbHMgZHVl
IHRvIHRoZQpkZWZhdWx0IFZTSSBub3QgYmVpbmcgYXZhaWxhYmxlIG9yIG9ubGluZSB5ZXQgaW4g
dGhlIGZpcm13YXJlLiBJZgp0aGF0IGhhcHBlbnMsIHRoZSBwcmV2aW91cyB0ZWFyZG93biBwYXRo
IHdvdWxkIGNsZWFyIHRoZSBpbnRlcnJ1cHQKc2NoZW1lLCB3aGljaCBhbHNvIGZyZWVkIHRoZSBJ
UlFzIHdpdGggdGhlIE9TLiBUaGVuIHRoZSBlcnJvciBwYXRoCmZvciB0aGUgc3dpdGNoIHNldHVw
IChwcmUtVlNJKSB3b3VsZCBhdHRlbXB0IHRvIGZyZWUgdGhlIE9TIElSUXMKYXMgd2VsbC4KClsg
ICAxNC41OTcxMjFdIGk0MGUgMDAwMDozMTowMC4wOiBzZXR1cCBvZiBNQUlOIFZTSSBmYWlsZWQK
WyAgIDE0LjcxMjE2N10gaTQwZSAwMDAwOjMxOjAwLjA6IHNldHVwX3BmX3N3aXRjaCBmYWlsZWQ6
IC0xMQpbICAgMTQuNzU1MzE4XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0K
WyAgIDE0Ljc2NjI2MV0gVHJ5aW5nIHRvIGZyZWUgYWxyZWFkeS1mcmVlIElSUSAyNjYKWyAgIDE0
Ljc3NzIyNF0gV0FSTklORzogQ1BVOiAwIFBJRDogNSBhdCBrZXJuZWwvaXJxL21hbmFnZS5jOjE3
MzEgX19mcmVlX2lycSsweDlhLzB4MzAwClsgICAxNC43OTEzNDFdIE1vZHVsZXMgbGlua2VkIGlu
OiBYWFhYWFgKWyAgIDE0LjgyNTM2MV0gQ1BVOiAwIFBJRDogNSBDb21tOiBrd29ya2VyLzA6MCBO
b3QgdGFpbnRlZCA8a2VybmVsIG9taXR0ZWQ+ClsgICAxNC44NDA2MzBdIEhhcmR3YXJlIG5hbWU6
IFhYWFhYWApbICAgMTQuODU0OTI0XSBXb3JrcXVldWU6IGV2ZW50cyB3b3JrX2Zvcl9jcHVfZm4K
WyAgIDE0Ljg2NjQ4Ml0gUklQOiAwMDEwOl9fZnJlZV9pcnErMHg5YS8weDMwMApbICAgMTQuODc3
NjM4XSBDb2RlOiAwOCA3NSAwZSBlOSAzYyAwMiAwMCAwMCA0YyAzOSA2YiAwOCA3NCA1OSA0OCA4
OSBkYSA0OCA4YiA1YSAxOCA0OCA4NSBkYiA3NSBlZSA4YiA3NCAyNCAwNCA0OCBjNyBjNyA1OCBh
MCBhYSBiNCBlOCAzZiAyZSBmOSBmZiA8MGY+IDBiIDRjIDg5IGY2IDQ4IDg5IGVmIGU4IGY5IDY5
IDdiIDAwIDQ5IDhiIDQ3IDQwIDQ4IDhiIDgwIDgwIDAwClsgICAxNC45MTA1NzFdIFJTUDogMDAw
MDpmZjZhNmFkNzQwMWRmYjYwIEVGTEFHUzogMDAwMTAwODYKWyAgIDE0LjkyMzI2NV0gUkFYOiAw
MDAwMDAwMDAwMDAwMDAwIFJCWDogZmYzYzk3MzI4ZWI1NjAwMCBSQ1g6IDAwMDAwMDAwMDAwMDAw
MDYKWyAgIDE0LjkzNzg1M10gUkRYOiAwMDAwMDAwMDAwMDAwMDA3IFJTSTogMDAwMDAwMDAwMDAw
MDA5MiBSREk6IGZmM2M5NzMzM2VlMTZhMDAKWyAgIDE0Ljk1MjI5MF0gUkJQOiBmZjNjOTczMWNm
ZjRjYWE0IFIwODogMDAwMDAwMDAwMDAwMDZiOCBSMDk6IDAwMDAwMDAwMDBhYWFhYWEKWyAgIDE0
Ljk2Njc4MV0gUjEwOiAwMDAwMDAwMDAwMDAwMDAwIFIxMTogZmY2YTZhZDc2OGFmZjAyMCBSMTI6
IGZmM2M5NzMxY2ZmNGNiODAKWyAgIDE0Ljk4MTQzNl0gUjEzOiBmZjNjOTczMjhlYjU2MDAwIFIx
NDogMDAwMDAwMDAwMDAwMDI0NiBSMTU6IGZmM2M5NzMxY2ZmNGNhMDAKWyAgIDE0Ljk5NjA0MV0g
RlM6ICAwMDAwMDAwMDAwMDAwMDAwKDAwMDApIEdTOmZmM2M5NzMzM2VlMDAwMDAoMDAwMCkga25s
R1M6MDAwMDAwMDAwMDAwMDAwMApbICAgMTUuMDExNTExXSBDUzogIDAwMTAgRFM6IDAwMDAgRVM6
IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzClsgICAxNS4wMjQ0OTNdIENSMjogMDAwMDdmYjZh
YzAwMjAwMCBDUjM6IDAwMDAwMDA0ZjhjMGEwMDEgQ1I0OiAwMDAwMDAwMDAwNzYxZWYwClsgICAx
NS4wMzkzNzNdIERSMDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAgRFIy
OiAwMDAwMDAwMDAwMDAwMDAwClsgICAxNS4wNTQ0MjZdIERSMzogMDAwMDAwMDAwMDAwMDAwMCBE
UjY6IDAwMDAwMDAwZmZmZTBmZjAgRFI3OiAwMDAwMDAwMDAwMDAwNDAwClsgICAxNS4wNjg3ODFd
IFBLUlU6IDU1NTU1NTU0ClsgICAxNS4wNzg5MDJdIENhbGwgVHJhY2U6ClsgICAxNS4wODg0MjFd
ICA/IHN5bmNocm9uaXplX2lycSsweDNhLzB4YTAKWyAgIDE1LjA5OTU1Nl0gIGZyZWVfaXJxKzB4
MmUvMHg2MApbICAgMTUuMTA5ODYzXSAgaTQwZV9jbGVhcl9pbnRlcnJ1cHRfc2NoZW1lKzB4NTMv
MHgxOTAgW2k0MGVdClsgICAxNS4xMjI3MThdICBpNDBlX3Byb2JlLnBhcnQuMTA4KzB4MTM0Yi8w
eDFhNDAgW2k0MGVdClsgICAxNS4xMzUzNDNdICA/IGttZW1fY2FjaGVfYWxsb2MrMHgxNTgvMHgx
YzAKWyAgIDE1LjE0NjY4OF0gID8gYWNwaV91dF91cGRhdGVfcmVmX2NvdW50LnBhcnQuMSsweDhl
LzB4MzQ1ClsgICAxNS4xNTkyMTddICA/IGFjcGlfdXRfdXBkYXRlX29iamVjdF9yZWZlcmVuY2Ur
MHgxNWUvMHgxZTIKWyAgIDE1LjE3MTg3OV0gID8gc3Ryc3RyKzB4MjEvMHg3MApbICAgMTUuMTgx
ODAyXSAgPyBpcnFfZ2V0X2lycV9kYXRhKzB4YS8weDIwClsgICAxNS4xOTMxOThdICA/IG1wX2No
ZWNrX3Bpbl9hdHRyKzB4MTMvMHhjMApbICAgMTUuMjAzOTA5XSAgPyBpcnFfZ2V0X2lycV9kYXRh
KzB4YS8weDIwClsgICAxNS4yMTQzMTBdICA/IG1wX21hcF9waW5fdG9faXJxKzB4ZDMvMHgyZjAK
WyAgIDE1LjIyNTIwNl0gID8gYWNwaV9yZWdpc3Rlcl9nc2lfaW9hcGljKzB4OTMvMHgxNzAKWyAg
IDE1LjIzNjM1MV0gID8gcGNpX2NvbmYxX3JlYWQrMHhhNC8weDEwMApbICAgMTUuMjQ2NTg2XSAg
PyBwY2lfYnVzX3JlYWRfY29uZmlnX3dvcmQrMHg0OS8weDcwClsgICAxNS4yNTc2MDhdICA/IGRv
X3BjaV9lbmFibGVfZGV2aWNlKzB4Y2MvMHgxMDAKWyAgIDE1LjI2ODMzN10gIGxvY2FsX3BjaV9w
cm9iZSsweDQxLzB4OTAKWyAgIDE1LjI3OTAxNl0gIHdvcmtfZm9yX2NwdV9mbisweDE2LzB4MjAK
WyAgIDE1LjI4OTU0NV0gIHByb2Nlc3Nfb25lX3dvcmsrMHgxYTcvMHgzNjAKWyAgIDE1LjMwMDIx
NF0gIHdvcmtlcl90aHJlYWQrMHgxY2YvMHgzOTAKWyAgIDE1LjMwOTk4MF0gID8gY3JlYXRlX3dv
cmtlcisweDFhMC8weDFhMApbICAgMTUuMzE5ODU0XSAga3RocmVhZCsweDExMi8weDEzMApbICAg
MTUuMzI4ODA2XSAgPyBrdGhyZWFkX2ZsdXNoX3dvcmtfZm4rMHgxMC8weDEwClsgICAxNS4zMzg3
MzldICByZXRfZnJvbV9mb3JrKzB4MWYvMHg0MApbICAgMTUuMzQ3NjIyXSAtLS1bIGVuZCB0cmFj
ZSA1MjIwNTUxODMyMzQ5Mjc0IF0tLS0KCkJyZWFrIGFwYXJ0IHRoZSBjbGVhciBhbmQgcmVzZXQg
c2NoZW1lcyBzbyB0aGF0IGNsZWFyIG5vIGxvbmdlcgpjYWxscyBpNDBfcmVzZXRfaW50ZXJydXB0
X2NhcGFiaWxpdHkoKSwgYWxsb3dpbmcgdGhhdCB0byBiZSBjYWxsZWQKYWNyb3NzIGVycm9yIHBh
dGhzIGluIHByb2JlKCkuCgpGaXhlczogNDFjNDQ1ZmYwZjQ4MiAoImk0MGU6IG1haW4gZHJpdmVy
IGNvcmUiKQpTaWduZWQtb2ZmLWJ5OiBQSiBXYXNraWV3aWN6IDxwd2Fza2lld2ljekBqdW1wdHJh
ZGluZy5jb20+ClJldmlld2VkLWJ5OiBNYWNpZWogRmlqYWxrb3dza2kgPG1hY2llai5maWphbGtv
d3NraUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X21haW4uYyB8IDggKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWlu
LmMKaW5kZXggMWQxZjUyNzU2YTkzLi5iMWNiZDBlYWU4M2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwpAQCAtNDg2Miw3ICs0ODYyLDggQEAgc3RhdGlj
IHZvaWQgaTQwZV9yZXNldF9pbnRlcnJ1cHRfY2FwYWJpbGl0eShzdHJ1Y3QgaTQwZV9wZiAqcGYp
CiAgKiBAcGY6IGJvYXJkIHByaXZhdGUgc3RydWN0dXJlCiAgKgogICogV2UgZ28gdGhyb3VnaCBh
bmQgY2xlYXIgaW50ZXJydXB0IHNwZWNpZmljIHJlc291cmNlcyBhbmQgcmVzZXQgdGhlIHN0cnVj
dHVyZQotICogdG8gcHJlLWxvYWQgY29uZGl0aW9ucworICogdG8gcHJlLWxvYWQgY29uZGl0aW9u
cy4gIE9TIGludGVycnVwdCB0ZWFyZG93biBtdXN0IGJlIGRvbmUgc2VwYXJhdGVseSBkdWUKKyAq
IHRvIFZTSSB2cyBQRiBpbnN0YW50aWF0aW9uLCBhbmQgZGlmZmVyZW50IHRlYXJkb3duIHBhdGgg
cmVxdWlyZW1lbnRzLgogICoqLwogc3RhdGljIHZvaWQgaTQwZV9jbGVhcl9pbnRlcnJ1cHRfc2No
ZW1lKHN0cnVjdCBpNDBlX3BmICpwZikKIHsKQEAgLTQ4NzcsNyArNDg3OCw2IEBAIHN0YXRpYyB2
b2lkIGk0MGVfY2xlYXJfaW50ZXJydXB0X3NjaGVtZShzdHJ1Y3QgaTQwZV9wZiAqcGYpCiAgICAg
ICAgZm9yIChpID0gMDsgaSA8IHBmLT5udW1fYWxsb2NfdnNpOyBpKyspCiAgICAgICAgICAgICAg
ICBpZiAocGYtPnZzaVtpXSkKICAgICAgICAgICAgICAgICAgICAgICAgaTQwZV92c2lfZnJlZV9x
X3ZlY3RvcnMocGYtPnZzaVtpXSk7Ci0gICAgICAgaTQwZV9yZXNldF9pbnRlcnJ1cHRfY2FwYWJp
bGl0eShwZik7CiB9CgogLyoqCkBAIC0xMDUyMyw2ICsxMDUyMyw3IEBAIHN0YXRpYyB2b2lkIGk0
MGVfcmVidWlsZChzdHJ1Y3QgaTQwZV9wZiAqcGYsIGJvb2wgcmVpbml0LCBib29sIGxvY2tfYWNx
dWlyZWQpCiAgICAgICAgICAgICAgICAgICAgICAgICAqLwogICAgICAgICAgICAgICAgICAgICAg
ICBmcmVlX2lycShwZi0+cGRldi0+aXJxLCBwZik7CiAgICAgICAgICAgICAgICAgICAgICAgIGk0
MGVfY2xlYXJfaW50ZXJydXB0X3NjaGVtZShwZik7CisgICAgICAgICAgICAgICAgICAgICAgIGk0
MGVfcmVzZXRfaW50ZXJydXB0X2NhcGFiaWxpdHkocGYpOwogICAgICAgICAgICAgICAgICAgICAg
ICBpZiAoaTQwZV9yZXN0b3JlX2ludGVycnVwdF9zY2hlbWUocGYpKQogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGdvdG8gZW5kX3VubG9jazsKICAgICAgICAgICAgICAgIH0KQEAgLTE1
OTA4LDYgKzE1OTA5LDcgQEAgc3RhdGljIHZvaWQgaTQwZV9yZW1vdmUoc3RydWN0IHBjaV9kZXYg
KnBkZXYpCiAgICAgICAgLyogQ2xlYXIgYWxsIGR5bmFtaWMgbWVtb3J5IGxpc3RzIG9mIHJpbmdz
LCBxX3ZlY3RvcnMsIGFuZCBWU0lzICovCiAgICAgICAgcnRubF9sb2NrKCk7CiAgICAgICAgaTQw
ZV9jbGVhcl9pbnRlcnJ1cHRfc2NoZW1lKHBmKTsKKyAgICAgICBpNDBlX3Jlc2V0X2ludGVycnVw
dF9jYXBhYmlsaXR5KHBmKTsKICAgICAgICBmb3IgKGkgPSAwOyBpIDwgcGYtPm51bV9hbGxvY192
c2k7IGkrKykgewogICAgICAgICAgICAgICAgaWYgKHBmLT52c2lbaV0pIHsKICAgICAgICAgICAg
ICAgICAgICAgICAgaWYgKCF0ZXN0X2JpdChfX0k0MEVfUkVDT1ZFUllfTU9ERSwgcGYtPnN0YXRl
KSkKQEAgLTE2MTMwLDYgKzE2MTMyLDcgQEAgc3RhdGljIHZvaWQgaTQwZV9zaHV0ZG93bihzdHJ1
Y3QgcGNpX2RldiAqcGRldikKICAgICAgICAgKi8KICAgICAgICBydG5sX2xvY2soKTsKICAgICAg
ICBpNDBlX2NsZWFyX2ludGVycnVwdF9zY2hlbWUocGYpOworICAgICAgIGk0MGVfcmVzZXRfaW50
ZXJydXB0X2NhcGFiaWxpdHkocGYpOwogICAgICAgIHJ0bmxfdW5sb2NrKCk7CgogICAgICAgIGlm
IChzeXN0ZW1fc3RhdGUgPT0gU1lTVEVNX1BPV0VSX09GRikgewpAQCAtMTYxODIsNiArMTYxODUs
NyBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIGk0MGVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNl
ICpkZXYpCiAgICAgICAgICogdG8gQ1BVMC4KICAgICAgICAgKi8KICAgICAgICBpNDBlX2NsZWFy
X2ludGVycnVwdF9zY2hlbWUocGYpOworICAgICAgIGk0MGVfcmVzZXRfaW50ZXJydXB0X2NhcGFi
aWxpdHkocGYpOwoKICAgICAgICBydG5sX3VubG9jaygpOwoKLS0KMi4yNy4wCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KCk5vdGU6IFRoaXMgZW1haWwgaXMgZm9yIHRoZSBjb25m
aWRlbnRpYWwgdXNlIG9mIHRoZSBuYW1lZCBhZGRyZXNzZWUocykgb25seSBhbmQgbWF5IGNvbnRh
aW4gcHJvcHJpZXRhcnksIGNvbmZpZGVudGlhbCwgb3IgcHJpdmlsZWdlZCBpbmZvcm1hdGlvbiBh
bmQvb3IgcGVyc29uYWwgZGF0YS4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVu
dCwgeW91IGFyZSBoZXJlYnkgbm90aWZpZWQgdGhhdCBhbnkgcmV2aWV3LCBkaXNzZW1pbmF0aW9u
LCBvciBjb3B5aW5nIG9mIHRoaXMgZW1haWwgaXMgc3RyaWN0bHkgcHJvaGliaXRlZCwgYW5kIHJl
cXVlc3RlZCB0byBub3RpZnkgdGhlIHNlbmRlciBpbW1lZGlhdGVseSBhbmQgZGVzdHJveSB0aGlz
IGVtYWlsIGFuZCBhbnkgYXR0YWNobWVudHMuIEVtYWlsIHRyYW5zbWlzc2lvbiBjYW5ub3QgYmUg
Z3VhcmFudGVlZCB0byBiZSBzZWN1cmUgb3IgZXJyb3ItZnJlZS4gVGhlIENvbXBhbnksIHRoZXJl
Zm9yZSwgZG9lcyBub3QgbWFrZSBhbnkgZ3VhcmFudGVlcyBhcyB0byB0aGUgY29tcGxldGVuZXNz
IG9yIGFjY3VyYWN5IG9mIHRoaXMgZW1haWwgb3IgYW55IGF0dGFjaG1lbnRzLiBUaGlzIGVtYWls
IGlzIGZvciBpbmZvcm1hdGlvbmFsIHB1cnBvc2VzIG9ubHkgYW5kIGRvZXMgbm90IGNvbnN0aXR1
dGUgYSByZWNvbW1lbmRhdGlvbiwgb2ZmZXIsIHJlcXVlc3QsIG9yIHNvbGljaXRhdGlvbiBvZiBh
bnkga2luZCB0byBidXksIHNlbGwsIHN1YnNjcmliZSwgcmVkZWVtLCBvciBwZXJmb3JtIGFueSB0
eXBlIG9mIHRyYW5zYWN0aW9uIG9mIGEgZmluYW5jaWFsIHByb2R1Y3QuIFBlcnNvbmFsIGRhdGEs
IGFzIGRlZmluZWQgYnkgYXBwbGljYWJsZSBkYXRhIHByb3RlY3Rpb24gYW5kIHByaXZhY3kgbGF3
cywgY29udGFpbmVkIGluIHRoaXMgZW1haWwgbWF5IGJlIHByb2Nlc3NlZCBieSB0aGUgQ29tcGFu
eSwgYW5kIGFueSBvZiBpdHMgYWZmaWxpYXRlZCBvciByZWxhdGVkIGNvbXBhbmllcywgZm9yIGxl
Z2FsLCBjb21wbGlhbmNlLCBhbmQvb3IgYnVzaW5lc3MtcmVsYXRlZCBwdXJwb3Nlcy4gWW91IG1h
eSBoYXZlIHJpZ2h0cyByZWdhcmRpbmcgeW91ciBwZXJzb25hbCBkYXRhOyBmb3IgaW5mb3JtYXRp
b24gb24gZXhlcmNpc2luZyB0aGVzZSByaWdodHMgb3IgdGhlIENvbXBhbnnigJlzIHRyZWF0bWVu
dCBvZiBwZXJzb25hbCBkYXRhLCBwbGVhc2UgZW1haWwgZGF0YXJlcXVlc3RzQGp1bXB0cmFkaW5n
LmNvbS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
