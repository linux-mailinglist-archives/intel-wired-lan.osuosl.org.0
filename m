Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5925D3FEBE0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Sep 2021 12:10:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5AD9406DE;
	Thu,  2 Sep 2021 10:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qUafGIoOYTLu; Thu,  2 Sep 2021 10:10:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F6E3406D6;
	Thu,  2 Sep 2021 10:10:19 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 423311BF276
 for <intel-wired-lan@osuosl.org>; Thu,  2 Sep 2021 10:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FC9180D6A
 for <intel-wired-lan@osuosl.org>; Thu,  2 Sep 2021 10:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=neusta.de header.b="iGdH+/L1";
 dkim=pass (1024-bit key) header.d=teamneusta.onmicrosoft.com
 header.b="NjAzMu3W"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uLftv9YXSKFx for <intel-wired-lan@osuosl.org>;
 Thu,  2 Sep 2021 10:10:10 +0000 (UTC)
X-Greylist: delayed 00:08:51 by SQLgrey-1.8.0
Received: from smtp-relay-out-s1.neusta.de (smtp-s1.neusta.de [82.198.213.163])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C781980DEF
 for <intel-wired-lan@osuosl.org>; Thu,  2 Sep 2021 10:10:09 +0000 (UTC)
Received: from lxvm163-62.prod-s1-nsd.neusta.de (localhost.localdomain
 [127.0.0.1])
 by smtp-relay-out-s1.neusta.de (Proxmox) with ESMTP id 923B4A175B;
 Thu,  2 Sep 2021 12:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=neusta.de; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :from:from:message-id:mime-version:reply-to:subject:subject:to
 :to; s=20200720; bh=7LdpGy8zAK5V5GweLIveNgDj1qhHDUFoOXNTZurLmGo=; b=
 iGdH+/L14/KLR4OnExdOsq9PUKY+E5DF/oWEt89XNAk8X5CsQLdplpA0jsE5qCTh
 StL0M28alKBe+n7JdFiwIvwjRncwyWqQZPttMLBIroQHW7ygqpsofPzI9PVftETh
 2cKtnIKabDQcSqRYgaz/He7qRbnNXtkwN+TDeI4GP2y1byGNRkYFoeoKAsgI9loM
 aUliFzBE33Xg/xSo//0c72Rgbq5xNjIAUrJlJ+6q82btibqbMsN2I37Vz5fDX2pK
 sZt1vC1P2SPitA/0RzAbtfzA8h45dhHb8+irfy0x/dcQ48cO3iGJCTtaG0jCSl2a
 1Vrq4nT5+SJdPR8s42Mp4g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PW9niShKIs3DCRcYqZqqVy4bf8kAvgGCtvD09fSxAsYLzWAVbHKLqA05u2yeYIaCUP8Zs6TeTKmOaPvtQcJ32zWupm/uh/wyP168LTgxc1R0KcCHXP36/jM3V/rVT01HV0ftSmvFfSHp4yFb7bYTXw0DN4d+xIKMGnr5b3cWiancZ7ugKf71vUy9VbjYWA2ThbXSiNfSktc8ZIfcWgeGLhv8wl1FTjcJCLA3Gwy/IIdUVCkXaKF4vxsBv3BzONoOyQTdBvQg9uL+EWiczEsG10ye/ZM54/c4yksewgrvBl5u2gk0GFrWFaBxaOzQPXQb1CSenLRTR0Mhria0eMrNXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=7LdpGy8zAK5V5GweLIveNgDj1qhHDUFoOXNTZurLmGo=;
 b=ctuCe4+L66SlrLOagPgqMuP4KVILfBL4N+txtm4Ag+Rah+7ZKua9Wk5W/87mNFKdIvbdDtKpr5c+7RtQOplLsYGrjsfnZplPzD34JsgfDXT8d5iY+Q12sLfh3y3PsQ4xI0D9p9yJpq2xPZseD/XHaKatrwjSXcaSYmptdUpRl1Bz1XVPvDL1W0KBwINJkLnl85pWS21urtIE6EqYn/VVVJCDVRfx/XXl07cnT/4DeX1sagnKfSmjF/lgElHeaAxj+uW64NIyvT91KcgLg4Pk/KG67orzu2UBH8R4VkExvmvM2BquBtFJUrR2IKpEFXoyF9z0nJ2BNpPiPWHqQ4kl+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=neusta.de; dmarc=pass action=none header.from=neusta.de;
 dkim=pass header.d=neusta.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=teamneusta.onmicrosoft.com; s=selector2-teamneusta-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7LdpGy8zAK5V5GweLIveNgDj1qhHDUFoOXNTZurLmGo=;
 b=NjAzMu3WkU7yRHFUjdnBRo068l0rCQzx1AUiOFJjxlW7KkfeEuZLcjv7HpvSzhStk284+jpzecyGX68zwEJjAeNE1n5rUm6knCKT4UXoRUWk/6gVbhmSfCf8YpOjNdsk3GJ6RRLDTMaKYJ3c1nc5fenm4P0kFDCN0FwUW86iWFU=
Authentication-Results: canonical.com; dkim=none (message not signed)
 header.d=none;canonical.com; dmarc=none action=none header.from=neusta.de;
To: <intel-wired-lan@osuosl.org>
From: Marco Witte <m.witte@neusta.de>
Message-ID: <0c8eb89c-4a55-d977-312f-6856ea5b59ba@neusta.de>
Date: Thu, 2 Sep 2021 12:01:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Content-Language: en-US
X-ClientProxiedBy: PR0P264CA0267.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1::15) To AM0PR02MB5667.eurprd02.prod.outlook.com
 (2603:10a6:208:15d::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4e761824-decf-4729-865c-08d96df89702
X-MS-TrafficTypeDiagnostic: AM9PR02MB6530:
X-Microsoft-Antispam-PRVS: <AM9PR02MB6530F726B2509EDCE95A7385F5CE9@AM9PR02MB6530.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tzvRtDQtwSJ5R/Uf4nSoQaoF41kRvkv3ZEHOYBXK5cChERIxJ9cyYshRjK3hFu8x95lJyYu4QVG33MLcILj8/oMHU+UfRtk33klNo17VjTlCMpUtNKl0Gkhyo65hF0+1i2js9OTs75ZH5Hart0cDNt/D3MbQwKxy5vExoJe8qrUWHKdhnYKjdbcRf1jOrzugkN5fhD8/tnHETIGvqawwFmzJlfW81shnls1LsP0JUkIPb68sdGu3eNzyPLEIeggVP403C8mWI1/2pMVkWnC1wNOgW5GaVrkhyOye1/5fgc3wO2Z3PFM6rXn856f1rASCpsqr47INR4LH25zSgGrSbEjI0i/udXDBP4ujjs/5KJnfIGDCJVmy+ZZzRKvpJW2A1Y7iRUGkY27aXu4V5EJQr1FBg3lp4q5bQ4ZPf1J7B1zq6EuLEGkeln6CC9V5Nz6blasnSTedosvT6FQl2TdrLBhbQQ3GNBw8/kU6NcoWVTdKWfYM+XpCxXGQGazZS4NXDov8SozpUEFAyIY37GBUnf/SrhajWmvydFxx/VlnDVCCZHHIMaG8a80irXfry1Z3ogZML+NLyoNxRabH2tRYnZ3VmXzmJPJ6i1NyhW4F3ZqJyVkqY758ECiLk3wpfogzJ4Ge1r1FoNvtySqygl2HsrlFT7bvVjOUpQ5y78KrraMp0U03ZJkI4sTgko63JAnbyOPWg930Hdj6/npoiZ/KifgOiGZn84M6WPkqJAx+R3IZChSkqT4ybkSqlWDN+ZKbQeTeQaDebIYbXxDXSZi732es0eh8aIyoSqvtATJdn6m8ByyelZgzIjDRglBAoDGj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR02MB5667.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39850400004)(136003)(396003)(366004)(346002)(31686004)(478600001)(8936002)(86362001)(4326008)(66946007)(8676002)(66556008)(66476007)(36756003)(6486002)(966005)(6916009)(31696002)(186003)(5660300002)(2616005)(26005)(956004)(38100700002)(316002)(16576012)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFVMTS9BUTl4Y0pLTVJrTFlib3d3MGVQSm16eUc3aG0yWW1icWxoWE85aHRn?=
 =?utf-8?B?NFo1M1pnYVBTM1NDNE9GK2NXVHdHYWJMdTVxRWYrSUdYZTIzMUVyb2xSZHBE?=
 =?utf-8?B?TzJOcjdNVW51QkUzb0JnaFhvZzVJQm5sQXNzbHMwbThpY04rWkNyQTFKZGwv?=
 =?utf-8?B?UlE5MTB6bGJaK1ppVm9memZHNGR3QTJXSUpBM3A2b0NtS045Z1Zqeks5QjNO?=
 =?utf-8?B?V3lJOG9oZnlleVpoUXVJS2kvREZwQ0xZZTJxREFiMjczNWFCcml0TGJSbjBZ?=
 =?utf-8?B?bHBWTFJmUGtHZkc1ODRMcVExbklEWk4rcUVTS0Robmdxa05wZmJTRnlha2Zh?=
 =?utf-8?B?M0lRMDhkNDFVb3E0TlVZekc0SmpCVFc1Um9ZdTV4K1Y0eTNnN1hmc3p0Vlhr?=
 =?utf-8?B?NkdvUFRmdEd2NzJyb3k4NSt6UjNNcURGam5QRWF5V0pTc242TytPdGhqWVY1?=
 =?utf-8?B?S0tBTjRuZ1BOQUdISzgxVmQxTCswNDNWQU5zWk1nalJQeWx0V1dBUGdXcTQ2?=
 =?utf-8?B?VTF2ZXFiRlZNVGhPek1HM1d6L1VmNXlEL3BNMzlWdk93dDhNenJkcEdwVk1B?=
 =?utf-8?B?aXlEbS9Rd3JCN0pWWXlsN2plRVp5QjMvbGwxQ09ZcGtMZE15V0JHd0RPM3Zz?=
 =?utf-8?B?c3hEZjVaYU9zZ3h0YTB0Z0Fld3JOeUJjbmNGZU5UZmVGbVNhWnlSYmh4UEJh?=
 =?utf-8?B?dUp1bkp0UVZtM1hJZjNDdDZ2WlU0a0JDeGNwRXZYSmhxODgvT0lCd3pBdTZi?=
 =?utf-8?B?QW1peSt4N1d3R1UwSkFuQ0xiMUV1bVQ2L2I5Skxwd3lVeWIwRWM1a1ZqVTFk?=
 =?utf-8?B?cWJ5S0tTbmw1eS9tUnN5dklhSkdCRjhYL2tJUnFCWjd1c1UyT04wczMvc0pV?=
 =?utf-8?B?VHhXL3dtcnhtYTJGWEpEWWJmdGFkMGludkV4QmFHQ1ZqdDFkR0R3djZwcXRD?=
 =?utf-8?B?c2lpYW1rVCtSYitMUzhXRmpRMU5aRmZnd2JpNnQrSlZBVm5nNkNEanptSlBj?=
 =?utf-8?B?M2FibUc0ZWdTOElKZ1M4V0t6UVZNc0hOR081SklxQlRvVXYyWm00N1VoNDRX?=
 =?utf-8?B?Yk81MDBiVFlKRjBRWWhFcGI1MGZFNVcwSGpKRkZES0tPTmJiM1h4NGdRV1g0?=
 =?utf-8?B?bTkreEhmQnVYSnVaNVBEa29NK3NnYW0vbXkzOXgwbElwMVc3MUxsTW9weW4v?=
 =?utf-8?B?VGhYQ0tUVHJCSTNOek5pMTNhK1ZONm5SVnIyKzR4Lzg0RndKdFN0T2UvbjN3?=
 =?utf-8?B?Z1dBNHArbnV3bTBPN09od3dyNjBDZHlPWnhnUHRmcHk1eXlMYkVVQXQwRGR6?=
 =?utf-8?B?TjdscGNnZE00b3piMUt6T2NBdlRGbVJzK0NEK1IzRlRTS1d4Y1dhWVViVHB2?=
 =?utf-8?B?aFNvQS9MU1pnMDJsVSs4Ym1LaXBUOVY3MU96Z0o1Rm11cndYeU8rM3djNHlE?=
 =?utf-8?B?eXBCUkc2RUFwVktacnhrYW5JT0paY2VvQTNPbzdEUUE3bnpuc0tUVG8xNFp5?=
 =?utf-8?B?YXdpdWI2NlhPb0hNZGFyc2ZQL0JnWkJYM240b2lONHdVMHpMNDRyb0hEN2ls?=
 =?utf-8?B?NWR4NXpkSEdpUDdicEloMmFBeU8vM29ZaDgzNUJmanM4Ni9FSFZCV3F2SmRt?=
 =?utf-8?B?RE1UazJVVGtGVk5SODdWdHdJd0x0RGdjbG5kSyt5OTIvZFlUMmJoRzlvbUtC?=
 =?utf-8?B?dytlTmU1bnIzcUZJcFUzTXBoUm1IVGxGZHd4akxVc2xuTm03TjZsVGtxL3hW?=
 =?utf-8?Q?cSPa3nsJ2CSGMTOlSurlaLhdgrBI5IGq58wnoIp?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e761824-decf-4729-865c-08d96df89702
X-MS-Exchange-CrossTenant-AuthSource: AM0PR02MB5667.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2021 10:01:10.4146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e5e89441-3abd-4c70-8445-b44087643e46
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6J91slyE8r5l0/f5D/1YWbae78QfREalbiM/wIoyLtm11Nw6iccOkvtj5UApmMbnyWh49P7WuCxZyYJyv8CTvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR02MB6530
X-OriginatorOrg: neusta.de
Subject: [Intel-wired-lan] Slow e1000e Network Interface with different
 kernel
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
Cc: kai.heng.feng@canonical.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Scenario: Plugin into network, establishes link and IP is assigned.
scp from another machine in the same subnet gives approx. 1kb/sec.
Cross check with an usb 3 dock with integrated network adapter. Full speed.

Kai Heng-Feng build a patch for tgp https://lkml.org/lkml/2021/7/12/2927
His deb kernel packages with that patch based on 5.10.x kernel ran full 
throttle on this machine.
However this was the only successfull attempt to get full speed.

The Kernel Mainline 5.13. contains visual similar patches, but they 
still have the slow down on the same machine.
Some people suspect pcie changes at that point.

Some curious fact I found out while testing: I booted up a manjaro 
(current) usb stick and had full speed on the e1000e. Then I installed 
manjaro from that stick to the harddrive. Booted that and it didn't 
perform well.

As this is my first rodeo on this mailinglist, I need to reference some 
information:

Referencing: https://bugzilla.kernel.org/show_bug.cgi?id=213377
Here is the launchpad: 
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1927925
e1000e Sourceforge bugreport(s): https://sourceforge.net/p/e1000/bugs/681/
This is still an issue with all current mainline kernels. Last test was 
5.14 RC7

I can provide any output you need.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
