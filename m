Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4588557D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 00:57:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 484CB82D07;
	Wed, 14 Feb 2024 23:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y25j5hKugEWu; Wed, 14 Feb 2024 23:57:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62A848244D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707955065;
	bh=QF1xAdBxpN7bEnlyFoFAlvc/N5Qp7f+V29j0axmsZH4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BYrDgY4kXphSUeJB99qf2v8k51coA7X/zfxUJqMdHD678a28zAQXoe7X1OaRnI66E
	 ACktmKo60dHIAoRb1S2MSUM2EWEWVA3kfRm0r21a5ydy+djDfmSysnx3hx/petVay/
	 /POH7kQPxyBSaIO7+RD2uVteSFH7WIYFdxyRXFF4lXRoAjajhNvSlgOcmRQsNnL+DW
	 HDXFugRTIldtDhOgUkfPo0wBwKYjf6iZyK7I9vaPRIlkAVl+FgmKcLjnz0PA626I69
	 qg9WVfUsWBJCAwCy5sTXehU7H/7GbWIEtayYsElAy90u40XzgxOGX4444CFQyFAlRd
	 DJqg6NbHU4AjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62A848244D;
	Wed, 14 Feb 2024 23:57:45 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 673381BF3C0
 for <intel-wired-lan@osuosl.org>; Wed, 14 Feb 2024 23:57:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 527246071B
 for <intel-wired-lan@osuosl.org>; Wed, 14 Feb 2024 23:57:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z9iAeG8CcaBK for <intel-wired-lan@osuosl.org>;
 Wed, 14 Feb 2024 23:57:41 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 14 Feb 2024 23:57:41 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E8E46070D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E8E46070D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E8E46070D
 for <intel-wired-lan@osuosl.org>; Wed, 14 Feb 2024 23:57:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="1906296"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="1906296"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 15:50:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="3431695"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 15:50:30 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 15:50:29 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 15:50:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 15:50:29 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 15:50:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NLq4vCKBwzoixwS2c34lLWMh3/HcQKQpx6wLs5rOkNq03M0zTnsxUEKpe+Z6vQ+4L6DJhbr/mY9XsYNTXZQmx/LlVNZxlsITWruXE0wkDoKADmAdim3UDRLp3kAUjJMraUiFG6bdIjhOWmXlINxuTSbGKhzEyTm2TcX0UGGJRnMn7IxErqYMY63XBKV6huojPWQXz8tdusHvMc+TgvV4iQsTb71aMXhjt68RJZnQzMP1MaczcCcfGgg+yXIMZJ+3w6jmKCIcL0h5mAkvaH95JZM+KQ0Bz9gzXS5cvsoBaoP9LxXFi1TMAT2R+Hrz3eoEaSE21Nb8zWcZAeRfz+l1Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QF1xAdBxpN7bEnlyFoFAlvc/N5Qp7f+V29j0axmsZH4=;
 b=H2oPaCAu33vE4fsgP9OibwvQYXK3IMPBsICTfX2DoWqQlXYgsmGAL0s7DtfjmbZF2U8+NznySRPw4TEiADrwKRqpylC8TMG7dvHXZq0EuS977wyYcPSc4bJv/TIZJlrRziPD3sO91ciMGQKKqktkr9YUFzDrRccwwVm8cu/xRq0x2+WVQsok5JV4dD9yo2TsMHfEOw67EhX0FLtrf2yOAtxrC8gk0KlDenPge3387kjFTvjQLN3YZ60USfGqsv3NaMDQDKzcn2msWIhUUW6P+crqWhygIyes9tBuP07/6s3SNgawtYZ/agD1FYRpJROznLl5N5xs+jtt5bFYs1fqwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4765.namprd11.prod.outlook.com (2603:10b6:806:9b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26; Wed, 14 Feb
 2024 23:50:26 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 23:50:26 +0000
Message-ID: <8733caf1-c35c-4600-b16b-750f1df95129@intel.com>
Date: Wed, 14 Feb 2024 15:50:23 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20240212110307.12704-1-lukasz.plachno@intel.com>
 <20240212110307.12704-3-lukasz.plachno@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240212110307.12704-3-lukasz.plachno@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0233.namprd03.prod.outlook.com
 (2603:10b6:303:b9::28) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4765:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e5308cd-8c46-445c-b73b-08dc2db7b7a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MWB1Z5VgYF7LrA/y53mM5KLKIHbfnhHyt3HkpZmpF+FqaxmN+6X6WO0ljOtusRwnssR1HLmvhis0arnoSRwN54Kw9SqGH9iCl5Hzifm+GbuRIznRTFI30vUSracj/vPMyS8M2/SelmlusaBASTbwe/vl3KaeINF32CxGhtfM6jJNLpYhhKgHHZ0FsM1SwZ3YX4sQus6DXQk6Hs4PRjPjOnl+Yogz6pkD/0w93DWaHU3ZsvTC+DQjGHraC2Umm8rJcfdwI3Wj1qdn+n8LgOP8MSGlPfn3DmH7Pp/wg7TPjuYFh3/HFAacSmL08KqHoEAdi+g2EgNAl5bvieCIisnfp6PvWQoLTZkUvDC+5nBvNyqpc8pcV/r51ox0X3BJ2kaHpjztWreHVNcbIaYU94npWyXl38riNXyjffFJxfAsRj0zKg2xoHItztWnDkRlgy3LcAU1NozyZL4Oe0d0STRCNPwsSSkFNyelO5Z8pzLElFHuDBLUXu0JfrKCJj6y5HQHG3999wADrQ1Ugxz3A+b8HR9P4IQ6HtzGwDLtFAuzFut1G2bBKUHaP83VNvE/62Pq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(136003)(366004)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(31686004)(82960400001)(2906002)(38100700002)(5660300002)(2616005)(26005)(316002)(8676002)(6666004)(66556008)(66946007)(8936002)(66476007)(6916009)(6512007)(6506007)(6486002)(478600001)(53546011)(41300700001)(83380400001)(36756003)(31696002)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wmhqd1k4WFZEQjQ0RWRXZDBLdisxY05XYTA2UldncTN4OUxLMElPSU1jL3N1?=
 =?utf-8?B?aUJOakpHVlRORUlkQnpUSVNxajArOU9na0JRZ1hnVjdoSGVwYjU2VzRETk1H?=
 =?utf-8?B?RHBvaFFFK05QNDBHVUNMeFAydWNLSkJodFpYV3dWTkI3YW9rY0VScVg5YjdP?=
 =?utf-8?B?ZmpLMEgzVkhMK3R1L1FjWXFmV3lyZkFTdE5ibWFsTStJZGt5Q2xRNlVjRlBV?=
 =?utf-8?B?T21DNFNlOXNka3NwS2xGalFDbHVtR1NZMGJ0MGIyb0ZUOTNYR2FrbjhDSHR1?=
 =?utf-8?B?VnpnTTZwU2c2M094NWY4bUh2RWZMNWNLQ2I0a20ra2tKTUV1c1N4bkZHM3pt?=
 =?utf-8?B?aUJqZVJNR0djajNPRThkSEtwZDUvMVhzMGhKTytwVFhaNzQ1ZEt3MndvWXRQ?=
 =?utf-8?B?SENxMHloWmpSUW5vWDhtWU05MWFTYmFCN00vU1NOMG9WUG9RUU0ra0ZETEFj?=
 =?utf-8?B?ZTlPU2x3cWI1dHE3S1o5bkpFWEMrcnllSzBhVy9IVWpPUXk1NXdHOVlZWVYz?=
 =?utf-8?B?Zlh5cTkvRlZSak0zUXNUa1VDS1dKRDUxczd0QzJrMnZtUzlzWWRxQU5LWGl0?=
 =?utf-8?B?Ri9NbmVNOWsyTkQrTUhUdys3WUhTeVhxMlI5MW95QlFyVEM0NWhwdkt1dlVL?=
 =?utf-8?B?NUVwRTdONjdPTTlvS0NKaDNFWTRwdWNNT0VkZ2ZScDNHVWdtcCtWZ3dLNFpW?=
 =?utf-8?B?cmF0Rk92eVVzQ1V2YkNNdExGdkw1NUNXcU5FTmF0Tk9sSlpsNjRXL1k5UldQ?=
 =?utf-8?B?T0htZmlxYTE1T2IzYXFPa25TTUJvK2hGUUhsdnEwZytjcTZDcTlndFU4SlVt?=
 =?utf-8?B?L05TdGNNWVhya1JPRkNuNGgvS0REQTBIVzREeTRYS1NiVzE1VHZqbm1laDF1?=
 =?utf-8?B?bHJ3WTlOMzZRdzE4cnRCUTB0NU56NDdZYXNCWm1yTDNxUVNhalNTNDlXMzNX?=
 =?utf-8?B?U0t6cmI3cmVYenAyL01xYTR0c1M5amhheENycDdWYzJZUmZWVnE5dCtpY0or?=
 =?utf-8?B?Ky92OXpjbkdISXppWG5rUlJrYXpwcDhsWDFVb3drOEZINWZqSXRpbk16cDlo?=
 =?utf-8?B?bWdDSll6anRYMEpRRHdEK0lST0J6cVRCY1JwT0h6ZVljVVBDRDB2TWdJRnVQ?=
 =?utf-8?B?cGNHTFlYUjlmVWUxMXYyUk5PRzlOeTRLYWU5R2J6djNKanhRbnJMdFc5NXh4?=
 =?utf-8?B?SFlxR2NvcWQ2U3NPWjI5aitIZng2MDY4aDB5WHMvWk5zNEQxb0RnbVJtalZz?=
 =?utf-8?B?a3k1eDlLTU5WL3NXeTJCSXJBNjlHSkhYd1ZYMS9HM29iK3hDMjNvZlJpMTZ4?=
 =?utf-8?B?dFJuZGdkeHFxajZhcjJEYUR4L255MnZvNDVldUZuOXl1UjlaUFh5YXBtdUtG?=
 =?utf-8?B?QTJzNnBTd082MnZVOGUxRjJ2MU83TEVqVnVEcEFNQWszeXZTYU5vVWZYV3RP?=
 =?utf-8?B?UVB1RDQ4bVMyNmIzK3Rkejk1cldFc3RTRDMraVBoZ3hIOVhlNU1pWGRpR05R?=
 =?utf-8?B?ei9JR05TbCsrUnM1WmVkVXpCaHhjQXQrNXMvdTVHSkFNNjRFV042NEpoYmpK?=
 =?utf-8?B?eHkzWUQxYXU1REtHWnRZWWgveXVHRlFKUDBUVkhkVzZjV0xqUGlSUm9JclFs?=
 =?utf-8?B?SHNHcy9EWWRIcTdUTlpTOHVDRzBBN2xodVdMK3dHbEloNUZleXZQMGJNNFFK?=
 =?utf-8?B?SUtKMTg4akovcm1rOTRRWmJYRE1rOXNZejM1YmZVUWlyTm16WmZKODcyUXM4?=
 =?utf-8?B?WXJ2WTdGVys1MWZiZnJtajViZXdqUGVaa1lBSXBpZjVjZDlSU2FZNUJaa0Qx?=
 =?utf-8?B?WitYLzlDNHVFTVhJS2EzZDExeEhycHZYWHlSU0ZyMkNtblpmSklwR2RwMHZW?=
 =?utf-8?B?MDlLdksvNEZ4dUNBNXJsQndsb1grc0ZNQ3pWT0N5R0VlblE0bSt1aTlBU2pQ?=
 =?utf-8?B?OWIwZWJXSStOMlJHclNLVW5weFhLQzBteUpJT1cxU1NBclFFM2pwd0hWVFpx?=
 =?utf-8?B?MzhKcWVJUGpYbXgySGxtM3pEZEl2Z1d3TEMvcDNxSUZ2R3Y1ejRuZFR4QWxQ?=
 =?utf-8?B?K29MeFJZcmVVRzd0RFo5Vm5TWlk3SmRMVTl2a0l3WmlVVzdPTGt4Yk5tRnVK?=
 =?utf-8?B?MGsyQ294SjhjYlk5RWlyU1h3VkJ3OHROVmVPYU5Ueno3U1luZ014dU1sYXg4?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e5308cd-8c46-445c-b73b-08dc2db7b7a0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 23:50:26.3506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zUL0m0FJWgk72kBmbdNqcT1bFWeriZs2yA7SwtIjIenQHlkfhiXHEvIxG+i7YxZ+GdSLS7VHHk0XZ+2hCJP2iz8j6cfEDE93qHYaJ4e3ayQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4765
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707955061; x=1739491061;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ltkejoFsZJq+GIaPmJK5HYoh5OC3ukOkp6y4qvJeByA=;
 b=PwVUDUmToNKMobN02hXB1H/hDp3L2a1F8G6xrht5vwoPxFab5pQcQaf6
 tBuA+yluPWw/Mu34rS38rwRxGeDe39bSxPX/OccDLhNF9Rh+zOKFBfGGa
 qr53PWktMF0F4CJLEwklRy3s5Lm7rAiwm1Vz0tmbuheE1dKnMox9AISd1
 bAg9uO6/9jk6ICyoy+28SPR98+zue5Ggb9ex/ecjkPn2OFaMuk8F995fV
 CnIbJ7RPTxxjwcRuusBHXlnMEwqr2wVNBURUB8FVfBjswju3Rimsi3JtT
 gsXY9LrxIWM7Ggl3yGwhWodDVY3gSMQeFWyVywDwDvZ+zfKUgBhi9WTTq
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PwVUDUmT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 2/2] ice: Implement
 'flow-type ether' rules
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



On 2/12/2024 3:03 AM, Lukasz Plachno wrote:
> From: Jakub Buchocki <jakubx.buchocki@intel.com>
> 
> Add support for 'flow-type ether' Flow Director rules via ethtool.
> 
> Create packet segment info for filter configuration based on ethtool
> command parameters. Reuse infrastructure already created for
> ipv4 and ipv6 flows to convert packet segment into
> extraction sequence, which is later used to program the filter
> inside Flow Director block of the Rx pipeline.
> 
> Rules not containing masks are processed by the Flow Director,
> and support the following set of input parameters in all combinations:
> src, dst, proto, vlan-etype, vlan, action.
> 
> It is possible to specify address mask in ethtool parameters but only
> 00:00:00:00:00 and FF:FF:FF:FF:FF are valid.
> The same applies to proto, vlan-etype and vlan masks:
> only 0x0000 and 0xffff masks are valid.
> 
> Testing:
>   (DUT) iperf3 -s
>   (DUT) ethtool -U ens785f0np0 flow-type ether dst <ens785f0np0 mac> \
>         action 10
>   (DUT) watch 'ethtool -S ens785f0np0 | grep rx_queue'
>   (LP)  iperf3 -c ${DUT_IP}
> 
>   Counters increase only for:
>     'rx_queue_10_packets'
>     'rx_queue_10_bytes'
> 
> Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
> Co-developed-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
