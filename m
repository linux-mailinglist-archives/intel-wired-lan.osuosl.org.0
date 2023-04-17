Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C656E44FA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 12:17:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF06B613E8;
	Mon, 17 Apr 2023 10:17:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF06B613E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681726626;
	bh=J7T1c/iRjHEmMBNg8xQVWk5wwdQdcmhCHdI9KVYw/OM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i/Ny77WXnlTns7Io5zLzSFgwC6edxXf14JYZbPp5MZtsDaVe2866Vskyqf4+JTcg/
	 G8OwiP1OYJQ7z0J8WYeI4xZyGnDrKGrclRWi9mZCDIyInx6y99BI7L4B3QLJI9BvBn
	 sgWGnKoh3v5RukEAATMqfUiKSKH/rxA5LF6x7rxwbLdbtMctYypAHamYXm9s/fak84
	 2OXIGzoAbkxVoG/FnN58dj8nOin5mH+XT57iu1TsLbyx59W9zNGJheI7HZZZPVFYkp
	 AZSMxMrOMysUqpgYGixo2HNkSBoh9swyWKJZOqxxdZ710xVJtsBGe+Z0leNQAjkCcr
	 KiGx/BOJZOXlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xu0IGOLwMPCu; Mon, 17 Apr 2023 10:17:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60F6B613EA;
	Mon, 17 Apr 2023 10:17:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60F6B613EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F5E91BF30C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 10:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61668413D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 10:16:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61668413D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4i7xmVf5HMHd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 10:16:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16732408BD
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16732408BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 10:16:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="407747830"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="407747830"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:16:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="693198606"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="693198606"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 17 Apr 2023 03:16:48 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 03:16:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 03:16:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 03:16:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 03:16:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MS3Vm5hyeuBhKP/47OyxLKbP+Tr+krOC9d2NsJRBQ3hUYxL/L9pjSpKd5FDNNu1YtxFD/weW33KOdiiEaoFFs0f0Q21eXIdJ2gaq3BcjWrP1HxBjWhxyY6Wuzs75shHuH46txYTz3ad3rieAb9Dct+E7B149KOme4czm2jEs1CGfd4I43Sz/jIBJ0vBNsr1Gb5NoTNkb2T7GQo/U+D2m2nhhFcyHsdibadsAXzErCpK7Vm0arWPfYEBL7iXQtq6WO3XJ5V3+zQ1DgaEC3a43gkXY1/tG3Ix88/ZBLwz/OnQPkNpUm/e9LAQYQ/60JUZNW68NwpfdHJO9fs4tsE9rVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EK2NF4SDIjgd9GLyRULGbakzJ4vhCg1bGSaZ/MSPtyc=;
 b=ilwOIw0M/p15d5QxtzRFejYuBX1ixEuC/zd0RZOUxmHFtEU7+ccjwH6Sl++KkLI5qNy995c/bdEBRKWSQ5kyjmPubrue//N8hPkSrbMG7csFWI5JangNndDF8jD6L+BoonJLpnzBzHmXcoD7bMbj03WtQ7lHi5sBw5SryMj2ttwhx/Pmq8EO7sLc8SuM5bTYfxvQhlXCM+IPEP31UpEyedWte8WJV+3gKpamtDgxJ6shlNdp8e2uOKNJHTWIiuUJFhQGW3Txb7okV1080DD0oRiRa7xzVxRjQOC9uaN/Rf0HOSU/44YSpgAPRESu+YBYVXZgK3le4y+BCZ4y7otAEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5815.namprd11.prod.outlook.com (2603:10b6:a03:426::9)
 by MW4PR11MB6739.namprd11.prod.outlook.com (2603:10b6:303:20b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Mon, 17 Apr
 2023 10:16:46 +0000
Received: from SJ0PR11MB5815.namprd11.prod.outlook.com
 ([fe80::f85e:135d:b09b:4c98]) by SJ0PR11MB5815.namprd11.prod.outlook.com
 ([fe80::f85e:135d:b09b:4c98%5]) with mapi id 15.20.6298.030; Mon, 17 Apr 2023
 10:16:46 +0000
From: "Sokolowski, Jan" <jan.sokolowski@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: fix undersized tx_flags
 field
Thread-Index: AQHZbEfwH0T/13KEtUGuwdV4vR681K8n5M2AgAdfx1A=
Date: Mon, 17 Apr 2023 10:16:45 +0000
Message-ID: <SJ0PR11MB5815C2C1645B74378E59298A999C9@SJ0PR11MB5815.namprd11.prod.outlook.com>
References: <20230411073707.19230-1-jan.sokolowski@intel.com>
 <d412bbf7-bfb7-42bc-4352-fd99d38121bd@intel.com>
In-Reply-To: <d412bbf7-bfb7-42bc-4352-fd99d38121bd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5815:EE_|MW4PR11MB6739:EE_
x-ms-office365-filtering-correlation-id: bc7df1be-b228-4ec6-ec69-08db3f2cd93e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pbrt2LAcZ+NL57v/aT6jITeuoH5fMJGCBSMyaS4u6tK18MkIdbCkKbNiwcae36mVd+bFv+JVIKJN2xSqpkgAf6ppl0zhmaf/nqLpPwdn1950IpEoQwZy59V7Hie8YE6JYFsQGMjI0u5CGPMxX4i+1rLeB1vbGy1U0Oe49efBZilZNt6kKcfa6eWgSqpzA8A2ML2vTAgpCjmdFpqWrTtcGl17T91c7J/ewhQ4pp3BuZgHHO4ZVCrTi1J1DFw3d6PInBU5B61CyfG/pDhK1Jw3w6cuvuBZJTmLHd7GrhVGDcN1SfZrJLfALcmHzsgR7H40XyjuAPGHI+slaMJBKNmMxwHxmhdBH5kOynw85Eu8LoAPL4lBEMC9LpAUReSCLRHazTVjI6zjPLFsFer7kMg6Ac/C1WRBCMX52+j7y+YHIu2Y0YIAh/HCkEvltC0aNwtCeENCLE1E2350Ayc9yt4r5BZEZgLtpnxrng5+2xXus1fMy0Tsb5/3LC7EVpXGqQ5Lg6dI5yl+pgiKl2E3xtdtkA/plDI5zVGlh18dFcUz9U6pwpxOwEXBXVazdNs91591YzcIkXlMgOlmfU1I/90XzLc9ALaT1iMQE9fu58CNSaWYH43j8H6xyNPzkSrsuSBD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5815.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(136003)(396003)(366004)(376002)(451199021)(8936002)(122000001)(83380400001)(76116006)(6506007)(71200400001)(7696005)(82960400001)(53546011)(54906003)(6636002)(478600001)(186003)(26005)(9686003)(38070700005)(33656002)(2906002)(38100700002)(52536014)(5660300002)(66446008)(86362001)(4326008)(64756008)(66556008)(41300700001)(66946007)(6862004)(66476007)(316002)(8676002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VjFSaXlKS0lmWU9TMnhoR1p6TXZNcXA5QUI1Qm5Md3F3ZktQWE9ibVowR0U2?=
 =?utf-8?B?TzdmTmx6M0tIZmg3emo5b2dZelFpTHRCbmRmRlRMZC81bzVVN2poVnVxYklN?=
 =?utf-8?B?WEx0TnhlUVdqOHZwZ1Y3MUE0T1pFaW90ZGZORGR4VjFPc3hmTVJKQ0ZCRzlM?=
 =?utf-8?B?T3BsbklYWXN3dy9RMS93OGMwL2ZYbU1HRUVtcHQ1ZTNLSC9HcURjVGdIU2Fq?=
 =?utf-8?B?bTN2NlVUSVltaWY3d2hkOUJWMEtBVVdUOVZSaGVOT1NxTmQzaXNja2xiK0RN?=
 =?utf-8?B?SXd0Y2JPNTZ5VjFnUFNQTkFHRWFpNFN2dzAxOGFVajVRQzFDbGhMbEF1d2Zl?=
 =?utf-8?B?V2U0L0gySDBnOVFZaGR6U0VBWHRLMTBBY3hQQ2M0NGJnaU9xemtLN05TL1NG?=
 =?utf-8?B?MW1aMU5WaDBNR2hqYi9LbktrQmYzMEdLS0IrcHlUSnpTbTVrSExtTEV4amFp?=
 =?utf-8?B?bWFJOC8vRlpkdE00YTlqa1lKODlzSWZERFBLS3p4bTUvaDR4Q2lpYnlWTXFZ?=
 =?utf-8?B?ZVM2RitVSlRWZVlTZmk5Rm45amdWNDVYb2ZrL0g5YkYxZXVpWTBsUlZNYWd6?=
 =?utf-8?B?U3UzQmtoWVdtRk05bW9XM3FjRlRZQ3dxM1Jpanhqa3RDRnpkNVE1bkNpQngw?=
 =?utf-8?B?dWxhVHRBeGtmOWdiSlFSZk1XY2ppRjJlUFhFeWovSnNHOUx6cm9MeGJVUGxD?=
 =?utf-8?B?QjNSQTFJd1VNV2VWeDJBZ1NvdGwxZFBtOFNueDBVQjlOWU9xa3FYS0t0ZXBt?=
 =?utf-8?B?dlBYa2lXenNyTWtOdnhnSTNHa1RlS0Z2N1NvNmpVc2ErLzdDRndEL3crVGcw?=
 =?utf-8?B?bWJjMmt1a0wwRzNNTVBZRGM3OGYrdmR3K0hTS0Z5VkxlMjNLTGU0UFRqVWp0?=
 =?utf-8?B?eXlkaWwzQ2dSUzNFc0U0RjNBYWxHaEd0SGZXSG05cVRRZTBZUVBtNUIyenZK?=
 =?utf-8?B?ZnVvRCtMVXVHQTlyakNUMEVkTDhXTU1lclZMcnlwNmNkVVlZT081UUlNelNk?=
 =?utf-8?B?NlVyalRHeGFUd1Z4bnp4OFRobmNFNVZ6RHdSVHF4ZzY2RjF4Uno3QVFMamkr?=
 =?utf-8?B?YnBxNXN4VEJwN283K0N2d1dYNk44bS93ZFVHRkJwaWtGaEh0Q0pmclJ1WFZ6?=
 =?utf-8?B?U2VraEF6N0FNM1IySDUxNUtITmRBWGhhMldLUjhPaHQ3WWlRdEpDdG52eE5p?=
 =?utf-8?B?R3NwK0k3eXMvRlVzSDlLNldaWjJzQmV1cGJKWXVHSzV1RUx6L3U5Qy9lbkxj?=
 =?utf-8?B?VjNjSkRDYXRXWWZLY3Z0OXVqTEQrRitLQWF0aTIyN2U2bWZUNEY0aWN0eXlB?=
 =?utf-8?B?Z2praVB3THJiTXVmbHh5M3BMNzFlS01Ecm54QVY1VzZidFNsbVNiYTVxbjMy?=
 =?utf-8?B?RUQzT1hwL29pM3MvWTJyQnc2cHp5QkJYcWE2S3FkaVVVUms2b1ZDekhsNVNH?=
 =?utf-8?B?VnFKY1RLS1JxeWRtUmRVQXRscGt3V01jaHM1V1ZKck1XVlNVYytySDRkTjRW?=
 =?utf-8?B?VVNjVW9VeFA0RzNVK3ZJbnFXS1FHOEpNbUM1YmxiVURXVUJCR0YxREsxR3pl?=
 =?utf-8?B?aXZxMjFFRCs4RWdzNUFLOTZ2VE9jZ3pQS1Yyc1JGeEhHblRJUW85V0NEZWFP?=
 =?utf-8?B?ZzdRM3dSTmxqN28rWFZveDNoUG90dzdBOVVwelZsOGZ1MlFBaWpGbVJYa2JN?=
 =?utf-8?B?bFBkSVoxdDNUYXlnT0RjYmg4aDM3T1MwNTZqMk1tcjBhZkFzR1FiTjF2L0h6?=
 =?utf-8?B?VWR5Q3JoZGpEZGhxeFJlWUtSYU9nTVFTQ0V0Mnk1OWZkUERTZEM4aHJBdEc5?=
 =?utf-8?B?Qy9GVjZacGptbk5rc2o4aHhKK2gxM0JVWHVqa2g4clNiT1hwYklWKzNsbFd2?=
 =?utf-8?B?UVo0Y1gvKyt5Y2h6dG9UeUFIOWRjaUJDVER1UXZ0VTh5QlR0Tk1zQklIaG10?=
 =?utf-8?B?a2hJUkhGaTdFdm9OK1ZsRU1iS0lVVndidDhEL3BiOFVFUWVLN1kxRS8zaloy?=
 =?utf-8?B?eVRIamo4Z2VsSHZvS2V1b0pkYzRKdjBhSEsyYXRyZGN3SENaSVlHQnlGNnph?=
 =?utf-8?B?c2ZSOUQ2M3J0N2daUTVPWTZ1V0ZRckZDakxJMXZPdzQ5dmJyVzNwMmZwSUZ1?=
 =?utf-8?Q?GaS7BJOoKCZ6Hdkqc7nANwbA0?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5815.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc7df1be-b228-4ec6-ec69-08db3f2cd93e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 10:16:45.8610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uWg+/ajXuiV8KU4cRccymDW8WleyRF7k8K97bUhKzur4BN8SiWEfjhhfhUTW0cVXre/adJFP6y2JsYFgpSghGNXO/ATW/5byQ6O0+31aiMk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6739
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681726613; x=1713262613;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EK2NF4SDIjgd9GLyRULGbakzJ4vhCg1bGSaZ/MSPtyc=;
 b=PgeNHO6Dxs03OBaYl07EjLGj1u0f+vNoBD4w7uASMPxyuSI+w681tNfp
 Om/EgWNqhUewNqCp2Khancr26eFyMNgjMmEUMdm496RBctvVKRdnlEmsD
 N4qhMBE+QvAYFL+CD98V6TKdfcFpKyTsg1r9rgP22Qmdpuysmpb/VwNfC
 W6nmfpLKOrWbfAxgLG0V7MZBuM9Eo9sXHrGS31H5w9jxHOssLdwJR64Jn
 i56FD+uT2oGUGplOJg+Ux+9+i81Cb5c4gk5gVboMSAB7It6oNZX012Xrt
 79CmOwM5TuB4Bk0AhVvaLEPedlb5fpOnba39gfO9/1obygzsvk7pSg4HR
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PgeNHO6D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: fix undersized tx_flags
 field
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lobakin, Aleksander <aleksander.lobakin@intel.com> 
Sent: Wednesday, April 12, 2023 6:49 PM
To: Sokolowski, Jan <jan.sokolowski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
>Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: fix undersized tx_flags field
>>From: Jan Sokolowski <jan.sokolowski@intel.com>
>>Date: Tue, 11 Apr 2023 09:37:07 +0200
>
>Please always add original authors to Ccs when you modify some code. I
>found this mail only by scrolling IWL, while I should've got it from the
>start.
>
>+ Cc netdev (no idea why you didn't do that)
>> As not all ICE_TX_FLAGS_* fit in current 16-bit limited
>> tx_flags field, some flags would not properly apply.
>
>Could you give more details here? With the actual definitions and also
>how it was found and what's the regression is.
>I found that there's VLAN tag which uses upper 16 bits only by browsing
>the code, while I'd say you should've written it here.

The definitions are ICE_TX_FLAGS_VLAN_* ones, for example ICE_TX_FLAGS_VLAN_M that is a
0xffff0000 mask.

The regression found was with some vlan traffic no longer passing through after commit 
aa1d3faf71a6 ("ice: Robustify cleaning/completing XDP Tx buffers")

>> 
>> Fix that by removing 16 bit limitation.
>> 
>> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
>> Fixes: aa1d3faf71a6 ("ice: Robustify cleaning/completing XDP Tx buffers")
>
>Your SoB must go last, i.e. "Fixes:" should be placed above it.
>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_txrx.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
>> index fff0efe28373..46c108cc5283 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
>> @@ -183,7 +183,7 @@ struct ice_tx_buf {
>>  		unsigned int nr_frags;	/* used for mbuf XDP */
>>  	};
>>  	u32 type:16;			/* &ice_tx_buf_type */
>> -	u32 tx_flags:16;
>> +	u32 tx_flags;
>
>Please always provide pahole output when you change fields
>size/structure. Here you create a 16-bit hole and increase structure
>size with no mentioning.

Ok, will do that. 

>I wouldn't say the fix is optimal. From what I see, we have such flags
>(correct me if I'm wrong):
>
>TSO			BIT(0)
>[bits 1-7 are used]
>OUTER_SINGLE_VLAN	BIT(8)
>[bits 9-15 are UNused]
>VLAN_S (shift)		16
>[bits 16-31 are used for VLAN tag]
>
>So you have 7 free bits to reuse for &ice_tx_buf_type, but you just
>restored the before-commit ::tx_flags size =\
>I would do the following:
>
>	u32 tx_flags:12;
>	u32 type:4;
>	u32 vid:16;

Ok, will try to refactor it in this way and see whether it'll work.

>* no structure size change (even no layout change);
>* ::type range is 0-15 -- more than enough, as the last &ice_tx_buf_type
>  value is 6;
>* ::tx_flags still has 3 free bits left (9, 10, and 11);
>* ::vid makes it easier to set a VLAN tag (no explicit masking-shifting,
>  just don't forget to adjust the places where %ICE_TX_VLAN_{M,S} are
>  used).
>
>Don't just use "first that works" approach =\
>
>>  	DEFINE_DMA_UNMAP_LEN(len);
>>  	DEFINE_DMA_UNMAP_ADDR(dma);
>>  };
>
>Thanks,
>Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
