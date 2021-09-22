Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE89E414B75
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Sep 2021 16:12:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81A2A83F85;
	Wed, 22 Sep 2021 14:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bLtrDMB41RQD; Wed, 22 Sep 2021 14:12:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45EF883F18;
	Wed, 22 Sep 2021 14:12:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B91F41BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 14:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B436D81C71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 14:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HbF9TNd0Uu4d for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Sep 2021 14:10:27 +0000 (UTC)
X-Greylist: delayed 00:14:08 by SQLgrey-1.8.0
Received: from mail1.bemta23.messagelabs.com (mail1.bemta23.messagelabs.com
 [67.219.246.1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B1BB081B35
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 14:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1632318978; i=@lenovo.com;
 bh=Vk4wIp0b3NQ3CzFQw2e0mQG/GPUpKWs9POXczsM280I=;
 h=Message-ID:Date:MIME-Version:Subject:To:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=Yqm4P0TH4MEIRn3nFeqZLkS4YHXM1bKNfj/Q5GfimGuEkr6FKgvVl4h++PEPM8Wy2
 44tDLw6bQCB96rkU6wLxpjmGFWAbJAb5NrzgmmffxdohCe4/JVC6AmcZwkSZrnBa1s
 1S4RQX96JiWYtcpN/DwYD7Y3DtgRA19htrnZBtfo+k9kz9mVbyJCsPvVNAvs+qGylO
 87+GjeBSQRj3QUgq3wit+wqS6UNgqxj62xKHorPzY3PhxlcWpGKSGZv9Oge26v9sYP
 VrAiR4+hdkbYpgQlCRDpql5xw+P7NtNB73Wvf+SmGweIxNDpiEMemi4hclWg1Ku3kq
 Sc4bPOfCYkvsg==
Received: from [100.112.3.236] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-1.bemta.az-b.us-east-1.aws.symcld.net id 2F/AE-00329-2063B416;
 Wed, 22 Sep 2021 13:56:18 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCJsWRWlGSWpSXmKPExsWSoV9jrcto5p1
 ocO6ZocX/W79ZLf51L2Oz2P1zMqMDs8eshl42j8V7XjJ5nGwuDWCOYs3MS8qvSGDNONJ7haXg
 pm3FmpUhDYzrzLsYuTgYBZYyS1y/PpWli5ETyFnJInHudBqE3cEk8fG4HUiRkMBsJombWzYzQ
 zj7mSSmfTrPBuJICNxjlLg7Yw0LRKaTUWL31h9sEM4kJok1zZdZIZwnjBI7/p1lh3AeMUr0Lu
 kAW8krYCuxbO4BVhCbRUBV4ufuCVBxQYmTM5+A2aIC4RIdT9eB1QgLuEisfXMSLM4sIC5x68l
 8pi5GDg4RgVyJzv02IGEhgXyJE3cXgpWzCWhLbNnyiw3E5gRadWraKVaIVguJxW8OskPY8hLN
 W2czQ/QqS/zqPw9mSwgoSLxoPMgGYSdI9Px7BGVLSly7eYEdwpaVOHp2DguE7Svx589GVghbS
 +LFkn6oOTkSl9vboeJqEq13HkDF5SRO9Z5jmsCoOwvJx7OQfDYLyamzkJy6gJFlFaNpUlFmek
 ZJbmJmjq6hgYGuoaGRrrGuuYVeYpVukl5psW5qYnGJrqFeYnmxXnFlbnJOil5easkmRmACSil
 g9tvBuOjNB71DjJIcTEqivEJXvBKF+JLyUyozEosz4otKc1KLDzHKcHAoSfCymHgnCgkWpaan
 VqRl5gCTIUxagoNHSYR3qS5Qmre4IDG3ODMdInWKUZdjwsu5i5iFWPLy81KlxHm/gswQACnKK
 M2DGwFLzJcYZaWEeRkZGBiEeApSi3IzS1DlXzGKczAqCfN+A5nCk5lXArfpFdARTEBH8K/0AD
 miJBEhJdXApO0yueGZYeWvssNxGs2epaW71z04smahrn2CZJLw68mTnm+ZXCB3O1Uqc7V04O9
 lH+ZKGRXdFViQleyu32XOciSFt8h8g6uGG++beyfkegQ8wzY/TV06W+91kW16tcCfU6fUOoqj
 O6fYyc52f3X7j7fxfH1//TtTLj58Ptn8QOu2Qp3clXLMXxfe2dVpbzx9gzqfeExa+/7wyiirw
 1ufZf34dkyyKS16lZVzTEU1h8bVeWu0jlVVmzht/XYwxk0wyjNO7q6EH9fZxLSi9akMN967f9
 ZebRYWqJ83s67ovOj+M1ZB535/ydbbMeFBqJdGcatx6c48c2vt2VGHE/v4221mpndNuhofvMj
 m2QYlluKMREMt5qLiRACBAAUDRwQAAA==
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-11.tower-395.messagelabs.com!1632318976!128022!1
X-Originating-IP: [104.47.124.59]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.4; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 23396 invoked from network); 22 Sep 2021 13:56:17 -0000
Received: from mail-hk2apc01lp2059.outbound.protection.outlook.com (HELO
 APC01-HK2-obe.outbound.protection.outlook.com) (104.47.124.59)
 by server-11.tower-395.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 22 Sep 2021 13:56:17 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sdc67ZTXcDUR9yjemLzLE3MCyGUlFtgq+GUMn6mfuvg4tnXoBtGli293zYsr5/eTLfq+0d9bxhRL4SvAZbgYnviaiF6NMT/a0IBRsYlcsbulthN2BlfJc0xbXIKQwHaNz7VG2XSM9P/DxoewACKka9ySrR5qfuPN4HKMK1vyMVO3QO199Ta3efmfibxOKRp+NWYTtAIzaXPsmKetSUn8IEx/wVJOMxh1aGabADhNNknO8Cs8P66KB3tGJZ/PMlfqdbGh7Y3CAJ1eDXJtOZEd/WATKzaRid8pyodnvC6OT6vTwGh+yf63zN4MyIBjMyJEoMUdKzZniI9j+yd5zZ+Xjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=Vk4wIp0b3NQ3CzFQw2e0mQG/GPUpKWs9POXczsM280I=;
 b=BS5WPKwfrzoJxUVLjJ3mOXdYmdn2LNVmWdjB84NWBK6ay+nJJVypn14zLfdMKSYFkAnhC7LhxT/60emCBZOhjsGuzvi0hvjqNczyohj4XDbiCLc7zeF1t4zYT7v1SsXk3NMlU9DwugPmypd8vnh+pmxUlN3kOII0GvZO6XnMMAUcab1pZibJVL3O4ZlhE1DnsEYt7Zr663YwxzsWyh75ggrm4iWfNIcARinvS1cvdEWCYvgD2NbkCppG0+8+LEs/NxT/RPZMt3uBv2I5IUB2qd8EZLsUeMhaPXVqA85CvoTafZMU2eVY5sw0Te0vUknWADv5CV3WQmfMJ/jEIkXFMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.6) smtp.rcpttodomain=intel.com smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from SG2PR06CA0247.apcprd06.prod.outlook.com (2603:1096:4:ac::31) by
 HK0PR03MB3251.apcprd03.prod.outlook.com (2603:1096:203:5f::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.6; Wed, 22 Sep 2021 13:56:15 +0000
Received: from SG2APC01FT133.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:ac:cafe::e6) by SG2PR06CA0247.outlook.office365.com
 (2603:1096:4:ac::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13 via Frontend
 Transport; Wed, 22 Sep 2021 13:56:15 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.6) smtp.mailfrom=lenovo.com; intel.com; dkim=none (message not
 signed) header.d=none;intel.com; dmarc=fail action=none
 header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.6 as permitted sender)
Received: from mail.lenovo.com (104.232.225.6) by
 SG2APC01FT133.mail.protection.outlook.com (10.152.250.191) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.13 via Frontend Transport; Wed, 22 Sep 2021 13:56:14 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.12; Wed, 22 Sep
 2021 09:56:09 -0400
Received: from [10.38.48.185] (10.38.48.185) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.12; Wed, 22 Sep
 2021 09:56:09 -0400
Message-ID: <5ebbbb42-f692-e1d5-97ef-8cb076449588@lenovo.com>
Date: Wed, 22 Sep 2021 09:56:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, <intel-wired-lan@lists.osuosl.org>, 
 <kai.heng.feng@canonical.com>
References: <20210922065449.3780338-1-sasha.neftin@intel.com>
 <c6299a3e-61fc-8d6e-7023-10bc10e8483b@intel.com>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <c6299a3e-61fc-8d6e-7023-10bc10e8483b@intel.com>
X-Originating-IP: [10.38.48.185]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 77cdac7b-09e2-4ac9-a815-08d97dd0be40
X-MS-TrafficTypeDiagnostic: HK0PR03MB3251:
X-Microsoft-Antispam-PRVS: <HK0PR03MB32519553FE2A8F3F617E8834C5A29@HK0PR03MB3251.apcprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1265;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8JueyVdheLzf+Q1xkDQXydu21CGI8K8Kt0/Idpdv9Js1KM7A2cXAXqjkWkQM7hr+E1CkT2aEUweOztGtvrPWEzKN1WQ+iAqHyLzGcN2HGQ/DQoyRrksSymUFwCaL1oZtqpFWUfY2E3Ffr5ou2aqWNyLtK4X3bhwZoBY5iODHIaLRQh9Q2aa4Hqwm7dfZkBE6KmRTjUyP0+2FYGCHRClj4jRIvjwFvUiMoik73nn7tsq0TBxxAJXeAQODX8ucKkjvmuJLUCkLAi6GuykGhopkCfockMizNIkpLw+Zz7cw1XKzj8B+SfcMO3BtkL4QnWVknQ0yCRBP0JX4j/0tqorZzo+/b7GYF42sW5un4t4tSvA6kQ/lEz3KTz728kUwL514lhh7rKAw4kPbWisGvlJVqifbfCrCjiUIkNPWzu79fsBp0LeCV1XOFIIxpg7ulyfYCPN0Zo2kA9qtg5lpnBu0s3udMMQWnOoMUXk+rLq780QuIKISVxcH1iYmmnZFXWy7ZG6VlCOcB+/77zVXIWBkdqRPUORIHk+hGd448MkBDBsO5onw1WDDMXOjqbSi1fyusuS2U6UA5C60TtSibCwSUhhhkQddgBHMsCRa7+GC0rUjX41J9MDSoMYvkwbzzR6I14gKqmWfL38abx1jNmtQz0ipLwSHFNfXFsistssZwhuhYlTSSdbEN3iCSLsSgVuyDnrzmnEVgdoW096H83x2pi1Hvu5aXtZlbxzPNjJMhlYFRnXz25HNsj5BJyEXFSlUbWDqQeqSF57TC88V2Mg0z+So33LDAXkyEEZ/V4GMk14=
X-Forefront-Antispam-Report: CIP:104.232.225.6; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(46966006)(36840700001)(31686004)(83380400001)(508600001)(336012)(81166007)(426003)(53546011)(5660300002)(82310400003)(70206006)(70586007)(2906002)(2616005)(36756003)(86362001)(356005)(8936002)(316002)(26005)(47076005)(8676002)(16576012)(186003)(110136005)(36860700001)(36906005)(16526019)(31696002)(3940600001)(43740500002)(36900700001);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2021 13:56:14.2793 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 77cdac7b-09e2-4ac9-a815-08d97dd0be40
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.6];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT133.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR03MB3251
X-Mailman-Approved-At: Wed, 22 Sep 2021 14:12:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH v1 1/2] e1000e: Separate TGP board
 type from SPT
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmtzIFNhc2hhLAoKQ29uZmlybWVkIHRoaXMgZml4ZXMgdGhlIHByb2JsZW0gb24gbXkgWDEz
IEcyCgpUZXN0ZWQtYnk6IE1hcmsgUGVhcnNvbiA8bWFya3BlYXJzb25AbGVub3ZvLmNvbT4KCk1h
cmsKCk9uIDIwMjEtMDktMjIgMDk6MjgsIFNhc2hhIE5lZnRpbiB3cm90ZToKPiAKPiAKPiAKPiAt
LS0tLS0tLSBGb3J3YXJkZWQgTWVzc2FnZSAtLS0tLS0tLQo+IFN1YmplY3Q6IFtQQVRDSCB2MSAx
LzJdIGUxMDAwZTogU2VwYXJhdGUgVEdQIGJvYXJkIHR5cGUgZnJvbSBTUFQKPiBEYXRlOiBXZWQs
IDIyIFNlcCAyMDIxIDA5OjU0OjQ5ICswMzAwCj4gRnJvbTogU2FzaGEgTmVmdGluIDxzYXNoYS5u
ZWZ0aW5AaW50ZWwuY29tPgo+IFRvOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZwo+
IENDOiBTYXNoYSBOZWZ0aW4gPHNhc2hhLm5lZnRpbkBpbnRlbC5jb20+LCBLYWktSGVuZyBGZW5n
IAo+IDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+Cj4gCj4gV2UgaGF2ZSBhIHNhbWUgTEFO
IGNvbnRyb2xsZXIgb24gZGlmZmVyZW50IFBDSC4KPiBTZXBhcmF0ZSBUR1AgYm9hcmQgdHlwZSBm
cm9tIFNQVCB3aWxsIGFsbGxvdyBhcHBseSBzcGVjaWZpYyBmaXhlcwo+IGZvciBUR1AgcGxhdGZv
cm1zLgo+IAo+IFN1Z2dlc3RlZC1ieTogS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5v
bmljYWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGlu
dGVsLmNvbT4KPiAtLS0KPiAgwqBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvZTEw
MDAuaMKgwqAgfMKgIDQgKy0KPiAgwqBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
aWNoOGxhbi5jIHwgMjAgKysrKysrKysrCj4gIMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL25ldGRldi5jwqAgfCA0NSArKysrKysrKysrKy0tLS0tLS0tLS0KPiAgwqAzIGZpbGVz
IGNoYW5nZWQsIDQ2IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvZTEwMDAuaCAKPiBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9lMTAwMC5oCj4gaW5kZXggZjM0MjQyNTViZDJi
Li5jM2RlZjBlZTc3ODggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL2UxMDAwLmgKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
ZTEwMDAuaAo+IEBAIC0xMTQsNyArMTE0LDggQEAgZW51bSBlMTAwMF9ib2FyZHMgewo+ICDCoMKg
wqDCoCBib2FyZF9wY2gybGFuLAo+ICDCoMKgwqDCoCBib2FyZF9wY2hfbHB0LAo+ICDCoMKgwqDC
oCBib2FyZF9wY2hfc3B0LAo+IC3CoMKgwqAgYm9hcmRfcGNoX2NucAo+ICvCoMKgwqAgYm9hcmRf
cGNoX2NucCwKPiArwqDCoMKgIGJvYXJkX3BjaF90Z3AKPiAgwqB9Owo+ICDCoCBzdHJ1Y3QgZTEw
MDBfcHNfcGFnZSB7Cj4gQEAgLTUwMCw2ICs1MDEsNyBAQCBleHRlcm4gY29uc3Qgc3RydWN0IGUx
MDAwX2luZm8gZTEwMDBfcGNoMl9pbmZvOwo+ICDCoGV4dGVybiBjb25zdCBzdHJ1Y3QgZTEwMDBf
aW5mbyBlMTAwMF9wY2hfbHB0X2luZm87Cj4gIMKgZXh0ZXJuIGNvbnN0IHN0cnVjdCBlMTAwMF9p
bmZvIGUxMDAwX3BjaF9zcHRfaW5mbzsKPiAgwqBleHRlcm4gY29uc3Qgc3RydWN0IGUxMDAwX2lu
Zm8gZTEwMDBfcGNoX2NucF9pbmZvOwo+ICtleHRlcm4gY29uc3Qgc3RydWN0IGUxMDAwX2luZm8g
ZTEwMDBfcGNoX3RncF9pbmZvOwo+ICDCoGV4dGVybiBjb25zdCBzdHJ1Y3QgZTEwMDBfaW5mbyBl
MTAwMF9lczJfaW5mbzsKPiAgwqAgdm9pZCBlMTAwMGVfcHRwX2luaXQoc3RydWN0IGUxMDAwX2Fk
YXB0ZXIgKmFkYXB0ZXIpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9lMTAwMGUvaWNoOGxhbi5jIAo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L2ljaDhsYW4uYwo+IGluZGV4IDYwYzU4MmExNjgyMS4uNjZkNzE5NjMxMGUyIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4gQEAgLTU5OTIsMyAr
NTk5MiwyMyBAQCBjb25zdCBzdHJ1Y3QgZTEwMDBfaW5mbyBlMTAwMF9wY2hfY25wX2luZm8gPSB7
Cj4gIMKgwqDCoMKgIC5waHlfb3BzwqDCoMKgwqDCoMKgwqAgPSAmaWNoOF9waHlfb3BzLAo+ICDC
oMKgwqDCoCAubnZtX29wc8KgwqDCoMKgwqDCoMKgID0gJnNwdF9udm1fb3BzLAo+ICDCoH07Cj4g
Kwo+ICtjb25zdCBzdHJ1Y3QgZTEwMDBfaW5mbyBlMTAwMF9wY2hfdGdwX2luZm8gPSB7Cj4gK8Kg
wqDCoCAubWFjwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA9IGUxMDAwX3BjaF90Z3AsCj4gK8KgwqDC
oCAuZmxhZ3PCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID0gRkxBR19JU19JQ0gKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IEZMQUdfSEFTX1dPTAo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgRkxBR19IQVNfSFdfVElNRVNUQU1QCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCBGTEFHX0hBU19DVFJMRVhUX09OX0xPQUQKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IEZMQUdfSEFTX0FNVAo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgRkxBR19IQVNfRkxBU0gKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IEZMQUdfSEFTX0pVTUJPX0ZSQU1FUwo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgRkxBR19BUE1FX0lOX1dVQywKPiAr
wqDCoMKgIC5mbGFnczLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID0gRkxBRzJfSEFTX1BIWV9TVEFU
Uwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgRkxBRzJfSEFTX0VFRSwK
PiArwqDCoMKgIC5wYmHCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID0gMjYsCj4gK8KgwqDCoCAubWF4
X2h3X2ZyYW1lX3NpemXCoMKgwqAgPSA5MDIyLAo+ICvCoMKgwqAgLmdldF92YXJpYW50c8KgwqDC
oMKgwqDCoMKgID0gZTEwMDBfZ2V0X3ZhcmlhbnRzX2ljaDhsYW4sCj4gK8KgwqDCoCAubWFjX29w
c8KgwqDCoMKgwqDCoMKgID0gJmljaDhfbWFjX29wcywKPiArwqDCoMKgIC5waHlfb3BzwqDCoMKg
wqDCoMKgwqAgPSAmaWNoOF9waHlfb3BzLAo+ICvCoMKgwqAgLm52bV9vcHPCoMKgwqDCoMKgwqDC
oCA9ICZzcHRfbnZtX29wcywKPiArfTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIAo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL25ldGRldi5jCj4gaW5kZXggOTAwYjNhYjk5OGJkLi5lYmNiMmEzMGFkZDAgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gQEAgLTUxLDYg
KzUxLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBlMTAwMF9pbmZvICplMTAwMF9pbmZvX3RibFtd
ID0gewo+ICDCoMKgwqDCoCBbYm9hcmRfcGNoX2xwdF3CoMKgwqDCoMKgwqDCoCA9ICZlMTAwMF9w
Y2hfbHB0X2luZm8sCj4gIMKgwqDCoMKgIFtib2FyZF9wY2hfc3B0XcKgwqDCoMKgwqDCoMKgID0g
JmUxMDAwX3BjaF9zcHRfaW5mbywKPiAgwqDCoMKgwqAgW2JvYXJkX3BjaF9jbnBdwqDCoMKgwqDC
oMKgwqAgPSAmZTEwMDBfcGNoX2NucF9pbmZvLAo+ICvCoMKgwqAgW2JvYXJkX3BjaF90Z3BdwqDC
oMKgwqDCoMKgwqAgPSAmZTEwMDBfcGNoX3RncF9pbmZvLAo+ICDCoH07Cj4gIMKgIHN0cnVjdCBl
MTAwMF9yZWdfaW5mbyB7Cj4gQEAgLTc4OTYsMjggKzc4OTcsMjggQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBwY2lfZGV2aWNlX2lkIAo+IGUxMDAwX3BjaV90YmxbXSA9IHsKPiAgwqDCoMKgwqAgeyBQ
Q0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9WMTEpLCBib2FyZF9w
Y2hfY25wIH0sCj4gIMKgwqDCoMKgIHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9Q
Q0hfQ01QX0kyMTlfTE0xMiksIAo+IGJvYXJkX3BjaF9zcHQgfSwKPiAgwqDCoMKgwqAgeyBQQ0lf
VkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9WMTIpLCBib2FyZF9wY2hf
c3B0IH0sCj4gLcKgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX1RH
UF9JMjE5X0xNMTMpLCBib2FyZF9wY2hfY25wIH0sCj4gLcKgwqDCoCB7IFBDSV9WREVWSUNFKElO
VEVMLCBFMTAwMF9ERVZfSURfUENIX1RHUF9JMjE5X1YxMyksIGJvYXJkX3BjaF9jbnAgfSwKPiAt
wqDCoMKgIHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9QQ0hfVEdQX0kyMTlfTE0x
NCksIGJvYXJkX3BjaF9jbnAgfSwKPiAtwqDCoMKgIHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAw
X0RFVl9JRF9QQ0hfVEdQX0kyMTlfVjE0KSwgYm9hcmRfcGNoX2NucCB9LAo+IC3CoMKgwqAgeyBQ
Q0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9UR1BfSTIxOV9MTTE1KSwgYm9hcmRf
cGNoX2NucCB9LAo+IC3CoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BD
SF9UR1BfSTIxOV9WMTUpLCBib2FyZF9wY2hfY25wIH0sCj4gLcKgwqDCoCB7IFBDSV9WREVWSUNF
KElOVEVMLCBFMTAwMF9ERVZfSURfUENIX1JQTF9JMjE5X0xNMjMpLCBib2FyZF9wY2hfY25wIH0s
Cj4gLcKgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX1JQTF9JMjE5
X1YyMyksIGJvYXJkX3BjaF9jbnAgfSwKPiAtwqDCoMKgIHsgUENJX1ZERVZJQ0UoSU5URUwsIEUx
MDAwX0RFVl9JRF9QQ0hfQURQX0kyMTlfTE0xNiksIGJvYXJkX3BjaF9jbnAgfSwKPiAtwqDCoMKg
IHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9QQ0hfQURQX0kyMTlfVjE2KSwgYm9h
cmRfcGNoX2NucCB9LAo+IC3CoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lE
X1BDSF9BRFBfSTIxOV9MTTE3KSwgYm9hcmRfcGNoX2NucCB9LAo+IC3CoMKgwqAgeyBQQ0lfVkRF
VklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9BRFBfSTIxOV9WMTcpLCBib2FyZF9wY2hfY25w
IH0sCj4gLcKgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX1JQTF9J
MjE5X0xNMjIpLCBib2FyZF9wY2hfY25wIH0sCj4gLcKgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVM
LCBFMTAwMF9ERVZfSURfUENIX1JQTF9JMjE5X1YyMiksIGJvYXJkX3BjaF9jbnAgfSwKPiAtwqDC
oMKgIHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9QQ0hfTVRQX0kyMTlfTE0xOCks
IGJvYXJkX3BjaF9jbnAgfSwKPiAtwqDCoMKgIHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RF
Vl9JRF9QQ0hfTVRQX0kyMTlfVjE4KSwgYm9hcmRfcGNoX2NucCB9LAo+IC3CoMKgwqAgeyBQQ0lf
VkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9NVFBfSTIxOV9MTTE5KSwgYm9hcmRfcGNo
X2NucCB9LAo+IC3CoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9N
VFBfSTIxOV9WMTkpLCBib2FyZF9wY2hfY25wIH0sCj4gLcKgwqDCoCB7IFBDSV9WREVWSUNFKElO
VEVMLCBFMTAwMF9ERVZfSURfUENIX0xOUF9JMjE5X0xNMjApLCBib2FyZF9wY2hfY25wIH0sCj4g
LcKgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX0xOUF9JMjE5X1Yy
MCksIGJvYXJkX3BjaF9jbnAgfSwKPiAtwqDCoMKgIHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAw
X0RFVl9JRF9QQ0hfTE5QX0kyMTlfTE0yMSksIGJvYXJkX3BjaF9jbnAgfSwKPiAtwqDCoMKgIHsg
UENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9QQ0hfTE5QX0kyMTlfVjIxKSwgYm9hcmRf
cGNoX2NucCB9LAo+ICvCoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BD
SF9UR1BfSTIxOV9MTTEzKSwgYm9hcmRfcGNoX3RncCB9LAo+ICvCoMKgwqAgeyBQQ0lfVkRFVklD
RShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9UR1BfSTIxOV9WMTMpLCBib2FyZF9wY2hfdGdwIH0s
Cj4gK8KgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX1RHUF9JMjE5
X0xNMTQpLCBib2FyZF9wY2hfdGdwIH0sCj4gK8KgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBF
MTAwMF9ERVZfSURfUENIX1RHUF9JMjE5X1YxNCksIGJvYXJkX3BjaF90Z3AgfSwKPiArwqDCoMKg
IHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9QQ0hfVEdQX0kyMTlfTE0xNSksIGJv
YXJkX3BjaF90Z3AgfSwKPiArwqDCoMKgIHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9J
RF9QQ0hfVEdQX0kyMTlfVjE1KSwgYm9hcmRfcGNoX3RncCB9LAo+ICvCoMKgwqAgeyBQQ0lfVkRF
VklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9SUExfSTIxOV9MTTIzKSwgYm9hcmRfcGNoX3Rn
cCB9LAo+ICvCoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9SUExf
STIxOV9WMjMpLCBib2FyZF9wY2hfdGdwIH0sCj4gK8KgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVM
LCBFMTAwMF9ERVZfSURfUENIX0FEUF9JMjE5X0xNMTYpLCBib2FyZF9wY2hfdGdwIH0sCj4gK8Kg
wqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX0FEUF9JMjE5X1YxNiks
IGJvYXJkX3BjaF90Z3AgfSwKPiArwqDCoMKgIHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RF
Vl9JRF9QQ0hfQURQX0kyMTlfTE0xNyksIGJvYXJkX3BjaF90Z3AgfSwKPiArwqDCoMKgIHsgUENJ
X1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9QQ0hfQURQX0kyMTlfVjE3KSwgYm9hcmRfcGNo
X3RncCB9LAo+ICvCoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9S
UExfSTIxOV9MTTIyKSwgYm9hcmRfcGNoX3RncCB9LAo+ICvCoMKgwqAgeyBQQ0lfVkRFVklDRShJ
TlRFTCwgRTEwMDBfREVWX0lEX1BDSF9SUExfSTIxOV9WMjIpLCBib2FyZF9wY2hfdGdwIH0sCj4g
K8KgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX01UUF9JMjE5X0xN
MTgpLCBib2FyZF9wY2hfdGdwIH0sCj4gK8KgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAw
MF9ERVZfSURfUENIX01UUF9JMjE5X1YxOCksIGJvYXJkX3BjaF90Z3AgfSwKPiArwqDCoMKgIHsg
UENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9QQ0hfTVRQX0kyMTlfTE0xOSksIGJvYXJk
X3BjaF90Z3AgfSwKPiArwqDCoMKgIHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9Q
Q0hfTVRQX0kyMTlfVjE5KSwgYm9hcmRfcGNoX3RncCB9LAo+ICvCoMKgwqAgeyBQQ0lfVkRFVklD
RShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9MTlBfSTIxOV9MTTIwKSwgYm9hcmRfcGNoX3RncCB9
LAo+ICvCoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9MTlBfSTIx
OV9WMjApLCBib2FyZF9wY2hfdGdwIH0sCj4gK8KgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBF
MTAwMF9ERVZfSURfUENIX0xOUF9JMjE5X0xNMjEpLCBib2FyZF9wY2hfdGdwIH0sCj4gK8KgwqDC
oCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX0xOUF9JMjE5X1YyMSksIGJv
YXJkX3BjaF90Z3AgfSwKPiAgwqDCoMKgwqDCoCB7IDAsIDAsIDAsIDAsIDAsIDAsIDAgfcKgwqDC
oCAvKiB0ZXJtaW5hdGUgbGlzdCAqLwo+ICDCoH07Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
