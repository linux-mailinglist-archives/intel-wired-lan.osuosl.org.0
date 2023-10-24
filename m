Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E00207D4B9F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 11:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DAB1813AE;
	Tue, 24 Oct 2023 09:11:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DAB1813AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698138703;
	bh=ant+HCGNtMsCuaYIupleIJAEKqaMPJNpvqtKqpgtzXQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bhIwaWrY6/s+IILBGxxvadtP5RImjndGcIuKN6FZkDzc+WfxmQwd4OLSmCoCvQcCm
	 zyd/poNAJZjQ45OJ0qcLewaK0nXmBjq/SzUVgeoG/OO4cmrfqDWqAbZNBQ8mlmYOTT
	 uQEJKEoMFGsTVaW1XjvHtT9is4SIcPVFNlyyTd64/iBny4/pkWXzFLlR9ZvrlJ2SfD
	 nViuDwFkyOlej4tWG9ALmJJf9yDYMOFRUrPCN/4iXVL1n7ETJL3jptb4LYP1nxtwoO
	 4rneqmfuQBN8qkNG0nd1OV1ZBlkbj52uTooVqUDGwdRWSJrO7EKZ9F6qmD381VkLk5
	 H/9bw+JkDjxvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VCGO9hoWBXCy; Tue, 24 Oct 2023 09:11:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 246EB84755;
	Tue, 24 Oct 2023 09:11:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 246EB84755
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 01E971BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 09:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CC5A76FB31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 09:11:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC5A76FB31
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BCt-ubqUAfkv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 09:11:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 188596FB26
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 09:11:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 188596FB26
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="385912090"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="385912090"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 02:11:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931978690"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="931978690"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 02:11:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 02:11:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 02:11:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 02:11:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 02:11:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O5EkNowjSKeiWGYGcCsbRAaOXQmAFBsBz/2tEkLhWzvlhv5F9wBgYDYutOtwxCxl9quyv08t+CHdONuN61rHVoPYkg3+7uGqWYDTmMtQr3vCIBQI/b5jWbQlJe5qgHIFgrIIaYmfCgmbdUUgbduJzLxkpIZJzz7uGzRXKruwWD8SZZaDRUiR0TwxWVXAn+MlxgVPnIrTW9uckfU6At+IkGRGsNJ0YoXlEbnY4/rHgorRrMuF+8YgYAbCcUoizhu8h9s8tCOzsf7mYsexIw2ZG47y68SuH8cQ0WWTQ4iTGgzs/A/2S3IRmYrp9iEtBS0H1yPFj27WkjlDxWuiM3O0ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kpaHcmxQRe/RFXge5MpiL4pCxkQOzaIHBMQAhJCSG48=;
 b=An3dUB75cOuGCPJCAUnPyGAreeByqUZfcJv3f5MlX0+BX6mHZVRwZyRRUMiRgOcKg4OBS9yFZBoCshlqQubdHH3g4CyN+C6ilZeZmHE7aw99mT+IVFd8AmTdjIfRkzbQ37Eq1Vo+iVengoicuunIV2kUmvCQSWHtZ8ExRwYfkmqu1OSkFNByad7qy9hO9ecTH968lIRVwWja2ilvxuNWIEM4FWc5iUwHpWmGQxRKrTGXk02pQlCg4KoZwoPO+fHSSkWEQ6zkz9DwDosU9uS8X9Y2zUztEAsr/MAbkTdH4XgEp+PanuOtbv8BStThpLmsOXLgl+iOH3AbAMKZCbCERg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SJ0PR11MB4910.namprd11.prod.outlook.com (2603:10b6:a03:2d7::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 24 Oct
 2023 09:11:07 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::20a0:97f2:c358:6621]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::20a0:97f2:c358:6621%6]) with mapi id 15.20.6907.030; Tue, 24 Oct 2023
 09:11:06 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, mschmidt
 <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: use
 unregister_netdev
Thread-Index: AQHaAFFCJiTRXOi+vEqlmPD5YChbnLBNoRIAgAsSPxA=
Date: Tue, 24 Oct 2023 09:11:06 +0000
Message-ID: <BL0PR11MB352168FB3A3BEE20A29A4E8B8FDFA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231016164849.45691-1-mschmidt@redhat.com>
 <20231016164849.45691-3-mschmidt@redhat.com>
 <MW4PR11MB57768410040176F1E119398AFDD6A@MW4PR11MB5776.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB57768410040176F1E119398AFDD6A@MW4PR11MB5776.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SJ0PR11MB4910:EE_
x-ms-office365-filtering-correlation-id: bf6c7973-7813-4ce0-83d5-08dbd47127ea
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bstGwamnxXHvX2p66pnZ9kuE7s27/Uq+0J9KhObO7BooV2yQnHwEZxps9fHLP/CABzkzz5Dp3Jp7m65IcLstt4QPJp26WJv/xyUnzcSQl61JqagpqAijV/dEalJXF51X13H1SVsb3US8c1C+ODqkSCOxlKe2rgE1poqJQ87yt3AbanWix+KjQgBOgKltLldAKM2xbjpG912oFSsTObx26G+J/FkNqGgSglFrG1YCCtwnPF7JnfJJ4dSNKeFgVGav7fC82ttV5N3GgrM2DdCtpM7VOzkgISSyvYFe6ozKf70HPcMu1VV+FbxLpKDbszuuAo3yrpB/Vb0D86PEDmkdaKdP5UBO2cUZoPI2p2r2KAgiasQSJDeR19E5ghzDLw+yOZwdQT91k6TdiolkWV7+6pXkecmzdDuy4twfAIEZtF9d/c4z7n9eXbatx3/JfCqjX/Bh/3xQTL7KpIHfzyZ2qIYVqVfW3tduF9lOXsntuh1nN8Xymh02mdxjrJVwYPyO/ax1pL52Ux23ldWl7SGc0VzKzvOw3y/hc8b3I5Hz4WPDf/lcKZkKfN40uIPp+vKf4RBlo1/uzYcTejviVA3oLSyJCpajaM39jyHZUGeEOwCdKY52fEt5jg5C7iGhSiAM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(346002)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(107886003)(71200400001)(83380400001)(26005)(82960400001)(6506007)(7696005)(9686003)(53546011)(38100700002)(122000001)(33656002)(86362001)(2906002)(64756008)(52536014)(478600001)(8676002)(8936002)(4326008)(41300700001)(66446008)(110136005)(66556008)(66476007)(316002)(54906003)(66946007)(5660300002)(76116006)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XeZDZpRHUCPuSByh63MOwRjkycLeASYQ2djIQ0hQymXWPXTMdJOoeYDKEqpC?=
 =?us-ascii?Q?W0HVH9oYdspiz/+j7ItXGPlow20Qff2m4pqDeHaJ5hnV21q4TQurkS0d6NnX?=
 =?us-ascii?Q?71W12hfO/kiVIJUuQS5srfUqhrN5bNs91qHkWYKWGXYtwT1mMgXPimNjzAU8?=
 =?us-ascii?Q?vKJ1454deTDC2l8etdnB9Zchv5bwKz+UOhL2qzkaz0sT401ZS1g3Pz62dZKi?=
 =?us-ascii?Q?Hu3jdKTLgl6OjAHXVq0XEQzKvNqaKZQGE+dujZoBz/Huv8QWX2X3FZgo+yuk?=
 =?us-ascii?Q?ctYZVMU4Mak8VgHbCVLNTakW3QVRYIe5V3B5QQuDqg5gcQ1vhVcAzxYlxwsE?=
 =?us-ascii?Q?vl2IFgZCZ8ed6W9iY1kbNCYHbuhcsxg86mO4Y4pNKTEgIdO/dEYqaFfLIPuo?=
 =?us-ascii?Q?XcohQypAUh777eU0to2dqLBF0Z27on3M4LCV16oRPftnmzJuN009YvjHZ1gC?=
 =?us-ascii?Q?eWAWzs55tfRaGfcb/7RxPSm+9F+l7WE2CywDHJ4VXQfDIQEIJVMzs111/72B?=
 =?us-ascii?Q?nwQWef2voUGkoiJejVKTFaGaDnzkeXvpqV59iyyWIv83Hc+TRjRaVrc7qyTo?=
 =?us-ascii?Q?hWbg/1UpptuboOZC3XFjwKtTTTsUa8RaWAMFFgN1CgTdcn51Zandks1y7RuX?=
 =?us-ascii?Q?L+zlhUrLlG2KoNMquBGLBKFoQNvWKy+fOR2HcBrKDsEjn+WKtd0XK4Wwdd9B?=
 =?us-ascii?Q?EK0P8g7xXWwwcCjyjyZREpPuWxcSfxwMALmyFykf9Y2sVTl6Z7JA1DDSqA2z?=
 =?us-ascii?Q?9EAAoxuX/Ai+cjReJcdjgPxWXbw0knGwYpGNY/C3Z/8um7QBjzaXysoTKYoE?=
 =?us-ascii?Q?r5F0Un55zxRDNWYfaMATpZ+UpxHOnC8tQxpYkGN00RAxQVSrg72w7ey8r89M?=
 =?us-ascii?Q?6WfirN+5qvn6XyHTxyu9BsFnt0FCFsTjuXvBH1kWjhFzewE2AOq5J49rCUiK?=
 =?us-ascii?Q?7GkgNdCuTFsazRvE286T15ADQFrugikPzB5+bI2VLerR2dFwRFnZkxIotwE6?=
 =?us-ascii?Q?sB2D2psBrngWHz/M0fkrkSS8cL4A7Uh7UPnFGytEQwy247VD/pfxYDE6a9aL?=
 =?us-ascii?Q?3cUwYMKbS748cYM75iuu82/z55/bGVJTKjF2GnkppmuX+6PW4vYweWMlkN2z?=
 =?us-ascii?Q?HvEf0klUzLxRauPAnTJmPJAK77aVNdm/yhI9+6M7ahV0xBsfHjhXnD1iLjze?=
 =?us-ascii?Q?p9Pq41LfdlVLvj6ZLhAU5y7tX6spjOK+KdFEIXwn9yM5QA3+t5Ndn/CnImtl?=
 =?us-ascii?Q?cxdZT8p7hGWt7DcdtQuJipqysZJr/i1dsS21s8Mwm8wDdY33R3wlwGtVXKiT?=
 =?us-ascii?Q?tveHiDLeHUeUq5VrKKHQIQfusdkvbduciQj0PlElWP5OYR5Le6Job5deFSh+?=
 =?us-ascii?Q?ObRIVI/KKXek49Cl9OvYig8g9oznDtUyjacGMd6knhNKXgS8gwBEr0rufXrl?=
 =?us-ascii?Q?QaEaHv4G+DjCKovVdIm/CQOs3C7VgedVxA5JA67DWE55DX6kUpATf/M1VXbd?=
 =?us-ascii?Q?P6vSUi65zCpUdD2pAux3s2NjpAhckP4JceIqmb6MyTpkCidaV0bGgdHXHY7N?=
 =?us-ascii?Q?oPEtKul7C8RRt8xEfRjoVIg/jgHY4NS6+Bwx20myBXRkaQqnxkYSaEf1e1Cg?=
 =?us-ascii?Q?kQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf6c7973-7813-4ce0-83d5-08dbd47127ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2023 09:11:06.8902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2va+1ZXw5Gi/JNNhKX5X4EtZTmaihg9E7kw6iID5eQ+JUzJRYlXCOlhYjlMV5lR7L71J5HsPGvI4cdgKWk+1rD1ufcrgcDysGGMkVKAcfV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4910
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698138695; x=1729674695;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8H2wg9riS/on5HKj6uUXxeex6UPoQ+aZBqoDMGU6bs8=;
 b=XdmiPIwgj9/L2hR40OgLHTDDxUJxz2wayeONTQHepoqHgM2zy0lXSFiG
 juyFrJZCJj/gxIOvzGq7WpGPvO4iM+SvGLATEMsVbWSuX4G+PMNbCBPnv
 yvsoasQtwfUDgd340MqzTSa7+hvxuIsNo3hVDKL/5yzmfGyWj+ATpvsi/
 /EhQxCQSOCvDaKhEPKuvWc+SZeHuImVXzfnLjk0x7WQLG0vX1MMH/0XGa
 8sbtGz85tSidG1rOB6xtp/osRtc0dkJkDatQiwtenCz1VS3hAZIX6BW98
 8ueYWgTHVKmdXXSRmJbmg+VwmjgMANzOj60TYzb2DYWGP67oi0KhEaKUA
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XdmiPIwg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: use
 unregister_netdev
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Drewek, Wojciech
> Sent: Tuesday, October 17, 2023 10:07 AM
> To: mschmidt <mschmidt@redhat.com>; intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: use unregister_netdev
> 
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Michal Schmidt
> > Sent: Monday, October 16, 2023 6:49 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: use
> > unregister_netdev
> >
> > Use unregister_netdev, which takes rtnl_lock for us. We don't have to
> > check the reg_state under rtnl_lock. There's nothing to race with. We
> > have just cancelled the finish_config work.
> >
> > Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index d2f4648a6156..6036a4582196 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
