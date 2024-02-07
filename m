Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9747E84D4AE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 22:51:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97662854CB;
	Wed,  7 Feb 2024 21:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id plLKvI86M0jG; Wed,  7 Feb 2024 21:51:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85C4A854B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707342660;
	bh=OkiuZzroz9wtkDvdhmPLWL24Z2ZOpm1PVJCvGgjiNJA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cBWICtzeQtF59ph8ozgwul6N2l8OvohoWw2J55uzTqdlrW0ioF/feAb4lKfq47Vi/
	 KPVhsH/RVwwZ14Bdm+hnjNW5n4u3+rhhVnPIDJjpCRBgAhOsQXcD16dOS4KubVE115
	 Y59o9C7ywBoSiULdGcHJcEoey+VE6lQZw4l7enFJgclCHk+slGW/OD4jQfvNGFZygF
	 4LiVEzl8QK6s6SHkqiv8Bdw0wMpU7zai9I+aMVo2Df96yJ8HQsti/r6MkPpwd1yBjq
	 MSbHa2i8GzmBHz3obKjTNuTQaPgbf42S09nEDJ/7Obc0pKWrO2LV+HUmteMMPzbTWf
	 s8zEdKRXZf6tw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85C4A854B1;
	Wed,  7 Feb 2024 21:51:00 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 79AAE1BF3DF
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 21:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D8E86FAD6
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 21:43:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G7DX0a4KnVWE for <intel-wired-lan@osuosl.org>;
 Wed,  7 Feb 2024 21:43:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 17FDE6172B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17FDE6172B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17FDE6172B
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 21:43:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="26529568"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="26529568"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 13:43:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="6078832"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2024 13:43:16 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 13:43:15 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 7 Feb 2024 13:43:15 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 7 Feb 2024 13:43:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNGBdh1XmjFi27lT5eJ6UOL9asvDHNOm8a6OI4r4zBxfTo2OwnsEjD+DZ5mNNLduCxGuI+8Lp980HIgjDhqpxVGx3bTZfUMCyr8iOa+sjvs/dWvZf6Sd31inw2sdUiuRc8dU/CIF1ykj9gjugobfJk+u/WkcWp08k1HSrQ7tf7QUsq6y0YC5N5KxfWHDbA4COT4jOFyvFb2YqKjsrJsUa1MMc3EFhm7ymYeZZcVX5NL6uWfop2HEecMG0snx+voerpNXA6KVaoAH7/QkzZX8LsXTq88pgDIeDgMC02E1W6RXQ57CUCfbXXIf0+ud9he8FpNCkYURke7Wv+pF2PZpNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OkiuZzroz9wtkDvdhmPLWL24Z2ZOpm1PVJCvGgjiNJA=;
 b=VbHWgzLIDwWGp+R1cjjjEQ8eyK8xqnmCnNqL1qnWT3kDM7GIUrWZcpl/9bux4el215AVflRlWXK95jNXRp1/WTPMLLjiIrwrpKYMOXB3FRHayROm8coOo4xhKj8LinxxsdmOKr0rYVUJACkk10O8v86ROvfWgzmfaffnnGNtNPeKT3i2Hnxu1enl09nmYMDudhDlLNEmEiDSZZV0ANBh8aVruKdZzFdFU/xkYkbg+hD9UXLNNvhxvTyAGIwH9ICQ4VNlmkk3NOFY/eFcK+McknPez2y0TU7+KBNIYEEYIRjPAjkPLnnCUS+5yz1fBwxfbLGiomqaR7pDYXIzHtMV6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB7166.namprd11.prod.outlook.com (2603:10b6:510:1e9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Wed, 7 Feb
 2024 21:43:12 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83%7]) with mapi id 15.20.7249.038; Wed, 7 Feb 2024
 21:43:12 +0000
Message-ID: <bfddfb36-3625-ae0f-75c6-e46ac1ca482a@intel.com>
Date: Wed, 7 Feb 2024 13:43:09 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Ernesto Castellotti <ernesto@castellotti.net>,
 <intel-wired-lan@osuosl.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
References: <20240127174803.20793-1-ernesto@castellotti.net>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240127174803.20793-1-ernesto@castellotti.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0004.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::9) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB7166:EE_
X-MS-Office365-Filtering-Correlation-Id: 5941478a-47d8-4e31-35ce-08dc2825c89d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y0F8IuyzvhKw+MqzLePcQl9MK+cWK8Cqo7x4U0fQmZD2gyjc65OASMyQN0mZsZ3ty++mkzkJ3PA77qevnv++upb/fpS35fxQJxmCPuyvRkNRRUtOQ5gCq70kuLLEiqImFxTxuIqot3xB6YmaDs3sPWwSXcmCUkeMo9StzUCM2vqbJOjQBeWATE1Wr/PKANUPWWclUuwe38fREO5L6j+FmQuhSSJzEeFe8sAnnaT0wm5jlSI+jd0h0Rb7bGNLg8vsFPBT18JJ2w8+K51DKgiog3PJ4xc+ipVkojJlO4dmo+5733QdvhSgudcSl0TorwrYWSipjN7kOtajFF8LqoMNNEcV4QWE5gRrunZorTCiJw8enipqlhGdidvrzx8N/K51aZlEZEslm9BBoPJelFuQhcOf0AD6Fzk+fOiAk/osE61Tj7SyKQmRKkW/p8AmoTN9U1dV9Me40j0/dwBV4Dv/ntKOuZu3RZ4mg06je8E7RcNw3QsKLaF60h9QABdf00/Q0VoBQMcGQpDh/Xrxn37Fm67tI/X6eKjSwI/YPCsxGiI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(346002)(366004)(136003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(31686004)(2906002)(5660300002)(41300700001)(31696002)(26005)(82960400001)(2616005)(38100700002)(86362001)(6506007)(110136005)(53546011)(6636002)(66476007)(6666004)(66946007)(478600001)(36756003)(66556008)(966005)(6486002)(8676002)(6512007)(8936002)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFFkdDViRENrbG83N1llM0YyZkVzbER3S3dHMGpsSmtJNTA3WENYNVozZWZ3?=
 =?utf-8?B?MEd4ZGYyTzd4UGxoMXY4WG94SGxjcXBlMGVtMzRxNWUyN0xpVEhyL2JzVUg2?=
 =?utf-8?B?b0xBYWZvS2h1b2hOVVZqOFV0NlFZK3BxTktEWFFkZnd3Ty9ZbGgxSlNhM0pl?=
 =?utf-8?B?aFh2ZWVXcXdxVW1tR1NoVy95bG1tVGRvQ0duMUtpaXR3QnhZSnZ1TWp0bkdN?=
 =?utf-8?B?bE1rK0wrQjJ6bUF2NjNlaE9oTXo1bGNDaE5WQnFReE9wTGxJeGoyd1J5d0VI?=
 =?utf-8?B?T0ZTcmpFQTBKQzJVQ2lsQ3JwVjBSaFpLRTIwSnE2cnZXUnBhT245WUV6RTBy?=
 =?utf-8?B?N0QvL1dLdGMvTDRXSXQvVDY0SldhWmFzZzVGRUVxblY2aHhneFFyV1NKb3pm?=
 =?utf-8?B?SDIyUmFwOThFbkdaRDVXMVNjZVQ0Q2VPcUg0dHcrTGx3cFRQeE5sUEFJMzNm?=
 =?utf-8?B?ck9Ma1VDcW03cGJYSGpwb0tuMks2M05qTE1rMEk0L3ZOK0xYQVVVbWU2dFhN?=
 =?utf-8?B?VmlwMDRFUEExWXZsMnpRMTcwcDB5OEsvemdsZlNRZW5EakkyZjVoSENGMTJj?=
 =?utf-8?B?QStaMzVPNWFOSExVNWFBYm0zSStUclpMWUNjYmQ1cUF2UDh3eXZWS0FVdVFN?=
 =?utf-8?B?dkZWenQ5YWRoU25KMkFoNW1yNVBWVEVKcXVaYkI3L0tPSjZIL2hBaFIxeHVD?=
 =?utf-8?B?NExYQ2lYSG5SNFpMSnBkMSszVmJCTC9rdFNUTGR6d3laZHFKOGxkUHl2eWxV?=
 =?utf-8?B?TEZheGpwU1JQMjhYK0o1aHYzVDdDanU1TndIZ2gzdDB5bU5HRVdhN2Jvb1Nx?=
 =?utf-8?B?OXZpZmpTTzgyTUh3WG1FYk1Qb0pKb2hTd1JWVXBud3EvV0JmVmVJbWtNSjA2?=
 =?utf-8?B?RXlvUTJ1NFJmTUM4eGdDNWFiV0xRQURNRWNtbUJaR1hYQ2hFSkE0TVZFRTNE?=
 =?utf-8?B?ZjRCUUZGWHliai94MmxRWmlqc1dEZVhSNjFvbk1CZFNLaFJ2c3c1OGZIeHZW?=
 =?utf-8?B?aE5CYXRQRFFEanYrb0xadHRaODM1LzVkditmd1NnQ1lWOUlKM0p4elFtbUpi?=
 =?utf-8?B?dzc3VVFncnVHdmFMWUIwblZwNGhNREg2d3RHTTB3MW40d2RpNGVYMWNVME00?=
 =?utf-8?B?US9uc1Q2SitzS1VqODE4VGhLV2NRMDQrNk1zVDczVEU5OUd4YXRER09jL21J?=
 =?utf-8?B?c2NXV0greGh3Z0E2cXlEamNrNUtlalVsQkVGTWxCRW1HcS81TnlXNUs2WEhN?=
 =?utf-8?B?M0hERlJCVHN3VjRlUm81RmR2VEVCTXVSeFVadmtaYVk5bm9Ob2JwRTM1WHZo?=
 =?utf-8?B?d2VCZVV5RmhrY0JkYzNaTU54SXdhckVxVVdMdHc3a1BrQ25KdWdoUXhGaWZT?=
 =?utf-8?B?ZkJPeFhGVHU1bWFnSWc4dUFhWENtQktXb0VKSkJDNklpamlYWmtJYVpLcEdY?=
 =?utf-8?B?Wmg3WTFZT2xLeW1sM3VBMFd0aC95OVVGUVFrU1lYaVh4TTFQTmlhbXNUNW1O?=
 =?utf-8?B?eHFBUGF4NDBUQ1QvNS9ldnQydy9ZSmo5aTc5L0NCeWRhVEdzR3liM3lmWlY0?=
 =?utf-8?B?QWU2V0thSlRENTBDNUtkOURQRlNvbmlFQ1lEbklYUFZ5TG1lRnlzM2czUVRZ?=
 =?utf-8?B?WE1wTUdFMmFsK0ZiWkFxK3pDbDl4aXh6RkpFTFhVbGhOWDB3UXZ2V3hRK1NQ?=
 =?utf-8?B?TEZZMFBNQ21CTDZvYW9GcFUzZ1hnRXIxenE5RVJQdXFlbW1MUXlBRmorSFVW?=
 =?utf-8?B?cW9aQ1EwYXkzNlQ5UTdaOGM1QWQybFRsWDZmRWRpSUNNdHgvSGc4cnRDT0ow?=
 =?utf-8?B?WE5XQWF1VEcvZ3kyUlhKbDdaQVlwaGN0YzRFTHZOMjFPK3ZGM0JDTnI0c01w?=
 =?utf-8?B?eTZydjA5YUlzM291M1NoYnh3emE5R2swRGczRXYwQ20xRWo2ZlBSbDFFQWlw?=
 =?utf-8?B?OVhEUFVCbE5oVVBSNmFLS3BhaGwrYXhYN1FGQWRHOXNaaDhFV1ExVmdmbFdH?=
 =?utf-8?B?NEFZS2VnZEJkQUxOelJLSmpoMXhUOHFNbTNvMXlSaHEzUC9lcTJpYWpKZHNS?=
 =?utf-8?B?TDlraHhiWHZKNTJhSHVMRExKNE44Q2l2MlFoQTBMMWVWSGRtVzF3eEpSa2pv?=
 =?utf-8?B?U0pZZmozUnlqaDVINk92U212SmZjYU9pN2NjaFlzTlBadEJidVBKcjlJTGtH?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5941478a-47d8-4e31-35ce-08dc2825c89d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2024 21:43:12.6160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DALSZI33HT+ufm7AdC2KbtcqeBfgg1mgmDszRjqZCEpRaCkl1Oq5L6Epyljrb5RyOogLuSPhyJ7wBXhxDlOB0PJ7nae/OdGjQKiPx7Qk5gk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7166
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707342197; x=1738878197;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tvvXUkW5A64wgPInipMIbaIP6Q8/xve4AFWIMvOqlts=;
 b=WBQGVDL1ERFOrtOl2dHCzzK7OuUhF3VE6KPWd4+gFefWSUdpPLX6X8n1
 eGU1+hlIGXl7ZopQ4Fb3ofOsEx0SP7KAphP+1pXZ9u3daEdFJS3FQQ6/x
 u9f+KoPOAztyu6+CsMyHulMc9AuvjSCF2wL+OZ4Ls4E3XpbNjWuC8emRZ
 7ctPSTF5EdChrloktLcj3cLMTfQx5UeZk5P0bmo3HNomL4nJnVoZKrp8z
 JhbMg/lZPTR/e15YSvtzfH3g0wDbNCvsalcrhpRZ5VPo8Org60buRA8lH
 KUd4xVZ2ciMKWwbkE3JulfFV2l+t5SzvNHFp8c6LW187V1m4jPK0wqAsh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WBQGVDL1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: Add 1000BASE-BX
 support
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ Piotr

On 1/27/2024 9:48 AM, Ernesto Castellotti wrote:
> Added support for 1000BASE-BX, i.e. Gigabit Ethernet over single strand
> of single-mode fiber).
> The initialization of a 1000BASE-BX SFP is the same as 1000BASE-SX/LX
> with the only difference that the Bit Rate Nominal Value must be
> checked to make sure it is a Gigabit Ethernet transceiver, as described
> by the SFF-8472 specification.
> 

Some nits on the patch...

> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
> @@ -1539,6 +1539,7 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
>   	u8 oui_bytes[3] = {0, 0, 0};
>   	u8 cable_tech = 0;
>   	u8 cable_spec = 0;
> +	u8 bitrate_nominal = 0;

This should be reverse xmas tree (longest line to shortest) so this 
should go under oui_bytes.

>   	u16 enforce_sfp = 0;
>   
>   	if (hw->mac.ops.get_media_type(hw) != ixgbe_media_type_fiber) {
> @@ -1577,6 +1578,13 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
>   					     IXGBE_SFF_CABLE_TECHNOLOGY,
>   					     &cable_tech);
>   
> +	if (status)
> +		goto err_read_i2c_eeprom;

No newline between function call and error check please.

> +
> +	status = hw->phy.ops.read_i2c_eeprom(hw,
> +					     IXGBE_SFF_BITRATE_NOMINAL,
> +					     &bitrate_nominal);
> +
>   	if (status)
>   		goto err_read_i2c_eeprom;

Same here.

>   
> @@ -1659,6 +1667,17 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
>   			else
>   				hw->phy.sfp_type =
>   					ixgbe_sfp_type_1g_lx_core1;
> +		// Support only 1000BASE-BX10, checking the Bit Rate Nominal Value as per SFF-8472
> +		// by convention 1.25 Gb/s should be rounded up to 0Dh (13 in units of 100 MBd)
> +		// for Ethernet 1000BASE-X

This isn't the correct commenting style for kernel or netdev [1]. Also, 
please wrap to 80 chars.

> +		} else if ((comp_codes_1g & IXGBE_SFF_BASEBX10_CAPABLE) &&
> +			   (bitrate_nominal == 0xD)) {
> +			if (hw->bus.lan_id == 0)
> +				hw->phy.sfp_type =
> +					ixgbe_sfp_type_1g_bx_core0;
> +			else
> +				hw->phy.sfp_type =
> +					ixgbe_sfp_type_1g_bx_core1;
>   		} else {
>   			hw->phy.sfp_type = ixgbe_sfp_type_unknown;
>   		}

Thanks,
Tony

[1] 
https://docs.kernel.org/process/maintainer-netdev.html#multi-line-comments
