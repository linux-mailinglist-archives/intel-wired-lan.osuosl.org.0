Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DD2BA6B9A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Sep 2025 10:42:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 678DE80EB2;
	Sun, 28 Sep 2025 08:42:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bXKbs5RbQPHj; Sun, 28 Sep 2025 08:42:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D1B280EBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759048948;
	bh=m9MhKvNeRtwkIPhFW4XoJLXLNN9ZfNQGxNlIs7SqN+4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1t448AK7S9tV4e7aYiaE5NVJNpcbPsbJPoNmNYFyqKNzMfpVBvGImdWCMGUdzGYqU
	 Gf5vatlPSRJj2eptCY4kXGFSzZsKkiDtMjT3xx42wHQoiNjZFjTtyn7lk2nkY+pkZh
	 zAv+e88Oz/vPLUBydls/kayFJ7a/Jd5WvfV4Pz9Znt8K4B2LrWHBJU92cZbrTbNqC2
	 s6PP7KJ0POj6s9qeAB+U29Lqx6yl680qaFLT88PghLpICaR37K8W00jEEUyDgIXU2g
	 viRNB2Y3CIz5ubaDiBWsM2wjOKvttbQMrLO19ilmHmZljBjUIeSeRx8PwPRGmbKFXx
	 U6K8KKFR1jHXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D1B280EBD;
	Sun, 28 Sep 2025 08:42:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D8741197
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Sep 2025 08:42:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE301401C6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Sep 2025 08:42:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2v8X66-UN42O for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Sep 2025 08:42:25 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 28 Sep 2025 08:42:25 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 73A1B401C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73A1B401C5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 73A1B401C5
 for <intel-wired-lan@osuosl.org>; Sun, 28 Sep 2025 08:42:25 +0000 (UTC)
X-CSE-ConnectionGUID: 1IigxzFsTcWOJe1YIFWE6g==
X-CSE-MsgGUID: Owo1RrBYQ+GvVEual2cDDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11566"; a="61237549"
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="61237549"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 01:35:17 -0700
X-CSE-ConnectionGUID: fVvG2g60RMGcZ0NXiuo99Q==
X-CSE-MsgGUID: kx+dOuGCSjm9+KK3/OvuEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="183247472"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 01:35:17 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 28 Sep 2025 01:35:16 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 28 Sep 2025 01:35:16 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.37) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 28 Sep 2025 01:35:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iRR9YedIWDpYJwI7GsegDjPEAliNBKVy3ChzUwYBaFiXfj8QHs9hRxWzkCiiPPFHNYZy/W94SD8UDsgc72FUj26Wb1Mik86+Rdb+x4Td82myJG/AqE1pf6X1ckixIzV5LbarUltLdwkpTrhcHH74UGWPOWhnNSW5CMto4cYn1j5DRExi6xnGSBrthZMbLvz0dkn1VBX6zSC4s0xzIWqIo3CX/5j7XlVmsXlrcHYWaYSnOfDksbK9UdkrCDZtu3mz4WbK4c0FyK26ufopvpKHplxqFjg8jM2myfy2xfXPdosRXO6ZEd/bMEM+NtrA00f10oynCcfF7PiKUocOJWAHGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m9MhKvNeRtwkIPhFW4XoJLXLNN9ZfNQGxNlIs7SqN+4=;
 b=bjr3CdghmJs/+NEzfh3ubW6ARJ5MOiLIhBp+vzTxRr3ii3zhazs6QEL84mzmNQjQpk7l5pLWU3GI3dIdE1FfOcr24mrI/7kxrfZZA4aJJ6D+QIVrpphvTE2ODMKFkFXW80lV0ls/WVCg1q6fabqs9LmrPY1BO7gKrWT4weZLZEWtWpgKPzpYW+jnjBEmgqDUjA6zkjMmjmU698Sl2lOmlsZzrGiKBK6R98GlAPwQKEeVgL6DpYz0XcQFikSt7O1ahu3baUP9YQ6mBSqi5MqAFZnfDzryyp6Ba6BOqIjEER/sorzYuQn3VzhuEnFTl11910wCVoKTYIly+KvrAcRNQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8894.namprd11.prod.outlook.com (2603:10b6:208:574::9)
 by MW4PR11MB6934.namprd11.prod.outlook.com (2603:10b6:303:229::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Sun, 28 Sep
 2025 08:35:13 +0000
Received: from IA3PR11MB8894.namprd11.prod.outlook.com
 ([fe80::817d:526d:9031:d5ba]) by IA3PR11MB8894.namprd11.prod.outlook.com
 ([fe80::817d:526d:9031:d5ba%4]) with mapi id 15.20.9160.008; Sun, 28 Sep 2025
 08:35:13 +0000
Message-ID: <001f04b2-f83c-4bb1-ae75-2dfe04b3d910@intel.com>
Date: Sun, 28 Sep 2025 11:35:09 +0300
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
CC: "timo.teras@iki.fi" <timo.teras@iki.fi>, "marmarek@invisiblethingslab.com"
 <marmarek@invisiblethingslab.com>
References: <20250928080040.6309-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20250928080040.6309-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0002.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::12) To IA3PR11MB8894.namprd11.prod.outlook.com
 (2603:10b6:208:574::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB8894:EE_|MW4PR11MB6934:EE_
X-MS-Office365-Filtering-Correlation-Id: 50c2b655-74ef-4eb8-ca00-08ddfe69f129
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NE5XNVZVL1pBQjBZT1BhdkM3V1IrbGNRNVVmNDNLQlIxdGtNYTJvYVVlY3Jo?=
 =?utf-8?B?UENMNG5jWkFpTU96d3JNanZJaWxSV3JzbGFyVVF1NE1rR0dIZWFGTG1lbWlk?=
 =?utf-8?B?eVpkMHBLWXh0cXZUL1dFbWpoMVIrUDhpRDRTWDlYNmtyNFlUQ2llWk1YYU4v?=
 =?utf-8?B?RktTRHJqNWt2TmF4bWRKZDlQdzh4bTI2bVNTQmgrM29IV2t1SS9NSlptY1NQ?=
 =?utf-8?B?bzJrdzZYTGF6L3dNN1dYRXpjMG5VdEU1czJSbDRFU0VVcHowWVZld0JqOGJ2?=
 =?utf-8?B?UmQrQStaN2NWMWtvRkl5V24weXVqNmZXc0kzY2VTYTR3LzEzYWdka2JvWElK?=
 =?utf-8?B?QTZpTzBmSjVpV1J2aG9MRCtsUXB1QXp1U0s5aUhPcDFrWlRMRXhyN1JMUFJ1?=
 =?utf-8?B?dTFBNmk0Q0lYVFd1Y3dBZ1pPUmN6R3FKY1F4bDdOMHdyNkl2TjdrNDhsYlFu?=
 =?utf-8?B?WUtVVmJnRFF6V2xBRzB0NlpZczRNTXlRc2srSlFDVHdWUW5qQURadVFPdkU4?=
 =?utf-8?B?L1YzanlscWVzMkdDN2daMlU0N1ZpT3lXZXY2SklxZmhBQXpiNHFDVmRtZ2xh?=
 =?utf-8?B?ME16YURHOGRibjdOelFnZWNRaFlrOVc0Qi9jN1kwZlg5Nkd0TldTbjRoS1RQ?=
 =?utf-8?B?NGlIeHI1YldhemVYL2phd2pwQ25Hb0pVejhieFZBU0lFalRmN1hkZkZseVlv?=
 =?utf-8?B?SUVQdG1TNEVKVEQ3bFVYTEwveTYrY0V2K1RXa1ludXlVZm1yUkFkbU04VXpN?=
 =?utf-8?B?a2t3NVhsNDRKRjRHa3lNaDE2Rmtrd0JNTEtiUCs5U0JGTDNWTkZUK0UzMCtj?=
 =?utf-8?B?Wm5MLzNrMmpNaXNheVhSYndaVWU0YW8zU3JBSlUyR21uOE5GRm5ZQlZnZTZF?=
 =?utf-8?B?eHZ0MkxMcmNMOHpIQk9kT2g0N2JDSTBqdjV3RTBsM1k4bkhOelRwT0lXWkx5?=
 =?utf-8?B?cnllNGtuS3gvelk5OXh6cHpDWk1XOUlnR1BWZ0dJcWRsclpDZFZqYTR6eFVW?=
 =?utf-8?B?bVRoKzQwc3ZGUDEvTXQyMWlnSURlVCtLeCtXVWZJKy96Q3QzemRLVjRzRkZl?=
 =?utf-8?B?cmluNE1yd3krSjk3MU1EOWcvSnpvT0RtN2ZGKzV0VGplOFl3SjdaU1VDSUVt?=
 =?utf-8?B?OXozUmpzVzRMZktuc294UzhkN0I1WGY5cEdvZXp1WmtGRkRjRU53V2RscVlY?=
 =?utf-8?B?QU1pa216dDJqVHUxOGxwM29lSEl3cjlpTWpGREVjK2R2QTdSc1Rzd1VCSUhz?=
 =?utf-8?B?MGlhL3U2R04rME0rcXEwVFRHZWw4S1ZsdFVSRVBpUjNqSkdWVFZZeCtKU1Jr?=
 =?utf-8?B?Qk9CQ0VKU3o0b1drMlpkaWgrK0tZSzd6cTJWaUF4TE5RaUVWM0Y4c2Z3VDU5?=
 =?utf-8?B?SFp0bCtuMXlVUVBMVS9FUS9HSEpseTNzLzBZeTFwNm9SY0lsZ2lkb0s0S0Zn?=
 =?utf-8?B?QnBhdEJ3YXlyUmdnd2lwN0lZcytsMmJVTER5TzloR0lUdFpTaEFndXdoS1ow?=
 =?utf-8?B?cjVjOXFZS01pL2Z4eHRlNWlUOHBtNDU0ZnFyVE5KMDl4RWJ5RWlPVSt4dUpi?=
 =?utf-8?B?TlgwQUs0eWx6dndiM1RCVFFtQ3VsZjZqaGpjdi94T1JQREx2emhJbkpleU9q?=
 =?utf-8?B?NjRrZHNVdkZyT3N2MG5qakY4YVV3MnZ5NGZKazljSjVkM281VWY2bWN3WGhW?=
 =?utf-8?B?OVgvMzhiRmNSTFFaSWRrYThSWFRpbGVrMG15SUw1WGpoN0JjVUlkaXBhekNJ?=
 =?utf-8?B?WEJSQnBpSDZDRXI4Tml6ZVkzL3lTeEd6ZXpFR0JINC8wRjZFN1hReVNGL1dG?=
 =?utf-8?B?Mk5sa1AyaWp5VTVtSGFuTU5qT3VJTjJEd0wyQWxIcFpOUXl2WE5ScW1ZSHY4?=
 =?utf-8?B?TGg0RURzcERnMnd3MldJd3VkYTVGY0xuS0NORWJ6a2wxSTV1a29Ic2hCd3Nk?=
 =?utf-8?Q?yG9GNK4F0rg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWtyc0VNeENKdU5kMmwrVEFLcjBIdENxYXVrd0tXd012NlVLRUZ3Vmw0ZTF3?=
 =?utf-8?B?elJUSmNlOU9nLzRzZ2RNVHNwTUVhRVdVNElUU04ydEpWSHd3Q1phQnZTanVC?=
 =?utf-8?B?ak1qLzcvTU16WnBsUnFRNDA5UDRRMWxHOGhUNjFPSzFSblhWMVo2eDZDUk12?=
 =?utf-8?B?T1Q3cjdHcndQY1EwajZ2TTlNOU13RlZOcDJYM3JFRDN5S0lqQm45VTJJbCtP?=
 =?utf-8?B?RkZabkVSNmNMbUw2OG1udGdBc1RJbEFhN2VLem56bnMxN0c3TVo2eGhyaVZH?=
 =?utf-8?B?Smd6WjhhWHVRT1QvOEJRVDFxZkE5ZTVMN2paT1FoNXgzaDI0V0VDQTcwUGtH?=
 =?utf-8?B?Z0R5QTB0SWVHcG1GRUxIdkRIOXByUmhJenJvTDlKNUt5WDdTT0tySTJTTUt2?=
 =?utf-8?B?TnlYbjErMHNPeGNaOFdjelBNQkdIaUZSVTVkcFBvTmJTSTZ6MFQxTmlSZTJs?=
 =?utf-8?B?Z0duTjdVZmJsTFVUMldab2E1UndYTnFDeklGWlNPYkFmb21VUkFTVFhhYXpS?=
 =?utf-8?B?eHdHYjhqSFFXTCsrK292S0N5N0JKOXEwUFRPVlhESWJ3ZzBEQkdCd1hBRHVW?=
 =?utf-8?B?a1RJMFg0aENMWWg2VW1ETkUvekQ0WThSRk55b2tvZGVRNCtlcnptNlgrdDFM?=
 =?utf-8?B?NDlJSWRCb2Y5UHEzdFU4S1lDZFRYbjV4TnEyRDIzS2ZnMTBVUTdiTkVUTHRp?=
 =?utf-8?B?eExVUDRzMTRKeFo0bGJkdzRTTFZiVmFjV2p6UTdpcWhPa25weG9nYzRPT1d1?=
 =?utf-8?B?d1VyMzJsdTRlSVF0V0tJTnhPS2pwYk9WWjJBZEFtV0RRdHNPSUVVcVZYOGp2?=
 =?utf-8?B?Z1NiMFFPRngvSU1Uc3hVaDJESTd4YmZEaTdSUm5URGFZcDltQ05xU05CYXRh?=
 =?utf-8?B?Mzd3Sk1xQ1lMeWNIN0lEUTI4cTJhTWRoTFdzanFDUHVxaXV5cWZmamphdngz?=
 =?utf-8?B?cXhTeUJhaDVDaXhkSFFNeURhcmFZQ1dTOWxCazk1YUsrSXlZU0xHZjJNK2VK?=
 =?utf-8?B?ai82WDRuWjkwZDdVTXVKUVdPMzhJZjljN0JPZlhiL3NOVHJZanJIc054QzVw?=
 =?utf-8?B?ejQzQlc1SkIrc2VsT3o5TFhkTmw5YlVSdXRQZmlBQWVENWJhM1JFRE1lQ296?=
 =?utf-8?B?WGJITzJZaEc5R1lHOVU4djJHNkUrYVVkL0kvNDlnSElXT0FxMVpGTFJlUXVv?=
 =?utf-8?B?MnVjQjliUTNzd0Y1YjRzak1WQzhyUWhwcUpsamgvRzJWNUhVaXUrQTZqZGww?=
 =?utf-8?B?bjFRRDVpc0xLbkYvbjU5MEdzUlRxN2R6YXNIWEZTYlY1ek8yZDRSZ0I1cW1a?=
 =?utf-8?B?eTkwRVZ6UXcrd1R2VlM0UHNmZzFwS3dUVGcwaU9CU2FPbnpreWdQTXRHZzU1?=
 =?utf-8?B?OGoxU3p6a3p3eGRUN3lmZlBtVDBFemducUhaTWNBNDJnZHpaaEUrTUN3MEFR?=
 =?utf-8?B?NXJGS0JHeTg1dzJBNEpPNEUrbjZ6dlBSNVlGUFROWklOSlFDenZkVE5ncHQx?=
 =?utf-8?B?eWlMSjBLMmNHSnMzOW1razJ2Tloyd1UrcFdzcnpvM0Y3ZE5rSE05M2JZNWRk?=
 =?utf-8?B?WU9Td1ZVQk0yaE85b3BXTUYwdEpGVmFSYit6REtHa0xxR2RvSmphK28xSFAz?=
 =?utf-8?B?N1YvRVhNdTNwbHVROEkxbklkMFV5TCtuMHk3UkFQZkhUZU5TRmVQblNPdkxQ?=
 =?utf-8?B?cm1RRlV1RzNhOUhoUzRoSzV3MFM5NWpISGdrZmlGWHMwYnJvYWRFMGhLc2hC?=
 =?utf-8?B?NVBwUjBxTi9jcUpvNytkQnNZQXF0MnZIRDRTR0VtZDZ5ODdWR2x5Q1hQZ3k5?=
 =?utf-8?B?T2xXV0IwYlBaMmMyejRUN2I0OGhCbGFkczE2TEhaUm5xSmtZUHZOV2JHZm02?=
 =?utf-8?B?NTdPck9iSzREQ0ZaSVFQUGlVN2hzczZKanhjMGtrMWUrOG5nZzQxd2xrVkJj?=
 =?utf-8?B?YVIvMURmckZjRzc3TUJEemJBN3ZKTGk3djJiMjY0aE1IdlczclBxcWIreDNS?=
 =?utf-8?B?aVV0aHRkNVlnemVDRGo4MCs1M01neU1VNW5NalJBVkplTk1sL09WaVA0cElu?=
 =?utf-8?B?Y1c4SHh3aFN0YlY3VnBCN001VXVoRFBaWHFyb1BTbXp2ZDZaM0ticVNFTktX?=
 =?utf-8?Q?bQtVSwN29I/Xxrs6m57LS3YIq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50c2b655-74ef-4eb8-ca00-08ddfe69f129
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2025 08:35:13.0159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +yCFOS5f1MMpntypTyv3yBfn7RYXY6ttSsLae1kPK+auY3yoFDqKwNNcYFIt8TPT0x3YExzBNvHYlqDS570nOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6934
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759048945; x=1790584945;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yU3iztkiXJIggoqV41Ffr5wofUcmHJzpWBaN85v1XB0=;
 b=DAQxBa4n5tow3kecQJAYOlkgDJZTZVpZ+PFq1DKOuyGH3hmQcQtjcHUz
 5otUhYFP0SoI+Pf3ljKA9R4iV1dWmcWmJf/szAG4LemkHhpBuG+CGhvKh
 I3UGg1KM4TKSb/PIkMeqbAljqA18WjXZmXAF1/WToJnp9Fdf3cUlpu7ld
 0OvmOxu3RmAQkVWRN+sX1SwCq0ns0/O4cMD8tRsLtE1OrdvdqgJFi0an4
 3BrkYpx1T2jFRWxdvhPekHm44igr06WGbXZU0Mv8chU3NsKl7lNE8P43A
 3SEEKQj6TyNKxk7xlVCfxUY5ojRy0OPT4rFxCvz0gBxNlzKEndGciSO96
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DAQxBa4n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/1] e1000e: Introduce
 private flag to disable K1
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2025-09-28 11:00, Lifshits, Vitaly wrote:
> The K1 state reduces power consumption on ICH family network controllers
> during idle periods, similarly to L1 state on PCI Express NICs. Therefore,
> it is recommended and enabled by default.
> However, on some systems it has been observed to have adverse side
> effects, such as packet loss. It has been established through debug that
> the problem may be due to firmware misconfiguration of specific systems,
> interoperability with certain link partners, or marginal electrical
> conditions of specific units.
> 
> These problems typically cannot be fixed in the field, and generic
> workarounds to resolve the side effects on all systems, while keeping K1
> enabled, were found infeasible.
> Therefore, add the option for users to globally disable K1 idle state on
> the adapter.
> 
> Additionally, disable K1 by default for MTL and later platforms, due to
> issues reported with the current configuration.
> 
> Link: https://lore.kernel.org/intel-wired-lan/CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com/
> Link: https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.my.domain/
> Link: https://lore.kernel.org/intel-wired-lan/Z_z9EjcKtwHCQcZR@mail-itl/
> Link: https://github.com/QubesOS/qubes-issues/issues/9896
> Link: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2115393
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v4: Revert changing the reconfiguring function from static
> v3: Removed disabling K1 in watchdog_task and change the private flag setting
> v2: Add a missing semaphore acquiring and disable K1 on MTL by default
> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 45 ++++++++++++++++++---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 41 ++++++++++---------
>   drivers/net/ethernet/intel/e1000e/netdev.c  |  3 ++
>   4 files changed, 67 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index 018e61aea787..aa08f397988e 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -461,6 +461,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca);
>   #define FLAG2_CHECK_RX_HWTSTAMP           BIT(13)
>   #define FLAG2_CHECK_SYSTIM_OVERFLOW       BIT(14)
>   #define FLAG2_ENABLE_S0IX_FLOWS           BIT(15)
> +#define FLAG2_DISABLE_K1                  BIT(16)
> 
>   #define E1000_RX_DESC_PS(R, i)     \
>          (&(((union e1000_rx_desc_packet_split *)((R).desc))[i]))
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 06482ad50508..6e7b15c7fe5f 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -26,6 +26,8 @@ struct e1000_stats {
>   static const char e1000e_priv_flags_strings[][ETH_GSTRING_LEN] = {
>   #define E1000E_PRIV_FLAGS_S0IX_ENABLED BIT(0)
>          "s0ix-enabled",
> +#define E1000E_PRIV_FLAGS_DISABLE_K1   BIT(1)
> +       "disable-k1",
>   };
> 
>   #define E1000E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(e1000e_priv_flags_strings)
> @@ -2297,26 +2299,59 @@ static u32 e1000e_get_priv_flags(struct net_device *netdev)
>          if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
>                  priv_flags |= E1000E_PRIV_FLAGS_S0IX_ENABLED;
> 
> +       if (adapter->flags2 & FLAG2_DISABLE_K1)
> +               priv_flags |= E1000E_PRIV_FLAGS_DISABLE_K1;
> +
>          return priv_flags;
>   }
> 
>   static int e1000e_set_priv_flags(struct net_device *netdev, u32 priv_flags)
>   {
>          struct e1000_adapter *adapter = netdev_priv(netdev);
> +       struct e1000_hw *hw = &adapter->hw;
>          unsigned int flags2 = adapter->flags2;
> +       unsigned int changed;
> 
> -       flags2 &= ~FLAG2_ENABLE_S0IX_FLOWS;
> -       if (priv_flags & E1000E_PRIV_FLAGS_S0IX_ENABLED) {
> -               struct e1000_hw *hw = &adapter->hw;
> +       flags2 &= ~(FLAG2_ENABLE_S0IX_FLOWS | FLAG2_DISABLE_K1);
> 
> -               if (hw->mac.type < e1000_pch_cnp)
> +       if (priv_flags & E1000E_PRIV_FLAGS_S0IX_ENABLED) {
> +               if (hw->mac.type < e1000_pch_cnp) {
> +                       e_err("S0ix is not supported on this device\n");
>                          return -EINVAL;
> +               }
> +
>                  flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
>          }
> 
> -       if (flags2 != adapter->flags2)
> +       if (priv_flags & E1000E_PRIV_FLAGS_DISABLE_K1) {
> +               if (hw->mac.type < e1000_ich8lan) {
> +                       e_err("Disabling K1 is not supported on this device\n");
> +                       return -EINVAL;
> +               }
> +
> +               flags2 |= FLAG2_DISABLE_K1;
> +       }
> +
> +       changed = adapter->flags2 ^ flags2;
> +       if (changed)
>                  adapter->flags2 = flags2;
> 
> +       if (changed & FLAG2_DISABLE_K1) {
> +               /* reset the hardware to apply the changes */
> +               while (test_and_set_bit(__E1000_RESETTING,
> +                                       &adapter->state))
> +                       usleep_range(1000, 2000);
> +
> +               if (netif_running(adapter->netdev)) {
> +                       e1000e_down(adapter, true);
> +                       e1000e_up(adapter);
> +               } else {
> +                       e1000e_reset(adapter);
> +               }
> +
> +               clear_bit(__E1000_RESETTING, &adapter->state);
> +       }
> +
>          return 0;
>   }
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index df4e7d781cb1..0ff8688ac3b8 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -286,21 +286,26 @@ static void e1000_toggle_lanphypc_pch_lpt(struct e1000_hw *hw)
>   }
> 
>   /**
> - * e1000_reconfigure_k1_exit_timeout - reconfigure K1 exit timeout to
> - * align to MTP and later platform requirements.
> + * e1000_reconfigure_k1_params - reconfigure Kumeran K1 parameters.
>    * @hw: pointer to the HW structure
>    *
> + * By default K1 is enabled after MAC reset, so this function only
> + * disables it.
> + *
>    * Context: PHY semaphore must be held by caller.
>    * Return: 0 on success, negative on failure
>    */
> -static s32 e1000_reconfigure_k1_exit_timeout(struct e1000_hw *hw)
> +static s32 e1000_reconfigure_k1_params(struct e1000_hw *hw)
>   {
>          u16 phy_timeout;
>          u32 fextnvm12;
>          s32 ret_val;
> 
> -       if (hw->mac.type < e1000_pch_mtp)
> +       if (hw->mac.type < e1000_pch_mtp) {
> +               if (hw->adapter->flags2 & FLAG2_DISABLE_K1)
> +                       return e1000_configure_k1_ich8lan(hw, false);
>                  return 0;
> +       }
> 
>          /* Change Kumeran K1 power down state from P0s to P1 */
>          fextnvm12 = er32(FEXTNVM12);
> @@ -310,6 +315,8 @@ static s32 e1000_reconfigure_k1_exit_timeout(struct e1000_hw *hw)
> 
>          /* Wait for the interface the settle */
>          usleep_range(1000, 1100);
> +       if (hw->adapter->flags2 & FLAG2_DISABLE_K1)
> +               return e1000_configure_k1_ich8lan(hw, false);
> 
>          /* Change K1 exit timeout */
>          ret_val = e1e_rphy_locked(hw, I217_PHY_TIMEOUTS_REG,
> @@ -373,8 +380,8 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
>                  /* At this point the PHY might be inaccessible so don't
>                   * propagate the failure
>                   */
> -               if (e1000_reconfigure_k1_exit_timeout(hw))
> -                       e_dbg("Failed to reconfigure K1 exit timeout\n");
> +               if (e1000_reconfigure_k1_params(hw))
> +                       e_dbg("Failed to reconfigure K1 parameters\n");
> 
>                  fallthrough;
>          case e1000_pch_lpt:
> @@ -473,10 +480,10 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
>                  if (hw->mac.type >= e1000_pch_mtp) {
>                          ret_val = hw->phy.ops.acquire(hw);
>                          if (ret_val) {
> -                               e_err("Failed to reconfigure K1 exit timeout\n");
> +                               e_err("Failed to reconfigure K1 parameters\n");
>                                  goto out;
>                          }
> -                       ret_val = e1000_reconfigure_k1_exit_timeout(hw);
> +                       ret_val = e1000_reconfigure_k1_params(hw);
>                          hw->phy.ops.release(hw);
>                  }
>          }
> @@ -4948,17 +4955,15 @@ static s32 e1000_init_hw_ich8lan(struct e1000_hw *hw)
>          u16 i;
> 
>          e1000_initialize_hw_bits_ich8lan(hw);
> -       if (hw->mac.type >= e1000_pch_mtp) {
> -               ret_val = hw->phy.ops.acquire(hw);
> -               if (ret_val)
> -                       return ret_val;
> +       ret_val = hw->phy.ops.acquire(hw);
> +       if (ret_val)
> +               return ret_val;
> 
> -               ret_val = e1000_reconfigure_k1_exit_timeout(hw);
> -               hw->phy.ops.release(hw);
> -               if (ret_val) {
> -                       e_dbg("Error failed to reconfigure K1 exit timeout\n");
> -                       return ret_val;
> -               }
> +       ret_val = e1000_reconfigure_k1_params(hw);
> +       hw->phy.ops.release(hw);
> +       if (ret_val) {
> +               e_dbg("Error failed to reconfigure K1 parameters\n");
> +               return ret_val;
>          }
> 
>          /* Initialize identification LED */
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 201322dac233..116f3c92b5bc 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -7675,6 +7675,9 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>          /* init PTP hardware clock */
>          e1000e_ptp_init(adapter);
> 
> +       if (hw->mac.type >= e1000_pch_mtp)
> +               adapter->flags2 |= FLAG2_DISABLE_K1;
> +
>          /* reset the hardware with the new settings */
>          e1000e_reset(adapter);
> 
> --
> 2.34.1
> 
Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
