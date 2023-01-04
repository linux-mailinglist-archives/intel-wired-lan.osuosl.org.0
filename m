Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 600BA65D9EE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jan 2023 17:34:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDBFD6108D;
	Wed,  4 Jan 2023 16:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDBFD6108D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672850086;
	bh=iKT6sFuvu/b6BentXTUKa18Z8LxtMylCvAsjA7bR6sI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GryBx9GfjLVnku0JNzWsm/a2kpb+499se142TmBd4BrehhSEhVEffVZdllZBiM6xz
	 kqw7DPRp0AAZOsKK1elcEKik5hfbpkvecaY/o5OqzLBBsMUu0XmOaT94uyJoisvlSc
	 KpzKgP0L8cVpVTKdqn0RgSJciVzPx53LN9PtkTgs9Ho6BJD1ZZNfHIv1dKO2J0qnMD
	 qIAQOy8lJuLsbf9Z+vtZ93VMXDbnN4hVZqUJuunWISpy5EqwZT0U3O9YoBvgq93YOp
	 Gus0S53cF1jVBKyarKJveOsmTAZdCZZ+EDlKFE+jWsnyoPsSd/FNbZRiueXPHRcnxk
	 0WqFIMNaZOWAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4OQu-dVVqTNp; Wed,  4 Jan 2023 16:34:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6F9961083;
	Wed,  4 Jan 2023 16:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6F9961083
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A7711BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 07:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 426F981F00
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 07:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 426F981F00
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uQgNcV8Oq0Jp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jan 2023 07:01:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 230BE81EFC
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 230BE81EFC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 07:01:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="321924322"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; 
 d="scan'208,217";a="321924322"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 23:01:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="983816138"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; 
 d="scan'208,217";a="983816138"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jan 2023 23:01:44 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 23:01:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 23:01:43 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 23:01:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 23:01:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b22H9aNB40iI/9iEJRN9QjVCAsRfYvUK4OVnIbeBYw9Q5u4ofvHDgjzRBXZpF+8AyeOaI+0c311e+ZxFtbfC9Bwg40FezxAWsoqLBZ2srGPA3V+wVeqCgg/L5QzgmqCTG/RgeF06vu4XVmDYTFolhIKk/vWtmTcaJNi7H8HEg1lc9nGGbh6LZcaDAE6iy4JQEP07rNisR8b78FzkR81fdKg6hizhxIGSNyMu0d4Usx1YmCqJ+L1mzyJgX01I5Uk1B8b6LW7PctBEkYcAG3NvKimTLwqHSbAbm06GllLINn/MVFrOW+5nFUvipy6TY4aSs5HwQOPhIWX3SSFLo0ig9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fNCxeWigfq1+oM+cggri3/iZhq0CAhM0fh6Tb4G/mjw=;
 b=Wnz0txtXz5TONMLRAPdOEdWdkLK5HCuM5zYHb5ymNWXcGxdIrc3rNLrnzGuT7/WQDKTYhle5ZYB3/VoA4JIZhyM6uH+QscFXZ15b69HeXD+AQnJkAWD21KatfTFX7M7BtAoEHouwtLw2cSg8zAk/6vIQifKn8iclkekhlu7NGvFTlObmpPHlpiKTdED0Z5ruKSeeHDomCFK6Kf1bGLV0WyBhYz1dDyF64xDzlg1fHRYGINIXCUoSLZu07KXTSrr9cLKP/88BFwOq0h6c2FloqjB7D1cUFgxxYjIflbeQ4qK3cHjkA2x963j6lOVKHvh/TqtWo/mSedtYdzat3xUvCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB6026.namprd11.prod.outlook.com (2603:10b6:208:391::8)
 by MW3PR11MB4747.namprd11.prod.outlook.com (2603:10b6:303:2f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 07:01:37 +0000
Received: from BL1PR11MB6026.namprd11.prod.outlook.com
 ([fe80::b5e4:f18a:ba6b:55c1]) by BL1PR11MB6026.namprd11.prod.outlook.com
 ([fe80::b5e4:f18a:ba6b:55c1%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 07:01:36 +0000
From: "Stany V, Vasanth" <vasanth.stany.v@intel.com>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>, "jiri@resnulli.us"
 <jiri@resnulli.us>, "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "davem@davemloft.net"
 <davem@davemloft.net>
Thread-Topic: RE: [Intel-wired-lan] [PATCH net v4] ice: Add check for kzalloc
Thread-Index: AdkgCl1JQqaqHZSMTa6+aLPR3eBM8w==
Date: Wed, 4 Jan 2023 07:01:36 +0000
Message-ID: <BL1PR11MB60267F6307D869A613C78FC8BFF59@BL1PR11MB6026.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB6026:EE_|MW3PR11MB4747:EE_
x-ms-office365-filtering-correlation-id: 76a35e91-3a5d-4843-810c-08daee21859a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U6FwqpNGI5de06vlz1iINCHK6nciUA7S488YKS7oSjVJKWnQr+FXeWBTfu/368Fej8Nb1tqqBb7qkXOjcD52QSTL51Rg4z6aZ9zOvR5DZAmZPxtFbD9DkvokWxioiyeXyYiTSerQlD9wsniZICyIe0Z+LjtAmlzjFKAwJIQE/oWGvf62YpKRb+yCq6fdWW9jZc5aRrxWKjW/+JB4ktg8pST8C5e6ix9kfoyWJyi4zTWAnVcCX27YMdXBLmys91xXsfyzg5oCPr4dtdx5NQG1DUOCZpzF60lr/ZRI2FMlXyeSu2MVYnLIjaTjxPL5olnzWbz2L6qg77RWnV3w8LskOxEiQXaApOlci3QxyTLPxwb7nttpdW6Qj6EgOTasQpMyOGtdbAuQRfEywEMU8a9UZhf3cyQ0hQ2XElWnkAZNjD0R0pGPgC+CQFcmgKK6i8NwknlzoNslkUznn1LUAmBTixPVRGNv2gaY3Ozpsw5Y0EQoLU60o6yjf0oTi6TshG2yrm9zZm/V89K1DjPR5WtTJdEfFxdBHptjiV7K7ttI2C8TRkQoXWtMWK0pTBZQSguYdE8KJaPeylmk844pITY5yV+6WF317KwsgP3+Q72cHku9UQTmRP+IBw9xajWOO+gYJY03QIYywO6QeoqXTUlIJI6i/7cv8wmc9egG7WsZfRO350/D72dUC8hUHT32c1ogWAvrCo+0eMwDUCAhzEjdjQTWRRq7MFqiB/a5pg4sXzM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB6026.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(39860400002)(346002)(376002)(451199015)(5660300002)(7416002)(2906002)(41300700001)(478600001)(8676002)(52536014)(76116006)(8936002)(66556008)(66476007)(110136005)(66446008)(64756008)(66946007)(316002)(71200400001)(53546011)(186003)(55016003)(26005)(9686003)(7696005)(33656002)(6506007)(83380400001)(122000001)(38100700002)(921005)(82960400001)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?42eMFTLreuB4UkxfFxtSHA6gjH463S6rhOaosNQUOxEOr5xLjKgIGlILRoR/?=
 =?us-ascii?Q?WRK/wfHatOuBEam7yRYmHT9CstyBXqVyU8C12nYPCwbsyATWkVk/ix08J1Ra?=
 =?us-ascii?Q?wnilRdbbGEsXEUXj6UbTiDYtY7Go4S10mLA8VvPYb50rkear3wsgsS+nmoSP?=
 =?us-ascii?Q?OOG3y0H7uKvCTo3r/9nWUEST2kub+/xTxb4nHSrDeIZ7tIwTyfuYwYCCtTfY?=
 =?us-ascii?Q?agI8dfig1E2VoQjefll7E8gCdBFRf+0poxL4yWMblLq2WILLUuKfygVzTDTl?=
 =?us-ascii?Q?DwXC2VgJNThKhQ3MxlP3q3nk3WM6Kq4ACTyiDbluP9wN0oumGAAJEZQbc1CB?=
 =?us-ascii?Q?donnujYu7YmgLkNB/k58kyVqk423YRFL9PshlThPmr90gl8rE2wyj0i+WDgN?=
 =?us-ascii?Q?trnZmCCilzNWWlHzemgduV88Z9khCfPdQsEYvjopgGynK9bRC6MZTj77kabE?=
 =?us-ascii?Q?hqeJjdqX0HF6fkhGBcObOv7HlINkb5uf7ZQACkxuYXhGP9GrLPfnW948aXzv?=
 =?us-ascii?Q?qQLED9suwMrrvpmhaFrYg0nvrKHmwSKvIa2sm5vu0V9a1OA5l2uLNI9p7yH4?=
 =?us-ascii?Q?GpUfKwd/1caQfx0Vf7rwz7D43vD5c+/779T6SEolNTCD4OGHWIkAlChnvH2Y?=
 =?us-ascii?Q?1zsXEEtzil6ctEEf8aAKf/GDwgkLhGEmkNdie+Meaz+qXFfPWXiRzLr/G7xB?=
 =?us-ascii?Q?56FzXRU1HMUWl2vsyXfcYBIAl4EfFLIbFzbKCGe+2lcFyA7fu8oCsZvK9W9U?=
 =?us-ascii?Q?DhShXmGdFmwx8Q63Crat7HoHnFz1p/9EsCZZcMk+UDfeG6OV4iEAJL53Cb4F?=
 =?us-ascii?Q?jr9squ+8LphAmzhPxfx6eQsvRo6IhQKO23XNXPHYnV97BDmYvL42thLRIbHw?=
 =?us-ascii?Q?8VrgleHtdnea1aX9LKadI7I/K3ZZBU1ntwZhPCd/qBjMSCoycu3D8mSL//QG?=
 =?us-ascii?Q?ux9ffr7KLG3+uIwQ7eNVQ4CNLXGMJMC1Mhkzrbn7zsa7yVMppx2mWHpmHM51?=
 =?us-ascii?Q?gOC9QC6tOHP9VJ+LCy5Z8r8+4pAiix6LYb4JjV5+h00TVCYzg2u++GcN+dBi?=
 =?us-ascii?Q?ZE1iCk2O9kdxqDj+aYO5WSQjFtrmpV7gLPasjHJnoR2l0Zc1o/f71SIimUXX?=
 =?us-ascii?Q?fFPZ/RPtqmRSOhPqh99J3B4Mu5fUqnylcx1bgDD3mBxu05t2k8/OqTiR6Y6P?=
 =?us-ascii?Q?v220AamIBfeLr79+G0RaFpP3VadOjEW433/pm9rOeubs+WPMACYbZLNJe5Tq?=
 =?us-ascii?Q?eLWF73bYDrh6is3Dzo4AJ0QsZFJRNsViSc67zsu9O8Lvp7Y1e3PLUUAwZwB+?=
 =?us-ascii?Q?WwEasySkQtFgxrniJIxGFUSKDcu5nM2I/UXzX5Bbi9xG//ZDrJd1L/BevVBk?=
 =?us-ascii?Q?h3K/lumXxGJSrrAfTy0T4GmBxSRQvcOWy2i4Bzt3l2ZFce+ld0UxhT1b5q5F?=
 =?us-ascii?Q?SV4oY8L59eAgxygPD+pI5oLKAC0MbxFNvVvYPTtkjttgViG2tauuIVPZFFBi?=
 =?us-ascii?Q?OcW4qs2INJgi5sUkKA3vYZzI+9CKaVdZ6FO5tLkAYqbPsF9CASkgmQphwJXR?=
 =?us-ascii?Q?9sZcUdu3nXfD6eEOWVXRcSO9DnDIdrYMOQeGLg3Y4efw8HcqbA6kR468nthh?=
 =?us-ascii?Q?Sg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB6026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76a35e91-3a5d-4843-810c-08daee21859a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 07:01:36.8861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nhr0+/L56foi9/r3h1kdcdJbsszpG3VIGU8JIZvhUwOZA8jpDiE6LsaAzoLLoO5pG/uMGcKjGm8U28Q2+JdVxsCvHXFAX26eEKp5RrsddHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4747
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 04 Jan 2023 16:34:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672815705; x=1704351705;
 h=from:to:subject:date:message-id:mime-version;
 bh=PRgzKwkAXLR13m4I4QZx0GcPEM+srahjVSrz4CYMxhI=;
 b=HlHyEopqaJO/9NLXN12gk9gDVMSQfHeJ2K7i5f4tjAxp3ina+7dFzL/o
 3w9eSBnL7uZImXRYMJ1L7SxzDfEw6cNaHMdzX9wzHutwiiJZXiU+Fn7/7
 yZQ/lL9yZJ4TohhZcPBBIlT1YpuZzMF7EYBsYksSw5XYlywfE/5ykCiJE
 EsXPY4irGRJgyiExVR24nwmDKkZnaFtGWS3IPvTExakpFU7nu2do+Wjo+
 6caAH28kQcVfzN1gmXpan+6kHqqKVMAzKxJx/ZjgblK+05x5bpU8zL31W
 10UCKpIMeMDudK/grFozAqGlHwsTaV8TH4c7q6BKKOJJnkQv2a/4PUE0K
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HlHyEopq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] ice: Add check for kzalloc
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
Content-Type: multipart/mixed; boundary="===============3319687182780943725=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3319687182780943725==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL1PR11MB60267F6307D869A613C78FC8BFF59BL1PR11MB6026namp_"

--_000_BL1PR11MB60267F6307D869A613C78FC8BFF59BL1PR11MB6026namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org<mailto:intel-wi=
red-lan-bounces@osuosl.org>> On Behalf Of Jiasheng Jiang

> Sent: Thursday, December 8, 2022 5:36 AM

> To: jiri@resnulli.us<mailto:jiri@resnulli.us>

> Cc: leon@kernel.org<mailto:leon@kernel.org>; intel-wired-lan@lists.osuosl=
.org<mailto:intel-wired-lan@lists.osuosl.org>; Jiasheng Jiang <jiasheng@isc=
as.ac.cn<mailto:jiasheng@iscas.ac.cn>>; Brandeburg, Jesse <jesse.brandeburg=
@intel.com<mailto:jesse.brandeburg@intel.com>>; linux-kernel@vger.kernel.or=
g<mailto:linux-kernel@vger.kernel.org>; edumazet@google.com<mailto:edumazet=
@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com<mailto:anthony.=
l.nguyen@intel.com>>; > netdev@vger.kernel.org<mailto:netdev@vger.kernel.or=
g>; kuba@kernel.org<mailto:kuba@kernel.org>; pabeni@redhat.com<mailto:paben=
i@redhat.com>; davem@davemloft.net<mailto:davem@davemloft.net>

> Subject: [Intel-wired-lan] [PATCH net v4] ice: Add check for kzalloc

>

> Add the check for the return value of kzalloc in order to avoid NULL poin=
ter dereference.

> Moreover, use the goto-label to share the clean code.

>

> Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")

> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn<mailto:jiasheng@iscas=
.ac.cn>>

> ---

> Changelog:

>

> v3 -> v4:

>

> 1. Move the check right after the kzalloc.

>

> v2 -> v3:

>

> 1. Use "while (i--)" to simplify the code.

>

> v1 -> v2:

>

> 1. Use goto-label to share the clean code.

> ---

>  drivers/net/ethernet/intel/ice/ice_gnss.c | 23 ++++++++++++++---------

> 1 file changed, 14 insertions(+), 9 deletions(-)



Tested-by:  Vasanth Stany < vasanth.stany.v@intel.com<mailto:vasanth.stany.=
v@intel.com> >


--_000_BL1PR11MB60267F6307D869A613C78FC8BFF59BL1PR11MB6026namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">&gt; -----Original Message-----<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; From: Intel-wired-lan &lt;<a href=3D"mailto:=
intel-wired-lan-bounces@osuosl.org">intel-wired-lan-bounces@osuosl.org</a>&=
gt; On Behalf Of Jiasheng Jiang<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Sent: Thursday, December 8, 2022 5:36 AM<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&gt; To: <a href=3D"mailto:jiri@resnulli.us">jiri=
@resnulli.us</a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Cc: <a href=3D"mailto:leon@kernel.org">leon@=
kernel.org</a>;
<a href=3D"mailto:intel-wired-lan@lists.osuosl.org">intel-wired-lan@lists.o=
suosl.org</a>; Jiasheng Jiang &lt;<a href=3D"mailto:jiasheng@iscas.ac.cn">j=
iasheng@iscas.ac.cn</a>&gt;; Brandeburg, Jesse &lt;<a href=3D"mailto:jesse.=
brandeburg@intel.com">jesse.brandeburg@intel.com</a>&gt;;
<a href=3D"mailto:linux-kernel@vger.kernel.org">linux-kernel@vger.kernel.or=
g</a>; <a href=3D"mailto:edumazet@google.com">
edumazet@google.com</a>; Nguyen, Anthony L &lt;<a href=3D"mailto:anthony.l.=
nguyen@intel.com">anthony.l.nguyen@intel.com</a>&gt;; &gt;
<a href=3D"mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a>; <a hr=
ef=3D"mailto:kuba@kernel.org">
kuba@kernel.org</a>; <a href=3D"mailto:pabeni@redhat.com">pabeni@redhat.com=
</a>; <a href=3D"mailto:davem@davemloft.net">
davem@davemloft.net</a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Subject: [Intel-wired-lan] [PATCH net v4] ic=
e: Add check for kzalloc<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Add the check for the return value of kzallo=
c in order to avoid NULL pointer dereference.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Moreover, use the goto-label to share the cl=
ean code.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Fixes: d6b98c8d242a (&quot;ice: add write fu=
nctionality for GNSS TTY&quot;)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Signed-off-by: Jiasheng Jiang &lt;<a href=3D=
"mailto:jiasheng@iscas.ac.cn">jiasheng@iscas.ac.cn</a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; ---<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Changelog:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; v3 -&gt; v4:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 1. Move the check right after the kzalloc.<o=
:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; v2 -&gt; v3:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 1. Use &quot;while (i--)&quot; to simplify t=
he code.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; v1 -&gt; v2:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; 1. Use goto-label to share the clean code.<o=
:p></o:p></p>
<p class=3D"MsoPlainText">&gt; ---<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; drivers/net/ethernet/intel/ice/ice_gns=
s.c | 23 ++++++++++++++---------<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; 1 file changed, 14 insertions(+), 9 deletion=
s(-)<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Tested-by:&nbsp; Vasanth Stany &lt; <a href=3D"ma=
ilto:vasanth.stany.v@intel.com">
vasanth.stany.v@intel.com</a> &gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BL1PR11MB60267F6307D869A613C78FC8BFF59BL1PR11MB6026namp_--

--===============3319687182780943725==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3319687182780943725==--
