Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 413693F44B5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Aug 2021 07:46:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E530F402EC;
	Mon, 23 Aug 2021 05:46:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wxEgF4YXpgqR; Mon, 23 Aug 2021 05:46:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C0F0402F7;
	Mon, 23 Aug 2021 05:46:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4C961BF429
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 05:46:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 933D680CBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 05:46:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YvfUMzAy6Yvt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Aug 2021 05:46:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C727680BBA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 05:46:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="216759875"
X-IronPort-AV: E=Sophos;i="5.84,343,1620716400"; d="scan'208";a="216759875"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 22:46:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,343,1620716400"; d="scan'208";a="454670018"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 22 Aug 2021 22:46:14 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sun, 22 Aug 2021 22:46:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Sun, 22 Aug 2021 22:46:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Sun, 22 Aug 2021 22:46:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eb0Ta9ejNeLov3qyzu7Poa0j5kl67Gq+e1IRtNUb91qHT/RGp5kX/W36UVMYDy+LwnbF/UI6RByd0VsQAdRn0PiJKqPWsBd8qubsC3UAYSzO7xBMDwZW4WBK0Cyf5V8ZtGxyPlXxqh1weQnZOt5Q0TQ3sYG4Jp9R3cVFFtJ2p6OTuMRnAYKKtLF7ImyXD+yCrMbc5RdwkE8gBYeXZIZwRtkt73Co9yBXdbYSKa4GLiiuRfsSIS7LoiNvba5+lKkdz/ddVTSBm/ai0TLo/cQe0e/uTYH7nffsqPP3ku/K12LUey+gdmV2XO4I+QJzEhFve2X3nRjYNbv9BFGm1VopVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=23bUpb1QhI18/TxfYavBKPWE1sTktTAQ/mnDAbQfH4w=;
 b=SMiASx8FupMrJ/a6Vk23Gmw2+nJHUCMcHhSXt6CqV6NSJTQoi4PB3ALr2LELFjqmL+5uWJwBoDMgqciv+eFM4/o4UUJcJt0SLh+5ShIvwb6E3A8QuJQbAGMrEXOfEvDcj36WjKB7j1/ww+Pdkts2pg+ySSOVt8pfmwWMGUqap8Rzhq1lwC2EfLrUom/rl6lrGb6hj4d08U7ZshFVXxaOs5kQ8w+zHmMMw0yxFFoftg2dlJWT+wmDBClp6lB2a8mJKxwMYCVGujfAHUkRc6LqdtGCwpzPlPcgkEpWZPN8wbvbvGpwvwujdBg2Qh8uE+lEAaejtDoZs9pbyt9bGo15XQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=23bUpb1QhI18/TxfYavBKPWE1sTktTAQ/mnDAbQfH4w=;
 b=sRl15n7iU4McB341Qu441EA2fwMAoa3OstRvHAQsvNhhADZar4GnKSsimdhtFpbMAhCmtvqX0/k1DTADs64pLowu5/8H1OjidbxlV6FvWfsOxwd1r4EgcGw2hdUMzelLTVt8IayrRono4IAkmMMNsswnbklJgWxmy1+m6qJ1mbs=
Authentication-Results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by MWHPR1101MB2141.namprd11.prod.outlook.com (2603:10b6:301:50::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 05:46:11 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::fd4e:d9a2:d2b2:df5f]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::fd4e:d9a2:d2b2:df5f%4]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 05:46:11 +0000
To: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>, "Fuxbrumer, DvoraX"
 <dvorax.fuxbrumer@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
References: <20210817131620.566614-1-vinschen@redhat.com>
 <163e4be8-7f23-398f-89a9-06e6f2171416@intel.com>
From: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <e688df27-7a60-d2bf-604f-84ba2d7d6a10@intel.com>
Date: Mon, 23 Aug 2021 08:46:06 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <163e4be8-7f23-398f-89a9-06e6f2171416@intel.com>
Content-Language: en-US
X-ClientProxiedBy: FR0P281CA0059.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::7) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.185.168.150] (134.191.232.62) by
 FR0P281CA0059.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:49::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4457.9 via Frontend Transport; Mon, 23 Aug 2021 05:46:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 913b1dd4-255e-47c1-cbf7-08d965f95032
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2141:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR1101MB2141CEE43B16CA5048A5D44A97C49@MWHPR1101MB2141.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wzeCvYYbV4CBvPNsecfAdGRVT6C7/KmDlJHFy77++P/MBD1sTcGDNExYgJuiC3rIsG0w8obPhCX7qg9Cm2gxbUBGkzKoHCfkB1jFwlg2ell7aTZkh/CxU1UX80UOpiX/i/oGNkqHjQ3Jv0YOh3dk1/6a6BSxrw6xJor6xjWyN88CAtGzCS0BdDMwmrWI4eDB0ChSmqkpkCQ43jKa8zjYL+USHzKj3/7WD+kP2a7hKjz81f70Dv6C1EBJLBvA2pcSEuvTn4P5pliDyYCNIoi+XJTPDc79msi4lMwEZBuoGrqv2c26HplLUavSE4Gu3vVBRJjsJPbB+J7eEfPtS+pf7EcNmohgYR+KgvuYrn84bwIi7lmfh24pbRDQTgNFL87d+/p0VZhSblBk4iQfGcEcjzlLPplvYYrnUkhX2yWPqT1ElsvA+AcZ0m6RmDL3XKzmjaDyH8aBco/uNboHsSMJWEIBzTZAW8kGwn5mgNQ317Sz8SbE91mUG8nYWGcQ4jpU4BpMYLawlJg9wD77PW0MJHhng1hIaXl0esNkZYoXtK58iwUeqtNi5ltsuE6hnWl3qeAvJvAzhphSfIjmqTaDePkMG2LQgdWqXARr1z8IwAe+Vqrv76FrcoEQw7mQgIZmqppbqEuusNcCRyGNEqAWemDTUOOTsXr+mdnH37yOau4WmMZpd6QcbiMoOygzGea890ma7AHf7WuaPHcZJdT9kEQtxWAwKwsrFaPZcx6rCk8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(6486002)(66556008)(31686004)(26005)(66476007)(2616005)(956004)(66946007)(6666004)(186003)(2906002)(86362001)(53546011)(110136005)(8936002)(16576012)(478600001)(38100700002)(31696002)(83380400001)(36756003)(5660300002)(8676002)(316002)(44832011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzBKRlkrU3BTNGEwbENLYXZVTHJaRmRHUUY2S3gwYmg1M0pTV3kzM25qa2g5?=
 =?utf-8?B?TXVmR1FYek83a3ZPd0lmOXpzMlVieUJBcFdDY1hnVWtYVHMxY0IwVzNMRFh5?=
 =?utf-8?B?Z3lyQU9pTGJ5V3hSQmJsckNSb0tSNnFya2NIcElldHhSSkRGcGRwdngvaFdL?=
 =?utf-8?B?YVBjdTVSdFB5M1FDb3pTYkY1ak5aMFI5dDFRSTdaUmp6WTNpVWx5c2FRc3N6?=
 =?utf-8?B?QmVlNC8xU25BTFI4ZzdUVEFrdXY1cHcvaHF6c1kvVHFqUmdpQzBuSStiOFNn?=
 =?utf-8?B?VVBSa3Z1T0JnNllQVWNyTUt1NFJTMmdwMndDU0JvWW03blRNOVpCZHdUbEIx?=
 =?utf-8?B?dGgxbXNpWGNxVlJsdHFCL3M0VGFBTytkQWRhVGN3M1VmT3hPVklBVWRyNVNr?=
 =?utf-8?B?b1pBS1NUc3hZMG51SjdCN3Ryd3QyWjRFYzBMN3NBNzYxYTJQdG5hcDduNFV1?=
 =?utf-8?B?N3Myazd4VzhyVGV2dGRMQ2U4NVFveGpxSTMwckd2YXI1My9XM3UvS01QN1pU?=
 =?utf-8?B?bktTcnR0YUppOC9wMXZMN01zTllFVFlhTkIzajd4OEsvSkFXV1pKQ2xLM0Y2?=
 =?utf-8?B?ZlZWenpFQUxvVVppUmxMZktFSnBVNGx0S2F4ZVdzSXBGQWFFblVkdWg5dDhF?=
 =?utf-8?B?dUlhZjNtV09BcTcvRkpBdUxmbkJlTXN2NE1ZL1RDYjJ2ODF3N0ZJcFZwT2JW?=
 =?utf-8?B?UmNFVU9VMWFrZTcyQVpoY3dpZFBvbFIzUFViQmpVYkNPUkNKb0RCT3BicURI?=
 =?utf-8?B?N2tjczM5eUg3TjRNVjVkemc2Qi9qbUZKQjVSMVpDZTcvR01wQUtIR3lHY2Vm?=
 =?utf-8?B?anZleWJhb1BScytKWGxyU2VMRzg2VDFQeDRBSEYrbmNyUGxtR0RxaUR3WUxW?=
 =?utf-8?B?a2VwQzVocGJSaitrRDRGNmJIbHVDa0dtUmFRa2p6WmtlK3FWUEdWMnNLYjhm?=
 =?utf-8?B?NkJNY2o0RGZvd2pOaGtiWWY2aVVZMnNXVWVUbEJieHlHbTFZUEVIempRbUd1?=
 =?utf-8?B?RHVEcGQ4NFUzZ3gwY1pOaXhyK242ei9EUlB4dTVFQXJpM3dDUlBNVVkvSXhq?=
 =?utf-8?B?c2Q1dHZkU3QyN1JITmVTbVY1eVJKTEEvYmRsUFpCR3FoanBtNkl2OVhDZ0Fa?=
 =?utf-8?B?YnBVdGg0cTNCdVpRazBhTVFHSkQzVHdWdUd3V3Z6R0wvQ3V6NnFmWGhtZHlN?=
 =?utf-8?B?VU1XR1ZZRHBJMVM2dG1vWGFUQ0QvMDVCZmxuWkNYaTdIMEVBaVhRWmNRbkdX?=
 =?utf-8?B?SThQMUlDTkFkblR1U3N2a0toM2N0SkRSWTBLRHl6QjFLN2ZWWGdmYXJEbDgw?=
 =?utf-8?B?TXlidTZQSkp1eERySjIySUVkVlhqZjdFNHpidDE5VDZ0UkRTVFZBNlpnSXVG?=
 =?utf-8?B?WHc1aDdXZ2xhckc3ZDlxeHpiSFpzT3FhWWlmMTBXbXN1QTRFeXNUcWhnOE9L?=
 =?utf-8?B?TFhRcjVaaGdkQWdhSnk4MkJ2ZUd3aUNUMlYwMEJNaTlIUW1KL0QwZjU2WVRQ?=
 =?utf-8?B?UXZvcFFiUVBqU2dSRVVsdHdudnF1YWdwYkk0WEtLNFZKZDN1Y001UFJWSWJi?=
 =?utf-8?B?K2NUQnpONnVLZS9OZHFKcnpYb000SnV2YnBGenFna2VETDR5NkNiaENjbFBT?=
 =?utf-8?B?TUZLUDNKeWNNbno5UlN0MHZ0eUFqTDV2R01CcGlWN3pRRHpvRnVPTk5MMndo?=
 =?utf-8?B?R0Z6OVNLVjU2NUZYUXhVelF4TnNwNGtxa1daVnlrNitkVDc3RFVCSlRid2k3?=
 =?utf-8?Q?M+i45JSrJ3FCyeE2ezoIt29sPbDYO7dQPpVSGZI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 913b1dd4-255e-47c1-cbf7-08d965f95032
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 05:46:11.7817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h3zoowGWPj1NJ7BrezF8XX4YpmmiHneYHk1x0DGfWjD8QrVFPEPoGh/sKxVrpG6WwUcLi59Zc1UrgTSbpbMqWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2141
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix tunnel offloading
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

T24gOC8xNy8yMDIxIDE2OjQyLCBTYXNoYSBOZWZ0aW4gd3JvdGU6Cj4gT24gOC8xNy8yMDIxIDE2
OjE2LCBDb3Jpbm5hIFZpbnNjaGVuIHdyb3RlOgo+PiBGcm9tOiBQYW9sbyBBYmVuaSA8cGFiZW5p
QHJlZGhhdC5jb20+Cj4+Cj4+IENoZWNraW5nIHR1bm5lbCBvZmZsb2FkaW5nLCBpdCB0dXJucyBv
dXQgdGhhdCBvZmZsb2FkaW5nIGRvZXNuJ3Qgd29yawo+PiBhcyBleHBlY3RlZC7CoCBUaGUgZm9s
bG93aW5nIHNjcmlwdCBhbGxvd3MgdG8gcmVwcm9kdWNlIHRoZSBpc3N1ZS4KPj4gQ2FsbCBpdCBh
cyBgdGVzdHNjcmlwdCBERVZJQ0UgTE9DQUxJUCBSRU1PVEVJUCBORVRNQVNLJwo+Pgo+PiA9PT0g
U05JUCA9PT0KPj4gaWYgWyAkIyAtbmUgNCBdCj4+IHRoZW4KPj4gwqDCoCBlY2hvICJVc2FnZSAk
MCBERVZJQ0UgTE9DQUxJUCBSRU1PVEVJUCBORVRNQVNLIgo+PiDCoMKgIGV4aXQgMQo+PiBmaQo+
PiBERVZJQ0U9IiQxIgo+PiBMT0NBTF9BRERSRVNTPSIkMiIKPj4gUkVNT1RFX0FERFJFU1M9IiQz
Igo+PiBOV01BU0s9IiQ0Igo+PiBlY2hvICJEcml2ZXI6ICQoZXRodG9vbCAtaSAke0RFVklDRX0g
fCBhd2sgJy9eZHJpdmVyOi97cHJpbnQgJDJ9JykgIgo+PiBldGh0b29sIC1rICIke0RFVklDRX0i
IHwgZ3JlcCB0eC11ZHAKPj4gZWNobwo+PiBlY2hvICJTZXQgdXAgTklDIGFuZCB0dW5uZWwuLi4i
Cj4+IGlwIGFkZHIgYWRkICIke0xPQ0FMX0FERFJFU1N9LyR7TldNQVNLfSIgZGV2ICIke0RFVklD
RX0iCj4+IGlwIGxpbmsgc2V0ICIke0RFVklDRX0iIHVwCj4+IHNsZWVwIDIKPj4gaXAgbGluayBh
ZGQgdnhsYW4xIHR5cGUgdnhsYW4gaWQgNDIgXAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZW1v
dGUgIiR7UkVNT1RFX0FERFJFU1N9IiBcCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvY2FsICIk
e0xPQ0FMX0FERFJFU1N9IiBcCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRzdHBvcnQgMCBcCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldiAiJHtERVZJQ0V9Igo+PiBpcCBhZGRyIGFkZCBmYzAw
OjoxLzY0IGRldiB2eGxhbjEKPj4gaXAgbGluayBzZXQgdnhsYW4xIHVwCj4+IHNsZWVwIDIKPj4g
cm0gLWYgdnhsYW4ucGNhcAo+PiBlY2hvICJSdW5uaW5nIHRjcGR1bXAgYW5kIGlwZXJmMy4uLiIK
Pj4gKCBub2h1cCB0Y3BkdW1wIC1pIGFueSAtdyB2eGxhbi5wY2FwID4vZGV2L251bGwgMj4mMSAp
ICYKPj4gc2xlZXAgMgo+PiBpcGVyZjMgLWMgZmMwMDo6MiA+L2Rldi9udWxsCj4+IHBraWxsIHRj
cGR1bXAKPj4gZWNobwo+PiBlY2hvIC1uICJNYXguIFBha2V0IFNpemU6ICIKPj4gdGNwZHVtcCAt
ciB2eGxhbi5wY2FwIC1ubmxlIDI+L2Rldi9udWxsIFwKPj4gfCBncmVwICIke0xPQ0FMX0FERFJF
U1N9Lio+ICR7UkVNT1RFX0FERFJFU1N9LipPVFYiIFwKPj4gfCBhd2sgJ3twcmludCAkOH0nIHwg
YXdrIC1GICc6JyAne3ByaW50ICQxfScgXAo+PiB8IHNvcnQgLW4gfCB0YWlsIC0xCj4+IGVjaG8K
Pj4gaXAgbGluayBkZWwgdnhsYW4xCj4+IGlwIGFkZHIgZGVsICR7TE9DQUxfQUREUkVTU30vJHtO
V01BU0t9IGRldiAiJHtERVZJQ0V9Igo+PiA9PT0gU05BUCA9PT0KPj4KPj4gVGhlIGV4cGVjdGVk
IG91dGNvbWUgaXMKPj4KPj4gwqDCoCBNYXguIFBha2V0IFNpemU6IDY0OTA0Cj4+Cj4+IFRoaXMg
aXMgd2hhdCB5b3Ugc2VlIG9uIGlnYiwgdGhlIGNvZGUgaWdjIGhhcyBiZWVuIHRha2VuIGZyb20u
Cj4+IEhvd2V2ZXIsIG9uIGlnYyB0aGUgb3V0cHV0IGlzCj4+Cj4+IMKgwqAgTWF4LiBQYWtldCBT
aXplOiAxNTE2Cj4+Cj4+IHNvIHRoZSBHU08gYWdncmVnYXRlIHBhY2tldHMgYXJlIHNlZ21lbnRl
ZCBieSB0aGUga2VybmVsIGJlZm9yZSBjYWxsaW5nCj4+IGlnY194bWl0X2ZyYW1lLsKgIEluc2lk
ZSB0aGUgc3Vic2VxdWVudCBjYWxsIHRvIGlnY190c28sIHRoZSBjaGVjayBmb3IKPj4gc2tiX2lz
X2dzbyhza2IpIGZhaWxzIGFuZCB0aGUgZnVuY3Rpb24gcmV0dXJucyBwcmVtYXR1cmVseS4KPj4K
Pj4gSXQgdHVybnMgb3V0IHRoYXQgdGhpcyBvY2N1cnMgYmVjYXVzZSB0aGUgZmVhdHVyZSBmbGFn
cyBhcmVuJ3Qgc2V0Cj4+IGVudGlyZWx5IGNvcnJlY3RseSBpbiBpZ2NfcHJvYmUuwqAgSW4gY29u
dHJhc3QgdG8gdGhlIG9yaWdpbmFsIGNvZGUKPj4gZnJvbSBpZ2JfcHJvYmUsIGlnY19wcm9iZSBu
ZWdsZWN0cyB0byBzZXQgdGhlIGZsYWdzIHJlcXVpcmVkIHRvIGFsbG93Cj4+IHR1bm5lbCBvZmZs
b2FkaW5nLgo+Pgo+PiBTZXR0aW5nIHRoZSBzYW1lIGZsYWdzIGFzIGlnYiBmaXhlcyB0aGUgaXNz
dWUgb24gaWdjLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhh
dC5jb20+Cj4+IFRlc3RlZC1ieTogQ29yaW5uYSBWaW5zY2hlbiA8dmluc2NoZW5AcmVkaGF0LmNv
bT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5j
IHwgNCArKystCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9p
Z2NfbWFpbi5jIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5j
Cj4+IGluZGV4IGI3YWFiMzVjMTEzMi4uNzllZmIzZTZhMDNlIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+PiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+PiBAQCAtNjI2NCw3ICs2MjY0LDkgQEAg
c3RhdGljIGludCBpZ2NfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCj4+IMKgwqDCoMKgwqAg
aWYgKHBjaV91c2luZ19kYWMpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBuZXRkZXYtPmZlYXR1cmVz
IHw9IE5FVElGX0ZfSElHSERNQTsKPj4gLcKgwqDCoCBuZXRkZXYtPnZsYW5fZmVhdHVyZXMgfD0g
bmV0ZGV2LT5mZWF0dXJlczsKPj4gK8KgwqDCoCBuZXRkZXYtPnZsYW5fZmVhdHVyZXMgfD0gbmV0
ZGV2LT5mZWF0dXJlcyB8IE5FVElGX0ZfVFNPX01BTkdMRUlEOwo+PiArwqDCoMKgIG5ldGRldi0+
bXBsc19mZWF0dXJlcyB8PSBORVRJRl9GX0hXX0NTVU07Cj4+ICvCoMKgwqAgbmV0ZGV2LT5od19l
bmNfZmVhdHVyZXMgfD0gbmV0ZGV2LT52bGFuX2ZlYXR1cmVzOwo+PiDCoMKgwqDCoMKgIC8qIE1U
VSByYW5nZTogNjggLSA5MjE2ICovCj4+IMKgwqDCoMKgwqAgbmV0ZGV2LT5taW5fbXR1ID0gRVRI
X01JTl9NVFU7Cj5BY2tlZC1ieTogU2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29t
PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
