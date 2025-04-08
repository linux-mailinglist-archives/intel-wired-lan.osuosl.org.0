Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 971BBA817AC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 23:32:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D1E241270;
	Tue,  8 Apr 2025 21:32:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s6n6ysKvJg-G; Tue,  8 Apr 2025 21:32:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD40A4126D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744147946;
	bh=ntdgmDs9+keTHEFFLHx+Lmc85pLV1xd4UPLHob+ED54=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zOEJIZXZ1N8GzPOEKcWdE9+1tzn4dSXLPvEjGGflFsfC7yhFXxAuU6m73nJx7tm9M
	 kO5zUmwHLMkfRLwckvu3YATFUZUtrs75B9WeWkKANp3ILyllpKqHUi/TOE28DuGNzL
	 das2edqpYAnpO858k7qdRLTbhcvxTN9kDz3lcnWw0/Pql8yLREluuew7Ve2MnUN5kY
	 wTEnmKb2/iqKnGBAnk5t5h/gk5uEfd3295zEY7GmVtrNFNlw4FgNK+hslmbxE5QWm7
	 5jnf0syW8jOhsB1lkMc/4E+ylmUkd3mb8gjTp1J/YtvVvP3ulKvQbkUk2H2U6/d7+g
	 upPYDhWzeTVDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD40A4126D;
	Tue,  8 Apr 2025 21:32:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 93011D6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:32:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 900A5404AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:32:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b1LBRPg7-izD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 21:32:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F14284124E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F14284124E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F14284124E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:32:23 +0000 (UTC)
X-CSE-ConnectionGUID: fApLdnn5Rm+ZSY39A+PhWg==
X-CSE-MsgGUID: uhcEaVCTTrSXxxF0tPaxvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44851516"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="44851516"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:32:23 -0700
X-CSE-ConnectionGUID: epTAcIYUQFuVqpelDxnTSA==
X-CSE-MsgGUID: SfjaCKJTRdyjeCt7shUCDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128923739"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 14:32:23 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 14:32:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:32:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:32:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TSBx5eaHDMqBG9rhfbbMRY/+ejvf7r0EHJTlbgAFRyal0r1sMPqWvX559l0YUOazMLZMj6cGfQVHwQ+qh0QSQxlzoQo+cMutY9i4SdQWbBsAL2b3D3vm9h70ICqSVno4Bs0V1/0NLGUrN3W6BgK+khmZ4JPgB/dM0/c4eNzX0YTRIuwJ/ZlAe8eKEBLryYm1rAFQ6WAzM5OtHJ4+j8JEJyjGzKcYCjlogL6UA969sME/XrmyOD47jEMvYjf0jSPIp3FYcW/EPNH+ZkqX9tPSVzmxa+FvPbjTRBgfzpwK4Z4sRhC8xszvL9zwU96+lvoAhUHVczuPELjE12PXHMKIhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ntdgmDs9+keTHEFFLHx+Lmc85pLV1xd4UPLHob+ED54=;
 b=UK3qzI4Z9O2jxldSBwPrS0E3diL+lWY22OYwB/3FAE5exwrDtw2LajquRHo7A/ocx4uKD/zIIgdXNe5b8uMl/Vq5QIEsiZuYOS9P+5d+1NIlpX6WYP6I8wIM5k4CK6RY0DvC36g8z42Oc+stEIovrKVR/o4f1SreG6u7mOZ0ZXoeH1w9wdH/b99j8jckDmKL270rXYiVjBMB2poMLhFklOs0WZLtPE7E4v6+qexppvT5NMvPds8wS3Kc9SAnjvvGLYmb+IXLKF8bn+YAnGluUAcjWurR0WtpLFB7PZjC7UbSicHi6TL+HcO0TM0k+5JxoQUcs0NwWqEt9uB50EQr2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB7050.namprd11.prod.outlook.com (2603:10b6:510:20d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.46; Tue, 8 Apr
 2025 21:31:53 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 21:31:53 +0000
Message-ID: <b0bcabf6-d010-46df-81ce-f986af868faa@intel.com>
Date: Tue, 8 Apr 2025 14:31:51 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, YiFei Zhu <zhuyifei@google.com>, Mina Almasry
 <almasrymina@google.com>, Samuel Salin <Samuel.salin@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-25-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250408103240.30287-25-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0033.namprd16.prod.outlook.com (2603:10b6:907::46)
 To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB7050:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b5f3a0f-c3c7-413f-5c3b-08dd76e4c7be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cXE3RHFRcHhCY1QwUU1VNWh5Mm4vdWo3SFR6TGNQdVBiT0d2bWx5WXl6ZHd1?=
 =?utf-8?B?K3c1dXZhMlZGY2NaS0g2MkNWYUw4Z25jTzNLbVUyc3IreFlra3JCMU82MndS?=
 =?utf-8?B?UTVHSUxNSGNReUxUOWpTU0xpa1VoUE1SSVg0bVF3VDFaNC81eW1JOEJsRFV2?=
 =?utf-8?B?Z2p6Qk5Tazd0Q3VvcHNUakdGTmtzVlVLWTFCZnNubnZJcENpWkpCeS9FN2xK?=
 =?utf-8?B?MUhZUUhrcWlHSGhQK0tDNEdBc20vd2Ric1NQZ0k3WExPdVlMNlZmYUZLZlI1?=
 =?utf-8?B?OFhiN2QvTHh1czV2R21EenN6SzRvdFR6dlpOS3EydG9CdzZjc21iVWNiZS8w?=
 =?utf-8?B?SXA3aFpJMjAxczdZVFFzaVdmNWxNTXBPeVJqV25TY0ZmMEdJaGRLWkVXYmRv?=
 =?utf-8?B?M2tCRmlkYjNyNTlPZ3JZMnNGK2pySEZrc1diRmpLZlpxOWxBL0ZRbklRYklI?=
 =?utf-8?B?ekxoSkNsVjZuZWpUaWRQdm10Y3FjOWFCSUxVTmVNcXpzVVhpaUhBZjlUU1hD?=
 =?utf-8?B?cS90RmFDSWxJK0FQZUx1MjlsaFNveDRrcDFCeUJIdVJOMy91UWFaY3Q0ZGRN?=
 =?utf-8?B?UzRIWGRPZDNYUkJLOUpyVGJuTkl2ancxVmNwSUpQbElHRTlIWlFRRWtUNzds?=
 =?utf-8?B?dVFqU01kNWd3a0FVZkRCRVlkYkNlZkNBUmdFc3h5STRhb3F6bnhFNVJKbkVV?=
 =?utf-8?B?dXBicDV3UU50L2dkcFg0SEZNZmowMWQrOWNESTd0TllWUGJOMVdNY0tGVnFI?=
 =?utf-8?B?MGkzWHM0ckVjcTgrejdVYzZTZTBDZTVLZ1ZEOElQZGlZNVNoQmVic2JjbDNO?=
 =?utf-8?B?UDdLN2JubTB4ZUlGVkN4K21mZGxBZ3NMSDdTbVZxWWtCejN3Wm53ekVpNElG?=
 =?utf-8?B?Q1Fmb3Mwa0JMNmQ5Skk2UHRxNm5YSmt1RjNvTkphb0VIbEpHSXBQYldiV1Jj?=
 =?utf-8?B?RGxVNkpaMU5LL2lsL0ZhQmpYNWhFZGNtWHNNZlhVZVRua2F1MVBuWGxPR3Vs?=
 =?utf-8?B?cXZNTHhFdUlmZnZlSitZZTJzSEl0V0RpMkNtczlhVDFSY2Z3bWEwYWhmUC85?=
 =?utf-8?B?Vkdab3ZDaXRVK3VyZ2FtWmk5akwzN2QxOThkc0FRbEtxU0dGK2xLUUZZbFBO?=
 =?utf-8?B?dk5NY1dKVEZCL3N1TjFxcGFLaW9PVWV2ckJHMFFWc3owd3d5cWRnQ05uWW9Z?=
 =?utf-8?B?Mm43ck13aE8yaVZWQU93TisxSzF2TGpJclRId1ovUWJURUFtNmVrTmxSWGZr?=
 =?utf-8?B?YXJUbWM2bFJmeEdON3hKbXJrSy9VUjF2TUYrS3k2bHVGT0tocnEzaDAvSHpr?=
 =?utf-8?B?QkdSZWJhYllMZjByTVcrR3VlRWt4cTlVaXJVYVM4Q2tUczQ1SFl0ZHA4RXYx?=
 =?utf-8?B?V1NadXRQR1N3UW5ib0JxbVgzTHcxQVI2RU1TUVBINkJpSVdORVJBTDdLdmJC?=
 =?utf-8?B?d1pBR1FyOEtISHUydlp2dmZwQVRxRDBaamk4WG1XaW9Ya0k2Tk15K3ZUVFRo?=
 =?utf-8?B?S2RtbThTdGNjVko0SWIxYThVZFd2Mk8zY3VMTUdFMHBvZmdhV0ZtOHExTnc1?=
 =?utf-8?B?RUJuK0V3cWtReHpkVVB0MFVOczVTc3Z2Z3d5V2hhWUNQdjFpNGY2ODZIYjBm?=
 =?utf-8?B?ajAyQmlBd3BRaGxockxGL1ZYdTU1YmdxZGVHNFcwaStmUy9wbFBJRDdWbFpB?=
 =?utf-8?B?LzdieUVCbndMdUpERjhTd1hka3JrcFRVLzlBcGtWYTdJVjFFdlQxVXdYbzJD?=
 =?utf-8?B?b0tOOUFwWlM5QmtJWkEwdjNNdnZyVHhkczdONXU2MFF4c3h6Y2lPM3NiRkVW?=
 =?utf-8?B?Nmlib1ZxelFQL2M5bzBWREJNeW1zeVliUGh3ZitFazd2bGhEKzBIQVJYVGNm?=
 =?utf-8?B?YnZORWhIVGczTmV2R0ZabTZBOEVESWhTWlI2OE14NnI4blI1WVBqVmJpdHdq?=
 =?utf-8?Q?QfApc3Wb0sY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmJoRzBGd1lvdHhBMjREc1RFMEZwNnFPWEdxdTFTVE41SVVwTHp3MFNQWXVl?=
 =?utf-8?B?bkxaSXVHdG5kSUJ4Zk9xd0pDSzk1SmIvNytNM0k1cVQybEtuVGF2aFJPNkE1?=
 =?utf-8?B?UVlEOEJzcVM1WEI4cUlzWEwwM3Ntcms3eHkzNXBEdVB3SjVUK0RqLzZSMTNT?=
 =?utf-8?B?ZkZ5c0N3Z2srQUZacU1SdjJOUFVwNThpNlJxa0ZWSlZxczVYY3ppeGp6L0Z4?=
 =?utf-8?B?cmJDUmIyMkZObExBTmVxeUJtTXBRQmdpd1ZuVm5wMUYwZkx4Sm96RGR0SEpF?=
 =?utf-8?B?ZUw1NUoyS2d0VEx2N29oc0wwVTV1VkZ4SEk5aERDZzZNVWFUT1RtalAvRlRT?=
 =?utf-8?B?VkpueUN0eUpBZUc4djR2Vmt0K2NLaUczRXBTazNDOW5hTEhHaVJnZnlTRGNU?=
 =?utf-8?B?NkpDK2wxTmpTOVJiQ2lyZ3dJN2RpNC9pRStyMktMcy9FeWZFVU5vSlg0WEVC?=
 =?utf-8?B?Qmk2ZTI0N2FpUXZZYkFNd1g5RWVERm1SWGo0dVNjUnVwQ2k2U2hYUzkzUnpD?=
 =?utf-8?B?YjZMaUl0dE51VzIxRjRwTGNpU2hOYkY0a2hkbVR0VGt6RllUUVNtRHZGWjg3?=
 =?utf-8?B?Z3FWOXdrNm45SUw5aFk5bTM5bEhkQWcyRWdQQTdBRE42SzBGUnF2OXJ5ZGxX?=
 =?utf-8?B?R3NMa3VFVkp3M0dVMEN1SlJVK3BNK3hFTGd3R0tpWUlHQU5YRFViZWJtYnZK?=
 =?utf-8?B?TE5kYytBVGNoRDNMNW94dnRxejdadlM2Mzg4SWxjeVJidG1IbG4zU1ZtOW9O?=
 =?utf-8?B?aVBkUmkzUStGNVVJS0NScXR4MldKcXRjTnVtQlRoOC9Mc3QyTW4rc0hyUWFn?=
 =?utf-8?B?c080N29YeXdSSWhQc3k3eDBnVXc4T0pZamNhZWJDM3g2K25ZK3BoYWk5SEZV?=
 =?utf-8?B?Z3UrRzRhSWZMQ3dDOTVSUXZjeDRYMFpmaXRzSitqSlA3VGZlOFE1Y3dUVytj?=
 =?utf-8?B?VjFUV2RiUTZrelpyK2dQcER4K2xiMHJMQU1jcEoyUmpQMHBvNDZTTzNOaFRB?=
 =?utf-8?B?RFVXR3FzVlg5cWpjZGhEdWZZZ1RGdjhPV1NKQ3h0Ry9ZUVdBZUdiZCtPb0N0?=
 =?utf-8?B?Mm11U3BYWnpOd2JKQk1FK0VXbGpkYUR2dkZIa3htTzl4TlFQQnRKVkl6UVV6?=
 =?utf-8?B?SmtNSDV2aWxpbmN4M242N0l3Z1VIeWQxcExjZ29VZnRKSWhZQkhNanV1NHZO?=
 =?utf-8?B?UTFoMkluZ2FXcFdNOXNiVkhScGRubm9EWHlzdzFDb2FSb2E3dUhGYUI4UWx2?=
 =?utf-8?B?S1A3RlZOVHEybDVDWGQ2SEVQMXE0Q3ZxOVZ1bFBOU3Z2SEpyWkxldW0rVjJm?=
 =?utf-8?B?TUo0MjdXam9obC90TW1kbmpUUlZSSTRHMlhGbThZU1REMmFmZTR6cWZGSmFv?=
 =?utf-8?B?ZW50VkJqcDF1SnNzaEVYNGZHd0IvM0tEMWV5bXVOcGIyUUg3QzVoUTR3TFdX?=
 =?utf-8?B?aTJyT3FTMU9oL3ZkNTB4Q1JCQnA3bTNsSFFnOEZaWDFqWFdWeThWQnNuYzJ5?=
 =?utf-8?B?ZmsvWGdKeE8xRTFKMkU1L3lkS0Flc3hha3dHTUwraHdudENoZXlUWHZuUzhi?=
 =?utf-8?B?KzNCWDlYSTBTbUhKTXU4YXBkVlVPQ2c1VUxLbGtkQkcvQkdaVWxlMHhYUGtX?=
 =?utf-8?B?TzUvbWZkeVRlZUJ6dDRPNHVSa3Rnb2RHME5wSVMvRzh3RW43UmJ6Zyt5VEJm?=
 =?utf-8?B?R095TEpQNkNSRWtuWC84YW52WFlsZmIwYmdoYmRVNDBpenRWL0lYNEhSNUJI?=
 =?utf-8?B?czIwZTFvNk9ZL2FUWVM0NDBHZkZFNkJGWjJsc0dyS2NzalR1QS8rWmZLb1Q1?=
 =?utf-8?B?V2cwYkRveGZjRTJaQ29NcGovY1lVY05QSG5HSUVXZzlTd2dpUDZHRDNUbVpH?=
 =?utf-8?B?ckhFK1NPME9vN2F5dWVCUDNmQXh3WXpVUlU3cktPa1ZMWjRnOHZCRS9rOGha?=
 =?utf-8?B?L3ZiRVFRMm1EV29XeVFFSFlUVEpCWCtXN0RqWTVHaGxGVXhuN2JwTDBXa09G?=
 =?utf-8?B?SThNT1UzU3RBeHdTOXp2WUM3YXVFU2ZyTlRmOUUvOWtWVSttR01EQ2Q3czBW?=
 =?utf-8?B?Q0lZcDlDZTdoSmZDOU93N3Jkdkw3RlhSNS9QMTI4SkJwQWE2V2dBVjQ4OERo?=
 =?utf-8?B?bnY3SFFkb2IzYndWajhMR3RJZVh6Y1d6MFg1N0JRMVFhSjFicXE3WnJEZzRO?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b5f3a0f-c3c7-413f-5c3b-08dd76e4c7be
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:31:53.3381 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 71KDoW7sLMUSZrJ8DBBEHAu1cdKkz/Nd7UL59YXut+OmuKUFPZ/TbeX4qtR7HFNCArORmhjyNn6AUWCV8483/9mqy0CVURxBfg70zR1Lfxg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7050
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744147944; x=1775683944;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zq0V/HDd34LNOOuAVhV8GbMVez3ZLMMlyPpwueBPR3Y=;
 b=Tdx4DnLu4L2VSff8y3U8bDgYUbYLinOYt6hXGmY9S4+NbCl2E0uA9mmk
 x94KDOxms04NUNuQeZuJw+cxbUOW6QWZceN6UzLVyCze8gNAjgtN2Lt2m
 eT7Ykm9GkkuXCpmH09dWH0qPX3JI53xI5BzMpS7W6S8Aa9gqsA7yzg8pa
 Nuu5Ta8AFVuJKa5IhhqfxjVStcMOiXuOysqocAr3/IZSdP2gtAE2HhP6r
 5KAhwNp+bUETiCu+HcrVTRxrseyx6QxJdjWKUhCYS6CxW6aVQWKZ2UOaV
 fiC+NSKhT2zXnm3gRvS+4ZYHUpj2SdD7M/UIrrUzWEk8MgfExg/us4Sbw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tdx4DnLu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 11/11] idpf: add support
 for Rx timestamping
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



On 4/8/2025 3:31 AM, Milena Olech wrote:
> Add Rx timestamp function when the Rx timestamp value is read directly
> from the Rx descriptor. In order to extend the Rx timestamp value to 64
> bit in hot path, the PHC time is cached in the receive groups.
> Add supported Rx timestamp modes.
> 
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Tested-by: YiFei Zhu <zhuyifei@google.com>
> Tested-by: Mina Almasry <almasrymina@google.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> ---
Besides my question in 10/11 about the timestamp extension logic, this
looks ok to me.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
