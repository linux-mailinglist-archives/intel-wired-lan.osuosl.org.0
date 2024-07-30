Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B49941381
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 15:48:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AA9E4063C;
	Tue, 30 Jul 2024 13:48:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K-aN3RxnUWeM; Tue, 30 Jul 2024 13:48:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36F9E40609
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722347288;
	bh=TLcMJQcYbsX029qzPVJ6w6a8H4dyobzzUV+t/Ms9C2s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lxEhjw9FNWkoUZwYHAuhi7Kt/v035xpfI9qfxuwVQMeMY+jYeGnyJoGGJSwKYrG++
	 vZPxiz4fr9qEaH/yeIcjPDXImzG53vz7oGZFh9PzYI4aBmJf1Ve00pgGsZO6PUWKGH
	 WzlfYQDCUuq9knnAXY+0f0dq2dpsC7NBxsCs9RFuU41O/EBl/L41PONDCh/1V/9R5w
	 O+RIMyNfKqK8C4vH5x46Wv4I1KkYO7IOJEwC0N3Wy+YHDWs7V4gH3+zUg6wYWlhqjd
	 D0EHNZuJQJblHrNEaIqOvQUlBZDSnKmbw/uLAjxpYIPKCwECdRmKWN5c32cb1p3aMX
	 USq6BMYqvIPug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36F9E40609;
	Tue, 30 Jul 2024 13:48:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 441481BF404
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 13:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D40360736
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 13:48:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id flZVd9o72ZvR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 13:48:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 351F96065D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 351F96065D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 351F96065D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 13:48:04 +0000 (UTC)
X-CSE-ConnectionGUID: 40dhsjexRU2MCQoetfdt9w==
X-CSE-MsgGUID: K+z1rYOIS4m4kIw5DPJe5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="30828877"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="30828877"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 06:48:03 -0700
X-CSE-ConnectionGUID: l49LHLiGSi2w+FxA4C/47A==
X-CSE-MsgGUID: rKzX7ARuS/mmQhgbHEY1qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54925676"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 06:48:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 06:48:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 06:48:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 06:48:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 06:48:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oZZ4xGzX3Ko5o8fI5xTsXv4ef/wFc+NQzLxX2I2flkoet3VbVFGDeRN/HMDstA+NKL+8AvLdWFGzbIH9pbB7Qur3b8LlSmUlP4rr3bxytxBlz81rhp5LN7EIvRfUJz//jXGTLcuiKgardrA8RJ/OuczIdaKpNOJO7yQ8gm2AAOE6+KAqXSZaY3/NhxXB9XPGsyVPU/SKICKU3+kLUae0jSTFaNjhTKA6ciIoVYvknB3pkg+1jr+EmiaFkicBrHyL9PFkz93YAOP1Bhxia3sAkjZPH9p5QOlUHGSWoLH6GtZ0Glw+WQA7PPpZzZiWe/dk/cShfV4c/2G7GIwVZaObbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TLcMJQcYbsX029qzPVJ6w6a8H4dyobzzUV+t/Ms9C2s=;
 b=BUbbPRa+cA8A2bfdxukO4ag+NdHWhjTjkDw0Cfj5RJbRLBWZg6CR21RixLdgbP0Nm8Zcy9dcTAtnQNf3Oh6h/4d7OvBuh4ZcGOuoNQtAj4fhv6zxzuQA65n19W7XWnTq1ttWmymLWRPwM1odZZFuoMteOJk1Lrj1uFxuhW3Ip9K/IPh4YG5xwq08ukNtVW2uAv3hXbH/qU70CvwoK3DZ3xjk3E+eBe3iqDEYAomZ2R8+4IyrFIzyQrF+4QSnEw9d8rCduS2DjYYW2T7S88DPpHTDgnI7xDCwhFuXo5gXwSlYQrHufUmfJukkK//cgAR58j6hjUVyA6KImQ8EQbReMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB6955.namprd11.prod.outlook.com (2603:10b6:510:206::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Tue, 30 Jul
 2024 13:47:59 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 13:47:58 +0000
Message-ID: <202df7dc-99f0-4715-9e4a-5ca1f6488077@intel.com>
Date: Tue, 30 Jul 2024 15:47:53 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-8-mateusz.polchlopek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240730091509.18846-8-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0369.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:82::15) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB6955:EE_
X-MS-Office365-Filtering-Correlation-Id: 55048c88-49ea-4948-7067-08dcb09e3904
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y2lPb1pRWnNKSG9nZTB6NURZTGxtSlY0V2dpM3U2dGREV25jZzR6OEtHZlpw?=
 =?utf-8?B?eitZY0J0bjRyWFRHeHQ3L1BkdXlmUnMwTnRCanZoNUthZkV6VVZSN2c1S2E2?=
 =?utf-8?B?QkMyOFdNdmk5L1FJWDRGTzUzSUcxWmtoSjR1SWxkcEFieDVnVEpvY2ZGbEtM?=
 =?utf-8?B?WlMvb2lidUVFVHRMQWpqRFVHaHdVemtSTngxVVFhZlRZQ0ZRbFVGNU9DbnBF?=
 =?utf-8?B?RGVLOEdvU3dvdmlMVXhUYitHYTA0Q3UxenNPUlNQek9PZXBWUE9UVXNobW1x?=
 =?utf-8?B?MFFieDYwV05QWFcwcVpRdkNBaFpWT0czaVEvdHhuQ2NNbWhQT0cxTUZlM3hK?=
 =?utf-8?B?S1BZZTlabnM5Z0Q5RHFpZ2hnWFBqb0ZDM3hDYU5zU0lwLytMMDl2M21TSTB4?=
 =?utf-8?B?YmZEUTRBWHRRK0EyWHBOdnF3Y0FFMXlibTlnQ0xsbXVLWU5ZMG5WcFk2M3Vx?=
 =?utf-8?B?VVNwbU9OWEYzNzk3YUpUcHFSa214Y29uSjhuS0RCYjVVdjZ6S0ovd3RLbitL?=
 =?utf-8?B?aUhUK016Ukk3REFiR2J6UTQrcDUySUtkN2hxclY1cXVsbFJ0amxGcjFhUWQy?=
 =?utf-8?B?TjQ5L2xTNkVRbEpZMkRrUXZWNzZKY0VGOHZaS0l2bUViV2Q4ZEo2SmdxcmFT?=
 =?utf-8?B?R3pFQjBUS2dEWWxQNkZSRWdsMDM1MjU1VWZGNFhlcEJWZmNUUW9JZzg2bGpi?=
 =?utf-8?B?dlhsV3lNb1o4dkQvSUt2Q2NIekliNWpOU1JjdGdNZHdiM1FBdTdOeHJsdWVa?=
 =?utf-8?B?a1R2SGhUcHFlcDVtR0lWNXhpQ2pmUGxMb3JkSWV6R2dWTXp5SnJUcmE1cTlO?=
 =?utf-8?B?ZlkzNm00ZUVvaXpYaVJNOWxOejBlSkVEMS9HNWo5RCsrRUVMM0orVGR6Uzcy?=
 =?utf-8?B?ZHZUWE5yZ3YwOEZmdjR2N2ZYOG02ZXhLTEI4NFgvK3luSC8xZDEwblcyWmZM?=
 =?utf-8?B?R3ZadWVtUE1qOUZkTGg2VEJCNVpBbHREQytTNnYwaHhaMENyZldwUzQzYUx6?=
 =?utf-8?B?eU9kVkcyY05UOTliTndwUVJNUnQ4eHJIWTJiZWc5OEZHbUNJcWhhenNLdVVH?=
 =?utf-8?B?TFM3djJNQzZjQlcwWEVrTVY5aThKWXZ6TE84N1hhcmxHRjJzOFROSG1hMnZP?=
 =?utf-8?B?Y3l6Tk9EQWtvK3RiTHExTEI0cGEvK2hTaUE5OVdiVW5EdlFtUlRJSEg4WW5o?=
 =?utf-8?B?WDVvcGpuVWE2NUNVenoveThuekNHV3JDMHBXUEgvSFRoc0luUmdWcTZSYzZX?=
 =?utf-8?B?SDVpY3BlbjFQSU9Zd1paUk5ZbGxJOEQzY0pmWGxoY2d6aEZYWFR4QXJKYW80?=
 =?utf-8?B?eEUzdWRLZGs3T0l2Ui9lVDdRYm00SUFjVDlKdDdVbEUvM0tMZGFXU1NpM3Zo?=
 =?utf-8?B?WHYzc0lYY2E5QUpzTXRXTWNabVRVeHhwY1AvNUhMaWxuWHpsOFd2bDh0VXFD?=
 =?utf-8?B?b2xERkFYdU9jMmVWMDZIWnVycnVNSWkyZnZyRmhBNVdid2xBTmVXRExpNzdS?=
 =?utf-8?B?Ymg2ZEZVdFdrUkpQWWtORkhHYktGVFA5Wm9wMzhOcWtERWoyMkpDeGxreGtY?=
 =?utf-8?B?THI1Zi9sTEx1cEt0dDFEOUZiQmNya01QSVFxN0FKUnVBamgvelA5WG1MWWVG?=
 =?utf-8?B?WjBFSER2UDQwb2x4d0dNQktvR0MvazJEK2loQkRlejlhRmpTcVJVdDgydk9S?=
 =?utf-8?B?TlVRTVVVOFlmNk00dmZhaG9GK1B0WTgxTHZDYXpkY3Y1WVhEKzZkUVFVK2VB?=
 =?utf-8?B?aUJpNEcxR3ozL2ZKWHFPSi9VT0FVdVNrYlBYeU9TRHNCVTVHZWludDZwQWpG?=
 =?utf-8?B?Z0k1WGp4RTBsaU11OE4zZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVJaNDRpMGxMdWVmYXM2Wm9lV3VPcGs4dUVaakFxT0M2bmpzZ0Nvc3Ryb1RQ?=
 =?utf-8?B?cXhOMmcxM2VjVWN2OFNhT2tQSTYxZEpaQmxkODZFZ2hVLzY3ekw5bFhJRnUw?=
 =?utf-8?B?K2Z4RG5NZEw4VDFhbEp0aHVwREs3Ti91OFJyamlEc2xYcnpSQmZxR3hlZUdL?=
 =?utf-8?B?WHpYY0VVV2N0UkovSmZwc0FlQmFBSlEvMGpjK04rZkR5ZGVvMTZTU2R6b0FK?=
 =?utf-8?B?UmJGa0cwQk54SW1SQkoweE1WRy9vVytJL0pjMkcvckJVeDE1cmpjZ3gyU3ZX?=
 =?utf-8?B?QkRVWVVwakJYclVNRWRJSzl4Qmlmc1BDUTJROStSckNJRXJFK20xUGdrbFlR?=
 =?utf-8?B?enN3TXZqQUFoeEZTeitvMkhXWk1LcFJtRkp2UTBrSm5PUUdlaG1BcFZycVRP?=
 =?utf-8?B?bm80UmZ5ZjBPQlluUWxMVlZNeEcvNFZKeFBxNWcvVUc4QUxKamtMcUZVQWpV?=
 =?utf-8?B?QXNEaW5vNVVXbG5pZVRkd1orTER0VGJZaVdZTHo2Yk4rcVlzK1J2c1FlOStv?=
 =?utf-8?B?TlVXcXRCYXNnTGtISkdzSFh5aDFzckNLSDdvMFRJMVh3TnZsM1pMZExRNmpm?=
 =?utf-8?B?WC9UdStVVkRjeUJ6T2hoaU4xSEFxUUlHZzBPUHQwdS96WmRoUDJGNUI5K3Nq?=
 =?utf-8?B?WlNsTGJDZm1PcFJaelQwUm1IdW1scWpGOTZoTmRPLzlQVFFpYTlONUFMWGtF?=
 =?utf-8?B?MExpQXBTQyswT2FWbDZyZE11eHUyRUN5OUhqVS8zdmt0SmxRdll0WTJINkx2?=
 =?utf-8?B?SHgwa0lDQ0IrRGIwU3dKNnhkem95OVdCWlp5NkY0cEZyM3IzNU4xcExQdGpl?=
 =?utf-8?B?Q1NqbXN1b3NGbnNxVy81WTRsbXNLMW9UQlYzSnlkN2RlcjU5TFhpYkxmRnBy?=
 =?utf-8?B?UTJHaitvM3VDOHA5bW00NUVKQ2t5eVFmNW9UZWhvaDgyR004RkwzOG1ka0Fu?=
 =?utf-8?B?akRsR0l6ZkZTVzk0aS9kTk1uOVZBajhVb2lGZW5oY2pONmVlcDdJdEFmTFFD?=
 =?utf-8?B?bjEva084Tzl6Y3FiUURCRUNQNHNCR3YyUHgxejIwdVBtYVBRQ2JwSDNRc2tr?=
 =?utf-8?B?QXp5ZVVUa01hVlpwdE5HK0hQendXTTVoSzNnZVViZEl3OXJBYzFSRmc0RWU3?=
 =?utf-8?B?NEtKZWMzQTJ4YkVxbEZ3R0V4NUhPRmFYUkRuai8yYkFrdnVxN0xtNERMNHhG?=
 =?utf-8?B?MXlCblcrYldybXlSbE1HS0hpTUp1emxjenJWbVFoWHdLQkJWcWpEeldWbnRC?=
 =?utf-8?B?aEdyVDdmdVd4S29GaVY1Q3Vucm9nR0Q1OGh3Q3A3Wi8vSXRUalI0ZnZCL3lS?=
 =?utf-8?B?WDNkU1FRNTZ0aXFXQmVjRWV6RkVoRG9SNFpYS2diN25SSmpHUkFCM0hIeVA1?=
 =?utf-8?B?RklZbE94Nm5GNUFpYVJ5VGtEYmRWUll2WXNabjFVSlBIemYyczRJQ2VVSEl3?=
 =?utf-8?B?cFdQQXNqb0ZJazFvREZGRHRqZTJnWW5EejBwbHBJSHFmMEFJU0NxTkFMdisy?=
 =?utf-8?B?elkvbDB1eDlGeXk1TmNCR09ERWx3RWdCZkM3QXRDd1F1NUllclUwY1BOc3Za?=
 =?utf-8?B?eGo4dndXQndWUENaZTNTdGtCYlZQT0IvdUEyeGtpeHJCZzJMdDJ2bDcvWW9s?=
 =?utf-8?B?TkZPR0V0VHRKY1IxYXdyZElHREoxcVhnME1OUEV5dEgyWkhuMCtaQmp4Z2g0?=
 =?utf-8?B?K00yZ0JGNlV0bkk1UGQrWEk5RTY4WllwR09PUDhLdzVxd1JpUktuTDh3MDRy?=
 =?utf-8?B?Mmp2SUpaQjNyUklZQmdlVnpKZ0hZbHFOM3MycmFEY0tLcVI3UHJTRHRhMlhz?=
 =?utf-8?B?aGxlNHYyd0szR1pkaEJSR1pnYTQ4YVgyWVJtUnFmbkJYNW0wWFpNeXFWcjEv?=
 =?utf-8?B?dUtNL0lBMm9yd1dyNm54ZUN3Mjg5UVhEd3Y2cUs3bnNZdlNxamtCMTV5VlpF?=
 =?utf-8?B?cXluVnVldXdSbVRQcGZjZ2huMHpiNXNzc1U3OXNSMjJsUms0MFlBaWxuTFlx?=
 =?utf-8?B?VlAvMjl3WFRyNzk2WWV0ZGoyaG9PaUQyWjlSTVZNaTFZYkZScjF0WG1JeElj?=
 =?utf-8?B?TGxTSWhaRGplU3pyeXNLSkREMitVdjBLcDZwR1I5SEx4STF3cU5TanZNTENV?=
 =?utf-8?B?cW1sNkFmNUNzaEhjVlcrUWY3TjlXcjhPNm1yNUpJSzJJOUZhSnRjZEVjUkRi?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55048c88-49ea-4948-7067-08dcb09e3904
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 13:47:58.8554 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y/d5gNzaSYppm2Qq2dlytyf/eRy+NiFp10m9+OPqm1WOoyTpTyqrKqcDzW/V10HA7qlkfJ7yBWhnzjZbH/2cLuKzpEbv6c0DDY+FKBd3KBw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6955
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722347284; x=1753883284;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rRKc30LTJoVeJzu7o+lGwh1zDTZWZCbHty8DzFj9U8E=;
 b=PLktOSLSRWnD5PUMk0cJzfXgnG2K8ROQq2T0w4cwzXfWPCvSdJzQ/3nj
 C/mAzOhjmYJZznA9JosUcLuQSYLNChob2NnbZaoEKjMI1jbTfY1j7mKFQ
 +cCNKYmKlEInSzWdQp/Tzs2uBTVB/bHNpgfUbQ5xyzvoAHsPupn6D1YeL
 8VptRF3UE3FNWvZjTlFTGQ0PBxUf8SWCMQ+uQW3dNKw/R1KT0c40BZKmg
 1Abmb79wv36mLafQayzxD1zoHC7TmXWYcH5OEVgoafdzq8LouZdM9YUVq
 ffsLejf7PMNOsONfaK/CFBm/tVsbcNNjmksnBzIWE53VEwp3LUlla/rfq
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PLktOSLS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 07/14] iavf: add support
 for indirect access to PHC time
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 30 Jul 2024 05:15:02 -0400

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Implement support for reading the PHC time indirectly via the
> VIRTCHNL_OP_1588_PTP_GET_TIME operation.

[...]

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> index 1344298481d4..46c4f8e11bdd 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> @@ -3,6 +3,23 @@
>  
>  #include "iavf.h"
>  
> +/**
> + * clock_to_adapter - Convert clock info pointer to adapter pointer
> + * @ptp_info: PTP info structure
> + *
> + * Use container_of in order to extract a pointer to the iAVF adapter private
> + * structure.
> + *
> + * Return: pointer to iavf_adapter structure
> + */
> +static struct iavf_adapter *clock_to_adapter(struct ptp_clock_info *ptp_info)
> +{
> +	struct iavf_ptp *ptp_priv;
> +
> +	ptp_priv = container_of(ptp_info, struct iavf_ptp, info);
> +	return container_of(ptp_priv, struct iavf_adapter, ptp);

1. 'iavf_' prefix.
2.

#define iavf_clock_to_adapter(info)				\
	container_of_const(info, struct iavf_adapter, ptp.info)

> +}

[...]

> +/**
> + * iavf_send_phc_read - Send request to read PHC time
> + * @adapter: private adapter structure
> + *
> + * Send a request to obtain the PTP hardware clock time. This allocates the
> + * VIRTCHNL_OP_1588_PTP_GET_TIME message and queues it up to send to
> + * indirectly read the PHC time.
> + *
> + * This function does not wait for the reply from the PF.
> + *
> + * Return: 0 if success, error code otherwise

Period at the end of the sentence.

> + */
> +static int iavf_send_phc_read(struct iavf_adapter *adapter)
> +{
> +	struct iavf_ptp_aq_cmd *cmd;
> +
> +	if (!adapter->ptp.initialized)
> +		return -EOPNOTSUPP;
> +
> +	cmd = iavf_allocate_ptp_cmd(VIRTCHNL_OP_1588_PTP_GET_TIME,
> +				    sizeof(struct virtchnl_phc_time));
> +	if (!cmd)
> +		return -ENOMEM;
> +
> +	iavf_queue_ptp_cmd(adapter, cmd);
> +
> +	return 0;
> +}
> +
> +/**
> + * iavf_read_phc_indirect - Indirectly read the PHC time via virtchnl
> + * @adapter: private adapter structure
> + * @ts: storage for the timestamp value
> + * @sts: system timestamp values before and after the read
> + *
> + * Used when the device does not have direct register access to the PHC time.
> + * Indirectly reads the time via the VIRTCHNL_OP_1588_PTP_GET_TIME, and waits
> + * for the reply from the PF.
> + *
> + * Based on some simple measurements using ftrace and phc2sys, this clock
> + * access method has about a ~110 usec latency even when the system is not
> + * under load. In order to achieve acceptable results when using phc2sys with
> + * the indirect clock access method, it is recommended to use more
> + * conservative proportional and integration constants with the P/I servo.
> + *
> + * Return: 0 if success, error code otherwise

Same.

> + */
> +static int iavf_read_phc_indirect(struct iavf_adapter *adapter,
> +				  struct timespec64 *ts,
> +				  struct ptp_system_timestamp *sts)
> +{
> +	long ret;
> +	int err;
> +
> +	adapter->ptp.phc_time_ready = false;
> +	ptp_read_system_prets(sts);

[...]

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> index 4939c219bd18..24081b01fb16 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> @@ -6,10 +6,25 @@
>  
>  #include <linux/ptp_clock_kernel.h>
>  
> +/* structure used to queue PTP commands for processing */
> +struct iavf_ptp_aq_cmd {
> +	struct list_head list;
> +	enum virtchnl_ops v_opcode;

You can make it `v_opcode:16` to avoid a hole here.

> +	u16 msglen;
> +	u8 msg[];

	u8 msg[] __counted_by(msglen);

> +};
> +
>  /* fields used for PTP support */
>  struct iavf_ptp {
> +	wait_queue_head_t phc_time_waitqueue;
>  	struct virtchnl_ptp_caps hw_caps;
> +	struct list_head aq_cmds;
> +	/* Lock protecting access to the AQ command list */
> +	struct mutex aq_cmd_lock;
> +	u64 cached_phc_time;
> +	unsigned long cached_phc_updated;
>  	bool initialized;
> +	bool phc_time_ready;

These two can be `bool :1`.

>  	struct ptp_clock_info info;
>  	struct ptp_clock *clock;
>  };
> @@ -18,5 +33,6 @@ void iavf_ptp_init(struct iavf_adapter *adapter);
>  void iavf_ptp_release(struct iavf_adapter *adapter);
>  void iavf_ptp_process_caps(struct iavf_adapter *adapter);
>  bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap);
> +void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter);
>  
>  #endif /* _IAVF_PTP_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index a75a9cf46591..4163dfe90b4a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -1532,6 +1532,63 @@ void iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid)
>  				  VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2);
>  }
>  
> +/**
> + * iavf_virtchnl_send_ptp_cmd - Send one queued PTP command
> + * @adapter: adapter private structure
> + *
> + * De-queue one PTP command request and send the command message to the PF.
> + * Clear IAVF_FLAG_AQ_SEND_PTP_CMD if no more messages are left to send.
> + */
> +void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter)
> +{
> +	struct device *dev = &adapter->pdev->dev;
> +	struct iavf_ptp_aq_cmd *cmd;
> +	int err;
> +
> +	if (WARN_ON(!adapter->ptp.initialized)) {

(no WARN()s)

> +		/* This shouldn't be possible to hit, since no messages should
> +		 * be queued if PTP is not initialized.
> +		 */
> +		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
> +		return;
> +	}

[...]

Thanks,
Olek
