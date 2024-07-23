Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DBC9399B6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 08:30:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D123740360;
	Tue, 23 Jul 2024 06:30:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id edZL_57tauvv; Tue, 23 Jul 2024 06:30:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A49D4018B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721716215;
	bh=4VUs54JmLAkwkMcjnNdrcrWw/D++vD6PkW6j5iMlovQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5BR7fwSNO6HvJCfx46elSI3VeOTePZSW7fVFpiwtfNm4OqvtYEJKQUteFbY7WcOK2
	 Ktwrfb48JeTYwctxfeBNpwUVZjJl8uEZ2XZK1ciqzHCoVV4UtR2rHgTXAvGltqoL3z
	 HnDhfVGozVtIra5/F8fXj7YEGcjATgw9qO2t/tq1mO/3GSVv6OgbAbQwRCY8bjukPh
	 6HY5EQAofsdUCnGW08iFsIzXgrAsFG2ymbRAiikKNzVwvmS1qxuPaivncTpx7hNJFX
	 Jyufsr4mw6atG5cWTp9kGlcUNzoZTXAm3aKVvW1nlHiqQuDHBRoRE2+Y893g6zHmVu
	 269SvEiVvSpiQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A49D4018B;
	Tue, 23 Jul 2024 06:30:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D0931BF30F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 06:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 154C34017C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 06:30:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gy6yE6nSMASn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 06:30:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 52B3640150
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52B3640150
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52B3640150
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 06:30:10 +0000 (UTC)
X-CSE-ConnectionGUID: gaGEMstQTwCpg1z0GNO+wQ==
X-CSE-MsgGUID: Xf0JuhuLTYKXG7yMuEXYOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="44743808"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="44743808"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 23:30:03 -0700
X-CSE-ConnectionGUID: PLi0CLjhQl2cjzMSnsBj+w==
X-CSE-MsgGUID: 3cmnNIluS0WkAoW8GKSWwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52184900"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jul 2024 23:30:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 22 Jul 2024 23:30:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 22 Jul 2024 23:30:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 22 Jul 2024 23:30:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 22 Jul 2024 23:30:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aQhfFxLerfkrexSYDem2EJdVbOrLn55ksAB0/frJJA/XBloBAvvFcLhMFG3CKbOJOKzL0O+nBMVHEGY2PyRbz3oRayaLsVzxTzyFwdURwiPUPW1uu/hVKNCWBCG2bG6vm/vbi9P8/LEhebXtztGR+mVczLWZRM2Uhg2Ed/NT/3YMOlDcnmTiXZhqHcN/0HJMLS8Pt8edJSI2S071vF6hmlLAQR0qGqNCnqAz47cJqPtB3v/sDgiiFdR3hwaWYZr2YfVr7pMRaKUAJ1awWEyS+z/bZDwwDmthpangz56BeiWt8P0TABMthemXOXG8f7kT60Td6Q97S25rYMpcnPtSjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4VUs54JmLAkwkMcjnNdrcrWw/D++vD6PkW6j5iMlovQ=;
 b=JvVX81ZCcfDA4j0wDqKj6Uq3VQC/3hZm/+rHF2mWcqcmc1P8AD4/Q6A1Hgrr6o6xIwPJ0aozM3ye+a/PStslsi454sZzMIX5/FvpC/YEQ1Vy8n27SVcJg08wtyzuWJIM8pku+X+4FD1Fb99MXh/eopUnp9agEMVy+pByD71eWYbAguHMMryhJQqpkRWl8u3VNe53JR/CtpX9hocOP1y4/TIXTFo8aSVBoOEq9fXEDOVWYvJlcENeZXmIZu3IB860RP33lfZhemLj2oMKptKUdVqE59ozW2OYjwni6ff/Inkv2+9A48HI5htEx1aYLjYgKpguQ1y24w9nirE21ksw5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 by SA1PR11MB6918.namprd11.prod.outlook.com (2603:10b6:806:2bf::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.17; Tue, 23 Jul
 2024 06:29:59 +0000
Received: from SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a]) by SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a%4]) with mapi id 15.20.7762.027; Tue, 23 Jul 2024
 06:29:59 +0000
Message-ID: <6404e140-f6b2-4a55-a4e0-af9d9db4f875@intel.com>
Date: Tue, 23 Jul 2024 09:29:52 +0300
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20240611-igc_irq-v2-1-c63e413c45c4@linutronix.de>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240611-igc_irq-v2-1-c63e413c45c4@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0010.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::9)
 To SA1PR11MB5803.namprd11.prod.outlook.com
 (2603:10b6:806:23e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5803:EE_|SA1PR11MB6918:EE_
X-MS-Office365-Filtering-Correlation-Id: 4915d39d-6eab-41ba-06a6-08dcaae0e023
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aXpwK2txOGJRSUtlVS8rSEdNWXhic0pycTZPd1AvUDBxK1ZDUTA0dlNTLzF6?=
 =?utf-8?B?MVJyRFo4WU9PYnplcktBM0EzK1A3S2JkejdOWWlVaU1oQ0xxdWpOWVJqT3Qr?=
 =?utf-8?B?c3hvNjRRVk5aM2VWYXFwMUdLTUZnZHJ5R2p6UlZrb292QVArSzYzc2h6Zmt4?=
 =?utf-8?B?MnJiVkZDUG9Ray9lRHVyUG1oSzJkcUdmY3Z0Y21Pcld3YVFMQkEvSzZtY3Nr?=
 =?utf-8?B?aHRVdmhJeWpKLytxa3l3Z3VKNmk5bnE1eWxMZzU5Qis3VG5oZDZFV0o5WEdV?=
 =?utf-8?B?djhEd3djY3Zab1pPVS9PNGJiUFFHb1FiU1B2bFRqdi9DNDZ4M3lRVkR0Ry9u?=
 =?utf-8?B?QXBXcmJNb1FjRTN3YzBJTUJWYmRWUVFZS2llak1meDJVSG5EUlEwODE4S0N0?=
 =?utf-8?B?dFVNZndESmpJcnYrWXY1am1TNDMrNDNaZTc1SnJuVWlXVHRJWHg2V3YrbHZX?=
 =?utf-8?B?dm16ejVqb0VFUldrWm9Jd1NlTkJqUlVTbXFIRThsVjZHaUMwODc5VHl3NlFp?=
 =?utf-8?B?aUhKVU9aWGlSOEhONEdCMlNVRlJSTnlrTnp4enpSbkxCYkEwYlBWV2xqd2NU?=
 =?utf-8?B?cWpva2twOFNMUldObFJGVVRGQTludFVsYVdFQkpRS1M5cU51UCttUUhmZHox?=
 =?utf-8?B?QnlHVDRoU00xWjVIZGZ0d2JxRDJ0ODd4VTRZbk5DM2hGMEpnNVpUYzQwREJx?=
 =?utf-8?B?YjF2Q3JobUZaWko0S2tIb3RKaEVSWDYySndYSTd1ak5waWp4RzZvb2FkcG5T?=
 =?utf-8?B?Mjg0K0NMMUN6N2J3a2QvcVk2ZzR4NExjRHVHSTQ1VkhxSVJ2RFNZbzFXbTBQ?=
 =?utf-8?B?ZkQyYmZTSlhqK2VIOHQycmxQK0FXVWo4ZitPVjROREZmb05PcTRHRkwwaTdO?=
 =?utf-8?B?eVZjNjN4S2d2NEdnc0Jka2VHSTB5L1dIdEZ5dDEwWFVoelpHZ2Y0cUJyTkpi?=
 =?utf-8?B?N0FyenNnRXlYNGFROUxOV0Rhekh1cWFYOS8vT01vOVJwWVhhTXUyVmRXK3JU?=
 =?utf-8?B?TE9uOGZmMTQ5cFJ6NnRldTlCZkNBT0lUMXZvVTRhM0YrUko5NXlzdGVMRjNP?=
 =?utf-8?B?Z0E0WnluQncwUTBreEw1M3l4YnBUOStZNlZwejVpcFBxekFaRTRHNjZ2bEg5?=
 =?utf-8?B?ajNFUkxhRUliOUFyanlwR3pxNDNDd2JZUElLUWFIaHpRd1FPckJ4a3dhVkcz?=
 =?utf-8?B?VDBKUDhyRlpjUXc2eU1BU2FnL0Y1Z3Vxenc4MHdHRTRjZ3c5WW9XZzFLMUNB?=
 =?utf-8?B?d2xCS0YyRW8rMVZRcWF6RW12Vk45ekt3dC8wZTM0K2dLQmZOeGhvWmhyRU9V?=
 =?utf-8?B?T3B2QytNZjFlemdVVHd4Z1lXeXJPTjZ4SkFhN29RMHBCNm1mSGJwc1loTVNn?=
 =?utf-8?B?b1RqTUNyR2oyK2J5OUtlSVNGK3hqVkYyRXFuNFNjZ1M2eXQreFBVcWtIZ2Nw?=
 =?utf-8?B?VGJ0dXpid3ZaRDF2ay83TVNYNHVsUmNxNDl4S3RtRkdsYTcyOHVSOVFPTVVk?=
 =?utf-8?B?YzVBVWxBcGhRWE5TTnhuc1ZLemNld3F3NGN6S0pjTmlMcTlqTndib3FWT2t0?=
 =?utf-8?B?dFlMaUZSWnU3SjNsSjlNTzRjcHNORC9hQ3JnUU5WL0UxS3JGeVNrek1UOWJY?=
 =?utf-8?B?OU91T1RkbFI4aU1JWmhJbDN1OFZpWEVRSnRnb3FwR3RKVVhCMjEwdFdVZ05S?=
 =?utf-8?B?KzRIUjdZMVNRTDgyb29EZGE0dTFQTHpUT3dYN2tBVXBDZWR3Mkw1ZUNoblhO?=
 =?utf-8?Q?HvO1DTHzypGoZGpDDU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB5803.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eE9tZXo3cWJXWUh4clR2NGgwT2M0aHZ5OGtqWFZtQnJaeE4vcmlMZllsQnBt?=
 =?utf-8?B?b2hESmc4bWdoQ1I5RmlQK3ZDeXU0VDN6bUlkQWJFb2V1b1RTVXBDTzhQekgy?=
 =?utf-8?B?QmRPMEI0WFJGb0pxWDNFcmpDdFZKM0UyOWM3YnVoazU0QmpzWFRUQy9veHlN?=
 =?utf-8?B?bm9pYTlSTjJVc284aDZuUDFWeTB1cERNcVgrSGZYRDBlMDgrRlRBdjlzdC93?=
 =?utf-8?B?aVBsVkY2cWduWksrQWNoVWZnZlBXaGh3NlpzVzY1L1hMQVBoOXc4eW9WSGhv?=
 =?utf-8?B?cXBJaVpneVEzYURFdnZYYXVvNDZLT1RXZURaekNWTlhpU3c5U2VUQTIzc21u?=
 =?utf-8?B?ZXlHd3F5K0NKN1BoR0UvTDRzWUxBMkFIYXh0ZDdzOVpUUCtlLzY5SHdOMHIy?=
 =?utf-8?B?dUY2VEJTNWIzSEI2NWlxRjhpcXkzd0p2cHc5dFdubTdTdEc1Ui9ER1pxeXd0?=
 =?utf-8?B?eGJnb3cyZW5IaW9obGphNUtScHYrbkRsRGRkTGk2TzdlZG13TGl5RHBpeTV4?=
 =?utf-8?B?ZXpRZ240cXY4ZnJrYjhOdVFxVEhQZE1yVFp2OTFWbEpCdk51c0NVay9sNFN0?=
 =?utf-8?B?b0h1NWNMeXhNejJ2QmdvVmFLUUVkbW90Z3lXbTVqdGRpakM2ZjhoK3M1RUZj?=
 =?utf-8?B?SnVBNzE1UFFXb3QzK1IzMjUxa3E3czZyM3k3c0l0cWhnKzY4eEFxcW04TXlx?=
 =?utf-8?B?VDFjYUg5VldGa1RLZHNuTDg5TEh0T0dVWUdwN3UyTm1MakVkUGRZRVZHU0tE?=
 =?utf-8?B?dlQrV0E1RnFxaXlFenNObUl5Nm1laU83eEpMa2R0TGlXcGxpTmJTemp1QVJm?=
 =?utf-8?B?d0NkQnhXSERLWnhQV2ZnS2JheTFabjNrVHlMODQ3SDZQZlJDWk9DWld3QzBK?=
 =?utf-8?B?TUZ2YzJRdllqVUNCa0Z3eEorT0YzZzhDWnh3SDlwQ2xYVUVvYWtyd01pK3R0?=
 =?utf-8?B?THdUZkZFSFIyM3BvelQrZmJTK2ZrbldFYWJSK0NoeTVMNG1JMkxSZlJJdjlL?=
 =?utf-8?B?bDl2NFRBa1IySEh6UGJ4TGk1dndhTTYvRU9qbCtvWVc3Tkp3Ly9YNEduTjBp?=
 =?utf-8?B?UkYzTE1oQTlsUWZRV0d1N2cxdllDRlE1UDNUM3VWSFhRRmNBamJxUVFxSlB6?=
 =?utf-8?B?N0NaUDNIUDdFOGpaQXFvVmhKdUI3bzZOQUJVeXFHaTNQemhlbUFXVG02bUJK?=
 =?utf-8?B?RjJvVEI2d3A4Vng0S2RYMWNTYnViS01uM3V4VE1pOVMwMjZud2dDUExrL3F4?=
 =?utf-8?B?K0R2Zjh2SWs3d3FkeHFIMmNZaWFxcTVZY1B4VTByZzByclpzZUdPNS9FZWpm?=
 =?utf-8?B?Wm1IcXd2dTdQNFdrV0RobHVQUXdVVzA0WGk5ZHJoU1orYzBFTDU3aWtQenlU?=
 =?utf-8?B?VkFTV3BBSDZNaUhucTJYbk9YczNiU0dkdDZLQW8xYzhhQ0I5RW4vblZBZXRx?=
 =?utf-8?B?eTBZRlBTeXdkb1prSmhNOUw1TXBNMmJvRmJEMDFHcHlFMnRRY3dyUXNoQlpl?=
 =?utf-8?B?WlNzdjQ3NGFHRDJaNDZxcVNhYUFmYkl1NEo1L1A1UVU2eUtaODV6a25jdTNs?=
 =?utf-8?B?aTdNdytYUnpXd3k2NUgvMXhBbDYyakc4VWRGcGZ2bEVTZ3VFSitjcWN4Yys5?=
 =?utf-8?B?RDMwWklyU3M2RVB4YnZwRGl6UUtoLzF2MWtUd3l5bVdRT1J1T2FSVnV4L2hY?=
 =?utf-8?B?Rk1GNHlTalkwdXRkVW9MeE83SElHTmRycjAxRGFYdWNTOW96ZDlEWlN3aGV6?=
 =?utf-8?B?WW5RNHMvbTd6TTNXYjBDUnRZR1pVVEJ1WEM0dWNlV1RON05HWERFNnZBVUpH?=
 =?utf-8?B?eDdSeThtcHJDaE4xRVgvUVZ5SlNFcjl1NzBRK1RXZHdjVERMbWpxRGQ1amUy?=
 =?utf-8?B?TEtuZVlMNUJMYnJWZXNxMmV5Ky9OZG9kY0hoSE9KWWpFdGpUQW53aUlPeFVS?=
 =?utf-8?B?WUl4QlJXbEJGMzFla3VuTVpvTkJadE5VUEZWcU8yVnFwdGQySGVrUWFlL2RC?=
 =?utf-8?B?N3JnVkdxUnhEb2dzNEdOZ3dpS3M0S1dNeXBndnJiV0djYXhOTDdqNWxsSW1D?=
 =?utf-8?B?M2s3MTVEelBvZnZ5Y0VSRmFQZkR6b3VaWVc3Zm5QOHdaOFhXYmsxb3lKVzEv?=
 =?utf-8?B?TlVOdit4QXRpRUgzZUh1QUdKVjdKUTVuVDRzVVRDbHBoeXFMSStLV3g3SUtW?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4915d39d-6eab-41ba-06a6-08dcaae0e023
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5803.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2024 06:29:59.2606 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4LcNbJLgHsmUpD1YV+JFw+DlVvlEQlIlNnDFCOGT6ZYt3mJL7NoiaWRlK3JoravB42/HZi2c7Tz70F8W1ZD82XcQKzUSU88KTZEHU1zStgU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6918
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721716211; x=1753252211;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BGE7WnKwq50BkI4e2WACtYxnUEYKgNlTmbybhsY9EOM=;
 b=FjjQBkogevtWWLP9nDwwLjxKPRL4U7xpnKMG3F8fIB1Miu88+Urs2Q3q
 2HShtQSWCAqdH+bF5nPnz+xNVo/F65OyYkGWO9CzTf3ow31rG5vLTSPz8
 BjpxMtQ568ayegfRl1NT7FSIKzlLlc0jd1SQDyyP2GILnYmn7eFhnNZf8
 GNvi6Y8xIjNYkKF1m98eLaPkpSB9xGDeOhHCWAaWmzeqUyXC8FhGPBdpd
 A/gcKexAp0aVNliDNxmJ9i+/1+EW3NWpzls3s81zJyw103kvpPYn6qf1m
 q1FIBnITSY+hNbYqnu7auv5WILynRP6qJ4J959HTdWS2wYVV3dnYJBadd
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FjjQBkog
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Get rid of spurious
 interrupts
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Sebastian Andrzej
 Siewior <bigeasy@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 21/06/2024 9:56, Kurt Kanzenbach wrote:
> When running the igc with XDP/ZC in busy polling mode with deferral of hard
> interrupts, interrupts still happen from time to time. That is caused by
> the igc task watchdog which triggers Rx interrupts periodically.
> 
> That mechanism has been introduced to overcome skb/memory allocation
> failures [1]. So the Rx clean functions stop processing the Rx ring in case
> of such failure. The task watchdog triggers Rx interrupts periodically in
> the hope that memory became available in the mean time.
> 
> The current behavior is undesirable for real time applications, because the
> driver induced Rx interrupts trigger also the softirq processing. However,
> all real time packets should be processed by the application which uses the
> busy polling method.
> 
> Therefore, only trigger the Rx interrupts in case of real allocation
> failures. Introduce a new flag for signaling that condition.
> 
> [1] - https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=3be507547e6177e5c808544bd6a2efa2c7f1d436
> 
> Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> Changes in v2:
> - Index Rx rings correctly
> - Link to v1: https://lore.kernel.org/r/20240611-igc_irq-v1-1-49763284cb57@linutronix.de
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  1 +
>   drivers/net/ethernet/intel/igc/igc_main.c | 30 ++++++++++++++++++++++++++----
>   2 files changed, 27 insertions(+), 4 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
