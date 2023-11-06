Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06CE7E1D68
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Nov 2023 10:45:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F241C4117A;
	Mon,  6 Nov 2023 09:45:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F241C4117A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699263912;
	bh=M+KmUTDhp4gOx+MA3sV8kBAaxrlqgaI9PtebxKJSerE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gBuMfIJIvs8Sct50q9kfLIddiUDgtgxJmhoeqxNvH0gfaiIohbsdQiNjf5gQ6bs19
	 C52s7Yfbb7VawXbvJKMokyOsKRUssQQy/HwJ/0DnUAkvIqgULR+SiZfCipXEjVgRr4
	 NuC9Z/BKBCnDC3r+ugm7YriH/fepDS8OiLtKIeoRBPP51/2V3Z/8WsE5EeqCHfgjk0
	 A8wHx9KYiD5N6dxfizFMUwv0gIEwRkwKjuLVHv1nRhYPgSDwO9sDxNrYCqqRvL3/Pk
	 N/zxGHQgTvAK9LtiKOMed1O4zECAuldQl/lDr7FkP+ztdIpZ9p8KF8wWAZNj2VRK12
	 OEbny3GxcCEmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oks2FIOh2-EE; Mon,  6 Nov 2023 09:45:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3AEF44116B;
	Mon,  6 Nov 2023 09:45:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AEF44116B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2714D1BF488
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 09:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F196661141
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 09:45:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F196661141
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JFlEY3snE9Zr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Nov 2023 09:45:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF9FF6113F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 09:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF9FF6113F
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="379631390"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="379631390"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 01:45:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="852931661"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="852931661"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2023 01:44:59 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 01:44:59 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 6 Nov 2023 01:44:59 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 6 Nov 2023 01:44:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZaZg1K3sc60HsjAKGdYMrlAvIfYfBdnoz19b5m/HawXlrO8pZvz2+XjEF60UYCZAfSOZ4+y5DLLaY/zxf10h0fnfNyXzyKLGuOpXMrAYSM5O3/rh6tYagYvSgQKRn7HqtZGfu+ArhxPrRnM2NzVXRdwHeHZQ1APTyKuzUVhT5kTM2Zi+feJ/Qj37yZ+cMyRVvV31WRh45Ft38w08R1nx7HM8PQJZIE9Yu9vHV/rbGKyKtK5FJSI2SeGJvM1elv7eJI/T8+Nlgy0lk7FOOieywelMv3M2ApdSQkQ3kxTZAE9ytuBZILxOJDOVfOCsHUd/xf+4qonYTikbQk3PyiX1iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DhbWHFGgJKgpzEr/QR4qjsUo309FzLU1nQKvuYpWBac=;
 b=X8bjpripTRf3cGlTb+j29m5nlpc60Exdzn/WnA/fSvxLHLP1hm8QGo1ECgG2hkPMIqCnjIpnOcc65rrcq96ZJ7jvVLnmxVaWwLsz2MeozoOCzU+XxIBv/njXOIynfMz/CSFWGQhrF+sDdNhpMn+ocZI0cOvMrYpfX8XrLAfAmvxvp4J0LvvSh1GK3CJzzjRYTD27sVwMC/UH09N/G8sFworBOf1pYuv9dBN2Nc0cGzuDrSKpjThNlv++d5UYCS6breAPUSXq0Wz8WDyso4+pyir8RJZPDsBZCO4dd/DRv/W6x7T8/Alkm84VUP9GThpfOybq6Q3CaQtj5ETDbAqQDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DS0PR11MB7531.namprd11.prod.outlook.com (2603:10b6:8:14a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Mon, 6 Nov
 2023 09:44:57 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::1b1e:8472:f24b:6693]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::1b1e:8472:f24b:6693%3]) with mapi id 15.20.6954.027; Mon, 6 Nov 2023
 09:44:57 +0000
Message-ID: <6dbb9b57-ef68-44bf-b54e-932954dcba73@intel.com>
Date: Mon, 6 Nov 2023 10:44:51 +0100
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231104182908.15389-1-paul.greenwalt@intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20231104182908.15389-1-paul.greenwalt@intel.com>
X-ClientProxiedBy: FR4P281CA0240.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e9::19) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|DS0PR11MB7531:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ab99e5a-cc12-4086-7de0-08dbdead093e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rVrbVyb8RBaoHE3b2o+MjhTQ3H+bvN8AeQEmW39aDJ0gA+EACprI4enEatEhQYRXL/mnHXgbla/vYCM6vcBhl6wWhRxpPGBFGQxZOHU4DRFwHqhL0m2uzrihb2Vp759Y8tobOiIwBQ1CzzxQZ8JmAZWgSsn9kcoFwb410F4pgv5G4TPDkIngYh2HOUkYohCWnEV+E7/s8nR9Fev1q5dv+9/2KFAX3yiDqiN8QlcQPiUfAAcqvuvhPAqbkmVrXGov19CkmlVZx9MwS9KJObC5FbhOAZ59YyMnNTnYzs57amVBjvSFw/c0btrx3ydFjgm0vNViL+wvNonY717gBUbIYcFsYal4ySkR9EhvBV/ArzbVqYNeTV3ZFJTpx/VnsCyuiRYXgF/pslBPeG7/PBVCX4q8GxHWVjE/rV8twWk7qDIETn4n/lYK3D1Vjk27Y/knMWYtqdm0YvOi5wBeB07rXouQJkKZzGtG+wjlxK48AfcSalXunPohl594q6IAbfBVHj2drdikcJ/bbR2giBbiNwRd2elmOgGYHHdH31Fff/wUvRlyvMJ/hWyhQtkHueW7mCMLKOpccYIYsmW/eimTuPzGVZRIPHNQGEa82yH4eYhwUwfWO3/6uyB1a1qWnNQOprJOepqDuzveoqQTIVDwhg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(376002)(396003)(346002)(39860400002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(2906002)(83380400001)(31686004)(26005)(6512007)(2616005)(38100700002)(36756003)(31696002)(86362001)(82960400001)(66946007)(316002)(6486002)(6506007)(53546011)(478600001)(4326008)(6666004)(8936002)(66476007)(8676002)(44832011)(66556008)(41300700001)(54906003)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHh5UENseEZBL3lldFpQdWdabUhiK01mdEIzaUFDZUZnRFJwR3RLN0UxbFR1?=
 =?utf-8?B?KzNRbmhRU2k0eHMzVlkrUWUyYm5Mckp0b3RwdlFWU0ZRNEwveGhzRi83cERu?=
 =?utf-8?B?aDlLWUJhQkRCcjFLVC9LSGJrOWpmekcrVm1odlphckIvekJpaXdZNFpReC95?=
 =?utf-8?B?dEkxR3dzR0dXT0FJaENzbVNsS2Z3Z1U3aVBzalkvQmZvTlA4Z094akNUbWRC?=
 =?utf-8?B?N2RIN2M0a3IvUk1CbWJjM0k0Qkh5Nmc3WWp4b3BVQVF3ajhra1B5K1FwQ2J5?=
 =?utf-8?B?cllSWjdOMm1IbkRpb1B0dVFkVjV0amlOdlRvdkFRSVJNVGdoNXNZNGRwa3J3?=
 =?utf-8?B?S3dHdWJmQmFMczFMNE1lcDZFZHhOQzRxbGovZjdMdUV1eThRYXk3alRyVEJt?=
 =?utf-8?B?YVU5R3IybHJPb2hlZUxLei94NjlCajEwNmwxd1BIYWtyZHFhREZ2SjVhMmdn?=
 =?utf-8?B?OFVPdE9wVUVMY1Vtdm9FWHZ4d1F0Z3BzaHJaeWtCS1BCR1BMQk5nakZ0dERh?=
 =?utf-8?B?aUtJdVRkeEkxVWphZ2tyWjVTUUNKR0Z4LzFKMUVGT0RxbWFWMTByUTdOT3RF?=
 =?utf-8?B?azNsanBLMEI3aXNHc3Jtc2ZhODZrV0RHWWhadDl3N3huM0hCajFHaGVla1Nh?=
 =?utf-8?B?dkVxR201ZWR1RlFYeGF2bW4wdDQrdHJoS3lCeGdjVmNMbFhkVXRIdmpBWm5B?=
 =?utf-8?B?R3F6SDByVFRwODcvZjhQQndFT0dpYTk5ZThMSm1CU2JJKzRMZUF3WHRTb2tK?=
 =?utf-8?B?WHhId2dRZ2V5WWtqTXF6SmJTR1VPOEpYU29ITjZmeUh1ZmRoaWw1aGI0UFhv?=
 =?utf-8?B?UldPZnZlV1U3TEthVmNJZmp4czdUUmF3TUhNbHRxU0gybHJmcWtFTGVrd3ZW?=
 =?utf-8?B?VGc2cGtsZDFidmEzUGx6N21RWkw4dG53NVgxTWg2TjhtQ0VBY3VZTzlGOGYz?=
 =?utf-8?B?MjFhY3ZVUXBsUVBwY1V6Tzh2b0cyQXA5dHJUTXg0N094RjUyR0ViN2tobmkv?=
 =?utf-8?B?REFlM1c5dmkvM01kN0J2YnNIc0tVcTM4YndMSGJRSU05cHNWWlpwbWZOelN0?=
 =?utf-8?B?eFhlQ29CQTJLSUcwdHJQdkVwY2IraTlQVzhJN2hxSmxVcEc2bEttYjcvYjl1?=
 =?utf-8?B?MHZlKzRXK2VFRUkzQzQ4QUYzYkh5RUl1ejBPcGxmZFpZVkw5dlRFV1hKdTVs?=
 =?utf-8?B?ZG81bzFzUlpYYm5DTk9nSjZZb2dicjErNXZsNWF4d2dJeGs5TE84YjY0OXF3?=
 =?utf-8?B?RmlBRFJhWXoxSVkwZzdGeURlUmdGdFM1WnkrbEVTcndYM0dSMFZkLzEvbTA4?=
 =?utf-8?B?Z3JURFA1M2ppZkgyV2JZWHY3UGZWSUFVTEZrUGJEUEE5K0dtczdMbGFheEtG?=
 =?utf-8?B?bUtORWRJbTNraUdDcHlSK2gzcHIraVNmS09JcVh3cUZWNlVqSG03bElxVlNV?=
 =?utf-8?B?SXNrMGthVlA3YUpQbHdWRDVDejB0UEh0VGdNMVZreVY2NHcxcTZhRS8yNFg3?=
 =?utf-8?B?aVFqcFFPOGZFMlVxclZycDBNcW5hQTFTTGNRZnFDbGxkMXpoaEVPWDJSM08r?=
 =?utf-8?B?MnQrUHdZUGM5ZTdkWUJGUzQ1TGRuaG55WUJZQzU1bVNIWnBGV3pYL1ZIM2RC?=
 =?utf-8?B?NFg5SFRMMExGR0Z4TWl5VytZRW4xek82WmErYnNzSnZ2WWNYdjFDeEZ2K3BG?=
 =?utf-8?B?VW00Z2xuamVRMC9CRy9vNE1OZUhMQnNTeG5CQVpvRTRidHJxbGRTRzhsR3Fm?=
 =?utf-8?B?b0RzSjRKQ251UkxWZVo2bTkrdHFmbkFESkhnTUIzVWdUcm1lNjVub0JPUVZs?=
 =?utf-8?B?SVZNK3ZCYnRydnlza1M3Zm8zSy9scm1leHFGTDY1SG9mMVhoSVZYVFNNTVA4?=
 =?utf-8?B?dDhlc2xCTWlUSXZQRTVIYU4rM2JzdklFMXZHNWZPNGJwZDNIWGJZNjZ3ZXR1?=
 =?utf-8?B?QVJid25uTXNhZDlDYlh1RFppSWRVc1ROa1VqRHIzUkFldEVlR2kwWndBZjVR?=
 =?utf-8?B?MStaOXg1Tm9POUhSaWUvdDZIN3A3VjZyRjJWRklKSzAyRWZOSjBhL1M1dkt4?=
 =?utf-8?B?YVR0NHRnWWhFMzhMSFgwODM3S0FaeTd3OEp6Zzd4NXk4WkVRd0tOdXd4bnNZ?=
 =?utf-8?B?L2lnQ2xXdjVybmJhcXJXTFp1R1FNNWZPRHdyK09hQnEzNVlUM1djdlpNMVpX?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ab99e5a-cc12-4086-7de0-08dbdead093e
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2023 09:44:57.1766 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H8X9IXhd/5hmSw+FSiZkPv6cf/Y+w/11dPPs8WeGT4E1OKDKWH0UoyibKGBupKY35vHQzdwD/AtJPyUrLIWllbFfRiugMUO34Patol37YOw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7531
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699263903; x=1730799903;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DIwV2GAbUC4jR3Aqfc2y7hHMpyAln7IOkTvUVWxPt3c=;
 b=O5boaZnBMnwK4hsUtCbX/HkPGeDp4womb5Vy/jCirUcJyd919EtYqtte
 tONRv5WI137Jm6qoPClM3Gzlgv5hRUVirRfkOYn+xMwBuMKmfod3zW4I5
 O0XN5hrK+WmYp2RKQ7lk1S9B+ipCaC5MH5CktqBEPjC9vy0Sw3JWMc+CX
 MTLZne1OC6mTkTQyFs3SDhPcLRXV1R3NFofsC0w/DUbNM1woUEq/rWHIO
 qKbch/yWFkHSrxkaiaA83GQBLKRbtc1Qmmhl1TGWMJ6gARmWBWHgPH1/O
 5l10WY/XhkBRdjADrv31Xo2BhE6hv1Nt612FWEf8AzFJmVTAX6jfEJUYy
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O5boaZnB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix DDP package download
 for packages without signature segment
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
Cc: Dan Nowlin <dan.nowlin@intel.com>, Maciej <maciej.fijalkowski@intel.com>,
 netdev@vger.kernel.org, jesse.brandeburg@intel.com, Fijalkowski@osuosl.org,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 04.11.2023 19:29, Paul Greenwalt wrote:
> From: Dan Nowlin <dan.nowlin@intel.com>
> 
> Commit 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
> incorrectly removed support for package download for packages without a
> signature segment. These packages include the signature buffer inline
> in the configurations buffers, and do not in a signature segment.
> 
> Fix package download by providing download support for both packages
> with (ice_download_pkg_with_sig_seg()) and without signature segment
> (ice_download_pkg_without_sig_seg()).
> 
> Fixes: 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
> Reported-by: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 106 ++++++++++++++++++++++-
>  1 file changed, 103 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index cfb1580f5850..3f1a11d0252c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -1479,14 +1479,14 @@ ice_post_dwnld_pkg_actions(struct ice_hw *hw)
>  }
>  
>  /**
> - * ice_download_pkg
> + * ice_download_pkg_with_sig_seg
>   * @hw: pointer to the hardware structure
>   * @pkg_hdr: pointer to package header
>   *
>   * Handles the download of a complete package.
>   */
>  static enum ice_ddp_state
> -ice_download_pkg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
> +ice_download_pkg_with_sig_seg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
>  {
>  	enum ice_aq_err aq_err = hw->adminq.sq_last_status;
>  	enum ice_ddp_state state = ICE_DDP_PKG_ERR;
> @@ -1519,6 +1519,106 @@ ice_download_pkg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
>  		state = ice_post_dwnld_pkg_actions(hw);
>  
>  	ice_release_global_cfg_lock(hw);
> +
> +	return state;
> +}
> +
> +/**
> + * ice_dwnld_cfg_bufs
> + * @hw: pointer to the hardware structure
> + * @bufs: pointer to an array of buffers
> + * @count: the number of buffers in the array
> + *
> + * Obtains global config lock and downloads the package configuration buffers
> + * to the firmware.
> + */
> +static enum ice_ddp_state
> +ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
> +{
> +	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
> +	struct ice_buf_hdr *bh;
> +	int status;
> +
> +	if (!bufs || !count)
> +		return ICE_DDP_PKG_ERR;
> +
> +	/* If the first buffer's first section has its metadata bit set
> +	 * then there are no buffers to be downloaded, and the operation is
> +	 * considered a success.
> +	 */
> +	bh = (struct ice_buf_hdr *)bufs;
> +	if (le32_to_cpu(bh->section_entry[0].type) & ICE_METADATA_BUF)
> +		return ICE_DDP_PKG_SUCCESS;
> +
> +	status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
> +	if (status) {
> +		if (status == -EALREADY)
> +			return ICE_DDP_PKG_ALREADY_LOADED;
> +		return ice_map_aq_err_to_ddp_state(hw->adminq.sq_last_status);
> +	}
> +
> +	state = ice_dwnld_cfg_bufs_no_lock(hw, bufs, 0, count, true);
> +	if (!state)
> +		state = ice_post_dwnld_pkg_actions(hw);
> +
> +	ice_release_global_cfg_lock(hw);
> +
> +	return state;
> +}
> +
> +/**
> + * ice_download_pkg_without_sig_seg
> + * @hw: pointer to the hardware structure
> + * @ice_seg: pointer to the segment of the package to be downloaded
> + *
> + * Handles the download of a complete package without signature segment.
> + */
> +static enum ice_ddp_state
> +ice_download_pkg_without_sig_seg(struct ice_hw *hw, struct ice_seg *ice_seg)
> +{
> +	struct ice_buf_table *ice_buf_tbl;
> +	enum ice_ddp_state state;
> +
> +	ice_debug(hw, ICE_DBG_PKG, "Segment format version: %d.%d.%d.%d\n",
> +		  ice_seg->hdr.seg_format_ver.major,
> +		  ice_seg->hdr.seg_format_ver.minor,
> +		  ice_seg->hdr.seg_format_ver.update,
> +		  ice_seg->hdr.seg_format_ver.draft);
> +
> +	ice_debug(hw, ICE_DBG_PKG, "Seg: type 0x%X, size %d, name %s\n",
> +		  le32_to_cpu(ice_seg->hdr.seg_type),
> +		  le32_to_cpu(ice_seg->hdr.seg_size), ice_seg->hdr.seg_id);
> +
> +	ice_buf_tbl = ice_find_buf_table(ice_seg);
> +
> +	ice_debug(hw, ICE_DBG_PKG, "Seg buf count: %d\n",
> +		  le32_to_cpu(ice_buf_tbl->buf_count));
> +
> +	state = ice_dwnld_cfg_bufs(hw, ice_buf_tbl->buf_array,
> +				   le32_to_cpu(ice_buf_tbl->buf_count));
> +
> +	return state;
> +}
> +
> +/**
> + * ice_download_pkg
> + * @hw: pointer to the hardware structure
> + * @pkg_hdr: pointer to package header
> + * @ice_seg: pointer to the segment of the package to be downloaded
> + *
> + * Handles the download of a complete package.
> + */
> +static enum ice_ddp_state
> +ice_download_pkg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr,
> +		 struct ice_seg *ice_seg)
> +{
> +	enum ice_ddp_state state;
> +
> +	if (hw->pkg_has_signing_seg)
> +		state = ice_download_pkg_with_sig_seg(hw, pkg_hdr);
> +	else
> +		state = ice_download_pkg_without_sig_seg(hw, ice_seg);
> +
>  	ice_post_pkg_dwnld_vlan_mode_cfg(hw);
>  
>  	return state;
> @@ -2083,7 +2183,7 @@ enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
>  
>  	/* initialize package hints and then download package */
>  	ice_init_pkg_hints(hw, seg);
> -	state = ice_download_pkg(hw, pkg);
> +	state = ice_download_pkg(hw, pkg, seg);
>  	if (state == ICE_DDP_PKG_ALREADY_LOADED) {
>  		ice_debug(hw, ICE_DBG_INIT,
>  			  "package previously loaded - no work.\n");
> 
> base-commit: 016b9332a3346e97a6cacffea0f9dc10e1235a75
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
