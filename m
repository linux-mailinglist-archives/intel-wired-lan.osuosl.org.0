Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BAF6B401A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:19:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B451940452;
	Fri, 10 Mar 2023 13:19:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B451940452
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454364;
	bh=st9wZNoxtqbXtYUe+MCsJ/0XzVoN+nUp9wYOyxZka+g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=afX9W3SSH9LKiTyPS5mawoqy+dJePmzN8mUupQSDJpG7vq/Y3iygjemH+r7fUYtnp
	 k0hyBgTO+uqHnlXTQFqYPzyATDuD5GWDgCbHOJyAzGGUdhzTEQukQdySYUU7CrQnTM
	 Pd9x3AmT4B8vdowRjBLo0S8Ha2g2cUCBS9/0dCc7wovLZJ9a3s0W1P7CxkNnBLVaCl
	 EPOQF1wGlfbrxQHk88Co+gzEdmnP19dd4UhpL6kd9J21z0bc4OCSk2sn9ZKcRJV3oi
	 aZhiCuBd/go1oOCw1dKVz8b8Vm88CJPOHL9pIHcGZ3btd9qeI5HIXt6rerFsmhX+eV
	 SmvQbZlpCufwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ydR07NeMT1d; Fri, 10 Mar 2023 13:19:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9107740447;
	Fri, 10 Mar 2023 13:19:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9107740447
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 01A211BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB2F94037E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB2F94037E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lBzgaAURfTbO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:19:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 188AA40374
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 188AA40374
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:19:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="338278146"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="338278146"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:19:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="923681132"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="923681132"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 10 Mar 2023 05:19:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:19:16 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:19:16 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:19:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e6tPG/8lODt1oJtGQohw1JOT+kLCVvae1buvSje6cNTc2p8i7//VttsRWpLc6KtfpKU5gRv07XrXmLLSTlRobFiVDWmYQLNse7TsMuiLE0ExKycNxmOnKz2Q6sfBifmrHILGjuhefnrvqvK9led1L0mXMz1ipiRIHzeuMBvil4LGj4Ch0M4/RkzI07wf0oY3zTuzbatAFKu+i3ypUTB+OImt+xsLvhKOt3mVwPvMJKbpz027PjuK9Xbsd8+XdH0l2A4szAbzOfd8ZXi8ERrq6t9yzJ5JYPyiyUDHFnBaw5nsBQFHy2naS5Yw0imo7pskO+fe+x0qcLBVJ+xGJd9iBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qr6BDLnpsIUGouCZpgwPNXZCYmARtKa5L6URbnTVRvo=;
 b=nsM8khd0MZ8RoD/sEqsnXAP1nhx6btY00B7vFgTLFdAf3HdYSXdCdls1Na9qAastgt/kJjG8S/5SNcMW2CwI1VZ/Db68H0JSyA8r/ONb60XJl8mjERNoOdkm5YqpHmHZdDGtXbG8lMY52fHl0OAwZ+vgGR1OZK3dfYrBV1h4XgqZ8eaO2e2TW+1pBRT3ilwFensrBswBN+vDiNIXIQ4LQX/KoQxFaLVVoOViw3Hj+J8wFnL+6DSsktAEU86iFPxVVjTWybCwC8PhZee54D05Ovy0gf40CymGMulf17NB39uGi1dlWD9txH6k1xLM8/t+gylS1Zc9LF3C47TsJbWMjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by CO1PR11MB4996.namprd11.prod.outlook.com (2603:10b6:303:90::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.20; Fri, 10 Mar
 2023 13:19:15 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:19:15 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 13/14] ice: move
 ice_is_malicious_vf() to ice_virtchnl.c
Thread-Index: AQHZRuGUciZ3p83mq0qq4Ilzs7d8tK70F/jg
Date: Fri, 10 Mar 2023 13:19:15 +0000
Message-ID: <CY8PR11MB736406BB63E5D3BC079DC795E6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-14-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-14-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|CO1PR11MB4996:EE_
x-ms-office365-filtering-correlation-id: f6f3f0da-f6ea-463d-f56a-08db216a0bfc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K0L+fxa2F1A1Gj6aB95qoO2AlVutIepiigLU8QOY25assf7eB89R6+E/PgYUkO76k4HtdCaVGQdoS4Vnq2HsocX16rMVr5zdDjspiKuW7FSijEAgE1vN3rLEYZrK+9xRq3KddO/pcsxR5YMWJG5ctjLPxhBjfdjzqNINvOTHfXmxy+pwEhlB3pgqERO0Fqgfx5B6ULHm3C6EvGpIU4HmqJOJSq9Z/mZax8yEmk4m2AUNhtKD2vONubDWJjATcJK0tzq+eyLRnoUvm9X/HxvrxxiJemCorsweL11D1y5XWvhaxKSVXaeBNSBQPTEa0nQuk/jmzxwkV9HrnWhGAR0rZmvwaLxrPBUNYYMvyTYX/i9LWXWDvtkoUjXpBb5CNH/+z6swdWkbef9aGWigvZEc6YcidhCzXsnAMOh8O1HC3JtYy75z3CaVM2cXeaVkfDsd16/BUIIdcJpmYflAhXQAostnhL2eBPOI+6GxhKWyKQZG9VKlkgOw3/Dz8VigZM/NS8Mol2rtQAZjt1OFLTY2ZJ2JHD97n7wbDT0QUF6vxdIJjQuw6j8nOLMAefFJXUPqG7Qk9F9qCKl46NnEgxV0OhG/lw26UbR08VBdkboRNLilvM7GtI4cXPm5sLoV3X5ai/6ZgeFjWoApCmSvnmjKkyMH4U0K/oiwPIoFjOgjHkxDHj7rYAnt8MIX+h7Mq3ryktNt4jYTkfRTGmSKSiNVag==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199018)(83380400001)(55016003)(2906002)(6506007)(7696005)(52536014)(71200400001)(53546011)(5660300002)(316002)(186003)(26005)(9686003)(38070700005)(8936002)(33656002)(86362001)(41300700001)(66476007)(66556008)(66946007)(66446008)(6916009)(8676002)(64756008)(76116006)(38100700002)(122000001)(82960400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?h85HEJs0OApIKK6k2VSWr1seJnwGUNZnrsE6mr+gO0uXWdi2SQuwIy4g5b?=
 =?iso-8859-2?Q?P6gJXrjtnKoMB/CZZ3ZWcSb7eEKANQXSkx44BeRoCWPMpdZmrlsiHtQNJT?=
 =?iso-8859-2?Q?LJLm+HmyIi1ZlmfsBTDlIHebwSHN6c5VOKpY1LSw/FTIlY9Ic1POILXiYF?=
 =?iso-8859-2?Q?OVg4cKvx9z601y/oWV/mmjEsYJK2wD7y4HKx+a5GrOIz3f2mabcOmpu7Jl?=
 =?iso-8859-2?Q?rzVU8ruiqcRQr/cQgNa3oqmM30NoVEwR1WbMco4Vq/4bZCFf+ghvyozciX?=
 =?iso-8859-2?Q?oHmrhyO95sz8ObwKBUSNY5RBSpcAo5DWECmB/sg/HC9xRU9xjhwyLNWLjF?=
 =?iso-8859-2?Q?kSeYuv94J1y/ON0eQh6NeRGbGNHK0IHpNfV8IU6K8hyPua8QqSCuqELlm0?=
 =?iso-8859-2?Q?TTD8HmXS0WfJDvFfgzeZL6aqDOnZUL4REoiQwJRM53B/1DLN1mCii7CdSL?=
 =?iso-8859-2?Q?AeEjFeViqp7fQu8VXzO2mWs2iqdK2wPoQ1QXIThsFbV7Qw9+CKGXczjP3Q?=
 =?iso-8859-2?Q?fmTy5RX2dWMKvei25T0umWV+AXOIh0vtjyBEbEaTFu5Pfsw05gPMYiOsDR?=
 =?iso-8859-2?Q?AjO57gX3qic+od+zUCE3pJ5TVJTprNn0pNfexACBTtaWSfdlBm7Ha0UHDS?=
 =?iso-8859-2?Q?h+zizdFUW3LqyfJceD1RiOXYoeoR/hDuj++9Sn73dgD2EDwJlCxnKfgJd+?=
 =?iso-8859-2?Q?OUKj1yOThIIURq9O+v0tEtQQmbOTz28RT0JZFVgzTPQ5S15iMT2ENfRGMv?=
 =?iso-8859-2?Q?aESFT5mnNpJHPfvAit742jzlN83C8pEELIN9UpAJmPuxvlmFHU8vbmM6hu?=
 =?iso-8859-2?Q?bTUzD656SBtkp4bZWIluq/kDMy9Z3UuK4pibmykIXlEFez5PXW/O/QvDqb?=
 =?iso-8859-2?Q?o+Z8V3nMqseycVIw6gTOrbD/02ymC1MkU1XvUkdKzOkNzS0W8kbXnWBJxn?=
 =?iso-8859-2?Q?1H0MD4jx02zrNnvWLft/Z+QeGq2gdvnpXL8v51sK7aoSaieuaTEqRQOZ2w?=
 =?iso-8859-2?Q?HJ838+YyCStmFUzIitbV5z/LgQbPSCuZ+Kv1RQKyAmNon0a07bn0Mm8dSE?=
 =?iso-8859-2?Q?eWliQ12VMUa0gP/E71CxWiQSBadB+Xd96S4nsk2FGEFLklNmgzv3wScJtO?=
 =?iso-8859-2?Q?kqJ0I507MGi1PLMFyOrJxHEa/LPkJLibhMgbTiKk9u1g9WJry2/tuWmxdT?=
 =?iso-8859-2?Q?bB0FghLXBfIy3FsGLqmi9/V9mwVntqsWDV8cLdcz4q8EzhPFhw1c84hLu9?=
 =?iso-8859-2?Q?r/61dlHcfiJe0GaTJ2IjQKxGPUYv0JLnxOx4W9k0Zc4QQc+PINrDWkpVki?=
 =?iso-8859-2?Q?Jx/xJbFLTZRzyn3Iyr3vogo8CY+7spvY1F/HCX6PVYa6f4oqDavu4q6IlW?=
 =?iso-8859-2?Q?xiyJac8av0ch/j4ZcAMJyEIz45tBTgH4S9c6mC5LMlWpFZUGyMFW6BKu1i?=
 =?iso-8859-2?Q?jj4Mp5V/sHm2Y9/aB3qzQrdAz6YtghHg2RWJ39/kUU+5HLSAQE65rdrMBl?=
 =?iso-8859-2?Q?yaww3BzWMl2+YN5L0fmwFAar6aZMKyucayr4znrzmtJWvQaWmsq9FqOCTD?=
 =?iso-8859-2?Q?bOsvKI/rCAOQ8S/ps/rxXX2mLrObaowjlruGz5Vpg8vfytkED7FBKKuR7Q?=
 =?iso-8859-2?Q?BbJ9AlutdFC1j+Ua6ujUWV+yXDTZYSRYbN?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6f3f0da-f6ea-463d-f56a-08db216a0bfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:19:15.3965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6CI9PcSCB5huE6PKWPLLoURi71TJ0IOeRthkNmtv0F0/pHiX2ODTXIJSAZbxPTVYhHcawY2/CsK5qv/wRRLgEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454358; x=1709990358;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kbYXHeMWBJiHkzhL7ChE9zgALGkLN5hbYTB56Ts0fdI=;
 b=jts+KN2akp8pUX1KaVABMeu0UTNjA6+vKUdiI9Bnv77vB+1LPyFjnJ/p
 3EX7+OkVwHf8O6udaxnZvmE/R0RlxI5k/XCQT+45h9VYdNfGiH8FQdbL6
 ZNqDzDdnIj5Tlj3vHQseLafdxtjYugBh7ENZf892GLXgAZWTlWpqM+v2D
 BHzzVuc8ngpcWUZSse1cUMV+9cag1pV2N6Z+BohQ7tADKKefA8vT7X4A1
 lrZkXFESeLqyHtNMRqy68qTfxBC+nDAfoANYT3buxhcRDA2tvuvugSefZ
 9x6heK2orw6MqWasGKd9eXqwgcW1Tk7wpdo6MyLzg52aRzE3gWC3P31re
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jts+KN2a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 13/14] ice: move
 ice_is_malicious_vf() to ice_virtchnl.c
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 13/14] ice: move
> ice_is_malicious_vf() to ice_virtchnl.c
> =

> The ice_is_malicious_vf() function is currently implemented in ice_sriov.c
> This function is not Single Root specific, and a future change is going to
> refactor the ice_vc_process_vf_msg() function to call this instead of cal=
ling it
> before ice_vc_process_vf_msg() in the main loop of __ice_clean_ctrlq.
> =

> To make that change easier to review, first move this function into
> ice_virtchnl.c but leave the call in __ice_clean_ctrlq() alone.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 45 -------------------
>  drivers/net/ethernet/intel/ice/ice_sriov.h    | 11 -----
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 45 +++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_virtchnl.h | 11 +++++
>  4 files changed, 56 insertions(+), 56 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index f0daeda236de..6fa62c3cedb0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
