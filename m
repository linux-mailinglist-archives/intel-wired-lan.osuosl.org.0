Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEAE8BF54E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2024 06:47:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81AD0406E2;
	Wed,  8 May 2024 04:47:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WRvD92IZZfAx; Wed,  8 May 2024 04:47:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 771BA4072C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715143625;
	bh=VKPcfQ6DwE/5klpjWx70mJ1ngpybKv73YSlZpda6RXg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=obGaOS76PeVo99HdGrBQZYjWXAAIrB8tfWpYJd5nCjiOqgk7XGMt09SRgR0d7L4AU
	 0ziuTcD+pL3Eo0hivd2jHbl+J/NeLX9kS5nhDc4AGg5x6sLlj0uefxYaW+GE6fu5up
	 fPfuUTL+5qCoQ1XCfgKo71R4dJNGeVgCYhK09ycSilKL+97cV1a6UUgyop+GQP4uX7
	 FXQvX/slNaXrLyLDSMkN+/HIRe5AukRO11D/rEfuWtgqOigjMNBUczMBfqSxCxCIhN
	 IjRspfpbPMjb0cXlIdiLwgwUBhwIQgBJuMGbPLxEepXvx9Y0zyPeRN/z+IhQylYqeI
	 hALuQmfHat6Kw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 771BA4072C;
	Wed,  8 May 2024 04:47:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 031631BF401
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 04:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2AA160BA5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 04:47:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3cC44HFvyidB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2024 04:47:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0722260823
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0722260823
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0722260823
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 04:47:02 +0000 (UTC)
X-CSE-ConnectionGUID: bqauoRRAS8+ybAYXFZSRTg==
X-CSE-MsgGUID: fJkS3fjgSHe1qXm/ZBQXTw==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="21540924"
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="21540924"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 21:46:59 -0700
X-CSE-ConnectionGUID: DvVA+MWsQmO9p6x1YQfrJg==
X-CSE-MsgGUID: SKkwDVjrRymQf2L4R40BtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="33273201"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 May 2024 21:46:59 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 21:46:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 7 May 2024 21:46:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 7 May 2024 21:46:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FDwve3hfxNXt0KMYqPJjBNMcI9S3I8kQshSgwzrIMp1ywUgyQp26VmsbTY+oNcfRMsUNqerxbxMQleDXCLL5F6zcELhUx7eqjndbxguLHtWWobER/6mFbYsgrMvi1Fm+Xh59dAJoMLZYGpi9HsYrMC647KSAl41sgTdl9pJyVvt0KhbLJUYpdHSrbLcMtzGUUA3sazCwE230+l55MTcbftlS4H8AF7i17OpJMr0jiQA1ic0bjYfkOD5xSlzMG441xnjO5bQLkIJz+oB0gnK2zRkO6I4Ohn6RdqB6uk61KbQb/eW2gQhyia3KmSgVRE7d+qMIGTdOfQ84HiqGGznY7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VKPcfQ6DwE/5klpjWx70mJ1ngpybKv73YSlZpda6RXg=;
 b=PifxWJYK5aJ3P7KWJ5lW7FdlXPIE3hfswU29sZP3/XWysOkwrin1ROqeD9lEnfBUUWVpw10aNlpo0dwvl9C4JMWmTeLr98yNQEGqhj7AYpyvRqES/Z4SS/vRx/r9ITNvRi8FPCOFzv2uwiEntcR3I6TIaiC6F2DkjvxeUaP3m4tWkPMc6p385zZQgztBFkDhDGPlwOypFXRa3UrZHFZG2RlMZfYt5aan5vuz8Q6Zagxsn6Z+KYsAOQEY5ps4NPC6RtdnSQnTgwZSOgSR2GWFqo6og99g98Gv/CZ+1B+4OfN7wPXlZEJ3znyqvAcE398XBixc7Kay8r2qmV1Mh2DUZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by SN7PR11MB6875.namprd11.prod.outlook.com (2603:10b6:806:2a6::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.39; Wed, 8 May
 2024 04:46:57 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f%4]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 04:46:57 +0000
Message-ID: <367fc6ac-cad3-4b2b-9456-2859f1bd4be3@intel.com>
Date: Wed, 8 May 2024 07:46:48 +0300
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, En-Wei WU <en-wei.wu@canonical.com>
References: <20240502091215.13068-1-en-wei.wu@canonical.com>
 <f47e0bb6-fb3f-4d0e-923a-cdb5469b6cbe@lunn.ch>
 <CAMqyJG0kMFShx8Kir17mNZ1rD7SaBt2f_Wpv4ir+5-92v3bNaA@mail.gmail.com>
 <aad721c1-93c4-48bd-9f05-00c4f6301dce@lunn.ch>
Content-Language: en-US
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <aad721c1-93c4-48bd-9f05-00c4f6301dce@lunn.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::18) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|SN7PR11MB6875:EE_
X-MS-Office365-Filtering-Correlation-Id: cbc00499-3c3a-40db-f433-08dc6f19e3f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|7416005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UjVvNi92YllyRUwzL1RYOHl1ajhXdDFoTjRveXEzWlBGdEE0VTI0UmRTcnpN?=
 =?utf-8?B?U0VQblExZ2UxOHFtcXMrN0dWaHd4K1N1V2VvVmR6b2tIRG1HRFpVSk4xUW1a?=
 =?utf-8?B?cm5pUnoraTFEdjQzY052OFJjemZsVnM4L1dFdE4rR3lrUFd4VDdTWU9VOFVS?=
 =?utf-8?B?Rk5PRGtmNWJ2WWtDc0wzS1RPdmtiTlhRN1RScUlKdFhzKzFqSkFOcjh5WEdw?=
 =?utf-8?B?b2ZXUEhaTzVLb3N1MkNDVlI5Umo1K0ZURDJia3d0MDhwMk5nYm52QkxQc0Z6?=
 =?utf-8?B?QTY3OExTM1QvcWJvMzNtVEE0eVcxRGdma0ZSenB4NTJGMUxZTmZkMGtoT0R2?=
 =?utf-8?B?V2V1KzE3YUJNbTZuekg1NE1hbmc1Y2x1L1VsazU0ajV1SHJvdlJtcklBbWMx?=
 =?utf-8?B?TjRaMjRuZElNYjgzZlJpOVNNNDBUUURPUTRzaVRpU1JiY0tBc2o4cXgwTFdX?=
 =?utf-8?B?Zi9YZ2pVb3VYSGdhZDkxN0dhUnppMGQ1ZEN2M1hVRGJJWHJVZXlIZVpma3dB?=
 =?utf-8?B?N2lBT1Y5dEI3anhna29oRC9halQvZkVLVC8xMHBJOUtPRno3eGh4dmhtQnJC?=
 =?utf-8?B?bSt5R1IxMVBpcnE2b290ZHJNd1BocXgyODdhUEZEcm82OHhqclBMWUp2dUFU?=
 =?utf-8?B?NXUxNzIzL1lUaStUTXBUMThPQzU5dU1DKytkUjN5b1EyOGRuL0ZWS3VIRUpS?=
 =?utf-8?B?ODdYYUVaZjlZZFJwSlBkZFVRekdONUlXN1RaTHprdmp3a1IyVm9YMy9qZE9D?=
 =?utf-8?B?alM5UzhnZk1mZWppWUwzWVNYdFRNZ3ZudGVRNG1HVmlwck1ObnI1UUN3aUht?=
 =?utf-8?B?MnhtaHNHQWNuT0JhNlg0UHBnMDJ5WVFZeTkrNUtRN2FhSStaYllyRGJzTkVy?=
 =?utf-8?B?dXhmdm9zYjFhZWNTTzFrc3NCRy96Ykl2U1JseXJCMFUwTkdwazNZSnJpSkZX?=
 =?utf-8?B?enlEd2prc01jWEpUbzBya09CVjVIaHVHTXhVZzhmb2RMQy95TmgyYnBTZk9X?=
 =?utf-8?B?dW9PYnkzNi9XZEkvRC80RFJjL1pkOUEvYzRZRW5SL2RvQzZxNExhVC9oWjJm?=
 =?utf-8?B?akpCVDliK3dUWSswNkFPa041dWQwdGU3Z3lWMFJ0WUJFUzdtRWZZU1p2S3hS?=
 =?utf-8?B?dDYya0E2cENBTFdlQlFEaFVEVHhrcHlaOXRGSVpkalFOZXlBQlNMR3Y2Tnlq?=
 =?utf-8?B?SS91Ty9DYVNPazR3UCsrb1pqYS9HWGkvRVh6dkhFckFHVFJ6MTBORzU5TERC?=
 =?utf-8?B?NVZoQ0RmRGZ4ZlUzKzRIWlFZbndIWm5ndDMzWW5BaHllWjN5RXNDM0ZiZnpW?=
 =?utf-8?B?ekFjVGZnckY1dklldVJ0Y05lOUVJR0dwa1V6OTdZMGZuYUZuMnE2OThHamhF?=
 =?utf-8?B?em1rMFhIcnpENjBTZHJOZmZ5Q0xEajJyU2NDYTYrejRKRDV4Qm9RZFpBTWVB?=
 =?utf-8?B?Sm9tbVBMSTdxQThjdk9jZm5JNURxQzVDdzZKSmx0aEhzcDErQlRaVEpqRy9u?=
 =?utf-8?B?UTZrQkMzdXlLWG9WZ0ZPbnQrUUJ4dGZQK1dBTkoybWtaVHA4U3R6QTJhUGpO?=
 =?utf-8?B?NlJzM3JOZ0JRT3JLaHZXeWgyL3ZXUjZvdnFzaUxzN1FvQ1IzUTF2UXpPQmdI?=
 =?utf-8?B?U2pZWjBNbVdQWGZ1SWRxeHFLWXNVNFptaXNxa2dnb0pCMWNjY3dSNHpScVUx?=
 =?utf-8?B?NUJYSUNscnY2YUJreTVkU2wwck8xK1lxQktNMUJXOFJkZmh1d09OVkF3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(7416005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1p3ZCswcXIrUGdJRitqOGtPRWpZeUw1cFhXYWpxcGl0SjRnVEJINnhLaGNH?=
 =?utf-8?B?L3h0U1prakJJb1k1cnhjRlF5RkFIdk5lMm85UlMwbEMxWXg4N1hkck1vQVAr?=
 =?utf-8?B?eDViOUZoaksrYXVsSzhJNUpna09FSnF4akJ0ekJQWmVMMG9MWmVmbmVzb0NW?=
 =?utf-8?B?b25FYXdmMGEvc2JjR1ZkN0xERkNKWE5jWWh2ZlhFZjV0NERlUHJLbjI1N1dV?=
 =?utf-8?B?andNMHJDeTE5enVjVitUUjNkTHBiWVQ5RjhpR0gwZ204a2xqOUJVcG5ldEE5?=
 =?utf-8?B?Z3RkcDljcWtYb05hY2V2N24xOEs1QTNGRDM0Q24zOVZIZWxYN2VvUUpBcHFL?=
 =?utf-8?B?Q2J3UmF2V0h0a2pOY3h0V1Jyanc5SUc2WnBySnI2TzU5QmZna0cxMnlxVlAx?=
 =?utf-8?B?eXhKdDZkaGpHZWdidjhDUFF5S0xwbVlwZE1WV0lGazFQZTRvNW4zeXYyMm5W?=
 =?utf-8?B?YjZpOS9JVU9XRW9XK1diallSL2xROUhwSUR1cy84RjRDTlkvL0RBZ3F4a1ZO?=
 =?utf-8?B?TmVBc0NDVXJBSGh6ZDlYVytKNWFLNmtVVktXZm5LMW5OZU9iQWVrQ1lXU0lP?=
 =?utf-8?B?NEpjUW0wV3B1dVE2MG9nWm02UVAvS1V4UldHMUlsTkVNNXBZUVRNYmU1VENC?=
 =?utf-8?B?S0tKc0x3K3ByMU0wOTNlMmR6b004ZzdRbDQ5T0hwMmp3T09XRzlvQnhmT0Fl?=
 =?utf-8?B?YUdJc0xqQ0VLT3ZKbHNIako2dXYreEQ4ZC9vNXJPQ0ZpWUwza0xiK0hRRFdG?=
 =?utf-8?B?dDhvcUJhNmFJUnZ1OEpJKysrWnNEVGxBaDVEUTdYUlRjZWtYdVB3RVRIWjlL?=
 =?utf-8?B?QllTaHpxK3VzMVllNktEZTBOY2lUaG53RUQ0aU5BM0RNOUhmbS8zajJqYzFD?=
 =?utf-8?B?TXBZY3FrU0g3Y0h6K2pMcEEzUWZ1L1daWTREL2tRbmpYaVJaMko4MktqeEJB?=
 =?utf-8?B?Zk1zeG1JSW1VbEl2NmtzaDNUaVlsUEVPYU1tWkVwZDRWeXJweklzY3E0N3l5?=
 =?utf-8?B?UEFnMzVhU3NUaDVvZWMwWUZna0pkRVZmVTBNUGlXT2IxSXA4blRGYzUzT3Jx?=
 =?utf-8?B?UmgxTXpKQ0dyQkNjb3NmN3BrZFA5VmpOQXd6SU94VU9JV0dCR09jRWU0VjdB?=
 =?utf-8?B?eVJvT09HTkV6TmkxaTh6U3B6SVBIeENqZXdIS2JYRUFaTWZzaXJaSE1aODNi?=
 =?utf-8?B?c0UycFUzMTVzY2M4WjRFVDhaakxVd3E1aDZWNktrZjduakZ4SnVnYkpNWHFW?=
 =?utf-8?B?aWtyWDgwNGsyWWhCYXRodEhSSXBzREJPRkoxZS9PQmpydTJPYThBTzBFUWVM?=
 =?utf-8?B?cDJnYnkzMWMvL0J3UlV1Q0VmaVFHVm5CQjNHN1NDaG1rQ1I0RUkwa3E1VWQ0?=
 =?utf-8?B?cWNOc0t5ZWFpMnRYOXJaMU1NMFMxV3NVcFBtUDg4S2dIQlVlK2YrYnpUM0Rk?=
 =?utf-8?B?QjhvTnl6RDRYWGhtY1VtcVQ4MGhjN0FpUzJTbGlzeFRsOHZ2K2N0THdFZ1Jl?=
 =?utf-8?B?Wk1lekpVdUluOGpTa0FCVHFhcVNmeXpCSlFiNXFJV0ZwV25oM09HSHBMN1h1?=
 =?utf-8?B?VUxzR3czdDFJRzFmczVUYkNsb0hNbVl6K00yQ1JUOXM2RFY3VWlZUEpUVyti?=
 =?utf-8?B?cFNEU2JkeFhLUjVkcDc3WFArbmJDZ0czZDRxOGt5SEROMnBUQ2owMzRoNVBk?=
 =?utf-8?B?YmVERGt3dkhEd2hDMEhZaFpuakhucnNaZHZya3hUOGpCdVU4U3IzMmhFcTF6?=
 =?utf-8?B?S1hYall5eExWeG8vck9rSVl5WGx2Vi82UVpYaDFVa3B3UjFWMEcwS0tMMFJU?=
 =?utf-8?B?R24wY1F3d1llaEFPNjMzL2ZXMDRzU3hyaTR5d3hNNDMzSWRBMXpvOWdQaDhK?=
 =?utf-8?B?OFhPSTRUYjVoTUJRRks2TG5GUDhtb2wwelFVZ3NZczVtVVdjQ3ZMWExlVysw?=
 =?utf-8?B?S0JrcUl4OUtZZ3dIZ3hEREJLbUxhczdrck9jcWVBQXNYb1lIYUJldUJ2bWpE?=
 =?utf-8?B?ZmNmZ2NVdTJJUUlIYmNxN2MzSk16ZVhOT3RZUGttaU9hYkdkZ3YzN2ZrNTdv?=
 =?utf-8?B?V1F0Slg5U216cTA1eXFZQjY0VzRqY2JWS1lqZ0QxTzBtTVg3eWlmREJsaFBH?=
 =?utf-8?B?Ynh3NS9WZEYyNWxQZkdQVm1tL2NGdzlhSGJWaUEvWitMM1A3WlRva3NtTWVV?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbc00499-3c3a-40db-f433-08dc6f19e3f0
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 04:46:57.1906 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oORfNhVQip2ys8SS271cZZE9KUsHKCoFov+gWbPrBgb5Y33lhGMuokBime3I7n1NDItPyzGTDP6gdrf5/zfNVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6875
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715143623; x=1746679623;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Bjc2xpFZeyM+fxIwDSPP/Q3EH6w5XJ5sF7gtFDAKU8Q=;
 b=X/9OyeeK79nb1uiQYz4lFxQS8L2uOw21qbvYc8hPLQXENLlT4iqxOoxo
 LcxNEabUwfibwZb1qNhcKW31OBYl/rmk0Zp8ZxnncROSjgqrsp73BrWdn
 9WgDyRrRSlbX6MrApH+WLDpQa20ueW78MnZIhocapKNRHjqMA5UxeZL7F
 MfU+kbbBzxpH2AoFjr6NvHMjkBLTFE/FZYl6PPEpev+VUrwsooKzTxhSF
 grpnWbUp+2P3uFcXOKrY3P4Vm0MuZvAEe3ycOSdmyG8I5dWcmCt0X6E42
 dq8uY3BMA76r1R6qx7tCM4WGR9IlQNdL/0QFIYl7nbR56MW9N1fYZD8fd
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X/9OyeeK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: fix link fluctuations problem
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
Cc: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, jesse.brandeburg@intel.co,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 rickywu0421@gmail.com, linux-kernel@vger.kernel.org, "Avivi,
 Amir" <amir.avivi@intel.com>, edumazet@google.com, "Neftin,
 Sasha" <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 07/05/2024 15:10, Andrew Lunn wrote:
> On Tue, May 07, 2024 at 11:24:05AM +0200, En-Wei WU wrote:
>>> Why PHY is this?
>> It's the Intel I219-LM, and I haven't found any other device having
>> the same issue.
> 
> There is no Linux PHY driver for this device, only the code buried in
> the e1000e MAC driver. Sometimes Intel use Marvell PHYs, and there are
> a couple of work arounds in the Marvell PHY driver, which might of
> given you a clue. But not in this case...

In I219-* parts used LSI PHY. This PHY is compliant with the 802.3 IEEE 
standard if I recall correctly. Auto-negotiation and link establishment 
are processed following the IEEE standard and could vary from platform 
to platform but are not violent to the IEEE standard.

En-Wei, My recommendation is not to accept these patches. If you think 
there is a HW/PHY problem - open a ticket on Intel PAE.

Sasha

> 
>        Andrew

