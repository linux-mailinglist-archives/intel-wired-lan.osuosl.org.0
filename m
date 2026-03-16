Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBfPE8U2uGkDagEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 17:58:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A17529DBFC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 17:58:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC939812DF;
	Mon, 16 Mar 2026 16:58:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AYS4XzxSqyln; Mon, 16 Mar 2026 16:58:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DD1E812C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773680321;
	bh=9vzasmGQ4FQCA3N0khHDw5BkBfbgZdqA2jNfUga+p0g=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Neqfz614VcmNzzstN1Y649g5rsAVyp2va2p3ZFhoT3qQllSrUc39v7H65UmYlm8Zv
	 fndx7ADstRUeVmoAlQgalevEZxUwaZKoRrR510VrGLh8DneytRzwWU9nYwRgxd7gBd
	 H2b085dBeA03JQwtSMD8pNWC0vZoAGloW1Ka9i4XL/YNdQzPHtf2IExF95hs+9FDO+
	 15Bbdul01uhYJQpZn6U6cjzSLrrQMHPnyOL80uoqfh7Edq/KZgHntT5IizkvAUVPzs
	 UVQgndkGiI8wvV7KC8vQlEw0Yk0VNvIT6NZGoBF+AByiwA/vmPd8yZOx3kZUSvZUJq
	 cQq2Axu5/awSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DD1E812C7;
	Mon, 16 Mar 2026 16:58:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F7811B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 16:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0081F60773
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 16:58:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XwLgif3w23PO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 16:58:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4C74460766
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C74460766
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C74460766
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 16:58:37 +0000 (UTC)
X-CSE-ConnectionGUID: eR2HPGmlQU6uPyV28hwH5g==
X-CSE-MsgGUID: +yofJk+7RH+w3jB2Jn17oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="77311989"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="77311989"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 09:58:36 -0700
X-CSE-ConnectionGUID: vRD+J/gfQd+4ayEX5Ja+jQ==
X-CSE-MsgGUID: BXottG87Sc+/t+ztUWXxAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="226433612"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 09:58:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 09:58:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 09:58:36 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.65) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 09:58:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DyZgitaXpYklLh488/6gSp1b0VCu3s3JbLggEmq7O6PJNz099hzbgopgTizdfZ1u8LCUALTTbutmbZI2hjApLDRvZHJuyqsiYMiM6EOlvI7XGBKsWerBtVWj+KqDUiUmP1S1aU01pzF2rbwViEYtUKnRdb4tInQSbzrXMyGgygx0rETVKR97HXDn8fKI8zT2wmwW5YoXZfeEMD6hHDWYZunf/0dvSr2Ee8P7hoeYZ/vBbh+eadlRqnkOZTZUpWtYNkyVFejAiWudsRp2RGPzrrSeN7tJ5NjXIQu7toNOrrdoPr2H4Ywsdq7QtXj3sqd1IVehyjwAnyUURSR2ua/HeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9vzasmGQ4FQCA3N0khHDw5BkBfbgZdqA2jNfUga+p0g=;
 b=Yu2O1Tr3IxxRSlsnzT0BH7aeo1ZZn4+ULKTNOxz6hZYRelLYARv4Ek/WDsgRO2mqiDgMjO97+QZJt4mxrQ+whOvk+j0itddj1+4++6unl/n4ClliX1DSmbz+qbwHL9ibcRdSo6bEerWOp/p/J5mUhpdr5tgTJPomez81ZboWyAQT6oySL4EsXfujBk7kdNScSPswqqKvx9f83hloUqm2yQZJuj4OITc+ZXUQIayr5d4DMjaRFk0gYpiv6egybsNVGPtA7UUVsCy1RZdyW/INms1+wzelPn4ngsYA4p+No+JcoW58nO3gx3tM4Z+B4m85pYXQ3Xgy0M4zzWM6nOf2QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by DM3PPF341F90799.namprd11.prod.outlook.com (2603:10b6:f:fc00::f19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.10; Mon, 16 Mar
 2026 16:58:32 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 16:58:32 +0000
Message-ID: <878cd07a-b7fb-491a-9cec-8ddbab2bb13b@intel.com>
Date: Mon, 16 Mar 2026 09:58:29 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S .
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>
References: <20260313150917.271086-1-marco.crivellari@suse.com>
 <0ca7f92b-ec4e-469c-ad2b-648d278bcfe9@intel.com>
 <20260314091048.235a6d0b@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260314091048.235a6d0b@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P220CA0004.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::9) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|DM3PPF341F90799:EE_
X-MS-Office365-Filtering-Correlation-Id: fd50bf98-6ac5-48ed-d682-08de837d414d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: Vb401KQmH1+iFRzoWJm+qX9jwk920stHKpNwUe8lr1pLMCvE10yv5wZDU65pMtcG+RfCm7RUcFhZM4HpSSOnXIt2aMSuwX69/yIP6H01BApCZe8K0lBYA+f+gv5HLV1PdqR1nrLhRhHLjBMlInIfo4AG89ClOpbdl+phyG9Vi/o09ljFXWipT63ZBTIsGK6uTpnyhgi8vfIXfgsKB2ekzl8pzztgOBovI1J/jFFU9hlVltKXVnn6mDBcJKuYbXuqJtcy4E9aOR7Jt9Ok1QxyM/yzlEk7IcVd7WQPNQGnW5KFDTtiWJaBTzWhnBlCDj3LwLHXGfIrzpQBPliyrJ+OjjS1Mf4jJQlypD/Px9mLknaIq66xXYJt2Yl9A7elwSknYfqmGbE5Cw1Hu6knmNS2bXcS4LN+b1Jqc8sIEPb60pbnVHAQMqRez/4/lVZAEnDXPkC3wMwY6bHeFBQ09bXluVox243FdQ3Hc9ukxDu+yRn0YX5sdtBjsQbSn6Yrm4Z+maYHULPlNPo5Xr/kOvFJjMEM9sdD4JGVoem9TNAd2Zj/5sGrKhZxSEUf6oocP2qXyy6AIt5/vEnP30Tc5vfnu7YpY2qAjDmLdK1BRMMY/kmSXH7hvuXvFgGiYxsxZr78TGiCHS1bcN6hG75SjYRuuomauUTRupNCECjssAnUVFZsIErR4+temO0gLA71d+/Pn8zRE2NtkNXcbp039OhcKBASWtuqbwjLjLjdyBm9pp0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXQxTThYQmtQUmdCcG83U21CM3F2NzZOYmlYYXdqWU10cmpvejltaEFScWli?=
 =?utf-8?B?RGRQcjlsWFNqZ1Zidy9LeE5Qek5CWGQ0YjhWV3BlV05mVTZrQUU2UjkwVmRG?=
 =?utf-8?B?U2Z0YVFiYWl6VFUwcjA0T1haNFU5TUN3aUlkd3ROU08zak8zanlMZU5RQlVN?=
 =?utf-8?B?YWNDdFcvYkJMeXlaNkFtbnNGZmZ4WlU5V29kWjBWcXhVOFpNQTJISGRVWDFE?=
 =?utf-8?B?MnJqaGxVY3ZQakIrSDdUbFg5RlpFZ0xVRnRNOVVNalhLNHo2NjYvWndyM1FF?=
 =?utf-8?B?SGZlY2hhVGxXa0VRZ2c1M016RkROMzNHYngxMlk0Rm1CMU5MUTZSa3hVNHo5?=
 =?utf-8?B?RWUwVWxzTHRjS2NjK0s3dk5zZ2NOVE8vR2N5cmE0QU5ocWxpOGJPL3JSeklQ?=
 =?utf-8?B?d3ZRSFdMNG9yODRWWTFrMDhqb2dsVVNLeGFzU01RczdQL0VvcUlmaUZGMzYr?=
 =?utf-8?B?T2lwTDJlendkcTI5RFdpaDMxaUZicTFzbHdGM0Y3Zitya25Dbjd3VTJBSEhj?=
 =?utf-8?B?KytHTnZGdFRYWVA1VG9hZWVTSEc3NmtBSjFqZVM2aXVZNlptM0pJMWJYYjd3?=
 =?utf-8?B?V0kySXFoWERhWU90N0plREF4ZmxQMXd2azdWM09Pd3dBenNIWGp2MTBaQjZX?=
 =?utf-8?B?N2Z5Mml0ZGpNNGFwaXYybGFNSnR2ZzREdVAwTEN3Mnp5emFncmNndkMzWGx0?=
 =?utf-8?B?dGpKNnBBOFZmdlJjcGtSTUVvQ0gweVd5SW45RE1BUllpSGIrdDNwakxkWUY3?=
 =?utf-8?B?dUFJNTUxVnBqRlYzMDYxQmlNYkhqaXhXQWp3YXQzeWM3TnovMXVNMklNdjJv?=
 =?utf-8?B?VUV3cXFocXF3WllndzVINmdCTzg4UlRNcFkyYnNPUnNyRXRqSHVYWE1IT1Fh?=
 =?utf-8?B?MTNjalpWRUJTSVorSFZYcXh4SHVkMDkwNzgyQW5EYVFGVGw4QW5lNXdZVDZw?=
 =?utf-8?B?ajBURDJXd3luUXkyQXB0ME5VTFBYaTA3aVZSQmZnK3dCWHE0eEJkWXpmVS9w?=
 =?utf-8?B?YndVVTMxeVhHMFRPV2ZpSWtzRXRhV05HRXR3enhKaGlFNmJSWHhaa2tuY0p1?=
 =?utf-8?B?UmlEWFJaNjRyQjhIWjFFUmtCVG5xVEhyeEdTVU54MmREeHlpakR6Mm40VFNT?=
 =?utf-8?B?MVRycU5WNFNXZ3JXVkI4R0hUSVFPRCtzY3FpY0huaVU0Q0tuaERMUHVRdytT?=
 =?utf-8?B?RXVWSkZhYXhTVHdobCtQZW1FTEV5Y2c3anVhaTBVcWdiamY5TENaUzA0UzNI?=
 =?utf-8?B?QXRRTW5QY1l6bW5oQ1BKOUVMOU9ZdHpVUGpLMmUyczcvc05uVjIzb2Z2TEg3?=
 =?utf-8?B?VlNoN0I3dFZ1UVJjWHlydkUyU0kzRytoZlZtYVl0c3RSZGNDWlBKZitEZ2tn?=
 =?utf-8?B?NnJTL00vRm5ReGRsQ0RIQ1NkbS8vcEl6U1BHMFg5UG1LZUl3c2JaeTNWOTFI?=
 =?utf-8?B?eUNLTy8rR00zTm1odE9GUkJVUER2Y3NNZWNtMzZaMTcxTERhYmQ5YjRLM0kz?=
 =?utf-8?B?R0RzR0hZeFpPWVVheWtEVXcvYkRielpGVldSOXh1K0VqTERKb1k4azJpQ1B1?=
 =?utf-8?B?dWRJRGh3WHdWQmxRdk9wZlJvdHBTWlJJNUU0YkRXSEx0VGhkU3h0VUVFbkhT?=
 =?utf-8?B?Y2tsc2dvNmlqMjZuclFLZ2pnTkF4ay9KbVlnWk1tYnpLWm9xUERsWHdLQVhk?=
 =?utf-8?B?VVpLREVVK3d3UHZSZmVrUStiMFJXSW5QQU8xbHlvcEpMVjZrN3MwZitwRkRh?=
 =?utf-8?B?NERPUmNGODdvRHNSM2VsSFYyZSt3Q1lWSkdRNGtQS01rNHhkTlcvajI5dTlo?=
 =?utf-8?B?YVpjQVV0elBrQk5WK2g5U1M4NGUxQ1l4MVdnN1lOei9VbjZ3TUNFV1F3SDUx?=
 =?utf-8?B?blZCQk5mM0lJa1lOOXFQR21iSW1nUmJld0JLS29GenMzOFl6dXE5NitIRFhP?=
 =?utf-8?B?aXdyMGtWVnpPbDdUcDR2TGxWWHdBSEdaSHFwTlNzUXdteXVHYXR1SVhVMXor?=
 =?utf-8?B?YU5rUzhNSHFkSnlBUGF3Y2VoTGxqZ3VQbThnMGFzckFNaWZiUXpncGl6Y3hG?=
 =?utf-8?B?TWhjeWtFNzBQMFYvbHF0UGhIblVkTWdEczNXZG5nc254WlliSjJpckpxenVJ?=
 =?utf-8?B?MEVQK3V3emdLemZaUndnVjE2YTZndmZhRFU4YUFxSld3eHBMVEJZaGlSS1Mr?=
 =?utf-8?B?OXRQNS9FQ1hrK2JVVUV5cUp4TFIxbzR4ZUpwUG8rWUdZcDVOZ0xJQll4YVRJ?=
 =?utf-8?B?S2VKVm5tcFV4Zkc3S3dpUmtRKzlwVWtYalJtRDFHU0FzS3hleUtjalFtZkNz?=
 =?utf-8?B?cHJEK3hoTVhQQVE1RTF0Vk81M0FzS0lVL3NWMWNMOWZGTW5LdEZBY0oxTDFG?=
 =?utf-8?Q?Roa6GUtK6/sxvTnY=3D?=
X-Exchange-RoutingPolicyChecked: AjSptmYKtbZRQNYGg4eJiYc47iy1hXJ1myS1QHwK0sHuzZbDzYJgAFRGm198Poh7JWLX/mQpmM7ScOFEIlDvkeWmA5IApfqXldMyMxAJkyO5FS9WMUg/wskrW0cSjJM1s7J9shKhh4GKOUVc+4VUyMDHUOUbdyxFGn+BuksS/SmDqdWuyw3QZqVd30ojU0pIJ5pzV3rejfGwbgGv9rFM02/J+v8f/DVlUqUkGk8Jdwi7X6gsyoQU9tEoWMkox7w12BgPhK162YyW9OwNvLz25ba5x2UuPkM5IfwiTR37kSCiea2G7H7MlK+YQj5v1TDvkmjG/N8u8vOesu88kl3u7g==
X-MS-Exchange-CrossTenant-Network-Message-Id: fd50bf98-6ac5-48ed-d682-08de837d414d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 16:58:32.5257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j+gr6osRSvnCnpkpTkiyhRw+nvUGtGkWir1/NtOQGVG2t65PtSoWyvTBiSe8xGYuBo+1SOKs6PlJIAMnwSkm+GvHsLuLbRygVGEKs8w+XIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF341F90799
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773680318; x=1805216318;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wqyuVObRZ0bTljOJnh6Daar52+KYHF/6gE2TToYAMRo=;
 b=C2I9G5KcmDC2p0ZV+xruz0L0eUMTKQ7Zv9QeGRY52MxhHEy9kgnXFRbP
 tlt3oPP6ol2GQIUcGJg2YwT97pK8Jgkd5TOTpDpxJN0h6wHSqzv6DwDLR
 /AINpL4ZafVk+TVbg6gxgzY5rR+tGnCO4eoN5JHuSFMORVJp0KiBhUSXJ
 Va3J7xFiS7wa66XdrnqfZDZoLlUSmJ498H9UyvuG+8dKo71A8t1MywCmp
 4QqWG6j6Tn8po7JfAiu+0RquRytHexK2R1i+tC07P9Dyao6Kog3ClIwBG
 q4TPQZMav7Ecr/0Pp3OC021PJ2ozgeQqjGI24yFQbIFUPLnTNSgC1yHWl
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C2I9G5Kc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] idpf: Replace use of
 system_unbound_wq with system_dfl_wq
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 4A17529DBFC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/14/2026 9:10 AM, Jakub Kicinski wrote:
> On Fri, 13 Mar 2026 17:08:57 +0100 Przemek Kitszel wrote:
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Process question - even tho you are also a maintainer I only read
> Tony's tags as "please apply directly". LMK if that's right, I'll
> try to remember / make a note..

I talked to Przemek about this a little this morning. Since the 
Reviewed-by tag is used more prevalently in our process, perhaps an 
Acked-by could mean take this directly and the Reviewed-by keeps the 
same process of going through IWL. Other thought would be to explicitly 
ask/state for it to get taken directly. Open to other ideas as well if 
there's something else you'd prefer.

Thanks,
Tony
