Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F37D45B873
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Nov 2021 11:35:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF7F240371;
	Wed, 24 Nov 2021 10:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q1HjtNdhUHbF; Wed, 24 Nov 2021 10:35:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D71F401F9;
	Wed, 24 Nov 2021 10:35:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 952C41BF344
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 10:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90C1560619
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 10:35:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1UWiOSEEUQ60 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Nov 2021 10:35:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB274605B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 10:35:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235487122"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235487122"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:35:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="456995984"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 24 Nov 2021 02:35:13 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 02:35:13 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 02:35:12 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 24 Nov 2021 02:35:12 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 24 Nov 2021 02:35:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BjUUIsPg3JWfOiCaf7EYtZgq7hmVavJKqyaGZp9axsAipEJOEF5qyLGpSj2adojCqkkrAqxWGvWsSZvXt/nkzr+li9qTVhkqzOaFBOq0RD36zr4w7ZOC2ncvcj88dcxgXQSy3jnzeRh1Vc7/bZJnBFtdQHc2QChi77id9aqoacmFyPyC+tWWofryH3ZXopmwBic/sNxyhFYN3kKxGvb6jcxAE0GIUl3DDB/bPceISTUAle7uALC9C4A8Pc7/hzFjL+qUC1hwpiQhcoVZz9/C4vg8U3Cy1FZmzY324u1lumLgZ+jNFKGBhw2dK6PWzWODgv9zNz3h5GlZqwH5ImGOOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5s9mKK7BDkmfpfJV6JPjVEDrgIUs3dCoUJ4v/g6mUCU=;
 b=lgvgMBX3W8ofCKtCvMGsI68fz6n9A6DCBY4oA9Epcd5jebTTnTvph7YZJ9rjORJ5SOJfPwcEW80PvqEpr8koXgE9UoxpSEfbdSAfpOjA9c3wpLQ5B6eBb53OTUwltm5dZvni+r3YOb1XuPUKTJqX/fiZZGoSIn6Q8uC1+8pb9KdScDlmQ+mKqc8Sy+jQZTiEUSdhJ6q6Cej98zfNjL7ZzjObCahyyy1g4s2rKoi9SuKZyX3D6krxJo0itC18FS7gLM7YDDmqzAo4jlOtby8Lf5M9AFJVn7Wl/ktYF7r2Xbyl4Uut28jnlrCho2w/hwJXLvpX05FuKasE6uFezj2Y+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5s9mKK7BDkmfpfJV6JPjVEDrgIUs3dCoUJ4v/g6mUCU=;
 b=qHXX2wx4m7cvULKmebeca02zRSlaKdKjiKroLtbVYHqHHraqt3r61MSXL8fqvyIG+t1tMiyRJfJpmJAnzJvW7ZuKDJdsi9vcuu6sGp7JbK50KqgnXw7Gs9tUGOncBSU46bT3wENGXDObA6Qa+O+BV3m6TaVitk7/bGHA+OSqZrU=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3845.namprd11.prod.outlook.com (2603:10b6:a03:b4::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Wed, 24 Nov
 2021 10:35:11 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4690.027; Wed, 24 Nov 2021
 10:35:11 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] i40e: Update FW API version
Thread-Index: AQHX4HKpjizl/Bd8jkSwjNkLIKcn3qwSfOLw
Date: Wed, 24 Nov 2021 10:35:11 +0000
Message-ID: <BYAPR11MB33678BE1A60D2858241B259CFC619@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211123140013.21336-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211123140013.21336-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ee92e46-c137-4382-4ce6-08d9af361831
x-ms-traffictypediagnostic: BYAPR11MB3845:
x-microsoft-antispam-prvs: <BYAPR11MB3845EAE8E1221CCB624571A9FC619@BYAPR11MB3845.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:191;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OHms/XmtkDIF4lCSFeQwrVINDol2GWsHCpNxTDYLuMZzFFHkghmW+hygEVMLZ83BEEPDOEVKGmSg06nK78VzBxd5xKZk3G6V6JSVxyJ4njH2o792SKWpKPgniib7jMEyH+z9lJjr74CGE3zfg+7YOw7+wA/IY77tAAXofa5kEry9glHs1XIYm7CLqtxZNmRkLDltizbiCtINDcrBaYQ6UVUjXgHn45PzAh46uoU6s3nrbrnoW6Z9PIyxGZ5MAYJ5a95Wt5Pcu4Ytfpm6/Z/dcNAhhsA3pJfsOUGHbdnKEavll7ZxbRoOnLOGWSpi9FIAhc/APJyqSNhrqwiE9NQqnCQF/uPXsU3EVC7F+xJaUI58s+YcYch++e7ZuhC10wA4RLxhAHM2084S02kPKZKdyT+AVXBBEB0P/WVgYE2nFC0sXk+hNbD2CNqFKAsAUxWpwhO9POcQisujJS8wvpk/lKS1/DwfkvKFYZ9dqWcNRsk6qLTQTZUyNDr25AM0mpHCBpoiiM3sIE3VE2hC89Tw9C1tsLL14PddpGCDfppDo/LX+tFUy/jG+19ir6zACxyG2wjHrlPPyxp2FoSzy8Y1PaeqIonpzrPYELAiSRWCTsKGpWiNb5/fwavwjsltJAlBBmXC6Zqk+1u3kRzIGtFy8GPC+1ho2z8vYPxv+ZuFPbXl3b2LR+pRyDl9KPyPV1c3BxswUK+LSxJyrc/QHzej1w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(33656002)(4326008)(122000001)(2906002)(54906003)(26005)(316002)(110136005)(107886003)(186003)(4744005)(83380400001)(86362001)(52536014)(15650500001)(71200400001)(66476007)(8676002)(53546011)(64756008)(9686003)(76116006)(7696005)(508600001)(8936002)(6506007)(66556008)(55016003)(5660300002)(66946007)(38100700002)(66446008)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?skC8URFb43EeQi5CWTtzH+LGrlhq+OYRHyXTRA5zpGw960ShLM4yJZv4+KaS?=
 =?us-ascii?Q?DVAuDRurXja4sfLkOP7acZ6j8B6QA6YL2gp9bS5BwNl1XpNMInAw9Rd5zqlA?=
 =?us-ascii?Q?MwxBpqt1kUuL7UlbcUgGmA09QJV+i5WBlZkDVD5vz3qpM0S18MJ33ylN1PgV?=
 =?us-ascii?Q?1RcaKgTOI9dRs2vSRdQqBHXwo+hHwVmov+yaA/YfmnAuQk15hsoqueelPMNu?=
 =?us-ascii?Q?pmxTz9BGQCXlOGaCXST26auhf6Rry8t0UMrxF8bDcry9gDGWr9ZhNTbrzr97?=
 =?us-ascii?Q?m0JYKeIc+ZqIgIlVMzrRD9kAPg508ywSjq36NaEio2/OhzL3Dp+u+hsQiMzn?=
 =?us-ascii?Q?4ifiFcxXHrEW0jhnZRLnAgivm0QwXjWWfr8GCTDN/4X80aw1KKZ+EOtS3WKg?=
 =?us-ascii?Q?cnsioEdDHJ6lAfmN5RXIzbgJ2arB6H1qFUp0kSxKbIe6RkQMIiWigEQ/M2j4?=
 =?us-ascii?Q?b8J5eRyjpfGyn+1jfXDIMuq3nlRteEDX/biEBiczmQbMJHbZwx7ydA4w1zMh?=
 =?us-ascii?Q?cDR2wMr11U2l52Er6KUGvmv+YFbQFDMTl2iGuQqDNKHMAPXHeAd8SqA7cORA?=
 =?us-ascii?Q?SaePW+HLEs7SfEesBeOxVqTfwuIK0KZTvL89Fnosw4fSfU8aBvQRZx4eBcml?=
 =?us-ascii?Q?K3OzF1wBUJphJstJPW/c+daXNKMKTQepENU0aGtZLcpuR6L8vANPTSisWHXf?=
 =?us-ascii?Q?JCOPfWvcWVP8Z20Z9pcaHpiIsiRqmHJeRAn2OBDABxMTuHI+Tl43rLjC4RZy?=
 =?us-ascii?Q?PJjGi79h2ilMk0xqogVUYqqxzWEBncTVHDk8A0zF1Uh9E0RAOE4exDX6x6+B?=
 =?us-ascii?Q?mY3I/fQ+Pqc1NjZvdTZuRx3bC9w/8aq+Vsao+q3PxJvSMygiIFuFYVoJASee?=
 =?us-ascii?Q?2qtT5YbmRZzEoHVyVLEz7CqWgNS+vuQ1ghaUGvjmdwJ2KeiCIGI26zdwIfmU?=
 =?us-ascii?Q?TB0jQpbgwhEkUq/9BFHHZsMliapWbo7/RiqugN0Gfrkpo+MINcPL5SSIOAwK?=
 =?us-ascii?Q?SfIZhqJFgeDrWq6/AGx714+HSWGCW1h9Wp/FayO/+Dm5ZhZT63P+H0il1Gfn?=
 =?us-ascii?Q?qX4ruuEx1I7Gsy1qjYuTeDKUXWAmxBvJrPR/VUdtLmRRpq8rLC5nXvZMdNIN?=
 =?us-ascii?Q?LHfaZUpesGcP2Fk33HUN7g6XVgdb8UI87JzaOAcDY6yXIPgcMx6pOkhrgj9b?=
 =?us-ascii?Q?nFwzho2wQODpL/sZ1EWXOtMsOvThdV6PztiTky7DpFiyl8MRhMryrqsynwEZ?=
 =?us-ascii?Q?vX87W52MVTKpxBV1fCmraoSskCTXCs5Ol1IIJVmbR3UNrLoE2q0oiW4xcVCK?=
 =?us-ascii?Q?8xNxKhpsomBxCM5fv43lg/Mxqnfwok2Mrf5/kHuuo0CQC37DGdDf5bq/1Q11?=
 =?us-ascii?Q?mrfJUDCahVJtNPhVphdaZjIxqTEqAP+LYTuyU116bJn5ngX5JF8vZkIJwBzO?=
 =?us-ascii?Q?GwRJAspz8mBc9IaDv4REEcvQKB5GFPZ3BK9S6g7eRAlIZoxe7O5txfK1G56Q?=
 =?us-ascii?Q?WlAw2YYDGLTYiLL9QnlcZsSfWsjT50zhbk9L1oqnl09h8d8A0MO3dVPhZsRy?=
 =?us-ascii?Q?19VW7JiAjFwU5Gut4d9IeuDwvW1azkqnLvlAYi5JOl+tL7kv3tSvDAY6j6LR?=
 =?us-ascii?Q?/5IZ8HiJReSX5SOvqTUQYGY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ee92e46-c137-4382-4ce6-08d9af361831
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2021 10:35:11.7155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UIoWYy20/306SlwgZJLm9zswd2uJETYUx6AxfI3rrQWpUiSoMHiG56LxTZbR3qPxynbis1SCAAtybhA1SQktcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3845
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] i40e: Update FW API
 version
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Dziedziuch,
 SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Tuesday, November 23, 2021 7:30 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Dziedziuch,
> SylwesterX <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3] i40e: Update FW API version
> 
> Update FW API versions to the newest supported NVM images.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v3: Made one more fix to commit title
>  v2: Fixed commit title and message
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
