Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F69965FB76
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 07:33:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA0544048B;
	Fri,  6 Jan 2023 06:33:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA0544048B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672986835;
	bh=R9GwqQ45HfJ2og7be4Q7kN7VvB6XHYV7CAtAxXgJMbw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lk0A2ZbhB0GpXlUZv7aW6QW+ddl1sf+bZbXZxIMGfRxyAbiKl60b7jOm5L6+fizK5
	 u+ta5pm4mTq9A3qfRsnrhpGcT8FQC029NPOip7d9BfQLr7rdogf2vW4wbTJZoSrWGa
	 jnkjW50IXa9E6xigfp4x6edk9iEtnZkPL3ueuR6LPtvlfpOzocYU6PiSvKBftfhHe0
	 teXlFtS/MJ2iA3j2m+9KtSHo9OhNSMdQ004CGmuZ3kufIYuQ9ic83s+wRlYFymQ3Ie
	 ElPGyMAZjAHiSWOvW1jSi25VE5viO9BU3xXRh3ENxLLtqNqtiRopqx2o7l9+nLJygk
	 CvqYXnpXEvoYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O17P_l0gDaOK; Fri,  6 Jan 2023 06:33:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43E64403FF;
	Fri,  6 Jan 2023 06:33:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43E64403FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 625F51BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:33:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4644C4048B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:33:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4644C4048B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N0yDd0WSc-5H for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jan 2023 06:33:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69B48403FF
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69B48403FF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:33:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="349629601"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="349629601"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 22:33:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="688212659"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="688212659"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 05 Jan 2023 22:33:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:33:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:33:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 22:33:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 22:33:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cO8OVPWQJR0XCFdecZklF5UhYo406TWeffJn9hsZLJjYBzYXVC5nVVexQEt1QYsFrI75miQ2YzN3ULaWeJw791WPqHXR3GiWHuDjR1JGvIuM9/qTY1yACoNPEwoQfD2hOr43fhNcgu+T7/1Lq45CmKwEB/FToNei2m9mbRsRftJiYPJUPsjDk8tNjC1oqZiT+MXyq/gNxtg/Bo/2/KXxDFBxLS2CTs+KMOkJMjcz1nXxbxuJgerao3aiGrPWyq96VZOkmAWIKyRqRQqTmT1zN0dmhfjRbLM0JsHiMMUxI48Fd+eAjM0PP5zOVPB4R7/lkk+ux5xhRNEPQqd+pXuxcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m/N51D20CWUrBLZpSg8Wt+vrlraoF4uQ/sAVICECDh0=;
 b=It6h0FHOvI6Tgf13lLezM4k5zGkvlVQCQDuuHAHSlB5URd8Qby4nVegwebxPE3ptZafMzN1iVesAHdGZPcfEEse+FNKMWHkHLAmY8p1VObavfV7DLxRY+M9HybagtdFuq1Njm67AX4ynk6443szQ9UZdBRVf7njsFN8/EKH8nmw87HTSI8Ws3EKKgkNcsrAI0Q5Vq7vhn7Ww4vSmvAuJjOos9QyxbqsIgcK3OV0c9qNNgg9IiYOLO90zl2EsqcAa9Ixmz5RVoVLlRu/i1kX0kjRe21OucQaQe9Fo+q5vPa4WPmbV7yGAn1L8O0ZzueT9XOM7YSEwxs6YmFqLnU+7ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW5PR11MB5906.namprd11.prod.outlook.com (2603:10b6:303:1a0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 06:33:39 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 06:33:39 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 05/10] ice: stop hard
 coding the ICE_VSI_CTRL location
Thread-Index: AQHZFTMCJzlKlJjK3EWqHwegz4wywK6RBxzQ
Date: Fri, 6 Jan 2023 06:33:39 +0000
Message-ID: <BYAPR11MB33676C9389893DFB63F22928FCFB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
 <20221221113822.12858-6-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20221221113822.12858-6-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW5PR11MB5906:EE_
x-ms-office365-filtering-correlation-id: ef4fa448-c655-4b7c-9fd4-08daefaff2b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VbtzemM5ipZ/v5HMgh/x5vn1o1BiCFlCi3HnUDxI2GXmQaXDhiPorU4GS9Fu8svKe1P6QqKOhzZCHyFQQkumVgMrGJWJa90/qAnw41i/9h2q+HGnyvGZufzml7QFDeqWbmTNc08sU6rSmKXxpEMg7NLcQpZPAc1fnTs+viai/lsOGct6A3XB8r5CY/+0ue/mzBFdEBwGSgskwaGxuQjPPVq+O+74OW5VDPqgN9M+ngJ1RpD1LccObNbujy4YfEldudysuG/6r+SHPc3jkWkVyCi6YvP1gzaT6qq+f46U365+Srd3IcPlL9Q588gMAEc6Zk5g7u9EPV5FHk2zi9RvvKrEayPCItLsnfu7V+jUn858scPlMlmlFKjGR4HlQYmwwSPKO1+dcBgsQ7RUqGTERQ0PamKVXfapvQEss9dmye+zMWuLdbSKNZlCbMGVpRQkzGOO0z0bP0aGRetgHqxBKeSD1wpw3EfiEGpyPst0jMbM9omnjsEPC4QKF6B8LPzmU6aQVAl556lf4j6Q658vOGu+Voeg/HtTjE1Xb8Ano0VvOuSXrku9MCaa5e6b/+pAstDxIbZs9pwKHdTrvQVoHmS/OBLzf6kHqc6pYFAkHqqfNrsxCNpCjxaFQ54p6QflZEKRpYLckHYRVw4nVqBiB7CeGk976mqsCOz44Fodn4YnI2BqBWkE3zEye+Zzjpm1WLho+UVoQa0QWTHmXe7b4A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(39860400002)(376002)(396003)(136003)(451199015)(71200400001)(38070700005)(186003)(26005)(53546011)(55236004)(478600001)(9686003)(82960400001)(38100700002)(54906003)(110136005)(5660300002)(122000001)(66946007)(66556008)(4326008)(86362001)(8676002)(66476007)(66446008)(55016003)(2906002)(7696005)(6506007)(76116006)(33656002)(64756008)(8936002)(83380400001)(316002)(41300700001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GuClOtmBbgbBVR1BjRi34vU0SZeRiAzoF8VY7yWPDKd0Othd3VWEZFkhIxJJ?=
 =?us-ascii?Q?UoZ+KuaWg+KmhZMiyu29CJSaFntP8lXgwknBwizcLps1d6O2krR/UTzbDWiL?=
 =?us-ascii?Q?H5iqkzmsrWAPDMXi48oYv/qLR/Pebv8atPmJKPDa6z3d2ABHUalLDxYviG93?=
 =?us-ascii?Q?5uFlytRizqc+02BIecALywhYB2XaPdqQJkmGecU3ghdiaLyrVylA1ZH3Ta/S?=
 =?us-ascii?Q?P5egv/i1+Zit8Hn+dx3i4mi4Wz9+rQU7XNAkOwr7qTodZe16rowqL+K538dq?=
 =?us-ascii?Q?yMMk4XYq6e7CTHZQ6jvIfvduaPccE3CeevAcU0r8KivY72We0v9hNADcq1xO?=
 =?us-ascii?Q?wQPpeLayqQ7QypHHTwfP2Yaie+UGJmk8eFXmyieqKZF8ra8pKc/0MaMkOq/7?=
 =?us-ascii?Q?fJOxmU6lyVi03xQbjsMA7mshQfe5B9LgF80ZcsNON2sXeva4HzOUgYLVwCRp?=
 =?us-ascii?Q?pGfihgl3TESY9Q0vqgMA+81FDtHSVmHAYdJLc8c3f/B592PRz4IfUhXVnteR?=
 =?us-ascii?Q?1N1NI/HDK+HNRmhX9YJiy8GCDcNZE/bEnmgSaSo0Ln8LfzcqyGDdt22S3D0M?=
 =?us-ascii?Q?sNceX0PMeQZg6bmhLyenEuidKtY6UEOaLtkruVRxnb5Sa9+YH/aA77nho76x?=
 =?us-ascii?Q?ETibvX89+OCAa2zcV3V/s5c31Ap+DymeQonpIrRIstbms8VT7uUkAQAMazyX?=
 =?us-ascii?Q?c4p009fdikVWFGR6Tj7qJGI1FQ8awNwJTE15IhA87tty0fDrMkgd7fONEhz/?=
 =?us-ascii?Q?n9dZFgNqfKKpJDbnAGPan6Uv13xrXJnTSg9KbUhUJ4bsr5/iJq5npQNA2pEV?=
 =?us-ascii?Q?TBVYT+KZiwv4OoeQsh5MLiOEt2buOClYGAQ8rte7Yh2HsQsGOZ5LSjclFBL9?=
 =?us-ascii?Q?eDjWgDe6CMVYf/J72WsXNzd9B9xZA3Tw10FV+6LftJB8QgPe0OEJaKL4HGKL?=
 =?us-ascii?Q?P0f0DqRXzwjArb1c/ziNwyB83wN89EACIdP2AvWuMAPnZhBXu/l/3lwPqWTW?=
 =?us-ascii?Q?a1IFsE1DTqVOYFQZzC4u0VU/96QTSr7u1IPbgyCK+C0qOCL12w7+BaDRvcei?=
 =?us-ascii?Q?hrYXROr3GRhJUXzVBMDny3vHu0WBvw8fp4GIghO6nihLtpNKZ8XJMM5y8W9W?=
 =?us-ascii?Q?qOm6tSkGzn5M+eyHWfcSJsYuT3LX4mK56UDWqlEv/blAwjfL7p79+7twCZSL?=
 =?us-ascii?Q?AFSdipxyO3B1jB0sDK6gwYCl70BRmTt7VVUV6Q7Vnwf/6AAiHCc7HkbpREJ4?=
 =?us-ascii?Q?WTF0677mNlEXkZUvOkoLzxKPiZyjwM4wC3w+VxzNZPseIGRRw++ymntLItT3?=
 =?us-ascii?Q?M40wuJFaLnqjW0LSW0Il/MFjW4rlXTZo+khqta3NM6zOJXjYUUh7ic+5SbfQ?=
 =?us-ascii?Q?zN1hCvoQ+QnzDsnNOsU2mK8P692YYB7VTHKrbu39XUxfAduuq2kPkM0eNY7E?=
 =?us-ascii?Q?GFyUrlBTtar5p+K7vDYcruhyDiCiH+ZK5ohH7opLYBDiOj4+jzhXPxNq7SAM?=
 =?us-ascii?Q?vQH7yJaJiJthfz5XyOfskgUCJL+5wgshAf3yFObQhFToWwIb8CoviAVt3JZm?=
 =?us-ascii?Q?SrBcOLGLBTd+dq4WObWKohwRcapsCWjoSQvfInC1?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef4fa448-c655-4b7c-9fd4-08daefaff2b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2023 06:33:39.6444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w7MfvSJLZEe1E8n+BQmNgowfzOOnAQ0wksxvH9AgPtvQhROijLr8bEVx8dIj6/xcsUIRtjE0xhG+BsgOA8W2PA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5906
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672986824; x=1704522824;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PKZZbCswYxgrttHBCayfhsecWrjb3b4QR/cqLzTS7v4=;
 b=X6V6OHjvPg3ucXqRpETtzT+XpHyFrBVUJV9Eii1RYVyQiNYBRw2Q4P9S
 T7cas3Uj6oEPHVAESYUcIhuC/ntREt+LP/ClXB2Hy0P/TFPt9pJtk/lrg
 e1SCaPJQN2Cn3W5YcB/2gyJnp2CeCLthXU7IBqCl39n2MmPEDKg6QeT6w
 aGC/Jv8u8KelHEysRP37kYSN42emiPxTNQTxv1XD5+g7wIc5Xt4BmGFT2
 Hk2aN3li+PBs7tXxpnxl8YAWIDuSNTcDIpEEK1wK893BXpFxF5zOvNO/q
 pED+A+C3ppqmBKkwPeK9zHTkeLDgfHfqlwC1q7FnaJTNwGC1wbsbgy/+S
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X6V6OHjv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 05/10] ice: stop hard
 coding the ICE_VSI_CTRL location
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Mikailenko,
 Benjamin" <benjamin.mikailenko@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kaliszczuk,
 Leszek" <leszek.kaliszczuk@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Wednesday, December 21, 2022 5:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Mikailenko, Benjamin
> <benjamin.mikailenko@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kaliszczuk, Leszek
> <leszek.kaliszczuk@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 05/10] ice: stop hard coding
> the ICE_VSI_CTRL location
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> When allocating the ICE_VSI_CTRL, the allocated struct ice_vsi pointer is
> stored into the PF's pf->vsi array at a fixed location. This was historically done
> on the basis that it could provide an O(1) lookup for the special control VSI.
> 
> Since we store the ctrl_vsi_idx, we already have O(1) lookup regardless of
> where in the array we store this VSI.
> 
> Simplify the logic in ice_vsi_alloc by using the same method of storing the
> control VSI as other types of VSIs.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 34 +++++++++++-------------
>  1 file changed, 15 insertions(+), 19 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
