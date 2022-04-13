Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECACE502B71
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 16:05:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 747B4404EE;
	Fri, 15 Apr 2022 14:05:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X1EVusA4uYxY; Fri, 15 Apr 2022 14:05:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F462400D1;
	Fri, 15 Apr 2022 14:05:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EBEE1BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 06:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1BFD281440
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 06:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=t2datacom.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hr8iw0fYoStK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Apr 2022 06:10:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-eopbgr80077.outbound.protection.outlook.com [40.107.8.77])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0CCE98141E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 06:10:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/wz9XmKXX2pYzJuDWKZmrkhKC+Z8scMcNIf9sOWbb4gLakwS2xWFuthqgq0CglTE7Dv+0SjTOeBObQroy9fEX7ocTqq/nrPbZgP0xilj+0NquG75IYXTyA/pIuPaL+JEoMFkM8i9ShPmEhzCIlCa9jsLqTAF74fHkYwcrEbDJMDP2OB8wkdbEYTHi2OW9Brm2KOU8eXDX+81elgtoRlshC4I7jaDBijKx75f1bGvxIjxE6ah7QrnINEZTEju7Qm/kAQCVkHNl8seBe4nujKYd6vT+HypAYqU/GntJbDixKKzvNED8+RW1tF947b2a3yESg4rcJ5Zw4ER24O3LJx5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A8YNmlIoPSASeLJoq74E1xOGdIz5kEDK0lGZmksFfGQ=;
 b=cIdwdGRtr4dWingQ6J10EtM0bqzun3c3s68q5qws+R6staOX2s+pZHyUTNsBvQQPT74VYLgYatNivfsVPMHnYWeVgnwNfkmQ22SfD9DX+Dnw0pppQDQ4TS6uAUM3q/RvrK9sEmOEijbB+sJuTtAY0g+V0iV+n29SYolgvfPUElWMSED5oOw1KvvREIyN45eKWflUASWA3Ocz5WFSNBlzzB4ieR2pPGnylHxWk73f5TLIoPTotQUitqZwsiwq/HbUuX+JnphcCpTJAeKR/lUBAWyvipPed91Un5qZnYyJS+JLbf7E5LvGWk2sufNfUxcPB7xmid8HN2TsORSu5HsAFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=t2data.com; dmarc=pass action=none header.from=t2data.com;
 dkim=pass header.d=t2data.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t2datacom.onmicrosoft.com; s=selector1-t2datacom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A8YNmlIoPSASeLJoq74E1xOGdIz5kEDK0lGZmksFfGQ=;
 b=ShpPa2xJFHHBY/K3wX+8e1pvDblsuTBv7ltiu5JUeI62GWWe0yvmQeJlg4QIt1HuiD8B4NWVjfhn6sMcvl+2AY3M8YfhNxDy4ayEWPcNQ59B/5wQqCLwxbQv59i1Ix6Th+WEz+F3SX8FP53EU4cqCl6HZplX8OISxGX16gjUpF0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=t2data.com;
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:334::22)
 by AS4P251MB0821.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:511::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.19; Wed, 13 Apr
 2022 06:10:50 +0000
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::3ded:58a4:e21d:33db]) by DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::3ded:58a4:e21d:33db%3]) with mapi id 15.20.5164.020; Wed, 13 Apr 2022
 06:10:50 +0000
Message-ID: <3438c789-d4c2-1b41-79d2-d2fb9ff6f089@t2data.com>
Date: Wed, 13 Apr 2022 08:10:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: intel-wired-lan@lists.osuosl.org
From: Christian Melki <christian.melki@t2data.com>
X-ClientProxiedBy: GV3P280CA0005.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:b::19) To DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:334::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7a9627be-42d3-4f03-6bc9-08da1d145b98
X-MS-TrafficTypeDiagnostic: AS4P251MB0821:EE_
X-Microsoft-Antispam-PRVS: <AS4P251MB082159F72FB82FDC396A1604DAEC9@AS4P251MB0821.EURP251.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S8M5JbFX5X6GGsS390XT20W/5uzEBPxz/qY00MeGXRis0+ABsgzRkKu/e0KtOXNXrzJFYmPU4DqhJTLOZNybrkFKG9nu4gjaHcvpoiRBEEZGlwmEACzMqGLhchTs5PuzPBvG5S3WKIfirQ0iXIt7M/x5DQLejStIqJc6wN0lYO5fVOWz04nKhuTYr9sdtUh2mmfIrBXRkZwueL5ruE7OTZtgYlS/KiXqBxldxuUrTlDvk4bmiPR4aI8gvw0B4r9FyYYoxlx5ooA9SoNhVX44mzYhWCz+bUZldZ4LZ69ZU7JQUurn3SnPh5C2ytddHGaMi9sv7NNilclVIir29OcLzxJN5jqSCiOE3oM+olImFyF216gVOgaJuftfuTADd7u17sbOVo1n2wHoGm7m/TsPshoSGWN67K9lseGVufBJciKmz25MVtondB2pekBPmsJPqvFH7U++JKnBUuKqox5ivnQGhlRitTCqB6Y/ZCgVgh2CvSHEsr/LbOXx4gUZ2Faykvb7DVGdiCSckG640Aoh+n4rD9XqOihrMuywVj/HaCEfhzxOLce8iEx4JYw7s0qettrDdfga6EUbFptp1eaz+yKXr9eRDZ7p9WPiY99Suk2n1DzVu4aeW3EPvS6DguNvuYFLDEuHvjy3p/aX5EOmX+PWqDxmK8fdiST2EQvwESUk3vmSgyAz48wfGheVgWNbk2Njyg6p2VhqRkN/wbd09j1FcDBZMVFdmU+Lz81XbeD0MTuXl1epdbU75mh9VzK27Zieezcngwvf3APv0ta8Rw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9P251MB0618.EURP251.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(376002)(136003)(366004)(396003)(39830400003)(346002)(31696002)(2906002)(186003)(52116002)(6666004)(38350700002)(5660300002)(44832011)(6506007)(4744005)(6916009)(508600001)(36756003)(38100700002)(8936002)(6486002)(316002)(8676002)(66476007)(66946007)(66556008)(26005)(86362001)(2616005)(31686004)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFR4dDVjbW1nWWJjY0x1MEozMkxIaUVQbitJTk13RjNZeEVFU0kzLzFtZDNH?=
 =?utf-8?B?dExOdjRNa3Y3elErcmNzM1p1OVVUTlZ6NStJZXpNbkxhaHBoQVpkMGlEK2kx?=
 =?utf-8?B?UnZLSElIU1A0RlVkQWRFdUt3WGI1M2VndEpEMVEvSTBuWE03dndnRzhDNUdX?=
 =?utf-8?B?YW5RTHppbkcvOHF4VXpaa3ZyQmNKUjR0WWFxckt2ZXVYbllIT1o0MGtORjZD?=
 =?utf-8?B?UGM3M1pSV1Jsd3Z3ZlRwNHpZY1hKNmx0MEJsclAxOGEwcUVvaWpqalNlcFhi?=
 =?utf-8?B?NGtFc3o2TENxSWVFRURuQ3pKYWhCWmlidHZnTVVvNzZwQUdTNmMvOTJCcWYr?=
 =?utf-8?B?cnpVa1Ayb09RbjRqZjR2MmNaNUZnRU5Lem1VUTE3VCtLdU9jRXVjOFluRDF3?=
 =?utf-8?B?ZmdUa0o4dFlsT0JMTFZFUkpCRE80c2xaN0MyM2gvdlhRZ3dHbzN4ZE5NMFhh?=
 =?utf-8?B?RkZFajRBRVJyLzV4eGpJenczS3dFTVJnOE5yOE10ektWWU5VT1lTTVVrRlcx?=
 =?utf-8?B?UUR0d0tPaFg2TGlEVklobitPN0t0NEtwcFVGdGcrcmNEdmZCMlhlZ04wWjRo?=
 =?utf-8?B?M2Uyc2dCV01yWHBqdTVoeWMwSXlNL2RhWmVnMS93eDMwRVl4K00zcTdsdTEr?=
 =?utf-8?B?UjFBVTRwQS83YmVveFpacXVobjJYWjc2Zk9YNE9hMzN0U1E2Z0g3OHV4NWpG?=
 =?utf-8?B?azBZMlp5ZGVPSVNta0dEU29INE53TkJHODhScXBGWGlQV21tOXNsd1dLQjgy?=
 =?utf-8?B?VkJKWWNzVS9zVzJubm9KSkpCQ3lLejAvUk5uYnhQU05lTk1odUtkOUFXVUtv?=
 =?utf-8?B?eUtmR1VKTjRsSDhMWS9QOU1mRjJhWndyVlJwRzl3cjdQV0htc3Q2dlZKWmJM?=
 =?utf-8?B?TmpRaGFtelUrcm1rQk5LMEppVFFWUjJuV1RidE9BSVZXNHovdDBzUCs4OHVJ?=
 =?utf-8?B?Vi9zMFowUis5Mk9qckp4MHN2OE96N1hOczRtTnYzVy9GMXlEbS96YkxmYVM2?=
 =?utf-8?B?VjRGNjNPRDdJbHhFNCt2eWIyOERSMGVSSDVIUFZoTmRsdVE0WEJCOStZd1Er?=
 =?utf-8?B?c2tMTXlhM0ZGSmhrSXpXRHdGNEdiVURPTUhpQTlNMC9LZVZoSG9idkxYVEZM?=
 =?utf-8?B?M0RqZERrOFkvUkpyMVNSQTk5Q0QrTUVNS3NDa05SRDgydm1wemt6OTg0bXNz?=
 =?utf-8?B?VWRhZHhsVks0YXhwVXc3MDNqNFZibkZiQllTYmd1K2FMeFpEam54SHJvVTJP?=
 =?utf-8?B?dzBWRHVmODk4dkh0cXN4VVlFV0ZWOVZka0QxZ2MydmtyMWFpU2NHQWFuMDcx?=
 =?utf-8?B?M3JwOEhpSmJqV3Q2MkxNdXgzMkszS1RaTk41UmVVMGx3UG0raExtWEFCaE8y?=
 =?utf-8?B?dzhtczhvWVlNSFFLQWcvNnl4Vjc1MjhGQm9TaE1oVTBOM2NyV2ptTzM0VzUz?=
 =?utf-8?B?Q1BUQ1J2S2JvQ2JlWVkxWU8va3ZqN2ExZFpEVmUvWll5Tkl1TlFTREpMUHlp?=
 =?utf-8?B?OW1BVVFZbnNMbUF5NnZORzhBaXRmYU9XNTB0L2pSejM3Zkpra1RLOGdHb0Qx?=
 =?utf-8?B?YjJQUjBmUWNuSEMvM0hMTmUxVjNGYlRhOXZTQmx4c1cwOHdvUGF0UVI4WG1I?=
 =?utf-8?B?bHI1RnVwRk5IcDFENmUwOWN1UHJDVW9UR2lpVUk2Q1JESGo1dytlUXRiRm9q?=
 =?utf-8?B?YXlpTnQyekdmNno3T3QrdlBiTVduVjZMTHdoUEtNUFlQbHZrQ2dXbG9vSXRi?=
 =?utf-8?B?UUh5RHdGVitpeUhzeTlHK3FockNrTEFkdC9xcEhNVVhDQ0FEUWIvMDhTc05j?=
 =?utf-8?B?QkwzYXYrYmZCNVRYTmF5bFJSOVlhbDBRVkRwMUsyZ1lnMTdScnJJUzNaN3NV?=
 =?utf-8?B?dFI5aThUVTJQQ3VIYUlRMUM2U0lKdkRzZm15Q3pJT2JXbldPQ3BrWEczcGNY?=
 =?utf-8?B?ZGdjYytLc241ZTZiZGRtaFMwaFNFQ040aXBuWnNOYy9nbGdubFFBK2tZNVZN?=
 =?utf-8?B?ajJYb1ZwakoxMU1MREhWZklUNVlkMlB6VFYxalpKQVFNTFpraEhzYk9OM0RF?=
 =?utf-8?B?SmlYQlN2cDc4c2ZWWUxpOTFVcjcyVDZkOXpsMkdEa0N4MnY2cmdQMElVZm5j?=
 =?utf-8?B?a3dneHlRejlUTTY4V0tDV1JOVWlMTG1VeEFWSVJoT2NXaWkrN2o5bmNac0dy?=
 =?utf-8?B?NC8rUm5xM3RNczBEaHlrZUs5UUFuK2YydTNSbStGS3BPLy9QL0w2RFo2eUZH?=
 =?utf-8?B?c2gzaXFjZFNRM0dsN0ZHM0hYM0JjYklCRzFkU2NIcG5uaXBaVDBWRDB0NDB6?=
 =?utf-8?B?OVFhayt4ajJaYnFxUGZYTkNHc2lVNzhZVjM1K0FrRXY5ZjNxZ0JDM1RYU3kx?=
 =?utf-8?Q?7jcftG7dtfHyJLI8=3D?=
X-OriginatorOrg: t2data.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a9627be-42d3-4f03-6bc9-08da1d145b98
X-MS-Exchange-CrossTenant-AuthSource: DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2022 06:10:50.1643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 27928da5-aacd-4ba1-9566-c748a6863e6c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ip9FwnX1qJ4Bt7KxnxXNuKm95Dpymx61l7s0X39TQK/FPQEZqn6VAZvZ4fk4RaLW3LodcGRr22K3yWVjrGeQJHzU8YMDupmkThSkmzswh5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4P251MB0821
X-Mailman-Approved-At: Fri, 15 Apr 2022 14:05:48 +0000
Subject: [Intel-wired-lan] No link up before IFF_UP? (early link
 optimization)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I have a optimization task for a time constrained boot process.
The system in question is an AMD Ryzen from the R1000 family with an 
Intel I211 running igb in 5.17.1.

The current kernel and driver behavior:
UEFI (link up) -> Kernel starts, driver is probed (link down) -> link 
stays down until userspace IFF_UP -> after an extra +6-7 seconds the 
link comes up.

This means that the userspace can't start communication after 6-7 
seconds after device open. Moving the interface initialization earlier 
won't help much as IFF_UP is about 0.5 away from jumping to initramfs.

So the question is: Can I get the interface to stop powering down after 
probe? If reset is needed, then take up the interface again. Of course 
the kernel won't start forwarding until netif_carrier transitions.
But I'd like to move the resets and powerups as early as possible.
I guess that also means no resets if no settings have changed.

Regards,
Christian
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
