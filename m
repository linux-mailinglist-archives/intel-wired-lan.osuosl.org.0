Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D95BB7060E5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 09:13:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49F556FE80;
	Wed, 17 May 2023 07:13:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49F556FE80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684307581;
	bh=93r75cpIFhvcCiu7t3qcHmwAk/BLUjJIneUhamfKxCk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RjpH/wlMtGrhd34lJkod9VQyZVFmNbSz38ubSnaxJrzBUyi/oYGErCavkibMd0HPj
	 tSkXtN2cvFruDxsEFoS6J+DpLbyYpQA5CQ/hhxh8LiRE4dNmu5di9KoEvcE5CNdfB8
	 hlpW+egiA319S4dZA2YCtE21bdcMnHZ4KffA1yqSX7uovdhnwReizKBfCgRJZ+DQpV
	 j9lZRu4apADB9+NWtcekGRoLQdlBNquO8Gb8pvv+2U7DYatXiDLL+Ckn7eLZcYBa4Y
	 eKqAzd/2o7g6VQlV4CSe3phfjBZBilWs908DRs1b63wOYknjS2twztDZNQTTuiEVn1
	 TDvPnloiSLg+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gRNCroBZoKMu; Wed, 17 May 2023 07:13:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CC1F6FE6F;
	Wed, 17 May 2023 07:13:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CC1F6FE6F
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 363011BF48D
 for <intel-wired-lan@osuosl.org>; Wed, 17 May 2023 07:12:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A6E0405DD
 for <intel-wired-lan@osuosl.org>; Wed, 17 May 2023 07:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A6E0405DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YV9uqK8AATNv for <intel-wired-lan@osuosl.org>;
 Wed, 17 May 2023 07:12:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C67540185
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C67540185
 for <intel-wired-lan@osuosl.org>; Wed, 17 May 2023 07:12:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="415096775"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="415096775"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 00:12:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="734589713"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="734589713"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2023 00:12:52 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 00:12:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 00:12:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 00:12:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XvokAwZsvnQq4tIYE9ih763NWmitxA/tDFufd8AmlKBHYKMgkzSCmypCvKKzZzJdxVSGPivrE5wid5/djnKqbJYN94Yp0oosx+U5hagof1pNd+Dak0XsujNvSKxxfJHu9mbTbtMPmV2LAXGNggTazTGH4sCjPeZNg9Pq6+HhhIH1YL+INUSyWmA2CneT6PfzpR/C4+kRhkxOzvG/MSM2nSbzb00Nu7AiCwylqlQkiR6aiCYtvAO/LxFzB/YUfWpM2exH7cqVo55MVhk49OId3uVbvDYUb/1Sy7XHe3mVhIgBb589OzOww0gtxyvBnH5DTtrwtIXcdcbnJy5KuOTfhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=480za79uln/l8OCw0m0sor3MkZS8yWwQi/ti/m5IJug=;
 b=KVzD0iKFDBtyntLrVOnxHFVt3MQH+pSscgGwz7UrKCdPiwguaREPGoUnh8tmLocDaCSCvsPWx3mHa8oT+JccgV+iaCJQeDsF6UD/0+7QKVTBCO4gKDs+NAXxjS29oIxsxWPEUpd04DaGGeDD9x/MM5vY1l7FpGzug2hEAlYscCmueLAcfVNM53FU14QSmHHcNWPI7rGIRfKrfTUR82JtAlz2Atu3k3sLFKmmXhy/Ot/VEJAHy7KyfoisL8PtVBLOVKmp74Gkgmg4797d6zgY1dsnLjdp7PH9giLjnid6Nu+paH/ISvBN6c8g1m1RsUakqv4PYbkkVqgnuimdZOhtWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DM4PR11MB6405.namprd11.prod.outlook.com (2603:10b6:8:b5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Wed, 17 May
 2023 07:12:50 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026%5]) with mapi id 15.20.6387.033; Wed, 17 May 2023
 07:12:50 +0000
Message-ID: <992bd3bd-1ccf-9866-6a36-0bef74c5673c@intel.com>
Date: Wed, 17 May 2023 10:12:42 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20230517001812.8101-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230517001812.8101-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: FR0P281CA0112.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::11) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DM4PR11MB6405:EE_
X-MS-Office365-Filtering-Correlation-Id: 1789bd67-3836-4b4e-b8b1-08db56a61f9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F8YIUi+0GHqsXq0Sp54nIOELETNyEHsdlTd34+j46xy+ltux+LnfQi7tmv05FaNI02pQbEKdv3IFlCXn8tI1sbbmguXZwjcYIg9y0FGcVUsqxBbQtKAte5LKfRqZAnCN8GpGdbJbFv3kQk6pcxZctXmXyjUWDhPsGjTEm6LvrJPmJepxAlyXN+8o9VBr3DkbYQr324fDDJ51TruVFM7cnxpV5wHwQFabkkLVwz5oYqwaT4Gzh+TSjXxVD11tvZHmOaB2tUvGPFfMAFjykmnJ/RoJOkVdSLJu9wb4VqIvKV4XSxPjkuFYuVKDDLthqcwhDfzlG/7xxZAtr0XAfpI20E2u5i966z5cBP0077TwF2h+uE1smGoXe62KA239xFwiuLR1bB7iUnXBsunIdcgu0JmvcUI0Lrm8V+gTPRaPJUQeXGF30CTWDNOqvfYuX0U49q4N5DM8prhsBfplI5JXZlVpT94IOXULJGUA+3i4J6Lz4xRjccPJGb7bJir9dIG1P70qU3lOW5tOdAF2qcGzBTZ2hDqqchTVzBoKzqN11NL6KD7VEkkdfEwdYW5tK6BzkMdvylx6z+jGwuJnVsK6wpEZslp3VQ5aP+zJ+DfRVH27T939jHeXUDKKttUFWiTNagXEBlAYJQinGcYD56aNQQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(376002)(366004)(136003)(396003)(451199021)(82960400001)(38100700002)(6506007)(2616005)(186003)(26005)(53546011)(83380400001)(6512007)(5660300002)(2906002)(8676002)(8936002)(36756003)(41300700001)(478600001)(31696002)(6486002)(6666004)(66476007)(66556008)(66946007)(316002)(4326008)(86362001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHdRejZocVlFSlhwMzFUT1BBMjdiZEhmbnpPRktYUlBhb1V5aXJkNTdrTDUw?=
 =?utf-8?B?aUVMTng3N3VCRzVaZGhzeGhSUE54alBKb0I1VWNTcEdHMEtnTVQ1dTRuT3JF?=
 =?utf-8?B?MXNBc3RLTk5NcFVFbVpDWGZoK2JCMldjZjFGcCtoU25aOEswYVFzSWk5QXhT?=
 =?utf-8?B?OFJ0QXl3MnEyczU5VHdsUWFiaEtJNzZNbU9oRWVSTFgxdjJXbzd1RTFGencx?=
 =?utf-8?B?cUp4ZUw4ekZyRG1BOTM1aXFtcW9xaFoxQmUyT0k3Qk5lTDhzeEtwZ2FLUmor?=
 =?utf-8?B?eG84RzNiTzc1YUZsTUJ6eGFNZVBTaGdVazc0MllrZ0hLdlR3YlRxWmxZaUNI?=
 =?utf-8?B?alhzdmVCcjYwTzF3UWE4czdxQ0lpY25OWDdqbkhGY2Zzd1B0ZUVXZGN3WVFC?=
 =?utf-8?B?T0txaUJQYmpHZk1HVGVKZVBxVzJqOVM3SFZnOEtDb0R4N2dMaUNZbkFTbURk?=
 =?utf-8?B?V0NyTmFBaHFTY3lLaGxOaVg5QnZsR1hrS0VxT3R2TGZ1YlE0NlcyQ0pCRzZX?=
 =?utf-8?B?L1pIWTdQN1Z4cmVUcTA3anlrRGVjb3ptSFlWSnFOSHo0SmVtUFhjdlYxck81?=
 =?utf-8?B?Nmh1alh0dTQ5bnhmbVRZSjJUNFZwVGg3SUg3RU00ZEc1K0h5ZE1yNmplTzhB?=
 =?utf-8?B?bGFCcnV3MWhSM0RrblQrSWVuMHVubndXR1NTcGRRcEtqdE5NbXlrLzJpWGN6?=
 =?utf-8?B?MGNFUVljOFdSaUNNbXBiTUxjY0ZKQ2lOQUtvaU5rcjFOd0g4OFUrS3EydlNH?=
 =?utf-8?B?ZUtvaVpBcEdwcmJ3M1ZWcUdwcFBWNnZZd0E2WGpNbXFFNFBJVldQMGxkZjNv?=
 =?utf-8?B?TTVTUEFvbzc5b2tHZHlqb3M2VXFzODh3QklxRFBJd3Rld0o3dy9FZVpGTEsv?=
 =?utf-8?B?UmdGY0ZIVGdSUjdwbm53RUcybEZibkM0RW5hcEdKTXhyajVJZzAxQ1pzNDBu?=
 =?utf-8?B?ZnBHbkdMTWZUa0N3akZNTHA0WnE0eEpuTVl3cnB6TFZmV1VzbnB3RzJoM2x0?=
 =?utf-8?B?QkEvaWpsTTVxQVhiSXl6NXdnNEprWkw5ZkpzS20rNk1MczUwK0dSVnZOYU9v?=
 =?utf-8?B?T0ZZNGJ1NGpvU2V5K3lUUEw4V1FucmNrSkVtU3hSNnAxTU10ckpTbnpibFdy?=
 =?utf-8?B?MDFPRURkaENmcmhYWWFiMGlYRXRjV2l5QUtNSjFJalJIWk0wRjZpdnJyV3dr?=
 =?utf-8?B?dmtMUWEvK0U0MVhlOTI1L1k4Rk42ZEZjdUNIL3d2ODUxVDd4NjU1VDBNMWtJ?=
 =?utf-8?B?TTFBYmZjUnNncWRKUUFlZnA5MHpZb0pzL0lpQzhvWnBEMk5VV0VLa0NkSUgy?=
 =?utf-8?B?TkZsMTVuakxyVC80MDQxcUw1c2ZpY1hVKzdTRzlyZjl2RmxVMGtINGVUSWdZ?=
 =?utf-8?B?M3QrUUJVM0paT2I3a2g3QXpXdFJSSVBQS09VdTVNRmZidlY3WmNtaTI0MDVo?=
 =?utf-8?B?QXFHQU1pYVFvNzNBUEt3akN1KzJlZmRMVE1BTVJHdFg3QTRHRWNjRFBValRJ?=
 =?utf-8?B?Ym1mTERFSUhHZFMyZktEVG5laDhrS0h0eUQwOVJsY0JMMWhITmxSMm9Ja1Jm?=
 =?utf-8?B?aU9OUmZMZ2FUSEhUZjFBN3F3cTYxbjJpb0lZZWJvN0ozN2FaYlhjRVZhZ2RU?=
 =?utf-8?B?RXBhRUV6VHFzRkR2bkk0Vk5nZHNsZVBxTmZoMi9qMFdhUDg4RU1LUk9sMUl6?=
 =?utf-8?B?MUlORE1WaExHRXR3MldBRnF6cTM2TkloSkZReXpkZ2dxeDVaUkFMRmlSQlBR?=
 =?utf-8?B?ZEZZVnorQW5pMFNCc3NQZUIzQXM2UUVwcUswZkZPWFIyaCtEUUdIampTS0xL?=
 =?utf-8?B?RENDeW5RQ3k2V1FTL0o5WEJMazRWU0M2UGFoTzlSQzF4OVlsVnV3aXdzTkR2?=
 =?utf-8?B?Y0xQcHVHUHVOZHlXNWd2dmRmcm05NmFvMHp1dmhGSWU0MzhtVFZKOFROb2cz?=
 =?utf-8?B?Z1UxWGRXMDZKVmdTdml1MHpMakZmOXE3a21sVFJic095M2ozMDcyQndNQW1N?=
 =?utf-8?B?cVNTakhTVkdRWExQcmZhbXF4ZGRZNUNITi9tWHZhQzJvbXQ2Vmg4Q2plZW5y?=
 =?utf-8?B?TnFQakJzN0kycmNPNFJ4dlJCOEJYRFRrYTFWUERaWXRBa0JSRHgwczdmbjRO?=
 =?utf-8?B?UytpZjYyNkVWRC9mUkR3c2JHcitOeENvaFRxNGhwMFROL1lSUUQvOXo2M3BG?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1789bd67-3836-4b4e-b8b1-08db56a61f9c
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2023 07:12:50.0929 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3f6EffNBvCskfh7HhQBXPgizH3zIkvWviQi3O4y7lAEGWdS+JDQzxua718jZI3/FbxwQOZWF/Ch6Pbs1ZIttTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6405
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684307574; x=1715843574;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5LT8bjkQw3RpCUH4scP5n03Mt0JP5m0hljP86opQNHs=;
 b=IJ1TjWKFvzESyS3Y/m4/VqyjSPn542uCk1FOiXAJghHoCVqwYZ1YuSzC
 WVOwtdN8OgvvBaL7jhNSRBhdbZTn8OWmnCCMzOgX2jCHQ/O8C2IBuoNqZ
 B6FeuqKHfC7ovSNoNPeOy1e1Gg+PFmEpTNIVG1/3QTXhVRuAxL4UBMrQz
 L/n6NAxqRmwkh+lwx2cWVHF95WOBPWS75qAINc/eV5l7vImL6If6Qah8I
 sxYwxgtHGmrsENMV1reWb6at+25GJbKimHHedoEqg0EKwj480PKhKMkT1
 9ddXwofgvceGyKTv+GYaId0y7Q1es17l1uwawYrX7NtUth6v5S6RdhH/u
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IJ1TjWKF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Remove delay during
 TX ring configuration
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
Cc: anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/17/2023 03:18, Muhammad Husaini Zulkifli wrote:
> Remove unnecessary delay during the TX ring configuration.
> This will cause delay, especially during link down and
> link up activity.
> 
> Furthermore, old SKUs like as I225 will call the reset_adapter
> to reset the controller during TSN mode Gate Control List (GCL)
> setting. This will add more time to the configuration of the
> real-time use case.
> 
> It doesn't mentioned about this delay in the Software User Manual.
> It might have been ported from legacy code I210 in the past.
> 
> Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> 
> ---
> V1 -> V2: Update commit message.
> ---
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index d1e8a5eee811b..a65ddddcda5d0 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -711,7 +711,6 @@ static void igc_configure_tx_ring(struct igc_adapter *adapter,
>   	/* disable the queue */
>   	wr32(IGC_TXDCTL(reg_idx), 0);
>   	wrfl();
> -	mdelay(10);
>   
>   	wr32(IGC_TDLEN(reg_idx),
>   	     ring->count * sizeof(union igc_adv_tx_desc));
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
