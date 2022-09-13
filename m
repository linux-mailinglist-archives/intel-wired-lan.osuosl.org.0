Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 388B55B6A32
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Sep 2022 11:02:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB61782A72;
	Tue, 13 Sep 2022 09:02:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB61782A72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663059734;
	bh=Jm/tP32JkdR7v0pb6M9hIjQj02EV8YYzF94prAhB3EM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TCVcuz16v2/iZX2+sbCXUbZl2PdZ7ioZX+MhOW/gPmcv+zixYoWys1mo+zVktXujQ
	 BCN3cjW00VfePbn0l9+JDwopDR/NxduP5mwe4u12uEy+Nrx35zBRvPdVHwlJWlCi4E
	 JRHhu1omjmScbcSyL2sCH3PD5AjftZLCvQN6LsQh4wWkLrk7+mYhNhvWbwJEkVuJnk
	 IkF7NO4TNK0vbkLERJ8bKDnONdbZd9rcqKrXJ0aFCQRvkbaS/F81F4z2YB1JxgHlfc
	 rMPNt6juO5o6iDUEMnCeMmB2DD5/5AAWTPsHb6eFvzCLugJ5xccZkkWgweYQ++cCCV
	 3axpVdo+zCZaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TfTkCxjohbQK; Tue, 13 Sep 2022 09:02:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67F9882A26;
	Tue, 13 Sep 2022 09:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67F9882A26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE3101BF291
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 09:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3D0260E09
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 09:02:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3D0260E09
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F18JPqeV7qUu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Sep 2022 09:02:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FF1A60E22
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FF1A60E22
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 09:02:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="384382486"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="384382486"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 02:01:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="684786861"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 13 Sep 2022 02:01:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 02:01:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 02:01:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 02:01:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R6UULpIk36xOs28g3oatKCSHlO45JI+7UJJZ/r9cg6+vEvnDInZz5XaF6y402/EjRevp1NmCdQwIeoryhbNq88+5GFxqtpumAaCiSL2egHbMw8ZesfBnchHnkx9D1GGhm/YDagmFXb/U5nLUlasa1Zy705+qwvd538Yg5d+szrYwpgaaCEDZRr56kouN5Ln5mf31TL+hIuac9XD6weJ0q4xiPI2GR26EsZY/+kgIk6l/kepYPW+D3ABH5mJ/87GIt4+uBboLc6azbgWM/ZvarpTGqcIM7ecO81UORlZFuYNZpZlASqr2+D5aKX42c8OOKtT7ixV0KNTpyPtxWUEutg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DIWzP2+BepPIfBwRjLZyzbZVHmZ0xOPiIHKTLBzG7Nk=;
 b=EZ8NPNa9pjTV+e+KsHtcKsPZzj1A78dmXmSo7/Ts+mdLhNNW1yNsx0DT9FHrU4+iFFXbOphOO3mXWQjtJW2lSCj8IRI0nEKyG7vTXDPpC+UZ1UBM6JXsRRI6Ysu/R2g8xpfgf6r0kUxUih6533DNxs6jBiYUTZDIs0YbenitXe1v3LFwzUSteQIDOc1IwhZKU6QEEQsmAvlax8RJEbzD7qAeGETL42FpeEPoiuuz7TCBCqkBbPlEGww3UWOpe+aJXk7lcykXohGJIsspCILeq5ud1HkIT6kwKbZG7BY1VmbaRTzj8WnbPhL1avkrkCa7QpnrKxwqEL4cnq4XzQrydg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2901.namprd11.prod.outlook.com (2603:10b6:a03:91::23)
 by BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.20; Tue, 13 Sep
 2022 09:01:34 +0000
Received: from BYAPR11MB2901.namprd11.prod.outlook.com
 ([fe80::3162:2af0:19b8:18ad]) by BYAPR11MB2901.namprd11.prod.outlook.com
 ([fe80::3162:2af0:19b8:18ad%6]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 09:01:34 +0000
From: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Fix DMA mappings leak
Thread-Index: AQHYxCab/EFu9T5A4kWIcXgyQhNB7a3caaqAgACpXICAAAFRMA==
Date: Tue, 13 Sep 2022 09:01:34 +0000
Message-ID: <BYAPR11MB2901B57B292D7BD0818A79E382479@BYAPR11MB2901.namprd11.prod.outlook.com>
References: <20220909083326.344027-1-jan.sokolowski@intel.com>
 <c31c8400-a71c-4489-a5d1-3482be590c8f@intel.com>
 <DM4PR11MB6117E945DB38C11B280596D082479@DM4PR11MB6117.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6117E945DB38C11B280596D082479@DM4PR11MB6117.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2901:EE_|BN9PR11MB5228:EE_
x-ms-office365-filtering-correlation-id: 092f6e5d-3e1d-44c3-c616-08da95668f1e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2BFgYXQ13BPNkTwp2uHVjf800oKc+9iSUQT4Zlvb014uJUDFav6SZ08iTBJrKM+hwcJgBhTW3RHioZSmv6iu9FyHWkpaRa021zVrEqDCTbjixSSNLCLEVbH2qKuZWSZmBEl3fBHpNdyMyeTaU+AN5NpTMsy/2fPdcEbP7jmlydhUs0S6gOqIELSdKpxDWx3X5MF0g2VHRgUbUrYDak9Rw89QyW320TUmOsjQ3r53hN5Ei3rGZJnhAmJL28eV6IfeRpGeRDh3scm/ZqHNT6N+vduovYxreEQyVK2WFb5v3PPXdsJ/m2ia3JsgU4n51fz6tO7AmoahrClZt4jxI6I00cZIcbb327KNbMpNAeE6NQZOKhKUul9gV0OqFQlV5KPtJrHa9uYGjvZq9X+6va8H52pT5WgcMqZiWjR8eyQlgA8C0Y/49GI//aUvBWR+o55CXQwXqZGxRwh/JlEPn4NaiC6R2pMYyqp7fy8wpffQkkH10W9WOwzY8+abMBK58Q1a4KrbVfqdoe2hFeDTK/JsfDyhmLhW9o7uZR+OW3hyDL1krPat1EZg4IrNZVUQ6oWTsbuFVdFw5+gOajDkffPZfBj9SrOSLIQ8EdT3j+IsdF9IWwdYNNsvr28TXcbY0GLXR3ol7JAHILxd20d72w5LP3YOcGrvNLni/R9KMpAL26cbucN3NHQeNVIh3QRcvH3gu+QKEjsGJPtK8YoDQnc6jxlK2mGwXO7c6XOSVDvpmTnakBfm1c9gK6ioijthAwG4ab29ezR0J5IqTlIKaLxG8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2901.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(136003)(346002)(39860400002)(451199015)(86362001)(7696005)(122000001)(8676002)(30864003)(64756008)(26005)(71200400001)(66556008)(38100700002)(478600001)(55016003)(53546011)(6506007)(9686003)(110136005)(2906002)(41300700001)(5660300002)(316002)(83380400001)(66946007)(76116006)(52536014)(33656002)(82960400001)(66476007)(8936002)(66446008)(186003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RjZWLzZsMHVhVm1DandSRGd0WVFDUDl2K29IV1VON3QrRUJTSkRiSFFMZk9w?=
 =?utf-8?B?N0ZyT3VtQUR3VVdSdlZ6UUx6K2cwUlhkTDBiR3FkWXpVdXNBazZ3WEUzdmlF?=
 =?utf-8?B?eVRhcEhtb3ZTUndZVWpIWkc5UUlxR1F6MVdxd0hGRWZVcjJzSUZaWDB3MHB0?=
 =?utf-8?B?UUpqNnBPaDZUVFpoZFprUEdBZ05iQ0Uvc2MrS2cvY0ZsVCtiZ3hTVm5Eb0N1?=
 =?utf-8?B?NkdqMTJraEZMbFBSWEhQYmFqbVl6TThiWE81TGcxQll0TXR5NlExcWloemky?=
 =?utf-8?B?OEJ3TXdOdmVKOElRbVRwL2lFN3MwZ1hFbDBzQWRoK1hLN1lyOTJ4MEVwY1l6?=
 =?utf-8?B?TzZxdXZMUFZWMXBzWC9Qa200U1E0UXFRRjhxaXdJR2owS29CMGhVQTJwcEp4?=
 =?utf-8?B?Z0grUU5HVXFQTlpNNCtOaEZ0U2NFL3lIZm5wTGxTL3R1YkloaDhUQ1J0ckk1?=
 =?utf-8?B?RzRzNUQxS3pzUWh6TTFTQnl6L0I0c1Q5UHMrZ3VrQzRhTkQ0b2k1Z1hpaTdq?=
 =?utf-8?B?SmJ1d0o4a3BhMFN2UVFaVFd0OG1ySVdzc0lHUTY3N2xRbHdDYkh3VUdVWmVB?=
 =?utf-8?B?NDZ6eUZDUXFGU3RLRmxHcFgvdVNEUFFQeHhGRzYwbHF1ZFBkVUFkTnV4YzZE?=
 =?utf-8?B?SklhSkZaRUZHU2tnbS9QSVJNU3lrdW1PQStuZHJuRnBsNHdrbi91aGNQZzFN?=
 =?utf-8?B?S0FVblNyQWJ2M28zdlJwNEZFaGFEazBEcmFRWHZ4ems1ZzdwV3BueHdJdWdz?=
 =?utf-8?B?ak5kU1BwRFVheTJRMFRBVjBsVmNlVFlDaWs5bXlNMEJWWVdSdG9yWkttdmNL?=
 =?utf-8?B?M2s3aFFpZjlNdDY4eHNkZ0gvcmZKbUpnZUhibzFRN21JbWNMeHhWU2VJREdE?=
 =?utf-8?B?L2kwT1hTcUtTbmNFcCs3RFQyc1BnVzJSQVFtT0UwSGgwM0Y3UHJjUGdyS3VO?=
 =?utf-8?B?MzBZbTBKY1lWcHFiRHdIMmZneXNLMnBvSEoyVzEvbEQ2U0VRMFVjdUhFR29F?=
 =?utf-8?B?K2wraHVIVy9rZEdFNkY2bDkvVVVaVGhFMU5DZnNFanpwbWNoMCtZNGVkd3U5?=
 =?utf-8?B?R25NNnlUUzJoUGwweVl0SDNheFJNNDZweHNzazhhWnpMMHdQMC9oYlBldFhS?=
 =?utf-8?B?MW56Zk9FeW1nbWF4NDRPeC8wY1VjaUVWamh1SlBIdURsYVBPOFB0SnI1N1FZ?=
 =?utf-8?B?YXNPeG5YRVFIWHlDa1c1ajhmRE0ya0FGT05lUDBKMU8yOFJUblN2cllpR0hs?=
 =?utf-8?B?SmZUUTVvbGNTaG40RmZHMkR1VVBuME9lbWNlYmpQNDkrVVc0c1JXeElVd0c5?=
 =?utf-8?B?T0FOQTNHbDZqTEZEVmthY28yQXVKMU1TUlRDMklGSGtDQVYrK3kxbTVNVlMy?=
 =?utf-8?B?WWRRRVZFWkdnMWZhclBXa3FEUmxEZ0hQVlZSeG9XZ1J4cDlzYUhCMnFIRytE?=
 =?utf-8?B?MGNGYkwwQ0xFVndlRVp0NkVqdEtWZVFiSVg4VlFUWEQ4K1AvbEVHTHIyV1pR?=
 =?utf-8?B?Z2s1MkVPck5IR0c1bTgxeWlRWExDYkRLaHI0dUpkdHRoVStEbU0zQ2t4dE5U?=
 =?utf-8?B?Z1JSK1NhUDcvMGp0L2tBVTZsRXdOWXdnRDkzNjNvMDk4N1VjMElyb1FvK3Rl?=
 =?utf-8?B?Ly82c3VxTFNSVFM0UGJvUWhSTm4yUzlnRmZsTFlQZHVVK0pNVGdtY1RvYWtU?=
 =?utf-8?B?MGN4Zkx6R1F5S3JYaWU2bGYyczdISUE0ZkhPSm0zQXY3ZFdoWjlQWEVtNldK?=
 =?utf-8?B?Nm1oYzhkSVdpbUlFb1Y2cFJzS3V4eVNvTHVNemQ3VlJCenRoem9EYU1OMXYr?=
 =?utf-8?B?ZHN3bkpHMXNiTzZkY2J1SVdjcXJLeXVJSkt5ZklGeWRHcllTK2MwekJ4azRn?=
 =?utf-8?B?UGNiMXQ3MmkvNkpYZ3NsUit2K2ZFa3d4dnFwWFJQQktVbWpkUHVhbTI0NVVQ?=
 =?utf-8?B?VTJaWTIvWW01Y0phMHBCUGdUMG9zb1lQNmRXVXJlRVZhMFRVUng3RlpGV3Jt?=
 =?utf-8?B?TldNZ0t1Zy9sanNYY1JZNXp5bXhKUlYzdk9NWDhvY0NPUGF6K3cwaEJVbCtQ?=
 =?utf-8?B?ZGtZVXNWT1RLZ1YxN0xya2xQc0JJUGtrcVd1S3hYWFBkVldXTUJoT2V3YjRU?=
 =?utf-8?B?YnBrT3hPWVpudkEwK3Y2SkNadTJIR0I1TlZLd1RhZFRkYlIxUXcwT3VDZGN3?=
 =?utf-8?B?dVE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2901.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 092f6e5d-3e1d-44c3-c616-08da95668f1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2022 09:01:34.6239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7tOzlp1CG08Buc7EHwBcXN7/ISPGuNFqtzHeihSlVLTG9sOmHqLMGausoC6Y+6tc6arTuiqqZnPsaP34k5AECpUV9uaBSOfenft9VtIL1ZSzW1PYjgPICfq9SZPjU0ik
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663059726; x=1694595726;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DIWzP2+BepPIfBwRjLZyzbZVHmZ0xOPiIHKTLBzG7Nk=;
 b=BZ5n78uqpW006dMdTkKowWHfs8hC8QfqACPGIfCjCeemrUHre3BBnLjr
 zTgyfqpL1KmGaMG7NQS6QfMov1vEcxgWKvoqSoSg8M1Xo3ZKkZkO62j00
 B1aZoYqEfrc6XRPcGuELI3WNaL6uV9NisbsXekYoG5SU743M9SQcheHMP
 /Qb7YhDo8uBCX/TIwvHKgs4iU/zZUI16EEbN39y2ymhD8tKxc7zOdTGYw
 +Qtddj329V9fIkWFi858SndIGrV3z/MweYgK5ztL6xS5Eyd9a9uvCTzuy
 oi78Oho6T6s9dzniQZY7nCPEiKUFw2EvKhbWIj1gsOSo9tP3T3ErkMcjL
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BZ5n78uq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix DMA mappings leak
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > 
> > Adding Maciej in case he wants to review.
> 
> Przemek, is it really broken on i40e as well or is this patch a blind port from ice?
There was an issue raised by Redhat, which was the same as the one on ice driver.
I'm not sure whether it actually fixes it, as I did not test this patch.
> 
> > 
> > On 9/9/2022 1:33 AM, Sokolowski, Jan wrote:
> > > From: Jan Sokolowski <jan.sokolowski@intel.com>
> > >
> > > During reallocation of RX buffers, new DMA mappings are created for 
> > > those buffers. New buffers with different RX ring count should 
> > > substitute older ones, but those buffers were freed in 
> > > i40e_configure_rx_ring and reallocated again with i40e_alloc_rx_bi, 
> > > thus kfree on rx_bi caused leak of already mapped DMA.
> > >
> > > In case of non XDP ring, do not free rx_bi and reuse already 
> > > existing buffer, move kfree to XDP rings only, remove unused 
> > > i40e_alloc_rx_bi function.
> > >
> > > steps for reproduction:
> > > while :
> > > do
> > > for ((i=0; i<=8160; i=i+32))
> > > do
> > > ethtool -G enp130s0f0 rx $i tx $i
> > > sleep 0.5
> > > ethtool -g enp130s0f0
> > > done
> > > done
> > >
> > > v2: Fixed improper kerneldoc that resulted in a warning
> > > v3: Applied commit msg fixes reported during a review
> > 
> > These should be after the '---'
> > 
> > >
> > > Fixes: be1222b585fd ("i40e: Separate kernel allocated rx_bi rings 
> > > from AF_XDP
> > rings")
> > > Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> > > ---
> > >   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
> > >   drivers/net/ethernet/intel/i40e/i40e_main.c   | 13 ++--
> > >   drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 14 ++--
> > >   drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
> > >   drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 70 ++++++++++++++++---
> > >   drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
> > >   6 files changed, 74 insertions(+), 29 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > > index e518aaa2c0ca..0f2042f1597c 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > > @@ -2181,9 +2181,6 @@ static int i40e_set_ringparam(struct 
> > > net_device
> > *netdev,
> > >   			 */
> > >   			rx_rings[i].tail = hw->hw_addr + I40E_PRTGEN_STATUS;
> > >   			err = i40e_setup_rx_descriptors(&rx_rings[i]);
> > > -			if (err)
> > > -				goto rx_unwind;
> > > -			err = i40e_alloc_rx_bi(&rx_rings[i]);
> > >   			if (err)
> > >   				goto rx_unwind;
> > >
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > index e3d9804aeb25..ad15749a2dd3 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > @@ -3565,12 +3565,8 @@ static int i40e_configure_rx_ring(struct 
> > > i40e_ring
> > *ring)
> > >   	if (ring->vsi->type == I40E_VSI_MAIN)
> > >   		xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
> > >
> > > -	kfree(ring->rx_bi);
> > >   	ring->xsk_pool = i40e_xsk_pool(ring);
> > >   	if (ring->xsk_pool) {
> > > -		ret = i40e_alloc_rx_bi_zc(ring);
> > > -		if (ret)
> > > -			return ret;
> > >   		ring->rx_buf_len =
> > >   		  xsk_pool_get_rx_frame_size(ring->xsk_pool);
> > >   		/* For AF_XDP ZC, we disallow packets to span on @@ -3588,9 
> > > +3584,6 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> > >   			 ring->queue_index);
> > >
> > >   	} else {
> > > -		ret = i40e_alloc_rx_bi(ring);
> > > -		if (ret)
> > > -			return ret;
> > >   		ring->rx_buf_len = vsi->rx_buf_len;
> > >   		if (ring->vsi->type == I40E_VSI_MAIN) {
> > >   			ret = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> > > @@ -13304,6 +13297,11 @@ static int i40e_xdp_setup(struct i40e_vsi 
> > > *vsi, struct
> > bpf_prog *prog,
> > >   		i40e_reset_and_rebuild(pf, true, true);
> > >   	}
> > >
> > > +	if (!i40e_enabled_xdp_vsi(vsi) && prog)
> > > +		i40e_realloc_rx_bi_zc(vsi, true);
> > > +	else if (i40e_enabled_xdp_vsi(vsi) && !prog)
> > > +		i40e_realloc_rx_bi_zc(vsi, false);
> > > +
> > >   	for (i = 0; i < vsi->num_queue_pairs; i++)
> > >   		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
> > >
> > > @@ -13536,6 +13534,7 @@ int i40e_queue_pair_disable(struct i40e_vsi 
> > > *vsi, int
> > queue_pair)
> > >
> > >   	i40e_queue_pair_disable_irq(vsi, queue_pair);
> > >   	err = i40e_queue_pair_toggle_rings(vsi, queue_pair, false /* off 
> > > */);
> > > +	i40e_clean_rx_ring(vsi->rx_rings[queue_pair]);
> > >   	i40e_queue_pair_toggle_napi(vsi, queue_pair, false /* off */);
> > >   	i40e_queue_pair_clean_rings(vsi, queue_pair);
> > >   	i40e_queue_pair_reset_stats(vsi, queue_pair); diff --git 
> > > a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > > index 69e67eb6aea7..c5a7e3819ce2 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > > @@ -1457,14 +1457,6 @@ int i40e_setup_tx_descriptors(struct 
> > > i40e_ring
> > *tx_ring)
> > >   	return -ENOMEM;
> > >   }
> > >
> > > -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring) -{
> > > -	unsigned long sz = sizeof(*rx_ring->rx_bi) * rx_ring->count;
> > > -
> > > -	rx_ring->rx_bi = kzalloc(sz, GFP_KERNEL);
> > > -	return rx_ring->rx_bi ? 0 : -ENOMEM;
> > > -}
> > > -
> > >   static void i40e_clear_rx_bi(struct i40e_ring *rx_ring)
> > >   {
> > >   	memset(rx_ring->rx_bi, 0, sizeof(*rx_ring->rx_bi) * 
> > > rx_ring->count); @@ -1593,6 +1585,12 @@ int 
> > > i40e_setup_rx_descriptors(struct i40e_ring
> > *rx_ring)
> > >
> > >   	rx_ring->xdp_prog = rx_ring->vsi->xdp_prog;
> > >
> > > +	WARN_ON(rx_ring->rx_bi);
> > > +	rx_ring->rx_bi =
> > > +		kcalloc(rx_ring->count, sizeof(*rx_ring->rx_bi), GFP_KERNEL);
> > 
> > This will overwrite, and, presumably, leak rx_ring->rx_bi for non-null 
> > values.
> > 
> > > +	if (!rx_ring->rx_bi)
> > > +		return -ENOMEM;
> > > +
> > >   	return 0;
> > >   }
> > >
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > > index 41f86e9535a0..768290dc6f48 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > > @@ -469,7 +469,6 @@ int __i40e_maybe_stop_tx(struct i40e_ring 
> > > *tx_ring, int
> > size);
> > >   bool __i40e_chk_linearize(struct sk_buff *skb);
> > >   int i40e_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
> > >   		  u32 flags);
> > > -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring);
> > >
> > >   /**
> > >    * i40e_get_head - Retrieve head from head writeback diff --git 
> > > a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > index 6d4009e0cbd6..ba33b3b7a2bf 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > @@ -10,14 +10,6 @@
> > >   #include "i40e_txrx_common.h"
> > >   #include "i40e_xsk.h"
> > >
> > > -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring) -{
> > > -	unsigned long sz = sizeof(*rx_ring->rx_bi_zc) * rx_ring->count;
> > > -
> > > -	rx_ring->rx_bi_zc = kzalloc(sz, GFP_KERNEL);
> > > -	return rx_ring->rx_bi_zc ? 0 : -ENOMEM;
> > > -}
> > > -
> > >   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring)
> > >   {
> > >   	memset(rx_ring->rx_bi_zc, 0,
> > > @@ -29,6 +21,58 @@ static struct xdp_buff **i40e_rx_bi(struct 
> > > i40e_ring
> > *rx_ring, u32 idx)
> > >   	return &rx_ring->rx_bi_zc[idx];
> > >   }
> > >
> > > +/**
> > > + * i40e_realloc_rx_xdp_bi - reallocate for either XSK or normal 
> > > +buffer
> > > + * @rx_ring: Current rx ring
> > > + * @pool_present: is pool for XSK present
> > > + *
> > > + * Try allocating memory and return ENOMEM, if failed to allocate.
> > > + * If allocation was successful, substitute buffer with allocated one.
> > > + * Returns 0 on success, negative on failure  */ static int 
> > > +i40e_realloc_rx_xdp_bi(struct i40e_ring *rx_ring, bool 
> > > +pool_present) {
> > > +	size_t elem_size = pool_present ? sizeof(*rx_ring->rx_bi_zc) :
> > > +					  sizeof(*rx_ring->rx_bi);
> > > +
> > 
> > no newline here
> > 
> > > +	void *sw_ring = kcalloc(rx_ring->count, elem_size, GFP_KERNEL);
> > 
> > newline here.
> > 
> > > +	if (!sw_ring)
> > > +		return -ENOMEM;
> > > +
> > > +	if (pool_present) {
> > > +		kfree(rx_ring->rx_bi);
> > > +		rx_ring->rx_bi = NULL;
> > > +		rx_ring->rx_bi_zc = sw_ring;
> > > +	} else {
> > > +		kfree(rx_ring->rx_bi_zc);
> > > +		rx_ring->rx_bi_zc = NULL;
> > > +		rx_ring->rx_bi = sw_ring;
> > > +	}
> > > +	return 0;
> > > +}
> > > +
> > > +/**
> > > + * i40e_realloc_rx_bi_zc - reallocate xdp queue pairs
> > > + * @vsi: Current VSI
> > > + * @zc: is zero copy set
> > > + *
> > > + * Reallocate buffer for rx_rings that might be used by XSK.
> > > + * XDP requires more memory, than rx_buf provides.
> > > + * Returns 0 on success, negative on failure  */ int 
> > > +i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc) {
> > > +	struct i40e_ring *rx_ring;
> > > +	unsigned long q;
> > > +
> > > +	for_each_set_bit(q, vsi->af_xdp_zc_qps, vsi->alloc_queue_pairs) {
> > > +		rx_ring = vsi->rx_rings[q];
> > > +		if (i40e_realloc_rx_xdp_bi(rx_ring, zc))
> > > +			return -ENOMEM;
> > > +	}
> > > +	return 0;
> > > +}
> > > +
> > >   /**
> > >    * i40e_xsk_pool_enable - Enable/associate an AF_XDP buffer pool to a
> > >    * certain ring/qid
> > > @@ -69,6 +113,10 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
> > >   		if (err)
> > >   			return err;
> > >
> > > +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
> > > +		if (err)
> > > +			return err;
> > > +
> > >   		err = i40e_queue_pair_enable(vsi, qid);
> > >   		if (err)
> > >   			return err;
> > > @@ -107,12 +155,16 @@ static int i40e_xsk_pool_disable(struct 
> > > i40e_vsi *vsi,
> > u16 qid)
> > >   		err = i40e_queue_pair_disable(vsi, qid);
> > >   		if (err)
> > >   			return err;
> > > +
> > 
> > Why this change?
> > 
> > >   	}
> > >
> > >   	clear_bit(qid, vsi->af_xdp_zc_qps);
> > >   	xsk_pool_dma_unmap(pool, I40E_RX_DMA_ATTR);
> > >
> > >   	if (if_running) {
> > > +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], false);
> > > +		if (err)
> > > +			return err;
> > >   		err = i40e_queue_pair_enable(vsi, qid);
> > >   		if (err)
> > >   			return err;
> > > @@ -131,7 +183,7 @@ static int i40e_xsk_pool_disable(struct i40e_vsi 
> > > *vsi, u16
> > qid)
> > >    * This function enables or disables a buffer pool to a certain ring.
> > >    *
> > >    * Returns 0 on success, <0 on failure
> > > - **/
> > > + */
> > 
> > Also, this one. I don't mind this, but seems unrelated to the patch.
> > 
> > >   int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct xsk_buff_pool *pool,
> > >   			u16 qid)
> > >   {
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> > b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> > > index bb962987f300..821df248f8be 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> > > @@ -32,7 +32,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring 
> > > *rx_ring, int
> > budget);
> > >
> > >   bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
> > >   int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 
> > > flags); -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring);
> > > +int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
> > >   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
> > >
> > >   #endif /* _I40E_XSK_H_ */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
