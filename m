Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF0363BFF6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 13:22:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13458414C3;
	Tue, 29 Nov 2022 12:22:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13458414C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669724534;
	bh=J2kWVY/ZT6FWBBfikFyl0GigsgKSFDwLcgTnWJrjxGs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=67RTdfUQOOiPSgND9Ol3ljYmB0dx3m1Hobwvlgad7z4v7BqQ0F/8np1WBcvxWywkN
	 tgEJpic70oJPJQEro60LUKTWSJSdImIVoBsgZfPOtng4gNce1rkq0b/Ee7oew+a+Yx
	 0kqr6lNcaCpfOGWLf6lJazZgiDmrMvnpnfS3u4niF77Ur/HJNhaOrNne0NA/DYSXSQ
	 SUDvB/U5uP0S5JGteLh77DPh5OgwKP7RNnTFZ0Fv+R+ViRRqlcwWFtrN+aP5eITpny
	 oBP4ltcrVVKzfRAaO9LrzJUJt5kmeRj73XgmGc1L7mj/a0WGDwq017qh+mhJcnrt99
	 diHwyxYkeLDTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7O8Ym_pc3n-W; Tue, 29 Nov 2022 12:22:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A895D4097F;
	Tue, 29 Nov 2022 12:22:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A895D4097F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 763DD1BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 12:22:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4D76F8140F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 12:22:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D76F8140F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i1IqoVX66bQ1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 12:22:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54E898144E
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54E898144E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 12:22:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="377240784"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="377240784"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 04:22:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="645879405"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="645879405"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 29 Nov 2022 04:22:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 04:22:02 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 04:22:02 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 04:22:02 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 04:22:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VtuSv9kwOX5lLOsPkk4Tl5IAZtAlTPiMc/WScgqdyRef/2fCj4Q9UlzSN7jX/isGl1Uyhj40qu4yW4tuO24Jm8uCc0prQISg/mKJBb+7+XULggMODsB4B1wvrV+CMAy6AVYkqHwZhux91Z8GFGTg4xIAsPntAz20IhkpJaVRpt70ZV5a87WFsr8Z9Ls8WaWsxKvSOUgQgVaZ95IFqN7Qj6BMcNiisK567om/mY5PgEknF49qcR5fcvaGPFae9sMb8rpHjp/U2a6otWGKOxuYPNwctlgz9Kn8Xo3ELm921gFwGxnTeE5rrqrJHiIPMC79qD/wYZI4C4qm5Y8s0e0QyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UJX8iB06KHnDZ2ioc2fmVmSF4cjB+sk4aLV5fdM8Q3w=;
 b=MNbqd2iLhUcQ4YJlDDQxhCqN0NObOxvq/rm4STfYPlpt6eo3M1ZjHbRiC9p5ASHsdGBiwHmmiNo14mpcWzMKe8hTUtfQpbirQRbF1Iplbj0cabWu1q33rn98tBAoXFuhzFKrvtFLOLLRbo0lNTDXMp6CHlCqRHs/15ylPxIVULwxSXh9XcglikhcCyky3oCbB04k3kJ1uLZis2Y40+yqILW9Xthv+3qmtGfpyJXLeeVBL506S1uRR9GwxRJB+IfXrn/cgDgaPkrjZ2L6sQ3RdMRlhk876Ig3X2vFn/K46utEfjgZHL4cOsyZt052cqFsaUKyd3g84DIJYzL4XDPwmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5819.namprd11.prod.outlook.com (2603:10b6:510:13b::9)
 by MW4PR11MB6812.namprd11.prod.outlook.com (2603:10b6:303:207::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 12:21:59 +0000
Received: from PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::39fb:1749:e475:4a0f]) by PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::39fb:1749:e475:4a0f%6]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 12:21:59 +0000
From: "Sokolowski, Jan" <jan.sokolowski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix for VF MAC address 0
Thread-Index: AQHY7R/9zMOZ4f+atU+NWj/AhnN+rK4tJ5MAgCjXxnA=
Date: Tue, 29 Nov 2022 12:21:59 +0000
Message-ID: <PH7PR11MB581936619B01C587EDFA7F2D99129@PH7PR11MB5819.namprd11.prod.outlook.com>
References: <20221031120028.2457-1-jan.sokolowski@intel.com>
 <5bad2ec9-93dd-e627-18a9-b9ecc34215b4@molgen.mpg.de>
In-Reply-To: <5bad2ec9-93dd-e627-18a9-b9ecc34215b4@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5819:EE_|MW4PR11MB6812:EE_
x-ms-office365-filtering-correlation-id: 678cafb9-ae8d-4686-c08f-08dad2045017
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WqJVGZU63frENFHP+TKWHlwGyxuSgYDIxzxcteoXZAPMUhr2Gkmghh1nzJ3/48tO246L7LxZFQEYNSISFLB4RDLn4xtzQPQCGgAPtWDjgluMcixh2viE/YBXxctzuiZ/uFGEyQbxA8yTq021FSSNi/8deQeeSSZotDjwm/v1gifhpw+y9llU8qGzagCZolW8RN2YvZOz4h2IrwdLoT0LL93cACBGgQqnGMNb3IXEIHa5rJAWoy9uYPWpKcWbvCOe2g0+Ej00TTLIDf+xwfqAn4I4GlJaezwwm6YIecorPXb4cyO4Ow1jCQsAw2wBKu6auvp0SqSQpsElrFeAtZ6i9ERSqVKe7hkznPzN21lDuDD9wtWeEdGlo6CwPylheYAmUpOIR6jFYjKLZgBble4RB1R5y068///QbVHJPxgsYaCtZzGLyRUP+6EwnJOVLyt2mwKCwIabp+Avz4x9dkwYSEnKrMR2r8v90J5KqcGI8zEcAsh4nBnhOX7FkogvIyGWzq9Odkb5PbGIzWKgFNkKWSowikjZERYMF3hkJts5m1TjGN4aB5o9Sb/j0GzXcGhP+rb8pVBFoXYzMcZGRvnLr/l3WP6/YLA26h+aWgY0ZWMEciiefj253CFMaSXIiLhN5rihhX7GHj5cG9biMu5ZI2OX3FBFcJFgUUNam8RQdv9FYL+626NdsZfphR9Vx9m0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5819.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(396003)(39860400002)(366004)(376002)(451199015)(2906002)(83380400001)(107886003)(122000001)(6506007)(38100700002)(478600001)(26005)(64756008)(33656002)(76116006)(8676002)(66946007)(66476007)(41300700001)(66446008)(66556008)(53546011)(82960400001)(71200400001)(9686003)(5660300002)(8936002)(186003)(7696005)(4326008)(86362001)(6916009)(38070700005)(55016003)(54906003)(316002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U1MyN2JRQlN5d1NYbWZOU0p0b0lXdm5qUS9OVExPbzhxTHhsa3o1MHd0QzVo?=
 =?utf-8?B?RWlhOWVLWUJtOTZad211WVlQNmNVTmRCcnhEc0ttM0lHcUZpR2tmOU14a2FF?=
 =?utf-8?B?VHM2d1p0eUo1M2Vqc3VxZU9qUjlRZnR1VnczQlVFeGhiYmVzSzFnUVlTSUU4?=
 =?utf-8?B?d3lEaTJQZnlJd1hpOGF3MTdMMmNPUjFrTFhKcXJBQ3AyTkREOGFvSVc0b0tp?=
 =?utf-8?B?QStjSk1NVkM3b2NZSnVwdC94TURXZzFrSFR1ekE0Zko2TDdXTEE0NnVWcWlR?=
 =?utf-8?B?NVU5QVBBOGluOWxnQXlXODdsVEdVYUd6R0M0dDFyL1g3WFcxQktLTWJ3SXJI?=
 =?utf-8?B?QzZFMXlaaTRVOUhleFdmU1oyT0RPVUNxUXk1SGhUbnFtSEpqa3RGemRTYlIr?=
 =?utf-8?B?UmZaUExYclhIR1R4Yzk1VW1pRFdhUHR0T3NDMGRKZnh1SW9meEtmQWxMeHFJ?=
 =?utf-8?B?Ykx4ck1XeU82NENyZUhYVlpQTkZ4UWcwSHJ3VjNrQldicGhYRlROMzRkWmJl?=
 =?utf-8?B?RGZzRXdNNEhpd01nSmRJQ2Y1c2lNamM0Qlk5bWRHYXB4ZlV1NDlJT1pxUG1n?=
 =?utf-8?B?bkM0cUlqTjBwc0VMNGJDejVBelo0VzRHNFovSnRwSHMySXl3VVFwM2Z1U3BZ?=
 =?utf-8?B?Zkw0eWRoMXM1MWJPMEE1UTJhMHVXM3BFMFBJdmVxcW1mK2lJYVB5bDltbkpw?=
 =?utf-8?B?V1lZeDExdkgwYjlrUzF0ZWlHWXc1dGRNSnYzNVNMSERLa0QrQ254NVdIUVJF?=
 =?utf-8?B?YkRvUUw0ZGNXUG1rc0xFUmRWUVBtSnZaZ1lZQUVjMzhYOEhERHVjQlVLL2xo?=
 =?utf-8?B?d2FPbVRHSzZnMUIzaFdnVk5YM2pFTzNwcEdoRll4WGZTd2QzTjhQbDBUMjFC?=
 =?utf-8?B?SDVlL0orSkhkOG5TUjdrdEo5Z3NHVllSYnZJaW5QWC9ub1cwWUFPSnVqK0h3?=
 =?utf-8?B?NGZjNFd5TkUxMzZLZ0o0TEtmZytFZHNxdkJNcGE0andwWC9jc1RzT2Rrd3FJ?=
 =?utf-8?B?Q1ZjSDFmOFRpN1I4dG9XcUZXMFM3L3cxS0hyZEo5WExMc2cwblRuM2ovSjV5?=
 =?utf-8?B?YlFKeURDdUVEVC9zTyt4dUFGV1pwaGVDbUVqQ3ZkZExWdC85MENFWmpKaGh3?=
 =?utf-8?B?N245YXhVVENXSVYrd2thdHk1R0c0QjNoaWU1Nk1zTWhmOHdQdjYxaW9hSncw?=
 =?utf-8?B?MHJHY2N3TmdxY1dHblR3ekpUVnhkRERZY0pVNTEycEI2WWV3d1FEMWNSeDc2?=
 =?utf-8?B?TzAzYXhIUGthUFFMeVc4VnFUNUFjRmNwYitJSC82am55WjMvemFCeTlhaGhV?=
 =?utf-8?B?bzh1WDVtbHdRWEhNN1BWNVIzSFBwTm55eTZRdWFHKzZDQ0lXS0lmUlFRelli?=
 =?utf-8?B?cEQzWGZkSlYvRU9PV3FLdmZjN1BzRGIwZlZUUTlJSE1MVFJ3aWdWTXkrYXBF?=
 =?utf-8?B?Z2J6b094UElBQVBVUDZBT3FqeXR3ejVnVTFlZlEyRERoelpBQW9oaS9zN0RY?=
 =?utf-8?B?SkxSNWhHRWZSeUtmZWJYZTdtRzlrbjZxZDBoMnJCczdFNjM2UUp0T25jS29W?=
 =?utf-8?B?c3Q5ejI1V0IwZ2hlcVJQNEVkeXdsRWlTYUs5K1piemxTOGFiNDE4dHFtdmJL?=
 =?utf-8?B?aWFHVzhLUDlmMm0rUlBORnZBWWwxWVd4a3o1a3QzNGIwWEw4dER5VUViRjlq?=
 =?utf-8?B?RXNFODdHOE9NTjExT0JoNTZjNGVPNEg3ckdFOEVTWGc1TWl4NmdQSFJ1bUN5?=
 =?utf-8?B?V0VKUCtEUDNTU0xSckFrWGI5cW45TG1UUW9VZTBhdjkrQzFvK1Z6N0w2alJW?=
 =?utf-8?B?aWVxeWNSdGI4TVZsUCtGNVZWeS9LVGtlWkRqMUdQbm80ZnN3RnpvVE1lN3E2?=
 =?utf-8?B?NnJBbTdpbHFxQ3dJRGVielcrYlNGNE9tOWFRdjlEMkI1clhxQ2RQeVVNQXM3?=
 =?utf-8?B?T2gwUTJIWWJyY0o2R2RhR1RoM1dpZzhZTFB5U2dUUlhqWHl6c0ZOZ1JOQ2Vl?=
 =?utf-8?B?TkVGOXVvUzBDbVg3T3BaZ0IyZlhCMlBScTNLZnA3eURudUp4ZmRFV0didlRP?=
 =?utf-8?B?NElpZkFpakx5S2h2STdaRVpZaDBNYzRrbnBWcTZ0Wi83MWY1Tk9EdVRGcjh2?=
 =?utf-8?Q?7Ltr1xgseVNhfeMPphriIiTTI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5819.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 678cafb9-ae8d-4686-c08f-08dad2045017
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 12:21:59.1313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /piDqG8nkA8FrfRSe3pMkWbNAaLnsq16qKL1PGHqmn8uY5q0yqw3Gr04vWIq0NNnIaB+9R3Gl3yWFPWZSz84gVMbgVcYbsTO4WTGFroBsT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6812
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669724526; x=1701260526;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UJX8iB06KHnDZ2ioc2fmVmSF4cjB+sk4aLV5fdM8Q3w=;
 b=YgCerBBvn3uZ1w5k/gvuHbJQBukLQLMkxWMgl9wIZrLoqEC4zYu5z1bI
 ixNNw60neIuju92k9GO5fHNCW+iGPnuieKyZh5pEuuwB3DsMcJM/K5D7o
 lsHQ3Avw5BDeT6V8SS/Yfb/omQ09iMFK+Iw9DEJ25CpIHs/l0QHz2l2TI
 CzKPQGNW0taUAbCfK6MvW/xACjwi/3Di5mFPAahF2Z3vIFEAex95JiWsh
 BU4PRYGliHGm6UkoNcP8yVC0sUoKDjyVc62j2r5UYNGY3PAdJXIpXWVno
 8gA980e7ik9AKDdZC7P/IZfSN7vXhRllUKIvYupVWAjfqF81tN7TLwBe7
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YgCerBBv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix for VF MAC address 0
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello!
With regards to the perf question: No, such thing should not be noticed at all. 

However, I've noticed this patch has been pulled to dev-queue branch of net-queue and next-queue.
Should I reflow the commit msg and send a next version, or just leave it be?

-----Original Message-----
From: Paul Menzel <pmenzel@molgen.mpg.de> 
Sent: Thursday, November 3, 2022 1:37 PM
To: Sokolowski, Jan <jan.sokolowski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org; Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix for VF MAC address 0

Dear Jan


Am 31.10.22 um 13:00 schrieb Jan Sokolowski:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> After spawning max VFs on a PF, some VFs were not
> getting resources and their MAC addresses were 0.
> This was caused by PF sleeping before flushing hw
> registers which caused VIRTCHNL_VFR_VFACTIVE
> to not be set in time for VF.

Please reflow for 75 characters per line to make use of all the 
available textwidth.

> Fix by adding a sleep after hw flush.
> 
> Fixes: e4b433f4a741 ("i40e: reset all VFs in parallel when rebuilding PF")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 72ddcefc45b1..635f93d60318 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1578,6 +1578,7 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
>   	i40e_cleanup_reset_vf(vf);
>   
>   	i40e_flush(hw);
> +	usleep_range(20000, 40000);
>   	clear_bit(I40E_VF_STATE_RESETTING, &vf->vf_states);
>   
>   	return true;
> @@ -1701,6 +1702,7 @@ bool i40e_reset_all_vfs(struct i40e_pf *pf, bool flr)
>   	}
>   
>   	i40e_flush(hw);
> +	usleep_range(20000, 40000);
>   	clear_bit(__I40E_VF_DISABLE, pf->state);
>   
>   	return true;

Did you test, what kind of performance impact this has, when resetting 
the VF? Is the reset happening often, so 20 ms to 40 ms are going to be 
noticed?


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
