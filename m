Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5795A875E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 22:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 524678193E;
	Wed, 31 Aug 2022 20:14:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 524678193E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661976863;
	bh=An/LI6rgD/QDy51wVk4WwC0fLsai2osOIK3L/gZRcaM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VTYk8hX2mc+lVrAseUXzXJ9JYoE2qmErCCwFu0H1PHzfY3Qf4CPvCKAtMe7csepuQ
	 7+N/mePoAKKQ92ELuTEX7x0GCk9LIxvs4IiHLDmOkGC+7xF90xE33FNgxzpbdJmIsJ
	 hqLW4IJTfQqvyRRs0H2o3+ieM7ff3aLVV+uQk3DD3AsKTvc23DUuUZWhQdh8ZgRhBJ
	 vxpHYK96P11Q2EBhoxPFD+9JHxrHwbOgQ/U1YxoBbg4pDS2zS4fKJ1Jy4pADe/X2Nt
	 Un8ApnV1XxAWVAXrUoZwjAgCVXO0HmnLWiSb6T9QyVQwnTnM1Z4gxAptF0XEg2Pue9
	 XZrJG6V/i8BNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m2DdUVc0Jy2m; Wed, 31 Aug 2022 20:14:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 501BC81359;
	Wed, 31 Aug 2022 20:14:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 501BC81359
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D20531BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 20:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA62C81359
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 20:14:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA62C81359
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9S-6hkxDMd3t for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 20:14:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F4638131D
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F4638131D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 20:14:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="321677400"
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="321677400"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 13:14:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="608298588"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 31 Aug 2022 13:14:14 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 13:14:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 31 Aug 2022 13:14:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 31 Aug 2022 13:14:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FlduZeatnbzo2Vxc1ei/Zuje4+k6V1g3hm6qwG6TIXk4JDyZItn9t3HghDLsE/Ruwltyk83N3J85HWbwKPBoduCD6ny+yVigsF3Ut1uXhy1Qk6LTnIsOvz04a/BFqERSsD+W6pzh9vFOdUYoXJEL4GFFn8jnEnNt6VCFgQG9mu32NRD5Tr5Yz0pdIEQ9q9qTMFv0KR6fO3gXASErhXgFLXHG3py4ovacwlVWjhll45ZjPUyr51QarHSHkpytuDizU+caiZwbFrWccASSpR+N9I975sBGcQkgPxigsN/dIxzuWs/7JrlhyM+P4wcKRmCsmBWZPCvhRwfFWw+OE7EUgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xoN24tVsmoMkKHNMnPnTdFdcRTQupk+uWiqKc4EOBTA=;
 b=dqR25h7OlajMEJuQvhHIHFrVekGIALjLPAp0dFd8Me6C5BlhXieHvLQBmQOpXiOv+09wCHQde/P8QFPL2XYJS+Y//e/XnL11j58LGgbyw2AUPbjco2Bmv4eK/7eelnBlf2QrhO/xmMxzzXv3eIOJQEhZK8XgRtnhMcF0petFJCAZfOo4/nbUmW/17jXDyx68Kw+K6Th8MGVwEI5KQqd5Dpp38aIN8JNiGc4hkUKai/scG65vWC23r4ZtCB229HJ7GVo9WGDfQa5bPKuojlvmXZnl9c8HdcREsv2J4WZTY2zrmYN6jjfviwM65pf8OE19yIOIxlhYtEaSb36krdENJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY4PR1101MB2293.namprd11.prod.outlook.com (2603:10b6:910:22::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Wed, 31 Aug
 2022 20:14:11 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5588.010; Wed, 31 Aug 2022
 20:14:11 +0000
Message-ID: <3e559af7-bc84-95fb-7cea-224b7a3da0e2@intel.com>
Date: Wed, 31 Aug 2022 13:14:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220830125122.9665-1-maciej.fijalkowski@intel.com>
 <20220830125122.9665-2-maciej.fijalkowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220830125122.9665-2-maciej.fijalkowski@intel.com>
X-ClientProxiedBy: BYAPR01CA0010.prod.exchangelabs.com (2603:10b6:a02:80::23)
 To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5f19a3c9-17ff-46b3-1d03-08da8b8d5e67
X-MS-TrafficTypeDiagnostic: CY4PR1101MB2293:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +k8KXYp6d5Jw/ipQiBugcsUR1xojwk9unReLttmC+K5/TGCWkjRQ37q/78a/pgUpto7bcMJRB+nX3adB8zJOu5Bo0DOYd9uilCR+h8EvKLeXqjCkzsaRhx8l3Tl4rx+pmQdvGb++QrHCLuinVC4IyiQelkn9efNd5ManDnokHFypuyCjLyOQhDMjgjOLLZjqKyqf2JEs7JW7wZUSQ1Mv4dwXls18qIs56qAwlrkDcVKeobUxzmlBsLL19uxcCHLgexbUkM938v5WVDrXgvjgRr2DN4m3m29lIVoX1kNfP3OMDcBajVP7EGQBggxmolJ5Y6LsZXZwbRbLBqwdugwZAqQDHXW4K+MAUjRRVTSUfUKCErfWOv4KkRLmT1tIg6lwNiAxh3Iqd6iX0Hedsad4psppd5KjO+1LQ0bf0QjxZM0WbT9EwJZ+RMXhpOq6yJlzHkiox8KiUQdUx0sHHys/LkCoU2lQU04PgUc4BfylQsXAJjsTKC23iXQJnDB148/aWE3niZpL+TdVRU7i1khstKxfYuwMUdG+v3tSISbdaK6tr0PF9I85qTPXlSbKAx3Bnabs5hZrsqjFST6lv87WBHd06mYbxmZBQEOiuHD5/hOexaZ/Vac5Hd8R0r2DfrQBXLGdhUaZcHqxdgkduFKwUJns+ismRCscqnqInch4F7N5V+mkpATz7YRFpUZ3Ez+r7nj05UxoEvXE4MdDhRr9a8rjRf6vLiqtyW+4LcR0pnm8N71GnUyliZnG5TuJ/SpacXimEjEeroeLvCBun+55kYSld39Uqp409F0h9Exvvrc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(346002)(136003)(376002)(39860400002)(6666004)(6486002)(26005)(6512007)(478600001)(83380400001)(41300700001)(6506007)(5660300002)(53546011)(8936002)(2906002)(4744005)(2616005)(186003)(4326008)(66556008)(316002)(86362001)(8676002)(66946007)(38100700002)(66476007)(31696002)(36756003)(82960400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1NHRjFtUUorTXd4Z2xVajU0U1dwalYvMFh5N2dTUU1IT2VaN25KVlhxL1RO?=
 =?utf-8?B?cWw2bHdWUkpKVUtVYng4TzNTSFRzS3UrWVR6THR6QytLS1c3ekc4VEQrOU5E?=
 =?utf-8?B?RGgreVdMeUp4cG84VGNUR094bTZDMFVpNmQ4d2dvbkhaRy9GdnZxK1QvL0JP?=
 =?utf-8?B?YlI4YXZtb0E4RjRuY1JvQlFvVEQ1Q05qbUF4T0E1d01TZTBlOWxkcW5iOEZ4?=
 =?utf-8?B?WXc3bklXdDZRQjA3YzZYMU9FUzZ4aWZGTGMyM05Bc1dwWVQxcmlxSGViT0F1?=
 =?utf-8?B?cXJMUGs4ek1sOEdtMkREL2JiUmZtN2V4QVNVZjZLR0dzZEUzMXBEQmhDdmhP?=
 =?utf-8?B?OW5wVGN4N2wzWmJrMER4RFlHeWJIdEFOV1I5Mm9CY0Q3Z09aNDBnQ2V5OVpv?=
 =?utf-8?B?Mld2L01aUEFlWHV1WVUrU0lSVjF0ZGRMQmxwUnZzM1RyeHRwWU9NUUVYa1dO?=
 =?utf-8?B?OXc3eHppOGpna0dyMVArMkI3ZnhwK3Q0dll2ck10Qll6VC8vc2dmMWF1SE5u?=
 =?utf-8?B?N3F4TnNmQkVnN01UaTAySnNOSzBOSFpnZFVhRkdidGNEN2QvdFQzM1JNSTU1?=
 =?utf-8?B?RnlPQk5tU1EvdEZWbDdLbmtvSytMZGdIUllyNnYvTk0vTEloVm5OS0ZvQlFp?=
 =?utf-8?B?dzhpMFhSUXR5SXBqbkVjTUd1cDRTaUV0WGVaVWlUMDhpUGxLeTZ1VlZ0dXhk?=
 =?utf-8?B?S3JJSnpmWE9rTWgwVnlaRHZtVTQzSFNUV3czNDlGaHExd21HSmtIZWpUNmhQ?=
 =?utf-8?B?dENmQWxkYUtYeTNOTVl4eS8wZldxKytKY0N3TjRUQ1pMa2U0cnFHazhlWWlH?=
 =?utf-8?B?UzR1VXB1dm5INkJocXNBK1VoSHI2bHJNOUF4ZUlrUk5kN2U2M1R0ZjIvYTBM?=
 =?utf-8?B?TmUxSTlXZFRXMlZWdTRpZXdjVzQ1ZW9VOXBETzhrTDc1M25SNlgralhQVk92?=
 =?utf-8?B?WHJpeVFpdGFWbFBDZVRWUUtFUGhEdnhZcTY0U0JRdTBFWVBKSTR6MDBpcXZt?=
 =?utf-8?B?RExKLzVtZ3NWaThGM1pwRWN3ZzhrSDQxZmJDMjRIOG8zdWhNdllzWlA1S1JB?=
 =?utf-8?B?RkI1UTc5czlkaGxRVHR2ck8yV250KzFtY1AvL3FKaHlPcTgySUlmU1E2dVhX?=
 =?utf-8?B?djVZekRNM3E1bDFlbURGdk1reTV5M3VKNlBNVXlKTTVpajJaa2tpTWlBdi9U?=
 =?utf-8?B?aVhucVJzM3dMSXhYemZYY0treTd6OERYZHVlWTJNeGhWZ01TSnlNTWM0SkE3?=
 =?utf-8?B?WlVPbVhCVnpsbDN4aExPZHBMa0NsS2E3bWpLcnZvandWeVNNTHJnVjdubjRN?=
 =?utf-8?B?eWJNSzMzTkFxWXFnbnlJblhiUGlkZmo3bWVuMEd0TnRoTklLWTVQc0VaSUZR?=
 =?utf-8?B?VEllaXdEdDI3WWY2VEF1SDMydVNiTkVOSE01UjJ6RWlsZ1pucWoyQVJjTTBh?=
 =?utf-8?B?VWRHQ3RXb2lSKzkxQThDcTUyQUNGZFVCcCs2bEdJQURaZmFvc0lpQW1uc1Uy?=
 =?utf-8?B?MUllV2JNY0R4cU5mVGZlMWpsRyt2eFFBemhZYTl6N3AzSVFra0QvenlVSTdF?=
 =?utf-8?B?UHREUXgxQTcvelFBelFzNjBEbkxmOXF0TSt4b2RCQ0c0MEhXMFU1WTlKOGpL?=
 =?utf-8?B?TUpLRXliUld6SWF3M0FNQVp2QXgrcjZyUGxIaUhrclNsMk1oN09YNGFpbkVm?=
 =?utf-8?B?QnF6SjdENEJYSzBMQU14ZDd5S2loNDRJT1M0YlZNZHdxVEVmREVRZlZYTDJv?=
 =?utf-8?B?WWw5dnk4L3h1WjJyeVIyc0lqVlZBRHBoSko2akxXV2lCVGtlSjNqajkyRVZF?=
 =?utf-8?B?MVZlZ1IwanVvZGxXMytMdGhzWjhjQ2tTRUErQnl0d3kvVEl2R2N3ZVVFTUgy?=
 =?utf-8?B?MVhyTGNPVHBHRHN2MXJML1B6cCtmR3JPbm5EOHBoRFdUS1RrVjA0M2h6VUNS?=
 =?utf-8?B?VWVQekRaeTJvNDYzSFI1WVc1emNlc1grN3Y1V09xWDlHL1Bia3hJVVlUTVVC?=
 =?utf-8?B?ZmZKZWxCTk5lN0xjUnFoL2RGUHVENjdmd3k0ak10MVpUZTNwMmNEOEtNU2F5?=
 =?utf-8?B?MmtMZlZqOHR3Q2hIYXhIczNjTXVMdWdQRGVueDh5Y0g0cWlEaGhFRHRjRDZz?=
 =?utf-8?B?dUZQRUxxMWRiNWdOTkRWMXFQNE9QVnhMMGZDSDQ5bE92emhmaHhZck5PK2lm?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f19a3c9-17ff-46b3-1d03-08da8b8d5e67
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2022 20:14:11.8218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d+UCTiZyOWzSmobTF/DdjNYNdszBxYD8wkWaqkoBmve6FmMiBfpMd3V8wt9qwXOIrFX71BjhxsS1gr+zvZJ0SPTiU61VhZq4Xk74lH3aWWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2293
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661976855; x=1693512855;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e1yWq6HbJVxA2/dxi9lS+K9X2YO5QbRrMR0CLy31ZmA=;
 b=XmxaBwNBScx7n/L1FAeDFom4ELvLkDbSeBNIR9f3gTzggCtK+H/PvQFp
 m5wAqVhvvDn/EIuNHSC2ZfwM/D0I8gdpeNcrgFxO+jiH6zJNbeDlnmCpB
 Gpo3dqI75x5RGjIFmMgi78Gcyrj6KjR+PxrpzZvuSJ36Z5A2dp5TFnrWV
 RrVO30e8sNPl9+RAI2nnTtbOl3oVE0bSy3BNsjjGKTwcAI1D7PNRTA3Ty
 3iZSvWdg4c91WEDXHcF7IpbBTU24LBnLqwJNEsRuZUq45iOcyBg2km9Hg
 WtKrXUaBAcuav/A8uW73PAEYlU56AYzv2zzZqBuyfbDS7C81K6ivvO6nn
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XmxaBwNB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-net 1/2] ice: xsk: change
 batched Tx descriptor cleaning
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
Cc: alasdair.mcwilliam@outlook.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/30/2022 5:51 AM, Maciej Fijalkowski wrote:
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
> index 21faec8e97db..35dd3c57c4df 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.h
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
> @@ -26,12 +26,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count);
>   bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi);
>   void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring);
>   void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring);
> -bool ice_xmit_zc(struct ice_tx_ring *xdp_ring, u32 budget, int napi_budget);
> +bool ice_xmit_zc(struct ice_tx_ring *xdp_ring);
>   #else
> -static inline bool

Looks like this shouldn't be deleted.

> -ice_xmit_zc(struct ice_tx_ring __always_unused *xdp_ring,
> -	    u32 __always_unused budget,
> -	    int __always_unused napi_budget)
> +ice_xmit_zc(struct ice_tx_ring __always_unused *xdp_ring)
>   {
>   	return false;
>   }
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
