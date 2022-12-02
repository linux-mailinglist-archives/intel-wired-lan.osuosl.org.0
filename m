Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 168B0640ADB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Dec 2022 17:32:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2B904023B;
	Fri,  2 Dec 2022 16:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2B904023B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669998750;
	bh=b7r0/f7bmkiK6PBiPH5xV4V1Y5G93CyPtKab3risEkI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=c/9cuZwqkTVIJPjC6T5GreaBs+zNKDjBYDGlWSjimmM6v7JAIRj1PwoNPJWD8ixB8
	 T8+7NpDwi8+FkmUZg/E/Bzoux+du5aW9EpYTiySB859OjhdODf/++yrgzX1Qhxr3F+
	 p/LghMnG+CnKbiiZZUET+gnlKCqHHLM5nijgalqhVIJ1um4Oh5PblWCXvZBpcsA93S
	 LOKGn9A/AoMw1eakv+x9c1kLIIeH7OU7/BArDuoNRg/3CLHWFjGME3b6XuPsnH7MHx
	 1OAJYsGGx5hpNZKbvyVHHxhMVvKYqlpBcbB6uDrgH7a9k+ZF8hm+wkHvPewW8wyYF7
	 V8EfCp4yUr/NQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z2hF5ZkdUfbj; Fri,  2 Dec 2022 16:32:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D606140227;
	Fri,  2 Dec 2022 16:32:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D606140227
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71B151BF25B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 14:26:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58ACB610F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 14:26:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58ACB610F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 388oF1NFDgay for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Dec 2022 14:26:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90BA160AA4
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
 (mail-am7eur03on2132.outbound.protection.outlook.com [40.107.105.132])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90BA160AA4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 14:26:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WhEzIIJO7VUXZ7GfWq+gkgYvceeXrqgYQuZH1sF5jz72pqZIltmvsmWuGkU+RoL3IUU3OFXzyECjcrKzBKJ+EyvWd+P1PMeXevdNPfeLAOU2vhxbTVlpyj9dDux/E19tNpF8aCgaA/f6JCkNU9thCiHQApQeytzY7Q04nuaqHHe1DNqc7k8JYV8EFjouGvlhrxd2//SPPfHGTXXCBd3QjSjBYV1LKCYGaYfzIhc5bhsGTSSYSRd7930nHSLRnVr5BBmDThSnIKRNxjNpa5EFMZpoesV1I22S/3j0l4q32TngYB8W6fu29opYJVeAwE/f9y8kmwZKTLfIagPVoxvmpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BQvwFLIlV7eaUZ3zJS+YUWIqnNVnlBZZzdOzACfnn9g=;
 b=ZiNw6HwkKLvCzL3k753wk/rvOroBnhHKyBv5EheHlBhiMw832eCjZfeToUikatgzvNvHgY8eh5oOFmIBC8/RLIkhN6EwzAUYZ6xBBIRwye7Es/9jjjuD2FjbiJWt1XurfW9Yx1oHW18B3OXdTin0b/H6Sso8m0bjafoInIbDyVeWQgs5PGU3nLR13ljhHO6VbGKeMHsbgLyr5vPpENnOjtVCxeazyeRByAADIs9iwpebJcAe+79ZrVAa1PY2Y3018YIRJ3fz0fN6CVpmu/MM8hvbljqRTsuCc2oHppQDcqp48c7jxEkQSYmtRdAdXRoUHNLnzrPCHl2r2+eFoOfhCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.com; dmarc=pass action=none header.from=kontron.com;
 dkim=pass header.d=kontron.com; arc=none
Received: from DU0PR10MB6252.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:3ef::11)
 by PAWPR10MB6808.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:338::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Fri, 2 Dec
 2022 14:26:01 +0000
Received: from DU0PR10MB6252.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::468c:2f99:8d8d:9e4e]) by DU0PR10MB6252.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::468c:2f99:8d8d:9e4e%7]) with mapi id 15.20.5857.023; Fri, 2 Dec 2022
 14:26:01 +0000
From: Gilles BULOZ <gilles.buloz@kontron.com>
Organization: Kontron Modular Computers SA
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
Message-ID: <c8159652-4214-c608-2a4e-0b77ff598317@kontron.com>
Date: Fri, 2 Dec 2022 15:25:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
Content-Language: en-US
X-ClientProxiedBy: PR1P264CA0145.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:346::19) To DU0PR10MB6252.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:3ef::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR10MB6252:EE_|PAWPR10MB6808:EE_
X-MS-Office365-Filtering-Correlation-Id: a1115538-237d-48d3-2e2d-08dad47122f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7C+dWwFJv8lYmUeNNZDbPOZsugTMEX0ynw61PtJbY9Du9USoQNOdaZM87OLnczLmVzMR0YSgbjZ6bKWmhaNhtu2S41hKb9mA+GY6cyegtBnFcfuTDW8IpatPrP4+/zYhKqr5gGjS4ggnTEL7suyKgWm2CTqNQxjffoCnjDoB6aa00g1Bs6N9HGdLXDbkDfu26ChjLjTdyUq13MdVzNI75hnZOHHbu0RYK3ItaxSHc5IxOlMOATPj5yEftq4hR7f4QPirZZLPwreJVDwnFepDEBvvJiA8KBO4b7ebFyynvzo2B8emU6z3d1sS8gtLk7oVAmQcWWaN5fTBF9JM/BnTpzIUuk5MiR74YzBVAX64QS4KY37LOjkB7h10+tktj3UzP+Zs8KhY+PA9Wdg2hvjoF/AY1D7kWoE3J/CvAklhzxi0qzjjwzmWNGmeTjidqO0k0dnJ8hcVx/OsWN32HltJLq9/tAelA35KjBdj4iwyPhn1jH0tAsheqHb4XSGYxypGz5ofC8QfR2zQ21O5yHGN8QMXEOHoB3BqoG2IxYDVlqHt0D2cb3LI1Gca0oltfMdxUj0ByJgKWHHyMgy8YnTdkCLeAT8XXbnhexy/xmI3/eLE8VUKfMwKFoAT1mZ41gR+4lhENfuPiv0ShYIUjyeK2KouxuvyNrJ4Rq+vkjRXAgVSNmmLSCXfRMw/nJ4xw6t2nlsOODmLFyIZtO49lWcmaqjU/hZJSQ0PVh2+5igJZQA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DU0PR10MB6252.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(396003)(346002)(366004)(376002)(136003)(39860400002)(451199015)(31686004)(36916002)(31696002)(478600001)(86362001)(6512007)(6486002)(6506007)(558084003)(36756003)(38100700002)(2616005)(83380400001)(26005)(186003)(41300700001)(5660300002)(8676002)(66476007)(66946007)(4326008)(66556008)(8936002)(316002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WitjRDBMRzdjS2lIMjlSNk9SeHhKeFdVZm1TL0haZjlaZU1YcXZDUDJiSFZB?=
 =?utf-8?B?MkNUampDcm5lV200UkQwRE9yMFNlajF1a1pVQTBrTS9YK0F3UThNL1hodks1?=
 =?utf-8?B?WVoreVhSY3VUUTB0R1FzbU5GV0lkQ1B3eE1IQlFyNUpvYzB3WFRoUUJYQkdz?=
 =?utf-8?B?bG5OOEhJTE1sQzlVcmRYVktyNVg1aXJJamQvd0xmaTlKUXdwbDZmd25nL3dr?=
 =?utf-8?B?dkNwTGhFc2ZGcjRPSmNEUXJrYkJuZmRsWnhOZ2VTR2dicThQd3ppVDQxeit3?=
 =?utf-8?B?Z3ZPRXRvZXUvREFIbTBQd0p2V1JudUNrZlR6b3F6MUFXQzY3WmtEVU1HdDlH?=
 =?utf-8?B?RVhMS3VzZFR2MFF0dzY3My9DVFkzK1lCdFUvbnBYWlVxakNzUmhvSDNlNkcv?=
 =?utf-8?B?b0VaM3A3U01KSVkwS2JWaUt0ZXhjY0JWMFM3R1U2V1lsVGZ0VnA0cTN4bG5v?=
 =?utf-8?B?MjUrejhTVWRnNkZhazZTNi9OWVNVb0V0Q2Z6b1l0QjFaOXE1VDdsSzhWRk9C?=
 =?utf-8?B?SEpCd0pnQTB1TlJ2c0NkYXRRQkI1NkZrdkgyZEo0cStBODl5Uy95RDVWNWw2?=
 =?utf-8?B?U3hjOWwwY1pFREprNjhjSzgvSm9QVHVPYnd5ZU5JR2ZFUStwSlQxWklHV3pD?=
 =?utf-8?B?Z3ZNenJnQ1hRTWxwa01DZkpQdWRCZURTSW9zTTdoZDRibFJ0OTd0aXBiSVVO?=
 =?utf-8?B?dDRld2RnaVRTUDlhN3hRZmVqRWdXL0V0OGs4cmdOWWJmWVpmdlZoaTBqNFh1?=
 =?utf-8?B?R3dwUTJIR0kyS3JwUCtrZCtYM25lU0hlUitUbVFrWFZUZjBiZ3FvZjFlZmNV?=
 =?utf-8?B?L0hiSU5uUjhTc2VGcVV4QWNtemx2bkJ1M0dIdGd6dUVDRkZ6VUVjOEFIUHM1?=
 =?utf-8?B?TzRDVnM2NmZ6M09jZ0RMOXIxdzRZcVhTd3ZBcXVKaVNHVExrNWhidk5yRVE2?=
 =?utf-8?B?NU1pcXVKa243NmM2dEZMTFlLc2J2cDR1azJMUnM0aWZHUjlvV2FTVk43VDdh?=
 =?utf-8?B?Vmc3dFF5SUdKdkpwQTR5NmVGRXoxRUF6MlNIbWR5blg3eWlvK0xud1FGdkFi?=
 =?utf-8?B?cFp0NnlpRjk2ekJoa285T0RvMlhuL1NjM2hMRmFZREhiTG1zYmlUYkZibEE2?=
 =?utf-8?B?SGFHODRZL0tnWnhrcVlUUnVPRDJINHFPWk5OdkZoN0FJRkdLZUxVRjdxS0tW?=
 =?utf-8?B?OEV5d0lzQzEva1RkZzJFaWNBNFFvWnlSdU80b1hxSXBqY3ROYW1tblpxNlFQ?=
 =?utf-8?B?UnV5M296U28xZ1dPTEVpZ3d5QnNDTCt1QWNuRytiZDhXc3BKdENVYzdhVDcv?=
 =?utf-8?B?emhxU0FYcy82amNyMkh0U1JuOUREbDR6eWdSNGxyY05ua3FlRTRPaWJOZ2gr?=
 =?utf-8?B?bmlLWlNhSFFPUUNIeGJUZE1OeTd2VWs4T3UxNCtEVisrVTZaOGk4L2ZqbFo5?=
 =?utf-8?B?RlM0ZjdrUkd5L3ZQaE1BcDRYb3doZG03UUV2OXlJUmVFSG9uazdmejBFVHov?=
 =?utf-8?B?SGFIWFFCOHZnR1I0Z1BONTFsd2JoNXNaK1I0T0JKV1pLa1F2b0VNSk5EbEIv?=
 =?utf-8?B?emdLd0hIZnlrTHJiUXVKaUI5QjdkYlB3R2QrNVExNHlUMHh4WE9VdUdJZVZR?=
 =?utf-8?B?NTBvUWlkamNaZnMwZmlmUTlRZXdRZ3lqLzRFZm1JTWdZMWJ1WS9wN2pza1pL?=
 =?utf-8?B?aTR2YVZxL2d6RzVBNWFZRythRmE3cFhGSFpKOHBLVEFrK1JMdzRyOFhzNzVU?=
 =?utf-8?B?U1djZmdPelVNNWNIY0pDQ0ZpT09FWVZ6WUFZYW5PNXY0ck9aRzlJc3libU5H?=
 =?utf-8?B?QW1WcGJGc2hkRHc5V0ZVaG1wRE5hU3MvODMwcU1VNkxCWDU1YUVaNE9NVjFG?=
 =?utf-8?B?VlVZc2dsNU1laUtENTZkVXhMVHB1U093OCs4U0ptZ0plMVZMdmdkOXRiVVow?=
 =?utf-8?B?NWloQVRicjJPVTJuaytEWTVUNUwrUG9IbFQvbXp2dUJnbjF0b3lra0ticyts?=
 =?utf-8?B?YXppUEJxbVNMWSthYzAzRXBNbUYycmR2Nzc3dGQzZmZrM0MwakdXS3JWRTNr?=
 =?utf-8?B?eno2REE0SjJoZUh0Z0VFQW12dkQ2OUpPNmUwOHM5N01LbjlhTnhvbUF1cU02?=
 =?utf-8?B?dk1EUW1XQml6b2pSS29MNjlScVJBSUc3U0NCY1o2d2R0WDFZSWw3T2pTTUdy?=
 =?utf-8?B?TFE9PQ==?=
X-OriginatorOrg: kontron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1115538-237d-48d3-2e2d-08dad47122f1
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB6252.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2022 14:26:01.0064 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qJCzHTC6+Usb7FZQ9OEuxTtmIVtMbllcI0fUzym9eucl7OA9Zvcow17n4/9lBVqt6fTcSDBlIWoBk0kUXNLF8Dzjsai3hE24p9Q2ZOvWSWU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR10MB6808
X-Mailman-Approved-At: Fri, 02 Dec 2022 16:32:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mysnt.onmicrosoft.com; 
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BQvwFLIlV7eaUZ3zJS+YUWIqnNVnlBZZzdOzACfnn9g=;
 b=oki7FxgaQO18oKxSXEK/jfsP0QEwVSYSq4eC9rH8/mpbT3m4ApwRIZAXh268MjTcqGATK8r+chxGT1dinMcIzchVMYxqXs7pNyDJ0CXO58tLRBURmOCxXuHclPwJGOL3+X4IUw9wB1ftrE3V6VURxzWr+I1XZpAC/q5lu8NvuQM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=mysnt.onmicrosoft.com
 header.i=@mysnt.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-mysnt-onmicrosoft-com header.b=oki7Fxga
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.com;
Subject: [Intel-wired-lan] XL710 / i225 / E810 : get temperature from Linux
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear maintainers,

Is it possible to read the temperature of the XL710 / i225 / E810 chips from Linux ?
Is there so demo code somewhere ?
Our "Intel Premier support" did not help on this.
Thanks a lot for your help.

Gilles Buloz
Kontron Modular Computers
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
