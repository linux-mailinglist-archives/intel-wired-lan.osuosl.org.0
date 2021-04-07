Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AD1357857
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 01:14:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E607640341;
	Wed,  7 Apr 2021 23:14:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OcO1GA63tGrC; Wed,  7 Apr 2021 23:14:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBACB40342;
	Wed,  7 Apr 2021 23:14:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE3691BF41C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 23:14:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6B5B40342
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 23:14:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yAbCrCjtBGHw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Apr 2021 23:14:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D53A440341
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 23:14:07 +0000 (UTC)
IronPort-SDR: EDtW9QqVyl6/gjuE1oW7PeH/1oJ5IfIGtq3/lZHEmKt+AugRBM5HyYPWpvd0kcGNgk6EQG2HQT
 ntvvNYyipp6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="192955509"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="192955509"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 16:14:06 -0700
IronPort-SDR: EzZALRVlWpZQIm0SwxYGoHsUGsh5bKdD3RGg9mx/Y/Vp0WHNmW8y2dqhp3zI2LGjdkjMFWvLZb
 k+qpm0R8ZV5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="387171691"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 07 Apr 2021 16:14:06 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 7 Apr 2021 16:14:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 7 Apr 2021 16:14:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 7 Apr 2021 16:14:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E44P/YAt6E+N4rsNdpn43m8NuUGoTMeQYMdJ6Pqx1qM+i4x8Zo17woSSH+/e7w9V+hqKhif+NYx8qVZrArkHPmrw7yjihndExo/YZseDybOWHCwknjuyB0bfPoYBsGlXlFmvXE7KW3yp8toIscKxjJPrhO/rxrXlBRRnYJdtgySdJyQixnoN+yIQPPCL5IZvPgBZ3p1rQX451u1le7TOqR1BXw8L2EzpIhMchEFq1OKQxEQCaWRteFw/HUpP3Lmra3Is3k0aV0UrHj0uPbAgSKWFAwLipY/37Ru/UM4q9oqrZg65SuFFmQepceMhJ7Hl3t0a8HvfQj5ybpaLXP7ifQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=asaYRSxut9PTbDt1jBMgV/Yv5/mbPzPl3xn5NZCKTW0=;
 b=ioJSAB/YiY7V5JJZdXZCm1pUfaxQEDtJ9FfO3I3bGz3RrTFsOye0U5ccS5XRfNVNY0rFjo56k6/kybFyH82Bj4NCoQ3XWCMw+cQbOIF6lWpjPRsbfCDNqxBLuE/YS10SeDltXFxuZtdGNiITLyA0pf9Q3bMaRJjtVC36a/ffTYcilHv7uZcaY/tjo5qbOQcTIXIq/DvLuBKXhWCjRn37z/qNzEhm1I/83pIn80sBM1K8CriPFGcD+PFq5GWC0fsGo3re+mn90uXjiEuTRed7PUXH//Gpgp4ArQZoVPdoWM7e3pBnRduhvF6KdZZ6qOFhrGBIfSUwPXQfI9/XWSLJkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=asaYRSxut9PTbDt1jBMgV/Yv5/mbPzPl3xn5NZCKTW0=;
 b=EJaQ4kc3CQFzo0+IztctasHMpEsCciE4MTn1W5nxHOsDf3Lwfpo1XUmKy+/dcOYaYvvuEszeZ/I0zi4iAcHw+F8fQnW3WsV/LztlCNIn2DK2lCB4oeQavlA+V75Qi6DH59aEAXivVOupzAa+VYjI/f6b9Yy46hXAyPCj/KzYZOQ=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB5121.namprd11.prod.outlook.com (2603:10b6:303:94::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.16; Wed, 7 Apr
 2021 23:14:03 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.016; Wed, 7 Apr 2021
 23:14:03 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 07/14] ice: Fix error return codes
 in ice_set_link_ksettings
Thread-Index: AQHXIcilf/x9mmCyYE6MFOqoWTKCdKqpw7aQ
Date: Wed, 7 Apr 2021 23:14:02 +0000
Message-ID: <CO1PR11MB51051794C3F9282D593E1518FA759@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f50384bf-89bb-417d-c7ef-08d8fa1ad58b
x-ms-traffictypediagnostic: CO1PR11MB5121:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB512134AC63DA0C30616145BCFA759@CO1PR11MB5121.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nRmLy2DZLqG8NazViN2F7BIJUth7PeTwbderDpsezKErutRjhWyGPOgE1ghcl4lh962o/T2+mAhJmhDpaqtoHAzZFGSzwrqxYAcpDy4HDe2gLLH8W1p58nmtv+Dq6KsVovkxqbPWOjw0/MFznc1wlDBo3U80rppVj1MnpU+IQceYB65Cau4yCpIXZi7hcvfrkP5wPRQbWAJuivzfeLQpQnoSWRSUGYnhz5qrILh+eCpmiwQjmlz+34RlPIE+fRR8OezLjah7EJn7WpM23b17iVZ+x3l9YwVNJX4vgadTzvJB0l9MWknyqy5D7a+glgbOXRsg022dGkveBVr/mNygrE5kzOpKnByh6dQ2PIlxDpQ2PH7i86ZQ3kqTgexbd9DMfe5LQdvWTaD2bQaKAo3irEXOvaiMd+9Ds4ma7GU1uNZj1qv8BM8I3eAJLozJ/aqAFwtpSUWLrqIFiduER+gAB4Q+t3ohfS+gGRNhf7IhpW51zQBrmTe63HM4Fk6Thp2BM+hP6rYYGWewd2LSh3Ps/5D9GKlMQ7egKvGh8r261pMUuP5BnO9NDvgZioCdhCK0jxbVh6W4uDLnSDT15+QFa1va/duU+h84Vm8p8e/t3+15+eEWU24HaXJkEtJ2/DXlhZp1d4Sq9Y+1XSSxf5JHXzDpbPWYKlkK4yZCaaeu980=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(136003)(376002)(346002)(396003)(64756008)(66556008)(6506007)(8936002)(7696005)(66446008)(66476007)(9686003)(478600001)(26005)(53546011)(4744005)(55016002)(33656002)(5660300002)(86362001)(66946007)(110136005)(186003)(2906002)(76116006)(71200400001)(38100700001)(52536014)(8676002)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?5qU4qbixTjuWqGfyMcqSroCy3DfFKXZ+YGTJgJRZBP1lOaOshUv1zviMil6Y?=
 =?us-ascii?Q?9qeZ70oqv8Lk7rdfbTRP0+iMcfzStoIA5hX6hxlx06OGCn1tsga/ch7DV988?=
 =?us-ascii?Q?nmaqQ1PkUWP3bQByrUY7bZzHDJFm1VG0QSguqX2hRUTBQCL7dQ6oVOo95qQB?=
 =?us-ascii?Q?7kWvvnu3POHJ+EHkQOo5CXAHMp88OykpwA2pwe7tREH6wBpI4jJSTXFMtptC?=
 =?us-ascii?Q?Q44gXsWNgLMsaaOxCqJV4Vzll5BfnGAJR45KLeDv/+ePOIrFd8yH9c7TWE79?=
 =?us-ascii?Q?bkNa4jYEX/g497hYfDnv3ND+XowgsfqxWBiq7zw+jyz0OOQ+K3BTya0NkKoJ?=
 =?us-ascii?Q?4gK6uG5YF9UO5PJxF8/z+da473BBpgVFycmoXpBG0rft3LIV6O8xY/EMoEbO?=
 =?us-ascii?Q?qlp7FT89QkEGSGF17czFq53ENEKXEzYnIYoVi9M/bYQ78xwzFKzevWmLsLEl?=
 =?us-ascii?Q?fAALIrgEmBPms1tThq5HLcO6BaQ0+7a5qw4ise/Zc999J8G8NldT8r1C2EnI?=
 =?us-ascii?Q?T25V0DA6scu4SE4AHk+838Pcg4DmbaVqchZ1P+/qsPzd2WkhOlFzb4Or53GN?=
 =?us-ascii?Q?MammAMbSfPOEWbuasdCST1nhtNbVRj8Si+V8oKa9sDgH8d5i5QF1cxV/UtOm?=
 =?us-ascii?Q?9eBvUgb7Yxkqm2/jQ4PVWSmgQv7zfWDIMXF4YwfBd0yvUkGDRZj/p+3jtNy4?=
 =?us-ascii?Q?wJwgH9dxzPR1L8Plwl2wVJq/5oiGCAGRtdhVZtyxfBLxFVIcgBLz0A0V4Vbu?=
 =?us-ascii?Q?snjGPmXlQ+nXvy7j8i7YTQYawEUhBB54dzXvdxfX8DXtl9gaf1Qwn2x63aKn?=
 =?us-ascii?Q?9w3uf1WxWPIuLVaKVZV2Bfzxo09DMddg68doIOx4O1qAx1UzR5OJCWmUzzNy?=
 =?us-ascii?Q?dWM1sBhfwR8GcXJa/jijOh0xiCYHr9AvVUkpzJq2rnWVqOd6xjm+ML1MVMMc?=
 =?us-ascii?Q?3+1G+SLvANY84hB2HvW18pkbNzDfI9J4+IW5ZVAf4Vacg+Qvh56KvWOz8ims?=
 =?us-ascii?Q?c9C4Wqx0JUO8i4pDr8bSBYMey5vwBeQOAZu+IVrrC+Sdp1vbBk0aqyZ5vqZR?=
 =?us-ascii?Q?o9zUXmcHQBQRNeQc59xLJA1DgFlCtg9ZqTO4vOt/Q8JaItFk03bMHEdz4n0I?=
 =?us-ascii?Q?mvWqsSNcHCO7wyTZIKgATIsXNWoRUhLu3F/5uJ1DgCxvIn6iBbhPN8MTQBmn?=
 =?us-ascii?Q?Mq4R+MgvgfvqfrO/MB4An9X/qLsM47/LpJOvO/6hPocbkrIwvEPEXEoabK4K?=
 =?us-ascii?Q?bBzD0pWMcQSe2yV+BDKC0lDXvSsbI44fyikidIjMQN3OnAwqjHyCIko3Bhd9?=
 =?us-ascii?Q?82IExnzZAcSuqaK8G2hvMs9A?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f50384bf-89bb-417d-c7ef-08d8fa1ad58b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2021 23:14:03.0561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +3jFboXAjd1z71NwTUbiRIO9crR3ED8KYDpNZxTVEY3OKLoBfVzXrxQ17nfOED0x3FoUY1amHe6nWF88lsPJRJDA4lQrtqfRxso39zJSHbA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5121
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 07/14] ice: Fix error return codes
 in ice_set_link_ksettings
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
> Tony Nguyen
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 07/14] ice: Fix error return codes in
> ice_set_link_ksettings
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Return more appropriate error codes so that the right error message is
> communicated to the user by ethtool.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
