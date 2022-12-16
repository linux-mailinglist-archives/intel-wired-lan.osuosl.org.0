Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A79B64F081
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 18:42:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B0DA41150;
	Fri, 16 Dec 2022 17:42:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B0DA41150
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671212537;
	bh=EG6XHZ9bFA8R09ElejscFYpgrakQQeldUo8wNOIC0pA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xTlV0Hp3Vef9zvJTkdTw/niDlPO7F5Vi/FOu9nL61F3+Y467ItsG5SUHtcd1/VaeJ
	 W/SAvQL7DI6HSGIAY/TnpSsoHlpJXQJr9F1rjyCj/XMdUgMVoMBr5oy/E4XuAj8ihg
	 6aoEmWKhMwnSiKaBRJa8mwBKWh62/fA1Uqeck3LeD0WZL/i+sjeQ1tXkthoFTCxxQC
	 pbI90QJ8YC480prH5Mr4ShHdNR3sHsSwuv5UqMuzOss3qVNCeKp/PQwEhDelaoSg/F
	 l5fnZuJyVe8n6OJdAda5nX78KPyCc80QAAOVeOCDCSNywvRlhsZO4wdDUq7tuy6hjc
	 03JP8+4y0eXkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GD_fZ40Y7GUC; Fri, 16 Dec 2022 17:42:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AF0140241;
	Fri, 16 Dec 2022 17:42:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AF0140241
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 073671BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 17:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E1FDA41145
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 17:42:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1FDA41145
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82M43klR5TzZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 17:42:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C0E84112C
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C0E84112C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 17:42:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="306693883"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="306693883"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 09:41:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="756829756"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="756829756"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2022 09:41:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 16 Dec 2022 09:41:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 16 Dec 2022 09:41:04 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 16 Dec 2022 09:41:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bkDu3jp9htdn0mIfGcxyuJoEF18/rezgy8Uvri/IJkyBx779WD76wLGlhBOoxCgMbAOw+cz1L9Qnd5PfMm4OOI9PLzpD0eHqtqYBUvY1ScfsoUBuoKzZK92IqDXCgiQHm1mpjpJMGMYFehs7GJSviGZGK+dZ3QKAHdHZNXwLyzB9O3YhRsjHfH4MlmZniuUem6V8IX5MWmk+lnvWPMjUl7e0pDGsqTBndyHxCT0tWo32hquJ2flegIUK6VQhTg2x2DJWuQRMbtR/4BjdPSxDkYoQaHb04S7FFD4Z+qqgmBKu4ozcqD8qVbSDnhi6fhQ3VFRTKm7n/ixILDIiruS7Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VphjYB1XdC4DriXKTTjUhrS2DQUTKHiGggfwPt7opKw=;
 b=mg48D/eU7iu69Ne2JwE65Bj0xckE9Bpz09gDG0qMTMZYweoAcs1hX0kKXcEacG7/tsI4vGe09y1Hqi2F0Qr74A2MXhWenXeUf5io0oNuk76HaWfWLRSiJPOKOYo13cd4D0gmuNlqeaVerUSsZpxjG9qIhtkPix0mEuiBTeWVl8IQ7QMud+1mui6ewPBoyj2yfgHPA+pLhGtXbOOkV+xRrr0on4Gnr06Vkg+DajKarsCeJiiVwkUx2HROjT7JM0qVgnKmgeA/zt42P2iqw8Gp+OvFSgjeHLgHCePtOy20mARYJr+Rnp0ngbYMiKaAajRUFB6sSktpAs8QMmz5gW3X6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by BL3PR11MB6507.namprd11.prod.outlook.com (2603:10b6:208:38e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.11; Fri, 16 Dec
 2022 17:41:02 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::6ce9:35:a5db:f6dc]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::6ce9:35:a5db:f6dc%5]) with mapi id 15.20.5880.019; Fri, 16 Dec 2022
 17:41:02 +0000
Message-ID: <140a1757-878d-3235-7053-146c3715590d@intel.com>
Date: Fri, 16 Dec 2022 09:41:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: shensongjie.sh <shensongjie.sh@chinatelecom.cn>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <BB603E57-30F2-425B-9901-E715B1FE63DF@chinatelecom.cn>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <BB603E57-30F2-425B-9901-E715B1FE63DF@chinatelecom.cn>
X-ClientProxiedBy: SJ0PR03CA0137.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::22) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|BL3PR11MB6507:EE_
X-MS-Office365-Filtering-Correlation-Id: 28e3cc42-ea27-4be7-937f-08dadf8cb358
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P2EPYh/PIdHPquaLbrl8H3x5eyjv7HuJsNRQcIrYcmwbYxJ48JgxiHWwichhyma+UfIqqyYZHgp0YgHfigIBnRNhT8FiMH1VQl1W3oLaPiya7XOTy4R/zOj2F7jfhhq0G+lsMD+P2qv8r2H8doxorC/9qBDnJelcRDOXy5UPtxc/Rq1X4z6KAXzWXG3XKoxvnA/olgNr9jVmkgnMkPJxw9VFkzM5k9i+XZtqVwWn1zLMvYAqfLT8PzFu8mg1WtvuvXGjc9K/ws0pmX47Z8/ZS5NHE7TFAs5FI+R3blXD5SwWo6L1kp0bSGft1YLpBwZB+IzL8+IgXKr+XTNejvUuCYkiqqBl+KG23+0DqG9Ag4B2lvLVgy61ZDXcVvZSjmRxTgLjoDSuHgafG0eKBSYbrZTs3RpG1MmPsrQ1dKs1wzY70ThdYkgp6Am50IZH3xQvPztNeYDsdFU35rF0o0StorRC4QUGLnYTd/T3su5UKKi4B6EHlTCnjYEL9szVAevrMf6NbfyA840vTR6I561JwPDSVVKS9vHQ9MEVSYAy7bYKwYNJVsh4QyCOn2LcOrn0d9I5IuQo+Kw3A423Rdw+qMtQP2VLyDsvYGsPLyltx+qWdHZ4O7uxEecSU5vNgL4jyk9xdQmMz2bF29j2KjARtLESGfRevMXHX9l2CD1qVN3hma9uXjBZKQVbLZaSjV8uPuNbPnnvLTN4AyMP7JJPhZ3ZE2mezeD0XjKfGtk9vvU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(346002)(39860400002)(366004)(396003)(451199015)(36756003)(15650500001)(8936002)(8676002)(2906002)(66946007)(44832011)(66476007)(41300700001)(83380400001)(38100700002)(31696002)(5660300002)(86362001)(82960400001)(66556008)(6486002)(478600001)(31686004)(6512007)(53546011)(6506007)(26005)(316002)(186003)(2616005)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlVFNzRNWnluNWxuTFRuL0xrNzVveGdXUGpvamZ5YlNlcWFXUXgyWTFVdnIw?=
 =?utf-8?B?NE5rV0xhRUpESlhzZmt1cXBpSXdaSDk5SDkzMzJ2aFk2U3dScXFxcVRab3BS?=
 =?utf-8?B?Rm03VzlWaXFVbWJyQi9sWG96cUkrRzA5VW9DZ0xkL3o5ZHJBWHRET0c3RThq?=
 =?utf-8?B?VWIyaHBwakRCeUpGZnkzRFlvMjgxSUdIdk5wMEtTZmFzYkJpK3doVEFCeDc1?=
 =?utf-8?B?NmxLSlpERnZXVFExZ0lEYnorOURUWi9YVWY3UE5peDBSdVA3MkIxdWd6aTli?=
 =?utf-8?B?NENIYWZZVHhjb05IR2NlbXAyZC9jV1h5YlhUWVAvaWx4SjE3eEFPYmVWZVdZ?=
 =?utf-8?B?dmpkOVlCc1VVZ3JSbTJadmNQVDlrZ2Y2c1BMV1pTSWxpYUJ0bmFFYmtRK1BI?=
 =?utf-8?B?VHFOTmRHc05tK1NhQmExRWlpS3RIZHRBU2ZlRlN5TkorUXRnK0NrNjRqbk1w?=
 =?utf-8?B?NGh5aTMrWHJWMG92cFRQaVFSQmRnK1Vubk9oZHM2WnZIQlZCMnFjdnY3Mjds?=
 =?utf-8?B?TWtST1BmNUFLL2hST0ZUcGxhRXpCN2pPVGVNaHV5dFFpM0N0Wk11RXlEaHlr?=
 =?utf-8?B?ZmhDaXJ3SjlHeWpqMEdsTTJFRjBFSHZsY3NMQVhxYXFwWkI2SXl2S0taczZw?=
 =?utf-8?B?T1ZPRnhxZTRPSDVaeGE2WUJXWkhYc0RlTUR3YS9MVTlCSlQxL09yTVJmcnd1?=
 =?utf-8?B?Y2tIeVZ2NXJGbzg4OXdYRVVvMFh3Q2lJWkg2aE1HZ1cyRFoyZzJDSFVjZWZy?=
 =?utf-8?B?TFU4eVhPakJLUVRSRDhkZmFlNUIzSHJqWExTcG53Q0Z5aGhpcDIvQXVrSlUv?=
 =?utf-8?B?MTJDdnA5WlJFWC9SM0pPMVZna3U1N080aTkwL2F5UjF6eXZCOWNZSVlZM1Fj?=
 =?utf-8?B?VEpiWEtnaXZERmsvSGU2cERZWFppZzdqTHZBQmRFdXNwVG1wS05aTXdYTndn?=
 =?utf-8?B?TllDR3M5MG9pM1hDWVZqbDNZRENQQUZSdWxDa3A2aWtMc3dPZjQ0V240TWgw?=
 =?utf-8?B?dHdBOGtOMnk5TWZlTFpIbWJPREhNNC83RGVRNmJZNDVsTzRzdUdHNkxFY1Fk?=
 =?utf-8?B?U3dzazZuQUIvQzNFbTZOYVl6dk4yVWlncFRRbTJ6T2hBT3owNVVpVGxJRGYw?=
 =?utf-8?B?VE9hT1VLL0hNaXNXZCtlZUNJSFdXQjh0cHN2aTdQZUxlVGZEVjhGMFpIaC9G?=
 =?utf-8?B?bERzTmpmQ2pBbXEzUElmRlNWbEJ2U21rd3VFbUxPbXZEM3F1NlAvckYrdHRE?=
 =?utf-8?B?V0hLMkFyODZBKytIblkrYW1qdTRBYmNNTmpGQlRDdm1kSm54RUdwcGlieVBt?=
 =?utf-8?B?MEh0U080NzRzVUwrZGJ3amdaVDltbXJVcTZneW12UHFYS3gvc3ZKOGNxU0xZ?=
 =?utf-8?B?TmIyNkVucnRzVWFyYTJ1YjdNb3FDWlNYcUpVZ0poOExrZDJDOHA2V0tzcjZs?=
 =?utf-8?B?TzlXSEVqbkdic3A1K2lMUTdKNTJwWlJiSDJHbjlJZWVQK2xDbnRBaWhTMnpr?=
 =?utf-8?B?TmlvY2dSWCtBQkt3T3U4NXpYU3Y0TDNFQU1CZWFtYS9FTlZwTXFhckx0cith?=
 =?utf-8?B?MXVXTnNpbE5LN2JSa01WU1A1V1VHdjFEVDhVaHgxd3Zaczl3cWUwNjFxTlRD?=
 =?utf-8?B?UlM0dGV6bm54ZHJraTVtOUNYMHFZWnFST1pEbGdiVGNZWjNwSzBUejBhdVFn?=
 =?utf-8?B?WjFaQ09FdmRIb3JDUDQ4bDdpU2llNENraWJFbS9ZMGJpcUpoSUpPVi9MU1lU?=
 =?utf-8?B?NmVWRTkxRVMyWHNGVlJHcjZnZ00wUExCWEthRUJHa01WY1B3aFVnbnlDT0xz?=
 =?utf-8?B?bTlzZlE4eUkwRWFpZDVLNThBWlZDN0QrSFc1bGlzZXZVbGNjdzJIMG9OcVZq?=
 =?utf-8?B?SjdFS2JsbUxsYy84N1FKczJrZTJaOXJCNnVONkNVM1QyVW5DaWhEK0VxcFBY?=
 =?utf-8?B?dWVhbFN1ZWpRTzhFQzJ0R3ZZUW5TczNRQ0o2dllvUEhYVW9QZEoyUUdianpm?=
 =?utf-8?B?QndEYXBodjJIbVhyWEQvTm9ZVlRSdWZvVFZIYmZrbk5BOGlGZ1R6MmVmUjV4?=
 =?utf-8?B?dG8xY3NNTk1MWlJhSkM4UXBJbFZuWXFjWXVkM3F5ZldvUmpZN2lxei9BVXRD?=
 =?utf-8?B?YjEraGJmRDhjNjQ2NEQ4Mk9UR3RlMWgvdHhJY0ZYOUc5M1hCY1RlMWszMjZT?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28e3cc42-ea27-4be7-937f-08dadf8cb358
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2022 17:41:02.5250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gfX91E9gVxoJP1FQl/UdB8qjuQe4tNNLHihT3R5vfQFV0cAK1HjV2HAz8VIH3Kt4I07MzygiIG6aBfH5cwGVhaJAoCA2h+D941ecUjMA4dg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6507
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671212530; x=1702748530;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8oumhA+fd1tTZ4WnkRdT5CkAT4Zusx2i4oEiq7BkpKI=;
 b=Po8yyU9S86QxZrqq70zB6ftDKZf2zhejUHbTH5tcx8v1fBQycHkJDFnL
 bngfd/qI2BixwMaI3NSrGT6b8Yo8Gr47BrMm8H/v7WQNydEniYgoIVgPz
 uyXR68Y71jBOBEQCM/PfiM08ee6UiIl6DYT+VQyutbXMVIXQB/LCnIVu6
 N+XpUeAg6E4ia/7XLeHrVEbzwF9wd8TBVTohKx0aHyhJw0ZnSgGu+g0z3
 NFLSb9Wg2Bcei7Ws5IsbM2Tw6b+B4iGUpH9q7USaG9hHs6z7ab1YMickO
 pkdhTFTRvKoAWdpqFqo3jrdqTC0qSC4D1+T0c9nGK3JjXDvnnLX/PSsXd
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Po8yyU9S
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [need help]after insmod Ice.ko message show A
 parallel fault was detected which port unlink.intel E810 2 port card
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvMTIvMjAyMiA0OjM5IEFNLCBzaGVuc29uZ2ppZS5zaCB3cm90ZToKPiBbNjAxNjE4Ljc4
MTc3OF0gaWNlIDAwMDA6MTc6MDAuMcKgQSBwYXJhbGxlbCBmYXVsdCB3YXMgZGV0ZWN0ZWQKPiBQ
b3NzaWJsZSBTb2x1dGlvbjogQ2hlY2sgbGluayBwYXJ0bmVyIGNvbm5lY3Rpb24gYW5kIGNvbmZp
Z3VyYXRpb2wKPiBQb3J0IE11bWJlcjogMQo+IEFwYXJhbGxlbCBmYXVsdCB3YXMgZGV0ZWN0ZWQK
PiBQb3NzaWJsZSBTb2x1dGlvbjogQ2hlY2sgbGluayBwYXJ0bmVyIGNvbm5lY3Rpb24gYW5kIGNv
bmZpZ3VyYXRpb3IKPiBQYXJ0IE51bWJlcjoxCgpIZWxsbywgc29ycnkgZm9yIHRoZSBkZWxheSBp
biByZXBseWluZy4gVGhpcyBtZXNzYWdlIGluZGljYXRlcyB0aGF0IHlvdXIgCmNhcmQgaXMgaGF2
aW5nIHRyb3VibGUgbGlua2luZyB3aXRoIHRoZSByZW1vdGUgbGluayBwYXJ0bmVyLCB0aGlzIGNv
dWxkIApiZSBkdWUgdG8gdGhlIGNhYmxlIHlvdSdyZSB1c2luZyBvciBkdWUgdG8geW91ciBsaW5r
IHBhcnRuZXIgb3IgbGluayAKcGFydG5lciBzZXR0aW5ncy4gSGF2ZSB5b3UgdHJpZWQgYSBkaWZm
ZXJlbnQgY2FibGUgb3IgbGluayBwYXJ0bmVyPwoKV2hhdCBraW5kIG9mIGRldmljZSAvIGJyYW5k
IGlzIHlvdXIgbGluayBwYXJ0bmVyPwpJcyBpdCBhIHN3aXRjaD8KRG9lcyBpdCBoYXZlIGFueSBs
b2dzIHNheWluZyB3aGF0J3Mgd3Jvbmc/CldoYXQgc3BlZWQgaXMgeW91ciBkZXZpY2UgYW5kIHN3
aXRjaCBwb3J0IHNldCB0bz8KCnBsZWFzZSBpbmNsdWRlIGV0aHRvb2wgLW0gZXRoMCBvdXRwdXQg
b24geW91ciBkZXZpY2UuIEFjdHVhbGx5IHBsZWFzZSAKaW5jbHVkZSBhbGwgdGhlIHRyb3VibGVz
aG9vdGluZyBpbmZvLgoKZXRodG9vbCAtaQpldGh0b29sIC1TCmRldmxpbmsgZGV2IGluZm8KdW5h
bWUgLXIKZnVsbCBkbWVzZyBmcm9tIGJvb3QuCgpUaGlzIGluZm8gY2FuIGJlIGF0dGFjaGVkIHRv
IGEgYnVnIHJlcG9ydCBhdCBlMTAwMC5zb3VyY2Vmb3JnZS5uZXQgb3IgCnlvdSBjYW4gZW1haWwg
aXQuCgpKZXNzZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
