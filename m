Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B227FCEFA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 07:19:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24F9243529;
	Wed, 29 Nov 2023 06:18:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24F9243529
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701238738;
	bh=6bgrx7NSkTMByF5pB95hG5c413juzitR/uV/S/fXr7A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cWRxzUGzsibHqHbbZeiQ6Ql4UM03uadh6jpX7m3folJoabS4OsAZYocnjsnFFi26u
	 p6ZQ0RUGD/nJ3QRCjTPwD/d1MGOLKsxbTf45RD/K39RVdT8mw9rs2xve+z3HmBeSSk
	 ds44RZAm4qjLuZAcJYmFPc0GAhBw6hQaVyWKjGhLxBSVy90bZ1ehHFQaz4+Ja280gK
	 PUjfiBCZYBY0rhtHyqr6GqPFA3D0Mh1KynDNSwo52WuC/n2RGGHc/gSeu3AG95OOgz
	 puOpVr2EY0faSm8LzwyAixBF0Yz0Uyt8wcmItK4GFhpHgzJ55Pe1i4gbViXFQu5Dao
	 mFaILk6AdgA2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8irNH906_gUT; Wed, 29 Nov 2023 06:18:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8B28401D5;
	Wed, 29 Nov 2023 06:18:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8B28401D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D90AD1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 06:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8297820A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 06:18:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8297820A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FvGrmotykYN8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 06:18:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9E408208E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 06:18:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9E408208E
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="395923994"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="395923994"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 22:18:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="1100382569"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="1100382569"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2023 22:18:45 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 22:18:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 22:18:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 28 Nov 2023 22:18:42 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 28 Nov 2023 22:18:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RfDvOBd3eYcmabl0E56s40s/xrJ4rT48AHvr2fOtCC4Sijo1PRjEfguhlK5oeQtRIfXIjmXauexeZRLjgIWgvTmHxbDZ75n3xRbiDGFrxso1y8IrR3YUzEthpuHGMhj5HzM3NUu5phOl0ZSp0rxtXNjvSY8bKZ+pRi6sAAys0j34hKg4tx5MZ9/D/Gr4reMZUw077nY5ME8j3+TNg+r4jS4Cs9xB9+xUpOtThZOykFri29vTEAHSVCKAilp1H6ols8e3T/+3IpBG9qYoBH5JINv5Ph9GlMlhUvjXhxXkKHumSgC2x2UNYHNZS5Qg9HCqVUI5dqyO41kL3KsQycBMjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8C1KhRP8j1hsqm1I+INoItsIwf0+yOAPCCIrsvsh9Vw=;
 b=mfo0gW5tgI28Nuv6QkGUiYLnJ3gXcJZHrmZdxvr1vJuq0G95wjn/4WgbqubP1ekjocMLANLuL8twbaFPPej7TA16f5A16GfDKnRBhQyHNVHKOIEuAc8hoqkDU67mUwW2d0kmez/JaO4olxcUpz+D3lZ9O0VhvSm3qdTF1rzLy4AOaIPjmaUu17a5/d4cVR5dWucUpMgbEPHtucwvGKpNo7VuA9VYGvoDDvmD8rYt57ejlAJcaDH5yGJnGgfyT6KgPMZalXtRl39Ld8N7MJVZDHqCKiAoDNmAuqNnFZEdgj6PmJqCGoVT7yWkHdGLVvhid/oSTGFsmTMPps6+4OUpeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by DS0PR11MB7878.namprd11.prod.outlook.com (2603:10b6:8:f6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.23; Wed, 29 Nov
 2023 06:18:41 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::adde:1fc4:3c66:de86]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::adde:1fc4:3c66:de86%3]) with mapi id 15.20.7025.022; Wed, 29 Nov 2023
 06:18:41 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] i40e: remove fake support of
 rx-frames-irq
Thread-Index: AQHaIQ2MUmuoJb8dqE2ESOTlOoVg2LCQ1V8g
Date: Wed, 29 Nov 2023 06:18:40 +0000
Message-ID: <SN6PR11MB3133FAA05C62573FA32DD0B2BD83A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20231127084109.44235-1-kerneljasonxing@gmail.com>
In-Reply-To: <20231127084109.44235-1-kerneljasonxing@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|DS0PR11MB7878:EE_
x-ms-office365-filtering-correlation-id: 87447e13-bb2b-4cb7-4964-08dbf0a3081e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NbeLChxZZSOh0caL+E6DB9AGOUawIjgHT7vJ5NFyN3eonhquT9LEFYimUCoAvG3u4piV2ksocGAW67GQsGgYRxaglAfyNww6fNbTGNnBY6A2J5yx3Iq3TAIdwKEP0N8M//Vy5X86dSsa/9/te/oEEXVfWGCBRxz78Y0Tz0i8vN5V93v3VAlzfc8xfAuTiX9dg/RJ0cwl5hOZWs7GaXwGugh9HkQs05uG3pEEw+o1PYiW2IlGB79etMXI3y7BGfUu5lrikI97MHFdAKpnZvHD9C3viQPG0S+wgCm/V0E/GA0AxBMudis++HesD8El9zqxlx0OjPNez2OCqZyH3zk5Q74fpg70RoPScNBD2R+o6TFt1+TL8dl91USsAPJdLTFP272xfADu8S4+68O1bBQLkw5SjpJwkgju9n/3XqzSRC8P4bICF9LGuNd/jk9ATim+kRJ34vvWOxY29/kAcvZig7av129vdH2JNETJYF9o40aI/F4W6LD4gNKpIp68bYj4uAefGTiAu4hvSHrCVgwb90Vx/TqINEkcjhPz+KFcbc+LJRWCGJ016VFEqanPJ4/HDUcmg5maatImG7n+X/7SVBtebB5Rx/2ZhINa0+TDvK7k2Nwuc4fOW97FS36VOWlq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(39860400002)(376002)(366004)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(64756008)(66446008)(66476007)(54906003)(66556008)(55016003)(316002)(76116006)(110136005)(52536014)(66946007)(8936002)(8676002)(4326008)(478600001)(5660300002)(4744005)(71200400001)(83380400001)(86362001)(82960400001)(2906002)(26005)(53546011)(33656002)(9686003)(41300700001)(122000001)(38100700002)(38070700009)(6506007)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xX3U+I2uP5jlmTpWsigueLG4SfIMrT9GhKgoenTB3bZDyom7uxN7kxAUeJtA?=
 =?us-ascii?Q?q/vqre447bWyLyhY7PaUVgEWfJKiJZPMzilibsS2LQ+O2Rw2WsGfyhh1VCZv?=
 =?us-ascii?Q?iT1DVO1yHqozLJhSoO3Diw47TxqzkKfwXWGNCGWVmHAXoDtPesq5xAxQ0cOJ?=
 =?us-ascii?Q?LBv3eWI0GbFNdYOOBGmqh+HJR5PTY4DvcYez2COietKFzIOrsPgVdlhqPFco?=
 =?us-ascii?Q?fpOHyTKCgwQCdwkAPgBUDqP9LuEbtmHnYeK6N2JCOyArSbZzVUOK5Xdf8IyR?=
 =?us-ascii?Q?jMtW7H/zfoFUX5bVeG9q6bg1Q+OWnZOFtIWxMEfl5Rrs65SH3jyjID/ToA2A?=
 =?us-ascii?Q?E0+MrKPW/u0CaSeB8XtBRRXyjKeNNXg0u/oWuSpnSk6Atag+9TJd1u1rYPYR?=
 =?us-ascii?Q?rKvDVBHyeyCuonDROjJq1jbXXKzwFoBUEUIAoJVszKtqe4x11+7eNAxq5uLm?=
 =?us-ascii?Q?tbyP+JWvqnvhlb0qrF7kump0Svrr6C3K1cqKk/XS++diFG0X6q+tZMmvjq6U?=
 =?us-ascii?Q?GpgyWtLAU+rTgBy0dRaZdHKTV9WNsODjFM5OC7lM2euZe1TnMGUx9g0ghp4Z?=
 =?us-ascii?Q?Ay0BE7Q0m20Lh5cQd5X9yAU/lkt+eRSR51KC5crifHjaJAFlJQEZxCeZu8Lm?=
 =?us-ascii?Q?WmeFY8TEIsAYdeMOl9x2ev6LjVLnDK/P6LM7M8tZ1q4GP0tRYsnCErvGZOqH?=
 =?us-ascii?Q?7jC98tr5Zi7+k0Zv0p9cQkqapTDqPRs8wrrtKj+v5t2KcleHg/7rTIhrcSZ5?=
 =?us-ascii?Q?kkWsrG3COW7+Ib9kLlZgzfeGkhzzef+OPIgqmHZahjDC+vXLokeGgK1sz1ED?=
 =?us-ascii?Q?SkS+75fsIeUuEKvLTLpWtpSCw51kKVyg4hdaykswtpS2yepm2PHpzfb+tzBw?=
 =?us-ascii?Q?GMeQGPkZU5ZAfSVTBgYP8ujKfOtKyQm2VSbmjEny+aZzy60LRE9ugftg8OGW?=
 =?us-ascii?Q?/IrsH856LsB/XQc2wAv6zJPUQ04T6hmK1wRtaUGUSe5L0qGPHWgarN8xIned?=
 =?us-ascii?Q?YFL2OOvfABG/IFnT0r3TSJf+OcOB/gCDL3KZhIKwNsGiw7Ss+YS7IEGHYivx?=
 =?us-ascii?Q?8u/UHVqTotE/E/FcWhDWgmgVps4FISJVMu9IFc7FNcy7qu28DTZgvq3WAeat?=
 =?us-ascii?Q?VpjNnGaulcg4ClmEB6Qw1Hd+cPdYv4AK07YhrNkpp2nc4nzhItGOdKu+MLs6?=
 =?us-ascii?Q?5XdH+IcsHac+Ce8VWD1XI+IrQ5GPFsgsxI0WHDve+ANxA+ApfIoL/Iv4xUD9?=
 =?us-ascii?Q?oFPBLiNOhNhSOM/IU7E2NrLT5u17ZeHBGKCHkMM18jjy+NNUvOXVjCu8oHyo?=
 =?us-ascii?Q?Zwc7Lt9oD7Kpg10cY9i+QsTVfLG0m1Uh+zhSHY4Wv4Vk3o0Pf2NAdY68p6yW?=
 =?us-ascii?Q?cMDSfqf50NQe2BquFMcIaImCNKfLzSGQOUz6Vq7X+5nWeRjGq0Q6oLJ2knJ2?=
 =?us-ascii?Q?6yLTS3Qdq+LopW18GGisapfzIAj3M4JifIhOa8HE2UzUTDjg6r6DI+usGhK6?=
 =?us-ascii?Q?EKQrgXp0p94RjByLUA56wEii7FkFCcx01c7MlsfHNsC+JNf+a+GZgga+b9ny?=
 =?us-ascii?Q?HJr5rVgLn0qolyoG3WZ+DXZXvFQEgyvA4qkZXORtcEJsZQgAy85yHbbD51dI?=
 =?us-ascii?Q?hZAIY1v7EyvjogRf5IWFZWA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87447e13-bb2b-4cb7-4964-08dbf0a3081e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2023 06:18:40.9449 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ymVRu0Wm0vFtRPU7m7AwHB5RYr5rgCgmQG7xZBzfkLwu4FIeMryya9CUZyEd+NDYZT3fs38qG5G7JQeVHzmBBJpJCNBmAI1uUfbHNnsncoJXVyKdTXNcuih4l2B/oGBl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7878
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701238729; x=1732774729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XSxGiWLuW2YH/KNH88NhaSPwZiA79OqTc3dHOZ8lp7A=;
 b=hE5uJWt8lza4vbohKQmPea9AzhBkHFTeCp2glSdJ2Aub6cTL0WbEAds7
 NzpuwSx00pc+xcDAsa710gx8fVR8G4bTgEtunsGS88T4zYhW/m84vUgGb
 D0QC2g18rEqww63dGBz+qnzfYShRJViDJGrDd2yAs/hrls6ECQ+lj4fnv
 TA8fFLmzABXfKqtfklk/yPjORfTd0PNPPYSgVYNEhB62b7jGk5Z1eEfzK
 cqU5u/sIz0GQlEZV5ETYdCqKFlYy3jFND3hsjHtXlpfuoh4PazpL4tl0S
 7IOMRcSm622WwqhIA7HJ1GxZJnu65jJKAKbu5OcuSdzPODxzEV2ZaBdg0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hE5uJWt8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: remove fake support of
 rx-frames-irq
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Jason
 Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jason Xing
> Sent: Monday, November 27, 2023 2:11 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@redhat.com
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; kerneljasonxing@gmail.com; Jason Xing <kernelxing@tencent.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: remove fake support of rx-frames-irq
>
> From: Jason Xing <kernelxing@tencent.com>
>
> Since we never support this feature for I40E driver, we don't have to
> display the value when using 'ethtool -c eth0'.
>
> Before this patch applied, the rx-frames-irq is 256 which is consistent
> with tx-frames-irq. Apparently it could mislead users.
>
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
