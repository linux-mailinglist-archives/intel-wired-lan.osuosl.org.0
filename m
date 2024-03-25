Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17808889BC0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 12:01:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C068A60888;
	Mon, 25 Mar 2024 11:01:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JLHIH9vIXYP8; Mon, 25 Mar 2024 11:01:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C0D660812
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711364461;
	bh=RpoQZ4HR17KeIgxhbGf9+ivBYOsY+dpP9c2DMbsIR0U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cTrpoXX/dCIiragvAXZvHZp1YM/jUZFpf8tvk2gHjPk2vlGp+ePKfX9oviPdyk/zZ
	 WteabNuwUeIp1B8aRHp9RD4a61/0p5D0X3QNiDThwLHX5pu3iCYdg5ihWNihKylbN4
	 YIf2QsLj1FsXT6s418mx+/sw2X88YPGZriy/NFVTStBjhz2dwMPMDZoPeP49v7pT7l
	 b4k6j+oMLijXJCxk3gc/dtpvREjKkmIvk3+09DBX5kGuEcw+Dtqe1I+zwnTYrHgcKS
	 YIGti5l8Zxc6Ow4vd6OiPRhCkzZi6vgTszw3ByIegErPPnNf2UFTQIDj7aHiD1x9q5
	 XtxOCChSMqKMQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C0D660812;
	Mon, 25 Mar 2024 11:01:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 04F4B1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 11:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F246081E61
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 11:00:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DUQraP1409hN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 11:00:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B20F81E2B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B20F81E2B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B20F81E2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 11:00:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6563453"
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; 
   d="scan'208";a="6563453"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 04:00:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; d="scan'208";a="20246342"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2024 04:00:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 04:00:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 04:00:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 04:00:55 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 04:00:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WBGpHHY8OOrfNf3eM15k80jKYqBnvqbwlirIT2k+sCeXUNej+tLiTChCdYK+AcvYbXXWtelXUkJpduoBKstgQTq0xgKmKZSSaCRYHli2nzAW2zaWOlGnnJ1qa60xB0ld+I/Stl9mG9SRt/GFA4zJYpaaYsVQvPHChVIjZc9ja78XfyFt4/DcxHtudHwJgmx6eCAPiv0X3gFxyhHH0tzKNMgBUExa3eOaGGuCtYxFgKiCCitvJ6GXitAXoTKJKuU7Z8s2UHbCRToQp4UaJ6KE+7iLd79zEQZtM+Y9wgfVwA630hg8/4NnJblGHXC7IL02ZJEoLDt0tDSge45RduKYmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RpoQZ4HR17KeIgxhbGf9+ivBYOsY+dpP9c2DMbsIR0U=;
 b=eQzYvhYT4IZD7bghdj7vXLCRewl8rByOF7h48rlzr8Ur9iVG5nFWaUybpOQJDoPIlnS+jn0nl1P5oNRiZyOaQIj9fTqnS0kRTZYE1DO6YvsVMf6gnugbJAfbTb/nMjyDo7dBWqWdSjtl9l4EhiVFBaJUtbO1yAUMgOlm/nuxYXEmPPFGxdWLhOLhbUbZnU4NsojTbTEwDNAy7EDdCzXHAlECY2l9PvsIVfDizjaTsldaxKLeNl1eqAzgqGRCMZfgHDlJ+q5PGtHruD0Z6bRI37tur4meHG+AENG2EtE8P374p+j6sP5FVPf51HoWv3zenKelU6zvn/xlCiSn38Tm9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14)
 by IA1PR11MB6097.namprd11.prod.outlook.com (2603:10b6:208:3d7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Mon, 25 Mar
 2024 11:00:52 +0000
Received: from PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::85:b53f:9a2b:e2a9]) by PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::85:b53f:9a2b:e2a9%5]) with mapi id 15.20.7409.028; Mon, 25 Mar 2024
 11:00:52 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix
 i40e_count_filters() to count only active/new filters
Thread-Index: AQHadSxiCD0xJJ5VmEuVUqoeVGHU/7E1gl0AgBLakdA=
Date: Mon, 25 Mar 2024 11:00:52 +0000
Message-ID: <PH0PR11MB5880DBF5BD3925FD14EF0F058F362@PH0PR11MB5880.namprd11.prod.outlook.com>
References: <20240313094400.6485-1-aleksandr.loktionov@intel.com>
 <d64cd3d6-a13a-48da-8658-7cfc12d98066@molgen.mpg.de>
In-Reply-To: <d64cd3d6-a13a-48da-8658-7cfc12d98066@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5880:EE_|IA1PR11MB6097:EE_
x-ms-office365-filtering-correlation-id: 9cbe933e-1f1f-4aa8-b678-08dc4cbad672
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: omalm9/swwQSpLl+RIvOVKFWNcA62KLK1jIj3fH4YCa8SgQyj60ddx1vdI5AWBJx8zDwraH5FbLVMI/t8x6ISbgz+O+ePcwyrHttvOMhrZttwc5f8ouL8L2LEW4ryB7BqGUafyIf53Y/383nvuFXAqQjiHnB88/W9s8Q712KUEd15I2ffhYeSgES57rKCknWNGqYqDj4NAv1dRBypBwVcvezJEUfbps5wOYkBuiyZv/KycOjmEvAs55VsIyl+sg8mPvbEvh925X/jJ8N7uGeuhk4zAQXdOiY0ASMQb0WkTVf7Qs5JZxxDvHrJD6o1Bs3ofeHkROY6gw3mPKaHdWCO3r0LG6GWm4nla3g1SeE9Brgn0WPyRkUlCsV5YGaliHETjG+J3OIDPp/1ZTawSKiUqEPV3Tc68nTkzInmYGg9rYfq2QboJsEM7ebk0OvkMKGLJKxCgRgbkC7qUcu3xn2l6oAsg3dyO0iJfnrwF9qvmQ1d08f02V/VbFLThJPNLdyfqm7yWrhlEd8njZyQ5lLXDW0nvFyrMtH4fLXIOK3XphBPsqQgalxTJFjm3BSDalts1uLb01UW1wfENjt0EVYVRMuEFyyxjMMGgHwnYxMNFQZUBL+bhTVvivoeBnIneTce+auDVeCDmofk2h+PdMIPDi1KttkmhAcw4CBenXFERs5FGy6fU6eQJBUDEScYLe+MZzf2WiRVXRAv+LE41owkFCJWIh3MA2h4Anne7mPc/Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5880.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cVpONnV0NzJHTGc0THF3bi8zWUNXME1MazdIT0x5d0gwNnVIeGNkYVBNdVNC?=
 =?utf-8?B?ejhwSkZDUGMyK3E2YlJhOG9PUklvSGFOZWRNUFJjNlRJUVVaVHdrVnlBMHov?=
 =?utf-8?B?aUR0TTNnYmNIekx6b1VLK2JLcFphd1l6Yi9jdFNOcWdvODFidElmTi9sMnJO?=
 =?utf-8?B?Z0lLYkxseHpCOWltQm1RNXlyTWZUVU9VWE83cEhZd2MxdlRSL1JZVEJXRHVU?=
 =?utf-8?B?MGo4bFhIWi9WVUlya3BveGJPeXZzeU45d0trSlFJeDZrbzJCU3VnVEhVTlpq?=
 =?utf-8?B?TmlLbi9HR2tucnhwZEhuMVdVQ1JjVlEvc0xBOEZjUUZxSUVPclMrV3VjMVZw?=
 =?utf-8?B?bzlTY3AzcWRvMWc1di85R0FaVGpuL1FhOXMvaGoxQmw5R2pIc0Z0SWJVMk9N?=
 =?utf-8?B?UWtRME1vSmI3djB1TU5maGM5SGwrciszK2dqRWw2QTJ5L0QyMGVyTDZMem5m?=
 =?utf-8?B?SWoxemlRdE5VazU1UWt3V3M0TEZuNTNWTWpvL2dzUHM1QnNWNFpRRjNjWkpJ?=
 =?utf-8?B?VEtuaG96OW9tczA5WWdyVnRnVmlVUVZZVWMrSnpvZDFpMUZIb1dZY1RJLzVJ?=
 =?utf-8?B?SXdUVWRTWWRJR1ZacnhwdlNvQUR5OENIclNpSW4vRmZiRG1peWVxM2FxcWl4?=
 =?utf-8?B?NE1hQkYrZTcrMkpubFQ0eHdRNzdSMVAwZjFSNUpWNmFtODloOFNsYXdVRkd0?=
 =?utf-8?B?emFSY0twYjY0NnBXRzFUL0R1Vkl4MDhTMDJNZHhjOURPZGtuN0pSczdVVkk0?=
 =?utf-8?B?SStCa0Zxb0Z6aFJXbnJkdDhWdXlmNnBnMW50V3NjVSs4K2NVZEVGYkpmNXk0?=
 =?utf-8?B?czB0dTNaeXNFNFNLd3VlNVN1OXdZYmhwRXFpSlRGRnJBMU5KMGlEdFJNZzc3?=
 =?utf-8?B?VFdyUURENzNPMkRHODNVdktnT3RNdEtxcXFWbG9RS2w2cDVoUkY0aW5OUHdj?=
 =?utf-8?B?eFRJWHl1QlE1YldlMlFsZEYrWjI2bDJXOFpkZm5GYjRLUTg0aE1tVGZmWUt5?=
 =?utf-8?B?Vyt2ZWFaa1B6cjhTbnJxQUJaU01jR25aTGN0RHV3MDhvNjZNK2FPYWczS2Jh?=
 =?utf-8?B?Z1FuM3J3N2g4NkNwcVhNdTlUaFhVSXVHNXkxUEhiaXMrRDQyYlM3ckRaRzd1?=
 =?utf-8?B?YmFZS2RseUZ5enN3Qmo2dFZ4NlBIZkpET2RGSndPaFlVZjJ2SGt4S2c3T1Ft?=
 =?utf-8?B?cWxOcW5POVdxTTlaTFFOTVZGcHJ2MFo5OW9QRGZWM1hPNGQ0akcyVVZGUTI1?=
 =?utf-8?B?TmJxZnFmUW1BU0RORktKZXBLRXEyWUVSeWhpS1VhSFpJMFpGeVltMGY5MklQ?=
 =?utf-8?B?NlVWcXZrMnI3YXJ2bEI4MXdHMkhYUlRNNU90SU8zN2oyWGw3Yjdadm1DaG5x?=
 =?utf-8?B?M2ErT1FnK1B2b0VpbUZOZU1URXlKNnhicnl4eFdXS2w5RTAzb1NoRWFVZkJD?=
 =?utf-8?B?QTRBSHlseGYydzNZV0hBMmlwbHIyQ0JWek9nT3JacGVTeC9SS3RObWlsd1Aw?=
 =?utf-8?B?cmFHN2lxV3VzVFdNNFo0NXNVSXdxRFN1TWx1QWNJYXllS0lqRHB5RnJSMkF4?=
 =?utf-8?B?ZCtDM1VWSG9oQ3BFa3lxN2xVZlFDbkNXc0JqeVY3RDlSYkpwdjVEOU1malIv?=
 =?utf-8?B?dXBodXROSkdwWVdZNVluUDN2OUpZRnZ0NDhJZ2ZxUFZ2M0ZSMTB6TkVEWXBr?=
 =?utf-8?B?WG9RdjZZM0hBMDc5ZmVoV3lUWnhGS1ZXc1NoVWRLTnVFZFNZWU1sNkU2WHc2?=
 =?utf-8?B?L09aQ3RnVmxlM3VkK3A5WnVXUGV5MjJoQXhLdk50c3pSZ2lNRHNhZE5VN2Vy?=
 =?utf-8?B?cThoL3dzTXI3emlNd0dsYTlZL3VKa0hJU2pUeUhxVVoyMmhzMkN5MHdHb0Qz?=
 =?utf-8?B?TXM1WVpnQlp3WlB1Zk50VGdpeTUwS3FTZG50Y2JVTjF3czB6L1ZrdXlHbmgr?=
 =?utf-8?B?dGlPZ2tldENIcUtUdjkzZFdwZm43REJDa1lFbUFmeDJGd3JOT2J0N085cUt0?=
 =?utf-8?B?azd4VDQvTFQ1Vm9vOFdNTHM5RHloVmk5aTNKYlVpcnNycDdzVWx1NkVYOUE2?=
 =?utf-8?B?MDIzcUwwL1JyUlQrOGhzby9pdHBDem9lUHBGblNGZHVXZkN5ZUlRNkpDeVBp?=
 =?utf-8?Q?ofmeya3H8dZdZgHRcVS0osdm7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5880.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cbe933e-1f1f-4aa8-b678-08dc4cbad672
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2024 11:00:52.4970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZCBh2cIkIi1CWcuU/UUc3dI3OH382RUNQZ4gu7OLr0YYSI08IrzWrh+aKtJ2vTb4uxtkbRr6PaueMDCPtrlaC9YIGRxofxcfGDTaDV7bOz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6097
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711364458; x=1742900458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RpoQZ4HR17KeIgxhbGf9+ivBYOsY+dpP9c2DMbsIR0U=;
 b=W3398OCYy+nOb31bw27frDWRbEcuzGM+vuTeyD4Bw8fIF05cfoFlSU/k
 pIakiMSpI1IKiyVFXOdmweXEx+oZ53erVTekVv5nkWBmfaWupXzeBEmoT
 S9Hk2/FznOVGzoD4kTZoGNOhzg2b/f7hXs7qB4/ZSqI0RnMgJmR+YT8/B
 RF2dw3Ud6VQ6mOmBACE0tKxSDix/FOrBoinvHk41mS34d/IaNYBqDJ09o
 XRzWBDB6KCbM6NogcDANmM+w8Z8JqIRlSp/oQvJt9Ja1ZwuyHViSdZq55
 6ac4KPyQrfcEXM+iYPrIZRiK4tJoNbPoIw3NoeXiBPI8iTcNj8I70QgBd
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W3398OCY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix
 i40e_count_filters() to count only active/new filters
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBQYXVsIE1l
bnplbA0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDEzLCAyMDI0IDEyOjA1IFBNDQo+IFRvOiBM
b2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IENj
OiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLdWJhbGV3
c2tpLCBBcmthZGl1c3oNCj4gPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT47IGludGVs
LXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOw0KPiBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+
IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCB2Ml0gaTQwZTog
Zml4IGk0MGVfY291bnRfZmlsdGVycygpDQo+IHRvIGNvdW50IG9ubHkgYWN0aXZlL25ldyBmaWx0
ZXJzDQo+IA0KPiBEZWFyIEFsZWtzYW5kciwNCj4gDQo+IA0KPiBBbSAxMy4wMy4yNCB1bSAxMDo0
NCBzY2hyaWViIEFsZWtzYW5kciBMb2t0aW9ub3Y6DQo+ID4gVGhlIGJ1ZyB1c3VhbGx5IGFmZmVj
dHMgdW50cnVzdGVkIFZGcywgYmVjYXVzZSB0aGV5IGFyZSBsaW1pdGVkIHRvDQo+ID4gMThNQUNz
LCBpdCBhZmZlY3RzIHRoZW0gYmFkbHksIG5vdCBsZXR0aW5nIHRvIGNyZWF0ZSBNQUMgYWxsIGZp
bHRlcnMuDQo+ID4gTm90IHN0YWJsZSB0byByZXByb2R1Y2UsIGl0IGhhcHBlbnMgd2hlbiBWRiB1
c2VyIGNyZWF0ZXMgTUFDIGZpbHRlcnMNCj4gPiB3aGVuIG90aGVyIE1BQ1ZMQU4gb3BlcmF0aW9u
cyBhcmUgaGFwcGVuZWQgaW4gcGFyYWxsZWwuDQo+ID4gQnV0IGNvbnNlcXVlbmNlIGlzIHRoYXQg
VkYgY2FuJ3QgcmVjZWl2ZSBkZXNpcmVkIHRyYWZmaWMuDQo+ID4NCj4gPiBGaXggY291bnRlciB0
byBiZSBidW1wZWQgb25seSBmb3IgbmV3IG9yIGFjdGl2ZSBmaWx0ZXJzLg0KPiA+DQo+ID4gRml4
ZXM6IDYyMTY1MGNhYmVlNSAoImk0MGU6IFJlZmFjdG9yaW5nIFZGIE1BQyBmaWx0ZXJzIGNvdW50
aW5nIHRvDQo+ID4gbWFrZSBtb3JlIHJlbGlhYmxlIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGVr
c2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gPiBSZXZp
ZXdlZC1ieTogQXJrYWRpdXN6IEt1YmFsZXdza2kgPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiB2MSAtPiB2MjogYWRkIGV4cGxhbmF0aW9uIGFib3V0IHRoZSBi
dWcNCj4gDQo+IFRoYW5rIHlvdSB2ZXJ5IG11Y2guIChJIHBlcnNvbmFsbHkgd291bGRu4oCZdCBi
cmVhayBsaW5lcyBqdXN0IGJlY2F1c2UgYQ0KPiBzZW50ZW5jZSBlbmRzLikNCj4gDQo+ID4gLS0t
DQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jIHwgNyAr
KysrKy0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV9tYWluLmMNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9tYWluLmMNCj4gPiBpbmRleCA4OWEzNDAxLi42MDEwYTQ5IDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4gPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+ID4gQEAgLTEyNTcsOCAr
MTI1NywxMSBAQCBpbnQgaTQwZV9jb3VudF9maWx0ZXJzKHN0cnVjdCBpNDBlX3ZzaSAqdnNpKQ0K
PiA+ICAgCWludCBia3Q7DQo+ID4gICAJaW50IGNudCA9IDA7DQo+ID4NCj4gPiAtCWhhc2hfZm9y
X2VhY2hfc2FmZSh2c2ktPm1hY19maWx0ZXJfaGFzaCwgYmt0LCBoLCBmLCBobGlzdCkNCj4gPiAt
CQkrK2NudDsNCj4gPiArCWhhc2hfZm9yX2VhY2hfc2FmZSh2c2ktPm1hY19maWx0ZXJfaGFzaCwg
Ymt0LCBoLCBmLCBobGlzdCkgew0KPiA+ICsJCWlmIChmLT5zdGF0ZSA9PSBJNDBFX0ZJTFRFUl9O
RVcgfHwNCj4gPiArCQkgICAgZi0+c3RhdGUgPT0gSTQwRV9GSUxURVJfQUNUSVZFKQ0KPiA+ICsJ
CQkrK2NudDsNCj4gPiArCX0NCj4gPg0KPiA+ICAgCXJldHVybiBjbnQ7DQo+ID4gICB9DQo+IA0K
PiBSZXZpZXdlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gDQo+
IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0KPiBQYXVsDQoNClRlc3RlZC1ieTogUmFmYWwgUm9tYW5v
d3NraSA8cmFmYWwucm9tYW5vd3NraUBpbnRlbC5jb20+DQo=
