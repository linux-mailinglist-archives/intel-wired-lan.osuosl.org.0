Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DB7667CBB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 18:38:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50F0C4085D;
	Thu, 12 Jan 2023 17:38:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50F0C4085D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673545123;
	bh=VVUNL45oiD+FVFuO2F9Dr7x6hWFy5sCgBXRDqnDgV9s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=okiFm3PMGbnUtD4XtXF2zyJVb7UwBA1Ov1jLIt+H4QqwhJNNk0GOvYROQCG+bT8r7
	 j48q+mAWfqk6CNMN4n627ZoRAXu1CLxC2KU6IWgj7wSYVg1vgUikAfK39oBu+dPyRP
	 tqWkbqsghd5Y7/Pb+DYeIOH2JZ/alSlTKkA1xdeDYmLYkxWvd3Nd/gUEKIRFWwiNNY
	 1jcPCIja8TkM/DMYLlDnN67SnNTIx6aZnDs5wB279sQetP7V+VLHpKnbgQXs8Q6wy3
	 yJG123VKwPK/zuBen62pQofB4lav6pMJ9gq7t9EXnyPI9z9Wyejezx6f6GelTRtVKy
	 9X/wPED3YnCGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v9Ut20SJcmXw; Thu, 12 Jan 2023 17:38:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9DC440332;
	Thu, 12 Jan 2023 17:38:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9DC440332
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F7931BF35C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 17:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5898880DB9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 17:38:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5898880DB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4l6P8Oh1cINL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 17:38:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77CD280A54
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77CD280A54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 17:38:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="304152731"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="304152731"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:38:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="831781562"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="831781562"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 12 Jan 2023 09:38:33 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 09:38:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 09:38:32 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 09:38:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nprWJDk7q1CrGUgKGv4mpQwPEWMNghgNYSHfrgaz1GVQbcvF3UjOQIIr5wzcxY5uK4fQRKNy45x0r4z7TXOWBAWDmaqxrSvyi/E5HfNHkl7M+98GHsK7AB2ipCc6/MYqbcqiomeGf5T+5sLXNn31aTXXLOU4YjTH4Lx7IK/CEyclGWNLBNBuEvAZI1QGdaKJfaJSDLitB7HuscIx0FiQ7PexfzKd7oaFl24yY+oB1bStmG0rOMRt5dusmNhhVjKhhEFFcS97hXj9J3LnONID0v11WupOZFZD23vlcyGhWNbp5Az3D377XvJ1j3iGbDXmng7DttW/tI2NVxMyXrdP/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zx3j72M+k7CsCn/uojCLPw3buKMEm1p7bOf+IrRRjFM=;
 b=ZT2bnyRFjDTmfBml9kxPBBAieVjjQX29zL27lBDqEgiqXNr5SjznuTgKq+AgaG0nQTxJ+dHHHNgK6MQLFmkzjMBtk52ha4QuRsqc+/+493q5c6aEnv46W49IeXVz5kk3rRlj/1VLVjeUhhMVzykcRTr2yOFysO1+Nu3+DpgSNF36+KxkP5V+PmJumk9psjk/KumwdgTjVkAaYmAdyjd2VDGJDr1+8iwFYHVK8nUK9vqOcGwkeQaJ5Z+SBtVg9R4W2lv4r9Xb77UpkZtyduKIFgmZdz/syafdsV8xSQ795LhIZ8HzsVN81OMdy/3B/lSKOShVPyp19zJTNy+qRDflbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by CH0PR11MB8165.namprd11.prod.outlook.com (2603:10b6:610:18e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Thu, 12 Jan
 2023 17:38:29 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5d3d:f1f7:d54c:f117]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5d3d:f1f7:d54c:f117%5]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 17:38:29 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: memory leak in
 ice_vsi_alloc_stat_arrays
Thread-Index: AQHZJazDgrvNy/BaFU2tISzzydYFBa6bA8vAgAAJcyA=
Date: Thu, 12 Jan 2023 17:38:29 +0000
Message-ID: <MW5PR11MB5811DFAA1856850501745134DDFD9@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230111103630.17629-1-michal.swiatkowski@linux.intel.com>
 <MW5PR11MB58116DC5649D511678C5A5E5DDFD9@MW5PR11MB5811.namprd11.prod.outlook.com>
In-Reply-To: <MW5PR11MB58116DC5649D511678C5A5E5DDFD9@MW5PR11MB5811.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|CH0PR11MB8165:EE_
x-ms-office365-filtering-correlation-id: 252b59a6-52f7-4b9e-7c34-08daf4c3d186
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yl5sLNVmdmiHPHXy+KvdJdc57LkCD9fLrXlXw+QXJa+jT9eIiK1Vuoa2lSeJrHvSqFhtoeuZXcvzt+4iKCj7DzTUsY/Op21rQeYzLKV9ZLsl3XboYOPP803HksoMwV10MemSLZo6Zt2mcXBZcDLqW7ReXWQ3LicD3vOE5m3YSLtM9eanqnvb+IJXGLH68hjEjgKN8a/n12188B71lPEO9tAN3TKwUmtWjgcmbvWrbyZeL3cGBiI7gfxo3iBr1TR0e27jwmlm7Omdpqg+Z9iyLrt+V8NJjhVki20ntQRDqxQ+EeW8Yh2MRp4ZS5/brgkCGmN6qaMLNhe0vlYZ2dNYS62UgrI/iC1VqVIknWZTxjyYFN4hzJ8dQnwdZSh+B5YcBhZ1LFtsSSBaUHhewi+GuFsGHCH4JtozIv7lrVKT+b+YOIT/OMfbuYTVK16OMDYzEAsi7xcXnelEYIFnm5W6bsBzODrQ5jw+z65kXZw7a43xMREf4BfFyG9EaXS5lFi4eIK/zG98I1zSK1y7YqMwwil8ODC5bDTcv/iIiVmrS47sSbiMHEcxQAPyQ8BqGm+NAw0H3IZKPtP1GJoOT99LKumJCmTxUfvrd0m8mKvM2W6fuMTMizVumJa0kmzF4nSjz2+efkM4dRLyKOYX6gEZBuqfPlMh1zAoPqyossFz8JtrmOP0vbVu4LlqXV20ICIO6peaiHIXkUe7sofZPrOTcA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(396003)(346002)(39860400002)(136003)(451199015)(9686003)(478600001)(82960400001)(41300700001)(38070700005)(38100700002)(33656002)(71200400001)(2940100002)(86362001)(316002)(54906003)(110136005)(66556008)(66946007)(26005)(186003)(7696005)(55016003)(76116006)(66476007)(4326008)(5660300002)(53546011)(6506007)(2906002)(83380400001)(66446008)(64756008)(8676002)(8936002)(52536014)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qd9Gsfu6hU9MEYi/K9g6pz26Zbpa8MfshCwzhVQl+m3fK9opDCOQRxBBw3d4?=
 =?us-ascii?Q?+uNMwjyvKh1TOTBacTvZLLymlgMifJcqBRvyosk2sl3VJEiJ28ONn4oJVMCs?=
 =?us-ascii?Q?+BHm6wE63uM96S4wK3l10xD7uoW2VyUKjQvsQpYB+3wPAoqGoTCxIlma2GfS?=
 =?us-ascii?Q?+z0ry/K0GStuKgaHK9Ci7iriukx+gb4eE9TzqMUVXelN2xT4dkjMY3L+0yZn?=
 =?us-ascii?Q?EATqzfK6nsqyRApLHBFgPz2MqR2n3IJqoLMLcI86wpUAsSSwOWFdjhvKCJvb?=
 =?us-ascii?Q?KMTaYKuU5uvtzD0nKIPzTm8R71MkxdBxZcPwnhPy1BLyj0NXWbtA9DnqEVNw?=
 =?us-ascii?Q?gSgVjD+SLkLcktNQYUDCj3sz/qQlSqkguCA6LmVi2qRLdLYtiHBfRAKhQii3?=
 =?us-ascii?Q?0n4gpYvJJIz+LfxDHSYOv0kRCSuyUIW0dpLuIxwEKH3Xmg0ZSpjvwKP6muXj?=
 =?us-ascii?Q?EBWwpVeXj2OYoxa0mDJxlPAIDVC/XMmTh3yEjrD8amRJv148RpyNxhelS6Ht?=
 =?us-ascii?Q?C7rBMzB/8gpPZD02+AB8SnhF19QkxOJWFJGqnUAUnuY3yjfMtWUNYnAi3RG6?=
 =?us-ascii?Q?pHMozo+FZL732s08Oa8D6w0RWJJ8iViXyeRC6R0oOGaXpmndq7wWGWTYDwEI?=
 =?us-ascii?Q?KHeCHkp4AP1YvJiMCcSWvBAZMVXD/qH8/+0eQh2nBzVdZAb0/5izAzbZzioI?=
 =?us-ascii?Q?8YyOKwCJxJQCF3MNbKYf3t+Kkp0M9RxUOTTQnQS8SAUaMhWJOXhPbBc9sQWp?=
 =?us-ascii?Q?EnQCiB9CBgx1oTVQK4mnajNT48s+ajzzzh3E9aTCNll9JhSGP5JxDwsgQRBE?=
 =?us-ascii?Q?UccXEtIU+e+VtreIqMa/Y8NLKn1jt3RNq+BV3kH74hDgbSVMDwscBonNXayL?=
 =?us-ascii?Q?Y7Iuo7lyHiaNf1/oIkVfHT9NUoE6sPu7E90YCHqRwC/DmX+F7g1LyQ8aqfRj?=
 =?us-ascii?Q?FKuiB3NPiFjVEsxN4r7+Hkjs8FZpaD51xjKwSC1T1/FWBGUtqp+UsfaJft4G?=
 =?us-ascii?Q?WW62Gw+/hN37k7Dm97uhB6kxj2OQqtfRwl1YPfrKMBH5s1TSjI6zbn6jXQc8?=
 =?us-ascii?Q?bOS66Y2FoCxsybv2kAxNarrlVw6plJVUE7YP27uA28NImclWLdbomeRWXkRM?=
 =?us-ascii?Q?erBf4rHGeQtij1tCyh1LjnSLrn1Y+IEOexjNbNA0klDghkfEw1XedeWEE4D/?=
 =?us-ascii?Q?ovpckZkXVOlGnlJARzSmabh2phTXG5HqMC9woaS6OgzprKPsNOJjG0t4jAGp?=
 =?us-ascii?Q?+1QxgDZM0olyWIoL8bJwgxjqXpOZcb2X3T8El+KFZkWj8nOMaRrAO6VuvWXg?=
 =?us-ascii?Q?pBu4rP6gGGXwck+Xy7xZg0jbFx+H3IfzdSAT06YNvKlII4mNKROfT0EElBTR?=
 =?us-ascii?Q?JFQfRBUKmcqHZh7cvZw4PfJfZBgky4t90ULvDkAfUopjAe948CMixP7VGpQt?=
 =?us-ascii?Q?H5bzaPfFpt2KKC0q3DoAKshTUeRa8oskR11js8WYKSsxcWpsuHVOQC5oiOs2?=
 =?us-ascii?Q?9PXh/DcW17+/sl4Juf6P5xDaalqcHOt2WxbozIW/HEfWwhvjMiB8uchsj8M5?=
 =?us-ascii?Q?W1vvmYyN9KhRcBKUhiXwg72WeiHETiMO+l4ry4lwMnPAw+pm58E9Cv+C6oDm?=
 =?us-ascii?Q?0A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 252b59a6-52f7-4b9e-7c34-08daf4c3d186
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 17:38:29.6929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8nlSZ62UMMlD8sP4kmJ0qGRi4WaLDdk88Q/fJuSMHr7bLC4SFWWVkys51gKz6m9Tx0C2c/5eodk38pcewDWJFv3OnQAKM6TDY+c3AT40xOA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8165
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673545114; x=1705081114;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xIJKFyIqmmFYyG5J8OhN/EUb6LfmIfvieFWM/12lHbo=;
 b=VYqMU0ZMoqPUv+YEUmTkPEb/xu4Ljk7pSbClIA/ZrHkwRflCOjAgzbPu
 OyXzJxXWctX2FXEWL26MO051rA9but/xjtVZ64elpe8iG7o5zRL18n1js
 /KE70MkIK3U078Xy61jE0I7Gdf+RMNVRJT/7M0xQl44meGkelr/YOyMUz
 KUjvGhmYK96TaIlR4I33443lXVOHOLQJEbGCU4TxuYwJHHv+ygV5OQhAp
 hik6ItXhmdjuZU2lkl529rczCfzp/cCRtElzj6EPpbC5W8rB29fHNj6MK
 mzeGA4SQDsBAGbczkl5rM8Uw3yjedDu7lhACmu9/O5xrimW+Zwjd1L5dg
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VYqMU0ZM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: memory leak in
 ice_vsi_alloc_stat_arrays
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "error27@gmail.com" <error27@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Ertman, David M
> Sent: Thursday, January 12, 2023 9:03 AM
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; error27@gmail.com
> Subject: RE: [Intel-wired-lan] [PATCH] ice: memory leak in
> ice_vsi_alloc_stat_arrays
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Michal Swiatkowski
> > Sent: Wednesday, January 11, 2023 2:37 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> error27@gmail.com
> > Subject: [Intel-wired-lan] [PATCH] ice: memory leak in
> > ice_vsi_alloc_stat_arrays
> >
> > Fix memory leak by checking if stats were already allocated before
> > allocating new one.
> >
> > Previously it was completely broken, because new allocated value was
> > checked instead of previous one.
> >
> > Reported-by: kernel test robot <lkp@intel.com>
> > Reported-by: Dan Carpenter <error27@gmail.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> > Should be squashed with commit eace2cbe7f5f
> > ("ice: split ice_vsi_setup into smaller functions")
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lib.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> 
> Thanks for catching this!
> 
> Reviewed-by: Dave Ertman <david.m.ertman@intel.com>

Please clean-up variable ret, since it is not needed any more. Also can probably clean up braces that won't be
needed any more also.

DaveE
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
