Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2655BA1B122
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jan 2025 08:49:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D46DA60770;
	Fri, 24 Jan 2025 07:49:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zsKu2DbrkWEM; Fri, 24 Jan 2025 07:49:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C57760A4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737704988;
	bh=qk2C4UoRdz6V822I8rY6SXU7tcGvtoKlOJ67hcXwO/4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5AcPuGr7pJe5Vx8rMnYIj1BVy17B/jMAhRInVmHRaU4E8lyJaI05OkpCFiP2dN07X
	 QNAseGbj5ljZBLvWgWjs7FsxvCx0vzsEpj/KpDMR/MTog6jZ3UnDIZjjcnLhLnelb2
	 /PHaW6OU1YaP9IQ6e2ZcgeYtytR08qybzDhFMA37/CkcopOs1oEKooW45sgBtqP5wi
	 PI/24QbeEuJXl25Eo5c2rTmKRN4R09EtcTju75HZhEqz3rVvzVmcBUkag9GoH3lubV
	 ljEMoxd2x6EUUOO+Z8SzVVfJ0dr1mTOaZP54T/uWX72aVLBuLBe/7EXatAFswgPoTB
	 joNr61ZGpAwpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C57760A4C;
	Fri, 24 Jan 2025 07:49:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B3C2F94A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2025 07:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C67B419AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2025 07:49:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j-HKJqZ6KeIR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jan 2025 07:49:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 100B741999
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 100B741999
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 100B741999
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2025 07:49:43 +0000 (UTC)
X-CSE-ConnectionGUID: n/7Y0ROVRe+f1uaxfDgz7Q==
X-CSE-MsgGUID: yazc0CwQROeU00JR5faGAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="38263556"
X-IronPort-AV: E=Sophos;i="6.13,230,1732608000"; d="scan'208";a="38263556"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 23:49:43 -0800
X-CSE-ConnectionGUID: fzBn4hI0QtaBb0/3NLVuyQ==
X-CSE-MsgGUID: ah8Y+jhDRzOETmMbJV28uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,230,1732608000"; d="scan'208";a="112725465"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 23:49:43 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 23:49:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 23:49:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 23:49:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BYNZJNAsiwyFpxQfpFlpar8yOV5+IPkAfvT5st5plym1wrrQ93Q37cSPrcCK9FC684xc1kqK1Pxd/7oMpr6WtyblzeewBEhYkjm5Tbbbmj4NoEOVm1heA+t+iNK9crotSey6afGb7ZjNxoWaJSWKL35AHISLvuclBS/pXFhgVNyYeBTmpC/H30UAm8mgc1Pj5N5KNSNnsqPS9Y0estx1pFXd0k4zVMgzPBjmn5HNSheGnhMh6bKZ9SvQrRI7+B6t3xWRo9bZ9DQzXGHftx3rfUujSFFwbDQitw/hXWCVvZ7wIq9Q7sCIlAkp4CzEYHtzWjkEQcYFsynrV3lbw1IXrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qk2C4UoRdz6V822I8rY6SXU7tcGvtoKlOJ67hcXwO/4=;
 b=Ea+iKzveNjR1WC2KlI0+EUPbgjlZGHKmzl2nkE3pjYQXaboNEophO5SuHzKcsKJTzIJpf0h0lGd4MBFLIIV+1TIAzKTGipXrpMPhFlzpzIwPyg49wzRuHwTLxQzhMA2dkZKi2Ylz0ThsJ0u4ACT3VtHK7VfDTruPlNQ0oXrIiavnWRkBvQNXOOUKKvpeNJCR8ACwu01QYxJkxyDNcTm0PRycy6UdgT0e6tjkTW9h8V8NIrabZeTk1W3PyXbIE5f+xuFKbsovBCge3ib3cbgrhd+pI9vRW/1iqX6u+y/QJYCqSYVD/6syU55x5U3p7dHHgTZRLYS9BWxtfM6RhhRzNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BL3PR11MB6314.namprd11.prod.outlook.com (2603:10b6:208:3b1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.19; Fri, 24 Jan
 2025 07:49:33 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 07:49:33 +0000
Message-ID: <5ae0ba50-f184-4f4a-85ab-bf61ace2af96@intel.com>
Date: Fri, 24 Jan 2025 08:49:28 +0100
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Simon Horman
 <horms@kernel.org>
References: <20250122151046.574061-1-maciej.fijalkowski@intel.com>
 <20250122151046.574061-4-maciej.fijalkowski@intel.com>
 <20250123104536.GL395043@kernel.org> <Z5IfGpKdnskgoJJ3@boxer>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <Z5IfGpKdnskgoJJ3@boxer>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR03CA0054.eurprd03.prod.outlook.com
 (2603:10a6:803:50::25) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BL3PR11MB6314:EE_
X-MS-Office365-Filtering-Correlation-Id: ee711901-09f7-4100-17cc-08dd3c4ba475
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2dKb0VSSGZFbkNuN3o0ckw3b3Jja0s4elUvMjI0Mm8wa1lEL2hJZkNkaG1B?=
 =?utf-8?B?SU0rcHJackJtdmpwc3E4QTM1RmJBK1NLeGhTUmF4VExTU2ZTZnNjOTUwLzFo?=
 =?utf-8?B?ay8veE5BQy9ZTkFmWTFGa2pocmRmQm0rZE50bk5PcDFKV3I0elZTUnJkajk1?=
 =?utf-8?B?TXFwdE56UWV1eWEzSzhURGtwKys2b2hyeDJlNVJYTnVVZWV1cDRqV1Q2VkZF?=
 =?utf-8?B?enJ3Y0lkUWpyU3hGSG9HUjdEb2d4Y2wvOGhBdDNqek1Td1ZLQklkb1BMbnR6?=
 =?utf-8?B?RFN1anluVElUU2JUK2ZVM2kyS1hTWlFEUjZxQW4rdFlRNHN6UjBVYjUxMk00?=
 =?utf-8?B?TWFXYytvc215RGg0bkJ2d2M3YmJhaGdQbmxROU0zeGdUL1pxRndnczNrdDdL?=
 =?utf-8?B?YXhXMHpPSCs4Yk4yY2VIM2E5MGJDeUVVQVBHRXBVWWsyNVZ1VCsvYXljZVR4?=
 =?utf-8?B?M1EvUDZKYlg3QUtmcFBFU1FrMFRQMW1IVUpwQmhIRXFaNW9iTmo5Nm42ZmFW?=
 =?utf-8?B?ME1lT0pRMW1wSHpwbXdMM29vTG5XL1MvQVNjT2N0cmxRSlI5VHpFNktvMXNV?=
 =?utf-8?B?Tk1ucXM5QVJNQVQzUkxRd2lDT2FsTFFjbWM3bTRtbEpMeUE3bzlTd3owNnpW?=
 =?utf-8?B?enFtdjFKWDNUeEtNYnJaQ0RsYldNYVRjcEVPRUo2RDRkZjdwSy9MTVZMd3FW?=
 =?utf-8?B?S3FsNWZjMFpsVldhUklsMkxIS0RpcVNRUmlsQjVIN0ZVclplaHd1b3NTZEJZ?=
 =?utf-8?B?VnFCL3Zrbkw5NDJIeDZYVHJRYmZlZjk0NTZNNWRFbk9WU0M3RXlVQ1ZOK1Rp?=
 =?utf-8?B?dVJyQUtpaDdLUUU1SmY2WlA4NnJqR1hRWk4zM0dNKzN2QkFTUGwvdFhhd2J6?=
 =?utf-8?B?NEdHZXoyL0FUcDVPWWdjUEhtZ1N2WFlZeURyeEZwT2JndGlDcHROV2ZqbjZL?=
 =?utf-8?B?SnhsdkdZWWpieHBrZU9NemxvSnJDSlB6T3BDQm5MMnlkWnFSYy80ZlhwRlEy?=
 =?utf-8?B?d3lCaGdaQzI0L0gvdnVSb013OHlLTkgzYnV0MXZQR3c0anVwRU96blpJN0Zm?=
 =?utf-8?B?Q1dVOGFUbGxYMForWUtSRlU2dXVkcHBlL05LeS9vQ25NY05vNWV3UVZmSE9Y?=
 =?utf-8?B?Y3FpdGRIVmx1VU1nZVVvU0ZJZEovYS90N3NNODhsMEQrZlRzcjQrMVRGLzlI?=
 =?utf-8?B?b3JhNUVkL3RlN0J2WVAwZ2hFbXhDRExKVzN4Ymg1KzNDUnBGVVN2VnFncWVH?=
 =?utf-8?B?VlBNOVdnRjZ6VDdrRzQya0pjVkthYjNXV1dGNG1aRW41MEtLcXJQeXlHNlJr?=
 =?utf-8?B?cmxiY2VSYW15aGljbUZTd0U4U2UzYnpKOExKY2lwVUxheUErSGJ4VUZ2OEZl?=
 =?utf-8?B?SnoxQ0ZiSVB5Y0xHK24zQTNXOHRSa014Z21YMVlWd0ovTHllN1hhMHlzc0dz?=
 =?utf-8?B?VTJKQWlhU0taNEk5alZjWS9zRElJUE43aWdiRHVjRW9JNXFKa21Ra3Z1WFEw?=
 =?utf-8?B?bmpwK3JKcDBMbkg1VHEvcDhSWUduV0dvak9aamc5RHhwSTdBeGthdWVKaGJW?=
 =?utf-8?B?b0tkUnJLRmU1cUNnR25wa0piRThsS0lDQkMyMjRNdVQ5eFk5ZGhnMEVCdjJV?=
 =?utf-8?B?S2pFTHVHSmhxUkRua01Yd3pnSVczOFFKb2pvNVI3YTN2VUt2V3VhWnQ4b2NM?=
 =?utf-8?B?KzdkTW0zV1BSTlgvRWRzNkNGTVRhWjlPWk1MYTJaSElTOEZ6RlNQU2JtWWZ4?=
 =?utf-8?B?dnVNWGdPUkRFUjA3Wm96Smk3ZFM5MUxBTnZXZWtqemd2bkxBRlVyQVBRdUJC?=
 =?utf-8?B?TnFieUZZUDNlcVRHbEx6OGp1MVNmc0NBNkVFUXJ0ZGJVUFhjSHdFZnord2Jv?=
 =?utf-8?Q?+Lbke4ql9ftxa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXlVbjdtOGRwcEhFNFVHUXQwSU43d3JjYUhEV1U0WVVxVXNQSUNmR3ljSXZY?=
 =?utf-8?B?dGcybXZUdCtwK0c5M3dLa2pqekRsd1RDWmZaYk9ORm05SU1yd0hyMmtRSEh2?=
 =?utf-8?B?SG55ZVprYmVGL1JBbHJPa1IxR0FxQjBHOCszbWhQZlJPL1VOT0pTeStURUJ4?=
 =?utf-8?B?Rmp2U3BBTnJTQjhJM3RlQStwa1JNMWtoV3doT1J2eklWN0lUZnczOVdwaUVO?=
 =?utf-8?B?TUl3d1ZXSTgyMG03c0VtYTNYWHlMdFo0VjFzUVdJZVZuQ2Nsazd6SlArZzdi?=
 =?utf-8?B?Q0h5UW1XbUF0a2N2N3pnMnBwTlM5elRQaDZ3M09VdURaRTd2azBpcGJjaG5C?=
 =?utf-8?B?ODFJZ1ZrN09samV0VmpXekJxZ0tCcUNNbTB0eFlhaWczdkZ6VTNSUUtIYWR4?=
 =?utf-8?B?VXh3Z2FSaFBUR0wyZjF0TDZRUDhKcHVUU3V5QnlNWG1jTWw4WXk1aitFeTk2?=
 =?utf-8?B?dHdaMkQ1b0kySjNMbWV5eGFxMTk3NmlwL0RzMndXbDhXQkdyNnFydk1ISEl1?=
 =?utf-8?B?QzBmRitxQ28wK21wOVBZRzVZZ0VUaUpRUlBBUkVnSmROQnQ0MlZObFpRckVw?=
 =?utf-8?B?ZlcrRy84cHpUMWc0THI5dHd1dDl1cVdjRUJXNlZ5Z1pTQ3MzWGgybmFIdTRm?=
 =?utf-8?B?WkVxbkhSbVJrUlBJT2NHbXE0WUpTK0pYOFZTMSs4dkpBSTF6ekhaYUhqWnM0?=
 =?utf-8?B?TU1JRkx6bmFCaHlSV2xnYWZBa2FuU0tHK0FPZU13ODFXZEpJRE45TUk4S0VC?=
 =?utf-8?B?U0NtTVF4ZHJxcFlYbjJaS3dQUzNmeGx6NENoNC9nQnNHMi9LNXNKbVcvcm1s?=
 =?utf-8?B?M2RFL0VqSExOMnZPdzlzOWhDcnBVSlcyK1BMVXZXdVlLNUJtZ094MUpqUloy?=
 =?utf-8?B?d2lmMjFhZ2R3cUk4bmVmc0pabDEyRWpkNFRsWmlBWnN3QmpDMHZvN1pyaUNT?=
 =?utf-8?B?OFV2VTZvOGVna25ONTJhcnBXdHBNQS9UTjMzeVgyU1VLTHZvWWFKdEcvSjdC?=
 =?utf-8?B?WmtrZGNRdjNGZThRc0VlZGdnNU9qK3F5WWhoTXJnNzduaFNMNVA3ZWlNWFdR?=
 =?utf-8?B?dWVNZlFvdmMybms0NVVCRVZXelNxb00wNXNhZkREay83TlhVazRweUtRZXRm?=
 =?utf-8?B?clhnSkpVdlNqTnprRG1yKzZpWmVrRXZMc01mbFl3KzVNNTZDR09BU0ZVVzgz?=
 =?utf-8?B?dlZrYm1rNURLZzRQUjVjcVk2UXIxbFFHT1BjV01lM1IrdUxUR0ZBZEVja0dB?=
 =?utf-8?B?REdSUlJSTXJmT2VqRWU0UnZyNWk1Z1RJeTNjRXllTXF5aE1LeGdKYmg4Vy9Q?=
 =?utf-8?B?Ujgvd0tUZENQekowMDFIV3YwR0o2TlBRakppcjFYUVprb21oRTJ5MDR2Rzhj?=
 =?utf-8?B?K2hxWUtiVnJzdHA5RVJJMDdwanprbHhMdlBRbVR2QlFPdTFwNlc5ZXdGN3NK?=
 =?utf-8?B?Z1JFd1Y4cVU2ZHo2WGdhaFJCdlEzc2hkcjdUWXpnN3lNaHN2anFkOUxzZGJl?=
 =?utf-8?B?aS9Ob2tEUGd3RGRCMnRUSWpYWW9DY3dVQ1pHNTlxbVVvZHYxQk1IZlF6Y2pw?=
 =?utf-8?B?NFFGMmZKaENOZzUyT25jbmZKcDFKaXdOb3JwTnNMRU1oMGljelI0V0ZvU0U5?=
 =?utf-8?B?a3R5dk1YblhxQWtRYjVqSHcxVnVRVWNwRTY2MzdTMzVIYVM3NTlLdmdqQUhh?=
 =?utf-8?B?dUlCWGJWMFlwNm91ZkpwaENRTjFmOEJMcXN1OEk5aG9mU1VqamRaVUpaR2Fw?=
 =?utf-8?B?aWh0OGhQeUVVWXlBcGIwU3VvWVhWUmRKVk94c0t1UkVqRzZHTGZjQ1g2RFY2?=
 =?utf-8?B?YmNiSldYTHdCQmY3TzNOSUVSWStoRTFNcjFKV1dhTlFGQ3ppdnd2VGZ1Z1Qz?=
 =?utf-8?B?NGt6ZTc2d0RlS05RZ3d0ZzFkNHVXUjNna3RBbll4bS83RCtuUUNBSE5oOWQr?=
 =?utf-8?B?UFJNcy82MVl2anVzRG5mb0hZQ0ZmRDRZUFlPbG96dDdPKzd4Zk0vdzBINlQ4?=
 =?utf-8?B?ZXl6dWpyS3d5ZUk5Y2RYdUVUWWpyZjZsc1FrTTFKZjc0R05jYWtrMnJQQ0Vw?=
 =?utf-8?B?OGhtK3lvNmU3cEZSOFRCdHJ6SkhQbEZoZFVUaERZNUlIRTVkNWtTU3RlaVpR?=
 =?utf-8?B?K3dTZGpuVEZFazh3TGkzcEZDMjkySk9xNEI4cUxob3JON3YwS3BleWc3bml2?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ee711901-09f7-4100-17cc-08dd3c4ba475
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 07:49:33.7030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dbufFEubZWtWglVneyMv81OFD8Ig4F6IzxF45soB2NgwFEAbYRSq78K7CFPAFZhF6dPoBbCOypIAPtuWRVp59jg/vU5G68afUouKY4pEzD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6314
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737704984; x=1769240984;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o0aEsIrUYpKueFODw8IyFHszqx/uYxZ/+LRXaGOAHSs=;
 b=OafaY1HphmhME3I2NGzoH09Jvz2nqHp6f1ya3cHjce5RF1lWj5A+vHq+
 QiQch6bjRyucFdAQln/L7cOevhQ50hV6vIadDWEeA8iOLMRF+jJ20mB1Y
 HSnc0jm/mYhLGphSn0NwqQ3lQhGnJ626cpKa/bIPQkR0x9LpddIrHU9Q2
 kyUWbZyIKCzNLmLrVRr07ZRvrT25hc9RIZp2aNCmzuNHVvS2i8Il4rEfx
 1P5CHR2KtJGA5YufDH5J+i3c/WhlkjAHjWo2iswsJFx393XJRNGuZviN/
 mm652uwbfQkdHBzuwVqNfFMTXi4oUVr7QdxU0lKhL14qguBlBpQZhQrzA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OafaY1Hp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net 3/3] ice: stop storing XDP
 verdict within ice_rx_buf
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
Cc: netdev@vger.kernel.org, xudu@redhat.com, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, intel-wired-lan@lists.osuosl.org,
 jmaxwell@redhat.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/23/25 11:51, Maciej Fijalkowski wrote:
> On Thu, Jan 23, 2025 at 10:45:36AM +0000, Simon Horman wrote:
>> On Wed, Jan 22, 2025 at 04:10:46PM +0100, Maciej Fijalkowski wrote:
>>> Idea behind having ice_rx_buf::act was to simplify and speed up the Rx
>>> data path by walking through buffers that were representing cleaned HW
>>> Rx descriptors. Since it caused us a major headache recently and we
>>> rolled back to old approach that 'puts' Rx buffers right after running
>>> XDP prog/creating skb, this is useless now and should be removed.
>>>
>>> Get rid of ice_rx_buf::act and related logic. We still need to take care
>>> of a corner case where XDP program releases a particular fragment.
>>>
>>> Make ice_run_xdp() to return its result and use it within
>>> ice_put_rx_mbuf().
>>>
>>> Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>>> ---
>>>   drivers/net/ethernet/intel/ice/ice_txrx.c     | 61 +++++++++++--------
>>>   drivers/net/ethernet/intel/ice/ice_txrx.h     |  1 -
>>>   drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 43 -------------
>>>   3 files changed, 35 insertions(+), 70 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
>>
>> ...
>>
>>> @@ -1139,23 +1136,27 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
>>>    * returned by XDP program;
>>>    */
>>>   static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
>>> -			    u32 *xdp_xmit, u32 ntc)
>>> +			    u32 *xdp_xmit, u32 ntc, u32 verdict)
>>
>> Hi Marciej,
>>
>> Sorry, there is one more Kernel doc nit. As reported by the Kernel Test
>> Robot, verdict should be added to the Kernel doc for this function.
> 
> Yeah that is embarrassing. I have now included
> 
> ./scripts/kernel-doc -none $FILE
> 
> to my pre-upstreaming checks so that it won't be happening again...
> (or is there a way to run the kernel-doc against patch itself?)

I made a script that checks if there are any new kdoc issues on HEAD
vs branch provided:
https://github.com/pkitszel/small/blob/master/check-kdoc.sh


> 
>>
>> With that addressed feel free to add:
>>
>> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> Thanks! Will include them in v5.
> 
>>
>> ...

