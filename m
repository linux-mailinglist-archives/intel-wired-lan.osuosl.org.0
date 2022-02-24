Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8B34C33BC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Feb 2022 18:28:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88E8C4172F;
	Thu, 24 Feb 2022 17:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pajx6xx9Qz7Y; Thu, 24 Feb 2022 17:28:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80FE941728;
	Thu, 24 Feb 2022 17:28:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BAF9D1BF28C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 17:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B581741728
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 17:28:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u1ZPd-iFv4xd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Feb 2022 17:28:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB24B41726
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 17:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645723722; x=1677259722;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ulj/p3Rp9VjBUuGTBCTyhfACBI040iDhlZQIzG+YVTg=;
 b=FwDUUySyopMiNiPzlubNQQDlZQYsfqed8FmWHNPmDt5ZWxmXmkLRTJUk
 OUoBhSLV/5ZWTV5QJ5Aff/mvi52ZmQoOj96DbOopCvWn/xBajI8anIMc5
 ABB4EIYvB6doPfgTqpajUPuEeqPRe0YbHJryl+IS5bFYY08SJQ4oNcC0O
 sHmWR3cYgHnf9Y+raE0dg7YhMwnDKDxVE6ragiPCPKbM7s48QToVcW3ca
 o34p7rx+bA3npHljaHeiydcttzmyjDKHG6zS7PaZJeIMf4/I4a3/6hl9N
 mJGtO54hjhS75PE+DfXiXWvNW8zSe77TXBuLAQEVCYevAwiwr+Fpu26Bo w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="249878896"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="249878896"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 09:28:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="639798476"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 24 Feb 2022 09:28:24 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 09:28:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 24 Feb 2022 09:28:24 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 24 Feb 2022 09:28:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HfcfmDNAgP/h6DP0s5Ui6xmn1Tp6TkeD1pCj54fSRy9/AfSbgEoTlfRyo0xA2yH7M8TQU/6hvfxejEMwliCNsc9q8vbNu/4XuNa6IPD83T9loNS1zuNkAru3WGuD4Bq7tC0Ft07ZSMBI58UoSWXuSAjScmJAjmdl4YtEF8wmjvNuQoufH5u/z89XTaYDlvhzAVzQsrN7Pvxe0dVyyiABM4+dG5fWOiennvotobXDNnd8jc3IcTz/QyT+IQb/1rRONGfO3OQ3H+iI1jlQzN4RTEB+egonsJmZcCxcRNzeOjKJ037L5rNVG/I/l6TiMpu9xvhNLNjVtADi0XpF/Q/bnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ulj/p3Rp9VjBUuGTBCTyhfACBI040iDhlZQIzG+YVTg=;
 b=INlqQWY+l40fn0GBIbj54NAqN/dlxnnIRSqK8XZ2Z79M4qGkjS6cXfETxgc7kJ/jYfnHITlhd1ZkKQoXw49i7Se8am5WGHcYD3FlTO8nSSUZ2rsX8xQh6Tk5lSyrzbkh9pab51y7z9P0v+PSjFhMswxBqqXcTfkmGHQwjDC4KduAxij+aE3450xKXbST0UFOQ9Q37f8UkGQz/gVdExIkmQjRVRM2b7gl7uv3+Pt8peCG7vCS7riHawB056Txnknb+ti5zek92Wj25hlvApoYzIF0mRiu04SLZON6jMGEmXBbDub1WFYrX+qc3y73XY9y9FfNIftZzhD/dfxAIuq6Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY4PR1101MB2295.namprd11.prod.outlook.com (2603:10b6:910:19::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.24; Thu, 24 Feb
 2022 17:28:22 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81%6]) with mapi id 15.20.5017.024; Thu, 24 Feb 2022
 17:28:22 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix re-enablement of FW
 logging after reset
Thread-Index: AQHYKYOo4uM6LzGiMUKnlZdYYQQe/ayi9N2A
Date: Thu, 24 Feb 2022 17:28:22 +0000
Message-ID: <c46a15bfa098e8bcc8c1e7d88ebfaa69610ba7dd.camel@intel.com>
References: <20220224133614.179091-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220224133614.179091-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce55102f-0adc-4656-f3ba-08d9f7bb0ec3
x-ms-traffictypediagnostic: CY4PR1101MB2295:EE_
x-microsoft-antispam-prvs: <CY4PR1101MB2295155398329F1A97D962E0C63D9@CY4PR1101MB2295.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8ATxGHFBPx0eM63YSIzmZyLP9cjNfCNwYq4KlVFhPs5ljwTnmQk0dIpca5w4cHfdm5X0WVrTR2UkT2Y3ql8mis6aXX1m7TbssBo6eK/QY0CZPb2XMexjN37sVJjvqPGOOG6y8AnhmPKODt01thn5XG9M4/krU26PDOoONHbBer9Xsfy1cwZWTaXNT5PM8xrI1k0Uhf3T/jKeLlA+hSxVqKv8DvdZFcpJd8uAxnLLx7cGMryPyXyG5jG/RMDE4LlqZSarEkX1EezrjGyhaEcAdglHMnDXNPxo4J2ICmh1IMjHFQQPQduDdbBjf4alMcSUR+TiEthK0eNfkfUB55v7TdUHUOAEpRaOEHpevNt4cY+a0uwKFJZZsQ5s7IV5QTr/dfQacfkStAjFUAzkwMmpK9b4j8inlnTbb3VZUBeQvqVEBChWJxo+niZNvTrpuolF23vkUZbAg6MOIp/PpNEfe+9vPgG/wd4FU6kEkFkdxemQMskNkHNQhDwLg5gvIgjB9dk0AT5fEHbUSfZ7uZdh4kF2oBtqTdPD550iOo6TFYJ7ZTkJ5QACMN2EVgsFU835Y5+Uah+fG/zMkVr7/SPMPHhRvlfOj2r23LEDuhf1Heuw8F+VLKQc9/ETg4qsnL5Myiiw9Iu6ki13RJIBmoWmsuovhT/T2w4sNITPqJ6RhIipSIXRWiNBqlcgYFcukMiWLo/dsKsHqDjzs5d0X36l7w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(82960400001)(38100700002)(38070700005)(86362001)(122000001)(5660300002)(186003)(71200400001)(6486002)(64756008)(508600001)(316002)(8676002)(66556008)(76116006)(4326008)(6512007)(4744005)(8936002)(110136005)(66946007)(91956017)(83380400001)(6506007)(2616005)(36756003)(66446008)(107886003)(26005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UlNVRWx3QXpRRlFIYm5aa1hWWEhmK0cvUzVGdWJCTlgycDVQMU0wRFExWlQr?=
 =?utf-8?B?cS90WWdxTFRBaG1VSTdjNFJIM2YzdGlhOW1qOTNWR01nTDNjbDQ0aUZpQWtr?=
 =?utf-8?B?dXBocHNHVGFTT21FVEpxb2o3TkZHNDNmdVdrbHRBYWRYWmRpd3NiR1Z4Z3ZS?=
 =?utf-8?B?YTJDd2tuUndYLzhER2diTG92dzlNMlpIMGpGbmROZmFWc0NJTnQ0YXNFWWxR?=
 =?utf-8?B?bmJ4QkZKdDF5MkpPaWhINWh1SlVrR2pIMzlSRWlBTm9TcXo2K3JpbnN6ZERW?=
 =?utf-8?B?SE02VEoxTXZoU3E3NUhhYis2b1lxbGpjb09nbHE2dVJrTjFsbVpYdng2bVov?=
 =?utf-8?B?bVJFNnJqc3NIbkR6bi9XSFJrcFRYWHc5MHBIUXJ0emdBOHZlTWhRaDdMSmIy?=
 =?utf-8?B?MWR6STd3R0R1RGx4ZUtZbFdRUUFkUFVoRHgvdnJIZTVvZFk4dTl4djA2cHBF?=
 =?utf-8?B?NHAwelhTTzFPeEZmM0tHNW5NRDZpeGdMUk5pZzVFUjdOZlM0N2VwM0ptYWlC?=
 =?utf-8?B?L0ZSTDVOV2NRaHd2WVZteUtxSTI4UE9Rd21ob1ZGNGcvb2hKV1kvMWNKZ0py?=
 =?utf-8?B?VlBPRFltN1drMzY2NWhjWDl5ejMyQkRyZ0NjKzhoVUMvQVUrZ1pEcm94T3F3?=
 =?utf-8?B?VWprcm5WQ3RiRlBKR3YrYUtqbWVmZnpPeHpwUStFRFpPMGFPeEROeEE0QlI1?=
 =?utf-8?B?cWZvNzVDbVZ4TTVxTk01ZHpRS1hlS2hnV0RGRllsVElPeTJ3a0xBTHk3b3N2?=
 =?utf-8?B?cWJ4YktlQU9ZdXpweURaWFlJRWNHanhyeEdqSjNqNjE5Ry8wODN4TndObFRC?=
 =?utf-8?B?QnRoV3RrRytNZDY0M1BQbEtsREhhNGZmZHZ4blBXK0g4NHNxaHl6a2tuUkVC?=
 =?utf-8?B?cGF5RmpEeWtsTExJbDZYWGc0aGRUeU5YcUpsWWF3K3J3YU00ZUlPNFVlQnVo?=
 =?utf-8?B?WldoLzRVN1Y1VVVlU01MOVhjRFd1Vm9lUzk2WDgybjJ3RllGSmV1Y0N0VEdu?=
 =?utf-8?B?UWZGWDcySmpsVzJaZk5HS1Bxbnp3Qm80Sm5ndUhlWUNCbm5LeFNwWURHdkJw?=
 =?utf-8?B?ejJ6U3V2TEduYUxnbzJPSE5tb0sxVEhPQXJJZDZ1VlNaMTFLNjBzS1VPRGtN?=
 =?utf-8?B?TUpxajA0WHRVZ01nSzZmZ1M3NElQVnRuc2JYeW8yZlVrK1pEN0o4WkpmVWtu?=
 =?utf-8?B?R2gyWGdtZWl4aGNxb0JRZC9QZE52eDR1eGxGYk5BcmZVK2dRMWV3WjgvS3gz?=
 =?utf-8?B?UWpYUndXNkZHVVBWZUtWUU9LV0x2aCtmZ3VERDZhc2pnbTNST1ZpVmZEU2hB?=
 =?utf-8?B?Mm9CbTZLenM1eUZybkR6a1FhWmJic2djL1VuaTRRQ3IyNVFQZ2NZRld3VFdF?=
 =?utf-8?B?UWY3OFB2RFJMRXRkMEZOQTJRTlRadXFVY0puVlFrQkEreVpJVko3RVc4V0or?=
 =?utf-8?B?VEtobFdjSzYzaE4wc0s3NnJRNUpYNVdsZkcvY0pBZ29URHAyUGhWUkZZYkZh?=
 =?utf-8?B?cDhhME1LUHJPM3J2RGUza2RrcHdzRG5Db1JrcXFGVnIrMWt0T1J6NTlhN2lt?=
 =?utf-8?B?djVJTHhnQUlxMVZxK053N1EyNDRVRGJQUlo2bmxhdVI1aUY3bmVJZzFNd3J2?=
 =?utf-8?B?eWlVczRCNndRNG5QeGk5S3JxeERmTzdMVlBzMnZha3grUGFtdHpudWdOOGdN?=
 =?utf-8?B?b0pDbHhncFZJN3hEQUo2TTVrWVNMTU5jT3RuWmpaUnBVMUFqRG1aU2dOandM?=
 =?utf-8?B?eWluSkllUkVPWWxrMVh0RFdYRGhVNkNmNTQ3QWt6WkpGRm1JdWZKQ1BjWG4y?=
 =?utf-8?B?L3NGWFQ3Yms0L1JweFpwb2pkM1JCdFVPWjNwT3FZd2dGdHJjQ1c5cHlzS1RU?=
 =?utf-8?B?WHdKb213OUROUnZEQ09jWUczektKT1EwaERoem1Dc3IzTW8wNlRzNEhZcEY3?=
 =?utf-8?B?bnNPMjlEVC9LMjhoS0lSdXVlUXRkTFBKeXpkMEVZYkJXVUxUVjVuditFOVlv?=
 =?utf-8?B?VmloWGt5T3loQWdzU1lySjFrVVpwRll3Wmg5ZlQxZVI0ajdlbWV3S2R1d3lp?=
 =?utf-8?B?SHZXR1NvOGI0S0hZSUViR2J1d0s4SFU2Q1J6RGZMN3lqNHBaVEVwZjdkQmkx?=
 =?utf-8?B?S0x3YUtkS1gyWUhRTGhPSWdxWVNBT0gvOTNmdllRY29uODZkeTFnWk54SVdQ?=
 =?utf-8?B?TzQvVWt0VE8zM1lPWC9JOWZEemlMQ0ZybkNucU5oSG1WN3hZaDNmVi9LVk9E?=
 =?utf-8?Q?SljWBPtThqQBfInNOKGO7zzM/56ef0fU6woFT0B+jU=3D?=
Content-ID: <D862AF550026C84BB82D91AE7A3CC37A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce55102f-0adc-4656-f3ba-08d9f7bb0ec3
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2022 17:28:22.7366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ewN53vxnRjklcOIi6ZEQwukc0WzHmfF4VHK1FT8Zw1AuYP60HqnB/zZ9kpPT4+ISjuLk2/oxov2Ib0X7ZBihrAMXB7E0z79Sr/0Pv46sARc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2295
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix re-enablement of FW
 logging after reset
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
Cc: "Shelton, Benjamin H" <benjamin.h.shelton@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jedrzej,

On Thu, 2022-02-24 at 13:36 +0000, Jagielski, Jedrzej wrote:
> Device resets such as a CORER disable FW logging, and currently, it
> is
> not re-enabled by the driver after the reset. This means that FW log
> messages are not captured even though FW logging was enabled at
> driver
> load time.
> 
> To fix the issue, call ice_cfg_fw_log() from ice_rebuild() to re-
> enable
> the FW logging after a reset.
> 
> Fixes: 8b97ceb1dc0f ("ice: Enable firmware logging during device
> initialization.")
> Signed-off-by: Ben Shelton <benjamin.h.shelton@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Can you check the settings for your email. They don't match:

WARNING: From:/Signed-off-by: email name mismatch: 'From: "Jagielski,
Jedrzej" <jedrzej.jagielski@intel.com>' != 'Signed-off-by: Jedrzej
Jagielski <jedrzej.jagielski@intel.com>'
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
