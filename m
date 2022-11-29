Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AABE563CA80
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 22:31:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BDB441767;
	Tue, 29 Nov 2022 21:31:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BDB441767
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669757488;
	bh=FZdiQK8dNSADVOFYVCMm2MT2bdX7VmscmAAvHyzPbMc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HBePoAXT0NzydemwInaU2IjTepl9Ur+mDWYnYhEtiAgDEtvCteJyQGR1f5UgrhwVg
	 POHpi2pGZFU52wykCwPwxhYqZpPG20jmuVHMyzK+XtI2NtEoFdjkgnlEBPdrFKoVsx
	 6pyMKdee75oyvz8ZycCNTr5lOqyhIuJiQ/UtlMzg6mnHZMIsg5RmbouiVyo6PSoFou
	 yUjHGt3eI0EyGnoFzJ4tbviPWYMkfgDUhtzMcRobm+wuc6Xw4UjVEa6M+rf6NYnZ8C
	 gJxPZ285jIE11BB8x5fvUfQdBc/8WTE3DR/Q7hgu1McQZ/a8Ypw8h1/KgGgeKaWJhl
	 Wtz1eemsc/YnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUwJF0U77Gpu; Tue, 29 Nov 2022 21:31:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA1D341718;
	Tue, 29 Nov 2022 21:31:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA1D341718
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13B801BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 21:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE29E60C19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 21:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE29E60C19
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tsjkZbrdWW-p for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 21:31:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA10260C0C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA10260C0C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 21:31:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="342156516"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="342156516"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 13:31:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="972848571"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="972848571"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 29 Nov 2022 13:31:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 13:31:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 13:31:18 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 13:31:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L05usPx6LMNSygtDJzrPJBnTFjU466Nxtyb2pY6bHZahl486JVtYW//lGpmJT0SrpXUcHKLGYVEhgZMeMaOOlSg4sOMHIhEFt9qEThfUQX4fwjEhKF6nLUA6UjhWYnLSc6jlhATDdP3NH6beEYP08QbtmNwoqLthDYgJLZIxGVDz4+BpM6JH4dQuXW65KSPZ8gVVNIJiMxf/nzhwJclXGHDwR+DqCtQBYPJyB1bq6lsxUujpKBzJr9H3QnfRC9Y58cADJHSPUc5c+NtO9JqiQ55q5QyY/2kjRdhrcOy86ddOlkNjlvLBjOBnLHPYAzPWHUOvKKWRmUjViiZMsu71xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FwZqgqjA+lWlN6FAgnJ8FWLqqRLxUCsStTH8Q1Mkgy8=;
 b=VeoYaWqVFagJWMXO1jzcK9ZQvR2PCgw1/ZtNfA62bhu6blqt5qr9cTahjRiGtzM57amJwrRWyQaV4GG29Z8CoeUoa9ifuDU7Bhr+lUxAEHPc/F6HOKrttZVHqesRjOHEKyseV6RjfmtPlA0U+SxmtmmtIrWQOG4fZvVJE6hWfmWMfhPut4KKmIAfjLgledwU4aYM2jG0bRgnNmULkgDYnSCx2PflCf8c7UfpJfQsbVChbcFpbtVNAlYk8AHbtj816BxzXfHDd0KH2x/QqtOgWW0guUQpvVwL0/KzaTpbjauYu3umvpLZD+FQ/ytFTVnEP2UvLMXgYG7PwmVGbuAtBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by BL1PR11MB5381.namprd11.prod.outlook.com (2603:10b6:208:308::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 21:31:11 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::d9e:bd1:43b5:e27]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::d9e:bd1:43b5:e27%3]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 21:31:11 +0000
Message-ID: <c094ff97-6f1f-3724-29b4-885c27f918d4@intel.com>
Date: Tue, 29 Nov 2022 13:31:09 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
 <20221128214749.110-5-paul.m.stillwell.jr@intel.com>
 <05ae38f4-2e9a-7d69-91b9-f983bfdbaaba@intel.com>
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <05ae38f4-2e9a-7d69-91b9-f983bfdbaaba@intel.com>
X-ClientProxiedBy: SJ0PR03CA0249.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::14) To CO6PR11MB5636.namprd11.prod.outlook.com
 (2603:10b6:5:357::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5636:EE_|BL1PR11MB5381:EE_
X-MS-Office365-Filtering-Correlation-Id: 8dc3065b-e682-46b6-4255-08dad2510903
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QRD34Xc7d0/obYCkCLLoTr6NfoE1FezA9Y+EDmuaW6i0wFLKlkB1VvABFBWVkkWQ0bBCtP0uFL2kLp3tVtccllaXsitBt63VT6CiwrHt675VFhplMLlMP091quDDwzBVBUTtMDhbdBUqn60COiBeV4aJONboWtQpFXnDWUqW2wZcKJ+Txjo06KMfTMwhRiKYhY/6uVmO3JTRFtLu15rGV+Kjpcz380n6gZz9WUe/gKLsqDtp4zUrHd975aA3Jwa41bdF7HwseZiH3JUpV+5AW7NShL7sPX1HA2darioxZK6PNTbM01jC9F9HIZjXJk/l7w2481oprarGrxKqgeLR7dI3StXys2AuqmBAf6+kUSLj6ra6fys5Ibbe/9wiJOiMy6KAQdCYxzt9hvYg1W4+HMg5wTmUiL6lO2/xnH1ZXX2TKrV76jvVl81aUMTUwM1BZys4EuWk3873/algudwuwQZHdMgLb0Z8pcbhCAi49H/xLYu/WBF68o5mMpPV2lMZywHWUU/jcs6IPAWOYPr3SFt9Wy2GsH7WpkA1wPZVAHMwCoqDN2TS2iTvC1jBqEaBiFR9w+H6MFPw47g7PA+Mc4qevTexji0flXsouTGTYtkK2wWYVFejsL88B6aucSfkyaz15POqq1qjx1WgSZw8Tkxay/1JOSNvlL7KehJBIK3oIAzsxepu83II1Iz8mLZR6WykMVm42e3FtA0uLXAw/48UHv29qAw48+LJ8/kiHew=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(39860400002)(396003)(346002)(376002)(451199015)(316002)(2906002)(478600001)(36756003)(6486002)(66946007)(83380400001)(82960400001)(38100700002)(26005)(6506007)(86362001)(6512007)(53546011)(31696002)(2616005)(186003)(5660300002)(41300700001)(8936002)(8676002)(66556008)(66476007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amhzeVlkMlkreFRUWFpTRkxoNXd6amUvZzZlb25ubUo1NktLSWR5ZXFQL3RY?=
 =?utf-8?B?c09udEdYb3g4cllLVGZxQUpFSnFYVVU1ZlJZaVFlbmNDUERWMWtLY29VNmg2?=
 =?utf-8?B?R3crSFdUV1RIRmw3TWtqREx6WE16QUNXcDFTN016Y1pEYis3SEgxL3dmdFhh?=
 =?utf-8?B?VURsVnF0cjljV3Voa1JWZ3M4TVd5Ly9yRVNJRllUTzg3akVSczJTY0VTc0M4?=
 =?utf-8?B?TUl3K2UyWlFsRmNjUmlOSGVKbFNVV29mZVFEdDdSbm4zc012Q2E1bFRpTytV?=
 =?utf-8?B?bWtUYmI2UHhRRUMreW83SlRURHFYU2JQYmdsVkhyb0QvVWNEa0dHSVhCeENI?=
 =?utf-8?B?QUZGZUI3ODB0UC94YTU1M3JSSDhxa1pxSkxwRzdoS1RLTnFPaVlQL3JUUjdn?=
 =?utf-8?B?RjlsZGg4SUpPT0Nlek51c0ZYdkV3OUVGU3NtdjRmbGlyUHBHeGhaOVJ3Nkgx?=
 =?utf-8?B?bnhyMVcrVXNRbmpKOVhGdjdPMXhsM0hjS292aHlPRWdiZy95QVVRaU5Bc1RT?=
 =?utf-8?B?NVdHbXF6NW13aDRLSkdDRjB6YjgwdllrU2wwNnhDTWQzOUhXQjIwR21yUTZa?=
 =?utf-8?B?STE1ZWphQ01XQ3dMT1NBNkdSY3ZxY0xJdXR6SXFpc1ozazV1RnhBYlN2S3U3?=
 =?utf-8?B?QlZ1ODZLbGZ0ZTJ2QU84VFVLZFVrQUhhVjVrZWFzNFNQYUlmanpHVExndks4?=
 =?utf-8?B?d1ZFSnJFVVNEcFV0d3RrRFQ2OHhlcjcrYXRuNDFsdThkVkMrN0k3MDRWVTcy?=
 =?utf-8?B?ZFpyeWpWNlQ5dzEweXZTOTQrNW9hQ3hGanlMYjNMZVRONlNoYndObUR6MWJK?=
 =?utf-8?B?VEdWRWMvRlE0Ui9VQ1poWlA2blNVTmpXS1FNZStWLzhucG1tbm9vdEpaYXdM?=
 =?utf-8?B?VWMwMUVsbmtpdEc4b24vaGhjR2kzZFJ6TkUyUjJYK3NFV1BzSVlacnA0aHZQ?=
 =?utf-8?B?OHBpV0F0bTI2akJTL0lMU1lQeFB3WXFFZmsyYm03UHVmaVhwNDl3MGJEWnpO?=
 =?utf-8?B?d291R2JzbzBWL0pWaitPMC9aVFViMFhmaUxVM2VFQmdZRWhlUWkrbUExdWhy?=
 =?utf-8?B?Q1dWczFieVBSQ2J3UDFWSCtZODBzeTd0Z05qVmZNOHNzVVBEcnk3citmTEhH?=
 =?utf-8?B?Qy9jVU5ZbUo3ZGtOWlNmNUl6SHJPVnVmT2U5Y2xOOEdCMTY0Y293eW1jRWIx?=
 =?utf-8?B?OThSQ1hIM2dGRDhiYVF6K1JiUURkL3BidWlzV01jeFk3ajlzQ1BIMDhMcERk?=
 =?utf-8?B?MWpuNzc5STVLdi9nUWFMUFB2azVnelhORGlhemE4bXNkMzVYMXNQT0tsejZ4?=
 =?utf-8?B?YTFzVTNZcnJWcU16Tm9hdHBTeGpLVldJR0lZQkROQ3RBSlArYXhoU1h1UW90?=
 =?utf-8?B?UXc1bG9JeHVVSDhNZTFBaU50Tjl1OHhmbHVwZGZTUWpTbTFpTi9jOEtXbzRk?=
 =?utf-8?B?RkNCZ3E1RGR2VTk5RWZUYnJVSVhGbm1jaHgvTThtRDlzWGRiRUhJUU56ZnVk?=
 =?utf-8?B?clBONTl5RXlIVkN2MGlidUljVUxhNVVEZmJzUXNzYnVVUWQxUk0wS0tXTTVF?=
 =?utf-8?B?R2U4Q1ZkaGQ4ZjFneXljai83SnJpM0JYV0ZzNWJxR29LN1JOdU9MNGVKMnk2?=
 =?utf-8?B?bjRVZGdrWGdSOENZb2RGYVc2S2FsUFhRRjZyMS93WFY4eEVsS3BnVGpRckNB?=
 =?utf-8?B?Z0EvKzZ0aW44QnBZTWNvQ0dLODZTdlliUjdROFRuNVNRKzdQTVQxYXg0Tk5Y?=
 =?utf-8?B?cTMyVnMrZ3VsdnI2amZqM0NCc1JWTkxjaHdkMEsvV2t1MFJYMUE1NlVVTjAx?=
 =?utf-8?B?MHhJSUJLS0tPMFJpMHZBUkZjZDI5ZXNMbE0zYmpFd3h1bHpZZm8vSldWamVX?=
 =?utf-8?B?endYTjJZanVyN2pZVTF4eFJ0L3g4YnVVc2NzTHhLUXJSYnkzUEsva28xd2FM?=
 =?utf-8?B?eUl5SUJoQktkWWRBVGk1ZHR6UnRRUFl5SXVURm5ZbERMWDArR2NHS25rSWwx?=
 =?utf-8?B?aUJXdFIzTkNKaEFIWENCc2M0a0YyVEtIYXVBbTdrNFMxbEN0bTVGSitkMzdl?=
 =?utf-8?B?TytOa2hXSlhGRlR1ZHU1c21BV25VbzFlNSsyVlZobDFZUTFtbE00aDlFeGhp?=
 =?utf-8?B?RWhFejBjeWhuU2VBU2N1ZVVQUkVZVkZRblJQZUg2dFkwbnpZSmIvaVFyTDVT?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dc3065b-e682-46b6-4255-08dad2510903
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 21:31:11.3144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q4i+/WKdXQxi93oqXkeRABZA6hi3WYRuOJPhN4ojKQ1P7w+vAla9PAbXH5xfiNKBNrri99ppnsR/nDXSr6eR8tjhm2FOHYwAsw6vzRt3mG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5381
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669757479; x=1701293479;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0bo8BBNSEA3tO5zUuDMxFibCT18z6dqV12Llo0HuVIE=;
 b=FjLgzpdkYzIFm3O4MNRdg9p9iiH8VxLFbbbR4hDNN6SmZBUZRN7fOHXT
 6NFR/+4rKx43Xmk+I4SETBsTW3+G61rFpaHPad7KgwxMAm4mkLWyjT5e/
 y8zp6bEihJGDjJ7fGj/w3m3P0Kh0nGTBnCV4f8VrjwQ6FSyVsulxHBV32
 Bmb0yiVLn4O0VCqcpSmSqSp3G+2u7jcHKi/b+TqSi501P5w8HcLlbqIlr
 gEUixCx81ck+xwr+5k3eQhH+Zzj5YWbi8XQKGLDce7nlKYSGRQuWfpTh0
 Y75yRsQrCO2O3ejMA1tmunilacYOsldQBxNQY/gSN+LOLcSeGE/Ivs/Aj
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FjLgzpdk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] ice: disable FW logging
 on driver unload
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

On 11/29/2022 4:05 AM, Wilczynski, Michal wrote:
> 
> 
> On 11/28/2022 10:47 PM, Paul M Stillwell Jr wrote:
>> The FW is running in it's own context irregardless of what the driver
>> is doing. In this case, if the driver previously registered for FW
>> log events and then the driver unloads without informing the FW to
>> unregister for FW log events then the FW still has a timer running to
>> output FW logs.
>>
>> The next time the driver loads and tries to register for FW log events
>> then the FW returns an error, but still enables the continued
>> outputting of FW logs. This causes an IO error to devlink which isn't
>> intuitive since the logs are still being output.
>>
>> Fix this by disabling FW logging when the driver is being unloaded.
>>
>> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_devlink.c | 32 +++++++++++++++-----
>>   1 file changed, 24 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> index ca67f2741f83..923556e6ae79 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> @@ -378,6 +378,10 @@ static int ice_devlink_info_get(struct devlink *devlink,
>>   enum ice_devlink_param_id {
>>   	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>>   	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>> +	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
>> +	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
>> +	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
>> +	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
> 
> My understanding was the the community doesn't like private devlink params.
> Was some investigation done whether the FW logging can be done using some
> generic API ? I believe we had a discussion about this a long time ago. Maybe
> I'm a bit out of a loop at this point :)
> 

Yeah, I looked at all the other devlink interfaces and couldn't find one 
that really worked. I considered adding a brand new interface, but 
didn't want to go that route unless we have to because I'm guessing that 
every device that can get FW logs has a slightly different way to do it.

If you have a suggestion then I'm all ears :).

>>   };
>>   
>>   /**
>> @@ -1484,14 +1488,6 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
>>   	return 0;
>>   }
>>   
>> -enum ice_devlink_param_id {
>> -	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>> -	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
>> -	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
>> -	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
>> -	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
>> -};
>> -
>>   static int
>>   ice_devlink_fwlog_supported_get(struct devlink *devlink, u32 id,
>>   				struct devlink_param_gset_ctx *ctx)
>> @@ -1743,6 +1739,26 @@ void ice_devlink_register(struct ice_pf *pf)
>>    */
>>   void ice_devlink_unregister(struct ice_pf *pf)
>>   {
>> +	struct ice_hw *hw = &pf->hw;
>> +
>> +	/* make sure FW logging is disabled to not put the FW in a weird state
>> +	 * for the next driver load
>> +	 */
>> +	if (hw->fwlog_ena) {
>> +		int status;
>> +
>> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
>> +		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
>> +		if (status)
>> +			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
>> +				 status);
>> +
>> +		status = ice_fwlog_unregister(hw);
>> +		if (status)
>> +			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
>> +				 status);
>> +	}
>> +
>>   	devlink_unregister(priv_to_devlink(pf));
>>   }
>>   
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
