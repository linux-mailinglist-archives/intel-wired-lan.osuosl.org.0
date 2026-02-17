Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOumEXCwlGkPGgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 19:16:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 102C114EF9D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 19:16:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1B8E61630;
	Tue, 17 Feb 2026 18:16:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I01MTUB1gpXJ; Tue, 17 Feb 2026 18:16:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D58B61631
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771352171;
	bh=ZORgvUXRmM7hcoXAjDOpczWqimHZS0kfulxh9r3npIc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7oN3fDJ5QwQOoAdkrRpUMle+FBvOBBp5OExsvUgo/huyYK38Wyzo1sgr4gTC73nA1
	 VuNCiXyrNSkNlmifIOpG9weU6nDkw52/c/tI9T5PNxPpEpOiomcjFqBE/FrDJTbqZO
	 rlHtGuh5H5igJ6K+9fzlRlgMBrmU0CL0hz3tlq8EbxdFY49uXKWJwSvhGCkiO4OSuR
	 HI9eCrWuQ6mml7lDuDvKhW1suM7Ut/xtF9tUB8BRiPBUMdpkWO9cAPL89IyrL6LI9T
	 f2Djxjc4bMw+GIaWxW0BkYuycLchTtqGWp4Hk2lGKxeOEaocDH0CEAWboxjMlTvhLV
	 leeCjDpqBgdWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D58B61631;
	Tue, 17 Feb 2026 18:16:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CB6A4206
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 18:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC9B56162F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 18:16:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3AN4zuYDAbkI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 18:16:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 09FC26162E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09FC26162E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 09FC26162E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 18:16:08 +0000 (UTC)
X-CSE-ConnectionGUID: X+Q0Ax8HTqKNGnAwjCNLEA==
X-CSE-MsgGUID: GnKSg5ILQfK3ZkeeOTWttQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="72520383"
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="72520383"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 10:16:08 -0800
X-CSE-ConnectionGUID: wb1Q+IHbQO+KysMSHgYuuw==
X-CSE-MsgGUID: RFV522UfSpy+YXyR8seS9g==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 10:16:08 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 10:16:08 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 17 Feb 2026 10:16:08 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 10:16:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JI3WkrpKS+pVNkDQiG2x7Hj/zM4M06vwW5uewqAdA3lZsml4Li2pb4LqxDqlKIH6hs6ymKS9SKo8cWZG3BNpXICT9/4lqSd+7X/h5PObUa3XM8XCiNpEtxxFvctL+HdcXSt4VsgR5tb2A3WMGZnV3AJdjTUOlmOc2B4fFm3fzOKIG8SvDDOU40g9rziaNakq1cPNzUzkhBsaFWNA8GFLeZJreOChe2NXJFrLJ0l7hOfYtRaPaW50wNYhjWxVvMrcFXacoTNdWs1EF2VwH8jZVofQEM3yhmLrtG6CsIuyv1LqZWXRE2b0RN9hBgoA6ZjWITFBNeKhq2Bfj2Dl7TxLlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZORgvUXRmM7hcoXAjDOpczWqimHZS0kfulxh9r3npIc=;
 b=mZzoOaOfLhDSHlk9ABi0r74nHtQWPwiPA2oCsWESeHXNrarAzK9EckdXL5qN+eAFDy9O34fli6bPwMKOO5Vi0IFJ73/74PTSvLbXbvsDzLMyDttGmxZVNdH2VkECfYbO8pdV2Y88n/vgx8uW0lOG9GaH/KmFbIHbp04yRWkXwOCMHwljrBtpdxJuSePMG2P0Vk6U4cLq/n8FNMt1MCCKjRwTy1kz33s47v4B8JJJg/dacrYfbu38waRWRNuwOXuVlVtWpClCSJc2fvM86KXk8WPgqmkLI18SaKnhCm1FH42FpYhhFgdXTOu9SMB8MAMxAU8Wg97dXdWVN+o6P57aDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by DM3PPFBADCE1465.namprd11.prod.outlook.com (2603:10b6:f:fc00::f48) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 18:16:06 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9632.010; Tue, 17 Feb 2026
 18:16:05 +0000
Message-ID: <3f6918da-0fcd-4a87-bca2-adbd1d88100b@intel.com>
Date: Tue, 17 Feb 2026 10:16:02 -0800
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <it+intel-wired-lan@molgen.mpg.de>
References: <d30060f0-e7aa-4d3e-8e7d-98e7ca176f9c@molgen.mpg.de>
 <b235e4e1-3a1c-4b09-bf4f-bd23d308e3e7@molgen.mpg.de>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <b235e4e1-3a1c-4b09-bf4f-bd23d308e3e7@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0355.namprd04.prod.outlook.com
 (2603:10b6:303:8a::30) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|DM3PPFBADCE1465:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d479c84-3b3d-42bb-ac04-08de6e509d71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXJtaDl1M0Y3ZEtmMWl1d2llRnVlMGdZVzRXcHhUUXBLMHUzOGhwYjlJQ2NQ?=
 =?utf-8?B?eXNJaWlDOTJDNXdOUjBpS3RvVTRzNzNGTi9mREtkdHVibSs4MklTSDg1MjV3?=
 =?utf-8?B?OGovMDhZeGw4S0luc1F2ODRPOEd2UVRGelFjemJhQVhINzZveUZkdlhySWNt?=
 =?utf-8?B?V3JCSEZ2SVNtYU9PaHdTTU5jWnp4VnlJYW81M3ExVXMyd1Zuck4xSVpVN2M3?=
 =?utf-8?B?L3p1YXV5UHRKVTZNZmNsam9xL28zVWlJbUdyL2tmWDBPdkNncXQ4L0ovZTRD?=
 =?utf-8?B?dDlrNXFLT3hVVUxKT3BselNxamRzbDBSV014OUlKN2ppK0tuaDFENzEybms2?=
 =?utf-8?B?YUlKYlZvZVBmT0M3aWYyVEZXNjY4VlBoVFN0VUt6enovd2RwTDdLdzluL202?=
 =?utf-8?B?Ny95cjZYc3AzaWFNRGhlWEF4d1FvQlB5YzFmdG1BOVVNTWVOMFRJNURmS2tW?=
 =?utf-8?B?eWd6QXpUc1oxRmorTWV5VzBtTzdKdjE3bnZVME1OSGVnL1JpWUJVaUVsVXhE?=
 =?utf-8?B?SFExMnN4QWZQeGxvc3plWFZ3NlRRMzNsUW9Db2tMV0Z3RzU4NFdmZnhVQjZQ?=
 =?utf-8?B?ZE8rVldmMlNnbGxYN3orcEpCT1pjQXRFYjJ3OENuR3RoZmlHaGdOdFIyb0RH?=
 =?utf-8?B?K1lUcE9SblV0emkvTHJpcWNXbmJlWXFFVlFBWC9jVE9vc2tKWGZzT3BGTzFI?=
 =?utf-8?B?Z0orbHU4TkRqeGRvOWExNitRY09pby9XeHd3VHhpRDJKR3lYb3JiRHJ3RDJQ?=
 =?utf-8?B?ZUhld0U5TWdlYWZzT2NCSDJta2JuV05UTkVoZmR3WHNwNnMwWTFYbDVzUjVz?=
 =?utf-8?B?SHBqc3pzUWpkVnpKWU5qRDN6eEU5MTg5Qk1FR1BvUmdJVEdXcDVxOWgrQjdk?=
 =?utf-8?B?WkxqOCthU2I2dzJCcm1udnhlZmpoQ0NZaTdDck9BdmVTRXphVU1vT3hvbEoz?=
 =?utf-8?B?NnA3Rng5Ymk5ZEhQVU5mZUhBZVdGUWMwbjFQbE5jcmphY1RqV3U2WThjNmNU?=
 =?utf-8?B?bC9NZlNpZ2hPenFXWmFxZnZVUE53RjB1NlNRTjVyN1J0ZmpiWU0zNFNuV0Q1?=
 =?utf-8?B?M1ZYQWZBNFhTVXVVWXk0cWFYNzdMeEhleDUzVXVDYkZkbjhkR3YwcTdNQlp6?=
 =?utf-8?B?Qm5hSXJlRVVEQzJwcE5lVnlGSFI5TXNNQ0phRGZqaDBhTDB4YVd4Umw0QXI2?=
 =?utf-8?B?dWp3aXVMemh2dmVmbE96SzVUN1JleFFVZklXZHUyS1dHV1FnVDc0WFF4L3By?=
 =?utf-8?B?TVYzdEltc1ZZcENzeE1tNTFNV2ZjaStwWTBnQndLOFNvMkxkTWxBODM4Y1U3?=
 =?utf-8?B?bC9WR3lyeWk0ZTVhZUNTdWpMRS9FYXBOQmlZazlPdXlQSDBDZ1BFVnVEZUlu?=
 =?utf-8?B?NGtaUXpURFJ4TVQzMHMwam5sQ0NaT2pTNlVCTVdETTQ1a3o3d0d2Rm1RRzg5?=
 =?utf-8?B?a2wyS0NzUm5MUUorOSt6L2I4K2YyOWMvaTlUU2NRUTVOeFJ2d21mdW9JcU1q?=
 =?utf-8?B?NXZoQldmbVA2TDJsZ0xRZGJWZHp5bDkzV01JbjF3YVBBdHpQYTgycTBad1l1?=
 =?utf-8?B?b1lJZnpNRjV6VWhWc09QR1JjV20xa2U0ZURVY1dlL1hBOUNNekZZcVFlZDNW?=
 =?utf-8?B?TzhzQzduam0wSmVLUUt1VWhVM1VZdUN2d3VMNnJWbEc3S0E5Rkd5T1JXZmZE?=
 =?utf-8?B?akRPQ2tIWlIyYlJ1MzU0Z1RGdThpQmFmajVTeDJBM0JpZ3l4NTg2YWxlRzRB?=
 =?utf-8?B?VWhCcWxScDQwdnJ0U1oxQ3M4RTUxbmpZa0FqbmU5eDM5azljMUVMTk1wQnFo?=
 =?utf-8?B?ZWR4ZGhrVXVldC85c3pKdUZJR2lHbVlyZW1OUjVIZ0dQMGlPc1lLYjUxODZW?=
 =?utf-8?B?dkFISHB3QlM2THVUN3RtazNqR0hIL1ZxMHJpZlY0N2s5Sm9iOHRVTStSZVVY?=
 =?utf-8?B?TW1wZHNPTkx0RGUvY2hmbmQ1TVQ4QUVkRWJiTW9iZHNOaVIrT29GWmlBeThV?=
 =?utf-8?B?RGg4cXhSdStJS05qWldEckM1bUJPZmpaYUFoK29Yd29GelBGdDlKdVZmbGpm?=
 =?utf-8?B?dk1ZdU00Y3cyRTFLdVo1bnprTE90UTJINzJxTk12UjZ2WXJpclR6cmtDaDhO?=
 =?utf-8?Q?UNDY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1hUaVh5dUVlbXZHWkdZQitEUmxlaDdiOHg0SjdiYVF4OVNhKysvajBFaUpB?=
 =?utf-8?B?WlRHK0NsUm5YM2hpQkxIZ0Jqd0R4KzdsamJXVHFVWGNkdjBTUHJHRUlKeG1Z?=
 =?utf-8?B?QmJ6eUJOb3RESTJtYU9qN1ZvUm5JcHF2VUx4OXB2Z0dVZURZYVhnZ2M5RWtQ?=
 =?utf-8?B?cW5UTGVySm5PQjdmbmhLTUM0ZVFacXJLcFZwTW82dGp5OXJDUDc3RFVmMVlD?=
 =?utf-8?B?QmFBVElKSTdJczBURGl4SFh0bFk4cisvVDk3N3o3d1ZsSkhiQlpxa2wyK3F2?=
 =?utf-8?B?eWwwVVA1dmRtcFd0SU5uM1BOVUlpT2ZRK3U5YnBrT2NZd3pFTENHaElHR2ly?=
 =?utf-8?B?bzlUTy9qSVJLMzZoTGl4eHU5cnptcm13UG1NcGFGVnBvaUV1Y0lKeWFDaGFv?=
 =?utf-8?B?VW1vRTE4aUxMMWd3TWxuaEpHZVBWdklmZ1RyTkFLMGdiQnFYaEwvaVVydVZl?=
 =?utf-8?B?clc4NUFpbEcwVmMxVStraHZNUUtMQ2NZM3dvMVNDcS9ONDZ5SHladDdwUTNK?=
 =?utf-8?B?ekU1RkVmeUoxclZock5wSXRvRWk1T2tid21KaHo3UE1VWldya1RjRmNoQWx0?=
 =?utf-8?B?MjgxUFZ0T2tHUyt1OWZxa0drSi83RDQ5bWlhOVlISURVWjRSajJwdnJMTmRF?=
 =?utf-8?B?TCt6Wmp4TklObVZhbEZsR2lmNGNaZ01WNms1TGVxVVNXRy9WNzdJd2NiQjlV?=
 =?utf-8?B?VVVtc1JEZ0FXWUVrUmhzbURZNTgvS0tOUUJrWVRYMmpVeW5VUXZydkJ3RGNu?=
 =?utf-8?B?azR2S3FlTWYyOGxFS3RHTGxKTzVpcVB0Q0dYRmd1UU1MSW9tenRBQWlRaXFY?=
 =?utf-8?B?S29sOTBlVHJBbzgzSXRMTkpzK3JjbmRoS0Q5SnJJOEtVek8zWTZSL1F6Z01E?=
 =?utf-8?B?UmR2UW91UHlmdXBhYTZxLzJEV25PRzlnZmJCOURzMjBvYWZzNlgvREh1R1dN?=
 =?utf-8?B?M1gwK3RzeVBWOVU0akMzYUJEYUtZZXJVTzE1dUZES1R2b01UZFFHY3QySXpX?=
 =?utf-8?B?MjRNcjFrZnlabGNDc1ZqajJZUDBQL3lVcVZOZ1g1RytEeUthRWpMNDRwYnpL?=
 =?utf-8?B?cDVFcnpKYzRtWTNBa1NwTG1aZktPM3hrczRLeTBEYWFoWEovY3h1OE9WUXBG?=
 =?utf-8?B?Q1hnOE9hV3pySDl2MHFDTVdxc1NXVG5KeDlsMitTQWh6emNCc3JtOEErQ0Y3?=
 =?utf-8?B?Um11TS8rUytKeTBjR05OamFnYXlqNHlWRDRKVkJoakYrRVVRa0VlTmxWYXJl?=
 =?utf-8?B?bmEzTm9ZTjdDekN3MlJhT0tHZDdreGZsRTRVaTRaa1ZBdG1kNWlLTktjaXNv?=
 =?utf-8?B?c01HVE9pRXpRckIxeXVBWVV0c0JDVjhDR1IrSWpXaktjVkE3NzVHakZSN2gv?=
 =?utf-8?B?UEJOZjg0QzVQbGRyR1YrelVLOUg1MmJoRkxaQ2VGYzBlY2lMei9aN0ExRjdw?=
 =?utf-8?B?QmZoeS8xRFI1UFcwK0V1Vy9yTWdMZlFndVdwYkFoUy94TngxRVpVRzF5WUdk?=
 =?utf-8?B?UU5nMGlLQlZrckk2d25nVC8wUGduNXdJT01LMjREdTBlcDY4cm9pTVVacDBz?=
 =?utf-8?B?c1lkTWNkQThGeGl4QlNBQlloblV2OTZpZEVva2gyZ1AzVjRIL090T21YenE2?=
 =?utf-8?B?Z2krdDNPdzlCT2xIc0JvVmUvRWpwdGVoYWJMcHlVV2RhVjQ0cnZJeWNKSHpW?=
 =?utf-8?B?Zy9lUC9rdEZBMTJ2RStnYWYza0JkUmIyUitTd052bWRxUzZheTNLbHlEMTZX?=
 =?utf-8?B?YlkzandlWldQeDF3RUFrWmh0K2VlZTdhVmliRi9uWHVpd2xjTGFUUlY3eDhQ?=
 =?utf-8?B?YUFCbFkyTkR6Uys0R0w0a2hIUVVQRjVXNjFxWlgzbDFoY202czFxK09VOFJS?=
 =?utf-8?B?NUtVMjNmR3lJVkt5bUdpRVY5c2JTZEVnZ203cGhXZEhvVXc5a09FeE54S0U4?=
 =?utf-8?B?VExQK0R1L1pJV3JXa1A0NXBHekMvMng3MnZUWDc0UGEvdldOSFFUeWdNR2tQ?=
 =?utf-8?B?aGJRSGVCMU45L1ZLUEFGSUZ2MkxjOERYNmd1a2lFcE1kdStDTXlPWW8vTEIw?=
 =?utf-8?B?S2cwTk9YQnpZRFFLUDBQeGRwYm5VUHhGY2ozSHlCd2RvMkdROHE4RjZJT2ly?=
 =?utf-8?B?OTIrRXd0VXlqUlFITkEyZytQVWVnbXJodHRLTkZxeFpoMVFHU0hRdFdGcFdx?=
 =?utf-8?B?OXhwenNVcE5BNk9UdFQzNHJpcldzY2VaWnBkWVJSMllEZVptYWZVdzQ5TkpG?=
 =?utf-8?B?S2w1Ym1hczREOFRJbHhOVHJpL1lJelFmVlE2VmxsUlhkZjFUVUJ0Qk85eUhQ?=
 =?utf-8?B?SGlZTkpxN3lqdEpZS2o2UzM1d0VzYzhoQzlLSG9xR1R4ajJqZFdDNWxpWWVo?=
 =?utf-8?Q?Z7qNUROp2W+IdrzY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d479c84-3b3d-42bb-ac04-08de6e509d71
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 18:16:05.3281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WAVH9ZIeRIPMnpOMzmptXcZpyPop34p9/BIuMUG4vkOqD4hGY6sWlGJkMavZoF6CKH5UE4gtbfhALfEjt6n6VKYx4VLIvHGpXbkAtO4px0o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFBADCE1465
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771352169; x=1802888169;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BrqTzX3lNVij0R4dgClCIaRnYnCbppLUP8NBdKjdLVE=;
 b=kmiYt1CBaT7JQLfPsHhavsSVV408zSNPi4ht3ChgVmEtMMWGOkzNNmtm
 o+05SZA3uRv+FLpH9YYO8jG0Gtt/J4PhWbcA6dF2oJEUd1llRiZjQvmgX
 gzYk4CydjQfOuQwk5Fl6OzE8LRZZIHwg1wy3B6avDYz2xtfnoVFIFj5ml
 XUk9Avs3dGXqkWCVa74Rg8ND+4OYcZuP5NON+Jz0ALGdheH5Df5SV/wfR
 Ap8C3rEJ/VrLkEk3nIH6Sbi6cT6uAM7C+r37MLX4cLnAm3uD0du4gfvPz
 CIjA32095Nob+Kun19c7yBBMTWVvHUOVlVr48bnZEnlMflE1iFu9Xf4ne
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kmiYt1CB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ice: E810-XXV: Dell GBIC S28-10G-25G-SR-85C
 does not work
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:it+intel-wired-lan@molgen.mpg.de,m:it@molgen.mpg.de,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid]
X-Rspamd-Queue-Id: 102C114EF9D
X-Rspamd-Action: no action



On 2/17/2026 9:15 AM, Paul Menzel wrote:

Hi Paul,

I spoke to one of our link people about this.


> It works with Broadcom network controller BCM57414:
> 
>      $ lspci -nn -s c4:00
>      c4:00.0 Ethernet controller [0200]: Broadcom Inc. and subsidiaries 
> BCM57414 NetXtreme-E 10Gb/25Gb RDMA Ethernet Controller [14e4:16d7] (rev 
> 01)
>      c4:00.1 Ethernet controller [0200]: Broadcom Inc. and subsidiaries 
> BCM57414 NetXtreme-E 10Gb/25Gb RDMA Ethernet Controller [14e4:16d7] (rev 
> 01)
> 
> The difference seems to be that the Broadcom device supports auto- 
> negotiation, and the Intel device does not:

Strictly speaking, optical links do not provide auto-negotiation.

> 
> Intel E810-XXV:
> 
>      Supported ports: [ FIBRE ]
>      Supported link modes:   1000baseT/Full
>                              10000baseT/Full
>                              25000baseCR/Full
>                              25000baseSR/Full
>                              1000baseX/Full
>                              10000baseCR/Full
>                              10000baseSR/Full
>                              10000baseLR/Full
>      Supported pause frame use: Symmetric
>      Supports auto-negotiation: No
>      Supported FEC modes: None
>      Advertised link modes:  25000baseSR/Full

The important part is here 10G is not an advertised link mode...

>      Advertised pause frame use: No
>      Advertised auto-negotiation: No
>      Advertised FEC modes: None
>      Speed: Unknown!
>      Duplex: Unknown! (255)
>      Auto-negotiation: off
>      Port: FIBRE
>      PHYAD: 0
>      Transceiver: internal
>      Supports Wake-on: d
>      Wake-on: d
>          Current message level: 0x00000007 (7)
>                                 drv probe link
>      Link detected: no
> 
> Broadcom BCM57414 NetXtreme-E:
> 
>      Supported ports: [ FIBRE ]
>      Supported link modes:   25000baseSR/Full
>                              10000baseSR/Full
>      Supported pause frame use: Symmetric Receive-only
>      Supports auto-negotiation: Yes
>      Supported FEC modes: RS     BASER
>      Advertised link modes:  25000baseSR/Full
>                              10000baseSR/Full

... where it is here.

>      Advertised pause frame use: No
>      Advertised auto-negotiation: Yes
>      Advertised FEC modes: Not reported
>      Speed: Unknown!
>      Duplex: Unknown! (255)
>      Auto-negotiation: on
>      Port: FIBRE
>      PHYAD: 1
>      Transceiver: internal
>      Supports Wake-on: g
>      Wake-on: d
>          Current message level: 0x00002081 (8321)
>                                 drv tx_err hw
>      Link detected: no
> 
> 
> Kind regards,
> 
> Paul
> 
> 
>> PS:
>>
>> ```
>> $ ip link show net04
>> 7: net04: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq 
>> switchid b48351ffff278d44 state DOWN mode DEFAULT group default qlen 1000
>>      link/ether b4:83:51:27:8d:44 brd ff:ff:ff:ff:ff:ff
>>      alias eth4
>> $ sudo ethtool -m net04
>>      Identifier                                : 0x03 (SFP)
>>      Extended identifier                       : 0x04 (GBIC/SFP 
>> defined by 2-wire interface ID)
>>      Connector                                 : 0x07 (LC)
>>      Transceiver codes                         : 0x00 0x00 0x00 0x00 
>> 0x00 0x00 0x00 0x00 0x02

0x10 would be here for advertised 10G support. It is not, which is why 
it's not being advertised. He mentioned it's very common for dual rates 
to claim it on paper but not advertise it properly.

Could you provide the output for 'ethool -m <INT> hex on'?

Thanks,
Tony

