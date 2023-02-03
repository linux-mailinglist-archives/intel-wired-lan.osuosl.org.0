Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB214689102
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Feb 2023 08:37:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2780C410CC;
	Fri,  3 Feb 2023 07:37:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2780C410CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675409853;
	bh=PzYtXQwI5SIZXh7QTBv2RvdrscuapYTAptfhTI1Iujo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=de4oY1LbqzpYjzd5FEM5ug4JL6q/SUAFd3ojeF5c9KMrZCLsTJaDV8zXspD32tnXy
	 3F2O2zfI2a2snMoFDWe5kDmou/2r4YPES7m8DLtvrIF2kiCzZFpVd5DsF/5GTCxvlO
	 ioVSDk0anJY8OfsI6JsN3ta429p7z0jC5PQ/cfnDGks2dXmcNOXc3TKCeD/oOo9y7w
	 KbWfJMqErEIMiKTNZ2T/kVirYg7CfB+WX1QP4vUsxcwlTtw0Ykf0H56ijcOgRlg+WY
	 poiGZy+1da0f+2fPMwDrW53OISWcpgiCG0NxDJY7SZUF+kMy0DGxYpETYVxyqlonOB
	 wXbOyfhJujgEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AU87W98NrVQW; Fri,  3 Feb 2023 07:37:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E04C400CB;
	Fri,  3 Feb 2023 07:37:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E04C400CB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 375151BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:37:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0866B812A7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:37:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0866B812A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IVv9C5b5dq4b for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Feb 2023 07:37:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B50D8812A1
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B50D8812A1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:37:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="356025028"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="356025028"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 23:37:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="808256409"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="808256409"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2023 23:37:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 23:37:23 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 23:37:23 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 23:37:23 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 23:37:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mGDsBQFRFVrttakbTg+rkFJ5upBHQawypMleuwdgzgq63Zc79pJLUEEh3SrDdY5qYV81gV396JUr58MTtarzoRegCmrj/3Ed/WaqkXDtDJ8+kvlCj+xi1uQ5X5EIzTMk/29r5NCRT+bXdq0ViSiqxvgjeJ6kBUzorWLLGzjOAAatRl4wnYtbrGEYWhhx3u0G/rEiMc5HCATuXn9jNmAzK08xv5KmVdIuPKIzMKmT/pmptjge6rNpQReiw0mhmSoNWgNGsT9t2YGKESmJsXD5yfOM9agUnHWilTsZZdpQJyejXRK13bVkDcCW8uo5TxvWJVipGnF2Q8zp4FUjy7jCfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZPNG1PFtDlrjez+IP5t2hup0uLArMM0IWJWfr0KqOBc=;
 b=Cq/UqrddnbddOA9ZfbNaRDjLXKPryc6S5PXorH62EdZgjWikTbVLguD5St+iwInFRN7mvm1BXxwqVOERMxe4s61G93sZQET6jED0sj16zlCssFhJW64Jpx21yFb3MM2Fgjzzqgs1O0Fgr0Q1OeTJou+MBpfh0aJB9cxUmvXqla20GgrXLFVcC/s2oJCFIZn8wDrLl5o5WJMA2mxmDuhICEUJX+3hpQ/EyxwpD9GqOFghvypmyB8GLYOoqhc99IvR5axuMVFKjASb/SMyk35VoTF+0lIpAfldos0dtUxGVyxHpAcgfi7B3hJAWxPS2anDKUjsHfmv8ZVpdKmGRZoLOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW4PR11MB6716.namprd11.prod.outlook.com (2603:10b6:303:20d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.23; Fri, 3 Feb
 2023 07:37:21 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6043.038; Fri, 3 Feb 2023
 07:37:04 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 4/5] i40e: remove
 i40e_status
Thread-Index: AQHZJDPykz2IQrMbvUaVrdXNq/Sd6668+9HA
Date: Fri, 3 Feb 2023 07:37:04 +0000
Message-ID: <BYAPR11MB33673D7667CC577E375BC858FCD79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230109141120.3197817-1-jan.sokolowski@intel.com>
 <20230109141120.3197817-5-jan.sokolowski@intel.com>
In-Reply-To: <20230109141120.3197817-5-jan.sokolowski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW4PR11MB6716:EE_
x-ms-office365-filtering-correlation-id: b8049b2c-8afa-41d8-1f7d-08db05b97217
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b7PdpcIPjKqu9hlZrudZO2fQc3JXuoQSO5Tw1ozpOfyYMKurXsne189DsMVPsfF+v1asdprHVzfJAc4J9Si+gaRI0TgKbDMH7rzGqAJPNbaOZ/arJSPvhojRWGhjDu1bWPKwirku/ctP+3SbBYG8t8HdILRaFkaKk8mge6IFBcUTh9QMwcO7DR5GBMUM07E7W7GO1yUn9OkRZlepolQRWewbM4APMqLV8dClBQojZPDVg51l+F2qlVbLtyC59OPIrycan/tvA2l4+kS45CtkLgAlUuwHEznoSqPKY2cW9w5AyDWw/SkAuFSl2vGm3P9jATjG37DnN2dcozB5N1jzAWbeC+9lshS3FcHaiIjdPWv69BhudrE4ANh2Os/OL/WX2HDztP1K/Wc//raYMIU82qavnn008ZlsfjBN2G9bGITAKroN2lVqncLykyC52RtWL7KsFFVCwvxKEeMSl48FB9F/ZoF5HPuJp6NvnVaup0ft30PYsOnER+n5bPZehdDLzjlA0Pz74bteunaJum1gYnw4ErmXuL4EpCu51zRRW6TKS2oAYaYcMTIBUkQDx8OcXc5qu9qAfFP+b/fExo9WwJfse/XgXS4UxwLigCkFbrCNLswHRxt5uTbE9NQd9JOB5ioXZec3nXetjXXtsrQ1aXnhmcgbUW8RykMWAibsgu0uesMQG53wGeotNCL5pkZY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(366004)(136003)(39860400002)(346002)(451199018)(53546011)(186003)(55236004)(6506007)(8676002)(9686003)(478600001)(76116006)(66556008)(66476007)(66446008)(64756008)(66946007)(26005)(7696005)(41300700001)(122000001)(71200400001)(38100700002)(2906002)(83380400001)(8936002)(110136005)(86362001)(316002)(82960400001)(38070700005)(52536014)(55016003)(33656002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JXNvMXcOFxaDKsqEqNNlM+F5jInC1yOFXvwWMHw11p8yiXmkaMhyFzcOBCVd?=
 =?us-ascii?Q?xIFlygGvQyeFVHk0aX24omV1s7iD+uSmXdkXUlgBKvALcOxmjpq1HvmJQ3We?=
 =?us-ascii?Q?6pRY4pgGw+nx5lROUn+cTQ+Ps4QEucrZWYONG1JXxtlaxV7cczhbKWc1pVYQ?=
 =?us-ascii?Q?tnVx5TeMeX62nI3OGhrVdwJ71YpxHzEUKFNsDiDAx9SjbsOeR/C/cD/hzEgf?=
 =?us-ascii?Q?POTdxmgf9QlybgOYrAQTbp3RIk0IL81YuNURh8TesbI6dBSsobBanCcVpBt8?=
 =?us-ascii?Q?+5U/a5ndGOLrh67LLTDyDnszDwOfhwOoyY8qWwuzqLPk3lw8YCCSLfUJw9nm?=
 =?us-ascii?Q?Mm/BSFh03ZqH2nzX1bcIQs5uAEjN2LBhVQfCkKYRn78VSFb/iybZfPqsq10A?=
 =?us-ascii?Q?fu2+h4fEJmRarUX2kRy0lCTDGhFC+7eKEjeBsZnOt+XUh6K7091z2H3w9ieL?=
 =?us-ascii?Q?kd10jcM/DoeLWm5Ogsj89FdYBbnTY7wIaysqelG4yS2RpngLYBaIn481RVw7?=
 =?us-ascii?Q?C4FA/MB8gVHUqXspddUqJZK8kUZlP4k6AYkGEDHblW/XxZ5u9OSV91bX045B?=
 =?us-ascii?Q?sVCVDUKAvIE03TJyGbUXP/2C0rK90ufs3RCn8XzKAnDgoz3K+iHOlOTBQFyK?=
 =?us-ascii?Q?A3OkKQIF1boSyJvhNndfPCXILnyU/RgL+NQs2AJEDOsH6VWAB0DgPX3XTHjK?=
 =?us-ascii?Q?M+RQS95FJFwTmbF3PLPNHswOAI+Zy2cR/chdDrQ1yjOJdkqSeK/14VCBcmei?=
 =?us-ascii?Q?aYc+HkCZGmIarbs5RrWno1EsJ+nTxScZ6230GTApDE0kIPP38yrr/OqvbM2L?=
 =?us-ascii?Q?LcdV16wsUwbJJ8puCSfqCfhiW2g8EuMgnkaf0PpdX3qEb4zz3UyVcqY+iDBN?=
 =?us-ascii?Q?qvnsktljvmzRHT1ad3sadCieimpPXITM+/rRxdl8IqVpYFii5KEXU8rCFn88?=
 =?us-ascii?Q?TX+SHVE+HqSz0454rBgtaGE+W++t8cs3tWXPo8nRlzNFx7ZY2ZJeIcEg0o8t?=
 =?us-ascii?Q?UhIy0ITJZSZDeDfWmGI0EUMqS52ggRrmm3wtKJH30GvtGizo7yw7ZQ9zHFdJ?=
 =?us-ascii?Q?4I/TAwdLGsyK1073Ur1kLFsPHgkJdR+3+ITEhBcebWJZbw8NsQLIAH//AGo8?=
 =?us-ascii?Q?VTr76eYJTvs0NoFqhCsaBIN6E6BI+w8nh8Fp/fhd4b9E9FbW1aX/cb0Ce2px?=
 =?us-ascii?Q?FXAfJtIy0Qr8HS3DUbrX7bhQOV0nJwmWzfCklfXl8ags8SUC0weqgGWvkTll?=
 =?us-ascii?Q?KCE6+OzdJ4uvnFUqwdck8grNNFeFQ9jYv+mAp/dg88ycWZebrJ6ztcsVw5kY?=
 =?us-ascii?Q?63Rnm4qes4cw6k9MXFR5VsR0tFCSpjzolQSaq09ZqznzA1S2PKxLgS/hTVlW?=
 =?us-ascii?Q?vXiLDtrheF098CZNw+V337aBhBEnARHc8IzqCkqOWxH0yVUsDKW8vfwKZB3x?=
 =?us-ascii?Q?UXLTCePOp55jLiC5D0xt687wB+auvXLv23S7vMqd2SkGzkzcqrDt4TOMBS7t?=
 =?us-ascii?Q?hTSVdq4HvqydVA4lE3iCM9V/HNXiqpOPo4FizS5VugkuofVxNi5xDZa6Aaw4?=
 =?us-ascii?Q?Nkn24tD+Aa+JjFGBxKP/fV5am9W+vvBfT/CcZTMQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8049b2c-8afa-41d8-1f7d-08db05b97217
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 07:37:04.3795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dKYR9v5JUTgJtTCaF6yJyMkbMmrVWC6hmjqGQQtdfPyvxBEnKgJD4v4luJW4VIO2T3vKKeNAwlaTj/BMuw9Rcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6716
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675409844; x=1706945844;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SfAE2QeGZSfEWJi2slaghHFpWC08E+GpMx8tQV3OzkI=;
 b=lgvQ6OQ8+9yh7mijie7E8uUZkNFvnxrwJkKaiibkeRC/Ysk9Qz6wRoGQ
 ljR1Y7DVxp2tqXYmto4YAf9yDy8PWWnC3VnqNupcIrvRc7YkHTd/+0J4/
 Uju+rTa+eKBMVgQI+3xpMAaMc1g2yfAieupanKttRs9D8DVaFlt7Srfxj
 I9ydKfTSRMag939q6UBroNk7I86cRKdDTftL+pfIDdru84Gn2oatXCjaE
 gyNASPSXD7kunvRPANYVzFvH//Ln+94XpkFyPY18zIE5C3Q2jxXdc8iq8
 CtS1/laV5AtL4D2g9xfhadeCe9Na17A3ugmJYZZXDyfJXg3a+bboz27dj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lgvQ6OQ8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 4/5] i40e: remove
 i40e_status
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
> Jan Sokolowski
> Sent: Monday, January 9, 2023 7:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v5 4/5] i40e: remove i40e_status
> 
> Replace uses of i40e_status to as equivalent as possible error codes.
> Remove enum i40e_status as it is no longer needed
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.c |  49 +++--
>  drivers/net/ethernet/intel/i40e/i40e_adminq.h |   3 +-
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 116 ++++++------
>  drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  20 +-
>  drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   2 +-
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |   4 +-
>  drivers/net/ethernet/intel/i40e/i40e_diag.c   |   6 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |   2 +-
>  drivers/net/ethernet/intel/i40e/i40e_hmc.c    |  21 +-
>  .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  54 +++---
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  48 ++---
>  drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  52 ++---
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   2 +-
>  drivers/net/ethernet/intel/i40e/i40e_status.h |  43 -----
>  drivers/net/ethernet/intel/i40e/i40e_type.h   |   1 -
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 179 +++++++++---------
>  16 files changed, 275 insertions(+), 327 deletions(-)
>  delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_status.h
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
