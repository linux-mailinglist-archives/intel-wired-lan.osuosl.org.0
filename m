Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 467BB901F22
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 12:20:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D910240640;
	Mon, 10 Jun 2024 10:20:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VZTe3NjMFnfP; Mon, 10 Jun 2024 10:20:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C246408EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718014814;
	bh=z0uiGA+IDjkhUjhqLJDveRCDSDIvj0YWR0KzhSwb57o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sOgAxpdBapp9Kdp2p4v9uzeBUXa5H+mpfdEPmlo/u+yxJJ6KZcSI7Eam9hgaCyWET
	 pX4Jic1kgoqLF+4CsQZodzOeP2uteQcR97aWh9ycrTPG1DPlXB52talPZm0nMvNUTc
	 uvrnKrFKNd9ziywsyhPxGfuQrhBZnBZWQ4RqCUbDw+NZVb9rEdikg6cZSnapbPp1fF
	 sYCoK4hMA3Y7UNhQ6K2ECqzyiuYzFzUpZhHdRJnS8P0HLO92PlyYrTtvq+5fxPDes2
	 lquxnbhPzMslBBJ28fYKb7uygvMZhkHvfi445L/MjBKIrzTW/6laARAK6aKnJNmcNY
	 fJS1l1GynVLPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C246408EA;
	Mon, 10 Jun 2024 10:20:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA8151BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9739C607D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:20:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xsv8IHhfjgBF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 10:20:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7624D607D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7624D607D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7624D607D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:20:11 +0000 (UTC)
X-CSE-ConnectionGUID: dm+kovaoT/yaaZp0ZqRSCw==
X-CSE-MsgGUID: 3oU3BDIkT2OF9n2Haih0TQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="25285862"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="25285862"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 03:20:11 -0700
X-CSE-ConnectionGUID: f2dIAjc5Rpmv7SLhMxXOAA==
X-CSE-MsgGUID: UJaWlHYlS8Kxm1APIfS15Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39140304"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 03:20:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 03:20:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 03:20:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 03:20:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 03:20:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q2CT4g+icZoB9BUYvCdiSHiSOdrpdDfXgroOqoKwVgRJhbAT/5vb4wJD4qOuCqnO/7YjjDA9OH4wk5iFdi6RxkI3sDRHCjJ0gTXMWTIIl4BvCmfqDwBEG0MrELX4xQna0FJVv8jFfPhSZAIPegdPVpbF6NKvx+1NssTOOOJFhIWcLU96VuI/XpbilFKFKeh7bNlbrAYFbAAjTv2ZbhDxzNzP85bQ8kpO/4vOuKJseoQ5qxJJLuaJ7CqGhPBHZh6nxxQwlDmT4rFo03jNYzrfosuRtk2SwR8r/zN36iZ5Cc+S6f+DbY8QnNH8+9H3/EqtzAfGvIjqBP0xUOfDqpl7yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z0uiGA+IDjkhUjhqLJDveRCDSDIvj0YWR0KzhSwb57o=;
 b=IkY11nncKSdUDB2dgn7DreLB/dSyD2rlFMYBcO79RMcgKKnlsl/NnUhN7pD+nmP/XbTUrcSt8XcbfulUi7j0zQLBlMBkUurXEVLIRogrSnFeicQn5yy1Ithtu2EJrG5nRwCz8sI4HrRg+YPJwLgCk8HxcvtBmqGLbtyEplKNJbsbjGD4efQ3ug7bBuDZ6EbsaGyIOG9Sd1D9ff5ft3zejADXay7r9cI+OmqzxkkoZgmNhEij9qXqQvSq2muHsXJb9z/gEIbcw3mCQB0L+DTMVjAZMriaKzvF1fY7qIjq8V73y9aet7tIcAIbGGkjZA9OR3ldquuvcjjpD9Uoc/cu7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by DM4PR11MB5972.namprd11.prod.outlook.com (2603:10b6:8:5f::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.21; Mon, 10 Jun 2024 10:20:07 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 10:20:07 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, "Kang, Kelvin" <kelvin.kang@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
Thread-Index: AQHauxePZUIIvyLVckGO394neDxrc7HAv52AgAAHF5CAAAE3YIAAAMAA
Date: Mon, 10 Jun 2024 10:20:07 +0000
Message-ID: <SJ0PR11MB58660E94611961DC52634069E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240610092051.2030587-1-aleksandr.loktionov@intel.com>
 <a2ad5189-10d1-4e6b-8509-b1ce4e1e7526@molgen.mpg.de>
 <SJ0PR11MB5866360BDA97A03298A4A637E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <SJ0PR11MB5866699ABC33C1DDCD86A3D7E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB5866699ABC33C1DDCD86A3D7E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|DM4PR11MB5972:EE_
x-ms-office365-filtering-correlation-id: 2e523ca1-e776-4851-9e68-08dc8936e6e9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?QUdwME5rMGhUTDNWUTNINU5Va01SeGdyTmIxTnE0TVJJSU5rbHo0a1g3Rkg5?=
 =?utf-8?B?UmZLQm9xU1RrTlMvTlUzZkxnMjFZeFdvckdjdEhDTW00eHphamQySVlGempN?=
 =?utf-8?B?TW1FekxxMHZFQmErbHVUcHJ0TkpERHFIeWJtVVNYQjRKSnhNbld6WUs4dE1I?=
 =?utf-8?B?THIwUHRQc3JuU3pRRmkrL1FWM293TkFweTg4dUhPY3hPK0pMYWE3U0JjQTBB?=
 =?utf-8?B?UnNjOG9qNVpPTCtJUXRvUHdITmVBYXlLNTJJYklhaWY2WWJhV3AzZFZ2cWZu?=
 =?utf-8?B?b0pkY2xob2N6dFk3NTAzWlNGZzV6ZU03eUpLUzQzZTdBWExYV0tnZVlzeVF6?=
 =?utf-8?B?QWNwUXZ2S0tzaWlCdTZjSDRKcUhmcStDN1lpTTVxQ1lnMzVCeWJ5cnV1a01J?=
 =?utf-8?B?YzdaR1ByUXNMbWx0anRXVWFEZGQ2K2x1WFpKUjdzUFpaSHNkREhPQ1RpUnA2?=
 =?utf-8?B?eFBqVFlTZ1NJNDlRNCtlQVE1NnZoUEcyMk9oMUNyN3haRlVSeVlIL3U2ZTNh?=
 =?utf-8?B?YjBUWXBYYXJHZ0hja1hPQnhPQnl5bklra25CWnBOcWc1TW5tNVJHcHR0T3Ji?=
 =?utf-8?B?YjZHSEcycXZpSlFPV2hLZkFHL1RCb1NsTVFwS09zY1JnMUJ6Y3YwWmdXSmRs?=
 =?utf-8?B?Q3hobm5PeDlvYnJSR01TRmh0SFhBaGpKTktMY0IyVXBVK0xma25HaWwzY1RZ?=
 =?utf-8?B?WEI2Zm1wbWp2ekc1TndJOEFieWZjOTFic3RHaHlwR1laR1lPVHlCNGIrVGZQ?=
 =?utf-8?B?RlJKVmRocXRzRUl1aVJVcE5KU0IxWmdxdldGTEQvcVRuZkRtb3VvWTE2MjFV?=
 =?utf-8?B?bW5aSEdteVFEaitPbEdzZjhTZEE2V3BYOG0xU1Q4dEtiMEZCM1YwY0liWFJ2?=
 =?utf-8?B?bjJMUjhGNWlyZVRIQU5NNi9JeHpOdkhFYkNiY1l3eXliTEdlazcrc3lPYWtT?=
 =?utf-8?B?SkV6U3l2Y0h6MTQ5enRESUUwRExweHFxYVY1cGkxaHNaMjdmUW0xM1JEN1RQ?=
 =?utf-8?B?MHNyR0hscTBvSDNOb3Jwd0JwbE9jZStHNUNSbUtZdHFFZExMbXh5bW1NcDZw?=
 =?utf-8?B?Tms0NlZDcUVNNFVQeE9NNzF2VFROa1IxdUhDWE5BUFBYNGN6VlRkTlE2Zlk5?=
 =?utf-8?B?WUZUbDY1ZmdDNjYxMTVlK0NxWjlnbnFCQ0lqWXlXZWlEbHl4STNNNjhUQnE5?=
 =?utf-8?B?N1Zpa0FIRkwvU1UvTmpPNFFMT0s5VkZoaTBuL1hQQzdCcmdCM1Z0aUg2SGJR?=
 =?utf-8?B?cU9ndy9Jb21yZUVpaEZvaEtlbTB4UHdqMHBXLzZ2QnplWEduMlBjWW1YY29k?=
 =?utf-8?B?dkt1eEgwUVg5UWNXdXpqQkkyNW83S2xoVzBkbk91OFpxK1V6TmdmREQwdDcx?=
 =?utf-8?B?V2t5bXpjVWtaWW9TSGtlMUJKVUdLT052aVBYUGhmY01nZ3dra1NXaENXY3Uz?=
 =?utf-8?B?d0pWNzFSWWlPWTlxZDcvYkY5ZlF1QzkrSGs4SkhpWnpsQmVnZitXK050aDhj?=
 =?utf-8?B?eTRVVHcxNDN3WllJRkQ1RFRZdm5iVk1SdS9ieEdEa2E4eWpIUzIvNmlSdVI0?=
 =?utf-8?B?RWNjblFFc1F4TnNYTzQ1eXplRk1xV1pBUVlSQ3drMEZoVFpCb1FWQmp3dVhZ?=
 =?utf-8?B?VWIrbk01OFFJT0tScVhxOWluTTBXZ0pKSm84SkZyVmhhR2g2M0hRbUliUFB2?=
 =?utf-8?B?dFlhdU4xUVJTay9RV0lUblZrQ2cxUTR6bGVZUmNNdXcva3djRENRQ1dPQklT?=
 =?utf-8?B?WDlYTWxtbUxrbEc4dWFGU09vUVJCVVQrR0twNUdJSUx6UXV0S1cxbEtIUXM3?=
 =?utf-8?Q?1DaVRHxYsCoP1siBuv+ueOcyLEbikA1mY1Lro=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Rk1WU3NYU3FENVloSnJMRWI1QmdBSndjL3BTcjFVOHV6bURTU1kzRGhTWUQz?=
 =?utf-8?B?WnlrRCsrVlZSN25tUkNSMDBKMU4wUlhMdVluYkxPOG5TMjhRem5pakNYeGFt?=
 =?utf-8?B?b3Zib0N5WmlYQy9xU1RGOThzMDZ1R1AvaFRkYWlvUE9xRksrc2I5dTh1NDVY?=
 =?utf-8?B?RmFoV0ZaMFdad29yaXlHWTNWdEVuMmRleWphUEdaZGJJelZrL3RrYy9hZFIr?=
 =?utf-8?B?UUU0QlF3aFVycE0vbDhNcVM5QmlZSDJYMmdxMUdNUFhabENMTDhzUm4vN3I4?=
 =?utf-8?B?MlNFUmx5dUFvRURYSFo1d0FqUElmMDBUb21xc2RKZkQzaCs0dkE0ZnBjWTFw?=
 =?utf-8?B?dFdCMktaMURNSCs3cG9uemwxWmZYVkI3L2x3QU51dEtTTVpRa1c5dGJEenBj?=
 =?utf-8?B?L2pJVWxZZ1NsbTV6WmlRdmV5ZkVweVZTcHMyUUZJMmdqZ3ByYmdvS2tXZUo2?=
 =?utf-8?B?V21Wd0xLemFGdVQrYTA0NmNHSU4wTDlaczRnQmxLNThxQk5iTWozWWFGN0Js?=
 =?utf-8?B?a0JzYjJFTEtsZG1vYnBueDZvZjczcGUzdHo0V3hock41dFoxS0ZlNnBPWHpj?=
 =?utf-8?B?N0NpSjFoWWlOeVZtOTJMbG5ObTdhUG9tUTN3MlJjenAra0lwakxISnVETm01?=
 =?utf-8?B?SU1kZUhKV0drd01jcmxGR1FaMUsvY2ZBOFpjcm9YNzk5bGFTZVZSbGxNZXVL?=
 =?utf-8?B?blhheCtvV3F3MU5JQjkwa3JqV2ZVZ2EwMGlOdmpZTkJFVkI0TzdzN3RxampB?=
 =?utf-8?B?am9KMjYvV2IrM2xwazRac3Fsa0R1RjQvTCtSUTlXN1U0Tk5pSjM3dndkS1BB?=
 =?utf-8?B?c2ZaRExLQ1licUMrNVFqUTU3TVVPQSsxTDhxN3FqZmhOdDBCRitzajcyQmRH?=
 =?utf-8?B?Yms4SlpGYUZjRTQvQ2N6RzNEclp3SkVJVWZvc0huNUh2ekY3TW9HQ0dlMG93?=
 =?utf-8?B?UDFYb0RHcnFFUlRoUDFJc1h1NWk0T1VxbmN4Zng4OUlOemkxRkMzRWlpVTRs?=
 =?utf-8?B?dk8xb0hqaXVuaVVzWmxYdEhKc3JuVjlZbjZRcURnL3ZIUDNhODdIS1Z2N0tB?=
 =?utf-8?B?Q2J3WUd6T1dVQmpLa1ZJL2w0K1BSK1hhb1c0dU44ejgyWnBhWlY2c3Ara0Jn?=
 =?utf-8?B?OW1ubmRIKzFTblBRQjluaTlSRlQzRjZnbGR5QVB0QTVMa0ZWZFZQMDY0ZU8w?=
 =?utf-8?B?OTdrcEE4VWdISm42Tncrd2lkKzUyZVdycklCL2l3WkM5QTRvVWloaHMzVC9q?=
 =?utf-8?B?WG01b3M2b1JTTzU3ZHd0azB5RkJBUER1S1o4NDlDWllibW9KUGt6QzFVOEFB?=
 =?utf-8?B?YkhyKzlPejJhS1VObGVSaGtGQmY5L3ZZTXFLRXJlSkNYUnBSbmtFRnRsZE95?=
 =?utf-8?B?SEhKUjh5S29rR3dXYnpmVWExcWswU205Y2hvU3NOR1Avc2creW96bzRHOFRM?=
 =?utf-8?B?aldyQ0duNnpDTFRpeWZzRjRlN3BZWXIyMk5SSmpYYkE1VEZEbkpaVjdoQThu?=
 =?utf-8?B?ZU51QXRXVDJmWjZ1N0UyRFpoOHIyZHF4REMxaklUelZsbnROb2FsUkMzc1VR?=
 =?utf-8?B?bGF6V21iQytaSlg4Y2hEa2l6ZlJCdStUdm96empuZ2lPT1lpYkthZVRuejNj?=
 =?utf-8?B?Q29ybURFTGhpVkZZUW4vNFp2M1B3VzJGKzcwN0d2K0s4STJMZlJ5K1VNYjVO?=
 =?utf-8?B?R0NOanQvRHBGVC8xbU1EQU1menNVQ0thWllXTFU1blg1Z3dUWXJGZS8xc0hq?=
 =?utf-8?B?bXRpOGc4L3p5S0I3ZDRoNTN6VjhybGp3bnJ3NldYMkw0TDJtUE94bm92TWtC?=
 =?utf-8?B?ckhyOEEwUkpUUnpRa3dlYmdxV3JDYnRXUmZJT0ljWGVFUkp2aHdsTmZ4S3pD?=
 =?utf-8?B?OW0wTHRIdDREMDM2Y3dJZ0JuTlAxbXNuU0ZnL1hlcjVuRFdvOFd3ekFWTHN5?=
 =?utf-8?B?UURhVFdBdHRnUW5KSnlLYVJwYTEzL0ZCczFhT3BVY2dtUDZjUjQyaG1aSWhR?=
 =?utf-8?B?VEJ1WUtGa1ZYa0ExNWhRUjlaV29xbmtrOHJNZUVXdWkxRVQyZDhFTU1uMS9G?=
 =?utf-8?B?ZVVXQ1JLUHRsWEpMYlprY2gzMGJwV3FuUVNtVjVERW05T21pZ2hkeTI1N1lW?=
 =?utf-8?B?UlhXendjNkpxWVlVSUtkU3pJbytnaXJ0bFNHRG10UzB0K1RWV3p2c05vczA0?=
 =?utf-8?B?alE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e523ca1-e776-4851-9e68-08dc8936e6e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2024 10:20:07.4903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U2q3nexi77nSXzRFcnENRvgaGChl/3XOUDP13GoB4lk/y7fmaLHkgQ/eHpPwn1BtVzKpRmxykZJSyp/M/BpTj4YoAz8X4QlrV+HF8YJElSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5972
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718014812; x=1749550812;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z0uiGA+IDjkhUjhqLJDveRCDSDIvj0YWR0KzhSwb57o=;
 b=RXEp1reoYlsDEjE4HwJW5OI+eAZ43j/XkBmFS+EspapQZxcmAiJmj24M
 y1xoACa2UhNbGlpnljA254IX/cs0p0ThwqyOrB19CZqoi9GgeOoe8J8mu
 /6JGOpiAcxPNK9T76KKZnfedFkjYLw1QxkjbGmII+A4EIJL5FWUNfIr+v
 bsBKVBEUjhjpP7DcfQ+q+kKbBiz59lylN+JJu8t/QbgexJswCudP/aTY2
 vBobtYPU9zR5k8resMP12tGbFZwRfDj2Xx2GGnrxgiRqxwPWPsLuaAgHm
 IenDUlH/3ua44MS7vE5V4W+92TPsk80wZ2iG6N0APHmjLV5LU33mFlnoG
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RXEp1reo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Leon Romanovsky <leonro@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbg0KPiBCZWhhbGYgT2YgTG9r
dGlvbm92LCBBbGVrc2FuZHINCj4gU2VudDogTW9uZGF5LCBKdW5lIDEwLCAyMDI0IDEyOjE2IFBN
DQo+IFRvOiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPjsgS2FuZywgS2Vsdmlu
DQo+IDxrZWx2aW4ua2FuZ0BpbnRlbC5jb20+DQo+IENjOiBTb2tvbG93c2tpLCBKYW4gPGphbi5z
b2tvbG93c2tpQGludGVsLmNvbT47DQo+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IEt1YmFsZXdz
a2ksIEFya2FkaXVzeg0KPiA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPjsgTmd1eWVu
LCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQt
bGFuQGxpc3RzLm9zdW9zbC5vcmc7DQo+IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5j
b20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldF0gaTQw
ZTogZml4IGhvdCBpc3N1ZQ0KPiBOVk0gY29udGVudCBpcyBjb3JydXB0ZWQgYWZ0ZXIgbnZtdXBk
YXRlDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9t
OiBMb2t0aW9ub3YsIEFsZWtzYW5kcg0KPiA+IFNlbnQ6IE1vbmRheSwgSnVuZSAxMCwgMjAyNCAx
MjoxNCBQTQ0KPiA+IFRvOiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPjsgS2Fu
ZywgS2VsdmluDQo+ID4gPGtlbHZpbi5rYW5nQGludGVsLmNvbT4NCj4gPiBDYzogaW50ZWwtd2ly
ZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE5ndXllbiwgQW50aG9ueSBMDQo+ID4gPGFudGhvbnku
bC5uZ3V5ZW5AaW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgS3ViYWxld3NraSwN
Cj4gPiBBcmthZGl1c3ogPEFya2FkaXVzei5LdWJhbGV3c2tpQGludGVsLmNvbT47IFNva29sb3dz
a2ksIEphbg0KPiA+IDxqYW4uc29rb2xvd3NraUBpbnRlbC5jb20+OyBMZW9uIFJvbWFub3Zza3kg
PGxlb25yb0BudmlkaWEuY29tPg0KPiA+IFN1YmplY3Q6IFJFOiBbSW50ZWwtd2lyZWQtbGFuXSBb
UEFUQ0ggaXdsLW5ldF0gaTQwZTogZml4IGhvdA0KPiBpc3N1ZSBOVk0NCj4gPiBjb250ZW50IGlz
IGNvcnJ1cHRlZCBhZnRlciBudm11cGRhdGUNCj4gPg0KPiA+DQo+ID4NCj4gPiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xn
ZW4ubXBnLmRlPg0KPiA+ID4gU2VudDogTW9uZGF5LCBKdW5lIDEwLCAyMDI0IDExOjQ1IEFNDQo+
ID4gPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwu
Y29tPjsgS2FuZywNCj4gPiBLZWx2aW4NCj4gPiA+IDxrZWx2aW4ua2FuZ0BpbnRlbC5jb20+DQo+
ID4gPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE5ndXllbiwgQW50aG9u
eSBMDQo+ID4gPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJu
ZWwub3JnOw0KPiBLdWJhbGV3c2tpLA0KPiA+ID4gQXJrYWRpdXN6IDxhcmthZGl1c3oua3ViYWxl
d3NraUBpbnRlbC5jb20+OyBTb2tvbG93c2tpLCBKYW4NCj4gPiA+IDxqYW4uc29rb2xvd3NraUBp
bnRlbC5jb20+OyBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiA+ID4gU3Vi
amVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0XSBpNDBlOiBmaXggaG90
DQo+ID4gaXNzdWUgTlZNDQo+ID4gPiBjb250ZW50IGlzIGNvcnJ1cHRlZCBhZnRlciBudm11cGRh
dGUNCj4gPiA+DQo+ID4gPiBEZWFyIEFsZWtzYW5kciwgZGVhciBLZWx2aW4sDQo+ID4gPg0KPiA+
ID4NCj4gPiA+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4NCj4gPiA+DQo+ID4gPg0KPiA+ID4g
QW0gMTAuMDYuMjQgdW0gMTE6MjAgc2NocmllYiBBbGVrc2FuZHIgTG9rdGlvbm92Og0KPiA+ID4g
PiBBZnRlciAyMzBmM2Q1M2E1NDcgcGF0Y2ggYWxsIEkvTyBlcnJvcnMgYXJlIGJlaW5nIGNvbnZl
cnRlZA0KPiA+IGludG8NCj4gPiA+ID4gRUFHQUlOIHdoaWNoIGxlYWRzIHRvIHJldHJpZXMgdW50
aWwgdGltZW91dCBzbyBudm11cGRhdGUNCj4gPiA+IHNvbWV0aW1lcw0KPiA+ID4gPiBmYWlscyBh
ZnRlciBtb3JlIHRoYW4gMjAgbWludXRlcyENCj4gPiA+ID4NCj4gPiA+ID4gUmVtb3ZlIG1pc2xl
YWRpbmcgRUlPIHRvIEVHQUlOIGNvbnZlcnNpb24gYW5kIHBhc3MgYWxsIGVycm9ycw0KPiA+IGFz
DQo+ID4gPiBpcy4NCj4gPiA+ID4NCj4gPiA+ID4gRml4ZXM6IDIzMGYzZDUzYTU0NyAoImk0MGU6
IHJlbW92ZSBpNDBlX3N0YXR1cyIpDQo+ID4gPg0KPiA+ID4gVGhpcyBjb21taXQgaXMgcHJlc2Vu
dCBzaW5jZSB2Ni42LXJjMSwgcmVsZWFzZWQgU2VwdGVtYmVyIGxhc3QNCj4gPiB5ZWFyDQo+ID4g
PiAoMjAyMykuIFNvIHVudGlsIG5vdywgbm9ib2R5IG5vdGljZWQgdGhpcz8NCj4gPiA+DQo+ID4g
UmVhbGx5LCByZWFsbHkuIFRoZSByZWdyZXNzaW9uIGFmZmVjdHMgdXNlcnMgb25seSB3aGVuIHRo
ZXkNCj4gdXBkYXRlDQo+ID4gRi9XLCBhbmQgbm90IGFsbCBGL1cgYXJlIGFmZmVjdGVkLCBvbmx5
IHRoYXQgZ2VuZXJhdGUgSS9PIGVycm9ycw0KPiB3aGlsZQ0KPiA+IHVwZGF0ZS4NCj4gTm90IGFs
bCB0aGUgY2FyZHMgYXJlIGFmZmVjdGVkLCBidXQgdGhlIGNvbnNlcXVlbmNlcyBhcmUgc2Vyb3Vz
IGFzDQo+IGluIHN1YmouDQo+IA0KPiA+DQo+ID4gPiA+IENvLWRldmVsb3BlZC1ieTogS2Vsdmlu
IEthbmcgPGtlbHZpbi5rYW5nQGludGVsLmNvbT4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogS2Vs
dmluIEthbmcgPGtlbHZpbi5rYW5nQGludGVsLmNvbT4NCj4gPiA+ID4gUmV2aWV3ZWQtYnk6IEFy
a2FkaXVzeiBLdWJhbGV3c2tpDQo+ID4gPiA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29t
Pg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92DQo+ID4gPiA8YWxl
a3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4gPg0KPiA+ID4gUGxlYXNlIGdpdmUgbW9y
ZSBkZXRhaWxzIGFib3V0IHlvdXIgdGVzdCBzZXR1cC4gRm9yIG1lIGl04oCZcw0KPiBhbHNvDQo+
ID4gbm90DQo+ID4gPiBjbGVhciwgaG93IHRoZSBOVk0gY29udGVudCBnZXRzIGNvcnJ1cHRlZCBh
cyBzdGF0ZWQgaW4gdGhlDQo+ID4gPiBzdW1tYXJ5L3RpdGxlLiBDb3VsZCB5b3UgcGxlYXNlIGVs
YWJvcmF0ZSB0aGF0IGluIHRoZSBjb21taXQNCj4gPiBtZXNzYWdlLg0KRm9yIGV4YW1wbGUgWDcx
MERBMiB3aXRoIDB4ODAwMEVDQjcgaXMgYWZmZWN0ZWQsIGJ1dCB0aGVyZSBhcmUgcHJvYmFibHkg
bW9yZS4uLg0KVGhlIGNvcnJ1cHRpb24gaXMgYWxyZWFkeSBkZXNjcmliZWQgLSBiZWNhdXNlIG9m
IHRpbWVvdXQgbnZtdXBkYXRlIHRpbWVvdXRzIGZhaWxpbmcgdG8gdXBkYXRlIE5WTS4gDQoNCj4g
PiA+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV9hZG1pbnEuaCB8IDQgLS0tLQ0KPiA+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGRl
bGV0aW9ucygtKQ0KPiA+ID4gPg0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5oDQo+ID4gPiA+IGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5oDQo+ID4gPiA+IGluZGV4IGVlODZkMmMuLjU1
YjViYjggMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV9hZG1pbnEuaA0KPiA+ID4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfYWRtaW5xLmgNCj4gPiA+ID4gQEAgLTEwOSwxMCArMTA5LDYgQEAgc3RhdGlj
IGlubGluZSBpbnQNCj4gaTQwZV9hcV9yY190b19wb3NpeChpbnQNCj4gPiA+IGFxX3JldCwgaW50
IGFxX3JjKQ0KPiA+ID4gPiAgIAkJLUVGQklHLCAgICAgIC8qIEk0MEVfQVFfUkNfRUZCSUcgKi8N
Cj4gPiA+ID4gICAJfTsNCj4gPiA+ID4NCj4gPiA+ID4gLQkvKiBhcV9yYyBpcyBpbnZhbGlkIGlm
IEFRIHRpbWVkIG91dCAqLw0KPiA+ID4gPiAtCWlmIChhcV9yZXQgPT0gLUVJTykNCj4gPiA+ID4g
LQkJcmV0dXJuIC1FQUdBSU47DQo+ID4gPiA+IC0NCj4gPiA+ID4gICAJaWYgKCEoKHUzMilhcV9y
YyA8IChzaXplb2YoYXFfdG9fcG9zaXgpIC8NCj4gPiA+IHNpemVvZigoYXFfdG9fcG9zaXgpWzBd
KSkpKQ0KPiA+ID4gPiAgIAkJcmV0dXJuIC1FUkFOR0U7DQo+ID4gPg0KPiA+ID4gVGhlIHJlZmVy
ZW5jZWQgY29tbWl0IDIzMGYzZDUzYTU0NyBkb2VzOg0KPiA+ID4NCj4gPiA+IGBgYA0KPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hZG1pbnEu
aA0KPiA+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmgN
Cj4gPiA+IGluZGV4IGVlMzk0YWFjZWY0ZC4uMjY3ZjJlMGEyMWNlIDEwMDY0NA0KPiA+ID4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5oDQo+ID4gPiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmgNCj4gPiA+
IEBAIC01LDcgKzUsNiBAQA0KPiA+ID4gICAjZGVmaW5lIF9JNDBFX0FETUlOUV9IXw0KPiA+ID4N
Cj4gPiA+ICAgI2luY2x1ZGUgImk0MGVfb3NkZXAuaCINCj4gPiA+IC0jaW5jbHVkZSAiaTQwZV9z
dGF0dXMuaCINCj4gPiA+ICAgI2luY2x1ZGUgImk0MGVfYWRtaW5xX2NtZC5oIg0KPiA+ID4NCj4g
PiA+ICAgI2RlZmluZSBJNDBFX0FETUlOUV9ERVNDKFIsIGkpICAgXA0KPiA+ID4gQEAgLTExNyw3
ICsxMTYsNyBAQCBzdGF0aWMgaW5saW5lIGludCBpNDBlX2FxX3JjX3RvX3Bvc2l4KGludA0KPiA+
IGFxX3JldCwNCj4gPiA+IGludCBhcV9yYykNCj4gPiA+ICAgICAgICAgIH07DQo+ID4gPg0KPiA+
ID4gICAgICAgICAgLyogYXFfcmMgaXMgaW52YWxpZCBpZiBBUSB0aW1lZCBvdXQgKi8NCj4gPiA+
IC0gICAgICAgaWYgKGFxX3JldCA9PSBJNDBFX0VSUl9BRE1JTl9RVUVVRV9USU1FT1VUKQ0KPiA+
ID4gKyAgICAgICBpZiAoYXFfcmV0ID09IC1FSU8pDQo+ID4gPiAgICAgICAgICAgICAgICAgIHJl
dHVybiAtRUFHQUlOOw0KPiA+ID4NCj4gPiA+ICAgICAgICAgIGlmICghKCh1MzIpYXFfcmMgPCAo
c2l6ZW9mKGFxX3RvX3Bvc2l4KSAvDQo+ID4gPiBzaXplb2YoKGFxX3RvX3Bvc2l4KVswXSkpKSkN
Cj4gPiA+IGBgYA0KPiA+ID4NCj4gPiA+IFNvIEkgZG8gbm90IHNlZSB5ZXQsIHdoeSByZW1vdmlu
ZyB0aGUgd2hvbGUgaHVuayBpcyB0aGUNCj4gc29sdXRpb24uDQo+ID4gPg0KPiA+ID4NCj4gPiA+
IEtpbmQgcmVnYXJkcywNCj4gPiA+DQo+ID4gPiBQYXVsDQo=
