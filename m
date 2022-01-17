Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3986F4910FD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jan 2022 21:32:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B772A4026B;
	Mon, 17 Jan 2022 20:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kZ3TEF1a8-jK; Mon, 17 Jan 2022 20:32:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 932DB4025D;
	Mon, 17 Jan 2022 20:32:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B8761BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jan 2022 20:32:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 23085400B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jan 2022 20:32:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXkBE0pDe_db for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jan 2022 20:32:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 25150400A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jan 2022 20:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642451540; x=1673987540;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mmAacNcFZDaK/EYzFC3+BQnwjLPiy/NM/CKotYG3TEA=;
 b=cXlD7+X4xK7v3JT7JuY4nHomPGEKf/pcKis8rmLmuFEo9+MbP2nvaPU6
 +ISG7tvG9j1Kb9qloqVMiChbab3LmdPGOvHG2HrGM2nQwPMI4llGbzWZU
 qPjydB7zvzHeChxXpyPobeHAGJ/v3gGdKqtsaJBdV9rcOz0ajBe41ZhdD
 zwCxXhivcpYy+DC/yqgghf5IoUzkHXTvpZXV3FM0JivpTr/yep/2zNpgM
 +u1IA+27Jy0WyO8IIrtzNpWEjt8vB2BUApyxZbo+DVMEPD6TEhAqi7UeL
 5A4MD+rAg29dSvupcNdoXFBbbcMgNT6fnIgm8IuYeSHmszQ0TK9VjCL24 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="244647011"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="244647011"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 12:32:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="615151986"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Jan 2022 12:32:19 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 17 Jan 2022 12:32:18 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 17 Jan 2022 12:32:18 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 17 Jan 2022 12:32:18 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 17 Jan 2022 12:32:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EIYpPYsyv3ugtSZwclYKKiCSnzX3R91/Bqxn7bFKVoFAtEcWrRCNJu6vZt1C/74Jg1x/SycfFhI2l5Tf0H07YgyNEx3ByBwl23HcJ/fDodCjS9riUHLjOLZmb5MLeFzz10z7Bg4LPRCLW3z1FuHpyd4+Wj1JpEcfaHKAsasVotZrr4lQgLN8Mc23+0lBi+cnBAkSOXT6Y9DTB+dvzU8FP48/fj+1FbTXU88yX+DjSJg+vXeUqHQ1n/EQgZCCNX+ovmawEa/waJ5CTqPL+SlRcuxlfMUAC54SjXxDH2t3s01t4O2Y4reAgymXBylokStKaVRFJyPNHCnol6VGmSf9Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YEnocD54Mt4zmxWbDLgmtZMHzP+/p9M8PiGfijULT8M=;
 b=msLTreD+4qACTcISNfG8cukax5u3g56gZZPGvB8FOcXzB2Prd+7E+/NOVA47VvKHPvAdSGlKTbDHYuhLRiLB0kkD6366GDEdgYEUlV/wwtBMNB4XqDy+Hd5tQunHJvUQxPGGZwdVfvZYzPDUe/fOxBCe47MiBotn9MMGAMTG/EoxlzTxE8RJ6e0svY2wfSZ1z49YSVuYoRy27Oi0UbXos7fYs3ohJjtsg5GHNfY4SNngJWIWl4L3MXcIyWoQI/NkwcYvGz6CwV18mxrSx6XXAsOFuWmJkmr17PcQMvf+vWiw+ExdC6uEKdB/Nh8jpoE78gkU1q5H8MuE5kw4/hC1sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM5PR11MB1771.namprd11.prod.outlook.com (2603:10b6:3:113::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4888.11; Mon, 17 Jan 2022 20:32:16 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%5]) with mapi id 15.20.4888.014; Mon, 17 Jan 2022
 20:32:16 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 10/14] ice: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2
Thread-Index: AQHX55tzkcIQsjLuzEOfD9FVeDCO5qxn807g
Date: Mon, 17 Jan 2022 20:32:16 +0000
Message-ID: <DM8PR11MB5621AE179E3C15F9C5DE829DAB579@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-10-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f245e4d-9dec-4f17-1e1a-08d9d9f873e4
x-ms-traffictypediagnostic: DM5PR11MB1771:EE_
x-microsoft-antispam-prvs: <DM5PR11MB177192F5246354A708B7BE26AB579@DM5PR11MB1771.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7HZgbAu+3yCaH/1CVflsHHVewgmSgt0dn/eghigygqFbt+A6KVHq1Wsv5+Ope1PU1ecwwvXWUpkkD68XeYqk/y4QTwfvPWY2GxtvSaxXOtoePDYcrKXuoKBntT8tc3zM5ONoaOrXzCzu6KZqw+BL41pX30LdgMCfNdTs2jCNWJvad8wsDEorwBYL3JBPwBCaKCySCzuSYIB3mjKJp5wNfPYArWA+13HcxNXW5/bCWi3cuLNkmKXZd4m5gm15eoaySxvs3nargVBvqzq3M2O2bWqzdH3o7u0DuD2RaRCTZ+DKIUhyOHQvWRUDbgIXBnnBp+wy+ZHbYy7mCmWKVxQc6V4a1NuqJWxjwMFmnBzziTJ0jcyJgaHGNw/7kQDGc08o/yHtx1LPPNmzKMr1DbrtsifOzE5Ma/VqDmQclp5IrNxp+RhqXUaLV7641EMAHmSLJFcVKTtLt64mNoXBZoo+5ZTBeucbErzHJDBWuNJFYB5t/8W61zdeZjXt+madNDF8pdLNvBmN6tSIHciYB6qCLz5gA8vXHkSqwZ37PciN7aaoZG6ZlbfHquq5zftoxIpB5GBstKr5YoSiHQzJTVUnrdUv429iuwCudSPtHzbGQE1EpufaIw0QnIhMTOOgHs1ey+fVgdFrHleVfWmjzj/XaTM04qkhWd69cBASCn/M3lsR0ISWo4BxjlzNByG3HfyaTPvadKwDcDF/dhV3Hf3bDg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(71200400001)(9686003)(66946007)(66476007)(66556008)(66446008)(64756008)(5660300002)(33656002)(2906002)(508600001)(6506007)(53546011)(82960400001)(7696005)(186003)(26005)(8676002)(83380400001)(55016003)(122000001)(8936002)(86362001)(38070700005)(76116006)(316002)(38100700002)(52536014)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g/pi0GX+jbPIv0igH3rIl/7d5WWygUjLWbn7ye0Q5Sw67ws3/DRLuqTZo+GH?=
 =?us-ascii?Q?2XhZxU4DRJyZcv/m8GzjWMDanRPz0eV23qdaggDKagdop00xotu35HTa9xxx?=
 =?us-ascii?Q?NZr/bgohqAycQJLGPUrC5vK815AhItxpXYcaKVUwMp+IpdWzF20vntm180NT?=
 =?us-ascii?Q?gJtthdPwejvSWOLJz7NHQOhQbKaV2BPxbnVMlSGxzAXWdeaN2WqZxeAslrJk?=
 =?us-ascii?Q?YJO51iGmbvsMQByiQEsWzsuaQPNcKzy+ArEjq0r62Llf1LuZzgG/tLROI0Nq?=
 =?us-ascii?Q?fHKV+SFPITd3Jo0pkZikwuJ3VTYSBjjH/Mt3/l/cT3Txs7Wg3hE1GL1vnt0U?=
 =?us-ascii?Q?ipCwwW7eVTODU35lti6UkjJ46M+Cz+tlycuoYmFPJ+z/lV5FK725PpaCSUkT?=
 =?us-ascii?Q?IoECoArIn/3lpI+sSqdiXFv7PdnqA+8uOoRXxa7V/qxqPkIAi/PsfxfLquhR?=
 =?us-ascii?Q?m3c69zgUpGvCN8uXWRh/X6GfYzlRcjqxC43ovdFXcA7rvgpA2yX7gBdjO76m?=
 =?us-ascii?Q?SdsYJ/4Bq2ozevntxEK0vnrtrwzKn/WiwTDbCW4NwsD8m5cxBk45KLTC5nO1?=
 =?us-ascii?Q?eNZ5/YiYRK7b0c2314WxgKGZj44zCdgMYgoGIR708wGC2rRyipLRSLtj6eG6?=
 =?us-ascii?Q?/H1hhe+qxu3lRuKdq97+b6UCoF581tI/m/I1x+cSnmZGMfjm696coBcYikhW?=
 =?us-ascii?Q?vwhRAONqGi9W9t5i7xNEfYFXEWZpJLG1eAcKrcIy773CGVDwcDY4FsafXVYm?=
 =?us-ascii?Q?fakjh2b6GlNlSkeq98IbUwjR1P93mzTU6b/xu3OFz26wGo+B1ziuBp5OUyOE?=
 =?us-ascii?Q?YDxhAsTDXO+yoNh+RzPrqAV9NbDogYnV0FI5g5Gm3aBPK0KpUjjKEbx6xv0s?=
 =?us-ascii?Q?W8kAO3QFOlZ2xvCGQFqBkIyGOw0O1d1XzJ6KSvmB1FVgRi+ncOxPU2RquoEi?=
 =?us-ascii?Q?joSFC4ezCqsc9TwCr6OvlAwD0cAqmAAjEw+/91C9/Mlby74/u0i+CnVouY7H?=
 =?us-ascii?Q?z0yF5yzRBru/wjLjNqbA6UdAgyOgZXR1mfgw+jctVO67MinagZaWG10kJwbI?=
 =?us-ascii?Q?7Zn8OrdkJB6ion4TGlvAJ4b3wD+hTYSOnvX+cLKJmvFEqKmUzF4AuSr8p6PZ?=
 =?us-ascii?Q?muCe9IY4IIlpYv1VNisN8SzCi1t4RxbI9sbu6mTcGF497tRbVULAJwqItP0N?=
 =?us-ascii?Q?P7wx4yKEuIBX9nR7yhj3bP8T/+BxMtx2KYm6nTYu1dWHmj7EYNtRmAGcu8sM?=
 =?us-ascii?Q?GeUQUTD3CkbivTQc9IqGvAwak03loxxk8ZdoGoc4YWQXMbXRk5RQRU4igvDh?=
 =?us-ascii?Q?1pPXwuSFn5NyDN2//iaouB4xoGi+EzhPelyVb/Xnoqe9UVw6ZtgZKLuuuia/?=
 =?us-ascii?Q?GA5NCfWvNcaqX/NhkyQiyV1XHjdNsgH5thlrxNnFtF19mMZnLD+yFmNbirhS?=
 =?us-ascii?Q?eRKuUjmWoIky+gxEqIx1xsyn6SLkyBmLffaKYOKrQ5o2iXyoqptcZqMeJ0j1?=
 =?us-ascii?Q?xWO0bU+ODGSYxCfZw76U3bZPto3t3f+ykYZ2YrXvIQ6ykBCxleQqo1UKhQGW?=
 =?us-ascii?Q?tM0zm50W0mDJSqVecEo2evyhivOAHeIeX2lpkTm6G409RUvqO5JWCe4YEeCH?=
 =?us-ascii?Q?VxNT5EDCp3oC4LmTxFZMpjDvEP+zTDvRpouSPmVFSQxE9kaUN0pqlipk/yfx?=
 =?us-ascii?Q?w1+26Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f245e4d-9dec-4f17-1e1a-08d9d9f873e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2022 20:32:16.8614 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WbYMbE9wdh0FN/A94PrJhAKTOv9qNeMICE4tZDX6lJI2u7uGhR84UdrZP9K0hqvbaPjFuPgbYRHaGq5WmbZIf8JRj+GVDrc2rRmPDfEMrmM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 10/14] ice: Add support
 for VIRTCHNL_VF_OFFLOAD_VLAN_V2
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: czwartek, 2 grudnia 2021 17:39
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 10/14] ice: Add support for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Add support for the VF driver to be able to request
> VIRTCHNL_VF_OFFLOAD_VLAN_V2, negotiate its VLAN capabilities via
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS, add/delete VLAN filters,
> and
> enable/disable VLAN offloads.
> 
> VFs supporting VIRTCHNL_OFFLOAD_VLAN_V2 will be able to use the
> following virtchnl opcodes:
> 
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
> VIRTCHNL_OP_ADD_VLAN_V2
> VIRTCHNL_OP_DEL_VLAN_V2
> VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2
> VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2
> VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2
> VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2
> 
> Legacy VF drivers may expect the initial VLAN stripping settings to be
> configured by the PF, so the PF initializes VLAN stripping based on the
> VIRTCHNL_OP_GET_VF_RESOURCES opcode. However, with VLAN support
> via
> VIRTCHNL_VF_OFFLOAD_VLAN_V2, this function is only expected to be used
> for VFs that only support VIRTCHNL_VF_OFFLOAD_VLAN, which will only
> be supported when a port VLAN is configured. Update the function
> based on the new expectations. Also, change the message when the PF
> can't enable/disable VLAN stripping to a dev_dbg() as this isn't fatal.
> 
> When a VF isn't in a port VLAN and it only supports
> VIRTCHNL_VF_OFFLOAD_VLAN when Double VLAN Mode (DVM) is enabled,
> then
> the PF needs to reject the VIRTCHNL_VF_OFFLOAD_VLAN capability and
> configure the VF in software only VLAN mode. To do this add the new
> function ice_vf_vsi_cfg_legacy_vlan_mode(), which updates the VF's
> inner and outer ice_vsi_vlan_ops functions and sets up software only
> VLAN mode.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     |    1 +
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |  115 ++
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.h  |    3 +
>  .../intel/ice/ice_virtchnl_allowlist.c        |   10 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 1132 ++++++++++++++++-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |    8 +
>  6 files changed, 1226 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c
> b/drivers/net/ethernet/intel/ice/ice_base.c
> index 9ca0ae2bb1dc..0dec7c5463eb 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -5,6 +5,7 @@

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
