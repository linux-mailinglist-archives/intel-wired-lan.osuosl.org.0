Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AB94BBDFC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Feb 2022 18:06:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20565408BE;
	Fri, 18 Feb 2022 17:06:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ENbVKC1PvSPB; Fri, 18 Feb 2022 17:06:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CFFF403ED;
	Fri, 18 Feb 2022 17:06:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4B361BF48C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 17:06:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A7B74403A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 17:06:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m4O9xJ__0tYK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Feb 2022 17:06:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C83F40192
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 17:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645203972; x=1676739972;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zHs65PbQSdY3oovRXSXdAaLihEb8W0wGMMT9SAAtAC0=;
 b=YxPWXNBasymsM/XarHVlKraJ9DI4JM6bMLb+UZe2fNveGIzsAYmHJ4Qa
 8uA9923N3YRABdUWpxw2CTYXPrNdIv6l1QoEj/6UcAQHOoydz/1Pxw0Gn
 8ty47eHTTHZysykQxvzKuhq1Xu8GyWySU77v07H3rn394MTqrtDHru4pj
 F/kCru/lUHit8YQEnKSNPrVLuWwmBf1SEzG5cdVJf2HBCcqSW92mka3Vy
 DrsrkR9S7p9nLRwQB6qfPJbGPf+dYtsilOhxF+xG+aHEUTRwASRn3Q96Y
 6sLCuDilbhnsdjrEfh+jxvZb1uCdAIBMu68mS0aYOySTJlatvTAEpnd6Y Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="251365159"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="251365159"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 09:06:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="778058663"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 18 Feb 2022 09:06:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 18 Feb 2022 09:06:10 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 18 Feb 2022 09:06:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 18 Feb 2022 09:06:10 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 18 Feb 2022 09:06:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EX/t39HkNJsw4vndxqPTsst1KpAp2VA6+5NKp0dGSizcMutJOW1PK5jgQSMMaLpfwKN9IELFPRmhmG499N2br5w9CrX8IwArd792bkmhqafd+vhfWzpZLLTFwi+7mouDUkpYPlnF+99QM8GIJeczT5yjWyjeMauMVjUJ0EkTP6v8a5f/Lp4yUaARh6OxvFn53qezIWHWSDokvy1AQpqfmk7NXO9oo7rlwfvALgifswqfNV7E+ZMM2i9c/5kN+Ahahcct8VM0kT8CmmGvAHjXhROt7S50d19qJmj+RQJNgskuwnJSYnV8Hju7J86TqMiol6oh6G2PgqMmJfp5Mx/Leg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GIXDH8NJLAKUzFbmO64fUL/bY1RmMqDxF2hugPyXgz0=;
 b=lkJlVJM0+u1R9SLwnqHXrYQWtWIP97spo3l6GoqRY+tRtMXL8jF3G/0sLRAE6HRlLpC6EDczjFnlVy0MGhXxyACxYPAA/2cbCWhiyFw4txjxdqtcp8xwcK4p4Ole8FGlmR+HlrN24Mi4nwhkByGayrdJkhs/UFUHj3IwZHWbeyGceCK1WJpVCD7sqYG42HtyrtCGuntt4/oyCR/Mzc2YKX1FMieWTInBbcl7jkM/f2NQqdOIoNBe6v0wOqnKiM1FlI5pg4H+gc3lNrBGmTdlqAIZJCFNwAYwW8oi7hYXym1EjkHmoCn1kNAwNdUzrTBy+7/jzjUWzD6x6D5yApGL5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB2937.namprd11.prod.outlook.com (2603:10b6:5:62::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.17; Fri, 18 Feb
 2022 17:06:08 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4995.024; Fri, 18 Feb 2022
 17:06:07 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "trix@redhat.com" <trix@redhat.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>, "nathan@kernel.org" <nathan@kernel.org>, 
 "ndesaulniers@google.com" <ndesaulniers@google.com>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>, "Swanson, Evan" <evan.swanson@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: initialize local variable 'tlv'
Thread-Index: AQHYIblPXvOYalE6BkGLI5SQAotY36yZj8hA
Date: Fri, 18 Feb 2022 17:06:07 +0000
Message-ID: <BYAPR11MB3367073E33F1DB82CF044702FC379@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220214154043.2891024-1-trix@redhat.com>
In-Reply-To: <20220214154043.2891024-1-trix@redhat.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5349545b-4db8-4361-468c-08d9f300f49f
x-ms-traffictypediagnostic: DM6PR11MB2937:EE_
x-microsoft-antispam-prvs: <DM6PR11MB293778C4614B565729BF1814FC379@DM6PR11MB2937.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:226;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wOkffrBJ0i6kC6Srg1zXVoSi/uctBgCKeFUmKdTN4vyyMug5hIWBDG3odQV4TY+mDm26d48b7sGhqbmrqmUTh+CrypCDbAvAauFGZL5fYkbw/ZeOYsLyoZJ/JSNf7tzd/iEUCyRY5F21gJvP4DJHaQwQWUj0IshlnTi/STT2pDrImcFTotj1l8+QZ9bffrXFOddahgqaIW9GJp3J/hbxAOxR74wR30Ir1Fja/9hvD0RnjgW6PwnlyxPb2afWRLQ8FZllbq7eiYCt9o6e5if/o2TcwpzgWkRpmGKIJCU/gp/0zqJ7uTubj/xLIblq0UTcjreJtnk1sadB3CAwqxAtF7o78ra8I98yq/qGNALLkTs2M5QJmC1R9CbkdpLPB8kcJwQNuKnUPz4WWrdyrt72d06LpdXy5uhANCTIvrMnh1n0CV3lxTqd1gBCq920HljTu3WKQStv/XV/h0SvLelpD5w937k2/xNmMMsohcEYR2pU5nslyE6xt4J4XTZPJsukvIPoUqS0q53+0oKbBEvtsFm9OQl93y/TOuI110KzyJhmCsM+oiaYBVCf5OF2ELbjn6OHl4krmDbCXAK2pd9w66v/cpJ0A8+inN4UCBh+CRhuA55qzCUs7xvHYViJp7FlOTmCAweWEaqmuyxj0p9QKQhgGJHpKqcR4YbSthS5d6Pydepb6Ad/ZekpbgsaGMGz2VVMryPR0di8WxWr9X37i0Si+7WOM8Xf56JeyG1Z4d0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(26005)(5660300002)(186003)(53546011)(71200400001)(52536014)(6506007)(55016003)(38100700002)(86362001)(82960400001)(921005)(7696005)(122000001)(2906002)(4326008)(38070700005)(8936002)(9686003)(8676002)(83380400001)(66476007)(33656002)(316002)(66556008)(66446008)(508600001)(66946007)(64756008)(76116006)(54906003)(110136005)(6636002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4VSB8KhBtngDx6tsTqpf9gcXOocsDyJ4zCPCxWsjABjGY/8/lvY1h9RJiOrG?=
 =?us-ascii?Q?2bvmX5uyboF3ge5dtjXFl0pxND6JBhtrHXeZaul6oO11Ic9L/Zv6IXThn5Rn?=
 =?us-ascii?Q?cHOUhYYrW+uj9PM7FZYeRwUxWw324kMQESGIGsdeuoks6Xs8JqSnVJAII+rI?=
 =?us-ascii?Q?H0R0QjAR76xgv4RCSmlwtmQiBXodukGAMUCjog8rKMP8v7QAZT0iNc01C/PI?=
 =?us-ascii?Q?75FHO6pftnlC03eu6w/+VgG3uY6c1HIAc8HcqjWjcAbpkxMHMLz4KGFx9cOu?=
 =?us-ascii?Q?ZTtleT2GSjXP6oy50ofgqeYvKnygGGRHlge3aaRHhlS/FJuU7MQyMLbD0lsv?=
 =?us-ascii?Q?xn9B5cNC+4BSeFQPvl1LTeS0jVciRGoa+rfJXSaaBLTqYgzEyykV+EnNICh/?=
 =?us-ascii?Q?Ct7Uwhp9BnATXG3L4V781+mjJLVWWEo2lrAt0iLs4m9JhlFwJv4ZT5otbePY?=
 =?us-ascii?Q?oCHZssXiFs7YMgs7IU8Gvt/IrvG9Vbyr1GVSWQDzFjLLRbkLOCVnm5ymAs8v?=
 =?us-ascii?Q?1gO5C1kbuIuLBhh4knDdPksWA7neW4EXuED/haCe+fk8i/DnJhiQikVzZkv/?=
 =?us-ascii?Q?lSANc5TdFEc/X9F7EqSwZwMNWKcUtydZa+DvqNA8xpx8r4XC0nZZglbqRMMQ?=
 =?us-ascii?Q?HHS8DTiIGg62twyW46QFtUPxfdlSjw0VV49crlAZnKWkTjF50DtQyVTqGtjF?=
 =?us-ascii?Q?2THS0ZfJozJ8S+n+/vU2gFEFWxdHBu67yGOwSJEgVijyeX4q1DYGaLIlLBYs?=
 =?us-ascii?Q?67vciT2t8D4rwmuS7CAiV+REJgEWzR7XQbqtzW0m/1WKCzDeXlsVAaPnyw7J?=
 =?us-ascii?Q?BHbp9WWgBOnohF325FJCWCRAwLDWvoAfcjmMGHkzJy6whR7R32mEIDmHP7l/?=
 =?us-ascii?Q?n7QB+SEwL6lQWMhM44r/p3xueFH5c56xKXnhU4SkrIa1id1gAdm90pUe48yM?=
 =?us-ascii?Q?A+lIEaxHtevcORR+0AiezbY+TX6tjeOaLiCIzG+SU6xxjKbQ3ryrUA0/EOWw?=
 =?us-ascii?Q?bTSyiixIma6xDag42x6aS25mpFj7x9HbDwE5wbv+iJK18V4pSfuLOsbSPQWm?=
 =?us-ascii?Q?oVQyXvMf4WniB4UiK0KuLFs9m6MwfYWujRnaezjEUU7yyeFmdAZv7u1W0w0H?=
 =?us-ascii?Q?2OqzukFQU4evDoVxzk8d3ALzsXtEbsAKCkq49PeaBZyoGZCEuvvGrh6llgXF?=
 =?us-ascii?Q?xndvjYO+HlZA1Ey6xIaEzkfoZESY9Wj2j0BxZv8zqy8ibIo/xX3UBXU4GG/p?=
 =?us-ascii?Q?Y/H3MSTk5t31equI0Oh9mAfXXd78f9ckVFsfrqbF/F6mFQ4Q9Le+txJWlWya?=
 =?us-ascii?Q?AzwyfoeePp86ueVV8bvOIKbimFRLdpGU1Qwcqj+cH5MzgVSPXtvpT011hClG?=
 =?us-ascii?Q?wBCIJAOJdbgc56ylXNQ6MAQrKmNmhI2LyMyyayaoti7DzOgxOf1b4+qGIH6Q?=
 =?us-ascii?Q?02+J7JXcjKbh1Kuu6LU1frr3PKdLDBAcT+ZgMLCy1TzhEc/eIXmWKzo6o5pC?=
 =?us-ascii?Q?4rXp4qZ8hn12x/OEetbYbQDRFbWras7KKEWPu/RKVaPuPR97/01HcOb8cVFN?=
 =?us-ascii?Q?1dumuTtPgZSKAezac40icvC8uvRZbHOwrcppP0npTngbBxccQDi7wYvLRYVW?=
 =?us-ascii?Q?aA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5349545b-4db8-4361-468c-08d9f300f49f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2022 17:06:07.7701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y1l0PM3nfkJjRDEV+M3+1B9A2fUVyd+KS4NA/tXlBHOdmPlUWKSghfa5+T3/g9A/+BwJ5Slz019Cmdw4Z8gCPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2937
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: initialize local variable 'tlv'
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
 "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> trix@redhat.com
> Sent: Monday, February 14, 2022 9:11 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net; kuba@kernel.org;
> nathan@kernel.org; ndesaulniers@google.com; Greenwalt, Paul
> <paul.greenwalt@intel.com>; Swanson, Evan <evan.swanson@intel.com>
> Cc: netdev@vger.kernel.org; llvm@lists.linux.dev; intel-wired-
> lan@lists.osuosl.org; linux-kernel@vger.kernel.org; Tom Rix
> <trix@redhat.com>
> Subject: [Intel-wired-lan] [PATCH] ice: initialize local variable 'tlv'
> 
> From: Tom Rix <trix@redhat.com>
> 
> Clang static analysis reports this issues
> ice_common.c:5008:21: warning: The left expression of the compound
>   assignment is an uninitialized value. The computed value will
>   also be garbage
>   ldo->phy_type_low |= ((u64)buf << (i * 16));
>   ~~~~~~~~~~~~~~~~~ ^
> 
> When called from ice_cfg_phy_fec() ldo is the unintialized local
> variable tlv.  So initialize.
> 
> Fixes: ea78ce4dab05 ("ice: add link lenient and default override support")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
