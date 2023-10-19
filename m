Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E261A7CFFD1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 18:42:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6470C43063;
	Thu, 19 Oct 2023 16:42:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6470C43063
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697733762;
	bh=r3coD9v8FIMtG8ct64+Nb8v/LZhFo4gZCaC9CufFowg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2QXy+1mK4jfiO28b63NG4jgYvN13NL33C+iPxOhkISBFjzasCwjndektFJQt+3Wo2
	 w5WjZbS95HEv5acUbWYV6FazcLuR85RHG/7XgbJ8GO6wPRmvFhREBfmu/5oirkXBMN
	 EEc4uagK5OGkucMHFCYLyVyzDucK7xCwyU5hRzq9/aWhFwswrbQe45lD8XYKtQWPA+
	 IntUCq6vRi2CqaXgPHmLFhn/d01iCr+tdrWuEESfq8RRiVNPmG1wzlUslDMqZBRQry
	 w7w84xW6uWvcORKwlbIryNo+9kKvoJzMqNUFiFTCbTNssOlYPUv+oqylVq+YdE27O7
	 6JVUtUM+yUb+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sPDiJmAtl0Xh; Thu, 19 Oct 2023 16:42:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCB2F4060C;
	Thu, 19 Oct 2023 16:42:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCB2F4060C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09AC11BF27A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:42:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3FBA6FBBF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:42:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3FBA6FBBF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5nHdLcslteGn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 16:42:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 03C6A6FBB3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 16:42:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03C6A6FBB3
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="365652479"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="365652479"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 09:42:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; 
   d="scan'208";a="5043847"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 09:42:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 09:42:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 09:42:31 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 09:42:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aXvWjC4IKKnzW+kHJaOOh0yAHAyjC+YNh/s5yuclVS/CD4DcbkIn7q3wn/dYVlX7cuQphT5AzTRN/XHCdw9M+Z6IQUxoD6PugJBygsl2qLvysFXTauLdGCdPuYVbebz1z59sO2MiCN1//h95VQs6LtiPAwr4WULZ/Md50QyK7YaYL/uiCvdO3wKep+6dvSjIx9rQHMopgeDf4dejuT3w3UiIEBZRR6SacU0Y6K7Jg0aFBXCLIv6SEbu2Jj3AtuHiIdQqMjhRNKKkVvMPLbygbbeoq4uJzOWTZKdkaWrzVMhPfHnCa6a7G06yV1tYsmAmFRsC7bWy3zrhC997cCDBiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mhjuo1Ej8k0eM8AMRs+IRpHIW83KDZmOc4RlE7+E/cY=;
 b=inwnsNxWzaHXfp/+gnW/VBvkG+hEhFTkiY08CSt/nwEdFsJsyudL4gn62g5fWIWljmkVo4JP7wDG1eF6TSq1yeK/zD6OP5NinhdUi+nHs8th8Ge5FxPfnKdWjpWa53y/Sw8cPrJ5vgFC2udqSEtsOxdbArv9xB71L53xS78fgW1oWS4oOKEPrPisw2Ic4CvhtB7KlRsefHls1IGis1xhGEQFeQm/wNfwas8Jby0Od5IzQ4G+cfcqKF6X8CO+OcWUElD9PmN57U6yqhXdcz1NeiJ9yerObiRYFQZUiJR2tUxeJvEMbrwhOX0pjZoCQZrVnuDJn0MXbTB4UUqvLAhPKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BN9PR11MB5339.namprd11.prod.outlook.com (2603:10b6:408:118::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Thu, 19 Oct
 2023 16:42:23 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.022; Thu, 19 Oct 2023
 16:42:23 +0000
Message-ID: <bcf47a78-da23-41d6-b2d6-5df5b5d73e66@intel.com>
Date: Thu, 19 Oct 2023 09:42:20 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20231018163908.40841-1-maciej.fijalkowski@intel.com>
 <17b4725f-b81f-4760-bb90-ac8fa9467227@intel.com> <ZTEcmh2GNi0Ugn3/@boxer>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <ZTEcmh2GNi0Ugn3/@boxer>
X-ClientProxiedBy: MW4PR02CA0028.namprd02.prod.outlook.com
 (2603:10b6:303:16d::7) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BN9PR11MB5339:EE_
X-MS-Office365-Filtering-Correlation-Id: d9691316-4a92-4f24-2489-08dbd0c25e7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EMBqOP55KXzgyYep9vvG+mzhsIvvmEevae54FrgmJR43tmUIeLbyAJNjr5ute4ycePj9NzdoO3BQaqlNRsiypWTFDKatljmrXt0fQYxaMw6zXiugTjl/fxMuxctwYlx7uRiZQM8pAP20ky/CGsmz7w55mEGhUb/eYo5uXOAIZxLiberjOPxMFkZwTI9CwMQzcfKKOxnYpwuYVhCZsXaQcgeUfogvLX8nxSUa9zSWybBS9BzNsTmD+730c9JeX151RDNQOZIzKsAkVYH+IJmQrLrhT8BbQFhZAyQaA2B+kS0/CwZ46mkpyQeEvSksD5Vl3LXqaOyLN/zTxXxxntUc+iIlggSoxBvUch9P7589Iz/HYYwsPPagGej1Ful7VXT7ni6ngh3V2t7HCpLpRgVL7i614F8CjSloVWybd7Da4pxHqLG8DAipVr0ekBqs93IvDMv4csFZyfCwtCOkP4xKe/jK8Wmmx6NqK7WNzJ2g1Yx4UQe2pqqt8RO3CkBlPsovlx0vvoVm5Ot7rEXgSpp1yaQY0qLxqkrgsORg9M+7hJAbMZWrnRAiVi9/nRzQbvEpXpiHZAEWG7C0ntL2Cho+4ZFfJtV6521haBXUEdJiDGfW/uqz+gjH+Ozl64JVq7cTetZxr18+aKNQFQVuB7zjwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(396003)(376002)(346002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(86362001)(66476007)(66946007)(37006003)(66556008)(6636002)(316002)(8676002)(6486002)(478600001)(8936002)(5660300002)(6862004)(36756003)(41300700001)(31696002)(2906002)(4326008)(38100700002)(6506007)(107886003)(2616005)(53546011)(6512007)(83380400001)(26005)(82960400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckdscExvei9nNkk1VVk0VTA4bkZmYjB0T0tTMHZCQ2JybEVnQW9qclJIRkl0?=
 =?utf-8?B?emthZmFvajJPbjg4dG1BclZzekVObnFjd0I4NHhINWRTRWl6U1c5bkNEZVJ5?=
 =?utf-8?B?YnJobGV4RC9PbTU0anNDbkpERUV3cUdVb1F4NGs2MUd3Q3FvTGMwRWVxNkJ2?=
 =?utf-8?B?WjhCSzRGcWZjV2pOMFVUeFFhZm12UkZMN2c1Z2N3Ly9ENXlhc2NnRjhUSHlo?=
 =?utf-8?B?ZEZzVlRNQ1lzK2tqVjNkOEFvOVpWWmxtZkkyaXg5akhFdUhNNVdsWEtZejZT?=
 =?utf-8?B?SjE3L2tXOFN4Q29qZ2JYUUtxcElnVU9CVldjdzhOaWtqWmxaeDZPTVM1TG43?=
 =?utf-8?B?dGZyek5jYjlTNWtiTG1EcWcrQUdSU2N3NjEvTmN4OWRkdFpoYS9zUTRPSmRW?=
 =?utf-8?B?YVEyc2VOSmhUVFZmanlJZWZpalh5RVYyWm5vZTlIQmdJN1AvWk9oTU00YzA5?=
 =?utf-8?B?Qkl2OHNoa2g0VWkrVnFpL3hObzQ3VFh3RjkrVVJ4ZXFYUUtHOWk0MExDRWZU?=
 =?utf-8?B?VEhWWDk3cDZmUGxQNExsT1hKazJoR2tveEdya0F0L2Eva1l2d3RxZFhMUzlJ?=
 =?utf-8?B?TU50aGpLK291OTZaMTRmUTgvTmgySWJRKzZHNEVWcnVINlhkUnlqVzdTbm0x?=
 =?utf-8?B?em5mV1UwR2k2cXNlTGhNa1o1UEh3RmM2bC9XMFpkUTRTZ0xiWEtTSEhQT0Ey?=
 =?utf-8?B?VmpPWHRGU0lBOE90MHp3aXdXUFQzL1AwYjhrZHdEMzgxLzJua3FMWTNLcnJF?=
 =?utf-8?B?UXVmbkc3RXhscDlwbDNhc0ZzYzd4YzQraUh5cmJzekN1Tzh4K1RraStjK01u?=
 =?utf-8?B?eDFFdVAwMUtOcE1hbk5WUGMyS1BJVzljZnd3SlFSdXRQNnQ0N1paWmphcVlP?=
 =?utf-8?B?LzJKeitPMEhpeFJjY2I5SzNLYktYeVA5MDErTERNa0lGZFpzNGYzTlZDem5G?=
 =?utf-8?B?Zi92T3Q1cUdGQmRZV2VFL0p3TzdTbDA5K0dWd01XaWo5M3BoOHcrTEFBWUNH?=
 =?utf-8?B?cEViVExpUTluQXBBM1BndVdUNVZZTHRrUUErZytxWlJVRTd6V3FDZjNhN3lJ?=
 =?utf-8?B?S0lEWXBqUjl5anpFTnc4b0dvR2hQbThBbFVRRWhsYVhyMGIxZlh6aC9VZjc3?=
 =?utf-8?B?MEN5Q1FuSTlNV1o1enlabUI5RVQzSXhldmVGdUxqaW1xVzBPQ2crdUdZK0o4?=
 =?utf-8?B?U1BxZjJSODZKU0NweXhrNXVzdGFSMzFxUkdsVW5SSUJOeHJmS1FHNGc2RUZJ?=
 =?utf-8?B?b0dzOTRXSHZHdExiWDVxY0pKSUtHTTVnazlHNmlmMUhhM0dTQXVnZjdPZ2Fw?=
 =?utf-8?B?RlVhNzFjL0hxbWJnb1ZadzJoR3luYktrMzlOZUJqYnN5dGtUOHBzVE9LQ0hl?=
 =?utf-8?B?andSekVqM3ltb2FWYmRhVjJFUk9wcTU3cXQ4WUo0MmIrdUFVaEh5eXd0R0Nj?=
 =?utf-8?B?aGNFR1FQTU1kWnRUeExFR3JZcHFPM1RuTWxJUGN6YlpIbE5Ma29tS3VhcmI5?=
 =?utf-8?B?aEJ1ZTRCcmhORjUwM3JwekpVMEtMdDV5SjFreTloeW5IZ2FqNDhGSWhDUlRY?=
 =?utf-8?B?ckl3LzB4M1ZIdUtNS2dub3pVc1F1MTYydy8vTG42Vnc5SkF4S045c05lMEkx?=
 =?utf-8?B?b1phM2tmY2J2WTNpeFA1V3hIWmQyNUdDVVU4SUtBRkJCTXU0VUlYUWJobC9p?=
 =?utf-8?B?dVlZMGFOcGI5ZzkvdjVzcGRHVVZwcVYzbFRRRWQrN1ZRN1N6L3RjZDlBK1dN?=
 =?utf-8?B?RFB3YVJkOVlFeHFwdGdkV1VmcFhGKzRFWXpIa2plM0FCQm4vb3ZoS0hPTUpp?=
 =?utf-8?B?WUprVzRkcG1EaTVJaWdOZHVUM1RNWUgxM3FQbllrMzRLdDhMMjNjYUlyckVQ?=
 =?utf-8?B?VlBCejFxNFlFanlJYTdKNFR0ODd3ZmJKMDZCaDFMQTc3V0hnZDJBNjFZSUt1?=
 =?utf-8?B?M1JrN3lSWE5nMUhNVERHTE9zWUxWc1FTait6b1ZnVm5PdHlTcFJocUdnUzlp?=
 =?utf-8?B?NFcva2U0YzlmOUZKbFYrZTdDNmtJSWlUcWpsUjE3Y0p3L3RGYmgvYm5NTGFW?=
 =?utf-8?B?RmQ5SGRKcktKcGI0OTBhYXBWdjRBNzZMR3ZOSXVCSEpZRWFReFJ2WFZ4UjRk?=
 =?utf-8?B?TnFabnpLcVhkc0VpaFRoTk1ZS0JjMFFYOXRsdVUwMVZvd3M3emtwemxCMmY1?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9691316-4a92-4f24-2489-08dbd0c25e7d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 16:42:23.1543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AVSlkiPFMjdoOpWVr1oFKnE9hf/DNyEf7zaPCWLd0a7l/Na9coG8WsWeyco/Mao5WBz9UYvlvpDiPivJkn6YyyBgsNMdC3A2tCE3x26FpHs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5339
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697733754; x=1729269754;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=drI8XTvaV7fk3rFMSIbXvg9nmmCADtfAtm+kzy1Us7c=;
 b=LhekF8ozPhWdYXdyZ0QLno0vOdR0mfDxcLHiUWB0iPTMKBcGgipmny5Q
 qh30PlZS16QnLSsYoQfTXITOVBzljk3tSOSkj0N178SM3idkmuyF0d7Z9
 x+slXmHtWkTlxLpoYm+CoD+2wjALlON0JNvsIKKE8+vpU37CIX/F4T2gO
 vX0TdPX1YWTdiGdylO1fym7zOOEuc0h+JbaWT4VqqdXKsA8uw4ljAThlB
 bNP4NU6RaiH5U18mUsBtXNrSfmP2jjz6NiH+1m4x2jy+scd+qXo4bUhcW
 K75ixaJQqz0jJlIcePywf/aVoMgW7pXF1Iwbxc/KcIsC+u1v5nwrH6xhf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LhekF8oz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: xsk: remove count_mask
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org,
 Tushar Vyavahare <tushar.vyavahare@intel.com>, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/19/2023 5:10 AM, Maciej Fijalkowski wrote:
> On Wed, Oct 18, 2023 at 03:03:13PM -0700, Jacob Keller wrote:
>>
>>
>> On 10/18/2023 9:39 AM, Maciej Fijalkowski wrote:
>>> Cited commit introduced a neat way of updating next_to_clean that does
>>> not require boundary checks on each increment. This was done by masking
>>> the new value with (ring length - 1) mask. Problem is that this is
>>> applicable only for power of 2 ring sizes, for every other size this
>>> assumption can not be made. In turn, it leads to cleaning descriptors
>>> out of order as well as splats:
>>>
>>
>> I assume that since ring size isn't a constant it isn't worth trying to
>> check if power of 2 and then use the shortcut?
> 
> That would kill what we were gaining from that micro optimization (lack of
> branching). I was thinking about INDIRECT_CALL() for ntc update based on
> ring size but I came down to conclusion it would be overengineered.
> 

Right, thats what I imagined as well.

>>
>> What about just enforcing ring size is a power of 2? Any reason not to
>> do that?
> 
> We used to do that on ice but then customers yelled at us that they can't
> use max ring size (8192). I know i40e's max is 4096 which is pow-2 but I
> am not aware of all of the use cases that people have out there.
> 

And we've supported non-power-of-2 sizes for some time. Ok.

Sure, lets take this fix then. How recent was the bug? Looks like v5.12,
so its been a while but the default size is power of 2 so that could
explain why it hasn't been noticed much in the wild. Ok.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
