Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880EC7B7B53
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 11:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0746041924;
	Wed,  4 Oct 2023 09:11:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0746041924
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696410683;
	bh=pymS/x5FEJq2L/Pezp3o3AUyF9WogyjD2AxUvCQMwPM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZNnuiDuAO287fIv0wBFI9rZwQBrIEIEeilVoS5X3aUe74XUxWaj2Avppk1oTzEN3A
	 875V6ToVc0nJZa9Q4725xPyYWg5Ko7SYrnT+Bk7v9PGdI44hssIY9zIERSicTZ2mi/
	 XOhk+PTJ6cpD6Iy/fZRIbuisXB5fdTnAXRRl4CcfzaHJG5YUDinPlGXsGvXfHREiuE
	 MBElOS0Y9eUfrNxar8XA9xXGgwcMPqgfxPiVImb0sjR+nfIxzElkMogAx4cRjrlsUa
	 EY5lhILLyq2hppTAFXQ00U7orfcJ/pqINTx/sKHpwZq4NxO4XafoubfjNT3mMa+DrJ
	 uoauwgC6LHZTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iJKbhLBn35ue; Wed,  4 Oct 2023 09:11:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1F8440134;
	Wed,  4 Oct 2023 09:11:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1F8440134
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C0181BF41C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 09:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F19E828F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 09:11:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F19E828F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YKRap28BPeLo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 09:11:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 74597828EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 09:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74597828EF
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="449604590"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="449604590"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 02:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="925025219"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="925025219"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2023 02:11:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 02:11:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 4 Oct 2023 02:11:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 4 Oct 2023 02:11:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VvvPrsI2hc22CeFDM3FZf5UjiZAo4NccGxL6IbrdRCEEE01kZTf9lZWNsBcP5+U6z8liuO7pH6m+yItW4riHo/VySSCr2eAbDwnTBu9nbuCOTwH7g3VYPvaK8pWzn4niZ6eli20CDS2Rgn/xvRL9IWVXCv0gfGYIMWwsLKeOORV79B2r/CQ9HT/P0nrVNmZSnRuns8KCXPiugTIpI5mruDt/4LrngGeiCQohjhF3/lTqSQf1D6EvXgoVHGys5W8KgEefOxK0jVH/cdhMLw61yTyi8dlWc8jEk9f8qyRqoCD4bNSbnHRIPkVl/8AUwb5rmoHAsbfjHI58xlls11J32Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZkIyYmnqcw30jV/o1HRMaQLim3O2uskyFvwAqCO+f5k=;
 b=BfQS7kiE3ovUM7EbKIjD7o8eLSElcdepwJVAbHe4G364wnFE7+6mtscSCfBanpBfcfDmxrXhRIxt9Rs01T+Dhkattv89ubYAM6sjFZYnzSHjIEhcxtSQNPd0KbGsf4ItaJlUKSApqqGqQFQw8DF3O90qdGRD3fabrpGgsxsxuDp0bz/GdZZSFFBcFxE2dBv4TjNQVL+y1oYtEVR5MjLtffZt2br7zp//co9wXUxLeMk93+DyHwLWkkl5/luoHUCcWnNoxpcoDXsJ7FSsb7Sn7lkx847cY9I2E4NXvbhNu7C8c7PJqrj8NOknJ2tWfgEw8irJxJerPouzVBp+lRaqhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 SJ1PR11MB6082.namprd11.prod.outlook.com (2603:10b6:a03:48b::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.31; Wed, 4 Oct 2023 09:11:11 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f%3]) with mapi id 15.20.6813.035; Wed, 4 Oct 2023
 09:11:11 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH net-next 3/4] dpll: netlink/core: add support for
 pin-dpll signal phase offset/adjust
Thread-Index: AQHZ8STYBdXle/Bxd0eyxPCX/7DD6LAu+R+AgAebAaCAAA0FgIAAWKYAgACqnwCAAIO7gIAAMSsAgAEJTNA=
Date: Wed, 4 Oct 2023 09:11:11 +0000
Message-ID: <DM6PR11MB465796999DA139FB1E2BEF4B9BCBA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
 <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
 <DM6PR11MB4657AA79C0C44F868499A3129BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRrb87drG7aVrxsT@nanopsycho>
 <DM6PR11MB4657C61104280788DF49F0E59BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRu1cG2uglhmCdlI@nanopsycho>
 <DM6PR11MB4657B52BD09700F49799ED8C9BC4A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRxNML855TG7L5To@nanopsycho>
In-Reply-To: <ZRxNML855TG7L5To@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|SJ1PR11MB6082:EE_
x-ms-office365-filtering-correlation-id: 9cc7220b-0605-4403-8e1b-08dbc4b9da74
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: grUr/0EvDdBUQUWwr4i4Bo07t5bOFJ1KEUjcM4a57OBtyW5EFqKFY65Ib5tPJY/Seb6tFgXCCpTlVALco/GcyrGy0rsU8cmyOPwtY1QfQGSghgqUWuS9ZuoVNoZlS9ZhwBUjzt5J/QC5xQ9Wdls2O22EV4z43BBFxXLN6AlGS9ciEnpU6dq7v5sKyEalg1wYJbhpyGIOpPLY3SwMDRCIyzaWHsKzSNtHu3ifGTD5/XzK03YrFYbm0UW91S+Rku9u72M15SmqVKUnpDYtE4GvS9MlLkDTIfCTmCLxtw42i9qKfySrKFcYzltZB6rHXPfdNOraQoWTZkXeClCBiThtpm71CG0jiFVAT0qOAhsxzqQt368nQMC40YRRrXuCoiyI0EsIvuRx4a5XqRjdZ+pBW938tnS2P+5NbzlU7t2WA2tJv9a+IQbWOp+hazJkWUlucUd/ErzHb08p970qXWs2vx+c8KAqvU49maBmXom8/61qN6Xha4oJEPdAeiHtOIxciqsIA7AEXF5Ykn+fPhe9NNIJG6IXtFWh/hL2pLgioUzD4rBhpvih05Iu0rYJryrTSIlrsv0u2op6J9Bg63wJMlxPDQADQk5MJ53DljjOSUOOZMBL7GyLT+4Zctn2noex
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(396003)(136003)(366004)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(66899024)(38070700005)(82960400001)(33656002)(86362001)(26005)(9686003)(83380400001)(6506007)(7696005)(122000001)(38100700002)(478600001)(71200400001)(2906002)(8936002)(52536014)(8676002)(5660300002)(4326008)(6916009)(41300700001)(54906003)(76116006)(316002)(66476007)(66556008)(66946007)(55016003)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1AY38sq7rs1f7NqLOiJnbadvIV3w39cTsjnADgXYlfRdfAxIpPRTG1nzPMkN?=
 =?us-ascii?Q?d1DWbwx65E0O5kItTJ1r6l3ePLrCzrUb+XhItDMStVAWPYY+tefb3BSB7IlN?=
 =?us-ascii?Q?owbjVpOlg3YY8V1TPxuFJBpEueiODijpbHVoUlkyhqGxBxDvww5iSBBbuOpE?=
 =?us-ascii?Q?ukZ9K7wAqn6O5oHVpcBjagS+y6ooFh99D0SpgXljomzLexSzf3aesmNz2ykw?=
 =?us-ascii?Q?uOFeVw34qMmaVqjOHLatuiueVTZyOMvyhg38ratz416Q/uZsbYv/qQqC96TB?=
 =?us-ascii?Q?dG1QuKmO901LHANEQDobrtJ+/KGQw8SuAo9GjFzOujB+ypwhckd+AWIxuAx5?=
 =?us-ascii?Q?Czd5l2ULFYFwV7d2xe7stuUxnKyQcU6D9Jy1iV7J72xvek4Knno2tF3PxbvP?=
 =?us-ascii?Q?BwXejvdEdCD1tTdu/s2+LhuX4HKdG025SN47bfYx+u4T2CGkwPk5YU/NUyRf?=
 =?us-ascii?Q?bS1LmvVXd/tZiZTu2Gq5KaYw50fi1PBTkXPEZE0XqrnkavBAjMoCyqrLmTbv?=
 =?us-ascii?Q?OugcuS9yNL8qkJ3XN0O8taSntMlZhj7WgaAQkgd62Dj5x8C8xd1SaIBJ5v7W?=
 =?us-ascii?Q?wWP2waqdMA5Zun0A4x2ABf9gyXNgcxFUAYacTNEcA2ndZ7r87F9yhYK/1fIu?=
 =?us-ascii?Q?jeuotn9w2A5LsOKKalufFYpCEeISxltwOxD6MrMjn6elK6CAiIqbpWd5LMcy?=
 =?us-ascii?Q?RPzVQZVDv7WJsQO/ELfYyUHUrQtioiWmTmZfw4yncj0XqgBYl776SU25xiA2?=
 =?us-ascii?Q?XzuIpJaQZ5EKtQvz6qUwRRlGSsOpv1ImopppEaij+AXJQRa5Xzr7HjMU2CYA?=
 =?us-ascii?Q?UtRPcHKiEVYKMhRJTohldSHA4EbjQx8sMj4jzN9nIN1NhB4Mrx4C4aWC/K4G?=
 =?us-ascii?Q?SvJ0owbWjmCR6p/BoRdDMorou09hITKKbHwFje6a1E8Xq8FGqVuytHpmM4i7?=
 =?us-ascii?Q?FUt7foxFsk2iOJnBPApRszXSSJccb3YqC6xhFj30c/hJoKhuXU7SGFAyGI36?=
 =?us-ascii?Q?VYaV3yGN0MoPMA20Y0/bBX+ydHh0YfTehQvEDtDPR7dMpsRTCEDyggs+hVZO?=
 =?us-ascii?Q?6M6QrjdKO8CALg+jFyd34o/j30Wz5cCQOtJC3j5YtPlT+/uBzSbPBqCGF/ca?=
 =?us-ascii?Q?A4VwYFqRLS+suKfU21PJ2YKruLWdlHtLuetvbuBQvNUsEqyzj780gMU6Np+K?=
 =?us-ascii?Q?6qc0b7lUUFMTK610gI8XAsd6rsIjG6Sl2u3ZmyrvYLvCtxEN2yMDX1onXNc6?=
 =?us-ascii?Q?qNvRen5dkybqos9bdIykH5C+LOaFgurqzZhOVsYHUkZxIaZzYp18FdWBF+mv?=
 =?us-ascii?Q?0UPdvsYdeZL4Wp4Fv5RhH/XqNvsnzKK53WJ0eskICxCtONm1HsDS3z2mGQHk?=
 =?us-ascii?Q?9qlmBL4wtQMJB/3rChviYJVLYXusKJ3x3s3CwNk/8s5PGEsG4HZMKA7RDKFe?=
 =?us-ascii?Q?8SGgf/sh0R5k8PxbAm46SIAgpfjo1aGikq6HdQyJV66znAeTY71QiKzAt5rh?=
 =?us-ascii?Q?Zac5sF1rF8j6nhuadzh2cqE3r25LRzRsCMSutiz+IYR+/zGNKT6xaZkGsAK/?=
 =?us-ascii?Q?j6OGW9gAke4ByuqTeuK/NHTaqYx22ntqjHW5qg+Go8dYIgr+r2meSBW1LcZd?=
 =?us-ascii?Q?bg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cc7220b-0605-4403-8e1b-08dbc4b9da74
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2023 09:11:11.5691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jyfqzq7l9shJ+LWlMHEw0MxL3TLfX5xP+gIopcgthDshQMnM0VOrMPGs9n8S/qpT8BAkKpg7T7pYjUVjEajRUe7dORS2kF/TaRih7O9t0ec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696410675; x=1727946675;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Eedc6uwunzox8Y6P05KAg6ccWk2F5YyI+s3GHWO3vas=;
 b=ZQ/PI70+0BzaoWejnJ/Z+yyYtYWHu81yI9tLDn/ioS3HaVt+2f67eG1I
 ArGou0x6Q5RbggY4w12QfK+x5eUzQ7A8BDd98Kla0tAJOQ4LD1rUB5Uqk
 iWtv4sHVZdB64nSZ0Wye0JWvyZAbtfhqXCdQKOz+ITftsIWYrSaTAY2h/
 aw+OyHp1Jkn8Y4yItRkEVt4/AcngsF3Q0NPCxihMlvxkpw3y9scuD3oRt
 0Li9mwCZbhyw3CL5q+l2+pdKlWIGaKayB0K5RwvqSHMRSvH2FCJ+AoOKA
 s9y054phoM0TzTFVRGar/W3szW9V/YcchK/uMHpKhewdSg9dSMD+1aBov
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZQ/PI70+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add
 support for pin-dpll signal phase offset/adjust
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg, 
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Tuesday, October 3, 2023 7:20 PM
>To: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
>
>Tue, Oct 03, 2023 at 04:29:43PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>From: Jiri Pirko <jiri@resnulli.us>
>>>Sent: Tuesday, October 3, 2023 8:32 AM
>>>
>>>Tue, Oct 03, 2023 at 01:03:00AM CEST, arkadiusz.kubalewski@intel.com
>>>wrote:
>>>>>From: Jiri Pirko <jiri@resnulli.us>
>>>>>Sent: Monday, October 2, 2023 5:04 PM
>>>>>
>>>>>Mon, Oct 02, 2023 at 04:32:30PM CEST, arkadiusz.kubalewski@intel.com
>>>>>wrote:
>>>>>>>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>>>>>>Sent: Wednesday, September 27, 2023 8:09 PM
>>>>>>>
>>>>>>>On 27/09/2023 10:24, Arkadiusz Kubalewski wrote:
>>>>>>>> Add callback op (get) for pin-dpll phase-offset measurment.
>>>>>>>> Add callback ops (get/set) for pin signal phase adjustment.
>>>>>>>> Add min and max phase adjustment values to pin proprties.
>>>>>>>> Invoke get callbacks when filling up the pin details to provide
>>>>>>>> user
>>>>>>>> with phase related attribute values.
>>>>>>>> Invoke phase-adjust set callback when phase-adjust value is
>>>>>>>> provided
>>>>>>>> for
>>>>>>>> pin-set request.
>>>>>>>>
>>>>>>>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>>>>>
>>>>>>>[...]
>>>>>>>
>>>>>>>> +static int
>>>>>>>> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr
>>>>>>>> *phase_adj_attr,
>>>>>>>> +		       struct netlink_ext_ack *extack)
>>>>>>>> +{
>>>>>>>> +	struct dpll_pin_ref *ref;
>>>>>>>> +	unsigned long i;
>>>>>>>> +	s32 phase_adj;
>>>>>>>> +	int ret;
>>>>>>>> +
>>>>>>>> +	phase_adj = nla_get_s32(phase_adj_attr);
>>>>>>>> +	if (phase_adj > pin->prop->phase_range.max ||
>>>>>>>> +	    phase_adj < pin->prop->phase_range.min) {
>>>>>>>> +		NL_SET_ERR_MSG(extack, "phase adjust value not
>>>>>>>> supported");
>>>>>>>> +		return -EINVAL;
>>>>>>>> +	}
>>>>>>>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>>>>>>>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>>>>>>> +		struct dpll_device *dpll = ref->dpll;
>>>>>>>> +
>>>>>>>> +		if (!ops->phase_adjust_set)
>>>>>>>> +			return -EOPNOTSUPP;
>>>>>>>
>>>>>>>I'm thinking about this part. We can potentially have dpll devices
>>>>>>>with
>>>>>>>different expectations on phase adjustments, right? And if one of
>>>>>>>them
>>>>>>>won't be able to adjust phase (or will fail in the next line), then
>>>>>>>netlink will return EOPNOTSUPP while _some_ of the devices will be
>>>>>>>adjusted. Doesn't look great. Can we think about different way to
>>>>>>>apply
>>>>>>>the change?
>>>>>>>
>>>>>>
>>>>>>Well makes sense to me.
>>>>>>
>>>>>>Does following makes sense as a fix?
>>>>>>We would call op for all devices which has been provided with the op.
>>>>>>If device has no op -> add extack error, continue
>>>>>
>>>>>Is it real to expect some of the device support this and others don't?
>>>>>Is it true for ice?
>>>>>If not, I would got for all-or-nothing here.
>>>>>
>>>>
>>>>Let's step back a bit.
>>>>The op itself is introduced as per pin-dpll tuple.. did this
>>>>intentionally,
>>>>to inform each dpll that the offset has been changed - in case dplls are
>>>>controlled by separated driver/firmware instances but still sharing the
>>>>pin.
>>>>Same way a pin frequency is being set, from user perspective on a pin, but
>>>>callback is called for each dpll the pin was registered with.
>>>>Whatever we do here, it shall be probably done for frequency_set()
>>>>callback as
>>>>well.
>>>>
>>>>The answers:
>>>>So far I don't know the device that might do it this way, it rather
>>>>supports
>>>>phase_adjust or not. In theory we allow such behavior to be implemented,
>>>>i.e.
>>>>pin is registered with 2 dplls, one has the callback, second not.
>>>
>>>If there is only theoretical device like that now, implement
>>>all-or-nothing. If such theoretical device appears in real, this could
>>>be changed. The UAPI would not change, no problem.
>>>
>>
>>I can live with it :)
>>
>>>
>>>>Current hardware of ice sets phase offset for a pin no matter on which
>>>>dpll
>>>>device callback was invoked.
>>>>"all-or-nothing" - do you mean to check all callback returns and then
>>>>decide
>>>>if it was successful?
>>>
>>>Check if all dplls have ops and only perform the action in such case. In
>>>case one of the dplls does not have the op filled, return -EOPNOTSUPP.
>>>
>>>
>>>Regarding the successful/failed op, I think you can just return. In
>>>these cases, when user performs multiaction cmd, he should be prepared
>>>to deal with consequences if part of this cmd fails. We don't have
>>>rollback for any other multiaction cmd in dpll, I don't see why this
>>>should be treated differently.
>>>
>>
>>We don't have it because no one have spotted it on review,
>>as mentioned the frequency_set behaves the same way,
>>we need one approach for all of those cases.
>>I am opting for having the rollback as suggested on the other thread.
>
>Okay, but let's do that consistently.
>

Sure, fixed in v2.
Thanks!
Arkadiusz

>>
>>Thank you!
>>Arkadiusz
>>
>>>
>>>>
>>>>Thank you!
>>>>Arkadiusz
>>>>
>>>>>
>>>>>>If device fails to set -> add extack error, continue
>>>>>>Function always returns 0.
>>>>>>
>>>>>>Thank you!
>>>>>>Arkadiusz
>>>>>>
>>>>>>>
>>>>>>>> +		ret = ops->phase_adjust_set(pin,
>>>>>>>> +					    dpll_pin_on_dpll_priv(dpll, pin),
>>>>>>>> +					    dpll, dpll_priv(dpll), phase_adj,
>>>>>>>> +					    extack);
>>>>>>>> +		if (ret)
>>>>>>>> +			return ret;
>>>>>>>> +	}
>>>>>>>> +	__dpll_pin_change_ntf(pin);
>>>>>>>> +
>>>>>>>> +	return 0;
>>>>>>>> +}
>>>>>>>> +
>>>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
