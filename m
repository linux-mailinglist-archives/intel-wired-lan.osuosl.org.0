Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0815C5FE7D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Oct 2022 05:57:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4456F41E2E;
	Fri, 14 Oct 2022 03:57:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4456F41E2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665719823;
	bh=DdvRxmqsrKEYi+1jN1VVFVHEjYozLBY5k3Tio2FujQ8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C8VW81+AfpsEpdq7hU9Am0P3N5ewmQ2z0pQoAQWsElF6Ku95A64oBF4gI3WL3zTnP
	 mhAwU7AgvuM1KZUVOTM+nRQ114VWQ8Xd60H/xVD8j533pV5Vx6mvNyKZ4wsMwapq2X
	 nZ0WtwOjzyTsS7a80t+BEEWmSRp9qz2YgZDwUtacEEWAhZUso68byElATRl+PKOi94
	 cN49/NxyYSzb5aQNpHpWK7w/WjpbkyNoxh4xrlXFc1KcdSpA1KRnrEJTOPU1DEpUmj
	 lvnIH/uKPrAtV5wHzTmloLgZNVy6jPSl/YwT1y8qO1Gt4l447z3rZ6T/gL822O8vXe
	 N0hmTfPznt7EQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hlYgFvvSKNPG; Fri, 14 Oct 2022 03:57:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D4FC41E25;
	Fri, 14 Oct 2022 03:57:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D4FC41E25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 805E61BF358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 03:56:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5998C60D4C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 03:56:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5998C60D4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5vwztABaNHuv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Oct 2022 03:56:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AABF160D4B
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AABF160D4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 03:56:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="391577173"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="391577173"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 20:56:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="872586529"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="872586529"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 13 Oct 2022 20:56:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 20:56:53 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 20:56:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 13 Oct 2022 20:56:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 13 Oct 2022 20:56:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ELFyjNDdfKCiSZvlIRHxeHh6yEh3AYjf8lNrWsBU6d2e3DgJMl0ozqg1R9q+pLEsWwVN7QQJWFN6e1W6KzelhVmONtIOvMSj+oxx2vf80DbdLNKuZcGAxnzM2Agb1D5evk9sdwRLL6HV6XowO3bie3zuta8xSMA9sR0CVzNIjyW7wz+kv0+Hq8FuFVTrO0fer29126vZNoL2Z2Qr1gJPNbZxlz71ekxNhh0vdAJvqQ/bnjwDckS8x0b3S39EKypwo7JwWr9sorJkn93cSygsiG2YWmCEUJn+taFmS3CzXSI9FbJCWgv+nNGFvaLZP94K2sg3Bjgi3SkAM9dsVlBS5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJbfdsm5BjRLXw4Vv5wij/ZyYgDhBTbDdwxuUAJ69wQ=;
 b=AuKxZaCn+GgHHn2r8KJPtBAIL2ZQvRt6uY+YvwAx5A2zqozJMgzoIytnwkwFxUBN8w3chylCAQyYgSUHcd38T0S+qlYvrVnmpXso3sa14tz7GcDPY6cwiVumQ/Mb6xP2b/HHZx9+m5T5AQRx1StPgiIE6BfjQI5LIenJdXZfLd7udD4av8IMGtOtq3qs+J8O74qhSArcYM4yhAG9OJR+9y4pRJ/eYUcdL102TQs21+ZPXWsawG0NTV0l/ZRxAgpLyMBYu8XeCgZ6pFMQtT3RbZ2oSdzH4ARo/uF7VYjeqBzjCfmc5PO5O9aCnhA0SHNkxzj4FzQw48/drEHVttUu+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6419.namprd11.prod.outlook.com (2603:10b6:208:3a9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.19; Fri, 14 Oct
 2022 03:56:50 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead%6]) with mapi id 15.20.5709.022; Fri, 14 Oct 2022
 03:56:45 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4 1/4] i40e: Store the irq number
 in i40e_q_vector
Thread-Index: AQHY2pVr6jPRy+ezLU2+LbE4DNlJqa4NTK3w
Date: Fri, 14 Oct 2022 03:56:44 +0000
Message-ID: <BYAPR11MB3367FA5154F38D11D5A1CAEEFC249@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1665178723-52902-1-git-send-email-jdamato@fastly.com>
 <1665178723-52902-2-git-send-email-jdamato@fastly.com>
In-Reply-To: <1665178723-52902-2-git-send-email-jdamato@fastly.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6419:EE_
x-ms-office365-filtering-correlation-id: e08454d7-0dbd-4d19-c18e-08daad981c6d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y9UahdpRkMEBk+ULBDVYf/LuGi5ad0lRmfP9vqwjS0tDlWMtDxZJqsW7sf6kc6og7PJ0L5vKYZvKsg6nJSu6NPk6aDyPYtnSfecXuuJ/acS3MlIaCb7WoYP8cCebA/dJlOCn4XC96K7C6FgY/JdygOWYEDGhJY/g9ik5+L7DzdxDnI8bldKNVlRkd63hhrWLD062ahOTpuCd93N/4+Dgn6incp359/nsf/bPsjpCSPmOoB2a8VPUbsoxMdNmqKFXbQD3n/u3VoP+tvXtE8/9+1mx3HPOm0OCSLPPnXPoLugC0c+w/kyjSbhy1kerskUm4w5a8FUhKh1fUJnN6vWYTHzZ/0GdCGYpF7onmR5572FI4H2dBFhDxVGCLNGDUKGH04PeqJ/016FB6f2UEd3gubRK2TrJDBb+f0wm7fV+jcVvamMTPW9Sb0Tfs+WXvYR+QXKVBvswp0nA30iTSSvKVqssFr/QFxrGuF6b/JrlWhKEb02yoUyRvLsm8a6H/RiWPwqKXbe0Q7dwNDcqjuxjl0z2T/a97r54ZasB8uJU1ovMK25WcgOKoKTFYHY7w/Z6EpXFmAxK7j5CpZVOFizAzL1Ox5rKdFQBgbksJtC1Y0SVkJHYxgOLhv2tEvrGvg8p+r4I/pQknAUBEzaCQjC993T2rwGHAKPCQAsDmu7/n14RbhCr5LrNJRUUXDsP7SLFAfzPk9KdADRIsWLE40oQ1uBV2s59pjz/cakz+EZrktTn63kU5CThROKM5vPUehx+rN0vjFdLuYRimSKCAgYytA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(396003)(136003)(346002)(39860400002)(451199015)(53546011)(186003)(122000001)(316002)(82960400001)(8936002)(64756008)(52536014)(41300700001)(4326008)(5660300002)(38100700002)(26005)(6506007)(33656002)(2906002)(66946007)(9686003)(66446008)(76116006)(38070700005)(83380400001)(55236004)(8676002)(55016003)(4744005)(86362001)(7696005)(66556008)(66476007)(478600001)(110136005)(71200400001)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Bj3jP+x4u0tHboM1ToqgFx+gi4BsxHotgnLi4C2W3bE5bYxvhtDzaJoHNt6t?=
 =?us-ascii?Q?I+cIFGglFiQUsQRu5Ioaa6t00thOJSlYowXnhCADVAa4XvyDNicKqUZOP8ll?=
 =?us-ascii?Q?388MiJYQH1gq1rTxlTZQmZv27RhtUEsuPinasnEuvrwnknBcpsXHyZpADe5D?=
 =?us-ascii?Q?a1P9UEjt1WzCsoEBxfqpML+A3pbzExz3dIvM36RxdozOsMQEpmbTTJ+U7Aaf?=
 =?us-ascii?Q?J01Q8Yo/mJlH4/mUkNCw9IjbSPnTrInTr2CJGPs57vuLbX9or39XVxAgTKXV?=
 =?us-ascii?Q?jZdS/XZe4m3Ktwktq3mMzGedZj6kX0fctL+CglW+DiRKgDeD8dwRHWUZ4WEU?=
 =?us-ascii?Q?lqeKEYPUTZSVG0fxX5+6Hu/YxsT9BA1F9q+3Gp7XrfEKMmOPnmoL1Ghd8FVE?=
 =?us-ascii?Q?HYB6oXkZ+Ij3L8mlxSInPxk938ODfigJ10wQFqYr6BWJl80yfTnvq7zgj6lu?=
 =?us-ascii?Q?ENYWx9CC8vHNJeKmzq/MuIcstXwP4DgKygsIgjgK867+Pwyz2+ZTHZLEmTUH?=
 =?us-ascii?Q?cNqfAgSCTgKSDRVoVQSfty9lVw5jJY4K4SSugchxGmQ1nKjK2fh5VPLoZZbp?=
 =?us-ascii?Q?issgYPfvw0VfLZye1x0VkV48l+TustLz4mzeehglkvDZwhM8U561miUmpzH6?=
 =?us-ascii?Q?yRxnLBLjtCBqil6Vzs65/gQOhLh29VsRJCwL2Q1ruTeDY++0YJmcp7As9bX/?=
 =?us-ascii?Q?5kRo/oQYKZYuTXr4jjGIQQSeu/t1cLW7VtfNA5Px0h+JGwIOYyg61Jeg7emx?=
 =?us-ascii?Q?KvnZoKjsag49xJ74+lzebeGbQ7uNyc/6MTp6k2cDp9YClIS+SvsjVp6Bjlfy?=
 =?us-ascii?Q?5Zsm0E9+lD7Qc4F6MHE0vxYBtrZHTTa9mz49R5P9BboMcWwvV27NG6ZUyHa6?=
 =?us-ascii?Q?P93oKJPROhtUhc1FKkFmC62rxv0lcf+1ow3AvvMGe37fILaeShXq3g++kjIf?=
 =?us-ascii?Q?jI/mlKlh0V0eBJzkYRGU2iTpCZLKtaSRXCxn+kpqM+YJ8Xn5O8Ceaa4FKiXg?=
 =?us-ascii?Q?K547kV0wtGIMMnY1XUX41ZppPdlWWwJwDmvmDIZRZr+LzAIOC9QfKgUMPpNa?=
 =?us-ascii?Q?DzAhH7ixN5rUqvYJKtZNzC6yDTSm8QlgHlmIPIxQ5w4oVyTqtwb4u8U+kclm?=
 =?us-ascii?Q?JRPnkBa4LMfYNvco6XjQ2eAi1E/7IvHxBSP9BVt80mA+LAlE+uhff9UHPZt9?=
 =?us-ascii?Q?sPMaIqmGP2qkeRcIQC5Hy2AgYRoFJJCzF9AfCqdtiyRPv1TOc/4O+1CTFehl?=
 =?us-ascii?Q?mi87FaGXrBS+d/snVt0Wsk5tHyohYM1nk3xrKr1lJpnzrYNz0twGFkKKQpXs?=
 =?us-ascii?Q?WI7V1vZPkqr3Xx47kq1p/ZDsLy8P0F22yqa7X6vMB9KO94HlS1KXuykxc0yQ?=
 =?us-ascii?Q?KF21TYznk3lEc22csALZec/LC9teiMwwdxpyBTKkKuetr5wfdYbS8p7KJmpD?=
 =?us-ascii?Q?UZ+A0CfZu2CEp9O9wGaPbLQrSFqe9ka+tSVBBO5NUsb7TyCs6GMwEG1vNS+l?=
 =?us-ascii?Q?Clu9BWKl0yphLWAI1w5Qy7HzViTmMWL5n6Da4f8tUaC3h0CANiJLlo6mR1NK?=
 =?us-ascii?Q?Lu5D+AEcxOJVUf3d3qw9dvOU5M+ywz4XH8LQgz9I?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e08454d7-0dbd-4d19-c18e-08daad981c6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2022 03:56:44.9779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MPQHCW2RWdYv2PY06pLvIJ+wfzhhT8d53VMNS3/QleIOmo+3EnFlj0AZFGTWT/zhmrc3zMoC9j4AoXTAPvAk7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6419
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665719814; x=1697255814;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4AOqhUSElx9nGbzTiMOPJd2I+PLR5FwMdcgK5wxInFk=;
 b=ka3xGqjx5sWJJpbdlSyiG2pB3Mduf78lvYTkm9td8Y+TkiYRwlOxYjQI
 JlzJOrcvrIkzG9KzKnzpGsCnyNDYOxgH6uVZmsWYesHbaflrIOefq70G4
 TLTMbWTHcscjN9IvsKdMp9/N5yyidT4apXIMYfXqtGZz+5NLIofmgUhYe
 +2fRt7Z4hMMCRwt9wY1ekfiU118Ss01UcTK6/2h/x1TjyvhifDCEFonCx
 5OVU97VNgw2zofcKs3ILT9oH3dGm3/aOg4lk5030JtCxWKp9Ik00CFhbY
 oONJ+TaCvhyDXzTAQxRNlcoU63ouBgFuurOmkIFVhIRVKhKGcJraLvxKM
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ka3xGqjx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [next-queue v4 1/4] i40e: Store the irq
 number in i40e_q_vector
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joe Damato
> Sent: Saturday, October 8, 2022 3:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Joe Damato <jdamato@fastly.com>;
> kuba@kernel.org; davem@davemloft.net
> Subject: [Intel-wired-lan] [next-queue v4 1/4] i40e: Store the irq number in
> i40e_q_vector
> 
> Make it easy to figure out the IRQ number for a particular i40e_q_vector by
> storing the assigned IRQ in the structure itself.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Acked-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
>  2 files changed, 2 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
