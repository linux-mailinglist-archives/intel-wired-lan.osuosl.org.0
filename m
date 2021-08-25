Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629003F7CB1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Aug 2021 21:26:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC9ED40113;
	Wed, 25 Aug 2021 19:26:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c6KHNGCfzVM9; Wed, 25 Aug 2021 19:25:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 399C9401B4;
	Wed, 25 Aug 2021 19:25:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B527F1BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 19:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF902401B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 19:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hglHx2OCEUg3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Aug 2021 19:23:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on20701.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e89::701])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE79B400EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 19:23:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A8x8F/5FD0vVTfnYMsuvhBl6y7sabOXUmgocCLi1UON3DOIyUNEg4CHCZhwmwlv8guyONilWH6Kizg6osCkTbwM3UwD1FS9E/5naMMQuNGH4DVEfHn1kqsWw219HznRo3H5dl5/xTx4BnNiatWbqN+hpev23ApDVeblas93RTq8KRUV9X9WXBOz5Vq+wF8L65/I9XC1aUpra1jaQbfUND77r4Hs9bBDcL7wELjn2kZerPNXG+oQ0ofh8TvXGadMGsAK11PE7Uc0CfgFsdcPwkefjxwnfUxGlqArJHPOxVe7mWNaXaMIemsacbsgUbClJZKyUFu5azpmcepcjvkirNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+KcABsNMaE7XG96c2boNY47x9eCsyRGHMr2/pzff5qA=;
 b=KUhbEGk69BQSWGcDiQfK0Bo1pPxdhzff3i9PqQfom2Ru+/ivded/YC2Io4n5Uja14XBnPBA5UwZgmG1yW2+XpUMF7Gwa7jd7Rcip4Ko8ypNoOUNk75ypAmvn1wGCzUKZDaOqR+VfPwiNMGt0AeBAROzdrqidwO+nZKyEQLjxTd8ncChADbTUAlsJqE0w81oXpmixhrulmgl5HysZzPZGpwwH36GCydd+vrrKGYfEB/68721pZ99ud2WG3AtkYsKy0AJXRbg/NYKRk/0csn9sC6V0hwb1GM6EBe1DctxWl17BCl7rOW/1dpCiWURBGK4fhTz88clmIwVD49ZQ3YYztA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 208.78.215.133) smtp.rcpttodomain=lists.osuosl.org
 smtp.mailfrom=fpif-pwl1.w2k.jumptrading.com; dmarc=fail (p=reject sp=reject
 pct=100) action=oreject header.from=jumptrading.com; dkim=none (message not
 signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jumptrading.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+KcABsNMaE7XG96c2boNY47x9eCsyRGHMr2/pzff5qA=;
 b=ks+WedvSxQHZMjSNV3vtkUdQCj2YDg+i9ak6pPlGjiXFuviHLLZqdFh3uq+Nc1myRnHjz/Vfx5pSQ13K5M1XtbvrIJE8XvXTNzpH8GAapTMN6AsCgFH3Ri/cc5nFoCrZWuUPobXBJnEAb1RX7H51Ufe9x3xeieNhyq4kvaH7tac=
Received: from MWHPR22CA0048.namprd22.prod.outlook.com (2603:10b6:300:69::34)
 by BN9PR14MB4907.namprd14.prod.outlook.com (2603:10b6:408:118::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Wed, 25 Aug
 2021 19:23:54 +0000
Received: from CO1NAM11FT023.eop-nam11.prod.protection.outlook.com
 (2603:10b6:300:69:cafe::3f) by MWHPR22CA0048.outlook.office365.com
 (2603:10b6:300:69::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.18 via Frontend
 Transport; Wed, 25 Aug 2021 19:23:54 +0000
X-MS-Exchange-Authentication-Results: spf=none (sender IP is 208.78.215.133)
 smtp.mailfrom=fpif-pwl1.w2k.jumptrading.com; lists.osuosl.org; dkim=none
 (message not signed) header.d=none;lists.osuosl.org; dmarc=fail
 action=oreject header.from=jumptrading.com;
Received-SPF: None (protection.outlook.com: fpif-pwl1.w2k.jumptrading.com does
 not designate permitted sender hosts)
Received: from mail.jumptrading.com (208.78.215.133) by
 CO1NAM11FT023.mail.protection.outlook.com (10.13.175.35) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4457.17 via Frontend Transport; Wed, 25 Aug 2021 19:23:54 +0000
Received: from fpif-exnw1.w2k.jumptrading.com (7.145.13.95) by
 fpif-exvnw1.w2k.jumptrading.com (7.145.12.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Wed, 25 Aug 2021 14:23:53 -0500
Received: from fpif-esa1.w2k.jumptrading.com (7.145.12.210) by
 fpif-exnw1.w2k.jumptrading.com (7.145.13.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.15
 via Frontend Transport; Wed, 25 Aug 2021 14:23:53 -0500
X-Internal-Message: True
Received: from fpif-pwl1.w2k.jumptrading.com ([7.145.13.98])
 by fpif-esa1.w2k.jumptrading.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 25 Aug 2021 19:23:53 +0000
Received: by fpif-pwl1.w2k.jumptrading.com (Postfix, from userid 44223)
 id 515B080246F; Wed, 25 Aug 2021 14:23:53 -0500 (CDT)
From: PJ Waskiewicz <pwaskiewicz@jumptrading.com>
To: "David S . Miller" <davem@davemloft.net>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
Date: Wed, 25 Aug 2021 14:23:21 -0500
Message-ID: <20210825192321.32784-1-pwaskiewicz@jumptrading.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3abf0ecf-424b-4c91-2696-08d967fde0c7
X-MS-TrafficTypeDiagnostic: BN9PR14MB4907:
X-Microsoft-Antispam-PRVS: <BN9PR14MB49075464E67BEDBCC0388B9BE1C69@BN9PR14MB4907.namprd14.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G1GYxmPUodhTBfuiFYVfHm9KXtGTBHY7VUq+1V/AeS55h11+6y6Ob4t3KPihOuiMllDZ7kNJqwvivlPTiFMNARV5rKT4u+Ve5YpwKaHzCHkStpXPxCIL2vQQgvD+c5VpJAT8Q1ZW+aEz3LJm9JJzcqNrtpBZ4o7lQoINoWmhoQRZ0PLFIuyaPMH8ecvho9fNOZ1iqbAUbiJVizilY+RoBjLC9en6FWpoPWQ4/YOmGM2bSxzY2oh+7ku+/kbBBqglzFG2MOLGLX0CUbl6GTTrwg4Q968hijUaimX2jPrvGlq/iAOguRCfWEFzcf29QBVulG7SfhzhRWpTVmQKnSe4Vv0fv7GrrjUAq6hwjEGk4re5uojyQJ645S0zjh+0p3hf8O/W004yzrDafk4U3prYELlYR9Y5m4lLY1ohr8MuvFpap3fAVpNc1XHUoItQY90260dAMqpQserNk2INYCJ+CEv6aBqL5lTorFQ8DR6ef4OjZiY+1KLShd5Z3N/muGNdAqGf/Tt0uY7Arq5dNcBiuVdFPuY0OUYhLjFeqfJKFmKPVa1twuwLI/sx7amYq42lAmFuTdTD3CZkHQCISAiZKp2Hun8DQGCSRgLDYAngMvNakK3KfQjcnbPvFDoIKyLMC29xg01O92/j+SoQWAJMO+JET9MocfCkhSlcNIG3lYI=
X-Forefront-Antispam-Report: CIP:208.78.215.133; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.jumptrading.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(396003)(46966006)(54906003)(8936002)(70586007)(498600001)(8676002)(35950700001)(70206006)(45080400002)(2616005)(26005)(1076003)(42186006)(83170400001)(81166007)(2906002)(426003)(4326008)(336012)(82310400003)(316002)(356005)(107886003)(6266002)(82740400003)(36756003)(6666004)(5660300002)(47076005)(83380400001)(110136005);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: jumptrading.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2021 19:23:54.4021 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3abf0ecf-424b-4c91-2696-08d967fde0c7
X-MS-Exchange-CrossTenant-Id: 11f2af73-8873-4240-85a3-063ce66fc61c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=11f2af73-8873-4240-85a3-063ce66fc61c; Ip=[208.78.215.133];
 Helo=[mail.jumptrading.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT023.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR14MB4907
X-Mailman-Approved-At: Wed, 25 Aug 2021 19:25:52 +0000
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
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
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
dGhzIGluIHByb2JlKCkuCgpTaWduZWQtb2ZmLWJ5OiBQSiBXYXNraWV3aWN6IDxwd2Fza2lld2lj
ekBqdW1wdHJhZGluZy5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX21haW4uYyB8IDggKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9t
YWluLmMKaW5kZXggMmYyMDk4MGRkOWE1Li40ZDYwZGE0NGY4MzIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwpAQCAtNDg2NSw3ICs0ODY1LDggQEAgc3Rh
dGljIHZvaWQgaTQwZV9yZXNldF9pbnRlcnJ1cHRfY2FwYWJpbGl0eShzdHJ1Y3QgaTQwZV9wZiAq
cGYpCiAgKiBAcGY6IGJvYXJkIHByaXZhdGUgc3RydWN0dXJlCiAgKgogICogV2UgZ28gdGhyb3Vn
aCBhbmQgY2xlYXIgaW50ZXJydXB0IHNwZWNpZmljIHJlc291cmNlcyBhbmQgcmVzZXQgdGhlIHN0
cnVjdHVyZQotICogdG8gcHJlLWxvYWQgY29uZGl0aW9ucworICogdG8gcHJlLWxvYWQgY29uZGl0
aW9ucy4gIE9TIGludGVycnVwdCB0ZWFyZG93biBtdXN0IGJlIGRvbmUgc2VwYXJhdGVseSBkdWUK
KyAqIHRvIFZTSSB2cy4gUEYgaW5zdGFudGlhdGlvbiwgYW5kIGRpZmZlcmVudCB0ZWFyZG93biBw
YXRoIHJlcXVpcmVtZW50cy4KICAqKi8KIHN0YXRpYyB2b2lkIGk0MGVfY2xlYXJfaW50ZXJydXB0
X3NjaGVtZShzdHJ1Y3QgaTQwZV9wZiAqcGYpCiB7CkBAIC00ODgwLDcgKzQ4ODEsNiBAQCBzdGF0
aWMgdm9pZCBpNDBlX2NsZWFyX2ludGVycnVwdF9zY2hlbWUoc3RydWN0IGk0MGVfcGYgKnBmKQog
ICAgICAgIGZvciAoaSA9IDA7IGkgPCBwZi0+bnVtX2FsbG9jX3ZzaTsgaSsrKQogICAgICAgICAg
ICAgICAgaWYgKHBmLT52c2lbaV0pCiAgICAgICAgICAgICAgICAgICAgICAgIGk0MGVfdnNpX2Zy
ZWVfcV92ZWN0b3JzKHBmLT52c2lbaV0pOwotICAgICAgIGk0MGVfcmVzZXRfaW50ZXJydXB0X2Nh
cGFiaWxpdHkocGYpOwogfQoKIC8qKgpAQCAtMTA1MjYsNiArMTA1MjYsNyBAQCBzdGF0aWMgdm9p
ZCBpNDBlX3JlYnVpbGQoc3RydWN0IGk0MGVfcGYgKnBmLCBib29sIHJlaW5pdCwgYm9vbCBsb2Nr
X2FjcXVpcmVkKQogICAgICAgICAgICAgICAgICAgICAgICAgKi8KICAgICAgICAgICAgICAgICAg
ICAgICAgZnJlZV9pcnEocGYtPnBkZXYtPmlycSwgcGYpOwogICAgICAgICAgICAgICAgICAgICAg
ICBpNDBlX2NsZWFyX2ludGVycnVwdF9zY2hlbWUocGYpOworICAgICAgICAgICAgICAgICAgICAg
ICBpNDBlX3Jlc2V0X2ludGVycnVwdF9jYXBhYmlsaXR5KHBmKTsKICAgICAgICAgICAgICAgICAg
ICAgICAgaWYgKGk0MGVfcmVzdG9yZV9pbnRlcnJ1cHRfc2NoZW1lKHBmKSkKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBnb3RvIGVuZF91bmxvY2s7CiAgICAgICAgICAgICAgICB9CkBA
IC0xNTkyOCw2ICsxNTkyOSw3IEBAIHN0YXRpYyB2b2lkIGk0MGVfcmVtb3ZlKHN0cnVjdCBwY2lf
ZGV2ICpwZGV2KQogICAgICAgIC8qIENsZWFyIGFsbCBkeW5hbWljIG1lbW9yeSBsaXN0cyBvZiBy
aW5ncywgcV92ZWN0b3JzLCBhbmQgVlNJcyAqLwogICAgICAgIHJ0bmxfbG9jaygpOwogICAgICAg
IGk0MGVfY2xlYXJfaW50ZXJydXB0X3NjaGVtZShwZik7CisgICAgICAgaTQwZV9yZXNldF9pbnRl
cnJ1cHRfY2FwYWJpbGl0eShwZik7CiAgICAgICAgZm9yIChpID0gMDsgaSA8IHBmLT5udW1fYWxs
b2NfdnNpOyBpKyspIHsKICAgICAgICAgICAgICAgIGlmIChwZi0+dnNpW2ldKSB7CiAgICAgICAg
ICAgICAgICAgICAgICAgIGlmICghdGVzdF9iaXQoX19JNDBFX1JFQ09WRVJZX01PREUsIHBmLT5z
dGF0ZSkpCkBAIC0xNjE1MCw2ICsxNjE1Miw3IEBAIHN0YXRpYyB2b2lkIGk0MGVfc2h1dGRvd24o
c3RydWN0IHBjaV9kZXYgKnBkZXYpCiAgICAgICAgICovCiAgICAgICAgcnRubF9sb2NrKCk7CiAg
ICAgICAgaTQwZV9jbGVhcl9pbnRlcnJ1cHRfc2NoZW1lKHBmKTsKKyAgICAgICBpNDBlX3Jlc2V0
X2ludGVycnVwdF9jYXBhYmlsaXR5KHBmKTsKICAgICAgICBydG5sX3VubG9jaygpOwoKICAgICAg
ICBpZiAoc3lzdGVtX3N0YXRlID09IFNZU1RFTV9QT1dFUl9PRkYpIHsKQEAgLTE2MjAyLDYgKzE2
MjA1LDcgQEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCBpNDBlX3N1c3BlbmQoc3RydWN0IGRl
dmljZSAqZGV2KQogICAgICAgICAqIHRvIENQVTAuCiAgICAgICAgICovCiAgICAgICAgaTQwZV9j
bGVhcl9pbnRlcnJ1cHRfc2NoZW1lKHBmKTsKKyAgICAgICBpNDBlX3Jlc2V0X2ludGVycnVwdF9j
YXBhYmlsaXR5KHBmKTsKCiAgICAgICAgcnRubF91bmxvY2soKTsKCi0tCjIuMjcuMAoKCl9fX19f
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
