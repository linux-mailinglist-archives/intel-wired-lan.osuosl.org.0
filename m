Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0902956656C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 10:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17C6A41759;
	Tue,  5 Jul 2022 08:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17C6A41759
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657011080;
	bh=n+BmAs5eXZsN1sMIAKNfBOUWivPt6H23BVlVU4pTkqk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hyIeQeikfh7f1XxjSU5bIrdzaOJNUczN1Vi5GcVXeqcprEZQgFK3ifv3/DrBfMP7h
	 a42cAyNuwuwQBhyppO84yrbCtSZDfUDcVYiyVw+zbzzMKA0K3Um4zpnJos9CK4zwJJ
	 uwUtQZVZpGLWX/docqd1jZoh+/AvXGlB5YpRp6MeYlkVwqMPcE+LVTrGEZxuEYUGdI
	 YAJq1BJ56z01nZSj1fciY7t763f/W026u5wSTVGF/i1qc0+gAQHMlMsrKupeyC7Xcy
	 1fN9xauFbU0la9bOiedaEe9QAJDXYWQgseSkdgNU0qyc6gb/8rsqt+q+1algXJqMeB
	 v795/NSxiAEGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qjw3olQoTILl; Tue,  5 Jul 2022 08:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B52C940386;
	Tue,  5 Jul 2022 08:51:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B52C940386
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E30E51BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 08:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B57D641719
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 08:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B57D641719
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vD2MYGDIV_qi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jul 2022 08:51:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BC2E40386
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BC2E40386
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 08:51:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="369619106"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="369619106"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 01:51:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="719650833"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 05 Jul 2022 01:51:10 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 01:51:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 01:51:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 01:51:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nWWo07pmN5IN8O0liA7QENZRjkrvd7p4gjKXxbZujudUVX03Y75nOznUDIbriBDt6TWJksG0+z8TDSRjp4x8O6kue8X+VkhmQmExskjCf81c8gXKSIgc/wnMaTyB2YJi6ZNkChEZLA55UIjxukN3/jwWEQvBcoalLF9Ixc2C1CPEeFubhFZAuqAp/BMqWobrvEctcEAe/Mle0RF/+vAAIQbCVlEyQezbo4eS9DZrB1cmsW1OPF1QJH8LlwRLFnJTzIJbRz6lVTG3/aJPlMycRhMG9DfWijJCYFFS4LmOVEI5SXID914P7Vq+44TIwVjdEztJe5nGkWdjLNDRbtCQCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lZVWaSoZRJV143tEXyS/CEFHEMQzDTWoVwXBOWaCowI=;
 b=Nm544gJ9DI7a57jugtqIQsHA8lU8P+jNHZd/oqo3mZQntZc8pj1cRT9xFZgLa/idHQiO954FOYyR+feG1gBD0Uu1CQzStIJRtWZt5opDOliyjIMiCafIZL85cCfdtPcpTYTGg3OdfG8gNH0KWp7qT6Q026NmJijXxcMs7QwtgEbW/MeUK/k+DfPk1TSH3av/4myQFbgvAsu4K6f7SAZiYfihyfZeRTjFZ3Xfu1m+g5tdhBUla8J+XBIK/uljBlPm8amu7oLqrL9Yyfo3ZmjDpssUAsb77lZNnGuN8iw6T4v6JH8xL1plORsGerIBAU3/1QYyLiyq54WW+HDkJ9ZyoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BL0PR11MB3234.namprd11.prod.outlook.com (2603:10b6:208:65::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.14; Tue, 5 Jul 2022 08:51:07 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087%4]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 08:51:07 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Zhang, Xuejun" <xuejun.zhang@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] iavf: Fix missing state logs
Thread-Index: AQHYgOF6qFg12TtSZ0KeT0BYWVZoqa1vltqA
Date: Tue, 5 Jul 2022 08:51:07 +0000
Message-ID: <DM8PR11MB5621863E9741B0FEA0997D3FAB819@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220615175720.4058112-1-xuejun.zhang@intel.com>
In-Reply-To: <20220615175720.4058112-1-xuejun.zhang@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db16b4be-e533-4c09-f23c-08da5e63803b
x-ms-traffictypediagnostic: BL0PR11MB3234:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RYUAHh0Q5qZ2s3cpmYWFMc6oKq+Dv93NNdMES6lwnSHW0sg5BPWZIWDpyzANv1qFplSOZ1MUzyMjsp6RpuRZDd/mLGtpH7sqD9+BXWsMWeoE2rsim/7EMgDlWu87/G43lTu7sGcipbqsqbaInnZ/2h8ihLTshx4yX1LLfsaTZJaP+vdR4x82UL+DDDTXP8Ke8PY0mqBTrN8brASPfdNsq2PMCUlLXtbj+4ON2hB0s2kRSmmPEfYCYtVGq1ob+5YZrDWmVri7C1tij7FieAGHbhUd38jLq+cijugxITeZ8afwKPCRQc300AJT84NcT/Ne9y4elwzU4GyKhqC+F6QVLMU/u6hHDjg6v9OZi2qKpbXP1bDJ05RWSXI2w6swz9JzHpxVuNOAT9BEw57kJdwFKjAOkWf2+KSsNiFBcXf7knBqYrgHkLikGFjJVnY4zxCvJ4sDemYtfrZM7a2fIxuVlVjkjymJRUJpfPw5OnqMvaQZmiSxuLfnfRRTM7nSHJhEMfOcNuo0fLV5PjIw+sHTucG5UhLgC9UW+h7YOdDdjqcgUT8HNaJJXv0GslXKHZepafka9ch2hVJR6bO6D3t3GfyaFWDFHFRxVP5eF/T0zFlD4E5XfTQemNdRYYZOBeEwKXlvt9EGPuG/cO2vPZsb7syKPECwb3fLIs4mKpe9PsWiE0ccvcPuRCnyLO5JkQtDnQmH46fJkvbZro6nmutBpMF0ufbf32ZWdBJQhsLinjx4GohUd4vWtCNkj3fcrSY9umofe17a6BxMNXnWiYWQ3ZLA4/dhcYD3ISm5ajTy4H+zfxan9N2tok2rVs8ZsBVS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(376002)(39860400002)(396003)(346002)(5660300002)(478600001)(52536014)(122000001)(76116006)(8936002)(110136005)(82960400001)(38070700005)(33656002)(316002)(66946007)(66446008)(86362001)(66556008)(8676002)(71200400001)(4326008)(66476007)(83380400001)(107886003)(9686003)(53546011)(26005)(186003)(7696005)(41300700001)(38100700002)(6506007)(2906002)(55016003)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UdW7fX+txlvOafS5FvAEKL1o3f2lLkpMHtNW89CQEHLp5CNlR1KRc3Dj44pq?=
 =?us-ascii?Q?e81Bm+51PJ+BnVdc9wY1+oUQdKPIwPSMvzRszUPPknOvRWZTybsztatb5pvO?=
 =?us-ascii?Q?+DafM7RfAHqAVPlKZ7Atlj7w/KYsEtqxMZB1OR59izJYGFqYFxwQLWMpoQGJ?=
 =?us-ascii?Q?0t+Im4CKJA0D5+2IBQvnowlQUtjQ+/tu0RYg9rRuRWrBneQ+uacjWzQAIkKe?=
 =?us-ascii?Q?2fKzEMt6e3J1oTNZOTsw/0OriowvwPcGWOaFuhMgy89qU4V5Uk83lfLTovsT?=
 =?us-ascii?Q?qdata+epRNd/xs0onpGAZL06xmsN3Gr9VU75Af/ZVG/997E9DHr5FZxJclk0?=
 =?us-ascii?Q?JGdbTV8AbCtm86B9fqA/JsCCj0I+vOP+PC2kLZ0qEozBvG7UBdCnueCu2NG2?=
 =?us-ascii?Q?kQwfttEkqy9Gs67GgyvCLGePS+7Kjt0Bow411dyJEyvOXHCU2XZhWl7ZFbbB?=
 =?us-ascii?Q?oXWaLCH6H6JqiXr6ddktJTjqT8Fqi8PFMe3yAROsnXTKZD5qNtkrjfJh+Km3?=
 =?us-ascii?Q?Xoh6uNp/2poHLgvznN3ckFMkGDBTulZReneFuqSwGd27pUOmX3FCvqb1a7Jn?=
 =?us-ascii?Q?T03fD3Y0Ob2xkpviMlBfxRC+SEJwbEpmCuEUHptwc/Mh8+OoYCMubbhi/XQf?=
 =?us-ascii?Q?jhSsl47tMIItUGxAHj1//ZER++GEf/4Zsi0Xg85zikXtMCY1sI4Xl7PjkKI/?=
 =?us-ascii?Q?dY9Kqm3xuskdcl/NSp5/Kz+qoKx/2h2Vhs/ThpoOS9kvltrUhNU+5SU1Jsyd?=
 =?us-ascii?Q?I+EaYCnZK7E4EMfJkU8rYrG4Z1tiLDi1XcGzJMGcbtBVcdX8XlllsY5GEZzl?=
 =?us-ascii?Q?WDGRqgHeDWzSTX9WMktPwwLTpvG/JjKy9ZFDWQItgqJqeNNeUqQjvE5uXPD+?=
 =?us-ascii?Q?lx2lU4DVMVok2XTuZulW9I3RBc9MiipBVHmWGJl1taSU3IO6RQ3Xs0KEbn8m?=
 =?us-ascii?Q?Taz/mMozhpVtuAEu24Pa+RW4JgyKpPnyIZaWkf+hxDjd/L5FRajIm6wMLeZB?=
 =?us-ascii?Q?nuP8e44nUtZ7JMthmwmlMG3TIp11UfJnalxY7YTLExZwXBcywlZ9Nu03mWBC?=
 =?us-ascii?Q?ZVRUeK63zuveo00KbQHn6x/qDRoR0yxgMPmz3em5Fa6njLGNbqA+H9UZ+k1x?=
 =?us-ascii?Q?GSvzV+pz3koXLPILSCuJ2DMGG+tvJrZ9o+cyhs4VcnZRMiCyQdlAVfNRN3xJ?=
 =?us-ascii?Q?il9SDjubAoRfksPuzNaaSVJ9a9y/rIP763lKP0LiybI6VWR+tDta6X0+OjIR?=
 =?us-ascii?Q?Rbg/ktYURomNJCqGmrcKuF6+nYO8QoXuvPymz+VBz8S50sZNy7tqVSimC2hD?=
 =?us-ascii?Q?fQDXX/WoIuNv8AyxxUmjLh1JnkoXa7cBjKbp19Fqsi/dlSmvtmJtQf2Ogvae?=
 =?us-ascii?Q?LhXpOBPt/5OiN+ZIsVvseFDe9vyda2JPmgPZjdqiwG3Ki6AafH7i7Eg6RFH6?=
 =?us-ascii?Q?IS8SO6VLd2SKTOopg1+Nz5iFiYBfv6aMm/VSJE36tGI6EhB7CHjvyAVwr7UQ?=
 =?us-ascii?Q?sMLyOXmyfyg/O0WiH/e6ldC9mOo1hDOZNqYiOLHLoVwmQ0mGneg8yVS2yxi+?=
 =?us-ascii?Q?2oJUZedWY3zyykDa7B2uYwpMFM8oRNe1MQVvn4DJY9hThJo1shLpBoCA79uv?=
 =?us-ascii?Q?ZQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db16b4be-e533-4c09-f23c-08da5e63803b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2022 08:51:07.2375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c99hU6M4U1ej1yNhdt4ORpUJWMJO/eRDiqLuPhezFOYkhbFVdhPWwcBHqFc0r/NhMxQub9SuhDWpGtgvqmXJRGCTirRC62DhE6RO68n+Dr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3234
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657011071; x=1688547071;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gcbj9+OSGB+ZsO/eM7Lc86dEYsDuGBX0ejN04ze65eU=;
 b=NhCl6YvQlKDF45v6MapS3T/hvUnuXuBpSzkW0BiS2zzRBvjwD6D07Vex
 28bDqJRzqKgCJqPOGzSDM8Lv2rtiev8QW5oADohHZ4/fVET/A7LvJ/jwP
 hH+nHCtKsb/iC7HuTgTFBSmlbS2f32Wq2w3Z3nw+U8q/oDk53kc2crI/j
 YzIctl3dN6dItmxiamPCMNAqDrtEL0bPiN61ioC0DgeaM33WQH7BslaXL
 5D4944LbMkEPRuDMirHPGgkWdotvIw1J3JkfBmJLMJXGRXDxdZxW9ydUM
 p0TlHqk3U29pRA/YveOh+8j3pmg+kVu22R9lFXIQAjlSEfzobGWNaksLZ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NhCl6YvQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: Fix missing state logs
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jun Zhang
> Sent: Wednesday, June 15, 2022 7:57 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3] iavf: Fix missing state logs
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Fix debug prints, by adding missing state prints.
> 
> Extend iavf_state_str by strings for __IAVF_INIT_EXTENDED_CAPS and
> __IAVF_INIT_CONFIG_ADAPTER.
> 
> Without this patch, when enabling debug prints for iavf.h, user will
> see:
> iavf 0000:06:0e.0: state transition from:__IAVF_INIT_GET_RESOURCES
> to:__IAVF_UNKNOWN_STATE iavf 0000:06:0e.0: state transition
> from:__IAVF_UNKNOWN_STATE to:__IAVF_UNKNOWN_STATE
> 
> Fixes: 605ca7c5c670 ("iavf: Fix kernel BUG in free_msi_irqs")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ---
> v2: add Fixes Tag and Blank lines @ commit message
> v3: change code author
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index fda1198d2c00..cbcf0c710072 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
