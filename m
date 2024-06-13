Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 368139069CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 12:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D47B660EC4;
	Thu, 13 Jun 2024 10:17:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m0p7Om_AfGfw; Thu, 13 Jun 2024 10:17:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63AE260ED3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718273847;
	bh=eLk0hW1gVDWSVnLRviLqDj57gkWQsc3lmMFvOjtk6sM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A/oM4UIHhSsV31BDvxeHCzTsICNvX9wN41zlZ0p1auXr58BcSnmFcA5YwWzzsTE5K
	 rfgjuYoFHPSgxI5y3m3aYRXHyUhTJugyy+cvpJyhF1mEoxPujSHc3xYET6TdVThRh2
	 aoCtPr+4XSCi2794uzMVm5bzRgk4ij01GGNvjW2nATrtKgovcQwr8NvxJhSZxcUO+d
	 I1YydeeVFj3ce6YCmMg7QQdlbFZYBzrkRUMt25Omdx7lSGC6Q8tTEVEzvjDiWt8CUy
	 MFaHJxEZ1Hs2xMllRfhT69ZLOkrs/QfpKHiExWL9W8HGx3Xq3EmjaroMZVX/mQ5weD
	 msTT9rp9pO2oA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63AE260ED3;
	Thu, 13 Jun 2024 10:17:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6361C1BF354
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 10:17:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DD9240154
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 10:17:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xXsGT5ikpCwE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 10:17:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D772413CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D772413CC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D772413CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 10:17:23 +0000 (UTC)
X-CSE-ConnectionGUID: 4WfD8fYwQBW4x+/fX+APSA==
X-CSE-MsgGUID: jsvVNtDxT96Ktp9WW0nuvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="18939853"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="18939853"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 03:17:11 -0700
X-CSE-ConnectionGUID: oH/tCNEQRtqkD6gYOHTRNA==
X-CSE-MsgGUID: yHgSqWiyRbym3q4KHD8IRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="40200416"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 03:17:10 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 03:17:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 03:17:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 03:17:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/cw7lJTpnKAPbX3IxR0SHY48UNYtXx8pVIBLM4udVQ/e4x7KDeRktaX8d/S8C7JZMF25m4S8dzIYVKIdTwClYHEOYFkrGH2y1ljIJN0RnA4iyZzWOA+pDkNAWNBZtuARFFmtNic/CCGqfvgRdhkBBETT6T4k1CNVPIEFNnscsPSjdyMbB5E6yim9fVjyO8vq+rrr4689dm/ZtqZAKF9wT8enaUl7F149zLc+ho7/jEn8fbCSVKbAa8LgAsed4AFOgGkZeesAF6XY0vH/uxgt8UXtQZpGvlraT5iHbFCIMPUehYkfV339Fgw1hO6p6K0c0vUA/sRZBDLyPJl+3Lqrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eLk0hW1gVDWSVnLRviLqDj57gkWQsc3lmMFvOjtk6sM=;
 b=STiZoveEC3N6rMQDzXRuoqzD/VJnrZAYaKl0PXGFw5rdLn+d7sjQdYHOsdMEnewktFeC4HznhUCNDzxwbtk2pJTKCMF6f0MH8W73zCiFwFPw9aaa6KwhkxOMd/gajZ58WD3+Mny5PSDI45glAIFmd42tcGeQLu79kzkSivMFA1dnqQj+wnITqOnOOJ+uytNhYBbleRyBHaZF4U4UAWB+PS4Vvj7VwjLWEod3yWOV6yRJTOLeE489vSrJFjIDXycTrX+utT7nMpcNrBgOkNgIhJ4tM30ZoBIC439IzAl5jSBPylBqKVvi78GUszP+K3pvxjmhAve0gyUfyP9H9i93ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA2PR11MB4844.namprd11.prod.outlook.com (2603:10b6:806:f9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.20; Thu, 13 Jun
 2024 10:17:08 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Thu, 13 Jun 2024
 10:17:08 +0000
Message-ID: <b6ed60cb-03a8-48fd-bffa-5a8efb0cd143@intel.com>
Date: Thu, 13 Jun 2024 12:16:40 +0200
User-Agent: Mozilla Thunderbird
To: Josh Hay <joshua.a.hay@intel.com>
References: <20240603184714.3697911-1-joshua.a.hay@intel.com>
 <b30f34a1-48d6-4ff4-b375-d0eef5308261@gmail.com>
 <cc76768c-d8d4-4c07-93c1-807f3159b573@intel.com>
 <641b439b-2bc0-4f2b-9871-b522e1141cd1@intel.com>
 <ef8057dc-28f9-483a-9885-35879ad84b56@intel.com>
 <a63aff29-c392-4efe-b8c0-9f2305f956fe@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <a63aff29-c392-4efe-b8c0-9f2305f956fe@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB8PR09CA0005.eurprd09.prod.outlook.com
 (2603:10a6:10:a0::18) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA2PR11MB4844:EE_
X-MS-Office365-Filtering-Correlation-Id: 8eb138e8-5a1c-4fa4-5cf2-08dc8b91fb29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230034|376008|1800799018|366010;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXdiK2QzSW11WFEzR1dSREEyRE96VnVVL0dlNWJqK0lYSWNoYnJ4aWp3a1ZQ?=
 =?utf-8?B?RFV0MTdlMldLbnJSZStGQWtCekhVcTR4Z2g2K29QUWc0SUJjTnZ5YldDdmJO?=
 =?utf-8?B?eEVHOTh5VkVTdGlwbmt4T3ZacVdwY2xQeFhrU2ZvWTRiV2lzTU1ON2RjNjZF?=
 =?utf-8?B?aFJCbTdiV3BOcy8wRjVhbWhrTWxQZVd5cnVsbFBRVTdGOGgyMFcrRm54eG9G?=
 =?utf-8?B?aUQ2Mzk4TXcxdGRvL3hzYkxXOEV6bEFNMHNuc3ZiUlJIbG1QUXdZc2M5ZGFY?=
 =?utf-8?B?NTBaTUZwb1pobHJIVVBKUlIvaVNMQkM5clNFQVVEZ1UvUFJ1OVNCWWdPVXdH?=
 =?utf-8?B?cm1mSy9yT1d3N0JNSjdQbVZubkVuNWFLd3VreDBudThrVTBkbS9jOFRCZzVU?=
 =?utf-8?B?K3VZcUw1VkdaNGU4ZnlwanZMV0JTOEFSRUloY3V5MDZJRmxiVHBiU0psSWI0?=
 =?utf-8?B?UWZhTGRxZUlTc2JHc3hCbkZITGRVNzZvckhwVGNrcFpUYVl0NUVwQW1MVUhU?=
 =?utf-8?B?d2pKOHZaWW53UG9TL1laem0wb3hCSGdaelYwKzl2OHUyTTlMUS84bXZxRlZX?=
 =?utf-8?B?M0Nyd2xZdDhDREorTmJYck9qd0JKMUppTWRaVHdMWG9zTWR3STN5dzdkbTM2?=
 =?utf-8?B?MisxdVR1TzVDV3ZvWFFhK2prN3gwUThiM0ZJZE9IN2RmR0ZNZE4yT2EvaHg3?=
 =?utf-8?B?Uzk2cHFYSy9oT1pQbFJ5clZWb0g2dWNCeGhudEVXcmwvbnA5djMvaEl1dGE3?=
 =?utf-8?B?YWZZR2dSdjR6YmNaL3BSbmRCUGNsMDFmVDcrYlFOeEdIQldJanpPc3RaRkFq?=
 =?utf-8?B?TDJraE05a294YWVSYzlkVklCSHNHY2xtZzZ4WHZDbDdLUUxURWZ0SkFHamZJ?=
 =?utf-8?B?blQxem84b0JhVDBZQ3lVc1BlbHJDNDQyNk9qSktiK3pTTU5SbDFnYmZ6SFFm?=
 =?utf-8?B?cWF2MTgycHcwMjMvKzhJd1prZGd3aEppbDJLMk4rOUhoVnFWUjlUeGpXdnFx?=
 =?utf-8?B?L3NoNldZUk1SUFI2bHovcHhxZ0U3OGJQL1FxN1hjMXBGalBwRXczbTIvSWJi?=
 =?utf-8?B?RU5LMmZMaFFJRFNHd1owWDVrSHE3emNsN1B1V2pRbDNqbmV4K1dRcnhSRUhE?=
 =?utf-8?B?eDBNMXZ3Q21nUnJpU2thUkx0R0xZSGp0K2plWTVHTTR5VVVXdTZob1AxRG05?=
 =?utf-8?B?djNJQmNiVmV2QlVzMitCeDZ2TlZDV2lNSEkvZDlIbzVJdEYvUllhd1NXM0FM?=
 =?utf-8?B?UzJJK2ZJTzAxejQzRjZuSS9yS05zRWtWSTBYZ3ZiRVpuRElub0VuU21RNWRR?=
 =?utf-8?B?NzZUME1mZmE1UnlTcFl6V3pxUlpWVlVwcGxjMk9DZS9lM0puWHhMNTE1eU9m?=
 =?utf-8?B?aXhYancxSTRzSTdncXk5Snk5NkczWWF2QzZBdkE5ejhldmRvbkcvUHJTV1Jj?=
 =?utf-8?B?UWhaWUFzSkZzN0xEQnpWTU13QVhsS2dHQ2JxMVA5Nm03dytndERsREZWZWZn?=
 =?utf-8?B?NUswMmpmYUo5WjhxK2xlaUZyL2ltNzJPU3duRUFWa1RVQ3FtZktxY3ZHVDJK?=
 =?utf-8?B?dzI0T0lsaHRJbkU1UWpJOWo2a0RIaWdUS1hJNnZEcWVsNTAvTnpQWDNxcHZv?=
 =?utf-8?B?UnRaRGJWSHhVQ2psLzdkQjhUN1c2bWJjL1RaZjF3ZC94NG1lM3BkckNNQUsx?=
 =?utf-8?B?cmhlZEVPZWRrb3YrekJQUjNvdHNhZGFST0ljTVE4b2srVjRCU1FtSnVmZ21s?=
 =?utf-8?Q?rluLV5nZNsbgbW9R7uofaGLSKTu6brEjEAR1YfZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(376008)(1800799018)(366010); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmtvbjNMRmpFVUhSajB4YWhJRnUwRG43cXdneDJoRlBFcmpQQ0VQaDIvZjlH?=
 =?utf-8?B?aHdhMC9pSkl4SEVIZTY4bVpva1JLM0NXeFNxUnlMVnlFa0c2Ullzb3VaaTQ2?=
 =?utf-8?B?a3ZpcmpvcTlMOUI0aVp1WVBtamZvcTV2NndwcFM0MFFQalVYSjF0dE1UQzFv?=
 =?utf-8?B?bzlrL0NUVHpaUmd4V05MTE5SbzVFMGhOMXl4SytxcmtuaTlSWFkvcjM1QjNH?=
 =?utf-8?B?bE1UVEJHcjZLOEJ1a1dxZFNvOXRhSWdlU1Y0ZkFmV1VNbEhiL0lqUlhTRFJK?=
 =?utf-8?B?MmNPb3FBUlRsU0tubndUUnJpbDJ2NXN2NmxOa2lCSGFpamg3aWNCVmJ3SkIx?=
 =?utf-8?B?bVp3Q0xJQUVUSi9sTHlEaElyYU1mOUwzZGZ4M1BhNC9aaEhLQVA0anB6Q25r?=
 =?utf-8?B?dDROZUtMWGNjZEwyUGcvdzVjTDIxeFByZUlCSmF2VTBHamFzZzcxL0FOUUJ5?=
 =?utf-8?B?NFFoSSt4TzJ5Y01RRWJHc1lNcjh3QzNkZjI3WmUxR0FIWTIrcDFlUmVjZk1h?=
 =?utf-8?B?QWc1TmNoRWZFUjEwK1J0bDExTUJlMFZaNGpidHBUQTZZNlpNaXgxMy9ka0xv?=
 =?utf-8?B?WDNXU29iOEdIaStyZE0rRlhTTlNLVUhhcEVmL1VvVnpJL2NUem1XOWthcTBs?=
 =?utf-8?B?bGVTV3pva0J1RituOStVOWRnb3ZBWENBTU5hMXQ2eEd0L3JTYXVmTVpySGhY?=
 =?utf-8?B?WkZuWDcrZXN2WGo4ODVUSTBZU1Uvbit6clk0Qy81Q2NFU2RrZ3UxVTJXQlNa?=
 =?utf-8?B?QXM0ZFdnL3ZkeWtzdk9PWVFGOVZ1U2U5UXlTOXBSR0JLRXVuQU9lMWl0eXhT?=
 =?utf-8?B?ODc5bFZoMUtQMUwvdjRHc09WcE1obU96TExBciszRTRCREF1TjhmU3FFL2t4?=
 =?utf-8?B?L0poS3pDNjJuQWZmdklnSVNsZDRXNFhXTzhhUVFDY2lnQUtPeUVONVZPWEFV?=
 =?utf-8?B?RW85elVYTTQrOC9Gb0tJOHhVeTZ1T1htQlBldCtOYVZsWFJmUXU2ZVBUWTZZ?=
 =?utf-8?B?aHJKMHRBbzJCOHRHM1Y2d1dCUG8yVnhmSVBmSXhzWjUzNStnNzdpdzlxcmR5?=
 =?utf-8?B?b2xPNE9xRmFXYzRFdE1LVlYyR0ppV1pZYmFRNEhFRXUvcXMwalIrckdBTENY?=
 =?utf-8?B?dlk5NFpQcmM0M0ovVmwxanc3VHBGbWNWU3p5bGJuTGFQb2Rla3k1MXhMRW8y?=
 =?utf-8?B?Q000MzFyRXQzNDdpc0VjazBXcytqYU95UUtlTXkyMXloeGtsSHBXYkRlSldr?=
 =?utf-8?B?T2dWRVVMTXRRS3Z1VTBFSDl6blJZWEFmR2c3U2I5K0UwcWdvblVZbW1KckV2?=
 =?utf-8?B?bGpTaWxNdnZnUDNXRklqbVhPeUI3U3dHKzhhS01IZ3REZUduUW9VVWdjZWNz?=
 =?utf-8?B?djkyanBIZ1d2M2V0c0w2Q1VISDJpcFc3N3NqQTVkT2NramdJQWZNQ1RKdEQ0?=
 =?utf-8?B?WldIdno1cHJ0aEh2S3ltNlJEZVNPUUJpTmt6SzlqZ0c3ZFY0ekNGNFg4bGYr?=
 =?utf-8?B?L0RQRG1pSVdReXZSQmh0RHdXK2kzVGd6dzRhK20vU3YyWWNDREZNdCtkUDNR?=
 =?utf-8?B?K09JVGRYSjgrbElTWUcrM1FqQU1ZWHNUeXZnTmwrNURObHRCVE1sRE9RR29t?=
 =?utf-8?B?c2Q0Rlh4VnZSQ29vNkV5MnlWckZVZEptL3g1RmV2SVByV3psRU9aQTNscmxh?=
 =?utf-8?B?blF4bTEwa08rYUxRNnZtSVF0SVBpc0hIR05ubm5pc1lDZU1tdlk1bUVWNWJY?=
 =?utf-8?B?MkpxKzIyRDJVbnIwZEw4aG9DaC9rR1EwVGgyTE1JYTVXd0duUm9UVTFrVzRO?=
 =?utf-8?B?U1VBdC9xZ3cxeGsrWVFqS0h6ZTJhcHAzeHdXcU1PdmxyMUJ0SU9JWFJFVEJt?=
 =?utf-8?B?ZVpPbWxtS0hXanpHT1dFd3JWd2ZqWU9sQXlPQmpYaGxyTHlpTk1rUCtBTHVz?=
 =?utf-8?B?aVRrYVpYRHdPY1hKcStxTjY5Y3NGb2R0cXQrS2hlenFUSFQzbmY5VlducGlJ?=
 =?utf-8?B?WVVrYnY5U0VBU2tCczdYTmFkK2VDb3JBZm1wMGhoa0toLzdHQ1RGeHJnZld6?=
 =?utf-8?B?SElvZ1hic2RLSGRQRjg2Z0pHdEFiY28wOE1ySXFTVy9mc051R1Y1Q2M4V3Bx?=
 =?utf-8?B?bXF6RktPbkovR2VWM0s3dEVxMHBiV2ZyQ09QYmpSd3ZrWWRJZk9Ub3h0Tnlh?=
 =?utf-8?B?d2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eb138e8-5a1c-4fa4-5cf2-08dc8b91fb29
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2024 10:17:08.1176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QOwSUR2oiThW1gKplDWqi+O1RL8VPe8zrOlH2May31Vr1prEtlcKpiXoIGz7RYy9Gsnym9YZbmj7eUP31BNRCX0jP3XyLUuHPrE5dJRPWNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4844
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718273843; x=1749809843;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iBJamngYZKXLn6rvVBeZ2s8skX45ymLRpcunNqtX4tg=;
 b=k+pP5tTIq02KeG+qeUTcAPvVzTZeosUWEAY0AFM6qWGv2uwyL3Z3zXSy
 P7pTj88fSppMPA/9cQiLoq9HpE9GWPW32vth5WNuCV0LCoVWTGADVGCI/
 lpXnyR5yR8okUWe1UTRWatmD9T8KpK8Lk9l2pT3auqrPeBbzdhOJkdMa+
 iObyfyoNzJ9MI9KsoY8Y0Nu1VgzBQX6ZwEtWl2HKjcVrLCSrrLeCtFuKy
 uMpAamh4pZuECTBAyJvFLd7LcaMmVXfjWkEp9xnbpYf98lnsyw4zzeldn
 BQqTgmNR5/6G9a59fBrIP22f+FnWKP8n3kqMveiVv8WXotyjxpGp+CqTL
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k+pP5tTI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: extend tx watchdog
 timeout
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
Cc: intel-wired-lan@lists.osuosl.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 David Decotigny <ddecotig@gmail.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Josh Hay <joshua.a.hay@intel.com>
Date: Wed, 12 Jun 2024 23:36:29 -0700

> 
> 
> On 6/12/2024 2:34 AM, Alexander Lobakin wrote:
>> From: Josh Hay <joshua.a.hay@intel.com>
>> Date: Tue, 11 Jun 2024 11:13:53 -0700
>>
>>>
>>>
>>> On 6/11/2024 3:44 AM, Alexander Lobakin wrote:
>>>> From: David Decotigny <ddecotig@gmail.com>
>>>> Date: Tue, 4 Jun 2024 16:34:48 -0700
>>
>> [...]
>>
>>>> Note that there are several patches fixing Tx (incl. timeouts) in my
>>>> tree, including yours (Joshua's) which you somehow didn't send yet ._.
>>>> Maybe start from them first?
>>>
>>> I believe it was you who specifically asked our team to defer pushing
>>> any upstream patches while you were working on the XDP series "to avoid
>>> having to rebase", which was a reasonable request at the time. We also
>>
>> It was only related to the virtchnl refactoring and later I cancelled
>> that when I realized it will go earlier than our series.
>>
>>> had no reason to believe the existing upstream idpf implementation was
>>> experiencing timeouts (it is being tested by numerous validation teams).
>>> So there was no urgency to get those patches upstream. Which patches in
>>> your tree do you believe fix specific timeout situations? It appears you
>>
>> [0][1][2]
>>
>>> pulled in some of the changes from the out-of-tree driver, but those
>>> were all enhancements. It wasn't until the workload that David mentioned
>>
>> No, there are all fixes.
>>
>> [0] is your from the OOT, extended. > [1] is mine and never was in the
>> OOT.
>> [2] is your from the OOT, extended by Michał.
> 
> My main point was since no other tx timeouts have been reported on the
> upstream driver, none of these seem like critical fixes. This particular

Lots of bugs have never been reported, this doesn't mean they don't exist.

> timeout signature did not seem to match any of these in general. E.g. it
> would have been obvious if the timeout was because of what [0] fixes.
> It's also possible these timeouts did not manifest on the upstream
> driver because it is missing other OOT changes.

What I'm saying is that why not try to reproduce the issues that this
patch tries to hide on my tree with [0][1][2] first and see whether
they're still here? If they fix the issue, then why extend the timeout?

> 
>>
>> They really do help.
> 
> No disagreement there. I would've loved to push these changes sooner,
> but we already covered why that didn't happen.

Because "they're not critical"? Intel's been having Tx timeouts on idpf
for years. I'd say that at least [1] is critical since this is obvious
bug. Without [2], XDP just doesn't work on idpf.
Why isn't [0] critical since without this patch, you stash partial
packets? And in some cases, ntc/ntu can go beyond the ring size? Is it okay?

> 
>>
>> Note that there's one more Tx timeout patch from you in the OOT, but it
>> actually broke Tx xD
> 
> If you are implying that our team would commit code that is knowingly
> broken, that is absolutely not true. I believe what you're referring to

I didn't say that. I just said that I tried to pull your latest yet
another Tx timeout fix and with it, I have more timeouts than without.

> is a change that introduced a tx timeout that also took a very specific
> workload to trigger it. That issue was fixed and not applicable to the
> current upstream implementation, so I do not see how that is relevant to
> this conversation.

It was just a side note, don't focus too much on such instead of really
important stuff.

> 
>>
>>> was run on the current driver that we had any indication there were
>>> timeout issues.
>>>
>>>>
>>>> I don't buy 30 seconds, at least for now. Maybe I'm missing something.
>>>>
>>>> Nacked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>>>
>>>
>>> In the process of debugging the newly discovered timeout, our
>>> architecture team made it clear that 5 seconds is too low for this type
>>> of device, with a non deterministic pipeline where packets can take a
>>> number of exception/slow paths. Admittedly, we don't know the exact
>>
>> Slowpath which takes 30 seconds to complete, seriously?
> 
> The architecture team said 5s is too low. 30s was chosen to give ample
> cushion to avoid changing the timeout should this situation come up again.

Just "said", without any details why? Now I can say that 5 is too much
and we need to have 1 second there. Why believe them, not me, w/o any
arguments/explanation?

(I at least have an argument that usually packets get sent in a couple
 us or faster and even 1 second between triggering the sending and
 receiving a completion is too much and if that happens, there were
 some HW issues)

> 
>>
>>> number, so the solution for the time being was to bump it up with a
>>> comfortable buffer. As we tune things and debug with various workloads,
>>> we can bring it back down. As David mentioned, there is precedent for an
>>> extended timeout for smartnics. Why is it suddenly unacceptable for
>>> Intel's device?
>>
>> I don't know where this "suddenly" comes from.
>> Because even 5 seconds is too much.
>> HW usually send packets in microseconds if not faster. Extending the
>> timeout will hide real issues and make debugging more difficult.
> 
> Can you please elaborate on exactly why it would be more difficult? If
> something is actually wrong in HW, it seems unlikely extra time would
> correct it. If something is functionally wrong in the driver, why does
> it matter if it's 5s, 15s, or 30s? It will timeout just the same.

HW can hang and perform a reset and if you have 30 seconds for Tx
timeout, you can even not notice it. Having 5 seconds or lower for the
timeout will most likely spot it.

> 
>>
>> I suspect this all is for OOO packets with an explicit sending timestamp
>> passed from the userspace, but as I said, you need to teach the kernel
>> watchdog to account them.
> 
> Out of order completions can happen for numerous reasons, some of which
> the driver will know nothing about, i.e. the userspace timestamps are
> not the only things that trigger OOO completions. We can detect that
> we're processing completion B before A, but it's only at that time that
> we can tell the stack to _maybe_ expect a delayed completion. I'm open
> to discussing this further, but it does not seem like a simple solution
> that can be implemented in the immediate future.

I still didn't get an explanation why a packet can receive an OOO
completion in whole 30 seconds instead of a couple microseconds.
I also don't understand why we can receive an OOO completion for packets
that were send without an explicit timestamp from the userspace. Without
the timestamp (or some sort of priority etc.), they should be sent in
the same order as they were passed to the driver, right? If so, why a
packet can get an OOO completion, which means it was sent not in the
same order as the driver got them?
Does HW do some prioritizing even if the kernel didn't ask for it? But
even if so, HW shouldn't in general delay sending for 30 seconds?

> 
>> Otherwise, I can ask the driver to send a packet in 31 seconds, what
>> then, there will be a timeout and you will send a patch to extend it to
>> 60 seconds?
> 
> I hope there are checks in the stack itself that would not allow the
> packet to be scheduled beyond the timeout window :)

I don't think so, but since I haven't read the actual code, I won't say
anything particular. Anyway, it was just a side note, my main concerns
are above.

Thanks,
Olek
