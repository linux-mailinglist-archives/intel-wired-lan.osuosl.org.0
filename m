Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCF2642E34
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 18:05:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B933D60AE4;
	Mon,  5 Dec 2022 17:05:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B933D60AE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670259905;
	bh=npGVzrxBJqFUa3tyYOybtzZpRdrd/e8LVT4hb1xW7Jc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bl5vKUT+RjCAWgpTsORffvoENbFTOQOz3zmnmVgFus1eOU/Ike6XEscBfYyEoO1X8
	 n8A/oiAs1yeHYCg5CNQTx2APWFsrPNES9pCOd+U+5pXtI/qrduCejign8RFrkwSMmf
	 5pa3tRbmnypxPJiqoe0YvoPcB3Eg7jI1ZRaOsHnpRMbfRKitwIggEN6WvpatbPqO6r
	 dO3tAEKEDgXca9g6E6S3JjrffCc8aiQDYXrMeVodkN/H0e2ae8FiUkOY8BiUy1mUE2
	 LNSWJuBhpvRu/FErG+R+lCT6dJBB+s34smIs2U/FmUaT9d7sCu/OpsKHPfVjtWU4G6
	 Xcr4fHzVzvpwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qc66MSDaFgsW; Mon,  5 Dec 2022 17:05:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5ADB60A80;
	Mon,  5 Dec 2022 17:05:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5ADB60A80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98E121BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 17:04:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 71B5440239
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 17:04:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71B5440239
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZF9Zgel-MLVV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 17:04:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 895DB40193
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 895DB40193
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 17:04:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="380696676"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="380696676"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 09:03:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="770413609"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="770413609"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 05 Dec 2022 09:03:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 09:03:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 09:03:40 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 09:03:40 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 09:03:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F7HJaOXLX/9YlVxMtSZcbLt3t0IWBDDaH79YPjGQGd7WVmevOyYg+Gj6Ap+DTIrR/QdmxEn/FjoRkda24KK8iI6KglXNxf7sXh49FzlqyFd4Ammb/hYmlyIeB/nj+RB+LQLtIfgy2CrXOI2I3eLTiD0cN3AdQmlVflvHq7ms6WDE9MDXr/b4iZelMZNYrYIZgYUzswyXyZCmMrq29fZv1FWYmGfDZt0FLCYLpZ3JPMLsaSArkdAXEeLMndPmP0GZEQAKQ5dfAnlyORQv5r/OkmKwJPfEgnevtEtSjFz2EaXTvZg3SJr3rIh7WI7YdU2EyUOSxYnVGo2CGP1GCfGmBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=95QwbK23e4wZBtc7AgJZK6J5cM5vY6ltoIl7WnOnAww=;
 b=dcznTGVozSua/bmtZVupbT4uhvPJrzS57XyVJHbk9HWoj3DfVnbM2pVNJ7losKIy6VHZ4ln009zWFTRTznIvH2fk9FIcVVo6na+VCERTQNBCdSZrC8c1IxhQHsxOlrQL3HYDxzb8pVTCfvAfEGfM3XDioXbV5TKmYkGHIl94E1TqRUGSUIdcG1Y5uuvTHByZh4MfBC3Nlppn7C6q7vzW+f52Ds+Px9GPrFdg88V5/2vEL9i8H98mxX1SDuYSXUsv13HtU74DlMy8ya3BETFbJlI9hN8pW163G74fmBvvLdecwovGCGNsLxcrP4UVatYyTFm8d/kxBZArtLUin55TFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CY8PR11MB7827.namprd11.prod.outlook.com (2603:10b6:930:77::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Mon, 5 Dec
 2022 17:03:38 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5880.013; Mon, 5 Dec 2022
 17:03:38 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] ice: move devlink port
 creation/deletion
Thread-Index: AQHY+ubhnO8kA2SQEEOIvcsv92li1K5foRWQ
Date: Mon, 5 Dec 2022 17:03:37 +0000
Message-ID: <BYAPR11MB33677F5F661287010E4C8EAEFC189@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221118004328.578-1-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20221118004328.578-1-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CY8PR11MB7827:EE_
x-ms-office365-filtering-correlation-id: cc5b90b7-a233-4370-ff27-08dad6e2a711
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: up+87v81nYEWYsbh3xwiLhmjPgDY6i6GCJKj5TI0IMhMv6IToiwPWaDuCDWaPGY7Ine/S0tY4kJGY55aHkL439FPyhz8hArV2uuwxv3wLD3+ljj/bZ+Xdh9/aI78yjkqu+TIlWR0VqH5xsg7eYlECzi7LmlAiyJPxGXfXtgKwlc4WMRNX0t7eu7jE020P6EdPRYuvJcBzsEvVhyjaODoXu8QBCedtL2nfI7SPbDYxcMiv8UmBhS6OzA6hXcKgTWwO73QFrHXnjA5Z8vubk7xVufXAroBRJopXSC38OryhWcSqtObbkml/qVJ8Z9ipxm+18/I9A+DMsTpZHUKEo55YVKkECbvzdsS3bS8i4hWXqj4WOeg2afYj2LISxBYNzeCaa9wAA80TnQmwyqGIo4KCEYhlU5DqW3d0PVszxJxHjs+ix1HHO57Bfa4rMPytNLUkyd7DcMGpZ98pK06zw4Z24Tl573GhLQf04lE+A1wVV2gMEI80wNk5kl8eRTzAXK0lTgvOd10T1A227mbcZqWraMSly4eh/yvK3ztoPer5I7NenmHH0YY1mj4IcYA9ANsndFxgssiVVS/3WaURWAkPv9W45TfbQQCqYQlV6KI6mreDd7ejy8lU+Msj5OA0CiduSw+Oh6l9rHIT/a86xFHhq3c0ZjDNqqBZgtFq/awwiqRdMDHmDI05Zi3JiJvdzdiUlqRRvcobIuzX9t6mxYP1A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(366004)(39860400002)(396003)(376002)(451199015)(38100700002)(82960400001)(86362001)(2906002)(41300700001)(8936002)(5660300002)(38070700005)(4744005)(122000001)(83380400001)(33656002)(66946007)(478600001)(66476007)(66446008)(66556008)(316002)(110136005)(71200400001)(55016003)(76116006)(8676002)(52536014)(64756008)(53546011)(6506007)(186003)(26005)(9686003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/F9uYJsPpXVdSNCib3gUxyspu5w81bj9bq4iSnz2PQsOK3HE+BJLAZgaTnSy?=
 =?us-ascii?Q?daiYzAiYI6q6hxAb+8XifbrfShrfhTRvZl/2O17QGqZJoqo77MpLTfXENvnL?=
 =?us-ascii?Q?J+KYdKjjzWIXOTDS7/lJNCqTuUps1ZdR3/OdxrP0/Xj2eTSvkXKKcwXXyld0?=
 =?us-ascii?Q?hjek9ZPkpP5xY+PK9GcVc3Jp/Ch6ztclD/9Md8bs8hz3Ulh4JZGdRw671sbX?=
 =?us-ascii?Q?xWsTIn/5PdOHIOxshOJGDia9OKF4y+fjE2qqyVh4mqwpg30UppS7s02hb+x8?=
 =?us-ascii?Q?+zGNfJ+HVZjqJFHd+To771Tdzb6RMhtGHQIx2CRnhVC4e1R+w42fihC+F5do?=
 =?us-ascii?Q?Y+KTHGG2P3CToqzdfmuxmXRfgj090u3yF8oTZwz5nRGqyN+iOgEsDbO4SbLr?=
 =?us-ascii?Q?hJMnIb49+I+JyBPAtElPsg/HkNRFbnWWQZIsUB5ZmjcwGIyYTWoX9tFj1ZFy?=
 =?us-ascii?Q?+68muOQ9Oc49NGiEJ7YK81P4nvu01CLfsip4jH5uOwK38Vk8pLzPfs2shVw0?=
 =?us-ascii?Q?wWN27vUnpjbhGO3AxagUWRCpeCFJ1ndiPAwNm779AhbI4D6w9rChGJbA3C5l?=
 =?us-ascii?Q?4sCjUTJweNcWxTrTJHXzStMcB84mNe4H554fZCTlZUyXj0NNbY8wk2AY7NtT?=
 =?us-ascii?Q?gpS3qOPG7bItnvhy8KWdbATbw5Ru1MSCod+3Q/MdyGGPMGQt28WA9bU/4SQh?=
 =?us-ascii?Q?Ez/bIHxwVc5e4McQVNJJ1IRXXKibjmPZl+cBQRp1P6RzrdCJh26o0060dVKj?=
 =?us-ascii?Q?IUYGgBNIEnDbw1kVzyCEpcaMtTZaTcOU9xKxn5T5+cBEjhCwymQNKB7nR7On?=
 =?us-ascii?Q?FYs4PXejQfsI1iQwUG5ffi/ATqcAlGc0bqNUipQK0LVptEq5ML6xpGkbidxJ?=
 =?us-ascii?Q?XpqVYDqyC0vrgf9C8Gql/tB5omU1RcUnTC0z9ZlSMStXYu9hOndSMTS9wOr5?=
 =?us-ascii?Q?RAW6f38KV0JAFfGZDG7ZXpE461UZT/Uu6+Qhf/jN8HKY0CY+ewRzCPhV+qWf?=
 =?us-ascii?Q?3J6PUME8RGJOdInSmiHKPj8WRL4PsBSJN1Z3jjDGV8EwhmNC/TeUb+XYx+yr?=
 =?us-ascii?Q?BGrJkubrSeX5o7AN+RKQTdAlgu5iMoqVQCC0TmAUWJR+uuhEk4H0MFpqLcGo?=
 =?us-ascii?Q?xrs6zJKvkdR1b33D4WHyxZknrqvfLUoBD8T0yPwuHTbWt+3yKEjpE64Xp3jG?=
 =?us-ascii?Q?X3WdJALwO+OdAoCv4s6uj566iZfPnTvpoeEg6nl+lRSE/Vcq07F56ZQjHr15?=
 =?us-ascii?Q?/wDYrRpD2CUDLOqayEoFn0PcJb2G0RNvDnDWfaXtefDMdJgg2oGzys0rJoRH?=
 =?us-ascii?Q?aycpvQEA19QXsi3/Yxg00g46pKfM4z3Vui3LY1+u0fviV9OweBXvyvV7x3Vz?=
 =?us-ascii?Q?uLcnVXeaPaS9loUv9fkDijgaubbF6T3OCkoIM1pbGL2iE2SpYcERWm2VGbrV?=
 =?us-ascii?Q?qtlrHobdz42lwdBQhSbq4cb1EdbfDl0D3sj+bIkp0rRzGQ4794VBCWUanr93?=
 =?us-ascii?Q?nK+VBpwF0GVOlXBx5MeBH2X2lYkxWxZz3ZWuPPGfchYpdClH1r7VDQpCJkRZ?=
 =?us-ascii?Q?EqlK55ip1R/3iKvyQYabeP43tyNNwI4RMGC1kwxX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc5b90b7-a233-4370-ff27-08dad6e2a711
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2022 17:03:37.9649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m/98Bc1303zGe9W6UvIOrwYRJXxA/lOKOcfVdJD2j0NbRqsvbp8Fyl9GDujTbiLzcmV3Zr6SrWaDpGAlIZiNVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7827
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670259898; x=1701795898;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=95QwbK23e4wZBtc7AgJZK6J5cM5vY6ltoIl7WnOnAww=;
 b=DnOYJRIpvddll3e6BLm4iwoa5t4eMo9GSukD7txpf9wf7HGGTwK2YZQy
 MTOUQrfhqEpXzCH/htOcpTF91eDTwUze6pj0mSpJ+FRrh0N4cUSZF1Msz
 Es5VE2GY3vr5EqHf8cYzNEjzx+OoMQvlCQhNA46K6nujxCsgd8msQ3cWb
 K6q+PvLpd+xRw2nQAAjsaAkKudtincxYQx56SJF3gCUFwlEOJpmEzZ40F
 3vkwAXUNzg7dDkD2G86I39LgUQR/VgEJ4Rgzjrfi0QFoP4OHtKMsU84N/
 oXrPg40zU5J7BbrX8dnSDqZKmUJ+wxqAXDzvE4Ds1NuhrpyL0S6837dS2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DnOYJRIp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: move devlink port
 creation/deletion
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
> Paul M Stillwell Jr
> Sent: Friday, November 18, 2022 6:13 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3] ice: move devlink port
> creation/deletion
> 
> Commit a286ba738714 ("ice: reorder PF/representor devlink port
> register/unregister flows") moved the code to create and destroy the
> devlink PF port. This was fine, but created a corner case issue in the case of
> ice_register_netdev() failing. In that case, the driver would end up calling
> ice_devlink_destroy_pf_port() twice.
> 
> Additionally, it makes no sense to tie creation of the devlink PF port to the
> creation of the netdev so separate out the code to create/destroy the
> devlink PF port from the netdev code. This makes it a cleaner interface.
> 
> Note: This will conflict with net-next. Resolution:
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
