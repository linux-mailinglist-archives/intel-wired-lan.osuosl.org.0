Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D343670B96
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 23:24:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A206B416C2;
	Tue, 17 Jan 2023 22:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A206B416C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673994288;
	bh=qiHmRzCpJlaed5R5bOhk8R5VnyLE1NlcsvphcQJUUfE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YMhbF/M5N42mii+1j9wv0TG6L1H25pCGWyCvtJsKxs5dURJ2Ssumjyid+gl58rBtA
	 D9WsoWuxRYoaKiq3M27//Vt4GxNcuwGKgtMrvAK4VSuWRKtwf1a/QXr3wsW4UvwTzU
	 2KH+7qB2m2u0lw//WUH+hVfTNZZXCxbWF8dscN1dhfOXTYj7JoUKG+qDqKJc1OgLKd
	 v/hiApBNsFEkT1CjRmEVl4Sy7ILAHtHcuEIlz4Oa9FN8b2lhI9Zgx9cX4BQgETuCrr
	 NDEDhS3Xz34KNs+/FgIxJDmUjPF0u2XZkxoQTVaPYKp+pxLdgFHG0e7Lq8ESjjty5p
	 XSaGpew105mxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KWe7JrhoFqN1; Tue, 17 Jan 2023 22:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 747D64167C;
	Tue, 17 Jan 2023 22:24:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 747D64167C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 847DA1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A49F605F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:24:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A49F605F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l2roYNuks5q6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 22:24:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 352AA605D6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 352AA605D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:24:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="389334827"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="389334827"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 14:24:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="652674997"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="652674997"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 17 Jan 2023 14:24:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 14:24:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 17 Jan 2023 14:24:38 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 17 Jan 2023 14:24:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n0WYdaH3HzTC0RQHpOHOL56GrTw7mj7rYRbD4uprW1bdJJzLv5D2k4LfZeRjOEXJH3S4+K/v4p2H1uBwVnPQGz40UeNZe5i5vTcME8nPI30mYcqx0qbvW7eZu5JcuavX2ipUaGWkTKkSckWr7EbNy9maSTLU2V/EY/kPqfnC9hoUGjQCkqcnqhGfEhqTXHpWFOvk45X9iShpZU8V/vNrO2FfUS9aGi0dAPEkuvyRPSCTzpGshmuffJqXg1zfD8TnARP4sHilG2ZYr+wnqgmRme1HWu+P5tbtE74PBD0fGe5UnQ8iw8JEaaeSzmSZKSuGhKQx1xgzUR8+3/fFQoq6oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xENjVyd0Y7gdHEFMxeinc4KlTPZP3Xb1N31yE3nQPjQ=;
 b=j4V+5TF0OWPlPBfCsF8byyVf5MIX/Sx/8qpAJNPDpvYbLcsS53UHUOzh5jiOjnrvYzR0+nyOljfBqn6sfvz6MHGUphheiXHiFuudi0SCACdHIV7Q1o7gOTirevAoOSmBikx1sE0ElMfK5kv2OdffLNl3Je62ypyBjTdlzUIewPG2NKCJxc0S3GBatMpr7gloZWNHrzFu/H1Qw5KO1QtCZ/nCoXz7l6fduStgh3Nt9cNSourJW0admqVyoXBl2IsJJBdTuEJfoyzGldoYwAXOMJgCuwr1g0jxbMRkWdUleMsQg5vFU12jsAmunhmpONkXmfu+R+Ck9DlmKeETzmnlJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB7986.namprd11.prod.outlook.com (2603:10b6:510:241::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Tue, 17 Jan
 2023 22:24:37 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.5986.023; Tue, 17 Jan 2023
 22:24:35 +0000
Message-ID: <128d7711-97f6-24a8-ca08-be9ce2cbbb70@intel.com>
Date: Tue, 17 Jan 2023 14:24:33 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
 <20230113223735.2514364-4-jacob.e.keller@intel.com>
 <Y8UrNnT/eXE59d8H@localhost.localdomain>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <Y8UrNnT/eXE59d8H@localhost.localdomain>
X-ClientProxiedBy: BY5PR17CA0019.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::32) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB7986:EE_
X-MS-Office365-Filtering-Correlation-Id: cf62c7b7-0aa5-453c-c0c6-08daf8d99d14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qscU5n7srhjLJ/eEy8MzOOYiPdokGxPPpNEu9hfFphJPVxB+RQfwoK8GqCq+f70Q0BL7Z7kNW4sI4UAdivn6YwEGRBCEKk4ZK0DwqMkIeu6LQKFxATljwdTAfz1fXJ9cAjemkm40FdbDq+WBd8dbUvmukTQARnS7/WoSMJxAFyDkxHSsKv6f59HVnrN/BmN36A7nsaxRYilKdlcuOIEhI9uPQNhGvggdZ36IdFxhbwFn7I7etRU1W7yVP5GjyZXYHZkYtcIy1zDYRoHeHva48m74KOytjPQJzGG+hZXfFOhMlOyVbe+f+uhopY+SH99F+dn/9hDHxauBxyPegHCogOS50ztBqkO7atKKGSkT30BBAh8nwXBEhmmTy8uEcraKHa6AwDzbeKIYPCjjNJxXG135RNOJaqQJX7OOOW3OwadbyVK+EzZOHZd+etZc1yS8LKo2GNCS3j7y8kjE+EN0gZeXDzhrMgyPY6IBjU81oQTA5LSCAT0NMR1nUhn2ggH8kabUmObwMwb4Gyj7F93B4zVo8oUEnF7vorDVQD47/ySNtNHxXa2K8d3cY4kEriFCwXAk7JR4bLYygz1sXgjoEMk8G/TT1CaG5YgIbNghgdq6pcm3ZddqdhaeYqlIif6MtECFicktCxnIW01Y8XbJyk9dk8bakuuyu1+TZ1qvsuLs7y4lU47dDyOzQwtnWdRvTkPadeOJ4DAjc3qH2nNFhjHbzxhWxJIUafMqXyfvVHU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(366004)(136003)(396003)(451199015)(31686004)(36756003)(26005)(66476007)(41300700001)(66556008)(66946007)(2616005)(8676002)(6512007)(186003)(53546011)(6916009)(4326008)(86362001)(31696002)(5660300002)(82960400001)(8936002)(54906003)(478600001)(38100700002)(2906002)(316002)(6506007)(4744005)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTY2NU8vSTFhdG8wUElRQm1rN1I2WmpVRVVnZGI4d3B6eUxzT3RQSjJFampP?=
 =?utf-8?B?UEx6dkxIQkVVd0YxQzlJdXlpa0x0MVlmTFBuQU8yUDE2SDRXTmJCb2lUa1Mw?=
 =?utf-8?B?ZFV4ZVEzSGMydkJ3ekxWeFRURUs1YU53dDhXNWZIUkl5ZlRDV2p2dE1pcXNY?=
 =?utf-8?B?dHdYdldpclFsa1dtYWlRWEhqZTUvczViSmpjR0NPZDA2V0hjbTd6ZklVYUxi?=
 =?utf-8?B?UTd6NUZJVjBhbnZ5b0hMK2dhb3BaRVZKRnJCMHZ4d2N6SEZLeUxQWE82Q0pD?=
 =?utf-8?B?Tzk3clo0NkRkTTIzMW16WlpVMzZwWm9oSHBJN1ltWEZXa1lWYTR5Sktab0xN?=
 =?utf-8?B?VVZBeFFFOTdFK28rTkpPempnUE5TZjBrdWhKYU1ER25oeXdzbDhGSWlSQUFr?=
 =?utf-8?B?bXhzektaUFo2NExWL1B5WFdwOVpZMkxFSG9LV0VzR3p0NEJ3MVBkeWpWWnhj?=
 =?utf-8?B?YnY0R244MWpUb1JlMitJekFYRkZYY0VvUi9BTXRLcG5BWUVXcEorM3NIenZB?=
 =?utf-8?B?Tmhmd1g4ci9NSzhQdGI5ajcvU29uYnlhQzY0VjBJK0dkRjRZMnlhRzZVZlh3?=
 =?utf-8?B?UnBKL3loeVhidmFhUUNMajQ4SXVpTmVGVGtDQWhDbFZBK3Y3MkxYVloyRjFQ?=
 =?utf-8?B?QTNoNGJxN0hXZVZaS3VaOHhyVG1oV2tVYlhGRlFsOEV2ZzVadC9qa2VLY0lp?=
 =?utf-8?B?RjlUQ2Fna1I5TU1OYkhKMzJyaHo5azVNL2REc2ZuWFFXdmNTWXc3UVNBOTJz?=
 =?utf-8?B?dzZMZ3pLWVpkei9JNGVpLzRqbkJaZ3FET0kvd0hwckt6Y1RpYTdua2FlSThE?=
 =?utf-8?B?Vkh5Zzh4QW51YUp4ZGpRd2hTak4wSWc3NDdyY2NqNUtjZHFNY0ZUcTE2bzZ0?=
 =?utf-8?B?YkFRRWw4d21yV2dEaCs0WTJIeDZudEhZWGZXZ1VNNG5xZFJCblVoa0gwQ3BD?=
 =?utf-8?B?a2VBVXdqU2FSOGRiRUgzZk9Uc0pZbjUwR0ljVkxKTTY3K28xR0xvMFRST3Rn?=
 =?utf-8?B?WVJQSFM2WjJ2cmk1REIxU2ZHK1dRSWlmTzRPLytXZmMwcjhBbDRxWjBLZ0hl?=
 =?utf-8?B?bFhDdVRuNUVxZ1d3M2d6dW9mZk4xN0dGTEdaL25PRTEwcDN3YUVmeEFBekNp?=
 =?utf-8?B?TDM1T2k3R2dFaW5kY3NmdjV5VWlEbktSNmNCVFZiNGlwRUdjTE1kUlFoWk5D?=
 =?utf-8?B?TGNub3JUV2dTQTZiVlRYSHZCODBwS05VbFhKL1psanFVVXloRzZkbHozdGRz?=
 =?utf-8?B?MGdJRkR6TFBrODdVRjUvdDVHSC9Ic3VGN3g4VmZhV1RYTkwyU2REOFRwODcz?=
 =?utf-8?B?dkhCQ0Vkd3RmQ3NOZUlFbURrczJrWXZDWXFzNTNKUExwRVZEdGVQUWFRd2xm?=
 =?utf-8?B?SzRaU0xiVFB6RThCNFdDQ0xVR0lWbEJrM3dWZWlUNjRxenBoWjI3Q2VBcmNS?=
 =?utf-8?B?aklMVTJiUGxJWmtLT0R2aERkY3g2Zk9JT0pCRU9waFJJR0JsL0s5RWNIL2I1?=
 =?utf-8?B?RGw2a2kzdjBTR2trcU1kdjgvTFJ3Vm9xenZNRkl3Yk01QzY0bGcrZUlQUEdo?=
 =?utf-8?B?KzZsejdwM1U1V3VHZlZRRVlGa3BnRFRnTUhqZG5qODNZclJ5UEN3ZThOanFv?=
 =?utf-8?B?TzlvNUtQNDJoVlk4S1BqWUNCWjZMQTQzWUxnOWxXd1kvQndzSjJUTzJGNUVt?=
 =?utf-8?B?T3RWWkFQQ1B6K0RpT2prR0NkSGVYNUNsR1VoUHUzM1F1eTVucTAxRkJYc3lh?=
 =?utf-8?B?THI5djVTeU43aTVZSGhDc1VqbFpKNUQ1UzUyWTBBeFB5SU9ZbkNNNkxCUG13?=
 =?utf-8?B?OEJpTVRFQm5ZeWNyNlMxTDU5MzR4VTFXSWlaQnVFZVFQWUlXNStLa1kzMWZn?=
 =?utf-8?B?R0xYaFNXOXZNWGVYbTR0eVQyZDVuTFdMNkpsQ25iU291WG9FQUQ2bkdzaTJX?=
 =?utf-8?B?ZWxyWXgwbUtWbXZjS3pFZVRRbVl4QWh6SDVJYkpMNk5yNGxHNElGL2RLSlBk?=
 =?utf-8?B?clJYSjdBcE04ems4SU1mUjFzek41RUpybDBEN2g1S2Q3bVFyNE0zNWR3NUlB?=
 =?utf-8?B?UG41aUZzeGoyRHRlcUNnYW1ZaVh2NjlTRWI3RVRQaCt5enQ3SU40cE4xeXlp?=
 =?utf-8?B?WlU4YmkvNjl5bUJ0T2VlK0JSQTlsYXJ0Sk9qRkRub1J3OEEzUmJ4dVNjb3BO?=
 =?utf-8?B?MHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf62c7b7-0aa5-453c-c0c6-08daf8d99d14
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 22:24:35.4570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cpWIVX+mQxqMBgzcl/lZC6JkJQ/PlSLQoTtWuDFd73g0EhAbeXg3bv7JG5VqHXkXlIsyeETCw4uUviVno7FE7gU9nLPnfQFAo5YR/wPHGf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7986
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673994281; x=1705530281;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JQmA8GcyR6OayMrLBqnE6SauO68280Z6RL+EMqucnMM=;
 b=e6DxNkHHk0pAzrhCUQt2X4rtP4skwTmGZBjlBvhr5jeaihF/I/RMTH1J
 kvyJdgmO4Vb739tPehuwyKCfmL0c5XVJp+/7cSwtdxMeNnKIazB4ertji
 yF6N5EZimV7SqGZl+DLUFVIezG7imr1teLl6UTzD4sAAcg+CCdz1TyYnS
 QG5qJha34kC8H4UUO2oNXE9MeDorRAYg2GZAMjJ0dpPhaGBgRqUMzJatI
 W8xMcVX3YnJiJMT/Zmx8nsOHoDz0G0cHJGegViQlGyw6F1FPdqNYApgdb
 CGdN0RoGqeivvSulWGrGdzciL1vhwiJLbc/aloscMMU498GoM0zNbOCoe
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e6DxNkHH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 03/13] ice: move vsi_type
 assignment from ice_vsi_alloc to ice_vsi_cfg
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/16/2023 2:47 AM, Michal Swiatkowski wrote:
>>  
>> +	if (vsi->type == ICE_VSI_CTRL) {
>> +		if (vf) {
> I know that it is only copy paste, but shouldn't we also check if
> vsi_idx isn't already set like in PF case?
> 

Oh the WARN_ON. OK I can add that. We do properly initialize the
vf->ctrl_vsi_idx to ICE_NO_VSI so I think its ok. We could also at some
point look into whether it makes more sense to just directly store the
VSI pointer instead of its index, but I'll leave that to another day.

Normally I'd add this as part of a separate patch but I think this has
so much non-moved code due to required refactors on the other functions
that I'll add it with a note.

>> +			vf->ctrl_vsi_idx = vsi->idx;
>> +		} else {
>> +			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
>> +			pf->ctrl_vsi_idx = vsi->idx;
>> +		}
>> +	}
>> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
