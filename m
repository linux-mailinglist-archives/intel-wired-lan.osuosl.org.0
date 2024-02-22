Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 314FA860592
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 23:20:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4C2A41DE3;
	Thu, 22 Feb 2024 22:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nvavk2eCurdK; Thu, 22 Feb 2024 22:19:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76CFC41DE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708640399;
	bh=Ktnkrfq4S11msRXe4w/5gG5/aZyCikn0Dhektx0WBb0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RVJ2z3rSJY8x4faQJuKvnQDcSvrBPQNc3XZs4PcUOj9+WLuHdk1Xsl64klJk2R5w/
	 g4kvV9fT5gDUbCWsoVrp1aGlM+akJikF3S/jkN+MTtkXDUL0pwCd9sy0MEGPziTlrH
	 Mw7/cgkzoM/9GC4Srhbei9GF1yDu8u/PRH92PfxSUJ9X72EX6EVz25VlGFA0NNu4mY
	 tz/1SbGUGg5e2WU4QyKxvFgcuh/sAoFTIMR/lsv3LHsNyqbxMG3Z6QrGnQfI031VmF
	 QCQaYEIzSD8wYAHRcmVhfO0w+Lq2rX4Jefj6ieJqNqO0LN+LZQfYV5YHkAV2mT1N5e
	 V5UWwRQTEHNbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76CFC41DE4;
	Thu, 22 Feb 2024 22:19:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 065D21BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 22:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5AA441A04
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 22:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1aR_OtasaqLj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 22:19:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7260541989
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7260541989
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7260541989
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 22:19:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="6731787"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="6731787"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 14:19:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5590551"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 14:19:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 14:19:53 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 14:19:53 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 14:19:53 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 14:19:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oEUxo2MdoBilg/2IPAA48iMhBuiDhnSXnd0eaOdg1JKHGSBshtp2hdVxq5yO1REwwj1Ypyza21IcCVNAfa7gFdXo5DYde8W4otBCrkhpqLHOtYuNDLlU+8G/dYQZJVhlzXHHSvPa4nB7AY0Kq7bqaa9OdUHTkMMzL5Nuhvlvvo3ybdpQmHfHUMIZA4RZpqAUW0i5OwCPQkfcbCJAQhd4LgDfSy8sQT0SYm6tttagiZquL2ZYY+YzIloSx8OGd0uGmyOh0wQz96yIa+uXdbGHxfmarZFuESK7dKZzaHpEiHP162fY4EpwiG71iOjLOcN7eSxSkC+8KyTpp6WnlOkrzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ktnkrfq4S11msRXe4w/5gG5/aZyCikn0Dhektx0WBb0=;
 b=dqvURtDe59QIoIvO8qAeHfnXtaM/zkQdPE5X6YIFrSrwgAewPqiFYi4nnb53FAWJcad4hQKJT/SG4/mkb8pCPqAEiqIdN7ApgxvvdL9aoBAi2EUGpQGHsmu8J5AaKXLc0VrMGtyYj1fVdA6nxYaAi/AsAa4tHEl6TIiVeo9q0SMQ5qoV7tSDTl7AIiNLi1N9tMcDZtEgDKVivWALf9G2oJYJQUgTgO/XZ9jxrwb8eXLMIRW0ZnNFzpnAKXB2fOwwPaPvCr6jyer91Wo5ECnsQ8+MMyhMt35ZfMWjsGLPiy8CdkGiWkgITh3Ow33fkbPXAu4rACR6+jZsIlzGdYplGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB6708.namprd11.prod.outlook.com (2603:10b6:510:1c7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Thu, 22 Feb
 2024 22:19:50 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a%5]) with mapi id 15.20.7339.007; Thu, 22 Feb 2024
 22:19:49 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v1] ice: fix NULL pointer access during resume
Thread-Index: AQHaZFMA4hjW35hcBEKzfXXlyuNAX7EW7y+AgAACiIA=
Date: Thu, 22 Feb 2024 22:19:49 +0000
Message-ID: <CO1PR11MB5089BAE82D6B60BACF3AF94FD6562@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240220231720.14836-1-jesse.brandeburg@intel.com>
 <481ea432-154a-b3c3-73ad-4a5ab6fe25ba@intel.com>
In-Reply-To: <481ea432-154a-b3c3-73ad-4a5ab6fe25ba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH8PR11MB6708:EE_
x-ms-office365-filtering-correlation-id: 34a11cdf-3c70-4e74-66a3-08dc33f46284
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Rzhjls4MTHmR2NIm9qz+UmYb+3n4DliaBkRzgFLlowTSnlvhmeLDBAv7jqMT7r93sak0X2Sz+s28ID+O8m5BpiECHrLWasYyYnsfHCmxgD6HOz3ej8Bzf8WUE+bCKjsw+uAChUTI4i+mC90ow3oWz2FDKSv8lShvlA3CrCL8xbdW2ja55FsaliSKf6xDK2TRtlf9glCtGvVulXsqmGzq+dRuW+abdvTvO4bBg3TNDsxHnjrpkLcs5gcLMZ3gsE1WB4RtGhy5J1UcgQxyTQ840/fEqq8yONx3qOP2FmqVClHAcNSZPxPwvdpaR8P5cwwny/pw26KMZPmI9ZyRDD9vShDGc/WLds7+X+V7cVhv7HJMJMG7j3Ev5zftGzMcpDqxfrHNmYZ1Mvx6RbARH6thQlBSuoMgdrDrK6JIUNMVQAtaCbADb7QxgAA9wFe/3KprcehyjpubIJolOwinDbL3TtUeH5krJB++cjq8d++XW8dGt0NptgGEbDvg1dcAenrFbRgsS+6dweimoNlByjc1I6djp3kx8T6AEDw4/48PwmTB8Cnmt9+Q0Op7sVedBEWhQfz8CLScl/5R84uLgT4cxoNEWzsuhHhLQE6hwpocw0Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a1RsNmNWdVdvR0Y4RG84YlNwNE8zSkorR1FGeG4wQ1JiM003bVFDODN3Vy9C?=
 =?utf-8?B?WWFHdEZ4c1BxZ01MTThzamxZTExmUFV2bDhVVlR3VXpZU2dvOWNKb3FWR3Ro?=
 =?utf-8?B?aEl4cEtpaDJsSzJvV0w4ZzlnajB3TElEV3ptSi9JUWJvT0s4Mm53bWp2N3ZN?=
 =?utf-8?B?SjZaY2szSWRtYnlYcEd6ZURQdldCQTJVOGZWTmcydEUwb05qTHNXQUdNeWt0?=
 =?utf-8?B?QlM1R1VrQlBrQWk3TEdCbkhOdEloekdSTlZnLzhrUHdRSUtoZGc4aDVyVXU2?=
 =?utf-8?B?Ui9HbGVKNUxNQ1pUbXlqTDU0bmZOQ2hucm9xcnRYSUlSenlrNUl5Q3lsTXZv?=
 =?utf-8?B?Y3VBWnZwdDBYS1J3MWRUU1JNT0U2SWZkSEhWamR5Q3MwcjFtbkxBUWRqRllC?=
 =?utf-8?B?blcrcFRJeGVoaHAwaEJ0bG92V0VIQlphclNPYTlQU2ZtWCs1WDg3ajB2azVO?=
 =?utf-8?B?U3Bpd2RLN2RHRW5FUEZEN085UnZ0Nk16a21UQlJucUZCVXBpOWFTQ1BpNGVD?=
 =?utf-8?B?ZGV3TitzYUFYOWRjZll0UXd2WFBnckthNDJ6d0QyV2N5NktrTkZLV0w5UEN0?=
 =?utf-8?B?RDhUV1pIcHplVlFnSnZkc1YrdnllcG52NTdKb1ZETUdOWmo1dW9iTjNLUUFG?=
 =?utf-8?B?eDBBYjJpUm12MndvSzVEbXhTTmhXUzd6bFdLUVFuVmJFREltbzg5bFpMMXpw?=
 =?utf-8?B?b1BHTkZEK0JCMFV0WVRIeUs5QVNGaktOMnRxd0ZPTGFIbkdjVUpZMHN1NXls?=
 =?utf-8?B?ckRPQlVWM2VuSG03enRzeXJMUWZxMVRvcSttZnBNZG1wcys2Q2oxaWRiZTQ4?=
 =?utf-8?B?SFJrMERib3RCY3VtVFM1TXM3NFBKL1luWHRrODVDOG9RMlBjWGc0TC9tbElN?=
 =?utf-8?B?RmsvUjZoZ1VDZVEySnc2YXJYM0c0S1lMeXhWSm1nM2VkNEtLenVXV2hMMEg0?=
 =?utf-8?B?WTNuVlFEL2pKSkJMOXc5REVSQzQwNlgvcXZmdGdSQlBUbzVHU3lnaEJHTEZH?=
 =?utf-8?B?SHdZRTBvUFZ5TE00UGMra0I1Wjl2azh0MHBNU081RmRpTEdUNEZNdDhBczNu?=
 =?utf-8?B?Tm1ZME5HdUN4am51MW9VS245L2hSMHdJU0tVYi92cVdhZTNkalUzWDBlSUJ3?=
 =?utf-8?B?dXRicWVFTkFvb2o0bjJVUytVYzZWdjZPQm9xVXJIejQ0ZUhsZXpNblJLOWlG?=
 =?utf-8?B?V2U5OGdLYmd5TnAxVUVuMG5lTlhTaDlHdEh4cHN5OVErb2QwdE16MWVCbW9H?=
 =?utf-8?B?cFVuNmpESTc5WERiUDNOY3d1d0RJQ1hNSjhQTzRrVkxhZkhJOGlOVEZUMXVp?=
 =?utf-8?B?MnI4dXRQcHpwWkhWRlZQejlYNGhmb3RuejJnaWpNMk5QTUEzUGVZRVdwdER0?=
 =?utf-8?B?aUZrYzJMK0xaS1VLd2RETkxXRlR3a2tiR3VFV201cXZBZHFFam1JTFdUSmd0?=
 =?utf-8?B?QWc1WS8rNGd4R3ZEU3dpMXFhSTZWcU1NanZkRWtmNGg5N0lWUFZsc0cyVlRo?=
 =?utf-8?B?Qm84Ry82dVIvQitBakZEWG5xNUtPNm9wb3lKSkRtRWR1VzI2QzZ6eDlnM2dL?=
 =?utf-8?B?Tmh2eUxvN1hyU2UzcHlzcnBvSmFKUmpWWnRBaGxXdTJXUElmcy9idWY0ZjQ1?=
 =?utf-8?B?Ry9IY3dFWEg2VkRRNTBJRG12Z09RdkU3NGRWc1c4Z0J1TFJ0cWQ5d0g1dm5G?=
 =?utf-8?B?dG9ab3c3enJ2NWgzNURxaDliN1Z2VWR5Y1dWS1BOdHZHSll6OGxZNUZ4V3NQ?=
 =?utf-8?B?ZC9FcFRwQy9tMlhwbEFnbHM3ZjVCMDV4UUdSV0xMSmlTYWF1eHBhZEwyUVRP?=
 =?utf-8?B?RGcweU8xY1NMNk5jSWM1WFMycjFjTEZrM0tlbkxYdVdIbXA0NEwvQXJJTkZm?=
 =?utf-8?B?UE5oNHppWURvSG1tY2xkdThjV2NCWnpKQ2hKb0Fia1ErdmdnQU9GR0IvSDE2?=
 =?utf-8?B?dkluU2Y4RVZnV29nWnRaWld3SVBwanRib21JTERmbndxWm9DTXJ5d0ttaTRS?=
 =?utf-8?B?RXlTaXBqUTNnNTY0enIwelh6bFN2M2pmbSs4VWprWkVldkcvYnZrT2hmSUZT?=
 =?utf-8?B?SmRWRHp4bFNjdVRyRFZ6Q3FYMmVGTVdrbWdFbHJGRkU4OEZqRitBSnVtQTgz?=
 =?utf-8?Q?LQN6dG7cYyhZwRNFbSxwrDY7a?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34a11cdf-3c70-4e74-66a3-08dc33f46284
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 22:19:49.7108 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LhdlLDvfYW6SfZPQdKtyka6aVzwtNxJihbHDf5OfDt02fgzLCwhEVftdZfpDvnF0zx06UC5PxUz3+iHAYtnVt4hoPj0tHLnJmGbe+wGDLz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6708
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708640396; x=1740176396;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ktnkrfq4S11msRXe4w/5gG5/aZyCikn0Dhektx0WBb0=;
 b=dICk+mfn1kwJ6ZOxaPpadg+FekTYw3iOfDeujXo4v4HQJClNshzgneqm
 PLnIOStlNvzWClWyVrEZDVZ5wphUYTN85EBtyv4GXn9OKAhly5lL61ZUY
 BrAKR/UILHXHUoEK6z+2M4BFKmaGMxwZXoUv2GfrW1vpbcL9WVvFx9ceC
 DZ8Omim8QUFhZJm4UjT1OClOxZSBqczd50CGjbeYEX1MJ/uWUjwzXiuzJ
 Ct0uDuq2AX3gWRt0p5omcCN7affOcfEqB48hyDrq12Egnqp8s6ejMwNgJ
 5cYJO6IuHbqFhW/NvqWlVVYgDkxSSq7b65d3NwM7pJhXy3UaNFh0RZvd0
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dICk+mfn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix NULL pointer
 access during resume
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, "Elliott, Rob" <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmd1eWVuLCBBbnRob255
IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgRmVicnVh
cnkgMjIsIDIwMjQgMjoxMCBQTQ0KPiBUbzogQnJhbmRlYnVyZywgSmVzc2UgPGplc3NlLmJyYW5k
ZWJ1cmdAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+
IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBFbGxpb3R0LCBSb2IgPGVsbGlvdHRAaHBlLmNv
bT47IEtlbGxlciwgSmFjb2IgRQ0KPiA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgRGF2aWQg
Uy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpl
dEBnb29nbGUuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFi
ZW5pDQo+IDxwYWJlbmlAcmVkaGF0LmNvbT47IE1pY2hhbCBTd2lhdGtvd3NraSA8bWljaGFsLnN3
aWF0a293c2tpQGxpbnV4LmludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCBpd2wtbmV0
IHYxXSBpY2U6IGZpeCBOVUxMIHBvaW50ZXIgYWNjZXNzIGR1cmluZyByZXN1bWUNCj4gDQo+IE9u
IDIvMjAvMjAyNCAzOjE3IFBNLCBKZXNzZSBCcmFuZGVidXJnIHdyb3RlOg0KPiA+IFRoZSBpY2Vf
c3VzcGVuZC9pY2VfcmVzdW1lIGN5Y2xlIHdhcyBub3QgdXBkYXRlZCB3aGVuIHJlZmFjdG9yaW5n
IHdhcw0KPiA+IGRvbmUgdG8gdGhlIGluaXQgcGF0aCBhbmQgSSBzdXNwZWN0IHRoaXMgYWxsb3dl
ZCBhIGJ1ZyB0byBjcmVlcCBpbiB3aGVyZQ0KPiA+IHRoZSBkcml2ZXIgd2FzIG5vdCBjb3JyZWN0
bHkgcmVpbml0aWFsaXplZCBkdXJpbmcgcmVzdW1lLg0KPiA+DQo+ID4gSSB3YXMgYWJsZSB0byB0
ZXN0IGFnYWluc3QgNi4xLjc3IGtlcm5lbCBhbmQgdGhhdCBpY2UgZHJpdmVyIHdvcmtzIGZpbmUN
Cj4gPiBmb3Igc3VzcGVuZC9yZXN1bWUgd2l0aCBubyBwYW5pYy4NCj4gPg0KPiA+IEluc3RlYWQg
b2YgdGVhcmluZyBkb3duIGludGVycnVwdHMgYW5kIGZyZWVpbmcgYSBidW5jaCBvZiBtZW1vcnkg
ZHVyaW5nDQo+ID4gc3VzcGVuZCwganVzdCBiZWdpbiBhbiBpbnRlcm5hbCByZXNldCBldmVudCwg
d2hpY2ggdGFrZXMgY2FyZSBvZiBhbGwgdGhlDQo+ID4gY29ycmVjdCBzdGVwcyBkdXJpbmcgc3Vz
cGVuZC4gIExpa2V3aXNlIGR1cmluZyByZXN1bWUgd2UnbGwganVzdCBsZXQgdGhlDQo+ID4gcmVz
ZXQgY29tcGxldGUgYW5kIHRoZSBkcml2ZXIgY29tZXMgcmlnaHQgYmFjayB0byBsaWZlLiBUaGlz
IG1pcnJvcnMgdGhlDQo+ID4gYmVoYXZpb3Igb2Ygb3RoZXIgc3VzcGVuZC9yZXN1bWUgY29kZSBp
biBkcml2ZXJzIGxpa2UgZm0xMGsuDQo+ID4NCj4gPiBPbGRlciBrZXJuZWwgY29tbWl0cyB3ZXJl
IG1hZGUgdG8gdGhpcyBkcml2ZXIgYW5kIHRvIHRoZSBpNDBlIGRyaXZlciB0bw0KPiA+IHRyeSB0
byBmaXggImRpc2siIG9yIGhpYmVybmF0ZSBzdXNwZW5kIGV2ZW50cyB3aXRoIG1hbnkgQ1BVcy4g
VGhlIFBNDQo+ID4gc3Vic3lzdGVtIHdhcyB1cGRhdGVkIHNpbmNlIHRoZW4gYnV0IHRoZSBkcml2
ZXJzIGtlcHQgdGhlIG9sZCBmbG93cy4NCj4gPiBUZXN0aW5nIHdpdGggcnRjd2FrZSAtbSBbZGlz
ayB8IG1lbV0gLXMgMTAgLSBwYXNzZXMgYnV0IG15IHN5c3RlbSB3b24ndA0KPiA+IGhpYmVybmF0
ZSBkdWUgdG8gdG9vIG11Y2ggUkFNLCBub3QgZW5vdWdoIHN3YXAuDQo+ID4NCj4gPiBUaGUgY29k
ZSBpcyBzbGlnaHRseSByZWZhY3RvcmVkIGR1cmluZyB0aGlzIGNoYW5nZSBpbiBvcmRlciB0byBz
aGFyZSBhDQo+ID4gY29tbW9uICJwcmVwIiBwYXRoIGJldHdlZW4gc3VzcGVuZCBhbmQgdGhlIHBj
aSBlcnJvciBoYW5kbGVyIGZ1bmN0aW9ucw0KPiA+IHdoaWNoIGFsbCBkbyB0aGUgc2FtZSB0aGlu
Zywgc28gaW50cm9kdWNlIGljZV9xdWllc2NlX2JlZm9yZV9yZXNldCgpLg0KPiA+DQo+ID4gV2hp
bGUgZG9pbmcgYWxsIHRoaXMgYW5kIGNvbXBpbGUgdGVzdGluZyBJIHJhbiBhY3Jvc3MgdGhlIHBt
LmggY2hhbmdlcw0KPiA+IHRvIGdldCByaWQgb2YgY29tcGlsYXRpb24gcHJvYmxlbXMgd2hlbiBD
T05GSUdfUE09biBldGMsIHNvIHRob3NlIHNtYWxsDQo+ID4gY2hhbmdlcyBhcmUgaW5jbHVkZWQg
aGVyZSBhcyB3ZWxsLg0KPiA+DQo+IA0KPiAuLi4NCj4gDQo+ID4NCj4gPiBGaXhlczogNWIyNDZl
NTMzZDAxICgiaWNlOiBzcGxpdCBwcm9iZSBpbnRvIHNtYWxsZXIgZnVuY3Rpb25zIikNCj4gPiBS
ZXBvcnRlZC1ieTogUm9iZXJ0IEVsbGlvdHQgPGVsbGlvdHRAaHBlLmNvbT4NCj4gPiBSZXZpZXdl
ZC1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+ID4gU2lnbmVk
LW9mZi1ieTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+DQo+
ID4gLS0tDQo+ID4gTk9URToNCj4gPiBSZXF1aXJlcyBBbXJpdGhhJ3MgcGF0Y2g6DQo+ID4gaHR0
cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2ludGVsLXdpcmVkLQ0KPiBsYW4vcGF0
Y2gvMTcwNzg1MzczMDcyLjMzMjUuOTEyOTkxNjU3OTE4NjU3MjUzMS5zdGdpdEBhbmFtYmlhcmhv
c3QuamYuDQo+IGludGVsLmNvbS8NCj4gPiB0byBiZSBhcHBsaWVkIGJlZm9yZSB0aGlzIHdpbGwg
cGFzcyB0ZXN0aW5nIGNsZWFubHkuDQo+IA0KPiBJIHRoaW5rIHRoaXMgbWF5IGJlIHRoZSBvdGhl
ciB3YXkgYXJvdW5kPyBJdCBsb29rcyB0byBiZSBjbGVhbiBmb3INCj4gbmV0ZGV2IChkb2Vzbid0
IGhhdmUgQW1yaXRoYSdzIHBhdGNoKSwgYnV0IGl0J3Mgbm90IGFwcGx5aW5nIHRvDQo+IG5ldC1x
dWV1ZSAoaGFzIEFtcml0aGEncyBwYXRjaCkuDQo+IA0KPiAgPiBiYXNlLWNvbW1pdDogMjNmOWMy
YzA2NmU3ZTUwNTI0MDZmYjhmMDRhMTE1ZDNkMDI2MGIyMg0KPiANCj4gQmFzZSBjb21taXQgYWxz
byBzZWVtcyB0byBiZSBhIG5ldGRldiBjb21taXQuDQo+IA0KPiBTaW5jZSBBbXJpdGhhJ3MgcGF0
Y2ggaXMgcGVuZGluZyB0byBuZXRkZXYgWzFdLCBJIHRoaW5rIHdlIG5lZWQgYQ0KPiB2ZXJzaW9u
IHRoYXQgd2lsbCBhcHBseSB3aXRoIEFtcml0aGEncyBjaGFuZ2VzLg0KPiANCj4gVGhhbmtzLA0K
PiBUb255DQo+IA0KPiANCj4gWzFdDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8y
MDI0MDIyMDIxNDQ0NC4xMDM5NzU5LTctDQo+IGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tLw0K
DQpJIHRoaW5rIGhlIG1lYW5zIHRoYXQgdGhlIHRlc3RzIHdvbid0IHBhc3Mgd2l0aG91dCBBbXJp
dGhhJ3MgcGF0Y2ggYmVjYXVzZSB3ZSdsbCBoaXQgdGhlIEFTU0VSVF9SVE5MIGluIHRoZSBzdXNw
ZW5kIGZsb3cgb3RoZXJ3aXNlLg0KDQpUaGFua3MsDQpKYWtlDQo=
