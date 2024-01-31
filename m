Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA4B843474
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 04:20:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 115B6613B0;
	Wed, 31 Jan 2024 03:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 115B6613B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706671214;
	bh=4ZMOi7HG7txbu6z4pKnocyPV1huGMk2VF5sdEWYBqHk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0Qvy0ARwa+j7pHmxHYSk/v/y56gNVzLwdqP6VfNm26qOTyxPPleUjwUydwutPWngB
	 lUwk1R0a73/RGLUKCSWJRHhdsA7KCaI0fvpe8yZdwS6tzH79Z+rJpBnc5aX4sR6t7h
	 2VaUJ12Knb66ExAcqvImZR9DUS/pXTWx1mD4zafL0w2LHW3znceDiwBpVVs5An5wzX
	 VmYEcL32nb0RDJ8Q5l4ZUIgMD1/VJks8YT/sY/0V7EzPUq5PipVsGirnyvTL3IBatb
	 fSNW/dUegWqPbi0iAJ9JqY7nb9KWXhFa/sN9GB4zpMd2SogHk0BBuATUBQN0J6bjTc
	 yBXY7jJD8rOpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GCPKHMS5uoKP; Wed, 31 Jan 2024 03:20:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15FE56138C;
	Wed, 31 Jan 2024 03:20:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15FE56138C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 63F6A1BF277
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 03:20:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 47B9C613A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 03:20:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47B9C613A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OF050bQSTXpe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 03:20:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EB146138C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 03:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EB146138C
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="24948957"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="24948957"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 19:20:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="36719659"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 19:20:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 19:20:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 19:20:04 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 19:20:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JdCpUxRiv+3XhSzT3we0fG0IETo2JIQJB3gdND/iuihlJN9hSFU/1cZJYLn2TvGt61E/i3bE1ZKT4n9uj7pcvPEPCAWHVK+wkLcIq45FCoNtunZL3F35N7nIZkEGk1IwhaP3x/PvO3ENO5nk2UkBewhnK9+Apfb9jOu7naPu1bU1gHhjU1LTcFIBrlJ0cGvrVnTdxzY3n8vGsD6bgNuGv8DPNrOWg45jltlm0zpvoMgeN6S9bqXlOEf4PHd5RETKfhd5mIEOSLxzHmaSdh4SMHrgXFBlXJUWLJUc3R5EDZ/a+OfxiA98rH+jbkrixqXjAI30+8rCR0Y4p3XJvB5Ytg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4ZMOi7HG7txbu6z4pKnocyPV1huGMk2VF5sdEWYBqHk=;
 b=YL5kKId1EB9rHlYwJQJG8tItgnJPJ7JNDXh80NGRNetVyp1QpcQL2T+xzJt7w5/f1p/2TFGu+xmtcyMXSSnw6hbKqQH9NbdXSHVCGLklgq1hS4zhPFAh0ZNCZUG2jZkNY7skUmfNlF6XSO5EwAyiNNhgBi24eandAjpxtzQxOiRfoWVK+nWtifz0hA9GSVYgQ/lFA6P4q4fcr829Vvv4KXRVwaf0jOOpiyOb+zrknIn4B6pzpQlMKvZIfgZQcQ9690Pzx/R3HNWhMda4W9c2BD6oWNcrqcryuks926Zcjfn2+FSrKQVU3l5TsNxRwY4cD9BEV2NGtVPuPGVfUf71wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by BN9PR11MB5404.namprd11.prod.outlook.com (2603:10b6:408:11d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Wed, 31 Jan
 2024 03:19:57 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::42fe:dbf5:e344:f60]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::42fe:dbf5:e344:f60%6]) with mapi id 15.20.7228.029; Wed, 31 Jan 2024
 03:19:57 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: make
 ice_vsi_cfg_rxq() static
Thread-Index: AQHaTfOcKTqwiTvGjkO4qhAvXH8dU7DzTI2w
Date: Wed, 31 Jan 2024 03:19:57 +0000
Message-ID: <CH3PR11MB8313C460130BC0CFAB70FED0EA7C2@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240123115846.559559-1-maciej.fijalkowski@intel.com>
 <20240123115846.559559-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20240123115846.559559-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|BN9PR11MB5404:EE_
x-ms-office365-filtering-correlation-id: 4243d5a9-c837-4b8c-18ef-08dc220b807a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1/Kr/4JuMa9g5yClXiMz45LvcS3odYxTBYd0k9Ovo/SwI6qMKk/xUZHloVmQzitix1Nf2CcTNOtQOX1yFzYMlXUPu6AY3Vk0jtleSUx9clF+MfuJqQ3AbVFWjFRqEtxnA+V3tGEAC6ebjV+PXuN2eycA2a2I4ziS5dZ/odb4+mfRQv7hUePvF651sUSgAGcYAcO1SsZjNJMdt8ommKv6paUhwSe6yksADSxii2pgaF11gyu8Hf6C1Q/JwwuACLyi3SaPvGT1xaOrmJP5ke/qAc+I9l5oTARzsVqeUtpNs+HQDSWf7qCkuQP75m+q/3Ae7lVE4B2zo37CqEEubiBWHUvl+NpVcIrEn07QH1S7/Srp3w84/32FnKG2U8PCLRey84QmYvgxiMVjsVR8f5bq3lVfM6tiV9QvnpyQm+z7AVpwt2meRe4lXiPhg2NLIyb3clZuSBrgo5j648z5mpy9EazjOcIgWhGfwP7aw75fnkJY+ROpojqV3g/NOLc8ZRgYbRzRWPlmDlFXEu/SdNi/KX+ATTUfukynsHdF/knWZ5JUM0hmlSKb9ZUtH2CYphmqkkL9wiUjqsPQtB4oc45HNpBTIIZJdglSXiVmvOO0u8RFUqHbweM5haxb+YzvpRVr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(396003)(346002)(366004)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(7696005)(6506007)(71200400001)(82960400001)(83380400001)(122000001)(38100700002)(55016003)(9686003)(86362001)(33656002)(38070700009)(5660300002)(52536014)(316002)(8676002)(2906002)(4326008)(110136005)(66946007)(66476007)(66446008)(64756008)(54906003)(8936002)(76116006)(66556008)(26005)(107886003)(41300700001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DzuYWPrfcAlPyJzfLyUCxEMsQpmAq5txSS7BfvZEH01Rk1GO8VKruJvLmx+u?=
 =?us-ascii?Q?WF8uZJRaljguC7y5ouT+O5ydr4ax/kpX7jbSx67xC7fia9W+LDBFDdOT9ce+?=
 =?us-ascii?Q?0JA7pFFOUbE94Y31d2cZL8uE39jmQoqQ5fAr/fFU6zD36Rcf2TIJaV8lrm3Q?=
 =?us-ascii?Q?mWGjG6OZ/kf8v5SkyaRYA9KZ3NwQj0M4ccmC67FEunlNLiptEP8gJHO9KHDP?=
 =?us-ascii?Q?DUEDrCH3CsRus1U5SpJ6keeosFbA0nGRxzZw8H1jQawexxh48zknrrhEG1Hz?=
 =?us-ascii?Q?ONiOGBA70cmY8rbcPL3MPpzlyqwHXwKvgs8zm6f48Cg1NpIh8O0ShUqnnlfu?=
 =?us-ascii?Q?+VsyaJ4zISi1GlTCinsiSDCwTT/JBlu91nHx38QwQ/TdZVZNfNaf8fm6uq3B?=
 =?us-ascii?Q?2eNH6vUlB74Xdr5T1tb8Pq3N8x5pOIuF3/tSOL2HYsE6ePMZTDBQ2JaSyfT3?=
 =?us-ascii?Q?M35CYcTAqHiZExex58hW2rWKZXieTTZ0qoNRw0LEJUCz0NVgK5mVwwXcfCQw?=
 =?us-ascii?Q?vQonsqiSpIxNQBrC71ozWrIkEA7Ahs56H1xKnbLs0HmhRl3hhcXgB02RL6Yr?=
 =?us-ascii?Q?a5Uy37wM25VdZ8ihmmT3/lwF2haKkIQ0nokY28shAyPeCRov48Uf/8707lTL?=
 =?us-ascii?Q?gnm9M6+OFAbMxwXi2hMgGjR73vTzqrWPPx3GmZJR6+M6b+12xkUZaHygOT0P?=
 =?us-ascii?Q?apSwoL4A4IC25x4c/ldHJxFe/ZxyPHry/sm5B0YIuyGaapuUOP9xVznUg5Y0?=
 =?us-ascii?Q?kka+ItpgsZJk6RQexyZBxhG25/svhFJb/CdNpMKa2oV4n0XIMZosR+CgOOGN?=
 =?us-ascii?Q?vpdeM+fhZAqgVTzIAKKjD2zM/z1LL7z8JYV1f6/uXHvJ4AY10GEed1YJhbSd?=
 =?us-ascii?Q?zlqNvrxrDdyb1zoKWwhnjCOHf+7iiIrRwVRHnPF5etHpeG0dQ7wQkrHOfTKl?=
 =?us-ascii?Q?eE0hlKWAgrsUZKtd1RfvywtoTs3JD+WtuMgYfdMR8bkttyLzoYJpBDfklFeE?=
 =?us-ascii?Q?c7+DxJOQB13g74lXyh+1l34LpuAxkOAU33+VVG5JnDNwewMW/jtNc33SVtGe?=
 =?us-ascii?Q?1xYO4tgriz39/0xe3p2WLRViCL3vkiF3GE02iq8OnkO/snJaGUi92Rptv+Ua?=
 =?us-ascii?Q?MOkzQ9UhjMR9f3aBKchL5NG6pXcXTS0tPYM4KzHQWPWNzvhE+FWibYU8Rq9N?=
 =?us-ascii?Q?4GXFrrj1tFvyF0mN1vc0Zu5F3pgP7WLhcM7GVv7fdu4sA0qNgIYazLeVw+v7?=
 =?us-ascii?Q?7Sfe59w6I3pbDYl8OHtRqx7pstE4Mj8gfTINltUya2XFWhCYUP+nUPNHQ9Os?=
 =?us-ascii?Q?LNrbTuFua/a+FvHTPqRngOMOQIkUADS0bQG4Ab3ayV71sn3vCkOk089L4aaY?=
 =?us-ascii?Q?VlnLergR3TBa7BjtLJzgBX6TPfN4Dip9CcHxFPfYM8Whp69Q555kS1AdHan+?=
 =?us-ascii?Q?PXSrpx6bSZgv63zhSxdhkPl5wcjWJBF03gX34j8gWy5QUVBNFll4hfSb8AHT?=
 =?us-ascii?Q?3JnCNRKJJTMlJc4lqK6iF088iULlp3z1I7vKu3eEGLKj66ztMdoFGIiUxlzp?=
 =?us-ascii?Q?GdH+WYEOtuHjj4x26TYQRkDejhKQ/kmxTDdwJX+2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4243d5a9-c837-4b8c-18ef-08dc220b807a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2024 03:19:57.4813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4/kpEHFu6BueVOxIO/ZNqeVg1NntTK8UtldiNih9g1U1U8+OzwfkxSMng7rn7yA0l55oeCddZ4tSITHEnzMcxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5404
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706671206; x=1738207206;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6Cb75a3Tdc36pwe8WQPQGDMeADYixrX3pVTiOSFyLLc=;
 b=i+0AoxKJfTw5SmMCmXbHmF0tYog70IMlt1hsNSet6rFnIt2Vx+euTn1E
 1xJtzfYhXpEziAJKp7n4IszUqKcvtXuHTfQS8zzxgtxbcyYlyU3RT+EmH
 6+EcDKvJMgirs63lq0WfZpLcajCJcsfGqqrS0hUgSvds0BDs6Jfq3a5OA
 nf7fuuXDT1ztEJUtiFkvWyb5HSFShBWRvw5n75GAMWWIRw+yXI0rASJ5x
 TIPu/GDDH0mWUafQbb4e7h6CzwGjyve8BQ6pL8zAzeFzR2PMiTTpUlwnF
 ErKYS5EFZx1wFbvPuXEewVGO7gPmMwJWqOChTNpQRj+QA4evDnhsgNMsG
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i+0AoxKJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: make
 ice_vsi_cfg_rxq() static
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Tuesday, January 23, 2024 5:29 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: netdev@vger.kernel.org; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: make ice_vsi_cfg_rxq(=
) static
>
>Currently, XSK control path in ice driver calls directly
>ice_vsi_cfg_rxq() whereas we have ice_vsi_cfg_single_rxq() for that purpos=
e.
>Use the latter from XSK side and make ice_vsi_cfg_rxq() static.
>
>ice_vsi_cfg_rxq() resides in ice_base.c and is rather big, so to reduce th=
e code
>churn let us move two callers of it from ice_lib.c to ice_base.c.
>
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_base.c | 58 ++++++++++++++++++++++-
>drivers/net/ethernet/intel/ice/ice_base.h |  3 +-
>drivers/net/ethernet/intel/ice/ice_lib.c  | 56 ----------------------
>drivers/net/ethernet/intel/ice/ice_lib.h  |  4 --
>drivers/net/ethernet/intel/ice/ice_xsk.c  |  2 +-
> 5 files changed, 60 insertions(+), 63 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)
