Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC26657B059
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 07:31:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D61D64056D;
	Wed, 20 Jul 2022 05:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D61D64056D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658295106;
	bh=MuKRzVCzUb8NeNZU9zemFFn4t9IqV5Z+YAlSa88CwNI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tm5tgV6VqLGHMiQ6uLYGnumGsJpPpf9gJ7zhlWhc8cBRAZxNX0kUgss2sevQU1g9Q
	 4VcYWP34zxnyccTd7baYrnK8e1ilNbzbwQ4NN7j3e5rUYRI48uwVl9jxQ6AeE9l44T
	 kcBUOosTgCZwheiDQslw8xTgPJoTzgn/lNnzzbQ5B1Ag9d+rPjyX2xQZo3w0R0RvJ4
	 oDH2WIy835lwxCItHeQc4jQX+NmzeKCfQZUZH7Pzv2zLysuJB7e/87mgRum53m124N
	 dqAO3NZzN/H4g+wYdxWrEKevIX+ZpVN1C9HqSJshNBXGX+maaT57uZgnQLTcEs9NPa
	 f9FVXs+qLPZQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UJkzzH9ofMnS; Wed, 20 Jul 2022 05:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8C1A4027A;
	Wed, 20 Jul 2022 05:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8C1A4027A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 660911BF957
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:31:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B1AF60C14
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:31:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B1AF60C14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uHnaDmWFR3IU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 05:31:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5636E60AEA
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5636E60AEA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:31:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="267082042"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="267082042"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 22:31:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="665725465"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jul 2022 22:31:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 22:31:38 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 22:31:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Jul 2022 22:31:37 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 22:31:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SM+mMENOOizAbJyiZoLsLl2QJEsbYstcj3eidbewsOlg9DNQT/A6i5vCTHzzGBX5aYRHJQmXsXzZz0fckL8F+QVZjbZlzTMJLFu2/a5zC7aCQuayrxzextVFlIiwFwNVzwoROm7G/2qUPGtO15fa3iCLr2ZEX5IjuLm1D9u41JzWEzp2XkDuwXlojiyQtkfcL17p89kkRXpkOzD6crsiNFmtrct8dICur1sL0qcXP4M/A7op6BSiUfY/WeGMljyYcAwXMv8/fyJTrwZSQJpEvCqyaYvZfO2i2bDN5ZPkOEf2w9/CpsjtFBorQcdszjeZZmOwhgsVZ7QGcU84DNGGwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5REDL+na1OZtg87UmXRpImYADlLuFR1oRoCioVMWmBU=;
 b=XhfslnJ3EHCRuH3FpymEHLWtHBau9DP2l98nsqtSjurgBdnh96VHePfv4GcSkgtuuL/7CEgT5OJhMkVpSv7H4YwQ4mS90XHShxxLfb0XKm/RfQeDrNB4Bz+oGJvHFyUPixijyXkRz8sp1vHW/Dtm3rEgGySWApdnE6xIlWUIs3vctJlJC5MZSv+VP6/6prD5YwWYBjmKumwQO16M2vT2G3LyJTZ1U/jgdqTlvpRH6qXvwjVG45tQ6vZ6azC78O6PdpIFwtaAsrQ0sZYtJu629Z5XzfF19WDZ9QSaOKwIOQnjGjzsDbaAsYew8R2F9niGf9N1k2zHsabS9FAwq1Rg1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.19; Wed, 20 Jul
 2022 05:31:36 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7%3]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 05:31:36 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 1/2] ice: Implement control
 of FCS/CRC stripping
Thread-Index: AQHYlR+ZOxEZ9EB1zk6R6a5+JHiq9q2Gx61w
Date: Wed, 20 Jul 2022 05:31:36 +0000
Message-ID: <CO1PR11MB50288B441A4FCCB5ED88017BA08E9@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20220711121047.111489-1-anatolii.gerasymenko@intel.com>
 <20220711121047.111489-2-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220711121047.111489-2-anatolii.gerasymenko@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1d32e16-cb35-4b9f-556e-08da6a111d12
x-ms-traffictypediagnostic: SJ0PR11MB5087:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7sDY0qfpseeHO2ZQ55rfnGM+Xbf9vEsUEIQt4jyuF1yheQMJdXaJj37rY0ycDF5vaMaACXhV4+jC03c59uJCPBB3rELUSxJWexFB5jHU03VpsBh5brWoJKp33H2Q2Q74TBpkcP+cC+biT3RtY2PsbLo2jzbZB5CR59Ks0I/V8WlgfbQGO7T4NeFEiiAkUsMKyQa7yM2wIQFzERxsCkMEbX8xagLxdagmWipp40V1fOvxIKK3v2HDnL2i5DssamerHEDqHWCB9EYiruBGMx6BGpIkSzU134i0acC60JGRYt5DECGjqxqSsHtJOvAMjAf5wl9TipIlmrT5+kUPSI3x5bjqPUtLKEPujJxTnfSdd+SmHQaxY6tp2FcdGPGUtZjc9TNXr0H1eHnFNdavqyLcDoEmIRbSdrfn1FkFgfqKfY7bLEw690Riy8kXSENkuxeo8n4Y51kVHEPSq29zOWlROBQ6rPZEqAwmgtyM4n9arV7M7nhLeG9zZkNxV92E6POuPD9DDdFriMw10UnbFa6WhcL1OCOcUZ/vHp8fZns609xqvLrUpSbbJurdQyc+PqiTtELRo6D9X6Cqn3QSbTf3g5jGrwSGCvAx+24K1ABHMJGoDp0UH+cBBgMgAIZAZ8BoABpvAPEHsfOJa3+LF3B6lOXRQZXUrDzJM3Q8gXQZNSXxVRN14SN2+jUUM0hhNqzukB1DlwCQQLpQ0kiaKB04hgXIocdKkWFZV4tajUWp2PC58pC5Yj64O+xA9k5a/pALMbISo2cSf5kGL1fiJJLLDkdsiARaCTYxOBU50OGWGfhIkSlhQHksqb2n0uIAYdJ1lv5aDBYFlQDLrW3nRGj0Iw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(366004)(376002)(396003)(346002)(316002)(122000001)(7696005)(9686003)(83380400001)(110136005)(41300700001)(54906003)(2906002)(26005)(33656002)(71200400001)(6506007)(86362001)(38100700002)(66946007)(52536014)(186003)(38070700005)(82960400001)(66446008)(53546011)(4326008)(64756008)(66476007)(8676002)(55016003)(8936002)(478600001)(5660300002)(107886003)(66556008)(76116006)(168613001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PIlLbfy3iezQTO2pTucZViG4iEKfksJVeYFohsRw5qMl0prm4yWaKI3RC4CU?=
 =?us-ascii?Q?2P8g5G30k+P6me773yUBOQmir1+1ArryTPb28XAR4S/Qq7GDPxvzYDVubQ4j?=
 =?us-ascii?Q?svbaVDyug9Bqqcpfy7wHuI2Uh4hqnJD7DMce2lzhzQqfcC8OA60TB92wXmNj?=
 =?us-ascii?Q?PzoFg9fb3/RLud32bx+w2mFvY+qk3iTq2qKVLjOOSzn6qYgEIjwJWj+rs6qj?=
 =?us-ascii?Q?oUsOtjzNPnHXJqtD2C7eF1MOT6sE4xT6sRMcdTByIM+R9HNjzMC2zISWGDOD?=
 =?us-ascii?Q?Y2i434uoN6GlHwNKI+0iwj1oU5jXLIEdZpfc2JVfLfv/JxEQvohalXA+zGIm?=
 =?us-ascii?Q?yKxQ8zwTGHpCSBLsAzY2nzuDSy9im6DyWNeOfGatNl2uR0dZ1kp05CTtJJSx?=
 =?us-ascii?Q?TR1j70pAIFILGweSNLdJZ6mOiFlIsp5GmkPbJLKB6++dmo1APJgl6yU4O+u7?=
 =?us-ascii?Q?OiGoNJYDVrTM3ct4PLIlYklfId4Cb9QektGasBqiPzrsZMCe3tsrcUcZQ92T?=
 =?us-ascii?Q?V1qeQulnWDWyZq1Je1jjDl2DllK8vDbyDKcoYocxSUoJCRhoAjNuCm2KAX+Q?=
 =?us-ascii?Q?67370pDqcTdAuxy2DMaSFgHbjVWpDstaz3NtAERnqy9eduCKkHy2W0Xkhv0q?=
 =?us-ascii?Q?4hVrem5Cdi3g/D2+fpoENG+NicCEbr0D2Lih/dvW68CwRn2BTxyUYsT9toZe?=
 =?us-ascii?Q?S1xw1004UuUPEWNkOeL+BtXwUnR0cDiQxaZNmBClXsG8HxXjn5AxbfRcjy8K?=
 =?us-ascii?Q?MafZAqOXMd6xaWQvyhTXNRyU9hNo8CDWpj33Edl+vRyyqb7khJuFpL4RwHLc?=
 =?us-ascii?Q?DZr8Rg2G99VT1h62B8z374tspAOY9DTVF7Z6iRLxfjffpDhCI17Hy1a8x5hd?=
 =?us-ascii?Q?1LWW64THPGbfL8c6x0AGD9WR4z6bfbCbJOsY/+GfhRdUIP30138Ae+aEA0hC?=
 =?us-ascii?Q?rfaFWAsYiH+t56r6L7xz1WQZJ9fynM03TWFW6hjLNrh424BT+JdFuQp6Q2cl?=
 =?us-ascii?Q?UYZU7vzut8WuO4a/ok/mA8dhk3Wi98oCsKPZdIc+ezQiWH9NQa245rCMM5RC?=
 =?us-ascii?Q?GAqXmMN1tSGuBv1hPaqoIVpu2T+rphI00TvHNgbSi/+Or76oYElilht1KXP/?=
 =?us-ascii?Q?pp6RaImz3eGw0JVUsyDqYf23XTbwMHMfrxLuuxOZ0jRqTYpp439RKO4zYZFF?=
 =?us-ascii?Q?tmZt/8ouI1Gfbkt8xRzLxNUYXihTpBIpyrmmWeKg2l2MgluCkhpIP1xlSrFG?=
 =?us-ascii?Q?dqSsNBdMmslAIbGhESMSBEm0+xigrco8e/mBiZR7FCdPfsqFF2xuEvjmDKjk?=
 =?us-ascii?Q?2ZSoidwt64kwwHNcunNS3jsltYjxKGYjuWsQTeGaF+dNExGKrRWYtxBgStQc?=
 =?us-ascii?Q?N9E+18b9392e/75kMsYgIyTIiqgnbUY8OOG50zaUDwHmIv6muQTKK7FyDQvR?=
 =?us-ascii?Q?Xmov18C6HSerEb6q2DtWGWyflNEl+9prjTs5GGhFEEKYKuWW6IR8FdgX4NCT?=
 =?us-ascii?Q?ACVy30Rt9ZRQpzLzyA331B9qYfQhtPxCT3JdjcnCNFnm+nwWXtj15zzHtONJ?=
 =?us-ascii?Q?GbBVYdX2ibMWN2xi7VV2OmQp6kdCjzwNCInB9zsKfJfVpeXWfMCY8deIae6a?=
 =?us-ascii?Q?Wg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1d32e16-cb35-4b9f-556e-08da6a111d12
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 05:31:36.0607 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T3Ga/VnMKre7+1zDs7LiFeie1EA/G6iQbV9UnmFJyJng2OKfThGpcG3qn2uce0DdeVxjkW9jpeiy4ge7fCR5XWQXJ79k1Y2iwRY4MIN5hPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658295099; x=1689831099;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7WgM1gzYCDuB71bnDPEAcoZIP6fftkS7LqNSXxaBo+M=;
 b=mHEiNteN62VFC8cPV6M4urfGeSbbz0ETg7tlGCBU3DSxfLshhd+YQh9l
 CuaqTEUmgJ8a1m5jxkTEZK1KHP6ez62VBAARkvvMQoyUTJxJehzDEb1OI
 tk+dHAsIP5UULyhj8Pfc3jsR5MlZCtxlW+cUlfmTn1cbH1YNt125KuoSJ
 YSWC2at6/gzAztIy0TNIDfK01lX+DkQBKUeDq7l14AXKGFh3f989YzU6U
 J1sNdGjnAR0IAysM09WVVsmWy6ou5Wxa7vDyeTxIAT5ra0ORIy6xF/zo7
 YvHqRopgCwbatdAEhBfFoSf71NAfX3hbBvbXGpHOrU1DMHxc8g08yzLHC
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mHEiNteN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] ice: Implement
 control of FCS/CRC stripping
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
Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Gerasymenko,
 Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Anatolii Gerasymenko
> Sent: Monday, July 11, 2022 5:11 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 1/2] ice: Implement control of FCS/CRC stripping
>
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
>
> The driver can allow the user to configure whether the CRC aka the FCS (Frame Check Sequence) is DMA'd to the host as part of the receive buffer.  The driver usually wants this feature disabled so that the hardware checks the FCS and strips it in order to save PCI bandwidth.
>
> Control the reception of FCS to the host using the command:
> ethtool -K eth0 rx-fcs <on|off>
>
> The default shown in ethtool -k eth0 | grep fcs; should be "off", as the hardware will drop any frame with a bad checksum, and DMA of the checksum is useless overhead especially for small packets.
>
> Testing Hints:
> test the FCS/CRC arrives with received packets using tcpdump -nnpi eth0 -xxxx and it should show crc data as the last 4 bytes of the packet. Can also use wireshark to turn on CRC checking and check the data is correct.
>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Co-Developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: rebase on top of Maciej Fijalkowski's patches
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_base.c    |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 +--
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 21 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +
>  drivers/net/ethernet/intel/ice/ice_main.c    | 40 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.h    |  3 +-
>  7 files changed, 68 insertions(+), 6 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
