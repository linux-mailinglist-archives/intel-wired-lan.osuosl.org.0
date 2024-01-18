Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA27B832175
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 23:15:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 461036F698;
	Thu, 18 Jan 2024 22:15:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 461036F698
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705616106;
	bh=iEJ81PJHW9mOetO761Wyyu/rywKqep6HSpk4FSpIdtY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kT+bKnYcfsROToUDmacPUvFML7pVKAFmF6F39+rpo5BggRC6Xbm+WMo2Topz2K4DN
	 xcsPx4rIfVLEqSBm+3SIPUZ8zwp0FWy3fw15U+H8vpgIzFoBg3DImEJYJwraa6IXiJ
	 9aeZ6O+UvwLvHtCBdAf9r3UG1LW50vJOvhpZIm74r1+7P8zAduKrl8D66e0Pyz7GuJ
	 yrdUw87YLHLQgwP+PZrbWK5X+2LNOBGZx38jiyHfD23kkXQQLkHRKOL7posoqKoSMC
	 QOmTTb2Dcr93r1qMQSqI5SuPZHzUXO/vKYzzXHxuf4+CKNOyBaILzIA9mKBlrInIIz
	 QlGtY1NNIFe7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JyfXH0P3T5vq; Thu, 18 Jan 2024 22:15:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0244B6F5DA;
	Thu, 18 Jan 2024 22:15:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0244B6F5DA
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D7C941BF969
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jan 2024 22:14:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ADCAD42720
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jan 2024 22:14:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADCAD42720
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3XARANNR_DXZ for <intel-wired-lan@osuosl.org>;
 Thu, 18 Jan 2024 22:14:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC2D64266A
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jan 2024 22:14:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC2D64266A
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="466965378"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="466965378"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 14:14:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="1031782760"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="1031782760"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jan 2024 14:14:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 14:14:56 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 14:14:56 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Jan 2024 14:14:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jHZhTlSAW5lnkg/amrzIfWj1pkkWvX42UpeaDFKmj7S31n6EnK8lTXgipGz5JxMgbg5ph5r6467+tzznQqZa5v+Wm95lyzxjs1NoIwuSgzDDAl+Sea62z+ZlhH53q6ItbzG8EErsZlutVJgUYznin/O3zZIMSOu4pEGXXkVvsNyhnmiiEa5XiReoi5yUbk7jAsI9YXGafUhnh+I+0/saZYF8wuLkJDxYRuinV+5diQszHbwYp8AP2Fitev795oTkZ9Gjv54phcjQBIgYR4xhteRT6QF3fS5yym9Kd99Gl3iWm+AD9ow/eWXf6DPVO3Qx7yKaTX/NMzG3mwk4aZW7Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iEJ81PJHW9mOetO761Wyyu/rywKqep6HSpk4FSpIdtY=;
 b=J5M91pI3AGbZaeM1sMZM0nJLPeSP20mBNZUo6ymllufve86VTy1bIXaMB9SVgj3vnySQBPqGAEP9AzhB7PwLfne2HEwDYYGAFTpTtCZftrFt9yv34ww+m05/3ISYvFrg6lpOGpfB20xCsuz9p4F5RxUoZaiUX/MBmj7HRCYe1mtkjPneNdqrzFKwrcQo73Uulscz3IQUqBCn7uwzcXGOoifFmsQhvC9IZayBXBGu/kJvI9McfOVWY+pmw/3DjAGyAEd196THfCkMfgrAUr36KCZe3/eaq9HsIhORuaRYSAZi13JY1xVRmXy/xXzcPBnpTAb6H1llHvimjwciT51+ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM6PR11MB4593.namprd11.prod.outlook.com (2603:10b6:5:2a3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Thu, 18 Jan
 2024 22:14:54 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7202.024; Thu, 18 Jan 2024
 22:14:54 +0000
Message-ID: <e8f9c059-79bb-4d64-b999-443f761a573c@intel.com>
Date: Thu, 18 Jan 2024 14:14:52 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231121025111.257597-1-yahui.cao@intel.com>
 <20231121025111.257597-6-yahui.cao@intel.com>
 <91266021-20db-267e-2ccf-023627ba1569@amd.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <91266021-20db-267e-2ccf-023627ba1569@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0217.namprd04.prod.outlook.com
 (2603:10b6:303:87::12) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM6PR11MB4593:EE_
X-MS-Office365-Filtering-Correlation-Id: 7620c82e-7924-42e6-1458-08dc1872e5ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dY+R8x9+0o+e3SfwwAte5U1UxILqP+y8VaNCaZT4uR37je9qWyt1AWRyR725Rpbv0+h6pQEg/4m4D7aojpBoqYQoLkE/FpB7grzGikLFFiIk5tN2W1tBEGwJNp7x2karwPa5IcBySPTYemeowNCNi+fX4SsvjdPPYxQHAyhNuMwZ6S+Z/VlMXLbs5Ug1ekfsJNFu8QabDFFAx+4qHVgz8NWyGK1er27pF2msS6oN/kWu+EOTVF2EwiESwy7x9OHPplUtycfSezD55dZUIiQUFNL08Hh6aodSQ5mum2DuT0DdAJoTwdudPArpY1P2XZKVs6XtQG949cQlXDSFLdfCssGdODZwyuHjRceaTE/m5gFv4qHkJq1zUT1A32Qab4OcJPp4q+Cebw/IyrY8q61ArEVf6JEhjNsLfk/pT8kTp12M4oKAb0O04Ww8UhktyP+2nlVabFm6yLE17GxYgGn3qhbDt5cBO4VHK1VWNz3plz3uXRhOTyWhQHLxpg7emSdX1ew9Q/vE7DxHyQvfXoa0F32pPDmxgr0vIIJNL1Y2kWnWoGGpjve7RBFDL3y2QW6Fwy6/F2KnCplmZXH70C2n7RkKI8G+h+njTnXFS1NhJejmAnkau33QNkkkRPb/bk0QOwN5SmE9ZbmykgdgLKYzskwH9WqrjWDtfP/z6uidzyj503nzHQRg+Q7OU95uLN9Y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(366004)(346002)(136003)(230922051799003)(230273577357003)(230173577357003)(186009)(64100799003)(1800799012)(451199024)(6506007)(6512007)(38100700002)(82960400001)(5660300002)(83380400001)(2906002)(15650500001)(66556008)(66946007)(6916009)(316002)(66476007)(26005)(8676002)(2616005)(8936002)(6486002)(53546011)(478600001)(41300700001)(86362001)(31696002)(31686004)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0ZrNjVWa3FEVEVNODdKR1FUK0xQa1E5TEo2VldXalhMZ0tuTjBJNkY0Smtj?=
 =?utf-8?B?b1d3bmtVSlR6MFRWRjVLYzlQOWVnWGZrSzhwK0Q5aTZSTDRuOE1iRXQxREFN?=
 =?utf-8?B?bTdOd1hFY0FzYVV3Mk4yZ25pbG9hVVVtWXNNV0tlKzFpd3R2a0RMVU9LejA4?=
 =?utf-8?B?UFZXK0tlMTMyNU9adyt0SzBPNDR0QnY0azg3ZUNieUwrb2lCNGcrRGtjQzFu?=
 =?utf-8?B?OFJuaktyMWo4WDdiNTkzQnQzTDN3WDJBL3cxc3FZK1J4UkpudmlTd2pZNUpn?=
 =?utf-8?B?ZjUwaHFBSmZDbE5YRHo3a1BURDZ2T2lvZHluMGZJUHBmazN0R0w0aE1oTDNv?=
 =?utf-8?B?ZFVRKzdKVHlrNEMycWl5WGk1MVZ0TmxsaEpXTjdJUHdMUXljdXp4K2diOTRZ?=
 =?utf-8?B?NUk0U2xWMDJHM1VFVkxIcUNSck5mN0MrNTlxMWo1R1hqa1c2NEgrNnZ4UFZ5?=
 =?utf-8?B?eFFYV0FjbTh3ZFBOSWZnZzh5OVp1RDNPdWFyU1ZvbHJsVklQK0FWbkN0OGdk?=
 =?utf-8?B?WE9wUE1uaGRwZk5xb2gyaWFMd2UvSFhsQ2JGai8wWjdNNGcxVmRsVEo5NDVS?=
 =?utf-8?B?UjVoc3JKaUsxUFlNSThYc2ZBaUc2N2R5ZEhCNFBqU2VBNXVlWjh1cjFiSUUr?=
 =?utf-8?B?aFh0QnVoWktlNVlERkJ5MGNzZlJ6WGNUaHplM056RWxma0U0emtGaFl3N29h?=
 =?utf-8?B?THh1TkNuN2huVFBYSm5Da1hWYSs3NlIxZVQ2TXFXaXJsdi9aNVQxRnBaVktq?=
 =?utf-8?B?ZHk1SVN0RXFNQXlGU3J3dWtVMitIWXNka3lHYlhuTHRCVThDU0gzZmxDQ3VH?=
 =?utf-8?B?NnBoUXN5Qlh1ZnljN0lrVTdYSzEzMCtCdC9oVmZURGZwRG1vWXZaSG9uUDVw?=
 =?utf-8?B?azMrTUNxNW54aG9LTCszRnJ1N2wwQWlvUGR3RldhN3dVOFR5cytDUTZWZ2VN?=
 =?utf-8?B?VWw3dkgyRFJqcmtsQTYrK2lMWVBRRnNWTU1KMWZiMjExYkZPYlpDcXNwMHl1?=
 =?utf-8?B?eWY3NENybzN0NDZJN211c2hlUmJGNjNsS3NHMlJxNmhMUVRpbitQNmsvRW1s?=
 =?utf-8?B?M1BIOXFDRWVBZVpkSnd6NUpoV2R6OVEzUzRNcEJYZStwWFR4ZVBBYXpmN1lD?=
 =?utf-8?B?R09OVGxFZ0ErRDVDZW4rR3NoZVJmdzVBS2lXNTBxSXBXUDg4bnFRWEY4ek12?=
 =?utf-8?B?d2hMZmd3VlhnVXk4WGpEQ2ZNYTVsbVdzTXRYTndpWFhpeE50VDVqNzVtNEpR?=
 =?utf-8?B?dmQ1d2JqV1dHMG4wMnUvYmlVWGtVY3FhSzNVRzhzSC9zMWk5QStsWE8vbWdQ?=
 =?utf-8?B?bjJ3azZZQmdCcXhleU5qdVRmL240ck1oT3BrSFpXNUdHM1NOWXQrakpSSVQ1?=
 =?utf-8?B?d3BtOEVadUJSb1RaK3RERitMQTQwNTAwRlh2bE5pN1hpZlJLVkxPQzRQWWl6?=
 =?utf-8?B?LzNXc2xCeU0za1FLQU8rTDQwTk9yb1Fabjd1ckQrcXIyazJtWjgxWHVNZUpN?=
 =?utf-8?B?S1NNTDJrTHI2d2RRNVVMSUFNRjNMaEFmUUZyWDVKRGRVSXpSMCtXMGhGMjJT?=
 =?utf-8?B?Y3ZOaFFzNzlacnZYZW1SN3BQUU5zUVZKNkhadmxIVHRhRVJjOERGdlY3d2x5?=
 =?utf-8?B?ZXNhWVlnSUhXazRlZ0lESXlJUnhEQWtNSVpQMnVEOVJFU3g4OXlmT3R4Y2sx?=
 =?utf-8?B?ZXpmaHNTclFqOG1KNVBDRkg5bUZWa1NKaWUwRVhkS3NNQjQ4ZE9yNWZORFlN?=
 =?utf-8?B?YllJSk9WemY3L1Zja2pYMnU2UFNkSjJwZ2lENHgzWXFhSm5WUmRYaW0velB1?=
 =?utf-8?B?M1JtSkdYeEhiVk55a2V2SFV3L21Zd1FITFpvOU5jdElBUVlOMGg3WC9IUjRr?=
 =?utf-8?B?c1FDSFlFdllsdi9KUGxKekxyZ3VPQmFBYmdUbTFzMnp5dDJNOVZETmRVdFly?=
 =?utf-8?B?SXNVczVGaC9LWjFJQU5TWjRCRTJqUEZNRGcxZ01OK3FDNWN3bmV6bFVxcTlm?=
 =?utf-8?B?MG5aTUxzWEV6Nm9BZ3p5RXdwTDRkOERDV05meTk1SjFralJ2UHVOSVVoM29a?=
 =?utf-8?B?eFFUM0dhRVBqS0ZZcnhwZlY0UnkwSTZqMEdjZS9CMElhQ21wZ3hMSStzNmtU?=
 =?utf-8?B?eUFhcTU2Z2gray9BSmtZZm94MmY3a2JRSSt5Y0xLcDgyWXdmK3pjc2tVSWJE?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7620c82e-7924-42e6-1458-08dc1872e5ca
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2024 22:14:54.1277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kkh+x+kgeV9x/FYzktMXu1zr5HGprUzOmdFOhCKkMcqSdsifw6D9FnbPM467axfiD7cXoxQbMKGVw7I+sNrfh0eqCRJ1uVkJJAnkn0MaqJg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4593
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705616098; x=1737152098;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uLjfWze3aoi1lrQunEZLQQyFNW1A/tAfRS+J3+O+dy4=;
 b=J3sMB518HA7RhzHV8IJ1KWU/WLU7VjMWV8eFafvbaELZmeiJSvEtYo+8
 s8tjVDCRgmeR21aRzMr9Fdj6QeeVVsXRGICZHb/4fhVVQiNC9on2h6+88
 ck2Ed9fUPS0lAqoiyTupG7W2pV5hR5sBu4HjD67B5G63dtySBjLT3u25t
 Gzu79IqhFK01YJ2123k5NB5IadXVDF1yp+B/NuzhVJgoWr3uY7t8+a3re
 riertxeJIfoyTq7YdzShrrGi4tGitRncV3AVr0GdR5K6Y7C8sH861oX2V
 yRtdiyicb1oBlPrhqgH1otWNz09MIenn7wKcgBa3neZH+2ZnQyEBYEuFe
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J3sMB518
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 05/12] ice: Log virtual
 channel messages in PF
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/7/2023 5:53 PM, Brett Creeley wrote:
> 
> 
> On 11/20/2023 6:51 PM, Yahui Cao wrote:
>> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
>>
>>
>> From: Lingyu Liu <lingyu.liu@intel.com>
>>
>> Save the virtual channel messages sent by VF on the source side during
>> runtime. The logged virtchnl messages will be transferred and loaded
>> into the device on the destination side during the device resume stage.
>>
>> For the feature which can not be migrated yet, it must be disabled or
>> blocked to prevent from being abused by VF. Otherwise, it may introduce
>> functional and security issue. Mask unsupported VF capability flags in
>> the VF-PF negotiaion stage.
> 
> s/negotiaion/negotiation/
> 
>>
>> Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
>> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
>> ---
>>   .../net/ethernet/intel/ice/ice_migration.c    | 167 ++++++++++++++++++
>>   .../intel/ice/ice_migration_private.h         |  17 ++
>>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   5 +
>>   drivers/net/ethernet/intel/ice/ice_virtchnl.c |  31 ++++
>>   4 files changed, 220 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
>> index 2b9b5a2ce367..18ec4ec7d147 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_migration.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_migration.c
>> @@ -3,6 +3,17 @@
>>
>>   #include "ice.h"
>>
>> +struct ice_migration_virtchnl_msg_slot {
>> +       u32 opcode;
>> +       u16 msg_len;
>> +       char msg_buffer[];
>> +};
>> +
>> +struct ice_migration_virtchnl_msg_listnode {
>> +       struct list_head node;
>> +       struct ice_migration_virtchnl_msg_slot msg_slot;
>> +};
>> +
>>   /**
>>    * ice_migration_get_pf - Get ice PF structure pointer by pdev
>>    * @pdev: pointer to ice vfio pci VF pdev structure
>> @@ -22,6 +33,9 @@ EXPORT_SYMBOL(ice_migration_get_pf);
>>   void ice_migration_init_vf(struct ice_vf *vf)
>>   {
>>          vf->migration_enabled = true;
>> +       INIT_LIST_HEAD(&vf->virtchnl_msg_list);
>> +       vf->virtchnl_msg_num = 0;
>> +       vf->virtchnl_msg_size = 0;
>>   }
>>
>>   /**
>> @@ -30,10 +44,24 @@ void ice_migration_init_vf(struct ice_vf *vf)
>>    */
>>   void ice_migration_uninit_vf(struct ice_vf *vf)
>>   {
>> +       struct ice_migration_virtchnl_msg_listnode *msg_listnode;
>> +       struct ice_migration_virtchnl_msg_listnode *dtmp;
>> +
>>          if (!vf->migration_enabled)
>>                  return;
>>
>>          vf->migration_enabled = false;
>> +
>> +       if (list_empty(&vf->virtchnl_msg_list))
>> +               return;
>> +       list_for_each_entry_safe(msg_listnode, dtmp,
>> +                                &vf->virtchnl_msg_list,
>> +                                node) {
>> +               list_del(&msg_listnode->node);
>> +               kfree(msg_listnode);
>> +       }
>> +       vf->virtchnl_msg_num = 0;
>> +       vf->virtchnl_msg_size = 0;
>>   }
>>
>>   /**
>> @@ -80,3 +108,142 @@ void ice_migration_uninit_dev(struct ice_pf *pf, int vf_id)
>>          ice_put_vf(vf);
>>   }
>>   EXPORT_SYMBOL(ice_migration_uninit_dev);
>> +
>> +/**
>> + * ice_migration_is_loggable_msg - is this message loggable or not
>> + * @v_opcode: virtchnl message operation code
>> + *
>> + * Return true if this message logging is supported, otherwise return false
>> + */
>> +static inline bool ice_migration_is_loggable_msg(u32 v_opcode)
>> +{
>> +       switch (v_opcode) {
>> +       case VIRTCHNL_OP_VERSION:
>> +       case VIRTCHNL_OP_GET_VF_RESOURCES:
>> +       case VIRTCHNL_OP_CONFIG_VSI_QUEUES:
>> +       case VIRTCHNL_OP_CONFIG_IRQ_MAP:
>> +       case VIRTCHNL_OP_ADD_ETH_ADDR:
>> +       case VIRTCHNL_OP_DEL_ETH_ADDR:
>> +       case VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE:
>> +       case VIRTCHNL_OP_ENABLE_QUEUES:
>> +       case VIRTCHNL_OP_DISABLE_QUEUES:
>> +       case VIRTCHNL_OP_ADD_VLAN:
>> +       case VIRTCHNL_OP_DEL_VLAN:
>> +       case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
>> +       case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
>> +       case VIRTCHNL_OP_CONFIG_RSS_KEY:
>> +       case VIRTCHNL_OP_CONFIG_RSS_LUT:
>> +       case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
>> +               return true;
>> +       default:
>> +               return false;
>> +       }
>> +}
>> +
>> +/**
>> + * ice_migration_log_vf_msg - Log request message from VF
>> + * @vf: pointer to the VF structure
>> + * @event: pointer to the AQ event
>> + *
>> + * Log VF message for later device state loading during live migration
>> + *
>> + * Return 0 for success, negative for error
>> + */
>> +int ice_migration_log_vf_msg(struct ice_vf *vf,
>> +                            struct ice_rq_event_info *event)
>> +{
>> +       struct ice_migration_virtchnl_msg_listnode *msg_listnode;
>> +       u32 v_opcode = le32_to_cpu(event->desc.cookie_high);
>> +       struct device *dev = ice_pf_to_dev(vf->pf);
>> +       u16 msglen = event->msg_len;
>> +       u8 *msg = event->msg_buf;
>> +
>> +       if (!ice_migration_is_loggable_msg(v_opcode))
>> +               return 0;
>> +
>> +       if (vf->virtchnl_msg_num >= VIRTCHNL_MSG_MAX) {
>> +               dev_warn(dev, "VF %d has maximum number virtual channel commands\n",
>> +                        vf->vf_id);
>> +               return -ENOMEM;
>> +       }
>> +
>> +       msg_listnode = (struct ice_migration_virtchnl_msg_listnode *)
>> +                       kzalloc(struct_size(msg_listnode,
>> +                                           msg_slot.msg_buffer,
>> +                                           msglen),
>> +                               GFP_KERNEL);
>> +       if (!msg_listnode) {
>> +               dev_err(dev, "VF %d failed to allocate memory for msg listnode\n",
>> +                       vf->vf_id);
>> +               return -ENOMEM;
>> +       }
>> +       dev_dbg(dev, "VF %d save virtual channel command, op code: %d, len: %d\n",
>> +               vf->vf_id, v_opcode, msglen);
>> +       msg_listnode->msg_slot.opcode = v_opcode;
>> +       msg_listnode->msg_slot.msg_len = msglen;
>> +       memcpy(msg_listnode->msg_slot.msg_buffer, msg, msglen);
> 
> It seems like this can still be abused. What if the VM/VF user sends 
> hundreds of thousands of ADD_ADDR/DEL_ADDR, ADD_VLAN/DEL_VLAN, 
> PROMISCUOUS, ENABLE_VLAN_STRIPPING/DISABLE_VLAN_STRIPPING, RSS_LUT, 
> RSS_KEY, etc.?
> 
> Shouldn't you only maintain one copy for each key/value when it makes 
> sense? For example, you don't need multiple RSS_LUT and RSS_KEY messages 
> logged as just the most recent one is needed.
> 
> What if multiple promiscuous messages are sent? Do you need to save them 
> all or just the most recent?
> 
> What if you have an ADD_ADDR/DEL_ADDR for the same address? Do you need 
> to save both of those messages? Seems like when you get a DEL_ADDR you 
> should search for the associated ADD_ADDR and just remove it. Same 
> comment applies for ADD_VLAN/DEL_VLAN.
> 

I'll likely be looking to refactor this to use a new internal
representation of the VF state instead of a list of virtchnl messages.
