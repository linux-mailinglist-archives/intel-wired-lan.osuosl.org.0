Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C76FC467990
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Dec 2021 15:41:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D770404A6;
	Fri,  3 Dec 2021 14:41:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oVzm6C6HmB-F; Fri,  3 Dec 2021 14:41:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D86F54049D;
	Fri,  3 Dec 2021 14:41:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC2B41BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 14:41:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C4082403E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 14:41:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GAlAr7oXAWR4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Dec 2021 14:41:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on20618.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7ea9::618])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A94344018E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 14:41:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uc8Zu1dXU1kwJYcEJImUQBAkLPoypwcp1v4pybSss9G8hTARC1af489gE9WWzL8FL2nKC+rWK/KV0I+VpMitE/5VUloimyrMz58xiGYt00s9g4pzXgYSm5IaeP5xXRuClcRhiN4o8T1W06Z/f+ORhG9mrbZaYjn/kO5FS6FFU7i+c6h9nj46a+8ptMTZdJQsyirJbs28w4IAOfYeWsEX0lKbf6Hq8DjHSBr83jc/k50/+1A4eYs56lOV8LqGc6C4Be0KvC+aW1/knRutcYBf4rSecweajGOCboxUR4VAKeDOQxXFsoDTavSJw0awPdt28p4bID5ipDu6IhgwT9yiTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cwo4A8I++6GWu4qnIgr4sFI1WWvIVvxULdDbwE5kMro=;
 b=MCmre+KfmQGgVl/hCEN1cq1dmnbU7TIwiMCE74F8WQ0WFTfMWTUS349IV1w/cpBra80zRJ3R/fXvdB8i299n7bsyTZGOkl9hYL2/mVPvY1/ohuTS8vSn2avvuS2v4fYrS+ID7oJxsRIVZV3pEnAzYhL7cNWhwF23nkuzjpDPENQStYhPM7iFaW0URD4Vui1+vBJWywYommOq78Ydmc8l7TE6QLHniObMdC3sOYGu/bNVrNu7OT/iJ7nQdwduNF6fUyo4fpMlhyXyVjKO4Qzh/KuA5OXX/3j9RihPUT9zEfAphaQZyKtStEPcdBKhjs7wE7uumKjhLPZrXdq4pDfNbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cwo4A8I++6GWu4qnIgr4sFI1WWvIVvxULdDbwE5kMro=;
 b=DjGwRzBYLN/3w/vJtPPL7DvSjDHHzAx6HPWfGaPu8dAlKZ5DvC2B576T874/iQPZ237vSWfQpyNz7b0DumUBVbDu/pN4hhQFsy14Y9tSiyWchV4W3G+hcc/M+/tuWf4z1ktCr6l0worJxymjrie9u47ZKn7Y7oY0Yj1tBf5QYet5GR8Zw32vRb7McN97M5Fw6Zqj08VEuTcNpI5tgCZTSpE/25ATuHWSCVsMSe9csDjPGJgwbXulMCOaUGB9aIUt2CSyBiiEsCdKys+gMzL4jU1TQLvNumz00Rvp48PXo4UfW6TeUP51Z8ezmu8aDuvmxRSfOe2vrvn5qfp4P2vG0Q==
Received: from DS7PR03CA0072.namprd03.prod.outlook.com (2603:10b6:5:3bb::17)
 by BYAPR12MB4759.namprd12.prod.outlook.com (2603:10b6:a03:9d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.16; Fri, 3 Dec
 2021 14:26:49 +0000
Received: from DM6NAM11FT061.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:3bb:cafe::48) by DS7PR03CA0072.outlook.office365.com
 (2603:10b6:5:3bb::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.17 via Frontend
 Transport; Fri, 3 Dec 2021 14:26:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 DM6NAM11FT061.mail.protection.outlook.com (10.13.173.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4755.13 via Frontend Transport; Fri, 3 Dec 2021 14:26:49 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Fri, 3 Dec
 2021 14:26:48 +0000
Received: from yaviefel (172.20.187.5) by rnnvmail201.nvidia.com (10.129.68.8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.986.9; Fri, 3 Dec 2021
 06:26:44 -0800
References: <20211201180208.640179-1-maciej.machnikowski@intel.com>
 <20211201180208.640179-3-maciej.machnikowski@intel.com>
 <Yai/e5jz3NZAg0pm@shredder>
 <MW5PR11MB5812455176BC656BABCFF1B0EA699@MW5PR11MB5812.namprd11.prod.outlook.com>
 <Yaj13pwDKrG78W5Y@shredder>
 <PH0PR11MB583105F8678665253A362797EA699@PH0PR11MB5831.namprd11.prod.outlook.com>
User-agent: mu4e 1.4.15; emacs 27.2
From: Petr Machata <petrm@nvidia.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
In-Reply-To: <PH0PR11MB583105F8678665253A362797EA699@PH0PR11MB5831.namprd11.prod.outlook.com>
Message-ID: <87pmqdojby.fsf@nvidia.com>
Date: Fri, 3 Dec 2021 15:26:41 +0100
MIME-Version: 1.0
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 354394a4-a772-4e1f-53a8-08d9b668f197
X-MS-TrafficTypeDiagnostic: BYAPR12MB4759:
X-Microsoft-Antispam-PRVS: <BYAPR12MB47598227CA9730AEB429B458D66A9@BYAPR12MB4759.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2855B5MnE4f4HMfYJRyAb6xVnhl9GMBbLFesNvujJUhOJJoTWkJDalsKMVZOa5EUtZ+N8BsX+1s8uUQ3ocVm2/434qFHrPhCxYkESrskd6s72lNVSjGQsocBigAlBAf9LG+n/yW5IJKe9qkqTV/9Vn0O0MyJPzVM2oPZK2s0DcdlTg7aTlgo6AOnpg50ocoSUT4P2YV7tQKaPbOObGkz+v7t5IW4D4GVep8y1kiPJ5V6oAp0fY2b5ckuwqL0QAiORv3z7CsfYA5tw0E0HR89d840LvfuAgtyWWcj7BYlemM3qutANstrBR8hu9Alg0dWjQdz4GiR/ZQCoGxUDOSOEf8iyk1gQhBXTSwFI4WJY/2h3X58uvuiWpWpXTqhGE7Gn8BgqbQfljVH6blJC6R3YsdphwYwQgHRn1PXNVhZg9+k85PmoWb8orKp44tY7kztFivoP9nbRfBoGKdtOjQSkXn/1HHyQz7l1jCXZ/pbW/QlJyXd+sjml8OXGEYT966oPsaO8pjCHnRXZu+CQzZbVIyhJhCPlYIWmn5txt7Y/zCPEja47pJGClBFEHy8eycZQNdLDjrHmyExrWfRKedDQpT+DvUdfLjKUyQ+0UaGNUvphTLyRAGzrIuVVpxQOys09a+syyDjNOOsdduA4M6AjFqijeCN/ptdwIQCV2J3v/0VZ0e1B3VEBN1oh8rp3T8EDY7Uj+bLHVlx5+SaYSTVRQ4RSHn474Yx2y4MzVr0IwGwm9HIuSHXqu0QwHOrA6/rAYab6yU6kaDiY9v6ZIWNxA==
X-Forefront-Antispam-Report: CIP:216.228.112.34; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:schybrid03.nvidia.com; CAT:NONE;
 SFS:(4636009)(46966006)(36840700001)(40470700001)(508600001)(4326008)(8676002)(47076005)(2906002)(2616005)(5660300002)(6666004)(426003)(336012)(54906003)(316002)(6916009)(36756003)(7636003)(36860700001)(26005)(8936002)(86362001)(186003)(70586007)(107886003)(16526019)(356005)(83380400001)(40460700001)(70206006)(7416002)(82310400004);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2021 14:26:49.2591 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 354394a4-a772-4e1f-53a8-08d9b668f197
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.112.34];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT061.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB4759
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 2/4] ethtool: Add ability
 to configure recovered clock for SyncE feature
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "petrm@nvidia.com" <petrm@nvidia.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Ido Schimmel <idosch@idosch.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQpNYWNobmlrb3dza2ksIE1hY2llaiA8bWFjaWVqLm1hY2huaWtvd3NraUBpbnRlbC5jb20+IHdy
aXRlczoNCg0KPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+IEZyb206IElkbyBTY2hp
bW1lbCA8aWRvc2NoQGlkb3NjaC5vcmc+DQo+Pg0KPj4gT24gVGh1LCBEZWMgMDIsIDIwMjEgYXQg
MDM6MTc6MDZQTSArMDAwMCwgTWFjaG5pa293c2tpLCBNYWNpZWogd3JvdGU6DQo+PiA+ID4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+ID4gPiBGcm9tOiBJZG8gU2NoaW1tZWwgPGlkb3Nj
aEBpZG9zY2gub3JnPg0KPj4gPiA+DQo+PiA+ID4gT24gV2VkLCBEZWMgMDEsIDIwMjEgYXQgMDc6
MDI6MDZQTSArMDEwMCwgTWFjaWVqIE1hY2huaWtvd3NraSB3cm90ZToNCj4+ID4gPiBMb29raW5n
IGF0IHRoZSBkaWFncmFtIGZyb20gdGhlIHByZXZpb3VzIHN1Ym1pc3Npb24gWzFdOg0KPj4gPiA+
DQo+PiA+ID4gICAgICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSs4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQDQo+PiA+ID4gICAgICAg4pSCIFJYICAgICAgIOKU
giBUWCAgICAgICDilIINCj4+ID4gPiAgIDEgICDilIIgcG9ydHMgICAg4pSCIHBvcnRzICAgIOKU
giAxDQo+PiA+ID4gICDilIDilIDilIDilrrilJzilIDilIDilIDilIDilIDilJAgICAg4pSCICAg
ICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKWug0KPj4gPiA+ICAgMiAgIOKUgiAgICAg4pSCICAg
IOKUgiAgICAgICAgICDilIIgMg0KPj4gPiA+ICAg4pSA4pSA4pSA4pa64pSc4pSA4pSA4pSA4pSQ
IOKUgiAgICDilIIgICAgICAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pa6DQo+PiA+ID4gICAzICAg
4pSCICAg4pSCIOKUgiAgICDilIIgICAgICAgICAg4pSCIDMNCj4+ID4gPiAgIOKUgOKUgOKUgOKW
uuKUnOKUgOKUkCDilIIg4pSCICAgIOKUgiAgICAgICAgICDilJzilIDilIDilIDilIDilIDilroN
Cj4+ID4gPiAgICAgICDilIIg4pa8IOKWvCDilrwgICAg4pSCICAgICAgICAgIOKUgg0KPj4gPiA+
ICAgICAgIOKUgiDilIDilIDilIDilIDilIDilIAgICDilIIgICAgICAgICAg4pSCDQo+PiA+ID4g
ICAgICAg4pSCIFxfX19fLyAgIOKUgiAgICAgICAgICDilIINCj4+ID4gPiAgICAgICDilJTilIDi
lIDilLzilIDilIDilLzilIDilIDilIDilIDilLTilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilJgNCj4+ID4gPiAgICAgICAgIDHilIIgMuKUgiAgICAgICAg4payDQo+PiA+ID4gIFJDTEsg
b3V04pSCICDilIIgICAgICAgIOKUgiBUWCBDTEsgaW4NCj4+ID4gPiAgICAgICAgICDilrwgIOKW
vCAgICAgICAg4pSCDQo+PiA+ID4gICAgICAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUtOKUgOKUgOKUgOKUkA0KPj4gPiA+ICAgICAgICDilIIgICAgICAgICAg
ICAgICAgIOKUgg0KPj4gPiA+ICAgICAgICDilIIgICAgICAgU0VDICAgICAgIOKUgg0KPj4gPiA+
ICAgICAgICDilIIgICAgICAgICAgICAgICAgIOKUgg0KPj4gPiA+ICAgICAgICDilJTilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgNCj4+ID4gPg0K
Pj4gPiA+IEdpdmVuIGEgbmV0ZGV2ICgxLCAyIG9yIDMgaW4gdGhlIGRpYWdyYW0pLCB0aGUgUkNM
S19TRVQgbWVzc2FnZSBhbGxvd3MNCj4+ID4gPiBtZSB0byByZWRpcmVjdCB0aGUgZnJlcXVlbmN5
IHJlY292ZXJlZCBmcm9tIHRoaXMgbmV0ZGV2IHRvIHRoZSBFRUMgdmlhDQo+PiA+ID4gZWl0aGVy
IHBpbiAxLCBwaW4gMiBvciBib3RoLg0KPj4gPiA+DQo+PiA+ID4gR2l2ZW4gYSBuZXRkZXYsIHRo
ZSBSQ0xLX0dFVCBtZXNzYWdlIGFsbG93cyBtZSB0byBxdWVyeSB0aGUgcmFuZ2Ugb2YNCj4+ID4g
PiBwaW5zIChSQ0xLIG91dCAxLTIgaW4gdGhlIGRpYWdyYW0pIHRocm91Z2ggd2hpY2ggdGhlIGZy
ZXF1ZW5jeSBjYW4gYmUNCj4+ID4gPiBmZWQgaW50byB0aGUgRUVDLg0KPj4gPiA+DQo+PiA+ID4g
UXVlc3Rpb25zOg0KPj4gPiA+DQo+PiA+ID4gMS4gVGhlIHF1ZXJ5IGZvciBhbGwgdGhlIGFib3Zl
IG5ldGRldnMgd2lsbCByZXR1cm4gdGhlIHNhbWUgcmFuZ2UNCj4+ID4gPiBvZiBwaW5zLiBIb3cg
ZG9lcyB1c2VyIHNwYWNlIGtub3cgdGhhdCB0aGVzZSBhcmUgdGhlIHNhbWUgcGlucz8NCj4+ID4g
PiBUaGF0IGlzLCBob3cgZG9lcyB1c2VyIHNwYWNlIGtub3cgdGhhdCBSQ0xLX1NFVCBtZXNzYWdl
IHRvDQo+PiA+ID4gcmVkaXJlY3QgdGhlIGZyZXF1ZW5jeSByZWNvdmVyZWQgZnJvbSBuZXRkZXYg
MSB0byBwaW4gMSB3aWxsIGJlDQo+PiA+ID4gb3ZlcnJpZGRlbiBieSB0aGUgc2FtZSBtZXNzYWdl
IGJ1dCBmb3IgbmV0ZGV2IDI/DQo+PiA+DQo+PiA+IFdlIGRvbid0IGhhdmUgYSB3YXkgdG8gZG8g
c28gcmlnaHQgbm93LiBXaGVuIHdlIGhhdmUgRUVDIHN1YnN5c3RlbQ0KPj4gPiBpbiBwbGFjZSB0
aGUgcmlnaHQgdGhpbmcgdG8gZG8gd2lsbCBiZSB0byBhZGQgRUVDIGlucHV0IGluZGV4IGFuZA0K
Pj4gPiBFRUMgaW5kZXggYXMgYWRkaXRpb25hbCBhcmd1bWVudHMNCj4+ID4NCj4+ID4gPiAyLiBI
b3cgZG9lcyB1c2VyIHNwYWNlIGtub3cgdGhlIG1hcHBpbmcgYmV0d2VlbiBhIG5ldGRldiBhbmQg
YW4NCj4+ID4gPiBFRUM/IFRoYXQgaXMsIGhvdyBkb2VzIHVzZXIgc3BhY2Uga25vdyB0aGF0IFJD
TEtfU0VUIG1lc3NhZ2UgZm9yDQo+PiA+ID4gbmV0ZGV2IDEgd2lsbCBjYXVzZSB0aGUgVHggZnJl
cXVlbmN5IG9mIG5ldGRldiAyIHRvIGNoYW5nZQ0KPj4gPiA+IGFjY29yZGluZyB0byB0aGUgZnJl
cXVlbmN5IHJlY292ZXJlZCBmcm9tIG5ldGRldiAxPw0KPj4gPg0KPj4gPiBEaXR0byAtIGN1cnJl
bnRseSB3ZSBkb24ndCBoYXZlIGFueSBlbnRpdHkgdG8gbGluayB0aGUgcGlucyB0byBBVE0sDQo+
PiA+IGJ1dCB3ZSBjYW4gYWRkcmVzcyB0aGF0IGluIHVzZXJzcGFjZSBqdXN0IGxpa2UgUFRQIHBp
bnMgYXJlIHVzZWQNCj4+ID4gbm93DQo+PiA+DQo+PiA+ID4gMy4gSWYgdXNlciBzcGFjZSBzZW5k
cyB0d28gUkNMS19TRVQgbWVzc2FnZXMgdG8gcmVkaXJlY3QgdGhlDQo+PiA+ID4gZnJlcXVlbmN5
IHJlY292ZXJlZCBmcm9tIG5ldGRldiAxIHRvIFJDTEsgb3V0IDEgYW5kIGZyb20gbmV0ZGV2IDIN
Cj4+ID4gPiB0byBSQ0xLIG91dCAyLCBob3cgZG9lcyBpdCBrbm93IHdoaWNoIHJlY292ZXJlZCBm
cmVxdWVuY3kgaXMNCj4+ID4gPiBhY3R1YWxseSB1c2VkIGFuIGlucHV0IHRvIHRoZSBFRUM/DQo+
PiANCj4+IFVzZXIgc3BhY2UgZG9lc24ndCBrbm93IHRoaXMgYXMgd2VsbD8NCj4NCj4gSW4gY3Vy
cmVudCBtb2RlbCBpdCBjYW4gY29tZSBmcm9tIHRoZSBjb25maWcgZmlsZS4gT25jZSB3ZSBpbXBs
ZW1lbnQgRFBMTA0KPiBzdWJzeXN0ZW0gd2UgY2FuIGltcGxlbWVudCBjb25uZWN0aW9uIGJldHdl
ZW4gcGlucyBhbmQgRFBMTHMgaWYgdGhleSBhcmUNCj4ga25vd24uDQo+DQo+PiA+ID4NCj4+ID4g
PiA0LiBXaHkgdGhlc2UgcGlucyBhcmUgcmVwcmVzZW50ZWQgYXMgYXR0cmlidXRlcyBvZiBhIG5l
dGRldiBhbmQgbm90IGFzDQo+PiA+ID4gYXR0cmlidXRlcyBvZiB0aGUgRUVDPyBUaGF0IGlzLCB3
aHkgYXJlIHRoZXkgcmVwcmVzZW50ZWQgYXMgb3V0cHV0IHBpbnMNCj4+ID4gPiBvZiB0aGUgUEhZ
IGFzIG9wcG9zZWQgdG8gaW5wdXQgcGlucyBvZiB0aGUgRUVDPw0KPj4gPg0KPj4gPiBUaGV5IGFy
ZSAyIHNlcGFyYXRlIGJlaW5ncy4gUmVjb3ZlcmVkIGNsb2NrIG91dHB1dHMgYXJlIGNvbnRyb2xs
ZWQNCj4+ID4gc2VwYXJhdGVseSBmcm9tIEVFQyBpbnB1dHMuDQo+PiANCj4+IFNlcGFyYXRlIGhv
dz8gV2hhdCBkb2VzIGl0IG1lYW4gdGhhdCB0aGV5IGFyZSBjb250cm9sbGVkIHNlcGFyYXRlbHk/
IEluDQo+PiB3aGljaCBzZW5zZT8gVGhhdCByZWRpcmVjdGlvbiBvZiByZWNvdmVyZWQgZnJlcXVl
bmN5IHRvIHBpbiBpcw0KPj4gY29udHJvbGxlZCB2aWEgUEhZIHJlZ2lzdGVycyB3aGVyZWFzIHBy
aW9yaXR5IHNldHRpbmcgYmV0d2VlbiBFRUMgaW5wdXRzDQo+PiBpcyBjb250cm9sbGVkIHZpYSBF
RUMgcmVnaXN0ZXJzPyBJZiBzbywgdGhpcyBpcyBhbiBpbXBsZW1lbnRhdGlvbiBkZXRhaWwNCj4+
IG9mIGEgc3BlY2lmaWMgZGVzaWduLiBJdCBpcyBub3Qgb2YgYW55IGltcG9ydGFuY2UgdG8gdXNl
ciBzcGFjZS4NCj4NCj4gVGhleSBiZWxvbmcgdG8gZGlmZmVyZW50IGRldmljZXMuIEVFQyByZWdp
c3RlcnMgYXJlIHBoeXNpY2FsbHkgaW4gdGhlIERQTEwNCj4gaGFuZ2luZyBvdmVyIEkyQyBhbmQg
cmVjb3ZlcmVkIGNsb2NrcyBhcmUgaW4gdGhlIFBIWS9pbnRlZ3JhdGVkIFBIWSBpbg0KPiB0aGUg
TUFDLiBEZXBlbmRpbmcgb24gc3lzdGVtIGFyY2hpdGVjdHVyZSB5b3UgbWF5IGhhdmUgY29udHJv
bCBvdmVyDQo+IG9uZSBwaWVjZSBvbmx5DQoNCldoYXQgZG9lcyBFVEhUT09MX01TR19SQ0xLX1NF
VCBhY3R1YWxseSBjb25maWd1cmUsIHBoeXNpY2FsbHk/IFNheSBJDQpoYXZlIHRoaXMgbWVzc2Fn
ZToNCg0KRVRIVE9PTF9NU0dfUkNMS19TRVQgZGV2ID0gZXRoMA0KLSBFVEhUT09MX0FfUkNMS19P
VVRfUElOX0lEWCA9IG4NCi0gRVRIVE9PTF9BX1JDTEtfUElOX0ZMQUdTIHw9IEVUSFRPT0xfUkNM
S19QSU5fRkxBR1NfRU5BDQoNCkV2ZW50dWFsbHkgdGhpcyBsYW5kcyBpbiBvcHMtPnNldF9yY2xr
X291dChkZXYsIG91dF9pZHgsIG5ld19zdGF0ZSkuDQpXaGF0IGRvZXMgdGhlIE1BQyBkcml2ZXIg
ZG8gbmV4dD8NCg0KPj4gPiBJZiB3ZSBtaXggdGhlbSBpdCdsbCBiZSBoYXJkIHRvIGNvbnRyb2wg
ZXZlcnl0aGluZyBlc3BlY2lhbGx5IHRoYXQgYQ0KPj4gPiBzaW5nbGUgRUVDIGNhbiBzdXBwb3J0
IG11bHRpcGxlIGRldmljZXMuDQo+PiANCj4+IEhhcmQgaG93PyBQbGVhc2UgcHJvdmlkZSBjb25j
cmV0ZSBleGFtcGxlcy4NCj4NCj4gRnJvbSB0aGUgRUVDIHBlcnNwZWN0aXZlIGl0J3Mgb25lIHRv
IG1hbnkgcmVsYXRpb24gLSBvbmUgRUVDIGlucHV0IHBpbiB3aWxsIHNlcnZlDQo+IGV2ZW4gNCwx
Niw0OCBuZXRkZXZzLiBJIGRvbid0IHNlZSBlYXN5IHdheSBvZiBzdGFydGluZyBmcm9tIEVFQyBp
bnB1dCBvZiBFRUMgZGV2aWNlDQo+IGFuZCBmaWd1cmluZyBvdXQgd2hpY2ggbmV0ZGV2cyBhcmUg
Y29ubmVjdGVkIHRvIGl0IHRvIHRhbGsgdG8gdGhlIHJpZ2h0IG9uZS4NCj4gSW4gY3VycmVudCBt
b2RlbCBpdCdzIGFzIHNpbXBsZSBhczoNCj4gLSBJIHJlY2VpdmVkIFFMLVBSQyBvbiBuZXRkZXYg
ZW5zNGYwDQo+IC0gSSBzZW5kIGJhY2sgZW5hYmxlIHJlY292ZXJlZCBjbG9jayBvbiBwaW4gMCBv
ZiB0aGUgZW5zNGYwDQoNCkhvdyBkbyBJIGtub3cgaXQncyBwaW4gMCB0aG91Z2g/IENvbmZpZyBm
aWxlPw0KDQo+IC0gZ28gdG8gRUVDIHRoYXQgd2lsbCBiZSBsaW5rZWQgdG8gaXQNCj4gLSBzZWUg
dGhlIHN0YXRlIG9mIGl0IC0gaWYgaXRzIGxvY2tlZCAtIHJlcG9ydCBRTC1FRUMgZG93bnN0ZWFt
DQo+DQo+IEhvdyB3b3VsZCB5b3UgdGhpcyBjb250cm9sIGxvb2sgaW4gdGhlIEVFQy9EUExMIGlt
cGxlbWVudGF0aW9uPyBNYXliZQ0KPiBJIG1pc3NlZCBzb21ldGhpbmcuDQoNCkluIHRoZSBFRUMt
Y2VudHJpYyBtb2RlbCB0aGlzIGlzIHdoYXQgaGFwcGVuczoNCg0KLSBRTC1QUkMgcGFja2V0IGlz
IHJlY2VpdmVkIG9uIGVuczRmMA0KLSBVc2Vyc3BhY2UgY29uc3VsdHMgYSBVQVBJIHRvIGZpZ3Vy
ZSBvdXQgd2hhdCBFRUMgYW5kIHBpbiBJRCB0aGlzDQogIG5ldGRldmljZSBjb3JyZXNwb25kcyB0
bw0KLSBVc2Vyc3BhY2UgaW5zdHJ1Y3RzIHRocm91Z2ggYSBVQVBJIHRoZSBpbmRpY2F0ZWQgRUVD
IHRvIHVzZSB0aGUNCiAgaW5kaWNhdGVkIHBpbiBhcyBhIHNvdXJjZQ0KLSBVc2Vyc3BhY2UgdGhl
biBtb25pdG9ycyB0aGUgaW5kaWNhdGVkIEVFQyB0aHJvdWdoIGEgVUFQSS4gV2hlbiB0aGUgRUVD
DQogIGxvY2tzLCBRTC1FRUMgaXMgcmVwb3J0ZWQgZG93bnN0cmVhbQ0KDQo+PiBXaGF0IGRvIHlv
dSBtZWFuIGJ5ICJtdWx0aXBsZSBkZXZpY2VzIj8gQSBtdWx0aS1wb3J0IGFkYXB0ZXIgd2l0aCBh
DQo+PiBzaW5nbGUgRUVDIG9yIHNvbWV0aGluZyBlbHNlPw0KPg0KPiBNdWx0aXBsZSBNQUNzIHRo
YXQgdXNlIGEgc2luZ2xlIEVFQyBjbG9jay4NCj4NCj4+ID4gQWxzbyBpZiB3ZSBtYWtlIHRob3Nl
IHBpbnMgYXR0cmlidXRlcyBvZiB0aGUgRUVDIGl0J2xsIGJlY29tZSBleHRyZW1hbGx5IGhhcmQN
Cj4+ID4gdG8gbWFwIHRoZW0gdG8gbmV0ZGV2cyBhbmQgY29udHJvbCB0aGVtIGZyb20gdGhlIHVz
ZXJzcGFjZSBhcHAgdGhhdCB3aWxsDQo+PiA+IHJlY2VpdmUgdGhlIEVTTUMgbWVzc2FnZSB3aXRo
IGEgZ2l2ZW4gUUwgbGV2ZWwgb24gbmV0ZGV2IFguDQo+PiANCj4+IEhhcmQgaG93PyBXaGF0IGlz
IHRoZSBwcm9ibGVtIHdpdGggc29tZXRoaW5nIGxpa2U6DQo+PiANCj4+ICMgZWVjIHNldCBzb3Vy
Y2UgMSB0eXBlIG5ldGRldiBkZXYgc3dwMQ0KPj4gDQo+PiBUaGUgRUVDIG9iamVjdCBzaG91bGQg
YmUgcmVnaXN0ZXJlZCBieSB0aGUgc2FtZSBlbnRpdHkgdGhhdCByZWdpc3RlcnMNCj4+IHRoZSBu
ZXRkZXZzIHdob3NlIFR4IGZyZXF1ZW5jeSBpcyBjb250cm9sbGVkIGJ5IHRoZSBFRUMsIHRoZSBN
QUMgZHJpdmVyLg0KPg0KPiBCdXQgdGhlIEVFQyBvYmplY3QgbWF5IG5vdCBiZSBjb250cm9sbGVk
IGJ5IHRoZSBNQUMgLSBpbiB3aGljaCBjYXNlDQo+IHRoaXMgbW9kZWwgd29uJ3Qgd29yay4NCg0K
SW4gdGhhdCBjYXNlIHRoZSBkcml2ZXIgZm9yIHRoZSBkZXZpY2UgdGhhdCBjb250cm9scyBFRUMg
d291bGQNCmluc3RhbnRpYXRlcyB0aGUgb2JqZWN0LiBJdCBkb2Vzbid0IGhhdmUgdG8gYmUgYSBN
QUMgZHJpdmVyLg0KDQpCdXQgaWYgaXQgaXMgY29udHJvbGxlZCBieSB0aGUgTUFDLCB0aGUgTUFD
IGRyaXZlciBpbnN0YW50aWF0ZXMgaXQuIEFuZA0KY2FuIHNldCB1cCB0aGUgY29ubmVjdGlvbiBi
ZXR3ZWVuIHRoZSBNQUMgYW5kIHRoZSBFRUMsIHNvIHRoYXQgaW4gdGhlDQpzaGVsbCBzbmlwcGV0
IGFib3ZlICJlZWMiIGtub3dzIGhvdyB0byBnZXQgdGhlIEVFQyBoYW5kbGUgZnJvbSB0aGUNCm5l
dGRldmljZS4NCg0KPj4gPg0KPj4gPiA+IDUuIFdoYXQgaXMgdGhlIHByb2JsZW0gd2l0aCB0aGUg
Zm9sbG93aW5nIG1vZGVsPw0KPj4gPiA+DQo+PiA+ID4gLSBUaGUgRUVDIGlzIGEgc2VwYXJhdGUg
b2JqZWN0IHdpdGggZm9sbG93aW5nIGF0dHJpYnV0ZXM6DQo+PiA+ID4gICAqIFN0YXRlOiBJbnZh
bGlkIC8gRnJlZXJ1biAvIExvY2tlZCAvIGV0Yw0KPj4gPiA+ICAgKiBTb3VyY2VzOiBOZXRkZXYg
LyBleHRlcm5hbCAvIGV0Yw0KPj4gPiA+ICAgKiBQb3RlbnRpYWxseSBtb3JlDQo+PiA+ID4NCj4+
ID4gPiAtIE5vdGlmaWNhdGlvbnMgYXJlIGVtaXR0ZWQgdG8gdXNlciBzcGFjZSB3aGVuIHRoZSBz
dGF0ZSBvZiB0aGUgRUVDDQo+PiA+ID4gICBjaGFuZ2VzLiBEcml2ZXJzIHdpbGwgZWl0aGVyIHBv
bGwgdGhlIHN0YXRlIGZyb20gdGhlIGRldmljZSBvciBnZXQNCj4+ID4gPiAgIGludGVycnVwdHMN
Cj4+ID4gPg0KPj4gPiA+IC0gVGhlIG1hcHBpbmcgZnJvbSBuZXRkZXYgdG8gRUVDIGlzIHF1ZXJp
ZWQgdmlhIGV0aHRvb2wNCj4+ID4NCj4+ID4gWWVwIC0gdGhhdCB3aWxsIGJlIHBhcnQgb2YgdGhl
IEVFQyAoRFBMTCkgc3Vic3lzdGVtDQo+Pg0KPj4gVGhpcyBtb2RlbCBhdm9pZHMgYWxsIHRoZSBw
cm9ibGVtcyBJIHBvaW50ZWQgb3V0IGluIHRoZSBjdXJyZW50DQo+PiBwcm9wb3NhbC4NCj4NCj4g
VGhhdCdzIHRoZSBnby10byBtb2RlbCwgYnV0IGZpcnN0IHdlIG5lZWQgY29udHJvbCBvdmVyIHRo
ZSBzb3VyY2UgYXMNCj4gd2VsbCA6KQ0KDQpXaHkgaXMgdGhhdD8gQ2FuIHlvdSBpbGx1c3RyYXRl
IGEgY2FzZSB0aGF0IGJyZWFrcyB3aXRoIHRoZSBhYm92ZSBtb2RlbD8NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
