Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 628F494BD50
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 14:24:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F01F60A8B;
	Thu,  8 Aug 2024 12:24:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0j_WjxPfq3Db; Thu,  8 Aug 2024 12:24:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FA5860A92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723119888;
	bh=qZ7vD/RR508kyb6HbgUh+gyYhwLy2C9/Qefg1A+pBoc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T8VDQDpAqnKFX0mdnYudmW+il7gu5urHW+pHhcVuMrjdDehgRMLuFvDwlneMH+vM4
	 3C3Hae/Q72Wf88zcvnY6kTsvuL4oopYfgYgmLvFVd3OwP70zJxiKRnYV2egp6940VA
	 ZxNFO1oKZltGb54kSVHmOpFrMZ//M95CEEgviT0PujKs5QzkGURjDEsN/t2aJSRm+g
	 6ZBEx7BoIgruX2+ROQNE08NXHEAFjeHvZjv3hSdvQyQkDHb0X64mtzXlx0v/qNn5kH
	 hD0f6YIS/MYxbEHqA7zWGnGyuJz867tOrKXsVcKNCQVRKWnB5rImsXYEApJ79ftKId
	 TwnoanTZm4acg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FA5860A92;
	Thu,  8 Aug 2024 12:24:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7014C1BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5CABC80A86
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:24:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uor9IEosnJoG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 12:24:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7B11A80A85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B11A80A85
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B11A80A85
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:24:45 +0000 (UTC)
X-CSE-ConnectionGUID: opq0SQgSTXKnf4BSaM4Aug==
X-CSE-MsgGUID: mE6AU5PvSwexm3yndNz7kQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="32632647"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="32632647"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 05:24:44 -0700
X-CSE-ConnectionGUID: +aVaPFzNT5SpzwinjiU+3g==
X-CSE-MsgGUID: cs74Tz//QdqSzqaO2jmv3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="57906932"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Aug 2024 05:24:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 8 Aug 2024 05:24:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 8 Aug 2024 05:24:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 8 Aug 2024 05:24:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WWPFyBbsdx76swUW62RVLMgRVTnvG11eGXvoG2FQnVft0QkeYi7e8PUXstp+gg87C3LKPoHQDi/VMc+HiylXn+V9JFaT2nhYij6OTR3MyeBULAiZ9JZpqNVbO1GMFn80elD1/ePOlAkMxph4BzpF6bnreleqSbPap0e9neWLTPOM9OzPJJHC561uL0Nv7Uo5d1Bgdu6WiMNkZ8+pNPU9haCKUtYnV59SAzV4lea804uh+0YBIKjyMUIZTA6ZbfxdT+72nOb1mHFSpLH87VMDXEhcSdXY7oxEWUJIrRozKej5KaKbJPEHHY9rNn/VKZTORZjnR9jg9SAXkb1Qe3mbHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qZ7vD/RR508kyb6HbgUh+gyYhwLy2C9/Qefg1A+pBoc=;
 b=TztOhpxUwu7/pyyTZRe9ugYWwIXGdiAuJ7sG8Botc46JbfHnCG0zxo00yCaK4U0mD0A5HxhEtoz+DJMNQZKEnrNjlsj1tn6/x7sOSBHZ/1Mouo2xFMSPWZWgfwRkO1CnvoZbtaf+LawqY3FcVaXmRDBAXri+9v6gT0rdTtL3qdLON7ojgIzeoixLPI3h/QXYaWOBLxUjhsFUZnRQU1S8JTx6SkyXjTT5icPz2J2NjA4coxc5P3sYAhVPckWzdAHtfPtDhmRNlL1Q7yaBXuD3q9ANgOzvXtdh6qKxKvN9lkqJfInOtryHQc1V1ttSHkfVFCwEjpFhegDdhTH2JSn9nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV3PR11MB8579.namprd11.prod.outlook.com (2603:10b6:408:1b6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Thu, 8 Aug
 2024 12:24:39 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7828.023; Thu, 8 Aug 2024
 12:24:39 +0000
Message-ID: <e562774d-162a-4b42-b286-28a1feb77b62@intel.com>
Date: Thu, 8 Aug 2024 14:24:34 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-7-mateusz.polchlopek@intel.com>
 <390393c3-b4ee-473a-8055-813130876e71@intel.com>
 <ed34373b-1afe-487c-bb35-3a62e4cfe4f9@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <ed34373b-1afe-487c-bb35-3a62e4cfe4f9@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB7PR05CA0035.eurprd05.prod.outlook.com
 (2603:10a6:10:36::48) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV3PR11MB8579:EE_
X-MS-Office365-Filtering-Correlation-Id: 6433bd5a-93d9-4ca2-2146-08dcb7a512e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RlhOckZ2bU15TmZkNm9teGFDUEhGOUYwTzB6dE1BWkUxNU9MamZNNllzRnlJ?=
 =?utf-8?B?dUxUWmhRNFkrblFLTWN0czhOK0RNMW5WTlBjTDE2bEpOZnlYODNpbCtadjh2?=
 =?utf-8?B?N25ycFY0cWs4eXg3Y0M2UVZ2Mk5BVjJMMFhsQnI1WW1xTEpqMXQvUWVzZkV1?=
 =?utf-8?B?RGtnd0pZbVhzeWtySExrZytiLzN4WjNnallVVVJjZEpiUmRGdVA3eFZQdUov?=
 =?utf-8?B?Uk9SN2N5Mm5WU1dGcG1YWkkxNHRjL0NCK2NOMEFYNi9yQ1VURS9QUEt2d2lF?=
 =?utf-8?B?RjdaOEN1eitnRDlnRFAxM1NVUExYWXZlSVdCVzV3dnlnSDR1ckVvY25UVGRa?=
 =?utf-8?B?ZzdaUjlVUStqMDVMbEo1VUVmVGRqaVFwZUVGRG1EVWUxc2JRNXgxQU14UXh4?=
 =?utf-8?B?cHR6WXBVK0F6K21LWTI0cG5EYWxYZkp0RTRwS21lR2FWUHBhMDhPaU1yQmFC?=
 =?utf-8?B?NVU2MUhNZENCUGxzVk9kdXA5Q1N5Mmt3di9ZLy9zR0VDYm1aTS82MDN1LzFl?=
 =?utf-8?B?YkN0QmRMVHEzTS93akZ3cEw4Z29TM3ZsYlZSMTdZU0twcnhLSStxekVpYVds?=
 =?utf-8?B?ZUk5Q0s1Q2lLSVY4ay91cnorOWVMZjZKL0tWbWNXdmlKRE9TTzhoMVdEYndM?=
 =?utf-8?B?b3hmcWdMK0w3TlZ4NUw5ekxtNkZOazZpNWxjSkwrQWk2OFRoZnNPSzZVWG81?=
 =?utf-8?B?SFJGUWM4cjRaWDA1LzBDc0NOUzBiQjJ5STRSQWNnZWR2NG9WVmphT0JOTkp3?=
 =?utf-8?B?VExmb1Rpa2FWa1M5THNxbkpDblNlSFBTQW1xVEhadGI4WHYrWWl3eTNmaVNZ?=
 =?utf-8?B?NXBoRkRCTWF1WHQyOXplTDJxeHJIVlAvbmQ0WWNjOGU5emZHOE5QdHFua1ND?=
 =?utf-8?B?bzlPRDJqSXlsb0hwdWNmcFEwYlpoQmdQTkRrbnZhQ2JvZTlaQ1k1K1Z5R1Rk?=
 =?utf-8?B?c1NzSkJCQldmM0tTWmVWUjhncG9MVUdKMnpuZW1GV0pQYVRRNjlMZEpudk85?=
 =?utf-8?B?MWgyeXJuMmRpWTQ4MFlBdVRRMTNaWTBLa2hoVlJYbzBNZ2h6M2ZiNE5xWFA1?=
 =?utf-8?B?Zjg4SXhpSXlWSUIrSElBc3JRQmVTNTR5a3pnNk9JSS96T3dpd3ZOYmh2NXF1?=
 =?utf-8?B?ZXpDdDVENTU2bEtyQlJvdWk2MEJtNGdTVGxXV2VEdXlLd2h0ZS9PZmg4QVhH?=
 =?utf-8?B?NUxpemFPS0tuck95S2Q3S002RlBYL1FzcGkzOSsrTGJqQjB1WjVoYjNCa0Zs?=
 =?utf-8?B?bytaaTFCNWNnUUZuU3MyNTdEQ0VtVDBZVkNNMXRDdU9vSjlHbTVlMElNVWwx?=
 =?utf-8?B?Y0NmTW5xODJ5azByVEZoNGREdmszYnlTMy95SlEzT1FOc0lFanFoZDdwUTd1?=
 =?utf-8?B?WVl3VE4yZytic3JGaVBva1RwSXN4V1JSSUZUMWlUQlU1ejJQWHhuOFlQb3Bh?=
 =?utf-8?B?YlpNdE1pMG9vRVNoMW9Wci9HbkUyS1lFQS9RWDllTCtCV3RHaDRQVzFkR1lI?=
 =?utf-8?B?SXdrcjlhNnFUQVNvVE50QTUxNzN0WEVhUDkybTBJWU1TdFh5VnNLTy9TTlJn?=
 =?utf-8?B?TjBPUGtOZTZ3TDNEeXFrKzBmL0kwdDgzTE5aek8yMFBGWWhkOXJkQkVaVzNs?=
 =?utf-8?B?U1R1QXZuSVhnUlFvYzFCb2JEQnNZZkxwYm1MYW5NeDJzV3kxeWhKZHlqTWVr?=
 =?utf-8?B?SDBmZ1BJdUYxaVVDTzJmSUc2U3FXMnYwN1I0NWlZSE1uY1JvODJab0NZQzZr?=
 =?utf-8?B?UGxEZGMrd3BSZzJmVHI0dmpBMHYxdWxTcEdHTTlVYi9ud3BuZUExNEJhUHhk?=
 =?utf-8?B?clB6K2RGZ1Q4VVl1aW52Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFdIS0VycllWaDdrQkdLNE5HUWhUcjMzdTRhcXR3K0JSRDBTVFJwdGhubFpL?=
 =?utf-8?B?THo1NXlrRzNJRUxBSUFiV3NsejcxSzZ6RmczY1Z0UCtsa2FOWGE5SmFQUzlH?=
 =?utf-8?B?UEcvT1VTK1RhS0Q3SFBkZW1kbzFrTEIxOFpqblIwdTJmYW0yQ1FMdHQ4eXNK?=
 =?utf-8?B?QUpLS1dsbFcxSkJBQklZOW5jN1NvQmhpQjZnOGVTV05FdnR3eFdYVEtwWlFR?=
 =?utf-8?B?TVVjalllVG5WRjR1Q3F3L3NXZjlkUkE0bDBnMS9hci9VRmhLVy96N0dlSGc2?=
 =?utf-8?B?Sk5KbTlzSDl6YXpKd0lKdjBqSkQ3SUxSeUpzb3lBV1p1d1gyZS8xZXZ4YXRu?=
 =?utf-8?B?dExidGUwL3dIeUVsUW1IQ3g5OU9KMlhsRlpCY1l0OHQ5eDNZME5yb1lsdUFn?=
 =?utf-8?B?RjJEUjJLMVpXdlZ1RU16QVdrL25zWHFaL1kwL25wc2FKRVpreXdseWxrSnFq?=
 =?utf-8?B?djBscXQ5d2hVbGRjR1pPWlpNdmtmZTFjeG02eStWQVVjdElJeDI0OGxTY3gy?=
 =?utf-8?B?TXpaNU9DMTBHSUp1cENKcjZUMXFPNFhMbGh1dnpDYitwMjVpZThmTTdQYzZF?=
 =?utf-8?B?eW5IWWRncy94Zmw3NkYxWEMzYWZPYzNKck9MeFZ5M0h5Q1oyYnliMHZOdFFw?=
 =?utf-8?B?MUxZallxdVJTL2JkYVN6ZHlMNGRJbndISTY2a3dNVDdWZTlDWUtGb04wRFE1?=
 =?utf-8?B?eFFQMkl4Ym0rY3psd3BlOUt0UmtYbTZraWpJcEFVZHVlWWp0N1NqR2pYZHg4?=
 =?utf-8?B?cjU3UmhSaVZQT1VXNmloVmhBaXpLNDRqY2xnQVN5ZTFYRkhxQ1Vsa1k5SXNi?=
 =?utf-8?B?U2poWlFJeWdrODE1Rk5KN3REemFiZ0lDeTZvcXV1QVBqSEN5TFlyOUtjZnov?=
 =?utf-8?B?RzBTLzFqVEhOd2tLWUI0YXRJSUxsRXJMb3RobFF1YjVxdjVWOTl4RWlTblBS?=
 =?utf-8?B?VTVtQk5peTFzdVg2MFVjQ2h2S3d5RVhnT1dVMmdVMUJCQ0h6ZC9GeUFtZTlk?=
 =?utf-8?B?ampTbEV2SUFjOWxoM1o2U0RLd2ZQWHN1UlpOcTQ0N3p1QkJHUWxhdGFqMkUv?=
 =?utf-8?B?OEExU1FXSkVRRVJDSjc1c0dFell1aWQ5VDBadHlrTHZkOWZpM2VJUWo5b2Vo?=
 =?utf-8?B?bURHVzhSeFQ3aVR1VzZYVlpobmNPSWJyc2hXU0lwWmxkSzdCdFZWaEFPTUYw?=
 =?utf-8?B?Q0VJNzZUMW5HTWgvcnZwU0FZM1luTUxFeDRxZjIyQnhUQkVVT3NOQWtRSTFy?=
 =?utf-8?B?TGcrN1BCMnJJbmVTT2JLZm12bTFyUCt6azZyQVBJZEFWTURFUmkyS2RtY3hX?=
 =?utf-8?B?SGZHMmJRcEZwR3NYUGVFV2tlUEpSVHgvYXc1NEk2QnhCT1JuVE1kWDB1ZjdN?=
 =?utf-8?B?SWc1dzE0eGtpUVdDRFB1QWZRbGpEOG5OMTV6U1JPK1NKVXBNakVmYUdFK3Z5?=
 =?utf-8?B?MmlvVTVYUGUvVEp5cm9sU2dNdG1CbmgyeUkvaFRERFgzZDdIUzNMaXg0cmgr?=
 =?utf-8?B?QTJCb2N1Vjl4ZlNRK28zWkhOOHA1SUQvNjVqSm1TOTY0Vk1tSUE1Y21UMnlI?=
 =?utf-8?B?ODNaQVVpTXNwOW5OMnFIcVhEUFQ4dEc4SG5yZVVLODdTQ3E1M3ZObGpDV29z?=
 =?utf-8?B?bHZnM3RhSWxiYVBlY2g2aEdlTHY3ck9Ca2F5ZVJaWi9oVUlmSHVKTEZrcDkv?=
 =?utf-8?B?MHJwSk9DZFhFWVIwdXREMStjZzdUKy96UGltTTY3YzQ5Ty9qZDRwWEhNYmQx?=
 =?utf-8?B?M0NkMHVrOHc2SkhxekwvMjVFNkdJdjRPbmQrUkF1alpPbUxQdzlhY1pSR3Jv?=
 =?utf-8?B?U0hkdHgwRDhkandNRThBblVaeG9zamZWdW04eTZVd0xiWjRNbThqNU9keW5B?=
 =?utf-8?B?WTc2NW9RN0dNS3Q4VUkyd1lYN2lNeHk1dzRQaG5jSTFxYnc2bDhwVzNkRnFH?=
 =?utf-8?B?Ylh6eWRKSWRRRC82dkpqY0xyMXhWU3NoZ1B6OG1meXlVMUpKSEJxVHc4d3ZZ?=
 =?utf-8?B?emFIOUEzMzNTamtKY3pFZEdoTHA1QndTRVNKS3BMOHRneXBqQ2RaVzZKYmRz?=
 =?utf-8?B?Nzc5MXRTSEJBalVOaHF6dDRKNEtKVkgxTW5LaUhqajU1M091VVFCa3dKdCtp?=
 =?utf-8?B?d0ZRU3E0MzR2NmtSVVNhSDhOK0VxSUZZTzc5eXhGcjljMWE5NjVMQUVONjMr?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6433bd5a-93d9-4ca2-2146-08dcb7a512e8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2024 12:24:39.6569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qF5Bcp3vkrqTBDLFTpUfXGBvhqRdTv62gnSzfkEdJUYaEfgZ7wBe/w/YnGXppIjO5db5C8NcE8f6Lu+ZN/3mGQ/IyBYLtUrdDiwN2lnaAwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8579
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723119886; x=1754655886;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IKrgH470/p1SmdEbn12+VigAhK/yvAtYTxUDZ4sqqAs=;
 b=ZP7MAXdE6IJAa8qxmWy8bzxBdF9lTXPISZR0nk23CvgKxmLNUcAOHGlp
 R+UZI7vyNCqCTr2juJFGiezr0f61LI4wclWuQ6NQUGeVbxVnBXIUiejPk
 uFUh6z5HSDvWRIybCxKbe/aFOfsV0yOuSTDsvMS4TNVI2u7bQGgP0DZqD
 LjQBsR54fwru2IUSZ2t9jhO9rkEbk5aqdXsSOD45LiJfQKQi3J14AY31D
 OR+mmmQ7rAYdXIRp+6Bqw/oNKaTExAP4tkusAceD0CMUM3BIuD9dHgK1d
 0cGZEsgGLMUdVcJzo9qiiDjvDAG+6VfnU/O9NGMHTaA6pD2D5Vt1sUjyK
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZP7MAXdE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 06/14] iavf: add initial
 framework for registering PTP clock
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org, Sai
 Krishna <saikrishnag@marvell.com>, Ahmed
 Zaki <ahmed.zaki@intel.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 8 Aug 2024 13:04:29 +0200

> 
> 
> On 7/30/2024 3:40 PM, Alexander Lobakin wrote:
>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Date: Tue, 30 Jul 2024 05:15:01 -0400

[...]

>>> +bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap)
>>> +{
>>> +    if (!PTP_ALLOWED(adapter))
>>> +        return false;
>>> +
>>> +    /* Only return true if every bit in cap is set in hw_caps.caps */
>>> +    return (adapter->ptp.hw_caps.caps & cap) == cap;
>>
>> Aren't these parenthesis redundant?
>>
> 
> I think they are not. They wrap bit operation and also I checked it
> with checkpatch script and it doesn't complain about reduntant
> parenthesis.

If the object code doesn't change when compiling without them, there are
no compiler complains etc, then they are :D checkpatch doesn't always
catch things, but I don't remember whether the compiler won't complain
or change the object code / logic. Could you please check?

Thanks,
Olek
