Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E65F856452
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 14:28:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E9014414CB;
	Thu, 15 Feb 2024 13:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EsI5gElZY6Hn; Thu, 15 Feb 2024 13:28:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE80F41979
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708003700;
	bh=9KME5L2M9Gvm7VF2Nv9byoIqo1j6o9x5WjXEiqj5CFg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KE1+hspcNuZaXHLuhlnZ53O+SF3PuO7KHSdnPcgMDN9ReZHrOuG38ZZPJyPbo8Rrv
	 VEebA4GbTvi/wqvMQRmLMPyKW3KAkHr54z0rcry3+gaUAOxj8xpl62PK5gkraQpW63
	 bNyJfNTvvVCeogSErRJ2fFRAR6zPaFhuFEJIOXyZXftFshij9VKP7TlOVtA4QrRBgS
	 MuvPyzNzWLsUIDL5o8lUEUD+MC+e+y65qaO/n2skD5tHJC7Rqg7e29ZHsI9smls58U
	 sDIi9KaJ3lnJFbNRBAy9F2SU5eUaNMZObfv5CT0t8jSC5G+R3fgwVD85XFOkZtiJqi
	 F7NQNnzxecM7A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE80F41979;
	Thu, 15 Feb 2024 13:28:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A0CB1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 13:28:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7537D83BA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 13:28:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLv601qL3LDL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Feb 2024 13:28:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A89FB83B98
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A89FB83B98
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A89FB83B98
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 13:28:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="5865118"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="5865118"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 05:28:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="3853305"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Feb 2024 05:28:15 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 05:28:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 05:28:14 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 15 Feb 2024 05:28:14 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 15 Feb 2024 05:28:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VjjeGx1+UZrbxUumgT8mpF3wBnOyGjmYW3rjDilR3SUdT7kmYWWaxAHJERmDgb7QrOFaHZ3F2MFvH4SlXyslykxJBhpwapyxq9hisxokyOZg8xTLSjOyja8RLyF5vxE91lfuxgwppL6zNy+N7K4/p3OTKp+o4HIAKge2+rnMpG6PdMUtTKF9HP1RThpRrPLBsYj1xhWpJI1irGe6YM0ujCYwwogCqsAfqJLXnjEAXHhSOOiGXsxSCQZokW4MtGKS6XoCRiZ2nFe5cuOGAVw+4iSJtZcjvF9oKef2MV2RT6Y4qGK/eMdhwpl7zBVbTih4EkZqH4O4ftc7WVQ01QOvKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9KME5L2M9Gvm7VF2Nv9byoIqo1j6o9x5WjXEiqj5CFg=;
 b=AxF+9Pqv8e4c0OXBFB2bEXdcmDIYXOu29mOI7n0JIxOFRLRvJKMcx6xMSP6kHZXNdYFxws9STzd9BVkYrBn+QwpUnn+YlwidtEmmTc58O4V3iNE8l1NwGu5PghAx6zLVRpawM/ap0YmLCgUnuFbIhIyJQjhB96vKj+8sj5b19aUPIHJUcgOrDW7L8vo1i3VLCTRl7R2qlsgwSEoyOo8giAAoFT43g3xP7Qti39ILE3vKAunSOk/9ALKZ1CIRxbB/LsGgo55Giyw6y0+UWdGMkymO8klipg6sOC09dBLPJyl63NwjOF/cx9Tf29e3eFAXDyJ9ZkrmBtd25YvR40t65g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH0PR11MB7493.namprd11.prod.outlook.com (2603:10b6:510:284::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Thu, 15 Feb
 2024 13:28:12 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::c806:4ac2:939:3f6]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::c806:4ac2:939:3f6%6]) with mapi id 15.20.7270.036; Thu, 15 Feb 2024
 13:28:12 +0000
Message-ID: <1c3ad4e7-8a5b-4e31-9c1e-f9256c5abd5b@intel.com>
Date: Thu, 15 Feb 2024 14:28:07 +0100
User-Agent: Mozilla Thunderbird
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
References: <20240208004243.1762223-1-alan.brady@intel.com>
 <2e3001f8-a079-4d44-863f-979baca3b38c@intel.com>
 <dd7247e8-8a1a-4033-9c1e-c52339426b34@intel.com>
 <8fa3c29d-c7d3-421d-b567-e9bf997e6751@intel.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <8fa3c29d-c7d3-421d-b567-e9bf997e6751@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0117.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::15) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH0PR11MB7493:EE_
X-MS-Office365-Filtering-Correlation-Id: 32522821-c2b8-40c8-a22e-08dc2e29f541
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bQmktVjcxzNc3iQLLRfedF7+SbWPBZK0/0JvrDfBRWc3I7wBiMfz2eeR9yNrW/cWYlawOnuaSDMPxFo9K6LMOmjTmHaWnzGY/1MN/y2LkbHwaBN7+b7ySemGhdQ7U4Xa9afnqZZiyknckMDr5mSHNUnVEzvPJDeRZ4IiPXyiEhYw/xPL8Ey2OhNO9RLGni0BYCFT2esAaXyTDSfjT016H21BARqiAgAFQ9btjlAUewkgpHyUEEP8u7SdnOjGwOWKB99LR+aIHlbQpDzNjGQ5C1ViFnmWit6kr4mYkcx5HPFF51NGJVvuxa7S/uDaPx3pH9mAMgfFvhWxyzz67Kjyv0ebVpA9KxnorKK5ieTJ9Bl+vdJ2YRmNhX2pRvAKU2eTJq1h0dszPpdSPVZjk668/6MzJ1psdNbLaBpTImeUZPDAtDWRnMCWwZJEsnh5XQ9MgeTYYPn1KrcuCurReI+4IG16SoulWa0mCTUCpJbC/F3UYkRSD1TIcAS13alXaS0Jvbl+oUsy0lmzQpaGxUJb0CUcORHJ5YVW86bNr7sh6d6HmrvoZHVolH3DSznWUsSS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(136003)(376002)(396003)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(66946007)(37006003)(66476007)(54906003)(66556008)(31686004)(6636002)(316002)(41300700001)(6666004)(2906002)(5660300002)(4326008)(8676002)(36756003)(6862004)(31696002)(8936002)(478600001)(6512007)(6506007)(2616005)(53546011)(86362001)(26005)(82960400001)(6486002)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFFvclFFZ0hlVUI4UUFLT0Y1azhSaTJTbUoyTTMrd0NnWXlRdUhteno2RWpu?=
 =?utf-8?B?TnI3WFhmNVluUEtIWDFZbHY5N0hWUUJMeTQ2R1pFMUwxS3N0c1gzVzhVSGVx?=
 =?utf-8?B?VGdqNGhXWHVhdW9GWkszeGt3QmJUd2pIVlY4dys4V09BWlRybUpBRnhieTg3?=
 =?utf-8?B?V2pkNkVMblNkTlo3WWY4UjZBNXNlOG1hMmo1YkZQcFEvQzVkQkhTTzVVZ3pR?=
 =?utf-8?B?OHcvM2tYcUxDZER2bXZGc2JTcXFNeVdwSXBaZ281eVAzMWxRKzBDbE9vWU8y?=
 =?utf-8?B?WHNoR0p3Tk1OSitlNlJIdUdrMkdVWW5TMmNubmVKc3czQkhrdStBcTJmN2d4?=
 =?utf-8?B?ZUc2eUpReHZlYnY5TDI2TUlMNkpnNU00T0NPb2JIZlZzbHl2WVJaSGQ4MEpD?=
 =?utf-8?B?bGZuc0lxRXN0NmRsUlJwQWhrdm01WWxHVGE5Z1J6ckdONnZDNUlMa3JlRURv?=
 =?utf-8?B?NWYyc2pXeCtQRjhwTTNwSExaMFZRNkRVaTVNV0c0Y05JUDBsa0VoYkdzZTNW?=
 =?utf-8?B?bFlmZkI3bHhFaVUvdTJMTTFiYjlSL2pMTHQ2dFVEa2RjTHFQbHIwZUg4QmFC?=
 =?utf-8?B?Zy9oN3hoVGVzd3VjYU1HV1JrVVBEd0lKRGI1Z2hMNDFNdkF3SUdEc3lXeS9J?=
 =?utf-8?B?bmtrWWlsbU1VTFhHYTFoeVRVS1pYejJETEFESC92a2tONlZCd1hleU4rSjdL?=
 =?utf-8?B?MkhvVk1iZ21oUm4xMWU5RmttQVFQNmUrVHIwWU84dzBmU0Q4M0JPczVsaFB2?=
 =?utf-8?B?NGpJU3J5RXM3ZlNGVGxmWm9aL2Q3SHhLT1lzS2pUNUpmSlNZeFIxU3FiWHNp?=
 =?utf-8?B?LzdSZHc3THF6TmkzTjMwRGhKVkdsYU9yMy84dkQrZllpSTFVUjdYNGNjeENR?=
 =?utf-8?B?MmNrelFlNS9wQjM5Tk84TVFNYk1SemsrNllvRzVDdCsyVTNuV1BadlBWMW92?=
 =?utf-8?B?RjBzYWRiS1d3YldDc0h4SnpETERNcVpldlZXZDlER01ZWEFtRmdYUlhueVBU?=
 =?utf-8?B?Sk1LMDhGa1dCVEJJSzJvY0lVazREc3Z3c0xFTk5nMlJIU2dGUmo2bWVMMW5m?=
 =?utf-8?B?MCtMYm5TK3dKTkd5WDRnKzFhOFBydGdTSklnNzVsaGJ4bkZsQ3R4eHF6ZHNy?=
 =?utf-8?B?aU9oYm1hc2JwVmZ3Y3o0Qm0wb3MzQ1dXSXZDTWtkME5ZSVpBQU0vT3FYd3BS?=
 =?utf-8?B?QVhjUEdoZjBtUnBZb0hPTTVDRDhJcXYzUUxLcUtYTWdrc2dSaXVzd0JKMEIx?=
 =?utf-8?B?bTFWVjRManIreTUyWmZmMlptTnM3QVdtU3JlWVIrV1ZUVUc0RGNIVWZpWXQ2?=
 =?utf-8?B?dlM4UUxCSCsvRjlQeU9MdGNRU3lQbjlVa3hpNGpVd2dJMmF3UGlxRWp5Vm9a?=
 =?utf-8?B?a2h6MktqWm1qY2dMQlpzb0JGajFZT2JMVE5LVnh3YzliQjh6eGJncnh1TEhl?=
 =?utf-8?B?N0pobVBhcTNvVnljNytqck85bGpTR3d6RkI3VUtNZVRYVkREVHVRQWdvQVo3?=
 =?utf-8?B?QkpYdHFqRzBjV1ErLzNqQmNIVnh0REFqMWNPZ2FDbzc1NmZYdG1PRmZQeVBt?=
 =?utf-8?B?YVAyM05SSDUyR0E3YkwrNFdaWmNGRUtFY1lBcWhPS2pOQWtBeUZxVWNnUjgv?=
 =?utf-8?B?M3VHZWVyQWxyMXVvYkt1V3dwelNFSTNmYkplUkhmV0FXMzV1MlZTM2JJQWpa?=
 =?utf-8?B?YS9EdXh0N2JhM2JyZUNqOVl4S1hJUU9Ya3IyTStCdnhFTHk4ZUdCMDl0V2hN?=
 =?utf-8?B?U1YrcHg1c0R2eWVhd1BJcUZGYWZrMFhCWm53YXlvUUl2TFNaN3U5NDdoTEp0?=
 =?utf-8?B?SkhxQkgyOEM0NjlYem43bktkaUpRRHdiU3pKVkxKR2tRRi9LWG90c3pXVEI2?=
 =?utf-8?B?REFYWHI0WjN6YVcrUkYvMkpLYjZ0UmhCalcyekw4ME13S096RjFyci92UUlX?=
 =?utf-8?B?K21wdVN5NG9yM0xLcFNmZVg1NUxxNVFpVjluU28xSHZNR002UHlzQy9zKytX?=
 =?utf-8?B?OHlCL0lMUnZGT2JBMklEUUZUOWozUHFqR1ZKNld6eU9sdjlzOGFtcHFMV2Jm?=
 =?utf-8?B?N2RsNUc1RXIwOFRhWUpNeVJkelNJaDBOREdtMkdKYTlMcW9TYzc4Nm1rYlR3?=
 =?utf-8?B?QjljL3hyWUUxV2RYNE9LbmR0QkcvMi84NHdPcTQzci9odnNaYWwxaUh1Y2R6?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32522821-c2b8-40c8-a22e-08dc2e29f541
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2024 13:28:12.5341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bKM4i3/bc77nPk/v/1Iphf57jijOxbiHY/c9HGedIrXLCxharjEEXvhVa3KTJWEba899GwkithyegOmaascDvwEktIkCjU3zjkpOD1YqiKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7493
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708003696; x=1739539696;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Tr3YGQdciaN5BAbVkU4g7JxOG3vMOj58FtwQxBHloec=;
 b=hZ6lzHkX7oQOVrCybeWHm0PVRPCSO0Xbgh1kJbZ4Y1220DQO2GivCdql
 RtShsNUpVjlcAtYLJtrALQitXCygjED6U5zyw3BisJG7NoxG4zsMhmj9A
 BGctlDo1AxYLi56aTTYZ+K0zlSyChbKNqG5J2rHE/q25PDhDBWwwVkSvK
 u1EnjxDm3pSX+BAKoeb6Sy+PDfU7eQ5zvaE8YSLmcBA51rWujerYLqPHj
 W8elL0UDOhvMdf3igJZ1ziWnlixJ1PmCBToS1rMu7fJ6e7KuSkx9okcqb
 Dqm0tQ6Ps52eO5u752NShlTKdJBfe3ZVaxCF3jM1HnJWQ+OwHVq4O26zY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hZ6lzHkX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1 iwl-net] idpf: disable local BH
 when scheduling napi for marker packets
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Alan Brady <alan.brady@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tantilov, Emil S <emil.s.tantilov@intel.com>
Date: Wed, 14 Feb 2024 07:39:53 -0800

> 
> 
> On 2/14/2024 6:54 AM, Alexander Lobakin wrote:
>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>> Date: Tue, 13 Feb 2024 14:16:47 +0100
>>
>>> From: Alan Brady <alan.brady@intel.com>
>>> Date: Wed,  7 Feb 2024 16:42:43 -0800
>>>
>>>> From: Emil Tantilov <emil.s.tantilov@intel.com>
>>>>
>>>> Fix softirq's not being handled during napi_schedule() call when
>>>> receiving marker packets for queue disable by disabling local bottom
>>>> half.
>>>
>>> BTW, how exactly does this help?
>>>
>>> __napi_schedule() already disables interrupts (local_irq_save()).
>>> napi_schedule_prep() only has READ_ONCE() and other atomic read/write
>>> helpers.
>>>
>>> It's always been safe to call napi_schedule() with enabled BH, so I
>>> don't really understand how this works.
> 
> It's been a while since I debugged this, I'll have to take a look again,
> but its not so much about being safe as it is about making sure the
> marker packets are received in those cases - like ifdown in the trace.
> 
>> This also needs to be dropped from the fixes queue until investigated.
>> For now, it looks like a cheap hack (without the explanation how exactly
>> it does help), not a proper fix.
> 
> It does fix the issue at hand. Looking at the kernel code I see multiple

Sometimes adding debug prints fixes bugs, fixing something doesn't mean
it's the correct way.

> examples of napi_schedule() being wrapped with local_bh_disable/enable,

"Everybody do that" doesn't prove anything until explained how exactly
this helps.

> so this appears to be a common (not uncommon?) technique.
> 
> Thanks,
> Emil
> 
>>
>> Thanks,
>> Olek

Thanks,
Olek
