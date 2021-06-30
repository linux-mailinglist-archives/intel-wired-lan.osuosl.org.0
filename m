Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E373B8672
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jun 2021 17:44:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26DCB415A8;
	Wed, 30 Jun 2021 15:44:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mob6m9fsR-WX; Wed, 30 Jun 2021 15:44:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CBEC40499;
	Wed, 30 Jun 2021 15:44:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CD151BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 15:43:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 456C583AE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 15:43:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 29qxZwYt1J2U for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jun 2021 15:43:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BCDA283AE1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 15:43:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="294008600"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="294008600"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 08:43:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="559095696"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jun 2021 08:43:50 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 08:43:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 30 Jun 2021 08:43:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 30 Jun 2021 08:43:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=itYw0TvqPU7YZy8UCe8HtB2+9TvR+jnCbmAgP3zqh3bDqAY4J9ZJfZcwFiSgPdQ6m64RdyptEpWWCPowtG/KaymjnNYAYQLc6TiYTt1hYWiN9vk69s7VAqMQ2T3XZgMGNK2HUu7RY1e5oW4vA/DyAsM8076yKz9I/azX80+OGcTaGbKRM0kJ302C7Knuht/db10fWo+VXWZS5KmhHXx+mkmJHiHTgoTf8YL2PIgaTRynrqiPspp7OxN4EJxWMeWCvsgwyEMX4y3iovhdkTdptcmY53K2XXOEzgVD8/XGYJcp8lJCd02F/ii+0z34Zez7qx2xEstyZ28Z6vxOjZn1Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zCA+URnZ9MHHe5Lhk+hMqAbuE8yrO/B15QBvLHJLiTE=;
 b=M27/4kPFbtzoCDBf/pocEmYDov/nBbK5YODg1DHnZujpGKJsVnwadL72Q3LZAmaMVpZnov7uMU0xxgfF6Az+hdR/w5qDiC0FZGTGGY5rUa8/ku52ACSYEBv6+4Bca/ermIT1XDQGFcVezp98eAujvoN7HeSIqATbUKcQXhsSIbsdAXylmOTI6HD9DD1V4v/+B3EDHFbKlXv8qAORamXe+1VNZHHCKgahMaU5qZkumkcZg7zvh4xJHdBjYBsGv3s6P9LlQjhPBUzSki2YSmV8eCb73hriUhiE/tw6Coz3bQh6hu3Bz7SI/Yw3cL2gxmCGvYzmX0sQYIYMsjbSyFR9HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zCA+URnZ9MHHe5Lhk+hMqAbuE8yrO/B15QBvLHJLiTE=;
 b=grVU8T5o1HeyiE6RyAJOHkCS0M0aVbU9itOLLdm5vsiBpY2Lq6d4JGnqkYByVNSKh1AvD77KEEWaxUhNUc7OrDDIqy0u1r1emUxRtV1VzVKe/orgZislBMfLeKge6qon+Rsk2nNT0uixGKSnqU5HyorHbwS/UMvuz1ItpE2MGwI=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4796.namprd11.prod.outlook.com (2603:10b6:806:117::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22; Wed, 30 Jun
 2021 15:43:48 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4287.023; Wed, 30 Jun 2021
 15:43:48 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add restoration of
 VF MSI-X state during PCI reset
Thread-Index: AQHXUHmpwl65MmcerEWeBcuecbt0Rqss7U6A
Date: Wed, 30 Jun 2021 15:43:48 +0000
Message-ID: <991e25356e2ac012bda896bd1a36f900bb5a8aae.camel@intel.com>
References: <20210524084748.68821-1-karen.sornek@intel.com>
In-Reply-To: <20210524084748.68821-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78cf9bdb-30ef-4e08-b134-08d93bddda3b
x-ms-traffictypediagnostic: SA2PR11MB4796:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB47968A7E3D7680BEA21C1718C6019@SA2PR11MB4796.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YbygBmJDoECdHZVSR+GESVx+nKTg85ZYNZY/YmUc1L+Wwv4TtcT/Ch1QiRbVheA9uf58WElTklfj67aLP1u6ne6vPhlRAAz3RH4g3exUlLI2ehBGemElP/kwG/dbFZG23wjFbpAKFBpZwHH1rwWZ65dWy+Ps63sQEL28nGe3OJs450xTZJ8xdz8t7yOtk1nYYZmbFCc8noOiwvnaFgGy9AiAtL5by2WhP5a7uxA4CHC8szNWa7ht8qIk9FuZXarNLWEEzk3HC7fTxL4zASwv7mqaL6foDns5ZDp/bYUixVVATPf0eEpIDGBELmscU4kk3rjqoDwTQwsGl/n8gS/DoFHrTYWB2VY1z9nPyN4lQEODm6xG8DXVBdShni9k9ifLJlqli61TyyioWKSVPm/wm20KduWZ/vEEjPLB8RrS5iHgUIVrw5gazZ5M6VeS+MBUN7i3r7Vl0DJe2o6VVUfFZzYhbN7M/ANLxVvJoTOycaVI/eYGNBwhgNztuGhFFmTH+Vne76Lq5VySkSke5nW6G5M7/4l/gFujeU+V/PCXb+k0o/P/Pw3ALa5opU+8+9rtFb+ncKle8fzXS/NJsK7gLzYqpzRxZLkAcWv3dN+uArhkeezVmjgRVZE668tCdcTw6O4EYDIidNAU5A2/dLdXzemnNhHcUcCs91Xpw7mCw5HisPm9JZc77pOD9roTYxiBXsjpGt5HUEGQKOltPS0p3UsBbYnap03uX+QQfgMXo9lyHOPAluetwEgFdYiPjxXnZAZH2bBkIzOOSzIYAwbU9ZSlNXuUCQ2VAy2kp9C0ZM3pDH4NlwzdHHi8LIqne0w2yA1RtfeRRGVTQk1okWInYg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(396003)(39860400002)(346002)(366004)(83380400001)(6512007)(86362001)(966005)(6486002)(5660300002)(478600001)(2616005)(66946007)(6506007)(2906002)(26005)(107886003)(110136005)(8676002)(4326008)(316002)(36756003)(8936002)(66556008)(66446008)(186003)(38100700002)(71200400001)(64756008)(66476007)(122000001)(91956017)(76116006)(533714002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dU1XQyt6enhDeGZ3eWkvSmo1bkRVYU9RVHpoOG5pWXhIWStZMU83ZStHTEhj?=
 =?utf-8?B?UUVNTnNvTjFuaW5MWVIvamxBT3ZvYWs4NnZGOFJyN1JBTU1Vc1RCK0RPVEEw?=
 =?utf-8?B?ZHppRmVMa1RWWlNKMU1MU3J2REpOL3JTMVBFY3BUdXE0N2pJR0tBb2dxU3gw?=
 =?utf-8?B?YVBPT3lLVGVsQW1KQ2lmamFVc3A3KzRxb3ZkOGViaUJkdmlQVld3R0xUaXJi?=
 =?utf-8?B?am1NbUE2SUJXLzBOMng5VGRqazVRY05DWlROYnBRZzNuOTRkM2ZZUnVpZnZW?=
 =?utf-8?B?UnRJNW1QK3c4VEZlei9mRFB6blpqU3NwS05GRWl4cGtzd2JlOU02b2pCcVRW?=
 =?utf-8?B?cnhXVk1nc1JBYjRWcGdGbHRkd1YrZElwSnJJdjAyNlp4bE5nekxxajRCbG5O?=
 =?utf-8?B?U2szK2hSNk9KczAvT3V4RHVENlZmTUFYdVFta2JQUitsai9SdDVPS2xuVFV5?=
 =?utf-8?B?MC9OTTZpUjlkWkNiSWJVZytMQ3VBWEdIWVNmNWVmcDJsU0N0dnp1anZXT0dS?=
 =?utf-8?B?d1JFMm8zNTgzWm5zZ1JJWHpkZlY2WStzTGpxcXlrSVM0UGl5cXN3dmgxMlBD?=
 =?utf-8?B?ajg3a0N6eDhZZTJkMTd2RzQxRnN1cEFwR0o3V2xiN0tSZGZTTDgrN3VDNk9Y?=
 =?utf-8?B?eW9IOTlMaGRPdzFYazhGVXRBdm96MlhZK0ZvMDFTYUlQcW1pRDViWDRLNUh2?=
 =?utf-8?B?NUpTOTdRMjVOUG40MnJKS3U0S2FIV0QxNWRxTTBZTHQ4M2hLMVZRY0RlUW5p?=
 =?utf-8?B?VGFpV2tpdEpiOGQ2cWxNZkFYYWFLMGVsVjhTVzRiOHJnVVl4NkcxMTZTK1ZW?=
 =?utf-8?B?a0dLYkhCSXJ5aGtPVTk4akJFWFpqRWtVUHFibUQ4WFE5eE9rNitPNUt6YmJo?=
 =?utf-8?B?Ym1oa1U1VzRsS2RTdy9zUEI1SnY4R1pEbzFtMGJ2eW55M04zVktCaVVieHkw?=
 =?utf-8?B?VVUzbFdVa1ZDMmpLdmNsakcxT0dmWVY3TUFLbEpadjB3M2M0dSt3T1VqYmM4?=
 =?utf-8?B?cnFxeTE5YmdZbkx4RkROTHhOdFYzc0U5a3BCaXFvZko1c3BHN2Q2NVNvSjI0?=
 =?utf-8?B?Q0ZCcHlkT2hUVnVBc2JKSWQxcnhEdGdQTUNCMFFEcHF3enAxZmgwR0VXRVJu?=
 =?utf-8?B?OVVDbHpHK1BSckNZRU5aNFZvMldURUJhcXlZbnFLcTJzanpRdEV1TWRPUmM0?=
 =?utf-8?B?NUNqdjdYTWFSaGlYV2VjYkxnS1MyeExxQVJ1RHlnVll5UG1hc0cxaHZKb2Jy?=
 =?utf-8?B?Q2x4ZFpoK0kwNktJNGkxL3pIQ29neVlJeFRacll1WnJNOC9uRXBRL3VGbkZz?=
 =?utf-8?B?aG9kZmNOVXo5eUhNRzRxMHlTSVltRzVuSkVNMUJ1aVpZWFJUdUdnMzk1bFpJ?=
 =?utf-8?B?MGtyMjA0bW9oZFlWdy9FOUIvcE5OaFJPa2thU2J6a01wWkluSi9vbnR1VCsy?=
 =?utf-8?B?QU03Y1FhU0VMTVU3djVqTitRbFJ0Qm5MTGRSWFMxc3hXaTVSYWFwNUNuTmVK?=
 =?utf-8?B?SmkvOTdTUmQraEtKd2xKaTJKV3c1ZEt4dWprUExJbjVBdEQ2cTRhMWZBb05z?=
 =?utf-8?B?cTkwT3NiUFdqZDN4QXdvaENWVWdqZWwyWGtHajlCQlRiV2U5NWlnU0FSV3RO?=
 =?utf-8?B?OWpab3hEcGNoYlZSRGIya3lHLzZKV1JYbWkxVE04OVkwOGh5QU5tRWRTRnE5?=
 =?utf-8?B?OTYrclE3VkNQQnFPM2ZRN0MzM1ByOHpPRU52V1FndG9kNThuK0pOK0dmcVhu?=
 =?utf-8?B?ZS9qRTk4a0w5WWtKNU9nd20veXJ5Vnp3ZXIzSWV2YWxkV2hETGVxZFRTRnhv?=
 =?utf-8?B?VkE0ckZsdENiLzVvZkJEUT09?=
Content-ID: <1D720760C50DE64AA24B895191EE998D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78cf9bdb-30ef-4e08-b134-08d93bddda3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2021 15:43:48.3872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0Nhpmf7P8aOVyaXBBv3v8sY7AhXqCfbQ5xa3uPa6rjw4YWqvpM4COwC2aCwg3R3epjI3TVhtCafOqT1n83nx+QRo16xNbcJKv6qkWb1th4U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4796
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add restoration of
 VF MSI-X state during PCI reset
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-05-24 at 10:47 +0200, Karen Sornek wrote:

<snip>

> +/**
> + * i40e_restore_all_vfs_msi_state - restore VF MSI state after PF
> FLR
> + * @pdev: pointer to a pci_dev structure
> + *
> + * Called when recovering from a PF FLR to restore interrupt
> capability to
> + * the VFs.
> + */
> +void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev)
> +{
> +	struct pci_dev *vfdev;
> +	u16 vf_id;
> +	int pos;
> +
> +	/* Continue only if this is a PF */
> +	if (!pdev->is_physfn)
> +		return;
> +
> +	if (!pci_num_vf(pdev))
> +		return;
> +
> +	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
> +	if (pos) {
> +		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID,
> &vf_id);
> +		vfdev = pci_get_device(pdev->vendor, vf_id, NULL);
> +		while (vfdev) {
> +			if (vfdev->is_virtfn && vfdev->physfn == pdev)
> +				pci_restore_msi_state(vfdev);
> +			vfdev = pci_get_device(pdev->vendor, vf_id,
> vfdev);
> +		}
> +	}

Can you address the issues reported by the kernel test robot[1][2]?

i40e/i40e_virtchnl_pf.c:180:35: error: 'struct pci_dev' has no member
named 'physfn'; did you mean 'is_physfn'? 

I'm going to drop this and wait for a version without this issue.

[1] https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-
20210607/024590.html
[2] https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-
20210628/024868.html
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
