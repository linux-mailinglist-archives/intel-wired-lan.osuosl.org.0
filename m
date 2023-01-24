Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D326267979D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 13:19:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E62341858;
	Tue, 24 Jan 2023 12:19:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E62341858
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674562757;
	bh=R5FbhrWcH4GIHMbmJRAv7E9xUWb8Cx1mEETz3JxCobU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZC8nQxDC82XMuxvltUw2btWwCwPiYHxAWOZLmwVJPqARR7+n+4VramsvxJsNJ7loB
	 r0wXbfjB8LCd/Pn0YvKBuX0wUUTb/Sp5iRoPXFaR9wloirH0wBj5gSeeopIrf7ziJv
	 4JMlnJfecuFQXKVWaFXMYENAAvRjiom1ea9Du3c3CnWW+lpPqtd/mGvzmeTTyp12Az
	 gzdlLXYdu1tfsK0ySj2jgLkKmWbY49XRIkZJpVKpYeGD1dJcMyP8ChIV32DIz27n1p
	 ktBMoYVTpH6Tu0vqqjfM/agwLz/g428v3IjPiS4ZHuvFKFqiWpFV3xms9XJxdTtExv
	 NNai2xafvWo4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XVgkNYQfaTDg; Tue, 24 Jan 2023 12:19:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0942F41830;
	Tue, 24 Jan 2023 12:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0942F41830
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24D971BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:19:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0946541833
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:19:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0946541833
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FoAwxxD_7QQN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 12:19:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E392C41830
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E392C41830
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:19:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="326317059"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="326317059"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 04:19:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639562202"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639562202"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 24 Jan 2023 04:19:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 04:19:08 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 04:19:08 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 04:19:08 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 04:19:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mLHSyRetxo9m1V3R/vP8uGIzEoC883WoNMs8TPiPcXPvARL+0V5WEoViuO8syTwTMetjx++os7rEBHrJe+JyB+3YlmutoGOwWn8qvBLNuaylrfjkCnm3tmSyVLfpyHzqvUFNTQOJIgXFgiGQEHOg18qTw2s0A4iDScXIylAIGSPReG7LWlFc8zP5zZsUcALZW8gtQ3/3MbIWl3hLx0uCFVdV8wYepp8UOcYxuPgDBWQyp8kg+LG9nSkTe4dXyL8MjGzpJ63skoYLDyoasmT/2CMgdnbi+T4t94apEAo1TwfCxFG53L2vJEeMRN8m02j+28PWCJGl7Ll96gryTYwoKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CvuebQARF5AHVcfTHSoCQjpjmkszraTGEZqEKVb3Z04=;
 b=cUADsj8YR2BEqF1qn7daxk0srl/HnKkcZOdvVHyyWhRul4Y2jPXwui7an2qMtZPA1xd/yHIR0516Yo9Q/ReyZclsXjuFq0UxU1ZZYiGz7fPbwPeWYSLnwOsaQHsPzC+iNgfhJTrd9Ftia7U9Tz9FJGHuBSEnDsjuDqYWXN5KQJyFdjNAquZCfDy5kIIjlmuQDx5jjHYm00CgVr5AsNUnsu5WRc0vQwhSkcstUcCOF2atKR8YZyiteo5NaPz4jGr+TA2Br3Duv1HyLyi0N/xkMqHOWRYJm9WF773nPBa4RTGitIb+mjVccN8uks0ZlTZWAbbhOVFSVEauTVMjQ+nsfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6798.namprd11.prod.outlook.com (2603:10b6:806:262::17)
 by SN7PR11MB7637.namprd11.prod.outlook.com (2603:10b6:806:340::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 12:19:06 +0000
Received: from SN7PR11MB6798.namprd11.prod.outlook.com
 ([fe80::a070:dcb:44a4:fa53]) by SN7PR11MB6798.namprd11.prod.outlook.com
 ([fe80::a070:dcb:44a4:fa53%3]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 12:19:06 +0000
From: "Kaliszczuk, Leszek" <leszek.kaliszczuk@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 4/4] virtchnl:
 i40e/ice/iavf: rename iwarp to rdma
Thread-Index: AQHZEYoTzjWsAl9ULkKrOhDRKTcIua6ttabQgAAB/gA=
Date: Tue, 24 Jan 2023 12:19:05 +0000
Message-ID: <SN7PR11MB67985DEF148682271D3402B8EEC99@SN7PR11MB6798.namprd11.prod.outlook.com>
References: <20221216200658.59833-1-jesse.brandeburg@intel.com>
 <20221216200658.59833-5-jesse.brandeburg@intel.com>
 <BN7PR11MB2788EDE812D1209E725FD0B9E6C99@BN7PR11MB2788.namprd11.prod.outlook.com>
In-Reply-To: <BN7PR11MB2788EDE812D1209E725FD0B9E6C99@BN7PR11MB2788.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6798:EE_|SN7PR11MB7637:EE_
x-ms-office365-filtering-correlation-id: 2590af74-d46c-4dec-f98e-08dafe053008
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QdpQGF1w1jOJsOfzXcgQOykmJRpRptts+If6MzuIarcaq2aLZAh8cpxoFrb+PwShm/OrmL4fTI62IBh2tIyVSGAIvkZGmf5mCMwx3+ZFmBK/j0gvoV10GJAuA0PnAEHHuza/ar0sfTjK3l+gCRCoxFIi08mvT3/nxQYjjyiHawa6cI5Ulsahi/FRdmxxr2uzHWF6uHTr5Iot1WSkzhUoGCtKWObTh0fsEevnkopHSWvYBfdWa2oZPXcj8BXGG3HUDQcJrQdCPS5feYhUBcgxmW0RgVeAbK1U+0wwK3baZZWUek2YXBB3qrYhd/4O4rtr9XgpBzKlVp0CluZh5APr0kscisPkVaDVzRPf1utjpKr7+KQr4UUhnkFtSgfvVWVXPs7w3krLPvCVfNUrCBhMQCL4No6zkl4tKY71EaS88pczzVBxOLF5FzixZyoljbMOX6zY+0XzIDfMaY5fDL3s/IxlQkfbM9WCBNvgkUo4pvQRlehnwRTi71SdNiSyPkRZJnR9TUvTgF2JsDHz8opEmsGTsKOAPwhiy6qiIj3tfghiuqAo5BbMcAWLki3XtzixYEcqwPZH/h7YGpjftr8BJEznaXqonz1dkUUPB81dE6VPNM9gcLbDPcIytwzifiRar295JqgV3YgEq8ZRtbLuwbkqeYq0ucvwus/m2kqubTvBSDvHZR9iZHcrBDR/LI1c8jvutW5xBxO0QKB44tyQMA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6798.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(346002)(136003)(376002)(451199015)(83380400001)(38100700002)(122000001)(33656002)(38070700005)(82960400001)(41300700001)(86362001)(2906002)(8936002)(5660300002)(52536014)(55016003)(316002)(26005)(9686003)(53546011)(6506007)(8676002)(186003)(66476007)(66556008)(64756008)(76116006)(66446008)(6636002)(478600001)(110136005)(7696005)(71200400001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IdF5BnobouGbUN5/nAtwYJDgHmtrEznmHP+LysVS0vTAu0qgKXcHhSa/FsgN?=
 =?us-ascii?Q?42cDWDL1/PuT9l6TuQHfn8XabAcxjJG4frq/ArOOWVuV/lBSP5LIdA+ZvkpW?=
 =?us-ascii?Q?i9D9B2IZkx4JrG+J1Wr/uQo3Mxiczejs6j4nO0OML90kipW74HU+QJ8Aj/s/?=
 =?us-ascii?Q?lF5lKZ26OXlXfxzFRGbAcQK+dls1axYMIdGiULbZdmm7op+rYOAZT93qL2bD?=
 =?us-ascii?Q?/d5JNIkmlq5pTV82/w8IBb2WydcRm5lXc1L3trJxiWEA4GxMZsfbXfCVrG7Z?=
 =?us-ascii?Q?J77nbdDBu4E4APRILfRfi9ifNSbl8NRGg54iA8rYGOfYRtujtTtZFWAZL1K6?=
 =?us-ascii?Q?m3L+d4ei+fT1A2QAraaCYXwBkih9Axu+3+kQAhdD83vOEOBgbsnADnUb+3qW?=
 =?us-ascii?Q?euQT58bi5dLnAdTOaAQ9vLUFx3E5hSvSIfh66E9WQHr3J+tqbWAlhJ0KVVIL?=
 =?us-ascii?Q?VhFOuzSM4Q1ifgBBnUfEcLE1WQZZzhKDpBaU9A+gDxShodMnvDjtAkBT7KMm?=
 =?us-ascii?Q?HPyWWYGfsOuXCrAcYDG1+CEWL4u/vH2AgZI6YaYjmSIKGI85DfQjVvd6RRN3?=
 =?us-ascii?Q?DIFOYJRFZ5nfPcEHEyIR10zON8uHxhdKaaWiboHtpYq8JXOUgTPYpu8ud5XI?=
 =?us-ascii?Q?hu6pVImabc0Ha482uhD4v/x9dK8OmoBjnFZNsFSEeMuf5c8bMkUtd/ZkpO+J?=
 =?us-ascii?Q?bHZz2OqaiMLGyAYNoTToT0P3mPE9KyOu3Yf0v94w9zGspwPHSYdkU1f90Zh4?=
 =?us-ascii?Q?8IAcPpML9fjIBRCOr/4SpQb5OmKGAURVg0g2rd03apQu+BJQohWy0QZsulBi?=
 =?us-ascii?Q?5pp/p6QDlrul1r7djAJDF05SN//N2yf3jAr2rlRH5DyefH5KiPLNAOiAtjTP?=
 =?us-ascii?Q?oNl4+KErJ39VUb0a0nJXbtjDXz9HF0yTE4y9xlouLOH8Hx1pSefi0zjmXsj2?=
 =?us-ascii?Q?3nfBZE/B9kvFIjxQRW0kfF6fs9i5Da1NohT1NKTsecRATUnkNk2nFImfxUCm?=
 =?us-ascii?Q?yFqjA3UT33eo0Nug+I2Lt4hgLNyagen1BwjO2MUToIpX2VkTJ8z4DEAbDd+3?=
 =?us-ascii?Q?NAcn+dwPAP0EOtp+R41FClz/MvhpFosE06I4OGv8SZJ14Wcwgrcvp1b5kypN?=
 =?us-ascii?Q?YJSXW2QQDQIq2ggRZoAxHkewHZt+WiR5XRmR7eyhbtUEOmV20ipRqRU/Vf8c?=
 =?us-ascii?Q?9kUSdyKP70I9zwiwpc4vxDlbE1aa01C49wlyart2qIHTGBzVVn0jwtQrDvax?=
 =?us-ascii?Q?M4tWYVCCmqblByxhEba0SOiobnUdyXbfcYXrQgQBiGskjqCfMiH/4EhLhrI4?=
 =?us-ascii?Q?DoF/y8l84a8IdDsAAtLtZrJqXm0AqwIuV6Vi+fC5BPRV/40j+jSTJEb3kR43?=
 =?us-ascii?Q?lQ1ugLd6EPM5/FKBGora9DcKWmefN5Hv9ub3jmap0oxztEImcF3K5eTvYeV9?=
 =?us-ascii?Q?dke5bSLYy5KKfhFk7mWa7UUt0+xH8I6Ldgvo/seF8hxN+48es+OB4pYFres1?=
 =?us-ascii?Q?aXPxG5YcwiAifbeNDkfL9nW6i0n/SYPCi6mZq3nQIEMfHN1qa/z+cOaPtY9M?=
 =?us-ascii?Q?l7KIZY9k1ZcfbGEaW0xACWkNaishxJIwG2v7Xrnou/Px9M2MVfDapPzCqJA+?=
 =?us-ascii?Q?9g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6798.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2590af74-d46c-4dec-f98e-08dafe053008
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2023 12:19:06.0063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qoyIeyx52DwQc738l+5laAXAbhLVy7j/Czqj+1fbQn0UTrALCTRODShDQF+w3ctWDU1/MS9hNr5koEthTpdI88OgDyqZ8Yk1/tQDq57NXIc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7637
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674562749; x=1706098749;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=auC3OV3VXCMXEbcTeuljwkev6VM3ry9j3tYmqKyuufU=;
 b=Z9BG8HWAkXxa6nOfLqc/8f8twW7W8xDn3wFg7zr8JUlWsndUVYk+Ki/D
 MtDBcpoSFWYihdnbMrgQ0bvHR19XBbbBzSHRkEqTX38jeKBlRCZQEzrIu
 5uWbZsl540KZMwhJLdYgAUcOEivTk8dwtVTONWsPMitvxzOiEnhgvflxr
 87AtBnwrqG4DxqNcAUTETnrppI+nWgxrgpE1+uRCCm/KqE5YQXJ3S2WcX
 YHBXt8/zDE937BTHnOE/2YXwyV/eLGcZtgwto3APxJ9pvRXhipY25x8wf
 9XiK/zvyMzgGcDEVpXhYa9vanMaff2X+PBkkhadtWUUiKX0uD41r1HoBj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z9BG8HWA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 4/4] virtchnl:
 i40e/ice/iavf: rename iwarp to rdma
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
> Brandeburg
> Sent: Friday, December 16, 2022 9:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1 4/4] virtchnl: i40e/ice/iavf:
> rename iwarp to rdma
> 
> Since the latest Intel hardware does both IWARP and ROCE, rename the term
> IWARP in the virtchnl header to be RDMA. Do this for both upper and lower case
> instances. Many of the non-virtchnl.h changes were done with regular
> expression replacements using perl like:
> perl -p -i -e 's/_IWARP/_RDMA/' <files>
> perl -p -i -e 's/_iwarp/_rdma/' <files>
> and I had to pick up a few instances manually.
> 
> The virtchnl.h header has some comments and clarity added around when to
> use certain defines.
> 
> note: had to fix a checkpatch warning for a long line by wrapping one of the lines
> I changed.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_client.c |  2 +-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 63 +++++++++---------
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  6 +-
>  drivers/net/ethernet/intel/iavf/iavf.h        |  6 +-
>  drivers/net/ethernet/intel/iavf/iavf_client.c | 32 ++++-----
> drivers/net/ethernet/intel/iavf/iavf_client.h |  2 +-
> drivers/net/ethernet/intel/iavf/iavf_common.c |  4 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  2 +-
>  drivers/net/ethernet/intel/iavf/iavf_status.h |  2 +-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  6 +-
>  include/linux/avf/virtchnl.h                  | 65 +++++++++++--------
>  11 files changed, 100 insertions(+), 90 deletions(-)
> 
Tested-by: Jakub Andrysiak <jakub.andrysiak@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
