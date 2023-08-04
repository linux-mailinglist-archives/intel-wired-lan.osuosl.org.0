Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D254770782
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 20:07:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2882C41730;
	Fri,  4 Aug 2023 18:07:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2882C41730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691172462;
	bh=g6TXpEZB37E/1W00Bv5goNj0C/ad1M77URx2pquENvg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oHulmSW1SnUJVVUSWgsZdoOn48zlvNVLXPzCibs5FimwBGh099WbSp/wVIhuGUezl
	 42JfxL72gsnTNKH+PWDdIhoOpuV3D0LerWMEmR+dR7WMsj10ZUuBwFRD8S5SMqxLvJ
	 i73D8NAcjVz2GVF5Ad18y6fOFBRFCQhFziUJavPj5Q2OHjFkYyQ/Z0XNjrA9T4bK16
	 RrreIenkGEAYK56NBAb79t27A3jTW6LrOV6PO4h0Ecb6ZbuGpxVnHirRh1DzZQwIoQ
	 zIf0+D1KidFEF5/reqg08nUarcCOU8LKNtC9KbPeUXR7mQd1Ja1i7Xd9TOOOLHX+ll
	 U/EpmQYIfzUaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FtdrDglHAnWB; Fri,  4 Aug 2023 18:07:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6427E41777;
	Fri,  4 Aug 2023 18:07:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6427E41777
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 813381BF346
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 18:07:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A46682EA5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 18:07:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A46682EA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T-C31_Lh1cLO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 18:07:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46C258142B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 18:07:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46C258142B
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="369110412"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="369110412"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 11:07:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="844169056"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="844169056"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 04 Aug 2023 11:07:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 11:07:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 11:07:20 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 11:07:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EUGEDbcYUHw0316xM8pmjJJ7yE4XpAioiz3uAkWuyxNBWJquGk0szNY59NPz7O170NXl7miYT4OAyrttCvvPxlPdOGWlLybX20adYma9Avi5493l6NwAJMrbaJz1wbCOa/my3Ayf/Jk56fV9xyemJCgiaBLDqWIgT5x/VCpfSPeOJ5O9iozXYqqyU444pRPRTiASonNBSkcPNa7pSLI+h5Z/5PN6gVTzw7Osr9nLFxFmwtsJp2FNrekBO9F6HdeOdYJg0aD0fk2I61jUz3AKeogiDmr4qQIOT1PxoCk7CHjckzh6jkjC9tqBSBurZEhzj18zrr4xftGDj8O10MX/Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nuncOGB97EpfuNE3EoSO7ZSj2LKK4zlnJagdL6TGvdg=;
 b=cpFvptUPDBe40sYxqehSLLMClycKAdJT80l8IOsIhz0RYenqa5U05tsvUqJyUYU0kpb3N9tePEpLhzNzCJ4/ok8SOm1+lPM8auYKDgqeu1mDT330ryF90RTqYb94VAlisn+zqHeerI9xgUS+WH2Yk+6P2ywnTDAge6sS9XhQTwnJg+dlnayK3hf488YrLP5RbG9lkHsBxL5YTXMhbmQFubjCqfkIgTzqjf2nqyhgIBEqA8w5b+ZxmljLuRGcgW2RpGxv0zAuGHqtmS9bgXrCoTMwaPhTfoAGQDbAWM0pZKjA90/BA/Lfln+uLeUXpg1uHKdDM6eKI0iDgJTn61rfsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB7678.namprd11.prod.outlook.com (2603:10b6:208:3f4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Fri, 4 Aug
 2023 18:07:18 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 18:07:18 +0000
Message-ID: <2e163fb1-492e-8a1f-9df1-270c652e9799@intel.com>
Date: Fri, 4 Aug 2023 11:07:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20230728155207.10042-1-aleksander.lobakin@intel.com>
 <88dce445-180c-72d9-c7a5-f0a18a18c747@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <88dce445-180c-72d9-c7a5-f0a18a18c747@intel.com>
X-ClientProxiedBy: MW4PR03CA0348.namprd03.prod.outlook.com
 (2603:10b6:303:dc::23) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA1PR11MB7678:EE_
X-MS-Office365-Filtering-Correlation-Id: 1bf6e07b-fbb2-47e1-648d-08db9515a423
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wFTVjtxhwwcVJpfjfUO0hTpu5vTf/sjFX2Hi4gnkLYgoylnfug34n2iHlJ4pseI/4qT/kZNCcHC7aG70U42HcmqJpW54cbFeBYw2+LlQ2vMdDx0913nxHlORaLlkLxsImNjdNKTDAZSVZU5M3nNNhtwYIuBpho8TVD1Ry2rhdyinmR/oF6syT4fBrCJHQHzR6HTVyv4OxdI0sBV+oYc9i/w8WY6rvWNqW8cX8SKxxzzG34fTs4Nt+gRSBzLueqwo97mvi2KUy0oleKFZVorrkiLpSpvUB9qP7I3oPG63YvwGz9/H2WAqUyim/nOuV7gOA4sa2b3c3U5Wo3P+ZwlFK2mgbcybwpxnufywyjeZcSwUzY3SLA75JsfR1Gm5GmSjVYgzxcwa7rZhp44Ggg/F+g4jsL4H0RPN+gm/SNY5BTwI9WhTSuuVppMwXogoSOecqh8yLc7CzRORob9XpWC1pzeacNKLE0w0r/AVFPjeMrlCSDH4yQKUbfcyGuYRXbgYkHG3HQV0CF7etG7ggItfmUy6L6SMWJ5erihxW7m4p0gUVubRWxFwc6oQo19qV/WCaQcVcWFxIvLcU1UcSaccryIkPMp1saKhjvlR86X8E4Eff8Rwbqpj7RMnORhweDWrDFVOlxIsGNL8wZtQV6Q8mg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(346002)(136003)(39860400002)(186006)(1800799003)(451199021)(36756003)(86362001)(31696002)(31686004)(478600001)(54906003)(37006003)(82960400001)(38100700002)(8676002)(2616005)(83380400001)(6506007)(26005)(53546011)(6512007)(6666004)(6862004)(41300700001)(8936002)(6486002)(7416002)(6636002)(66556008)(2906002)(316002)(66476007)(4326008)(66946007)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2t0RUlvM0lBRDhZZUFlV1hPenJpelhUTURLWFZjZ0ZpMWVTSy9ZTjRZRkcv?=
 =?utf-8?B?dDlFQ3JFTmo4enJWNGpLd0I1b0hVaENKZGQ0d2htVzE4NjhSb3BHU3FQbits?=
 =?utf-8?B?cE50SmVvd3JScnB6a1JTUUgxQkFWUXFZeUt0UTBqZWxyd0dYZ0lTZUlrNGFM?=
 =?utf-8?B?TEZkaERSZkRxeWtqVERTd2FEN3B5UkFTaDh5V0xqbC9xRG12UXdrSUxYZU9q?=
 =?utf-8?B?aEEweis3ZFZnay95ME9TOVBGVEF3Z3V0M2crRk5NUS9YcGtVZXYrV3FacVhk?=
 =?utf-8?B?bTQ1eWJvdDhIVkhwdXByTHU5Y2c5TWIwVU5KWG55K0NWK1ZxQnRpZzUyYmV4?=
 =?utf-8?B?ZElONE9uS1hRMmxVUGdudmkwcFZiS05nV3JRTGJkbDVYby8xbllJcW1XVjNC?=
 =?utf-8?B?T3NpeTRMVzdLVHhCR2dsbktLUDA1bTEzcy9abkU3Tkt3RGNWRFlUam9ZbjNB?=
 =?utf-8?B?RndKbEs3TUhYVThkd2QydVFrTC9nSzIvZkZWTEtmcnVuYWF0ZDdSRWltamgx?=
 =?utf-8?B?MlpZZW5rNXJLNG1mN240R0VocTFRUkt0ZVVta3A4QXhrS1BBNnpiMUdJUXVU?=
 =?utf-8?B?VjdHRDRSK2dwQVEvWmpKZTJRRDF0TFd6cTBHdXhyelJZd21DVHNwMFNvNDU0?=
 =?utf-8?B?ajFIYmtpM3pQa0V6akluVndvUUNCUG4wWmNlbFlERkc5TmZMTVgyWEo0RmE2?=
 =?utf-8?B?ZFI4Mm1ST3RxdlNYQzU2L3A5VVBFemdoVHo5TjBJU2xHOWRmU0FsNy9ieDFv?=
 =?utf-8?B?YTJlcXdmcXoyZHE0OUx1SUI2d3RmL3BieG5IVDJBSFpCdW9QSGhyMlI1QnAy?=
 =?utf-8?B?SUJSNkV3dFZxcjlBNkJlVUtnTUs1bFVHUU8vVWVVVkdPQ0hLckNqSFFrNGJ5?=
 =?utf-8?B?MG9xT0ptWnJBcEdVM3JHb25SbG1zVWR4aEUrdU4zYTc2RHpWeDZ1OVhSTFFr?=
 =?utf-8?B?UjRYcURKTUNuaDVoK0lXanZ2VTYxY3dCYlR2WVVwSW1OSkhLQXZiT05WQTRE?=
 =?utf-8?B?eFErWkhtNXY3cVN0cTVVbUZpdTRKdURPaTZUQkxwcFdDQnIvVkFyTTZHU21G?=
 =?utf-8?B?T2UxZmo3YTZ2OXkxUTM3TmVYVlhLQmdWZTlFRlU4bjZzMTEra3BIVTZKakpH?=
 =?utf-8?B?bUF3QklKSTBRR1VDdU5CSnNDUlV1eUhEQkpjREtHYy9MN2V4ODh0V2RudUxi?=
 =?utf-8?B?VGNxVEh3TjJkRm8rV3Y0bFY5Mmt6elEvNUYvNE1wSzN6ckdiU3p1c2pDa0Nm?=
 =?utf-8?B?ejNkMkU2aEU0OE9xTWJnUGtWLzJoMGdDTVJKMWlpM1J1NWI2YXAxbmRQa0JB?=
 =?utf-8?B?c2gydldhbS8rOVUzUkUyZXlIS01oK1cwUzljQ0VvWk9rS2hXeTJxeVVTQUN4?=
 =?utf-8?B?bzR1NzgwZW1DNTNHdHk3aXNqT2VBTVp2ODJqQ2phTEdiaURnd2hvOVJsR3Vh?=
 =?utf-8?B?c2ZtMkgyUERLSmRLMWJhWDk2MXAyTTF5Z2VjQnVJTkVleVNiZ2kvQ2Ywc3Zm?=
 =?utf-8?B?WWFZL25pRHVGZFU2TWErMUZCSnQwcURGU2FFR2VFdXpiSjZUekRLMXJTNWV5?=
 =?utf-8?B?QnZDVktiNk5tSTNJVmdsNTJMMFExMEFMS0RGUmdyOEZVSGFkQ3NMOFY1THZ4?=
 =?utf-8?B?b0pUZjhnVVZNL0UwT0d3OCtXbDFKbEdvK3JEUE5NODVBbGRIMWZsVEpobU8z?=
 =?utf-8?B?SUViQUdrckhlenZNWmN1OWtDNnUrcTcvLzRraFJGR3B0Q1BpRnJhOEhxK2Jq?=
 =?utf-8?B?REtKZ09YRmhjYUhyd1RTaVg5YjA0bk0vdDhEMkJZMGdCVGNJdW50VXpSeDhK?=
 =?utf-8?B?eGFHVmxvMVRlcC94bG40T2k3SmhpSTZ4M2FHRGV4VnREQmlrK2k0dWVyU1kr?=
 =?utf-8?B?NldUREdpYS9NNk5QVHluOURHS2dKT1kzL2JMdkZxblI4QytRZ3hQdzdzd1B6?=
 =?utf-8?B?UmxjMXZEQjNvTUloU2Y2SVVjaGRkbERDalQ4U05JZ056dGMySTd2ejJTcnpM?=
 =?utf-8?B?aEVKc05jeUpqWnhxVlRLQW40SWw0Q09ieFN1cGRvZzBVUWVGYkdQcmlheHFE?=
 =?utf-8?B?QzZDVUQ0R2Q5Ny82eW9EdlpFT1NhMjEvV3ZYb1ZZT091cE90S2FocUY4dXBN?=
 =?utf-8?B?dEFoVkNOQ3BleHpVa2dObmJQMnIvbm9DNG1lM1hhL3YyUUgyY2xod2drK3lh?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bf6e07b-fbb2-47e1-648d-08db9515a423
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 18:07:18.5349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MJqM0mt9L9h1Kzga9bFa/Yae1ZoM6+1EVTmoRNbrcnwGBtU+az1etIKWqnjyqj84pk0JQP/cAJSEVDw5Ri7oQb+etgd9dlxfB6UFvkts4Hs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7678
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691172446; x=1722708446;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=snGaJw3+Do0qBeXUWDn88zOHanC41An9nOjBnTVkTTI=;
 b=EWXhe13NNYBCblQvf/76reH76GGnSBN+0joMRv+5e6xiQJXdCIbZ3jWq
 T+djxclUa7H8oBnFG4QWKTCrfMocSHbwFEEKfW8pZAX+ym0pquD7rlncb
 BG06y4QYQqAPo+q6btnSImTbCxG1jnkxAAA8ZDnGOe6lfQNELqQre4SzV
 VLqJ4NSLG2WBczg4Zic0BRhKBqtOpGfPP8eXC0V5P5fzUmrrW/osjKtw0
 GcMH5Rn+kdnrWQodFdull5tEpuzOkZyRou9Rq0TrKVPqaSEe54LwUXyRd
 c1kOTZotxBLzri9P3pWH2SNd9HnEeuIxIsvbMnttnsfT+HcCflPDyl5oz
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EWXhe13N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] virtchnl: fix fake
 1-elem arrays
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Kees Cook <keescook@chromium.org>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/4/2023 9:38 AM, Alexander Lobakin wrote:
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Fri, 28 Jul 2023 17:52:04 +0200
> 
>> 6.5-rc1 started spitting warning splats when composing virtchnl
>> messages, precisely on virtchnl_rss_key and virtchnl_lut:
>>
>> [   84.167709] memcpy: detected field-spanning write (size 52) of single
>> field "vrk->key" at drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:1095
>> (size 1)
>> [   84.169915] WARNING: CPU: 3 PID: 11 at drivers/net/ethernet/intel/
>> iavf/iavf_virtchnl.c:1095 iavf_set_rss_key+0x123/0x140 [iavf]
> 
> [...]
> 
>>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   9 +-
>>   drivers/net/ethernet/intel/iavf/iavf.h        |   6 +-
>>   drivers/net/ethernet/intel/iavf/iavf_client.c |   4 +-
>>   drivers/net/ethernet/intel/iavf/iavf_client.h |   2 +-
>>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  75 +++++------
>>   drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
>>   include/linux/avf/virtchnl.h                  | 127 +++++++++++-------
>>   7 files changed, 124 insertions(+), 101 deletions(-)
>>
> 
> Tony, could you please take it via your next tree? I'd like the
> validation to make sure more different host <-> guest pairs work.
> 
> (with Kees' tags, assuming he reviewed and approved the whole series, I
>   asked about #2 already)
> 
> Thanks,
> Olek

Ok, will apply it today. For the future if you want it through IWL, can 
you tag it with the iwl-* target (and have IWL in the To)? Since this 
had 'net-next' and was 'To' netdev maintainers, I took it that you 
wanted it taken through netdev.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
