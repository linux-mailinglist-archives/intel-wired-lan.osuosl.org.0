Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DC2912920
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 17:13:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDB46616C1;
	Fri, 21 Jun 2024 15:13:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kvVlXR5lRl1U; Fri, 21 Jun 2024 15:13:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90A896168E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718982800;
	bh=qDCfBha08H0HhPkX7sR5QH9Nvg9WIOdm8NNLTwmYERE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BIHAw0XoALhIqId5dFT/QsOZuCKPGfsAYYwBtx3z9GoyzKudhDn0YgpW1dZmfSc0g
	 j4y19r56ZplY8McoQctnfl8j18I72bEiEUvG8s/dsMnwDxpdE3cFaH53ZTduwiKC3o
	 P83C8EE7yR0+21On4AGz5UHRMHF6wkaFKfA7uWjrXj1jV/3aoGdXZ3RS+fg1aJVAei
	 prOMUZFup05fyRLwkMhH0Og/klmHJPo9n+Opxpn6t+B+C41FSy9OKepBdOuvCHEg+6
	 jxSm1wms52xRTq9OFuwPaKG/hWlUWLqyCgO7BgtXW+GDPYZ31Lth8echN3BarheqqO
	 UjAtrRmWByfjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90A896168E;
	Fri, 21 Jun 2024 15:13:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1AC71BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 15:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA38840298
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 15:13:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SFoM2UI3pqWX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 15:13:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9A9704366E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A9704366E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A9704366E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 15:13:17 +0000 (UTC)
X-CSE-ConnectionGUID: /71I/3juQuSnghrB64CTlQ==
X-CSE-MsgGUID: nI1ZRY4yQFKtYbJrwJxnYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11110"; a="19906543"
X-IronPort-AV: E=Sophos;i="6.08,255,1712646000"; d="scan'208";a="19906543"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2024 08:08:30 -0700
X-CSE-ConnectionGUID: frBeOyx+TUivajlejuDlUQ==
X-CSE-MsgGUID: eUq2Iwa7QQWXINaxix7BVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,255,1712646000"; d="scan'208";a="43300805"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jun 2024 08:08:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 21 Jun 2024 08:08:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 21 Jun 2024 08:08:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 21 Jun 2024 08:08:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 21 Jun 2024 08:08:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CkYLBrBejs/RMc0+xPYq15TIDsG5he671HsBJzWyAJNJiA0MXax8h+dIvsjz0AR+zMOJE7+qk5gHScdpgf2Hns5+KX/wxPRREUODD0gAN8Bd8QMfShk2/NesvKnIWcvurKy8jcKHyR30nopqRMoG6HtyFUSiEttoiRmWGfdC+pLc+G1JsJrEt2ZVoFZBd3vbLI1QxmkD6Nnw5LR/eD4ngZeDWIDQLhbHQm3UaDMf1kPdNDpjpBwvq2zAjlKGYFXEZ7RXXD2OWXrc6N3tCi9B/gUEnC4dpUi12vwV9YFRAsdZF4cLJ3AZOxtDzREUqmX+HZMJpD/aOI9Hte/wKC78qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qDCfBha08H0HhPkX7sR5QH9Nvg9WIOdm8NNLTwmYERE=;
 b=JqRN4U5Tdvh5Or1NB/7kadB9Q9UR+N5qcb6dJ5aPc3vyhq2nI4Sw1+RQXQg6K3pianZfVLyBqZ0QLpnxvh4IkKr/1bxt3xN1CT4Y4HFAw5qEVY3AXIXLqUw0J+TtWnGTg8e3uKor7Qp9uV1Wn7NM4Ccl7NORu6U8DKC8COXVXHvlzuJFb1ryUO+X1tyX1mg2jMKdFQi9xbXPgn2LdfTB/5SdtnD0UgQ7/8pQQGndfJXgl89F8XeDBkOuzGaczFM1YSz3WXvHlkxku33ohwoNgyAyrlcEcBCujDoM5P4PdIbsF5KFqj5xb+o9b37t+8B6vIX/+Tv9AVn5nlfEelgRsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA1PR11MB7697.namprd11.prod.outlook.com (2603:10b6:806:33a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Fri, 21 Jun
 2024 15:08:25 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%3]) with mapi id 15.20.7698.020; Fri, 21 Jun 2024
 15:08:25 +0000
Message-ID: <7d8dcf75-c12e-c8a2-f0a8-c2612c1873ad@intel.com>
Date: Fri, 21 Jun 2024 08:08:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-10-mateusz.polchlopek@intel.com>
 <94cf16ed-709b-4cab-9325-52670db25902@intel.com>
 <0d40e3fb-c76a-42c9-a9c0-bdb0f4c8e015@intel.com>
 <f9689f4f-885b-46ee-af63-d4775cacd43e@intel.com>
 <af7d5e43-b4ac-43f2-aa13-305c024b3ae8@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <af7d5e43-b4ac-43f2-aa13-305c024b3ae8@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR04CA0014.namprd04.prod.outlook.com
 (2603:10b6:a03:40::27) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA1PR11MB7697:EE_
X-MS-Office365-Filtering-Correlation-Id: 9161b8cb-62e5-4bcd-c147-08dc9203ffd0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|1800799021|366013|376011;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y1kyWUQrSlRWeTdVTVhGai9NVkFVQnN5ays5aThVdmRRb0kxem5GSHdDTmps?=
 =?utf-8?B?b2dzSEYvVEl5QWhpMXBjQ0p1QUNDaXkxa3g0VTlHc3NqQXJjaDgvZ0JwSjBY?=
 =?utf-8?B?amxFQklPRDNTdDZEeDlHdFkvaHRTM1BSeFRFV3pESUdEc20vbHR5aVRucTR6?=
 =?utf-8?B?REp5MWR1U21WcDE4Vlk2amRjR1U5cnJpNUFITlRhSTJvUjE1S2taRlNrVW9n?=
 =?utf-8?B?RUtqandwbG5wdVVUdGFTL1ZSTGNKVCsrVG53N250ZG8rbVM5d2lQcThMQmk2?=
 =?utf-8?B?YXBTQ0wzZjZ1azlOdzBPNWlTUmFpWGVLcWpkT1padklwMmpzWkMzaWdrZldn?=
 =?utf-8?B?VVpubUlaSnFBT1ZUL3RRODBpOVNwTmpDcUFtYjJZZWgwR3RKT2dKbVpCeDMw?=
 =?utf-8?B?L1lDbnNFK3R2bnc0Mkxpck42b0xjUm9qdk42SjlWTlFxY1R4VnNBcExBQ1ds?=
 =?utf-8?B?ZmlBYlExamFDNVoyeUNGNXFFKzdBWnR2ckU1VG5OQnR0bjd3cUhIdE45eE51?=
 =?utf-8?B?ZVRiU3JqZ1Ntdk9lM1BVbjBCZTlxYU93WnJTeXdDengrbTFnaTRUbEU1T05F?=
 =?utf-8?B?M3RwZmtXY0FxSkhzdnM1b0lXVDV3RWdlbEZvYU5ST3o4bloxMDVmYU9nSGt1?=
 =?utf-8?B?VFFUek5VZnBnYllKdStscSs4WmN2bXdYRkVTM1laY2Y2QlpGeWhkd2lSQ1kv?=
 =?utf-8?B?Y3VsTW9yVTIrcVBRMU9qWnNwMlFXdVp6dDQ3QllBQy9WU3Q0REk2Wk5idVBD?=
 =?utf-8?B?aGxhUjd0VTltQUtCYUphZklDL05SRUlWNm5SY2d5NTVQMnJJR29VVzJKU21v?=
 =?utf-8?B?d1lUVDVuazVGeFJhbWp3WHRKQS9DR29ERElmOFBEM3dFYUdiQTlkdmRkTmxo?=
 =?utf-8?B?ZHBXSERUVFVkTDArVERBSFlpTWNOTnJhTmRiNStudTh6N0xFc0JOQ0hTaDFW?=
 =?utf-8?B?VEZvai96ZHR2dUZkdVdQUUE2WVlSQ05CK3IyeFR0OWY4d3pVOWxwU2d6cUFI?=
 =?utf-8?B?d0ZTV2RoVTMyUGNmZDFXZnpDMXc1QnoyQ1hURVJPYm9hejhuaVBNNFZpbFZ6?=
 =?utf-8?B?QTVsbkhSYWV6U1ZudkxsMWV5VUxIWjBVUjVaOG1TVXNidllWRGlaUlAxQ0th?=
 =?utf-8?B?dFA2akplZm9aTEkzVkR2RXJyYWMrNGpXcDY3SFVTaDZDdXdwL2Z3ODNYcDRF?=
 =?utf-8?B?c0FBRFFZc1o0Y09ENUZhZk51aFBERjRJVjhVaHA1Qi9XK2xkYUlIcnQxT2pL?=
 =?utf-8?B?cm40NC92emlxbnFFUmx2ZkU5VEdHSm1uN1JMWkRDclpRWVo3Z2FzSklvSVRy?=
 =?utf-8?B?SXZZSkRONmpobDhCY1dQUS9xSzYzNU9vY054bitibE1TQkpKb1o4S2xHQjZZ?=
 =?utf-8?B?b2hld0g2dC9ybTNublJYOGN2ZHN3NisxeUYvRGh6dDhsNW9Ed09EcFozNDUx?=
 =?utf-8?B?T21ScCsrTDZJVWhFUjIyUDFlYWhoTVJnWGd0amY3RlNYbU5YMTdtUGVyODlq?=
 =?utf-8?B?RmRNZENSMmd1RnBkam9Eb1pnVWUxLy9Qc3ZOeG85SU1pa1VNL1loTEhmcDRu?=
 =?utf-8?B?WXlvak5yZ2NRL0M2Q3JCbXltL1NDVGNFaGZ0eEwzZ1B6bk1XWGpWSS9qMUZU?=
 =?utf-8?B?U2JZNS9ZdHA2YllMR2xqd3lDZko2bVQ0VGpsWlk4dVQxZ0VXanRBMXVwSDZm?=
 =?utf-8?Q?Q5M7kJzuglS50+aRnqc6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVU2ZWdmd1ZQRkZseUk5K2lwT0NmbDBSZG1BcUNKZmQwWFQydGxIUDFENUNR?=
 =?utf-8?B?MFZRczM2bHlSR1NUVWNiMmZCblg5TGZhZ2c2dU1IVXhYcmtDbXpuSS9CWmpQ?=
 =?utf-8?B?UGMzNWNmbW9GVHpkTndWRjFRNzlLc1RoaXpPR0xlclpSV2lLaldwejd5RjRS?=
 =?utf-8?B?aE5QMzRkODlocDRqMndzQVBPcTRHSTBTdENGWUZVZExpbVlUNmFrVzJHa0NJ?=
 =?utf-8?B?NXBjOWY1WVdUUUl0QWw2L3dvaG9UUnRjTlNMekd5djBCbGJvYzc1OEZ6MSs1?=
 =?utf-8?B?RlVYckxSWFVCYWhQSlJULzM3VlRvMG5hVDJGTnYzVHBZemNJZTdkQlFMa0Nk?=
 =?utf-8?B?TjFoRG40akpxYzc3dXNpczZFNllINE5ZL3kxWWcrREhxTm1TRHhXSHB3WEJy?=
 =?utf-8?B?VStSN0s3RStLUFYzalFmOEpVNUNFU000SzdkLzNqaEJVclkrK3libkhrRFdT?=
 =?utf-8?B?OUczMER5MnJJRTVwNGFzSHVEUVNJaGJLRVNWM2NDcFJQbmV0RFpYdFhRRXY3?=
 =?utf-8?B?d1FSTVhGaUtGdW5Zc3R2cVFhbGF1OEl2QkJpSDIyYUVPNUZJWmZzTFprNmVP?=
 =?utf-8?B?STFkUnRFNzZyM1BkWFQ0dk9jaVFsTElaUnpVZzFOL1pkdzAyUXpoOFIvNHVR?=
 =?utf-8?B?RmlDdzN6V2FVaFkvVnZlaUVSWEUyV3RTZEl3N1J0R21QSEF2b3l0U3JWQ213?=
 =?utf-8?B?NDR1SFhGbVp2TnYwZXVkeFM0a3VlYzB5OTlCMFZ1Q0Z5MGkwTWtENGpnSVdv?=
 =?utf-8?B?T2dlbnh0a3YvcU9nejNubWJ1eTdBWS9rVEloMzdNa2d2M0NteFZiK3dzdWY2?=
 =?utf-8?B?WlBzTGNpOXlLczNDSTJNSVExOHdrZ040Zzk5OFRZblZRK1h4M25IZHB2dnV6?=
 =?utf-8?B?SFQ2SVBSNFE2bzJiYVFhR3JHZGI0bWl4Y1RjVTM0K3Y0U29oZjF4MDhFY1FB?=
 =?utf-8?B?NGwwR2ZiWm5aVUtZckFGSW1Xd3BDRUxReUZNZ1FDNXRwY2NOcEFSRkMyUXU3?=
 =?utf-8?B?T2lMVkgyNmtweEVjOENWQ09HM2RDUEVVQXFuazh3M1lQaldaeGJJb0d1ZHJQ?=
 =?utf-8?B?OUJWOHQwV2UveXl1T293bG1LcCtiM1REMThzcDF1RHFCbUlvdEZ4SytTUmRM?=
 =?utf-8?B?d0FsUHNKV1dmenA2WjAyamV1Z01KRkM3bElHRDlBdlBvci83UG5Rck1XMXp2?=
 =?utf-8?B?ekZpeE0wL2gwZG1RUUE2OEc4TGx2d0N0TTFwNGRqaGpXTnVzejh5RGFJaUFR?=
 =?utf-8?B?cGd0WEVIZmVIQ1FUdXd2WlFydXdSZHQrTFhFMk5xOFAxaE9sOERDNWROVXJi?=
 =?utf-8?B?L3pNZGppZGkxWTFzQUNLcytWamcrTWZhRDZsQzdWMnFvL3FPb0pobERHcmRB?=
 =?utf-8?B?R25yMVIxZys5bkdaVEFNUlArMUNUWmpJK0dvWlA2YlB2NGdpOFVLeW1oMXNC?=
 =?utf-8?B?MFl1VU5sbW82NEFvVlJOZk9obGg2WjNZSWdrajU3NnlwOGRKTlpoSWV2Z1N3?=
 =?utf-8?B?ZnVrMmFaT1JLbDFsTGVyYW9CWWwrbENnaGdZS1UyR3Zzck1semZ3Mi9SYWsy?=
 =?utf-8?B?bUJqVzFCdWlqWjF5TE41anBwVUxtYmdNMzZlQkRlaTMyWXpmdXp3L0Vsd1M0?=
 =?utf-8?B?R0pJakFJUUd3Z2JOUTlaQStVUFc0dEdGQjdWUFYzdkRaeUFLU292UjNubXdR?=
 =?utf-8?B?YUpuN2dHbnVZL2R0c0ZPTFVLQmpqVDcvNVM0cWRkTjVTMmY0RHBLK043YlU2?=
 =?utf-8?B?ZzhJUjdaZWs0Wlo4UGxRYnkrbGE1SHJLRDJYcEI0RmJXa3VHTmpXNWFaYmFl?=
 =?utf-8?B?VzJjQ3F4eFZvYjliaFM3YXM0cmo1MXRDMEZSMTcxUmtWd29ETU85THQ5UTBF?=
 =?utf-8?B?U2I1b2kyMXAvOEc1WGRTWXFOcEhUWnhycmp3M2J6RHNZeXZsV3Bhb3RQbHZG?=
 =?utf-8?B?MWdRd2t5VzNaeWJNdWlUalF0ZFp0bWtmSnNseG0wU0UyK3FiNVhpRlRyVWQr?=
 =?utf-8?B?amgwdmxrM2NvZ1U5K21hNE9kVmhOK1lVWi85cjBEamE4SzFPMWUwd2V6VTZH?=
 =?utf-8?B?TEZRMDUrS3dWaXhUUVhuV2NZMlBsakd4RjliWmtlWUEyeVVwb2FtME96OU5q?=
 =?utf-8?B?RGhsUHM3TVIxaXF1UXdTTHFUWDhBQVZmZ1ZrN3VTME11NVIvNUZYWWVqNkwv?=
 =?utf-8?B?S0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9161b8cb-62e5-4bcd-c147-08dc9203ffd0
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2024 15:08:25.6035 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GAqWxCURPTFR3valzwkvWQ3/XY1btVc+39ZaQYYPpm2p0g+BHXRTFT7kNq8F6vsgi3xOI2kkfh6lqVVDGeabJcZcv54Nqpwe3FIzZck6b0A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718982797; x=1750518797;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UbdwT4uy4NFXVfFjNDEYZA83V5Z9X8+JHb2P2+VXIRI=;
 b=mV1KRLTfPDZgyUoseEHsd13lhLcR513ShwEUbUtvUR9qdtI7y0zOfiMq
 Fc4V5YkMSUWfGGirOpn13FWZdY8nTF7JWL34BNyVgCtO4vnifDlXzCOKl
 ZoYxj/e2gnKK/GRGvDxha/iZ8vwaBOJkQr79WBntye0H54ISvWYMYqJLR
 2ekxkcEnyrO+rDwXbvzgWSBakN8T5bJX3xuSwiz/EPYai/RJhsdM4rKCu
 a0N9lNpSTrHhp060+/yNC0wFGvftbAbc4ZMRUCaVEcJJ3fYKPkjBYbpx6
 4VNFa/J/JBrSrcoBS9L8rgOzTBoUCcEnD9pJ6ReGrbVclju2WZxn1aFaK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mV1KRLTf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/21/2024 7:21 AM, Alexander Lobakin wrote:
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Wed, 12 Jun 2024 14:33:17 +0200
> 
>> From: Jacob Keller <jacob.e.keller@intel.com>
>> Date: Tue, 11 Jun 2024 13:52:57 -0700
>>
>>>
>>>
>>> On 6/11/2024 4:47 AM, Alexander Lobakin wrote:
>>>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>>> Date: Tue,  4 Jun 2024 09:13:57 -0400
>>>>
>>>>> From: Jacob Keller <jacob.e.keller@intel.com>
>>>>>
>>>>> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
>>>>> negotiating to enable the advanced flexible descriptor layout. Add the
>>>>> flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.
> 
> [...]
> 
> Why is this taken into the next queue if I asked for changes and there's
> v8 in development?

This was applied before I returned, however, I believe the patches were 
applied before your comments were received. Since they were already 
applied, I left them on the tree by request [1] (while waiting for v8). 
There were other issues reported after this though so I recently dropped 
the series off the tree.

Thanks,
Tony

[1] 
https://lore.kernel.org/intel-wired-lan/70458c52-75ef-4876-a4a3-c042c52ecdb3@intel.com/
