Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE31B634B64
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 00:54:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D77240A13;
	Tue, 22 Nov 2022 23:54:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D77240A13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669161295;
	bh=q5CNrYwbpG2LWc0ONz8PvZIaiYPnzGmKNl2jIw/olP8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WGj6ye1vtvxZ7wHaoHTrraLfK4BDnnucB1haI5YFZmYKBGmKBelniiTyBx20ZAlZv
	 c9d1jQXEi0swBjtt1v+7w58WgEqvgO6sVNsmRPvROJENmyFkIusd4z7UnwfYDofR9m
	 3fHH8fzv3jEfYDpGji+cPxiJ9OMC+DhBtDKdG3hcpGDVZqWPoklvvFtFEiRCWCilKb
	 lg9b30LaP7D0yZiG5IXf6K8a6keiOOb7H+1lU6IFev6QwebjXU34tWBJKzhKVB5Foo
	 CTAcHtasAPXxaueoQOvWymQumEHbTJeVKopAqQmXbrQPZRLI3qeUeqPN+IPE3ZSBTJ
	 K31SSrM+cZ/Yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k4vR_mRbAQ39; Tue, 22 Nov 2022 23:54:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AEE440105;
	Tue, 22 Nov 2022 23:54:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AEE440105
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A2D5A1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 23:54:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 87BA54190C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 23:54:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87BA54190C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2cRkNcYAynp3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 23:54:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 652A141903
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 652A141903
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 23:54:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="315762468"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="315762468"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 15:54:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="674519051"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="674519051"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 22 Nov 2022 15:54:47 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 15:54:47 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 15:54:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 15:54:46 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 15:54:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lyHw1lOYkqL0ybTsmXyd3u44zbLV9Jp0dFft0SPoWLS7usGpftUPagNRdJktAEhOpBLVRpRhWNWqQk5NaCAZbEOV2Y9OpvdDtmMfyr5W5VUe1j+bTuFfpLjHYuIglxjT8ZadxErEwntht0ZW7cbvbMnNDlnBRKpVYLvCR632oMrguREZojhcOAWoH7wKZhRYl7UcW/xx8LfyLfuDsRx1M8ofVbCTau8rYV6jV0ZnA3zdbbW0gU1Br0FCZJDzChIwol2Y7Z4Xnptd7AMNCqg6KAcIcwy6yRL/MDxQqS6Mpa04z2K2jXPZ9tQlpa52PSjfjZlJUnKUC0rhXM9ttCrU+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uec8WIuyy4LNVJ9vB/SwQ4tmFIHCy8klJmNpG5oZGq0=;
 b=RIHxzcvY89J+kxb2KscmWZEgqmwGT9adZj7+qhoof+8/BqMSgUKD47ziio6xKYFYNKRHM0l5m8DkhWSbstF5feLYWMV4AMVb+zbeHxNge+K3qEWmH2oigkUzOM5+eqn3T+6lsTBO3KbE9nsLZkqXIHcf9J7zrVtIMoTxeqqbFtDC42AFQMLFQ8um8ij2Yx1uicLI5gaHK7XCMBSBPfD7Bh5e0K7mJhYnf1dVep9/1RYZbM9QVLAOMgQBPqaUyLt7ibT5mPCYYuusJxtA8GunD+nkAkBrtgGkC3oW58jilf/fbLq+21unQ63FTxGy+lrgyN+WAWGh4/Y10S4xTQ8kwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by DS7PR11MB5965.namprd11.prod.outlook.com (2603:10b6:8:70::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 23:54:44 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::6ce9:35:a5db:f6dc]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::6ce9:35:a5db:f6dc%5]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 23:54:44 +0000
Message-ID: <fd80722c-d4d7-1ce4-82da-2e71566ff0ba@intel.com>
Date: Tue, 22 Nov 2022 15:54:42 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: <intel-wired-lan@lists.osuosl.org>
References: <20221122234825.3360663-1-jesse.brandeburg@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20221122234825.3360663-1-jesse.brandeburg@intel.com>
X-ClientProxiedBy: SJ0PR03CA0025.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::30) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|DS7PR11MB5965:EE_
X-MS-Office365-Filtering-Correlation-Id: 5eda2d1c-88fd-4ec6-335a-08dacce4ee08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d2dU0wBhsE9vUMebt7SQ1N0kuNvvhVCD2AeTdkiyqUcnuqJb4UIvbTAm+LwYkjEWNWbbmryWW0bENr8Y1b0+Fav+4T+MIF8sAB4wE/vCMyQmf3Q/to1hU/5G1G9IG2riDZmBgau/G4X/Vo2wIal9RznyFWTurjdBr5cdUO+hnATwD7MIUcTUNvRrTklgDCpZrZrPDmd0FoxeT3OzooJ3zE7K+Du0yU+guP1UD0yFoI+NsknIv8FQyfQMsnjy/GFYsNm1SfS70K7oVZhTVxgwBw45NPLEEsqk1KjpBp9ETTW6jmzu71RKzUj6rNn+VM+OGNZgLy1yhmXivYYiewdzF/L/D/9wzzXOdhEF0QzC6TrUZTu9/EqgCyh4pZ5AAjqXKcXfpps98YMWyosbzlV8iL8wgepSNi60vYel5kvurpzANU/zmQs7a1M6TYTaV89dW6seftD6CC/aPUoSk63e+nrTCXq4uXKnMojpfnYVIQunRKML0DEVPwpk7B94uOmuaRWFApDAXJsEPgrjMy3fciHsFf6tMakSiqH0QfNwsl7RI0LlqV4h8db320HKTe640/x+b2eGFUrqvvoWuG0cCmDxJ30ETqiD2z38CxbE0vmdcNbbtYPOe980B8XLcRMZPhAfogt9VPwdUNpZktjsDKHqpwlcCcdQNXFixBaPiYL++141OEk2EWTNdYSBHvMPbjHuCn2zlEigWOOTjRAuIH1//Iddn1/l2Rrf0q2fLFY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(39860400002)(376002)(396003)(136003)(451199015)(6486002)(31686004)(478600001)(6506007)(53546011)(107886003)(316002)(86362001)(82960400001)(38100700002)(6916009)(83380400001)(6512007)(31696002)(2906002)(54906003)(8676002)(66946007)(66556008)(41300700001)(4326008)(66476007)(26005)(186003)(2616005)(36756003)(8936002)(4744005)(44832011)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFVvdDJORnJsVU5iTUJ0M1ZlbmNBNWU5THZOTXFnNlBtL3RzbUh5aG9iQ2tt?=
 =?utf-8?B?ZE1NN3p5dmE3MUsrRkkzaUU3aWplbDRGZHdiRVQxVUUzRnFXRnJyb3AxTjI3?=
 =?utf-8?B?UGk2c1pNY09wVEczV1pBaWZWY3lqTmZyMW5DOG1CZytBN3JONTRCdmt2dUtp?=
 =?utf-8?B?V0hDc3VVTS95eDBUOU1oYndSdHBCZ212T1hEa0tsU2FtVHRSdUI5ZTBlMjVJ?=
 =?utf-8?B?TXNuU0UvQWxMTUpJNndzMjQxTmc1K1lmSHBzaENEb25ESlFWeHlPWG9CZHpv?=
 =?utf-8?B?czdDQU16R0tac3Bqa3QxR1d6eXE1d2F0aHhJcytSdG1QSGp2bEhrOTJoRk0r?=
 =?utf-8?B?UjNPNnpRVWlUUUsrMi8zMkZUcjRmNUxqNGQwdG1tNkJaQ3piMTB5Z0d5czlR?=
 =?utf-8?B?bFVpNGJ1SzZhRldQTGJRMFY5dmlORi9ERHlIUGs5YnJmN1FKaFVSWDZhU1My?=
 =?utf-8?B?dm1iS0pDZFByaExNT2FkNkRrTWtRb09JNTNVVy96cTJMZjVQWFA5TU1YS1c3?=
 =?utf-8?B?RWJ2alZBYWxMWDI0WnNxY1JHMHM1VzZEMm85cXU5Y01seXFJU1V5aTEzOThh?=
 =?utf-8?B?WmxZeG9VaTR0UVFiUEVWbEFDSW5sNVBUYzB6bzYzKzdUZTdCRnI2eEdBWVZT?=
 =?utf-8?B?L2thakhVcSswQjU2WGowN2JXTXBDU1Y0eFE5U1czRHI0U2RBL1BSUkU5L2pD?=
 =?utf-8?B?NEtwWk11R3hrSEJ0Ni9YdjFWSTVJRjd2SHlJaUJiZnRoRlVieFdwalNDYjk4?=
 =?utf-8?B?aDFpUnpDQWc2b3U3QWpGKzk5M2cxbmwrVVJSYXBRR0NOeDVjWDFtam9nN3NR?=
 =?utf-8?B?WnNCbnNRZU4wUzlDc1gyWStCTklVc2lCaUZPeVlDV2FtUmd5MS8xWEI3U3kw?=
 =?utf-8?B?SnpzR05Td2tabW44TGdhdE16WFBpVUpYUCtUeEs2dUVnVEp1dmFBTVQ0Y1RN?=
 =?utf-8?B?R0JGK3JzQzEveHVodWZsQU5UbHdDRVRlSHF6MlIraXY2anU4U2czQzEyQTBX?=
 =?utf-8?B?Sm9qd05yZDBuSVRwbVBBeXRoR0RianQ3TmhEaUhFazlvZit6THJwNFdHZWxH?=
 =?utf-8?B?NG85S0twYzRVNlR2R2VWRE1URjlnQjhpd2Z5Tkk1M2d5MFQ2ZkRoOFkvNEF3?=
 =?utf-8?B?VURKb2FRck1NWkJlUXB2VkprMzRsdXJkTG5uUU94d2pKNXlQeG9lM01WeFZL?=
 =?utf-8?B?U3o5Y281aTkxcVpZSDdQVkE0T3A1QmFocE43ODU2eExlcDY3N1BybjlqekMy?=
 =?utf-8?B?V2pJWGlQVTBQRURLZjNibmZraE1zNHk1SXQwRGU4M2pMclEyTDl0TldxVCtk?=
 =?utf-8?B?KzNrOTQrZllYTjMrSHlvUkU4cVBoZjFIWGpXMmNGbUE4Z1huMDRLSE1kZmNn?=
 =?utf-8?B?VU5ldkhNN0JmVGVBeHFsVVhLcDlNam51emx6YW82V3h6L0NpcUpVcDNpbW1h?=
 =?utf-8?B?ZjZiWFpIcXhZQW9oUHAxSjEyTzhPdVlrbGdBWTc5RVNjanhzNGRWa1k0Uk1M?=
 =?utf-8?B?eWI3R3djdFpZQWFtUGVIUm1HQ0pKRVdsWEFUYWtTMXpOK1hGVktibXlWK1NK?=
 =?utf-8?B?dWE3UTJQdUE2aHNEYWZkY3Q5RTFwcVA3OGtMRlRPWTJ1cEJ5R1o1OEFxMjln?=
 =?utf-8?B?bDRLRFY4L1ZyS1lKTEpkNEkwbnN0Vi9tSDBWcHBqZGFTRFFGdUFQcDg1L0w5?=
 =?utf-8?B?RzcxU3VBTjBUUHB0OE1UQlhQZjd5ZUlQOUxPMHB2akREMW1tRlA3OHk1L1Zk?=
 =?utf-8?B?cG5lZzRDcXAvVU1rRDhkWFgwTU5NdkNONjdxWk4wUDJSUW8wV3JlVEU0d1Zr?=
 =?utf-8?B?bm13YlJiT0VmWGZyOHdZbUJXVDNVWVRsZzM1RUpqQ2Q2OFkxU0pWOU5NdEdp?=
 =?utf-8?B?ZnhERHQwNzZYOEQvbG1rc2IvVFZFekF0R3NCdm9rdWNKY2RpWjFvbzJWamhZ?=
 =?utf-8?B?V21XZU15ME4wdS96Sy9ZMWthQXNkZTN3ejVyd0pDc2dVODZocnp0U21ueFRt?=
 =?utf-8?B?OEMyKzFmUW43aWI0cW9oaGRWU2R0aXI0Q3JYUmxTUjl1MERwWktsL0JkNFNT?=
 =?utf-8?B?eTJURFRtK0NJcjdXSHFadDNtYXRMT0xUT1JoSE5uQVE1YzcrRElzQkZSWFAx?=
 =?utf-8?B?ZUN3aW5XZm9qTENEQklkaXRmYmpGK3dJSm8zdFVNK0xhMHRMR0RmcGx3N0F3?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eda2d1c-88fd-4ec6-335a-08dacce4ee08
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 23:54:44.6356 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vGgmLeUZma75ogLbsi2jWXxqMvsBDqmMc8LB8Y2utFPnMyvcdn2HKuUeZWWrz4JQnvIO2eYD1CAOKVCjBPbcEu1eQTHRrQePFUDo6aklino=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5965
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669161288; x=1700697288;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uec8WIuyy4LNVJ9vB/SwQ4tmFIHCy8klJmNpG5oZGq0=;
 b=JeUIrgO5mapu7VbGNiUG3B0yUp+eVsKgTQ7lnFqqlxOBJW8kxzRh0uOQ
 AAItqZUZeYbUCLbrB1NHZm6NZ4O39u3IgCahtj5xDYOi1qfc2gMSHnFDG
 v6litxCCxGYJdtcmMtjaZyGYkjno9toxOG9C48ULSKrz+cm/lmySDH9Gx
 QHdqk7LBKnfrkq1xdgoRAYYPxEhlde/LRBXKcnpnSQTKUNw/tiWRp2XVm
 6bG9dngWaAFizy/1fnT/Xq8Bo5Co/lQ8XgIgEGP6Qs/iFlI+UXLFX/z8Z
 qUnCbS9wdOjLjTLNKxfDjsXJnT/ArrY+0VepFhSd2F3M0raxsVxfPrKj0
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JeUIrgO5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: XDP: fix checker
 warning from rcu pointer
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
Cc: Magnus Karlsson <magnus.karlsson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/22/2022 3:48 PM, Jesse Brandeburg wrote:
> The ixgbe driver uses an older style failure mode when initializing the
> XDP program and the queues. It causes some warnings when running C=2
> checking builds (and it's the last one in the ethernet/intel tree).

Um yeah, I forgot to remove the v2 from the title. This is only v1...


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
