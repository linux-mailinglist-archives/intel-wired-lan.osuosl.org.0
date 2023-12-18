Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D1781660F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 06:31:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 451C981766;
	Mon, 18 Dec 2023 05:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 451C981766
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702877470;
	bh=hnllLcyWkjVGHV2cdOMEGMpg+2QSnT1s484nJX2Exyw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BTWo5XkBJ7f2dtMlxIj9YLT1eWXVcGmKvA54TIyNvFSO3hf3eEGxarKdUbjLZ5HrE
	 00QY4dcNSek5OpNrqRDOne4KpIhuR2BoAjy9oPP6mOaGlaWE5jdzoLEWO1XuMJxLaj
	 hWjjUlB1ZJFHOOpj/oB/XpB0E2KJjxLUU3WnBkLW5tpG4C3t5OiKQd149ew425+rto
	 FmrAVaAAFog8HHj8XM/lBmbPPh7VJdY3LlFBse3tY775T2KkXWS+rPGNXVzJpGaT4C
	 2UDe6wGPF5o6Xlg5fUI8aijbNvSCo5dP+3lIwXkZOugRAzrVRNVw/5Cer+AJHzp5dl
	 +HiBosboMrQwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UEmKsWl-Hze7; Mon, 18 Dec 2023 05:31:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40A1881570;
	Mon, 18 Dec 2023 05:31:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40A1881570
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3939D1BF85D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1034381521
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:31:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1034381521
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UYf8tFi143PU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 05:31:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E1E8E81501
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:31:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1E8E81501
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="392627152"
X-IronPort-AV: E=Sophos;i="6.04,284,1695711600"; d="scan'208";a="392627152"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2023 21:31:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="809684258"
X-IronPort-AV: E=Sophos;i="6.04,284,1695711600"; d="scan'208";a="809684258"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Dec 2023 21:31:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 17 Dec 2023 21:31:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 17 Dec 2023 21:31:00 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 17 Dec 2023 21:30:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c15ONSdxUEaL4sqK3rf2YRq63mgk6yaOxZnYfzKh5TdOlKbSdrnrWaQFyW0l9ZpIduOIyTb5SUmijP1xJzkDWhHJGr5vxClQzajU2QxeDvkkbaeDnaWPAuAI8du0SDgSV5NX5zY5BSMi6SdYE6XiwJ6sbrCa/DyUcwygKqERYoiNRMyFOJTD2+R5l9pjvUUocdPtCsF7XZF1JMjA7CvAbolptS/QcjnyQD7YzW6Vkh7mLIGtX8HfJ13NHNFPUVIPN1qeuWYrDpw+ECoulfcUWLMRnHA9BDdHqoKFXEyeJAm/iEdlNQy0Fnvr+zpNwp/pU9kbFcVKUeDz1Jsx2cpoOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G78jx370VchUaiuq6pSIFWjvO8lCCQHBeC28lkZbud4=;
 b=GhckvFj96ZxkxOCyKOKmWc1Eg3+zdlqWNUytwlNBK3WUP8SiaA26hf0j87NmNQdc4o1c29f2Sy1dAkQQ/ClhMAiE8BJFlWbFtHZYmrjsM5P1WGamfzFFWiAhL7Oy9uNF9728kpXBiaV0rapBQR7FOKPZLnK5vB9paZO7HC96BoNRZY/baRjFcX92Bg6tBpgiCMkhm8Eyq/Vb5JytsaxFS8buPhCz6Ijyh/vo/mi9n+OCQ3gel/ZL4ben01PB+hZteBcxe/s6PfFmZLfgFb1wU33ZqUT6Hy0ob9xw9hfLZHmCncDm/uNOtDO+Y5Vnzd0kLBJQLNh4Rs36g6O6IKrozQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH8PR11MB8108.namprd11.prod.outlook.com (2603:10b6:510:257::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 05:30:57 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 05:30:57 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Chmielewski, Pawel" <pawel.chmielewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: Do not get coalesce
 settings while in reset
Thread-Index: AQHaKGx4oyRQEqQixUytSTvhK7hp97CulWSA
Date: Mon, 18 Dec 2023 05:30:56 +0000
Message-ID: <BL0PR11MB3122D70ABDE6C2ACEE376073BD90A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231206173936.732818-1-pawel.chmielewski@intel.com>
In-Reply-To: <20231206173936.732818-1-pawel.chmielewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH8PR11MB8108:EE_
x-ms-office365-filtering-correlation-id: b4efe738-d6e0-4446-9857-08dbff8a82d7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m8zuoL23Br4Fu8nSh9VoexNMq6VQ0dkalcEiHQNBTysMRamDpScmSTKrLtAiMfaB17WoJz1zhLcw+6K4m4kEvbUwnNf79EetwXishu8luVVEseSUFa0/5Ufn9ysaDChSFhOa/scOscH14MGm6lZjtK6yUEQ9qP/yd5KDf0sOOU2AO5fmW3tqhHrKqm87UMXBYx3yZ0R8oYV7YiA9b6TqjeMgd8Kx8pckayZh4VObhF/Kipss29YLHxT7CunpklPbMZPEhrdf5MPMJ2eW5D1Q9h1dLIFjwqqK1e3wTmo/M8GGRB7A1x1rbkoyhdC1nihtJYR4t98rEqEGtPgPZsPH9tqdGDgPiMLlSK0T5lXwkp+/9g2gMRYC4n3w9pavhTCltTX8smjVQ/qASPYGERduSs9By1lUMYUJr1co67NViknbhEoujSQFGZisqr/GWtRHIFMipIZo3yuZeiPDisaauhvCOOPuPEqLDOCKrDvPJCDnBD69A8d1T9Cm7497Lir80KLkrw5vE9tfDS8/4evGblYF87NvM8OPSYvSAh+DmlfHETb+IK4Ra+/Jww9YDPoAwn89eslnu9ebRdupRWTrIXY8LPfyYn99eJildo278SsmSFk8aLKPXfG/7gqNXklT673Afwam8srg2vWHi/Bsp5Vb2tBiDX9NytCbsW4nfTQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(136003)(396003)(366004)(230922051799003)(230173577357003)(230273577357003)(451199024)(1800799012)(64100799003)(186009)(26005)(71200400001)(9686003)(45080400002)(107886003)(53546011)(7696005)(6506007)(83380400001)(5660300002)(478600001)(30864003)(2906002)(8676002)(8936002)(4326008)(110136005)(41300700001)(76116006)(64756008)(52536014)(54906003)(66476007)(66556008)(66946007)(66446008)(316002)(122000001)(82960400001)(38100700002)(38070700009)(33656002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VdVu1TOnM2wEk+OxX57rYSmDmbRY8qaV039Qq8z8Z9yUlGVlSOzE79wkq2Gi?=
 =?us-ascii?Q?t0p65Ap/RJCnLpmVwdb1b4s+xAxbQr9aVrS2soljiZLx1RWXG9PD+sbZwHTG?=
 =?us-ascii?Q?MICGeV7s3H/9gmwp4TlZm0E3C3vSbnKxQ6yXz30oyUHjRANM0/LnV+b2zHHl?=
 =?us-ascii?Q?tB9CwSjHmvJoF/cMnjRiluzGO8et9qQS1WtNumsUIzxPuZsGtFZbeg/JsRci?=
 =?us-ascii?Q?ZzGRW6J4FrEJNz2OU9+CXg6I9A9Nx01gLUE0gwrIgQWxchq03vM5Fv3xJCa5?=
 =?us-ascii?Q?WjQMgMcydDMtza909cZwEEfvqHhZNlgM03JTKlEZqFaC+MBfYMwwNbHfOOlR?=
 =?us-ascii?Q?eSalpDqoYM7o3u7pfVftxZRJnIzDYXFOltc1gjQowTvPByOmt+8A9JZFzQyJ?=
 =?us-ascii?Q?5V2FMYoJ/8z/NhNWsD5kafEIL6suKy1A7sSMgAXe2wvBqITRD29a+3qBBy5W?=
 =?us-ascii?Q?4jaaEWjjc9KW3+OxK+3QK5EVDutTyRuaZk4fczl+mFzdXhdB5ii9Li6/DyS8?=
 =?us-ascii?Q?SWIbHWCqyc6xxj84hSzHpHHUfVc8AUA1quAWovSxXlZ2+fTtWufeHMxgboSp?=
 =?us-ascii?Q?wT1RqqXoByZXhYenX5h8PCcr0q6Cey6uxiTp7Kfa6FhIJBaLmcF430M6I6zz?=
 =?us-ascii?Q?YHZEc2YXTgxXZrJ62u/OnQBew+63oELISAm36AcJvFsCZH1C5tETmlqGTn+x?=
 =?us-ascii?Q?kh0aDEkBBWcPxSEz8yJshYELUDT7YgrSRb8U3REAKT0Fy9Zr9eEiNyWkglai?=
 =?us-ascii?Q?91nSjm8TCYEPQX+lTNOqx8SgxAxU4x/i3r81w2EEVXd/B0rvbrACESNRYVNU?=
 =?us-ascii?Q?sIwMcwgcsCx5ROXOObdipTTtnHx28wBjstHIo/aTtsQmfy/rIyZCjGE8RthH?=
 =?us-ascii?Q?V88vSVubPFatkPehmpMyn3DA6QvJSov6cbcpdQoNvgq7yh/OCMilsfTxE1m0?=
 =?us-ascii?Q?HvSZsh82cJ3mPxDBAG83qD6lp5toNC5fCC73y1kVs+LJEDITjFLsp/GuWx8Y?=
 =?us-ascii?Q?TZPgbSWvOwBPK0cJkaUKSfcS/b3XFo9//AQ/iLZXoG4jXclXB7BLC92h53LM?=
 =?us-ascii?Q?wI06qXJNkBXhOtbIrzpRBNGAAkbm5eT+y7AXmF8osSv3OL+uVPGiK/ZXvPcX?=
 =?us-ascii?Q?tBIxcVxPYm1Gy5bpistaF4NSZUwkk9PDxPquO+2lSlEeJLcqycc7PLCoptE8?=
 =?us-ascii?Q?+yOy7yfV/9ftMr8X/mF5vQVW/GU25mdj5jS9ROiwpIIiexWJcUNxPL3vhQVW?=
 =?us-ascii?Q?8QHCN71bYOJAAZ0r+LRg+vN5xGp1KNc6dZWJdBcmR2VgZZtm402tMqiqEchw?=
 =?us-ascii?Q?ntk4B6FVb/bPuTKH85Y1wWHZ9o0uQ5+lybrdWVXJ3rgEgRvkl+wnbmx/mGfZ?=
 =?us-ascii?Q?/gFdjSivA6Adz+GrWG/SJHtGfPUJaYyIndqw+WSyUK/E0KqfIvQfU4ly0GZb?=
 =?us-ascii?Q?d3eu0L6EeTROx0vLSQPabjQm5MxasLQs9tNiXZrh5pM3/PkrffJhslcB+Ew2?=
 =?us-ascii?Q?6/UzVbOWUH/M2+SpQ3WUeeznJSlbU2Rxl3jzk9kdj0dIrAHHQcHNcuAlovaD?=
 =?us-ascii?Q?oy8XPe94ytCuDg7D7Vwbmae2onltQzpaSko90iqVzvb7/VNdNRERTY99gr5U?=
 =?us-ascii?Q?og=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4efe738-d6e0-4446-9857-08dbff8a82d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 05:30:56.8147 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UizhVlRq8gF8hVbqL+5chKrGNvKZpEf9kWebnZ0xLZgE58Avjw+k8zJMSZbsh3mfrJ2sCIbb9SRzA1jTUTR9Tmm51f3fQrhWpO4X735snHSnVRcq7O2lXi9XryeDPHLt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8108
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702877461; x=1734413461;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qZYCJyN4mr+5v2dXKmtsojYhhVGegl8mjuHhzIlmTIM=;
 b=W7q7bbdvqqU2GMPUnZf65WbRJHZbjHXjQ2YnGLN2O8KxO4tOr4MDfTZm
 b8612+uCb9e0m2AZkPcJxVZhdgPgAjgzHzpho8KYxSQIWJ4kcLAH7YOgr
 lKI6LoyE+zE4yHfgg00EHMDCMDzKkFIR/j7LPbhZbx6ZXJcyRYyuJqTZN
 yPzNUmzT/r7nIuYfGGxEObG4twQ1H01Cd1GnsFuG5rTMvEDD1k4+6uTG1
 jZPGFHCCi30tQ1v2i/3AG8GJJ44OxD1NU5ZSaN5Yw982Re1/E2nR/gF4I
 je5QZtrrfLCBM7jDf/ZMFXtGDkPbjFbX2FAqHo3YkZzUvDdbAd0Rg+htn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W7q7bbdv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Do not get coalesce
 settings while in reset
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
Cc: "Kwan, Ngai-mint" <ngai-mint.kwan@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Chmielewski,
 Pawel" <pawel.chmielewski@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Pawel Chmielewski
> Sent: Wednesday, December 6, 2023 11:10 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kwan, Ngai-mint <ngai-mint.kwan@intel.com>; netdev@vger.kernel.org; Chmielewski, Pawel <pawel.chmielewski@intel.com>; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Do not get coalesce settings while in reset
>
> From: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
>
> Getting coalesce settings while reset is in progress can cause NULL
> pointer deference bug.
> If under reset, abort get coalesce for ethtool.
>
> Fixes: 67fe64d78c437 ("ice: Implement getting and setting ethtool coalesce")
> Signed-off-by: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
>---
> Changes since v1:
>  * Added "Fixes:" tag
>  * targeting iwl-net instead of iwl-next
> ---
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +++
>  1 file changed, 3 insertions(+)

After applying the patch observing new crash.
Reproduction steps:
  #while true; do ethtool -c eth0; done
 #echo 1 > /sys/bus/pci/devices/0000\:18\:00.0/reset

[Dec12 00:12] ice 0000:18:00.0: PTP reset successful
[  +0.859959] ------------[ cut here ]------------
[  +0.000002] RTNL: assertion failed at net/core/dev.c (6422)
[  +0.000017] WARNING: CPU: 88 PID: 539037 at net/core/dev.c:6422 netif_queue_set_napi+0xba/0xd0
[  +0.000008] Modules linked in: irdma ice snd_seq_dummy snd_hrtimer snd_seq snd_timer snd_seq_device snd soundcore qrtr rfkill vfat fat xfs libcrc32c rpcrdma sunrpc rdma_ucm ib_srpt intel_rapl_msr intel_rapl_common ib_isert intel_uncore_frequency intel_uncore_frequency_common iscsi_target_mod target_core_mod isst_if_common skx_edac nfit ib_iser libnvdimm libiscsi scsi_transport_iscsi x86_pkg_temp_thermal intel_powerclamp rdma_cm coretemp iw_cm ib_cm kvm_intel ipmi_ssif kvm irqbypass rapl intel_cstate iTCO_wdt iTCO_vendor_support ib_uverbs intel_uncore acpi_ipmi mei_me i2c_i801 ipmi_si pcspkr ib_core mei i2c_smbus lpc_ich ipmi_devintf intel_pch_thermal joydev ioatdma ipmi_msghandler acpi_power_meter acpi_pad ext4 mbcache jbd2 ast drm_shmem_helper drm_kms_helper sd_mod t10_pi sg ixgbe drm crct10dif_pclmul i40e crc32_pclmul ahci crc32c_intel libahci igb ghash_clmulni_intel libata i2c_algo_bit mdio dca gnss wmi fuse [last unloaded: ice]
[  +0.000054] CPU: 88 PID: 539037 Comm: bash Kdump: loaded Not tainted 6.7.0-rc4_next-queue_11th_Dec-2023-00891-g9615a96563f0 #1
[  +0.000003] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0010.010620200716 01/06/2020
[  +0.000001] RIP: 0010:netif_queue_set_napi+0xba/0xd0
[  +0.000003] Code: 75 9e 80 3d d3 ba 2c 01 00 75 95 ba 16 19 00 00 48 c7 c6 fc 85 27 85 48 c7 c7 10 25 1c 85 c6 05 b7 ba 2c 01 01 e8 c6 cf 6a ff <0f> 0b e9 6f ff ff ff 0f 0b 5b 5d 41 5c 41 5d c3 cc cc cc cc 66 90
[  +0.000001] RSP: 0018:ffffc9002d827b30 EFLAGS: 00010282
[  +0.000002] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000027
[  +0.000001] RDX: ffff88980fc1f8c8 RSI: 0000000000000001 RDI: ffff88980fc1f8c0
[  +0.000001] RBP: ffff888c984dd010 R08: 0000000000000000 R09: 00000000ffff7fff
[  +0.000001] R10: ffffc9002d8279d0 R11: ffffffff857e6648 R12: 0000000000000000
[  +0.000001] R13: ffff8881362e8000 R14: ffff888c984dd010 R15: 0000000000000000
[  +0.000001] FS:  00007fdbde01d740(0000) GS:ffff88980fc00000(0000) knlGS:0000000000000000
[  +0.000002] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.000001] CR2: 00007f7358c89000 CR3: 0000000107fcc006 CR4: 00000000007706f0
[  +0.000000] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  +0.000001] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  +0.000001] PKRU: 55555554
[  +0.000001] Call Trace:
[  +0.000001]  <TASK>
[  +0.000002]  ? __warn+0x80/0x130
[  +0.000004]  ? netif_queue_set_napi+0xba/0xd0
[  +0.000002]  ? report_bug+0x195/0x1a0
[  +0.000004]  ? prb_read_valid+0x17/0x20
[  +0.000004]  ? handle_bug+0x3c/0x70
[  +0.000005]  ? exc_invalid_op+0x14/0x70
[  +0.000001]  ? asm_exc_invalid_op+0x16/0x20
[  +0.000005]  ? netif_queue_set_napi+0xba/0xd0
[  +0.000003]  ice_q_vector_set_napi_queues+0x37/0xf0 [ice]
[  +0.000072]  ice_vsi_cfg_def+0x423/0x830 [ice]
[  +0.000043]  ice_vsi_rebuild+0x238/0x3c0 [ice]
[  +0.000042]  ice_vsi_rebuild_by_type+0x76/0x180 [ice]
[  +0.000033]  ice_rebuild+0x191/0x510 [ice]
[  +0.000041]  ice_do_reset+0xa3/0x190 [ice]
[  +0.000056]  ice_pci_err_resume+0x3b/0xb0 [ice]
[  +0.000035]  pci_reset_function+0x48/0x70
[  +0.000005]  reset_store+0x57/0xa0
[  +0.000004]  kernfs_fop_write_iter+0x128/0x1c0
[  +0.000004]  vfs_write+0x2ac/0x3c0
[  +0.000003]  ksys_write+0x5f/0xe0
[  +0.000002]  do_syscall_64+0x5c/0xe0
[  +0.000003]  ? do_user_addr_fault+0x336/0x680
[  +0.000006]  ? exc_page_fault+0x65/0x150
[  +0.000003]  entry_SYSCALL_64_after_hwframe+0x6e/0x76
[  +0.000003] RIP: 0033:0x7fdbddf3eb97
[  +0.000002] Code: 0b 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1f 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 48 89 54 24 18 48 89 74 24
[  +0.000001] RSP: 002b:00007ffdfc92bda8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
[  +0.000002] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007fdbddf3eb97
[  +0.000001] RDX: 0000000000000002 RSI: 000055af480778a0 RDI: 0000000000000001
[  +0.000001] RBP: 000055af480778a0 R08: 0000000000000000 R09: 00007fdbddfb14e0
[  +0.000001] R10: 00007fdbddfb13e0 R11: 0000000000000246 R12: 0000000000000002
[  +0.000002] R13: 00007fdbddffb780 R14: 0000000000000002 R15: 00007fdbddff69e0
[  +0.000002]  </TASK>
[  +0.000001] ---[ end trace 0000000000000000 ]---
[  +0.104086] ice 0000:18:00.0: VSI rebuilt. VSI index 0, type ICE_VSI_PF
[  +0.003689] ice 0000:18:00.0: VSI rebuilt. VSI index 1, type ICE_VSI_CTRL

Crash Without patch:

[  251.069061] BUG: kernel NULL pointer dereference, address: 0000000000000028
[  251.069065] #PF: supervisor read access in kernel mode
[  251.069067] #PF: error_code(0x0000) - not-present page
[  251.069069] PGD 0 P4D 0
[  251.069072] Oops: 0000 [#1] PREEMPT SMP NOPTI
[  251.069075] CPU: 3 PID: 20728 Comm: ethtool Kdump: loaded Not tainted 6.7.0-rc3_next-queue_4th-Dec-2023-00732-gda7b4d5ccb44 #1
[  251.069078] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0010.010620200716 01/06/2020
[  251.069080] RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
[  251.069158] Code: 00 55 53 48 89 fb 48 89 f7 48 83 ec 08 0f b7 8b 96 04 00 00 0f b7 83 92 04 00 00 39 d1 7e 30 48 8b 4b 20 48 63 ea 48 8b 0c e9 <48> 8b 71 28 48 81 c6 98 01 00 00 39 c2 7c 32 e8 fe fe ff ff 85 c0
[  251.069160] RSP: 0018:ffffc900343af980 EFLAGS: 00010206
[  251.069162] RAX: 0000000000000060 RBX: ffff888121c39028 RCX: 0000000000000000
[  251.069164] RDX: 0000000000000000 RSI: ffff888106062d88 RDI: ffff888106062d88
[  251.069165] RBP: 0000000000000000 R08: 0000000038687465 R09: 0000000000000000
[  251.069167] R10: ffff888106062d80 R11: 0000000000000002 R12: 0000000000000000
[  251.069168] R13: ffffc900343afa30 R14: 0000000000000013 R15: ffff888106062d80
[  251.069169] FS:  00007f3901af2740(0000) GS:ffff888c106c0000(0000) knlGS:0000000000000000
[  251.069171] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  251.069173] CR2: 0000000000000028 CR3: 000000029e2e2006 CR4: 00000000007706f0
[  251.069174] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  251.069175] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  251.069177] PKRU: 55555554
[  251.069178] Call Trace:
[  251.069180]  <TASK>
[  251.069181]  ? __die+0x20/0x70
[  251.069187]  ? page_fault_oops+0x76/0x170
[  251.069191]  ? exc_page_fault+0x65/0x150
[  251.069195]  ? asm_exc_page_fault+0x22/0x30
[  251.069199]  ? ice_get_q_coalesce+0x2e/0xa0 [ice]
[  251.069258]  ice_get_coalesce+0x13/0x30 [ice]
[  251.069313]  coalesce_prepare_data+0x59/0x80
[  251.069318]  ethnl_default_doit+0xf6/0x340
[  251.069322]  ? genl_family_rcv_msg_attrs_parse.constprop.0+0x8f/0xf0
[  251.069326]  genl_family_rcv_msg_doit+0xd9/0x130
[  251.069329]  genl_family_rcv_msg+0x14d/0x220
[  251.069332]  ? __pfx_ethnl_default_doit+0x10/0x10
[  251.069336]  genl_rcv_msg+0x47/0xa0
[  251.069338]  ? __pfx_genl_rcv_msg+0x10/0x10
[  251.069341]  netlink_rcv_skb+0x54/0x100
[  251.069344]  genl_rcv+0x24/0x40
[  251.069346]  netlink_unicast+0x243/0x360
[  251.069349]  netlink_sendmsg+0x206/0x450
[  251.069352]  __sys_sendto+0x1fe/0x210
[  251.069355]  ? ___sys_recvmsg+0x88/0xd0
[  251.069359]  ? __sys_recvmsg+0x56/0xa0
[  251.069363]  __x64_sys_sendto+0x20/0x30
[  251.069365]  do_syscall_64+0x5c/0xe0
[  251.069369]  ? syscall_exit_work+0x103/0x130
[  251.069374]  ? syscall_exit_to_user_mode+0x22/0x40
[  251.069376]  ? do_syscall_64+0x6b/0xe0
[  251.069379]  ? __count_memcg_events+0x3e/0x90
[  251.069383]  ? mm_account_fault+0x6c/0x100
[  251.069387]  ? handle_mm_fault+0xd8/0x210
[  251.069389]  ? do_user_addr_fault+0x336/0x680
[  251.069392]  ? exc_page_fault+0x65/0x150
[  251.069394]  entry_SYSCALL_64_after_hwframe+0x6e/0x76
[  251.069396] RIP: 0033:0x7f390194fa9a
[  251.069398] Code: d8 64 89 02 48 c7 c0 ff ff ff ff eb b8 0f 1f 00 f3 0f 1e fa 41 89 ca 64 8b 04 25 18 00 00 00 85 c0 75 15 b8 2c 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 7e c3 0f 1f 44 00 00 41 54 48 83 ec 30 44 89
[  251.069400] RSP: 002b:00007ffd67aab4e8 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
[  251.069403] RAX: ffffffffffffffda RBX: 000055be8b68b340 RCX: 00007f390194fa9a
[  251.069404] RDX: 0000000000000024 RSI: 000055be8b68b3b0 RDI: 0000000000000003
[  251.069405] RBP: 000055be8b68b3b0 R08: 00007f3901af9200 R09: 000000000000000c
[  251.069407] R10: 0000000000000000 R11: 0000000000000246 R12: 000055be898b4e10
[  251.069408] R13: 0000000000000000 R14: 000055be8b68b2a0 R15: 0000000000000000
[  251.069410]  </TASK>
[  251.069411] Modules linked in: snd_seq_dummy snd_hrtimer snd_seq snd_timer snd_seq_device snd soundcore qrtr rfkill vfat fat xfs libcrc32c rpcrdma sunrpc rdma_ucm ib_srpt ib_isert iscsi_target_mod intel_rapl_msr intel_rapl_common intel_uncore_frequency intel_uncore_frequency_common target_core_mod isst_if_common ib_iser skx_edac nfit libiscsi libnvdimm scsi_transport_iscsi rdma_cm x86_pkg_temp_thermal intel_powerclamp coretemp iw_cm ib_cm kvm_intel kvm ipmi_ssif irqbypass irdma rapl intel_cstate ib_uverbs iTCO_wdt iTCO_vendor_support intel_uncore mei_me acpi_ipmi ipmi_si i2c_i801 pcspkr ib_core mei i2c_smbus lpc_ich ipmi_devintf intel_pch_thermal ioatdma joydev ipmi_msghandler acpi_power_meter acpi_pad ext4 mbcache jbd2 ast drm_shmem_helper drm_kms_helper sd_mod t10_pi sg ice ixgbe drm i40e ahci crct10dif_pclmul libahci igb crc32_pclmul crc32c_intel ghash_clmulni_intel libata i2c_algo_bit mdio dca gnss wmi fuse


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
