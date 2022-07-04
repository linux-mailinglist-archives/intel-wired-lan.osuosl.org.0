Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 261175653EA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 13:42:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 650CA81308;
	Mon,  4 Jul 2022 11:42:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 650CA81308
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656934936;
	bh=l422yjZmCwsg0SS6//UjJPIeF0dxcUm1peE7tk94QBc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gph18gqsfdePp0PDWBS9EJexGZTacNzceve+NUfXxmDcOtV37MBoaXQiIV71Xad44
	 oJ1LePb5MI0EAm/WvfE9QddI/U/DuNa5B4sjot2GRqbsLbcmVkM0edaKwI3oLCr74P
	 r+JBgIPjWRW79Y/HwILkm+nPQ8iUMYy9kZCwF126wG2Zu3Q89UgVNi55LEB2uQzEEg
	 W8ezt89u1FGKSTy6jeeQKxZOhkkPRvzqaZhuZHtMf5zM5qkhAu8zZyDE73Yk6PG8IW
	 viLzWiO+aVi+zUNxFl8AmkIY7pFdxLDV9QVluKfx2b3jcLzrjnANLejsSZUJ1f8+9/
	 9spwLw15nfbYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LdzfyRdestju; Mon,  4 Jul 2022 11:42:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49371812C3;
	Mon,  4 Jul 2022 11:42:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49371812C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 974241BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F59C4056A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:42:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F59C4056A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OMIFyLa0gg6n for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 11:42:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04F074048C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 04F074048C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:42:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="344786684"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="344786684"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 04:42:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="769234354"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 04 Jul 2022 04:42:08 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 04:42:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Jul 2022 04:42:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Jul 2022 04:42:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CvZ4t5n8FREimwGGRXINs1240aY0ULiQwUh3uP5JYBRJbrcfHeSo6IsWs0Xxjpwm5jcF8LawCjsjMsIW0e/m/fesiB6j6V06YoY1wkoATobM9lRnyoAAF6Z6Ekpr00X+JeI0oS+WIuL0RQtWf1fJ3AJKAk8JZggS1vXuLsWGsQ1p9+UadnSh2rQcaFaq4wEYDuYSCp52T5F58gwmzR+QFVxPdHOhGR0mnRRfx82A0hvCd9pSj59e16dlOhUjpzmsHySr9nHltZMxHVt5pMN/U3zgggo+0ee1MfoERX/0Tp+/D60/I0mYabXQSGiGDwV8f5xV5AvxgnCKbOGHQCWr8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1hYishZuMj28gaAVzaf7y2k/d7wCffImhyI7CtjQnrQ=;
 b=ofxiz6o3w7r/BZ3FI6vIN6DxkEJoWOQrfL8+XXIS1zEDTrR6V6GuHCdp4AxO22XT1U15LzKpZVfrgCUq24cDTgKASquhRnDwKDuzDfmuXGHzf6fwHk/GeD6a8P4jjn+aIWOtjBvyhmrIM9nkfWUJvuRPcF+JImsRXWzFG5eEkVlPqPMsDK4IU9vYOYNEcmN9++xQCtqcwRNAgVDwECe+2FM35H1/SDfnCYXTwaEjfx3iaLCkcTsa7WvdylrG0mJb51ZWsi/X7oHK+2F+2awY36Zju3fKF8fzAKxSseKpZQfoPntLgxwjl6kDEQj64/Ze1d4CE92DgihLjPS4Eme6zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by DM6PR11MB4547.namprd11.prod.outlook.com (2603:10b6:5:2a1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Mon, 4 Jul
 2022 11:42:05 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5395.020; Mon, 4 Jul 2022
 11:42:05 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 3/3] iavf: Fix adminq error
 handling
Thread-Index: AQHYgLNff+TvY5ACRkmASVQHLDnLn61uNFLQ
Date: Mon, 4 Jul 2022 11:42:05 +0000
Message-ID: <CY4PR11MB16243DA4EC6456097CFF41E9E6BE9@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220615122722.27269-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220615122722.27269-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f44d719-93bf-42e5-fc72-08da5db23843
x-ms-traffictypediagnostic: DM6PR11MB4547:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UoEnFAvn6PxVywkSCXxb0dq+LdMnp3l/a7MO11yyJ9haH+mUy4jcxuZqy8SDJVpCgnPXFeRHTnzxr8KqeaqQ62rTqLa/JqnZZwGgrg+rlnXQUjgpxFCR+qJ2pS57XF/WSuLPGGXBwR9jpKlSQFfHevryyPBhzx5UtBZ7mqzCfA6ciF1QN0IHfLBrhfV8PoEB/21pvRWzu8UYGmx+yiUaRjab8Udhg084pWZF3IDlGXaG1PJsWgLAZB68awWqWwgG+UKzJswXVTFtX7yM87vQSrsl9ErXwFo/6+5jMj9aoQK2oL2YI5wVyXDlq49bbv+lXp25eNAKqSkWid3F1vMgMmLk24xNGZ2ry+P3SKf0DKOOOMt0KcGCyGd3JukK0/WSMQNJWY5WWnoR/d6pUEdIb59SbT+xz24VucRjT2goPPjTtF9D7IooYuOaI093aVRpfnErqfK/yJIqxINsyhlUG7rSruECtzxmZtEhWN1U6d/ihIZNOYUMMgdEqq9mg8Xd9GkfbVGZogf0nTiPekle2fND0lsP4SQA9YBJs20EMF4X1Q3jLmC3+kfJzrq9FYD7G0yHIF8y66c3hZjZDVh4k3YPLGvJilNiUfNjO7poQJkTn571VQtwNCJvkGAqTAsx4u+amfKiKSv33Sw7uFaIxBt2mqZD1g2ZYEJU6pXVFEnZ5YxGfY+XDXcCpVz/8AY6y7O+Ffnt9g0KC+EoBd08nDsGLtpsfLDP+IGtJ2krNWb0+pMSR4hQjlkNHMT3eNQhFGPMdwMPs8YAhhgGDjt+YE9uVUlDed3Pfx+vb5i0XqhEuHqtZYILa8OjSdvFom/E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(366004)(39860400002)(396003)(346002)(107886003)(186003)(83380400001)(55016003)(38070700005)(122000001)(38100700002)(41300700001)(82960400001)(6506007)(66946007)(76116006)(26005)(110136005)(316002)(478600001)(71200400001)(9686003)(66476007)(66446008)(64756008)(8676002)(4326008)(52536014)(7696005)(66556008)(53546011)(5660300002)(8936002)(2906002)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?aqepJVYXBC79ZSjgBBhyPsSqrzyg9ie7kqTO8rkEyqpeL6w9dylyNx+hSV?=
 =?iso-8859-2?Q?rd9f9Mfr6ghc/L+nkUYCyJfjJz0ynA2mTwpl2SBazwWQM8gUHSr34/3ZEr?=
 =?iso-8859-2?Q?kOX1yJw6hD6OXG3g9gb+g7Qz5DUD0zVgxdSLSXL2hL+wtECqROZqFLVZ2n?=
 =?iso-8859-2?Q?9oiDb86JOpvpVcW9viE6qFoHmOPhZHN22/K8xAg3ljuSKA2CpGyL4e4wmj?=
 =?iso-8859-2?Q?/Jre8WDBy4Ux6PLRkaFCfx1FjiVcj4zVtDfanlTSEofPt2Hf4MuMYEKpka?=
 =?iso-8859-2?Q?30sr+7jNu507t/XV+EGvsvWKSnzSJHR3dNmnFoHMzJR0fWqfvUB4poG6fv?=
 =?iso-8859-2?Q?im+OJzOyepAZzlsYWvhoHJ7FTtDkTEoyFPFVMIGWX8TA9kfm618n7hzhBy?=
 =?iso-8859-2?Q?wdxwEGTiFK065KwHEe1RKHeBfh/CAMYbbKjJDJd/6Pn23iFYRKgcVQlkfE?=
 =?iso-8859-2?Q?tblOLdC/ETgW51fyiCYXqhMJMpKzDm9PjLHiNZpIkCwvT/g+q5R5hzhsPr?=
 =?iso-8859-2?Q?Yu+8voKoTEm+PQC14UQe85PVWFSFwNYJ6wvnfSaCMqRPS6VALwockypl9g?=
 =?iso-8859-2?Q?jOiikBAIdhSAxD8EOwOGVrwXsLtVtJhIfYH09UmkzS0nUP5TBUMmIecUms?=
 =?iso-8859-2?Q?gRbl5QS4ctUwzuMr3b4mVpjmYcilEVBoYBCIdZdZGGMQFsKxw1inPatC6N?=
 =?iso-8859-2?Q?Cmp4PECeSBrpgiHMnZokxaLZwe9zn+oRJjEQJfQW7UJlQc2FBBY8a7AweO?=
 =?iso-8859-2?Q?YiC5IzWGMHcVE9dFrxHMpqNa/TEoPXJqr2mehQk7fEl7ata7//kAor34Zy?=
 =?iso-8859-2?Q?VU70pV1liR1Lt6aXGen3zGh0jlWSvhS0ZCceumMOSJtIseR719z612gjPx?=
 =?iso-8859-2?Q?TeawSDghUKX6A0A4NU+agnGxHKXj5ltC20Vhi4tiQOzlzXBijOfSxEe2qT?=
 =?iso-8859-2?Q?U0W8ypEM7jlWIdmHAozBkZbiWot/zGkspsRt1SJ8oyxKxGMXy3eiVlpdcx?=
 =?iso-8859-2?Q?MrncTCwddBByDkt5CHS35dWepu3nOjNX1sMHhlv7jevFS0+z7fLgcyzzqe?=
 =?iso-8859-2?Q?l+/pexlzGHIzvVrW3peCcPyUxxrn/alxBcUO3eZxuUQu8rYSoFTp4Xmuda?=
 =?iso-8859-2?Q?6+YfbFc86u8u9bafjQJFwOBEzkQVUmH6AG3DDyslbzhwIJZt0ja4dFr87F?=
 =?iso-8859-2?Q?LTR6jQRICSJlZlcoGkuRNfquvl7SrB6ZLtIcV0T+3MSoMGDZTZsvoOCi07?=
 =?iso-8859-2?Q?135EuCKSwjRHsxkLvh5Ral+tohKO42bUgxJaBpc/+hbhau/6FjysZSI8uX?=
 =?iso-8859-2?Q?PeWuxDCa2L9oXecsPgzAthizbsj135iZeFTYvSyattqa6G6QCH7HjxScuT?=
 =?iso-8859-2?Q?deoV9eMt3pJNsFXOF9D2k2WhHcsW3TxVjdzk+s2F55pr/LKW62Ukzy+wBr?=
 =?iso-8859-2?Q?yDTA3MlE40bbROVcztV3su7rVSWyXAaTqPpvsjhtyW1EHCoY8d0zVCFidB?=
 =?iso-8859-2?Q?gJaFyNEQVcSdrAu4Q2yoXzs14lNhrhWGdxKWWqQKtiAVjTh1MZnxKAculN?=
 =?iso-8859-2?Q?xutcfVe2d0IEuHym5TX4nCebFRUUjqgvVqH4qscfXI7ezQJctSwLq74WhO?=
 =?iso-8859-2?Q?sJZ/T2k8XwQdvGe+rNnwj2zAW+mohVSD1X?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f44d719-93bf-42e5-fc72-08da5db23843
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2022 11:42:05.5731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tM4B5f8yPd+KwQQOxvUBZhmObRcxbe2WT/ovb2PDSgRaT1CQfFwgaZ9AOUaNm/IJ/RAZnXEwG2Lfxq9NmfjKXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4547
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656934929; x=1688470929;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1hYishZuMj28gaAVzaf7y2k/d7wCffImhyI7CtjQnrQ=;
 b=JERDTabGJqBiBU22/t3Q9SG9BPE4vTpl8rrOHwv4L0aHZ5sLgiVbOR6L
 /b/0POx89CUQivenVhD9esHzu+xbvHG4N3vtmvFvaHrletwlVa8KKbIbo
 sf9ACUx/pDbVKDEhxfLOS3wv/zLTNYYlwmq8mtU+EZHFXP8QBZqJ3BcPO
 qQaFA3Jd1aWuiGV412dnZnEC+dvxqsu1B8PYYJFzfXj2iY2DWyGVuNR5s
 WoGciBci42u1ira2jwy+07EZyoQDgjNiNk1QdoPtzNvK1n1ba9vPEkD6+
 +5FYLu2K3BD3atsPE22I14VQNW192180WdN19tzcg25aqVao8vp3/0GZA
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JERDTabG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 3/3] iavf: Fix adminq error
 handling
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Pal=
czewski, Mateusz
Sent: =B6roda, 15 czerwca 2022 14:27
To: intel-wired-lan@lists.osuosl.org
Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
Subject: [Intel-wired-lan] [PATCH net v1 3/3] iavf: Fix adminq error handli=
ng

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

iavf_alloc_asq_bufs/iavf_alloc_arq_bufs allocates with dma_alloc_coherent m=
emory for VF mailbox.
Free DMA regions for both ASQ and ARQ in case error happens during configur=
ation of ASQ/ARQ registers.
Without this change it is possible to see when unloading interface:
74626.583369: dma_debug_device_change: device driver has pending DMA alloca=
tions while released from device [count=3D32] One of leaked entries details=
: [device address=3D0x0000000b27ff9000] [size=3D4096 bytes] [mapped with DM=
A_BIDIRECTIONAL] [mapped as coherent]

Fixes: d358aa9a7a2d ("i40evf: init code and hardware support")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_adminq.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c b/drivers/net/et=
hernet/intel/iavf/iavf_adminq.c
index cd4e6a22d0f9..9ffbd24d83cb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
