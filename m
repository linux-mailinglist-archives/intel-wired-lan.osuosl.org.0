Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6A7438EB0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Oct 2021 07:16:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24B2180E49;
	Mon, 25 Oct 2021 05:16:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DldkF_A08arA; Mon, 25 Oct 2021 05:16:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DD8280E47;
	Mon, 25 Oct 2021 05:16:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E1201BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Oct 2021 05:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 723C74038B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Oct 2021 05:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kwJ93MzEzYXI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Oct 2021 05:16:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ADCB440124
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Oct 2021 05:16:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10147"; a="253087534"
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="253087534"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2021 22:16:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="493589316"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 24 Oct 2021 22:16:50 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 24 Oct 2021 22:16:50 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 24 Oct 2021 22:16:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Sun, 24 Oct 2021 22:16:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Sun, 24 Oct 2021 22:16:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Br6jdXrzp1Uay34P3ZAELvfgP9/Pn8+vjgCOrRXeY76DSQkhvfxzDAvpehW4Ay/Opttv0S4sKzqG4nXlwaSq4TrltSEzlFXuQAUNOaw1CPOuWZ00+j+7c/FlWBV2E3SXWp2XN4xxiqw4HruFYenpbvBASnz7asUmrOPS8BMhZcxJyB4qptNeCpn1T9W23V8JvF9orvScV/jbUUHXDNEgYIv+lgQT/huG2t0PzFD82Stkhf/921uE1KDsXG7UWwGhoc0FfpfyGk+el9JG035XjT6kSr0LrpXtoOvBBARYjApA5EZPog+VG4ZduVkGdqKWGkf+vPTk/1rUrolQml+cyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MB4iauL8On/07l5PuleSrhYP2M/BjUCdPf0mtR5am78=;
 b=I97o9pXUw5lPMYfiVjviL4E0z6k+aDRgPPnS3CnXnJCoz5jPSnjaymLRK9zoc2DAncXNNHXt0RgvVKvBqI4n42dE1Z0T6TotfVMiLCLeE/vkDEZTlVfoqtdSzuIBpkSBuGHi2uA4tdJAhQzk0X8B3XSAEIMrvt+901j9i8qrvZPcO6q0P+ejN1QyTHROu5wplCD6rWSO+gD/ZcvNo8tgj7yzVk3OdE1gbLXT0PG68Fx2nsqzYXxi8DjhU0fCMD1r/bJSX7SAjUfIz+1IfuxHQC6swanW5QIX9KsqEIKi5POOr6Re0rxvbKUOvfTym9O4s2xcI0bQDrk2zXks9HHpoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MB4iauL8On/07l5PuleSrhYP2M/BjUCdPf0mtR5am78=;
 b=i7e8DIQioqAhTClepRFrwyGYvTBIMayqeeZM2GKuqbt5itV1Ar72ZT6/MfTw6TX7mJstjrIjc+POjPLtftynSNnajDJoSyWYCS/LMdgMIcH9Xe12HahTYQXCh6WeYq+M7sGA08FNXqQcvtZiM4rqKFYUojAQ2o3FL0zdmWql8Lk=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MW3PR11MB4601.namprd11.prod.outlook.com (2603:10b6:303:59::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Mon, 25 Oct
 2021 05:16:49 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4628.020; Mon, 25 Oct 2021
 05:16:48 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Szycik, Marcin" <marcin.szycik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Add support for changing
 MTU on PR in switchdev mode
Thread-Index: AQHXxBPOSEMFbMj1VEydvh/js9ZJpqvjNnhg
Date: Mon, 25 Oct 2021 05:16:48 +0000
Message-ID: <MW3PR11MB4554671AAC8A638E11EEFBF19C839@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211018113032.76288-1-marcin.szycik@intel.com>
In-Reply-To: <20211018113032.76288-1-marcin.szycik@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: abb82899-35de-4948-556a-08d99776a581
x-ms-traffictypediagnostic: MW3PR11MB4601:
x-microsoft-antispam-prvs: <MW3PR11MB46016D0A750A8ACEA96AD2B39C839@MW3PR11MB4601.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UbosWMxJ0hE5X638HkB7JwqL46EnU548iOLkA6BAI2kyjjVfv8Dkem1q7/92WFv5EJH+c0ry/Fw3oF8Rr/3aH95d6+Ofxn9kjoNOMmHk3aseNf95ujjWvoVKOQA9WB28pqmkButIuJBkt5EyK2bOBaCKYcDgtbcw6zoqTfnxHJG6OiE2EN6btVzShHQYrGT3NmH+azSwMSv6ebmkw4kONbd7cUYtLccAhe2Tzshk56zD5wIbkoUzPbqgjqTLhf04RhqFEi6DypaxXtHKElr3mK/cXsXMeYdZBo0oMn2erC0eB5Gj5N+kNTerlSxxbHZ3MFaVbEbSM01liwje6fxBthe7IKDZ9/LMdYxf/qmWwsCfSPvtyL/lWJkZ/dfeWzAQFTXhPddMQeGhkPjNz4isJ0INH+jBBqQv60UQngr6aFoypJAAM2p9zTN6s77VffVeQnqFA/QDLKPB4LgJ0REOVpqrYSyb8Sz/2+Ym3HBBJJ6sybvYa8mLLblmK8Gol9ZbRyGbKVQj9d2UPCQY8cDB3aSf/fyAsXg3w7u7yiOL2113oRTeuGi4GPpHevvFnCf3k++OxNW0c4HaSJUazPad0MyuM25+fvaycAENcEEpznB/UCvJVzxl9qg4mn8ItaT5jm8Ui7zpQucAJIOyoRRDpegAaczSKKXZmEBKrsqyBRZdAI6JjlqorpCQaptdWe7TAuze/PVsWgmbrBKbo0yInw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(186003)(33656002)(66446008)(66476007)(66556008)(316002)(83380400001)(52536014)(86362001)(2906002)(4744005)(82960400001)(76116006)(26005)(8676002)(110136005)(8936002)(55016002)(508600001)(122000001)(66946007)(5660300002)(38100700002)(9686003)(6506007)(64756008)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VVLMWfxd6Qxo3ubiPOuOF5uLnmyImXsBV92HTUfrPUBnoJ8V2qoj4EbB3air?=
 =?us-ascii?Q?4017Rs9JXfGjAI8LRzxEigr42ygCkzUUyleL168tko1UXTAjKZej7k/KzfVS?=
 =?us-ascii?Q?3YnGJJpmicgVM+Duv4WvtoNL3wwgmJeZaMvyg+ECSgvAMtokLamDLtFkCf8y?=
 =?us-ascii?Q?S2+vEn6Tux7s/MJ86hLGASA4HuGZoOp+X9mmzDRUP56hV1N3xaB/1sdJk8W0?=
 =?us-ascii?Q?1Jb2WTjKOE+gjxIMAwuiZ97/lcPwMVfrHZWPXexf8wPgAW0cc/Hv0fHXyBdX?=
 =?us-ascii?Q?qxYEsdNmshzKxJ3Qz6YInOqStLfN49A6alRYFiMmfmpyOi6sjyDSrlxh02TX?=
 =?us-ascii?Q?tXcCYfmBl7ysGyQgDS6nL3UiXJoAwQ3r1oU3ZsDLkvF7TEX1DR3LL/14t0Mt?=
 =?us-ascii?Q?wZHhkx0FM27iEZEIo79Ro8MgqdQ47TI+AOUkL2hhDh9+C3DrGC+rBJZU9Pth?=
 =?us-ascii?Q?knr/YhN8ClwBFXSoJX6cUWTsVWeT3nJpuRHbzhgv6PhsVaj/TAMxaQ8KETxU?=
 =?us-ascii?Q?iqiDUu28VDW7TzSvGrH5ENF0UveJSbV9/lf962xTvLqIW9JA0WJvRXbr1f/t?=
 =?us-ascii?Q?S4tOazQQRuSrmKkBVxB12VAp/HsWkujmdDgZ4VgoDDAXFDEfcYiHWP7bofb6?=
 =?us-ascii?Q?wz6O0NA/IFbdVZ9YSk8MlaWmiqVml/sTdDhRzatJ3TR9LVOxb6KeyfirFb6M?=
 =?us-ascii?Q?QnW0rglVSIAgopahQsIr7ocCW5WKBmQJw5Y+jHmJylny+gYssk9KRcaV9v2r?=
 =?us-ascii?Q?ju3uKnje4nFLOoQMjyG7AA7L8k/GGz+znkstxCWlA8ffiRGVhfN0kQo9mle6?=
 =?us-ascii?Q?EPg+sQ5IAXFyeHN6UCK5QnXQhI9r5OvBBsrr7T2vS5aFvn6A/zs25ElvrEIj?=
 =?us-ascii?Q?jOCEFgysa2rvV5Ia2aKfwKwVYDpm08DNA1ziO/hQ/fG5IAkD+cojPBcemgm1?=
 =?us-ascii?Q?WjVXNBG7bq/fYtHly4PsNYOZuk+/WXEq4QPBM5642QIq7LkQsY+cPzpb0fsg?=
 =?us-ascii?Q?iNHQY7TJgRue9xbnITTi3Rm9ptoCdyKY9DGCkYG6Ls2wf2fZnyij33fPgpQX?=
 =?us-ascii?Q?N2hHcZrcyfUJdPqpg42ZDehWl11yX8R6ae8Ow7SinvEE3UCKbt1vD9hoGpAD?=
 =?us-ascii?Q?nx4Hh2Ww+1QzxbBNlFKVUktEkPiiSmaCVZS0KchCTspwTNHlXJUTxR2hIGKc?=
 =?us-ascii?Q?0zRLw2XGKCM1aXbqNRIgDrcDgjBQRrVK6hMFQ6TXcz1bcNdJSeFHV1xQIojJ?=
 =?us-ascii?Q?e3gLRkh80bDiM80Aa30gcXYBWpm8EgtFlws9V0Txh/UeUOPegj0uSg+XjabK?=
 =?us-ascii?Q?ev31JYGrKigvD2chiYo55MBTzIN0pIvyYuYELW5KD+gXI/W4+44/v9x1MiDA?=
 =?us-ascii?Q?VKrmJ0Wch/BDvubPNbt+Y5aEcvi4wf13Rn5Y/S//FDSk1ZogJHcKREZVzvMB?=
 =?us-ascii?Q?fu4N1Ry8hwqmlf8mf6PcxIOBj5GonEU9it0NjUTZ4NUw3RmqV89+OcsbWvoA?=
 =?us-ascii?Q?YlWxTyW0Pv2stBzil/y+qg0m6ep5M63an8Q70G5r8rH4W9Xg9mujUMRxDwEV?=
 =?us-ascii?Q?FOnGxcVpBDz8vl5NpHUGYMukw8gjj56oxO7CmkhbLNEimviFelCqUqcF3DXy?=
 =?us-ascii?Q?bq+bm9/paeg7PALSYF5ZupN3ISfmFS8tr8ezuS/v4kWXo/0Oq9utM6GEZmK4?=
 =?us-ascii?Q?VSDPuQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abb82899-35de-4948-556a-08d99776a581
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2021 05:16:48.7650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CgfSFBPzE7qjHhNpnWkgs7Foo/M+lDsMwfHLSos5Rz7TsrfCNerEh+NIogvhHKEjUAIjj3d55a1u3FAMj0XZXVL13ZIyJAc7cArJ0HcipVg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4601
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add support for
 changing MTU on PR in switchdev mode
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Marcin Szycik
>Sent: Monday, October 18, 2021 5:01 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Add support for changing MTU
>on PR in switchdev mode
>
>This change adds support for changing MTU on port representor in switchdev
>mode, by setting the min/max MTU values on port representor netdev. Before
>it was possible to change the MTU only in a limited, default range (68-1500).
>
>Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_repr.c | 3 +++
> 1 file changed, 3 insertions(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
