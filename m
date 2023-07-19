Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7326B75A08A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jul 2023 23:25:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA87F6111F;
	Wed, 19 Jul 2023 21:25:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA87F6111F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689801934;
	bh=BfucEM+3h7tlnrE057rvMh+CNutlDMdsh5SkAUUPfto=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5t5HBb1F0LpMH56IoTaPebhMvNVrHbtWSHlAGCA3QB6WzL0Zsb9ELQ1ogdMOh7Rf8
	 3JUchWUweYYOr8bFJA6wOU62gzMwp+Q2JeYwPZtM1HJl6fYFpfNm0V0ZOEzpJ6M18T
	 DSUUGrIEJvNho/U1CYNocrjIeNTqCJJ2TZVLdRW+c8umqXeDQvJl4F5rLRx2I+ygLW
	 Um2jm+X1s/3IcL58yDIuaqd+Yv7mBAuNyc0Omy4PZenGjl5cKdsRcBSyKiDfWmtFdr
	 Jj+yKcdSOjrX8fEruHv+Y1zvHMnf2AyPMD9uxiFlK3u0cFoFdf5pyXi6RGNliopeC0
	 CUNPoX3P9V9wQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ywCAaL7zXae; Wed, 19 Jul 2023 21:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A39160BC8;
	Wed, 19 Jul 2023 21:25:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A39160BC8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13D151BF280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 21:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC2BE415FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 21:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC2BE415FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3D2v8BkVP2DI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 21:25:26 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Jul 2023 21:25:26 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84F83415D1
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84F83415D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 21:25:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="369222692"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="369222692"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 14:18:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="848187314"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="848187314"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2023 14:18:06 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 14:18:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 14:18:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 14:18:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IoYceKxP+y+ABWF83Ze9is1OojUL3QSJmskvQppHZBebgveXPVXqmjTZBjU1uPsvh/bfOONMrAnAD5QnzZBJHPUY8kW2L/0/zScqr7DW361mArP5h9kE0pJUGUY/TKuxfWohVl/wCBrZWAV/+nB0a6YpRkgxLYiuWg2S4OcJ3fWPuEXhUSpRqW/5BW9DC6lCJI9AnfGxGle4M6IBY/oDPUhD6UYv0NdMdfe6isaG2kc6001IG6wwpbx0O1xLvQgA0M+y4z2qP1rmTq4STGVIdSOsq9URTEBkVsLi0oBzggf536OFChoUHZlKoxG6ODncUvcHR4y1nHXWkzHsQvJcrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GYAwlym2lw6cY/8xh3WxE38H8QK+cqvxk6QheYSPWcI=;
 b=EbNAHc5gIkAsmycqtfjBhixvpaPlmFxHL6rztlKaV8Kb8UizfzS5v+hcJO0GMOCyGbsxeBqryFrSK/EMRGjI5kitG6uQ1vdlzc4IoKc7bD/RprfhWmd4uufh+R4TcCJXMzHFe8GLeDNwkN9NhpOMU2isCj5IzE+DpEi5TfY+IYCJyTFe7K8OMVKCWZahUS3gA5Hci0fwFsohMKV4NsdaigKEMLXdvmJveKXkaacDcSVF6xKahTAy1+5R+GAXqgPdedzN8FjjjWYxL7CAz+Wn+YqMjPsmywHhrg4FV88IgYN85UdF8jPoM87oFFW0lMg4FgHaPUcBZytqopvkigZ3Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS0PR11MB6469.namprd11.prod.outlook.com (2603:10b6:8:c3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Wed, 19 Jul
 2023 21:18:04 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6609.024; Wed, 19 Jul 2023
 21:18:03 +0000
Message-ID: <26d9aed2-6eba-9f19-3948-8d6fb8c9768b@intel.com>
Date: Wed, 19 Jul 2023 14:18:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Alessio Igor Bogani <alessio.bogani@elettra.eu>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230718134517.8247-1-alessio.bogani@elettra.eu>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230718134517.8247-1-alessio.bogani@elettra.eu>
X-ClientProxiedBy: MW4PR04CA0091.namprd04.prod.outlook.com
 (2603:10b6:303:83::6) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DS0PR11MB6469:EE_
X-MS-Office365-Filtering-Correlation-Id: c9a2dfbb-9676-4ceb-91dc-08db889da36c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JoFxsrkpq9pinVEpz91NLvUox2bRqZz3kMI0V15HuhR1xjxaKefAb3MzfMJkY0mluIndGRxtPYIXO4e4nP+Ra2Q6kyWUVQ/dfl2YmHdPiWe9OvoKJezh3bjcr5dU2XSt2G4IEKB/DuUMv8m4sL929XT1ZJm8O0nYwk3ifNfbFT9X7Lcmo3Y8BtD8aWsxOduaawAs30n+utS6w/NXBNxElQGZotFhOFKrm4avKVgZ2XNYZzGH1juOFtirpQg8Oyp6prT+dJQ8ilN2wPz3+qInEkKsRpQFgI71KtDRf9nWVpKIXv8n0QyU+WqnZmgM7ehcqWzJr0iyxPHj+kSrTs5sWP8qmpQYI67OWW7Z0qbeoypnJHkmFQtgdJyeLGdxiLwyqY9jWEEWWFlrwsuhn8PHARovqaZDUJmVPR+u4bdcy+oa7j40xIrwdaeNH/m0t5vINCFEyLa8Y5K9/cEZiMAN4WFHjET/TJ1rfo97S8l2DfLF0xDkv3jgFCFkiDyuW1wnXfVAwxQWxjhpU5/dbOufq891hG+3OzRWy98BWF/BBvoX4ZNp6l0ymxKkTrffW/pPcLvQOKWJ8p6osWca11d7kTUhSOl1GeVKAJyHTbnzJ3kpzv1IyZRNWvvaga8jY0eL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(376002)(136003)(366004)(396003)(451199021)(31686004)(66899021)(6486002)(478600001)(83380400001)(2616005)(36756003)(31696002)(86362001)(2906002)(26005)(186003)(53546011)(6506007)(6512007)(966005)(66476007)(38100700002)(66946007)(316002)(5660300002)(41300700001)(66556008)(8676002)(82960400001)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWMzeTk2ZTBTcmJjQ0RIVVNaUkZyZ3UvU2JpcDhDOGVNb1Y4aEsybmdnR25o?=
 =?utf-8?B?OTRwQXJ6czlBbWNYbEpLUWNaMkVEM1BSTE9VdGxWVmJLSVBVbC9Oa3VlMXJS?=
 =?utf-8?B?emJFS1lad1FDT0tEb1JDYlRSWGpHd3hoMFFXM0IydlRVeG5tQzg1b2NONU03?=
 =?utf-8?B?MStmQXJTeXl2bDl2K2ZiREhJMlRBTEdna2w4WXU2alFUaUdZdllrV0VVTDFJ?=
 =?utf-8?B?UFBlLzNicXdDbUlRdmtUdTZDaVhtZ1hoaEJxSFl0RmlGbjFqaGpydlhybkJS?=
 =?utf-8?B?SzlUTWtNSitIellteFUwUklSODRYdTB4WEhVeE5RdnNwWWZzOGFoaElQTFE4?=
 =?utf-8?B?ZkgvSnVKUHJXUStoek5PalRibjBtTUt4TDhIWVNsSlhheVQrQ3cxcmh5MWZj?=
 =?utf-8?B?ZERYUS9PNEFaNi9nUXRkcjE2OFRNNlVRWkNFQzVZMkZheEpTNmhwai83ZllB?=
 =?utf-8?B?ZDdoK1RFek9MZ3h2ZlJDczE2U0Nzekg2UzBlZmZDYnZhVFhrcm44QmJsVmNY?=
 =?utf-8?B?Z2s0ZkxQUks0cFErZlJLOGY4aGRRQm9XdFE4ZHROQkJ5MDRSWFNZZ1o1UHhh?=
 =?utf-8?B?NWZXZExjd1VLdU1xM0lmNTRoZkNKZ0hsMHpXMUZ4aUJqaFo0UGkrZVZmTlRj?=
 =?utf-8?B?TDY1aG5WNyt3Zi92MElBWTY1eWNKR0h1Q0JpTEE0eTYzZDhJZEFmZE9LQ2E0?=
 =?utf-8?B?cms3NGdsM2RKTlpLMnhzelZnVGFiemZ4RUlzWjBtcHZ1TjdFMytBdEJKMVli?=
 =?utf-8?B?T1RZK0M1Rno0OTRNNzVuWE1RZlVIaU9lRkRKajdPNTIvaW01bkRHejk0cFNQ?=
 =?utf-8?B?TThiN3NURzc5ZWptMVVheCtJd3RhaDJZZjBUOUdvSmJaZll3MjVFK2NwcDcw?=
 =?utf-8?B?Q1YrSFJpOFJaR2p1TnVmall4bDA4eWw2dmRQYlVOYm9Pb1k4bXZJampid3N4?=
 =?utf-8?B?dlpNMzRZMlk5cG9rKzE1UFNmM1FOMGl3NTdHWlNFRkcvcEw4aFUyTk9zbE5j?=
 =?utf-8?B?SFZzVk1kR3ltUFljU1ZIc0k2UHZvaW9seS9vMUx2WHJxL1p6NE5ZSm9Cd1Jq?=
 =?utf-8?B?dGxYaDI5SWR1N29xd0dFMWwzeTBXMkc4RUFVMzRQNGR3WFJnNm9zblhub3Mw?=
 =?utf-8?B?cWhaSkxFSGxpcTVqWkJJaVlqTm9pR1pUQWtEZ0didXZIYWE0d1V1OWhja3cv?=
 =?utf-8?B?dFY4VTBjRURBNXRHVmlsdnIvOE05T0tsTDNraE5Yd1FMbHZBMUVhcWNOdVNv?=
 =?utf-8?B?NXdxUXJEMFVRMGJwRTJoeWZYc3RFc2VzWFgvOWZkR3FGdFlmV016UFA1N1Rr?=
 =?utf-8?B?T2dmekgzSUhOWEZ2cXA2RStIcVMyOFpaRTlKRm9acXI3RmdqZERDYUdrM01F?=
 =?utf-8?B?OFAyOE1ZZ3dHZWd6SHk5SDltOVEyMWNiUjBZK2NlbEQyeTJZRVU3am9YZkti?=
 =?utf-8?B?ckNFZVBuODNJRnZBTGRvMGhEQ3JtbnFjN2F2RW96bVl2MWZpay8zbGdjNW40?=
 =?utf-8?B?YjNtNUFRRWZzdWJMRTE4L0JRQUV5ME1DcEFsQkF1QzdmOUtVVUdSdEROWm1h?=
 =?utf-8?B?bHVJZk1MWHVudzN6UklLVmJTQXRMWTAwTDBhbDR5ZnhMUVkwVFpvTWVNNzVm?=
 =?utf-8?B?WGhObzVTT2ZFWGxEa1hFZzJMQmk1cGN3Qld2dXhLRTcvZ3ZYL3lFalM5QVBs?=
 =?utf-8?B?WHFyM0VVL1NidTdlNFBLN2NBM01LSlc3QUFLaUt0ZnlJOHllTWRVWFE3Wm1t?=
 =?utf-8?B?M3lLdnJpdndzdjdsbklwZk9ETTkxNEVSd1ROQ3JRMktLTFVOMXdjako4VzhD?=
 =?utf-8?B?MTNLWWRZdVc0ODA4QUxUQWJMZ3hycW1ZMmNadFR1eHpZSTFwV0o0NDkyOWVF?=
 =?utf-8?B?M2tTamVaTUlQZVdaeXA4UG9QUkM1TWJRdExmT0hpaWVtNElJRFNWblJyMzRm?=
 =?utf-8?B?S04yOURPWXpaQmJjRzV0R1Iva0ZZV2k5UlhiaVhkYW5MV0hFTEF4SmlYUUN5?=
 =?utf-8?B?MDBGZGxLdUhMNk1COXZEKzBOaEE2ekJrOUp3c3doTGJjVXdXNlk3ZUtjK042?=
 =?utf-8?B?VVlLazlMWk9QRDJSQjFONVJoMnAvSzdEaEd3Vk4vdW4vMFF0RHVpbnBXU1F1?=
 =?utf-8?B?UHAyN1NLdmU5TEJmRXBMckk0VGtlZ0hOM2pGY3JsMytrZStWK0Yzd0sxMWRX?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9a2dfbb-9676-4ceb-91dc-08db889da36c
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 21:18:03.8732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T2DCd6/fH4/aS5eKx9EfgK0Fjd4VZe8bw3e85MVx80E5eEvBapdeHqEnkkiaALasO93Qe0rb++dKmLtGS1IcmFSAZUkiU9sUdV7xAy1bIf8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6469
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689801926; x=1721337926;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pObbdE7PRZ4Xv8low5qc8Pt8DEf6Ecd4JsCWeIOkmXw=;
 b=STScuq8MlHJRZSovf9tC/HN9gYjZH8b2wPUSZ2ZeZG0dMIvXZO64v/KX
 56kL2v1ILd/dhC1nDLVuaANWYt0HyiYoqhIFU8T9irpFxjmFahBSnofTW
 KH9LL/crgdjxGuU1veKl6lPZM1LQ8FFyjnU/b2SLbVw1ZNsl6KRijRh+l
 9SpoMJWnBVA9ctwdbqKvM5WrOJQD1puA4VanjZgiUfSYG9tjrau+oPJdh
 d+mvMCKkB3GFK37ar9MPmsW2H5QMBADkXFl0c7CItCVNS8gLG4fBlOAxX
 +wZ7cneZWj87l5pcMDhrqz6prdgVL8hQ49xvRotVUavr4DIjo9FOh8Zth
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=STScuq8M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Unconditionally deallocate
 workqueues as allocation already does
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

On 7/18/2023 6:45 AM, Alessio Igor Bogani wrote:
> The workqueues ptp_tx_work and ptp_overflow_work are unconditionally allocated
> by igb_ptp_init() but, at the moment, are deallocated only if the flag
> IGB_PTP_ENABLED is on which isn't the case if there are errors or
> if CONFIG_PTP is disabled.
> 
> Otherwise, when we unbind the igb driver with vfio-pci we receive a stack trace:
> BUG: unable to handle page fault for address: ffffc9000440b6f8
> [...]
> Workqueue: events igb_ptp_overflow_check
> RIP: 0010:igb_rd32+0x1f/0x60
> [...]
> Call Trace:
>   igb_ptp_read_82580+0x20/0x50
>   timecounter_read+0x15/0x60
>   igb_ptp_overflow_check+0x1a/0x50
>   process_one_work+0x1cb/0x3c0
>   worker_thread+0x53/0x3f0
>   ? rescuer_thread+0x370/0x370
>   kthread+0x142/0x160
>   ? kthread_associate_blkcg+0xc0/0xc0
>   ret_from_fork+0x1f/0x30

Process-wise. If you can please specify the tree you are targeting and, 
as this is a fix, you should add a Fixes: tag.

https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html#netdev-faq

This is also missing your sign-off

> ---
>   drivers/net/ethernet/intel/igb/igb_ptp.c | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
> index 6f471b91f562..56839bf65c13 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> @@ -1440,9 +1440,6 @@ void igb_ptp_sdp_init(struct igb_adapter *adapter)
>    */
>   void igb_ptp_suspend(struct igb_adapter *adapter)
>   {
> -	if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
> -		return;
> -

There are cases where the workqueues are not setup (and IGB_PTP_ENABLED 
not set); this safeguards against those situations. I think the better 
fix would be to not have the workqueues if PTP is not enabled.

>   	if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
>   		cancel_delayed_work_sync(&adapter->ptp_overflow_work);
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
