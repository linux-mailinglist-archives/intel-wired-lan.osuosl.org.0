Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7C395BB8F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 18:16:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF114401C9;
	Thu, 22 Aug 2024 16:16:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BzaGoJKeHCCY; Thu, 22 Aug 2024 16:16:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A5F44018F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724343404;
	bh=xKtma/2tzw/xlI92u1SKxLCwkMIRV0TdaDQQ4EEom5k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6liMUzIVDIBf41bqu5gDejBF64EYUoVT+GFR+64zmKLJcQjmADXItIdHuj/s02/A5
	 QvwZnLx9r2ZkZeVMVDpaYI6eQx8wY1eGin9nLTam+6aYh7jR6QpUH8m1h2Pf2Z1MLI
	 KbbRLsDbMhT3jyIHRU5A/iclMKOxxRXRkCioI4msjgXfi7ElevKgHxPWbHm5olvuKd
	 8quwMTDlz8nl0oXlw+2fOmhXS135mn/E6lAKZZfPqG5x1JSV/EMC8SMMVd4/+2KjVp
	 I2zNnKCcPySg/GBnX/IsaMzVZL2/vC2anl+era8ARSHlovQHHh1vLZ8sVspD6MKPCb
	 9BtaUOC19DCEA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A5F44018F;
	Thu, 22 Aug 2024 16:16:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 64E071BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5B13640428
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:16:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fd61QGHQreY0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 16:16:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0202D40105
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0202D40105
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0202D40105
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:16:39 +0000 (UTC)
X-CSE-ConnectionGUID: BubH1U4ZRuWVHxH57Zi0nQ==
X-CSE-MsgGUID: qBeafloCTtaeGSAuFsvpmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="33438516"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="33438516"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:16:38 -0700
X-CSE-ConnectionGUID: IpHan13hR9ahIHiZ5q8bYg==
X-CSE-MsgGUID: joVnQGD4QcOB8smq9t/4wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="92242257"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 09:16:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 09:16:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 09:16:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 09:16:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NlGbgDahCO1+U3OcHMk9xJAc1zsYgC5y5yY/10bd/oijRmOzGKEAWKu547Uufc+9UrwCK+vviswh8BPGv0Ww2RzTiQgAfGH6zd8UjhwL1PUEImhD4xHnHmYTFNv52K4kCP/8XNUmvrz6zkcuLKQD4s4bnZbgMQgX+KYAGh0eg2bRFr8Keamu1yRqga6tiYUihgtTUjjI1sKf0O/K3ZL8najM98IqpwdqLDrVI3orpBYgpGdiy5ZIDbFAR57AywCX2BKCl87ARufei2p+v3LRI6GvZRX1rrNt4e2Es2lbUsettf0FpKS9jGHKd1Z6QROqpkDdB93Q78TDGp+HcXlphg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xKtma/2tzw/xlI92u1SKxLCwkMIRV0TdaDQQ4EEom5k=;
 b=pHdaT/XboiBbfAmTlYrmq+NzGN9w4Un/UfwzCrYfgdxhcsRKHNawfUGkxfKMTWxFGEasZper4NjAf/jWNWRjVH+VjqMGTTxNL1w7ocgL3FOUM3shZYJE8n52RcfhJxvbLm3geLBljfMmYgFkaxYxJo7hsn7tvuaWDRVGRdpquh6d0tAJOVCYeaH2oAoRJkAahtwgY8CVAb3m7T41d3ktfTVQt9QS1QCibbuMnnMGA9kb57KhLT65XKTa/m6MDCS8Adodz0vfm2Gy3b0C/HdEIkMdRUOZpPCWv1YP4VfzMySsTN/gaXYyniM0Co010mIkBETl1GKBksmOD5yp4sQd0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA0PR11MB8380.namprd11.prod.outlook.com (2603:10b6:208:485::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Thu, 22 Aug
 2024 16:16:32 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 16:16:32 +0000
Message-ID: <9ca4dad6-61bd-4d98-bcb2-f69be6696deb@intel.com>
Date: Thu, 22 Aug 2024 18:16:27 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-11-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240821121539.374343-11-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0032.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:47::8) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA0PR11MB8380:EE_
X-MS-Office365-Filtering-Correlation-Id: 854246ed-48cd-4c1b-7db5-08dcc2c5c971
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEl6Ukhtb3lSMFdUL1ZGZE5USnQzZy8wV2tteGhLMjIxN1hUUWJzanNKQmJC?=
 =?utf-8?B?anJIUDhwQUtyMVlwL0x3eXdjQmZsN1NiVGxlS2lKVE9TNXRRL3g1MmQyMDVl?=
 =?utf-8?B?OGo0Q3FCZ3A3QzVhMHVZaUVtc1FtS2VHVnorWndCVyszOUk3WGV0eFUxQ1FS?=
 =?utf-8?B?ZWtiTGl4UFlLeDBQNnVaeHNYMkpPQndiQUo1TVUrVjR2ZFlmOTRnZ0tCOWJ6?=
 =?utf-8?B?WEkwOGMvL3lMU0t5QkZlZUtZd0t1RmJDdHMvVmxSdTd3ZEZUMjNmNlB6dk0w?=
 =?utf-8?B?VHJLY2xVTlRGT2dldWF5dVE3cCtpZ0prUzgyMWJKY09aMVJ6NVd4djBKUVFt?=
 =?utf-8?B?R1B4RmphTDYrNE5iZldsU3p6OHRhdGVVL1BVOW9Wa0hqbGdWcG9BcWRnOWNh?=
 =?utf-8?B?aEk0MW9pbVNwMFN5S3RVSDErSHZBOHB2YzVYWCtuL3ZqOXFZU1hMWTJCSTdI?=
 =?utf-8?B?c0xBWGVmQlBPL1ZIZDBUZ2pwOHR1TW5hSUt3VlNsWlhwU1VyZDRxajllVkhE?=
 =?utf-8?B?c1lzTEJpeHI4K3RoY05nUnJZMVV6c2xrSnpoWjBURGtrQXBoOXFpTEk5T3J4?=
 =?utf-8?B?cU9EQzVNL1BObTcxQkFNK2NBQmVGVC8xRG80VXFOcHIyZFp3dEg1bEw5L2Jq?=
 =?utf-8?B?ODdUQXd3Zjlva2RHdFdZeStzNzN1dHpNQzNZSVhtYVNqaG54S2dwdjdHY0Ny?=
 =?utf-8?B?bk8xZHM4UnZwM2FuVjJtbEh5c0ZTa2hHb3JJc1hoMnFsMUNRVkxlWnhBeUJN?=
 =?utf-8?B?L2h4R1owVVJUd21GK1p5WVdJTFlPeU1UOVVJK1dEMU81QTFnYjE1UlFJam44?=
 =?utf-8?B?WktkN3pDbkFoVjJPdXV2UzBLWnNzbU5DOTVTVWNMdCs0MExnM1Z0cWZrVmFK?=
 =?utf-8?B?a1hONHJRV3R4aTN6YjFGTkpQMngrT1JLUVVRdDh4MlkreDZDTGZZbW1iVlNT?=
 =?utf-8?B?UDQrUThGc3JENzNUclJXSjJ2L1phOWdRajB3OURiUDdwWiswNDdKTXZEOUZJ?=
 =?utf-8?B?aTBwbmFUd3ViUXZqaVBQZ1h5R1BuSXEwbnM3SnVudnR4dTUrVmZ0c2VPOGh1?=
 =?utf-8?B?aDZEbjFRMW84elEzZkM0bzZnd005aHJkc2V3d2hqN1Y0L0Jub3J1RndsZWt1?=
 =?utf-8?B?aEFZd0NjYkNaV1QvY25Cd2ZWNjVaelJJV2hPRndIYmg1QzFzS29NSWdXbFNT?=
 =?utf-8?B?NGdhRkxrVUJxckxhVzc2bUtWdXFleDJBVjMzdis2N1pxYUhFMFJyMDkxY2F0?=
 =?utf-8?B?QmJKOHVReGhtQ1hjeWx5NzdMYmEzUzQ4ZFFlbEhEY0JpNHBzY1Fsa2h4VWFR?=
 =?utf-8?B?ek9wT2U1cDltU0RpcitzbGZDTEt4ekxJWmQxZjREV2Qxc0hnZ01XbW5RbWpl?=
 =?utf-8?B?a05yS05pRnl3ekFlMXBLOGNVeW5GOHh2VHMwZHZnZ0ZCMGhWWHdaUnhOOTJQ?=
 =?utf-8?B?cFZ4aU1UVU9rUjYzdkZXbnpyanBXNXN6ZGVabFdKM0NGSmxWTG56ZU4zWFNK?=
 =?utf-8?B?VmdhREVZbmplc3ZkWklZNDFlcnZVZzQ2Z0VZWSt5TWM4Mjl6TUE2Rnl6YmZR?=
 =?utf-8?B?ZTVZZzNoNGJlNm0zZmdjUTY2S3Q2NjU3NUpEQWZzSlJZSm12ZWxuOG5kRldo?=
 =?utf-8?B?c2FpWm1XeWNHSUFROTVqdklDbkp6RVhkUVZuSnJ4NHJzSFcrRzFFQ3RQcmNF?=
 =?utf-8?B?K0I0SGZsMi9Ba2k0LzJuaUYrdGJlTGNUb1V2NTh4OUwyQVpkY3RhekZtQ3h4?=
 =?utf-8?B?SWFtNHV0Y1pGYzkrM1JOMnd5QTJaOTRYbmpVeFVWU0FOellRQ3RFaFpXL0Vi?=
 =?utf-8?B?NnVOZVlGenN0Q0paN1crUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RkJWLzdpUjlLeTNSOHUyNlMwcXRlbjc0UGpidHlkTnBVd1p5VmJsUHlVWFVX?=
 =?utf-8?B?QldwTlV5dlYrelY0SUtPRmpuVm1KdERCeW9rWEFhOXIrMHFGMmJiR0dOM1Uz?=
 =?utf-8?B?dnVQbHNJZmFkbnVHY0RGeTc0MEl4ZG1nQ1ZRR1hSUlR3WStBQ0hRYnBLaUJa?=
 =?utf-8?B?bThpWXJMVkxGZWVLRlFZb2xNL29jZFVCVEpCTy8yWXRQZmlMTDZFMjdGREpG?=
 =?utf-8?B?SHh0ZzF0OHpQOFRFYXhIcy84OWZJTVVhT1N4L2Rlend0bFhoREhVZFF5bCt6?=
 =?utf-8?B?NUZPQ0ZaUm1Wbk1PamJ5NC9GRnE1Zmtiajdua1ZMMFlBMHRWYjh4UzdxdnBG?=
 =?utf-8?B?TEorOTVpNEpZRFVYY3V3aVI5eVBwQ3ZsS09KS1F1Z1MrREJ2LzFJWHNjQ3Ja?=
 =?utf-8?B?RXkyZFhkazNHN3Q2MXErMm9RbFV5a1JqNnhlYWlQTzZHOERTYm8rellxOFlG?=
 =?utf-8?B?d0FWL3dXYy9aUjhlK2x3ZjZmVy9xeXV0ZU5DSHVwOS84UUpwdjdvY2ovcG5n?=
 =?utf-8?B?MXRwbkFNWmNyVGZtZXlzNTBFQjJVMmFSL2FvSnduVklwT0t5aGNBYyt2ZWdX?=
 =?utf-8?B?blJaU2dyZWRBY05RYlp6cUpEcUc1NmhLR0t1dkZXZ3MxTlhhUTJzcFVYSGhu?=
 =?utf-8?B?NitnYmtaTFk4VXJaNDZMbCsxVTFib3VWYnd6UmdicU43bEZJQVZjUDdHSTB5?=
 =?utf-8?B?OW5hN2dMVzVibytHS0xVMlNRRlRBYnhEK1pwaUpER1pER2p3b1JiRCtTQlZk?=
 =?utf-8?B?YlVzeWZzZXROVklYaGdkS3hNbHBOWVpITUZYSXMvTjVEME9RU3dWMDJlUDFp?=
 =?utf-8?B?aHNxN3lmaUFUZzloVVdYWWp0ak5lVzljY3JRdGlTa3NJZi9rbHFETnE0dmhx?=
 =?utf-8?B?MzJoVHVZclNudU1KNFZlbWNJQTdGWUcrQ2kwZWFZb2NrZHZlRVRmdHd5WlZR?=
 =?utf-8?B?NEMvTWZEWTlBekZ1VnhVSkRZNmJSSUZpYkFoNmlmVExXV01FYXB0MmxuajJz?=
 =?utf-8?B?VUZYRW42b1UwOUlNcnU2VjFYdngvdkpCRzllb1dKdHNQSG1YVWtHcXIvVXhN?=
 =?utf-8?B?SExlUUZ5WGw4cFpyZzVFak1SMlVzemNJclJlM1FyQzlSRnFvTU9YSi9rRFly?=
 =?utf-8?B?TWIvVVR2bkpyVVdxakhYbnlEODVCSDRDZFJTUjFud2ZvZm44TFFGODUyTWRH?=
 =?utf-8?B?bC9OTVozZ0pjdnlmblg2MUJlcjIwZEllU0g0Qyt0OXZkQjBaU052Q3h5cCtZ?=
 =?utf-8?B?b0tzUXZHRHBIU1hkQ1pXU2RUQk16K2FzQ0VLSU5mRzRwL3JnZTY5NVJrZGN0?=
 =?utf-8?B?Rzh4endGb0toSmcwWE9PQWZWcXczTkdGUmRIb3MxR0NiUnFXNis2cFpnMVZZ?=
 =?utf-8?B?dUx1WXdFZDhKSFNNcHlQWXFaYm5BZWRYMk9veWs3d0o5bm1ZSStVQmV1MXQ1?=
 =?utf-8?B?RGdvMVJjOVdFR0RnZUNHdFJ5anEzaG1qRkgyVzloZ0xEdnRpT0NjdWhNK2Nt?=
 =?utf-8?B?VU5uZkRyeVFjc1JndUlVTXhmbU1mR3hqRWRNS3FlbzA3d2xuZk5LZmUrcXVZ?=
 =?utf-8?B?ZjhZK1duNVl3ZVNxKys3Y2xMYXZhQ1RQQVZtNHVwaHJhZUlPSWc0TU9UeDhM?=
 =?utf-8?B?N0tPbDJoWVI3dEwzNU84S1ZLWjYxWmFzZmtKTTc5SGUwR0x6dWpDM3JKRlhU?=
 =?utf-8?B?QWliU2NZZEdQdzkxbnQ1QXd6cVdCSkRQdTJaWHNCdkwzYTdCaXZsdU9sNmpL?=
 =?utf-8?B?cjUrZW9tWjd3bjhkRTJrOTFkb1RoQjZHRkNOWmFUQlhqVG1EeG96WTdzT3dC?=
 =?utf-8?B?bE9aMTBySlltQ3F0OGphT3JYSDhwd1NwM1JQNWt0TTdVM0lESmRaZWZ2Q0RB?=
 =?utf-8?B?L21LU1FDbWw2eU90eUhENDNjNnVpdTNWZ3NJZU9TUzRWcHkyZ081YVBmNDRy?=
 =?utf-8?B?cjJqWkttSjhVaHpVQ2FWSDBidnpITGJRbWhXcDNOQWJ6R01pU3M5VDc0NDVM?=
 =?utf-8?B?RTlnMVVUZ3M4RlZJZHRiTDdLdXkwR0lMRnUrZzJlbldaQVlrS1d3cDdic25H?=
 =?utf-8?B?SlVkMXk1S0h3Qi81N0xOQjJ2RXAzZ0w0ai9VZjNlNWtlWTRsclJwYzhsbU50?=
 =?utf-8?B?M284RnljeW5iNmN6K3NQY3B3SkovelR2ZTVCOFF0akJGcFU2U0NwdzUrZU1q?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 854246ed-48cd-4c1b-7db5-08dcc2c5c971
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 16:16:32.6233 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xbe5d51QmC2rrPcKxZSU6AFBYN+cC8Z/SAKbfkdTM0ghISUHo3hiGcusGLxcIBmY0xJ/oH0HaSxlcf1x0b70aR/YvUrsYwlr2F5HtnH00uI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8380
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724343400; x=1755879400;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ovLJ6hgaP3Jk2Dmu0830WsQOwkA8JUGUE4FKw8WodRk=;
 b=VyyVu/Qnh5gQq3svZ7oKtJ0X/tfV1zHowg9EX+VfGYte776/JQpXtpN+
 cLSFMejn0pdWd5gkXQCkY+Z1qcN2p253MUsYubHjG0umUv6E432/CvYS5
 ULTEVLnTf9ZxGMmWez7AYmxBRzq/BkqvZsqiEfAc6cPUWF1A0UYUEDol2
 4Dbdp3l4dadjSLzFgKr9jRLgxBgHH97F9GHoG2vxFyF2KPISmJ4oTidLT
 s9m//HeoPGQ2ZSLPqRHD9530WL3vgialHaqNSRdtG5ZYsGzi4Z8daVfSh
 AUpf3F1pnrEuLbc6cNcrAERm3uoMRNA74Uxx8AKEHI/RaWCjp/EBmQcRH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VyyVu/Qn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 10/14] iavf: define Rx
 descriptors as qwords
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 21 Aug 2024 14:15:35 +0200

> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> The union iavf_32byte_rx_desc consists of two unnamed structs defined
> inside. One of them represents legacy 32 byte descriptor and second the
> 16 byte descriptor (extended to 32 byte). Each of them consists of
> bunch of unions, structs and __le fields that represent specific fields
> in descriptor.

[...]

> @@ -901,19 +901,18 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
>   * @skb: skb currently being received and modified
>   * @rx_desc: the receive descriptor
>   **/
> -static void iavf_rx_checksum(struct iavf_vsi *vsi,
> -			     struct sk_buff *skb,
> -			     union iavf_rx_desc *rx_desc)
> +static void iavf_rx_checksum(struct iavf_vsi *vsi, struct sk_buff *skb,
> +			     struct iavf_rx_desc *rx_desc)
>  {
>  	struct libeth_rx_pt decoded;
>  	u32 rx_error, rx_status;
>  	bool ipv4, ipv6;
> -	u8 ptype;
>  	u64 qword;
> +	u8 ptype;

Oops, please fix this where you're introducing this.

Also, I don't think it's a good idea to limit ptype to u8. ice supports
up to 1024 ptypes, while u8 is [0...255]. u16 would be fine (I suggested
using 14 bits for it in libeth_rqe_info). But on the stack, I'd just go
with u32.
Please correct all the places where it's u8.

>  
>  	skb->ip_summed = CHECKSUM_NONE;
>  
> -	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> +	qword = le64_to_cpu(rx_desc->qw1);
>  	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
>  
>  	decoded = libie_rx_pt_parse(ptype);

[...]

> @@ -1143,7 +1142,8 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  
>  	while (likely(total_rx_packets < (unsigned int)budget)) {
>  		struct libeth_fqe *rx_buffer;
> -		union iavf_rx_desc *rx_desc;
> +		struct iavf_rx_desc *rx_desc;
> +		u16 ext_status = 0;
>  		unsigned int size;
>  		u16 vlan_tag = 0;
>  		u8 rx_ptype;
> @@ -1163,7 +1163,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		 * which is always zero because packet split isn't used, if the
>  		 * hardware wrote DD then the length will be non-zero
>  		 */
> -		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> +		qword = le64_to_cpu(rx_desc->qw1);
>  
>  		/* This memory barrier is needed to keep us from reading
>  		 * any other fields out of the rx_desc until we have
> @@ -1219,7 +1219,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		/* probably a little skewed due to removing CRC */
>  		total_rx_bytes += skb->len;
>  
> -		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> +		qword = le64_to_cpu(rx_desc->qw1);

So here you have multiple reads of the same qword within this function.
I think instead of just 1 variable, you need to define several, like

		u64 qw0, qw2, ...

then read them from the descriptor where you need them for the first
time, and then just use onstack value for the rest of the function.

>  		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
>  
>  		/* populate checksum, VLAN, and protocol */
> @@ -1227,11 +1227,16 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  
>  		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
>  		    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
> -		if (rx_desc->wb.qword2.ext_status &
> -		    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
> -		    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
> +			vlan_tag = le64_get_bits(rx_desc->qw0,
> +						 IAVF_RXD_LEGACY_L2TAG1_M);
> +
> +		ext_status = le64_get_bits(rx_desc->qw2,
> +					   IAVF_RXD_LEGACY_EXT_STATUS_M);
> +
> +		if ((ext_status & IAVF_RX_DESC_EXT_STATUS_L2TAG2P_M) &&
> +		    (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))

This second check for rx_ring->flags will be the same for the whole NAPI
polling loop. You can define a boolean on the stack outside the loop,
check this bit once and then just use this boolean here (*before*
checking for ext_status), it will be faster.

> +			vlan_tag = le64_get_bits(rx_desc->qw2,
> +						 IAVF_RXD_LEGACY_L2TAG2_2_M);

So here you would have

1 bitop for fetching ext_status
1 bitop for checking L2TAG2P_M

instead, just check the bit directly in qw2.

>  
>  		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
>  		iavf_receive_skb(rx_ring, skb, vlan_tag);

[...]

> +/**
> + * struct iavf_rx_desc - Receive descriptor (both legacy and flexible)
> + * @qw0: quad word 0
> + * @qw1: quad word 1
> + * @qw2: quad word 2
> + * @qw3: quad word 3

Some description for these qwords, which fields they contain? This kdoc
looks generic and explains nothing unfortunately.

> + */
> +struct iavf_rx_desc {
> +	aligned_le64 qw0;
> +/* The hash signature (RSS). */
> +#define IAVF_RXD_LEGACY_RSS_M			GENMASK_ULL(63, 32)
> +/* Stripped L2 Tag from the receive packet. */

One-line comments shouldn't have

> +#define IAVF_RXD_LEGACY_L2TAG1_M		GENMASK_ULL(33, 16)
> +
> +	aligned_le64 qw1;
> +	aligned_le64 qw2;
> +/* Extracted second word of the L2 Tag 2. */

You can rewrite this comment to reflect the actual value of this
definition -- that it's a VLAN tag (for example, I don't know how this
differs from the VLAN tag field above, so I'd like to see the
explanation here).

> +#define IAVF_RXD_LEGACY_L2TAG2_2_M		GENMASK_ULL(63, 48)
> +/* Extended status bits. */
> +#define IAVF_RXD_LEGACY_EXT_STATUS_M		GENMASK_ULL(11, 0)

(so this definition won't be needed after you address the comment I
wrote under the place where you use it)

> +
> +	aligned_le64 qw3;
> +} __aligned(4 * sizeof(__le64));

static_assert(sizeof(this struct) == <size of the descriptor from the HW
spec>) would be nice to see here.

>  
>  enum iavf_rx_desc_status_bits {
>  	/* Note: These are predefined bit offsets */
> @@ -347,6 +294,8 @@ enum iavf_rx_desc_ext_status_bits {
>  	IAVF_RX_DESC_EXT_STATUS_PELONGB_SHIFT	= 11,
>  };
>  
> +#define IAVF_RX_DESC_EXT_STATUS_L2TAG2P_M	BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)
> +
>  enum iavf_rx_desc_pe_status_bits {
>  	/* Note: These are predefined bit offsets */
>  	IAVF_RX_DESC_PE_STATUS_QPID_SHIFT	= 0, /* 18 BITS */
> @@ -574,4 +523,5 @@ struct iavf_eth_stats {
>  	u64 tx_discards;		/* tdpc */
>  	u64 tx_errors;			/* tepc */
>  };
> +

Probably unwanted change sneaked somehow (I'm not against it, but the
maintainers could be :p)

>  #endif /* _IAVF_TYPE_H_ */

Thanks,
Olek
