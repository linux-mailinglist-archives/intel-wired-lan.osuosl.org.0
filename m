Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D547FE327
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 23:27:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FADB61AE0;
	Wed, 29 Nov 2023 22:27:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FADB61AE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701296864;
	bh=j2WYfiO4cTd5Pf9wUyPlW38c/2UYL+M8NgPWzdvW8ek=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8tVbS1ypi7s9KRpq/+/qOVeFC4/sc1bLDFE4cR5UMTA93BlykZ15742jMOvAUbbpf
	 vg+/mJm8330WAo10xYEHQv45BViHmCNyqz4FETd4FrZPfG5lv61kwTorW82Dw/4BYm
	 M2WOutKbwSRDriYURHyrdZpQB9kCn2Uba3g9eBInD1GdD9DiXyUoNCTP3xD9oQiDx3
	 SxZTTJvCysSyDUH6zetldqZ5qw9TzQU31rTbg7znsb1FrlHATQiqYUlnI0qiYYEhG1
	 gxLw9ys9cD33UCJE0yrhdwJMiwjSPcT9XzGhMCE5TGoscpEqbozQxAPSWMbNeOQJvU
	 ERRMEzc+c/HwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KIHt92Oq_ZVj; Wed, 29 Nov 2023 22:27:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 089FC61AD0;
	Wed, 29 Nov 2023 22:27:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 089FC61AD0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9F821BF356
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 22:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9CD3540137
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 22:27:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CD3540137
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FvWbyJzlgl7g for <intel-wired-lan@osuosl.org>;
 Wed, 29 Nov 2023 22:27:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6486840116
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 22:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6486840116
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="372617267"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="372617267"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 14:27:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="942481174"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="942481174"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 14:27:33 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 14:27:33 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 14:27:33 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 14:27:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+p61+Y0TrzjrauK9ElEuaR5ukpJcIFk500c/XRMMolO/M/n130fMF21M2h3OzdAWdZHP8re/8/gyPozGo+GEiJPMzuA9mtne1XZZRABqHxqeoz1JBaDBl5NnEuzNM+SfAHWnjCVVVK9D6Fq0AN1Sk48V+fH5vw5tMuceegc1ujzVEmS3BCUtq04oy4o8wU+x1I9ydzTOHXZhWelhUEvwhtPh84bGKPl8MGnS3oWODkDff2Sx3L/5zvYd3yDp5uEL7tLuyy+SMEMw+cg+6U9ON/wuIwuwx32ayZUvHgNmB5Xj4Zzd6gyVrEJINp/5Ne4+jO0QwuWJ/eicGRi6VyUkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xxClWMLfIhuLL9N09oxe3rdDM5BFxC6UpStvmwAYEXo=;
 b=eBr/tHTNT+iSi6yzYKWDcQtgUK/UOSx5kvLsDK/kt+QAhtUiFzYgQWdba26ZsUTP80S1Ezvbi+2lOzafthAl9AC/aulepFzUZWDsadqIOEEiym6HC6tUWlCwsR6ccEqYvC53clwffNrtGByyae0hEteAiHHVUDgPB5e3GsCAV99W9wHZaYR5xDNDLx8PaSAU4YsaUhwlcMnMJMIM5qqN/6ARK/S9nPwnVMtXfvm20cIzciWCxWbBVxx19QOzFzP+tj7ZbMULeBAdo8rVhr+ea/R9j0KrygtQhuyoFhwJSFxL4mhAddnbSXQ09YtAFtRXwL5u0jhnI4VM4AxJpfzrOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB7700.namprd11.prod.outlook.com (2603:10b6:806:330::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Wed, 29 Nov
 2023 22:27:31 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5%4]) with mapi id 15.20.7046.023; Wed, 29 Nov 2023
 22:27:31 +0000
Message-ID: <4ce40838-32f2-40d2-bbcb-cc12197563e7@intel.com>
Date: Wed, 29 Nov 2023 14:27:29 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231129175604.1374020-1-sachin.bahadur@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231129175604.1374020-1-sachin.bahadur@intel.com>
X-ClientProxiedBy: MW4PR04CA0379.namprd04.prod.outlook.com
 (2603:10b6:303:81::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB7700:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b5ad3c9-c43f-4716-0698-08dbf12a6040
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mUyOYlx8xdMmTsOV6uwra+xxAAAFBwbrFwy+JVuci8PzAb9bknaAeZdcXjzyF3skY32H9MpsOT+NmhqGdMgCQ0kmnZgyJUp7EUCQRx1G4imH3d6lAteXemdAdrHgQE9bo/+Q7IqEvbYQWrmviqYtVNrbEEvCMY6W8816flcVt2qBQVElRAf4ANwt7/ThpxkK95W22eYvXIhpnUQebKJ73vtfZYY0dlhxUdESdDDqWB/VknNh8sHr4IL0k4YgW5X92TglMHumYWN1sfFpITRTlJd0XIp+Xi3tGkaLo96KbE+EJZ3WAOX0DZ30AKjBeBqstf3UXGvWkF3wdE2LYS/oUkoTcARxOLBrFPokADRM9fydTl1oxFNyud9BRCylsInpJdng71g2pUjGPGuDOgBjMbKN4TUKV2ubyyJjTPkG3vSPIFaGRGJ6q4XHTBWRJwpe8FTMj5Hvc/LdAEuzAfMfkwg6XjO6F/yw/fU0cIu3B2HYf3qpMdXAq+iIGAr3sHb7oCmXb6TQiz971zMzEaUO2OENjAJSQQjYeq/DpwloU9VBuiSozVQTFH8Jm1dvarQFehU/e9ZW1ieZbkUswiVnmdZejiq7WHkh/nxIp+HN3VZ8TR4gH9DB1LenWX66r/0IEMYKVC5hamAgLCR0vQt4I7xmcNn+KRZ8mgrTrSQH/i5/iJ8BH8pMCNp80n4uA5qO1BJ0Rv6uQqLPmDgEKZi58Q3pxsyxoq/plKYfHdxsgp0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(376002)(346002)(136003)(230173577357003)(230273577357003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(8936002)(8676002)(31696002)(6512007)(6506007)(53546011)(2906002)(6916009)(66556008)(66476007)(66946007)(316002)(6486002)(478600001)(966005)(2616005)(36756003)(38100700002)(41300700001)(31686004)(86362001)(26005)(202311291699003)(83380400001)(82960400001)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmY2NG1wZE5Xcll5TU5Sb2VMczRUeVhRYlBZMXNjRzYvYi9oR0tEc1lRaDd0?=
 =?utf-8?B?S2ZTRXJiUnpFZjN1NHJRaXdVNVdrUFN3MmJYV3FLZ0hlNTRGL1lKSnp0Zito?=
 =?utf-8?B?NVlKeFpwdjE0S3Mwc1lsanhNU2NvcU9jMlFZTmNBQzg2a3pnYVNjbzV0TVZB?=
 =?utf-8?B?NFFJSnBQSWhIYkxtMTFyanF5RmNjSDNZYzBvM21wZnpWWmQzbGhUUUxZZlZV?=
 =?utf-8?B?SUZDZWMxOHBaTTR6OXhRSFhkdytsdnREYlJVaEprelp0cUlabWc0bXF4cUl6?=
 =?utf-8?B?c1hFSVdieFNCMXErYWV1Zm5ZRFB0NExtRG1Pa29TZHQvOTFrYWpteDFzdVpF?=
 =?utf-8?B?cjhnYVBQQzczcmhaSmp5TmlyMVEydnNtQ0R6Qm9nV0dETlNFMGNBMFpWZm1z?=
 =?utf-8?B?TngvTS9TaTVSTlhsNUFGN2lmaERMYUhicjhuSm1FNUp6ek1YZGVpZXdSL3lL?=
 =?utf-8?B?cnk5UUFBWU81Y1dJR0xoMnEyRTEya0tUR2dGZ2JJVS9ZeUtGWkNjUGlyU01u?=
 =?utf-8?B?clpERno2eU5SUW5FblZEeVZkMGtoZUE1L2h3K3hLRnh2MTdkeXVuWkhBREVU?=
 =?utf-8?B?N2d4SThzTWhxV09LNlVRTkFCWFNvV0FOdnYxUVRqd3BCSnJ2Z1M2UXRUZC9D?=
 =?utf-8?B?dGZzT2RFdlljYkpsOCtSQjdpeWc0dGxydHpnclpWZVQ1L09sRkl1OWROZEth?=
 =?utf-8?B?VysyN3N4VWdtek9Jdno5QWRlZTl1T1BrNWtIb3dtWExMUXBSblFwQ3FjT3Bu?=
 =?utf-8?B?RnhVa3liQm1NcFpURkwrNEI1RmtOQUU2RTBINWUxVEFxUjFyS1puSElTTWI4?=
 =?utf-8?B?ekt3bzFldndzb3RveHU3aXBiWmR3Ylc2Z2hKdTRWUVRHcmU3c3lJdW5Ybnpw?=
 =?utf-8?B?ZVlqVllCakZYVFNiNU9LV3NjZGRSTlJkbllkeUpseW1sblFXa3NCS1g0RTRN?=
 =?utf-8?B?a294aU5rYXdLdm9PUUZLS0xSZmdMbDJPd0phMkE0d3ZWMkJrZ1prc0hMd25T?=
 =?utf-8?B?QWpsYnRTaXJtMXZUUWVlK1NwWm1jL2QwZHBqQmQ5LzBjMTNJTHdkSFBjRWpr?=
 =?utf-8?B?V2U5Q2tyQ3Rmdmxwd3BhRG5nZlJoZVFESDZKM1JYd1NjaG54VTRsRlFIakVz?=
 =?utf-8?B?aFBnM2pPaHlVQlZKeVFzVGZLQjFqUWFxaDBlREw5VDhzQ3pyTTkwYkUyL29x?=
 =?utf-8?B?b0pQZ05wTEFYV3djREV3UFdRNzZCcnNxWmJNN3VWV3pmTmk4Um0yVk5pODRH?=
 =?utf-8?B?S085Q2xCbjVDQXRFazA5c2NqSDJ2RUY1dTBCN0tiRE8wbDFlZHRLbk8xbCtG?=
 =?utf-8?B?Y2kydHo5RmNnN3lPK0plazRnSnh6YjhmcjlvNmEzbk1rc2JaSUpNSTJTOXlo?=
 =?utf-8?B?MnBuVVV4dUlHKzZRMjRpdExHUWhwN1ZGM1RsUFhNQnJ0cHcvY2xwSllEcFJ4?=
 =?utf-8?B?ZlB3WEgwSHpVU1VnZVQzWmVXTFRlTjhQaGpjQmdVYTNjck9QTXA2NldmcGhJ?=
 =?utf-8?B?Znl0dG8vSnZKbEY2YzRkZy9CaitYSHd3VGY0Q05UZmVIYmF2ZGZRcGorTXQy?=
 =?utf-8?B?Q0tvSUtmajc1dWJkTml5aUhlcm5WZlFpaElKQkIzT095VzZPV04rRkhoUnh1?=
 =?utf-8?B?ZVRMN05qcTZNZWJ2TGd4amg1ZnlzZHJibkhVWGVXdXFTKzhZbFBBbFVlOTkz?=
 =?utf-8?B?T05EUlNVTEpzQzZjUHIvRnlxUGNkNlNGK3hranFoZkVucEgrRW12WWdXa2pr?=
 =?utf-8?B?WkdSQjgrUUw2eGpBd2xnMVYxd0FSR0YrMVYxQUN4WjVZT05QTnRUb0tZTStj?=
 =?utf-8?B?NkZrTjQyUXl0S2lwVUlraHVIVW9Zc21Fd1pwTEpJVzJVeVc5RER5RWx5MHFI?=
 =?utf-8?B?Njl5SnFrQzhXVkVjdGhWMkt5Z3BSQnpuaWlFU1crVlR3TEdxcUJTdlJieDg3?=
 =?utf-8?B?RHd3c1hTSWtiMGszUGdkMFMxTytDMythZHJ2ay9Ndk5GWWZUSUU3bUx2N3NL?=
 =?utf-8?B?NjNLOVA3Sm1kcVNCMnFUamRoaXZEOVFwSnhqNkNaNzdvUHZFQlZ4ZVF5MHhz?=
 =?utf-8?B?eDlIWVl2amJlbFpiTTBBdERpQkJKbkFkeHlhTGRXV2JrUDJrZ0ppaVRCK0Fo?=
 =?utf-8?B?SG1FcWRCdE5lR2s1bjFVNWV5ek9Db1N5TnpYRFl4dzNTQUkvV1NPM29ydy95?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b5ad3c9-c43f-4716-0698-08dbf12a6040
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 22:27:30.9661 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uQkCYfzHL8pN+mLHu5a1rhkByx2bYh0tXJdg1PMx0tVTth1/Sqevq78LuM0DNRWegEojWNQ+T9iep80S5K3I4AhK4pdIvysPunw9vryOJK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7700
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701296855; x=1732832855;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rh7fI04JTGt1TtrnCis/Xk90q9Xtynvmfe6u3YlUv3M=;
 b=PIVunzu7bl/IX+5T/Oz4jMUy7P7xIr9/8ygcef67DPQHcBdssR9nvEjN
 6pS2agVHHiL1aFXzXq1BkaNaRMkD2nl2D5akJ5V0dUzLafB+q2s49nDcW
 6ZLOYZJOCYMWMWZxEqp9iLtXSb6RjOff+FezY4M56PxAXDrPxIbVF2sTu
 jm7uQeD1+5dmyYirs2xB/rOoyVs4JQ5QxvxvTkgZvdcOVc48JzD59Q8VY
 wU56gXCbSxRpLEnjN5REpQG0hvrK5upM6oKj07NlyDD6Ej/tnHqMyIdPY
 R+e/EWgjm+c1MEsljjUt2khoI2LGnrAbJD1SV8FF1bV+l7cx0D2sAIf4z
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PIVunzu7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Print NIC FW version
 during init
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/29/2023 9:56 AM, Sachin Bahadur wrote:
> Print NIC FW version during PF initialization. FW version in dmesg is used
> to identify and isolate issues. Particularly useful when dmesg is read
> after reboot.
> 
> Example log from dmesg:
> ice 0000:ca:00.0: fw 6.2.9 api 1.7.9 nvm 3.32 0x8000d83e 1.3146.0
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Reviewed-by: Pawel Kaminski <pawel.kaminski@intel.com>
> Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
> ---
> v1->v2: Added example log message
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 1f159b4362ec..71d3d8cfdd1d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4568,6 +4568,12 @@ static int ice_init_dev(struct ice_pf *pf)
>  		dev_err(dev, "ice_init_hw failed: %d\n", err);
>  		return err;
>  	}
> +	dev_info(dev, "fw %u.%u.%u api %u.%u.%u nvm %u.%u 0x%08x %u.%u.%u\n",
> +		 hw->fw_maj_ver, hw->fw_min_ver, hw->fw_patch, hw->api_maj_ver,
> +		 hw->api_min_ver, hw->api_patch, hw->flash.nvm.major,
> +		 hw->flash.nvm.minor, hw->flash.nvm.eetrack,
> +		 hw->flash.orom.major, hw->flash.orom.build,
> +		 hw->flash.orom.patch);
> 
Seems ok. I guess we print something like this in a lot of our drivers
already.

devlink info reports most of this as well though with more verbose naming:

pci/0000:af:00.0:
  driver ice
  serial_number 00-01-00-ff-ff-00-00-00
  versions:
      fixed:
        board.id K91258-000
      running:
        fw.mgmt 6.1.5
        fw.mgmt.api 1.7.9
        fw.mgmt.build 0x6986bfdb
        fw.undi 1.3025.0
        fw.psid.api 3.10
        fw.bundle_id 0x80008e6a
        fw.app.name ICE OS Default Package
        fw.app 1.3.35.0
        fw.app.bundle_id 0xc0000001
        fw.netlist 3.10.2000-3.1e.0
        fw.netlist.build 0x4154dfac
      stored:
        fw.undi 1.3025.0
        fw.psid.api 3.10
        fw.bundle_id 0x80008e6a
        fw.netlist 3.10.2000-3.1e.0
        fw.netlist.build 0x4154dfac


But I guess a succinct log could be useful to have when reviewing a bug
report from customers who just copy the kernel log.


>  	/* Some cards require longer initialization times
>  	 * due to necessity of loading FW from an external source.
> --
> 2.25.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
