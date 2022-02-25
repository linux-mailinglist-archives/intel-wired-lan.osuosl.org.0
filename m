Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D75F4C4A60
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:17:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D647F403F8;
	Fri, 25 Feb 2022 16:17:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VGTaBFb5Xj1h; Fri, 25 Feb 2022 16:17:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 852C54012A;
	Fri, 25 Feb 2022 16:17:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19F491BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:17:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 077D44155A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:17:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kmE1FEXPPbAL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:17:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C8F8409EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645805866; x=1677341866;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ChpyIOVL1qSocURGSuN8RqkpR0JHlFG66Cme0ew8Jgo=;
 b=YsKhO2JWfirZOnifX8D5iPFdvm7HVCPM0V2cVAGe2ZrQT2GHSl12AaP2
 niwaprcfomMYfdwuqui82D881JWxo2jGS+u/hvKkmGxd4N3N1WOwFC8E0
 onX17E5DkGRMnCFVcUXs6XMARnzZasXu4sIh74NEBQTzpJNX72JtpahI/
 5s6YKjE6NL1FYnCtRZ/ylx8i9Dxt6WHHBzvFET0qimEjgU7OKNHQRKjKN
 i1sZZom5+Et2RuA0GHekZfvQ/SzvwL1zcJ97HOoYFi/B6fH551ZCOixg8
 YjL7CX8490/ygpGtXHAjXtoyiD0rsMr1s5Ezoh2TNHwVHBYOvdcVsmQ5m g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="239928578"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="239928578"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:17:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="684690899"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2022 08:17:45 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:17:44 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:17:45 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:17:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k915FT6VMD92dOM8bvfuItoF/75N0Pda8QcdiAVVYIbD53uP97nV7PPiq/Iduk/3cutZ+YvDgFPxDFf6bmDRRA+9SYZJGPP+3wI4AD5z9A9Z/RRw7ou77w92raAur3Q7iQNhUuI3NSvVmYPAh6d9TTQxKyMOLnpOflu6iF8pvxcg7APkU8X64odaTEz754EL9NoO4S6l52x1d9f++sHf8ZTsrt9TxTGXjIlszVeaFV1wwCn3rAhuFExwY0hAPp9gQlLQMgHCE7fgmhqQJe8v9cao1lYB9f1rg6dOwIYMSO+4RXeexLMesoE6oIyfLWJzZEkpq6KJrE9i83NA86W6Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ri3ZlJ+ZbKXP9rp4tBGQc0g+STgseAqvVDYyRq/y9Co=;
 b=j4jAEWb4F0WfvKqjizdOcBzMB1LJp3rpCYGgE1ne532Ayzko42D6JkLXsy7h36ivRL6/+Nn2wU8bkzNc9/5jwoo2YRKKFRmtVVfbMFh8LOiwL3l/0qvPz0Cc2DmyLyToKbegFTbawbM9uUePH0TfbqEpZmJzZefbZPk8kw966KbjEXIoCgVLoxSOzgsFQBewX1mJLa5ZdEPWOXT9ZJJRsbpTeikGDNHU1tytchlZe3lHz7Uh0B7sV0bMoJ99Qo3pDK/uWo5p+FI2CGUe94dl/UVg8ORPFZ5IFNSGTcX85OaeUJyZDobT76wZHjqJre+WHXudSGhMn1Nw9URag3YtQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BY5PR11MB4086.namprd11.prod.outlook.com (2603:10b6:a03:187::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.21; Fri, 25 Feb
 2022 16:17:42 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:17:42 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 3/8] iavf: Fix init state
 closure on remove
Thread-Index: AQHYKLJvRo4WgbMNe0iqrtcFOqC156ykdPWQ
Date: Fri, 25 Feb 2022 16:17:42 +0000
Message-ID: <SJ0PR11MB56294189E9E945D7EAEE21D0AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223123710.29979-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220223123710.29979-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 577bbbf5-385b-4a85-1a22-08d9f87a59b2
x-ms-traffictypediagnostic: BY5PR11MB4086:EE_
x-microsoft-antispam-prvs: <BY5PR11MB4086CF7408F0F0A45C3A4C79AB3E9@BY5PR11MB4086.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m+3z+Eia5iY6J34S3K5mgXRkiwH773y0OU1gJX9m+T03FWM99yO5pu1Git8Do+yJSnga6xOi0kl7xBRRvJHeNGjyuEVgaJ6nT3jvi7XrA6vXgmHWFVXcZeM0Hb7PYrL4ez948xAge5f/dgOMvsVgM8Ir8Zw79ABngD3yhXzPGLlBLoUsHtCSQmxZ/KZcKF9Y9WZzybfqCKHKh3suYfhVi/SZRwp3dywjYgBt4NiX0whv6Er9eUbr2Hrwa0DUcBm6+vkTSS8SwW3b9+l3ChMM79HfwBMV4tyoIMpy50bhZZDPaHu1Z+uTjC8hjK7mb4ICfaaHLkL/mWrDf3znC9U9sZTnTNXbUeYGI6gsQ4faGwn/xYvLNkG0H3SuHgNz9wO2r0226s/1QkfzMrWD1/bUMJTAF977qjaYAtenIwRr1kvneDnRtj7e7KYLYTRdcxZ/Q/LgUhwOcA3ttgPFsejKCJ6+n3P2OnPVOcki9dK+3leo0SfPzJvXBvXrdNzJiZQmsugKBJ6gwPr75BqJoaNDPDkmvTUlA1IxCZ0vPiuixACNgTOZL1CKwoKDdDIEfLui3P7ftlTKRA6LRPuhN0FmEwCVVCUuFbUhZPo47GNTbJTpY8gwVDUMKSFZ/ivpbmAWVjFaANoBK92SS7yLeq6U2++CX3ig5B6qf5nK1NCE/dEuCLirO0igWcM+gehdXnz5EKtFWINKWposouO9e6iL2Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66946007)(71200400001)(8676002)(9686003)(76116006)(66476007)(66556008)(55016003)(64756008)(66446008)(4326008)(26005)(5660300002)(6506007)(508600001)(82960400001)(33656002)(2906002)(83380400001)(54906003)(38100700002)(52536014)(86362001)(38070700005)(8936002)(186003)(107886003)(316002)(53546011)(7696005)(110136005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hXWA88zUffcInszfFSwoS+NVvSuPRA5rVw9dri38TXmMEpIygiR+WJSk/ysL?=
 =?us-ascii?Q?IzmycCYRAkhV/Kj340brbfkccNWBcUODE9/jaGR6aAxzVzIFBw+4IosYmJOZ?=
 =?us-ascii?Q?RT/YtwbwCUbs+RmX+gzItBNHB9fXjckmyawCv1K6rbWal5vTf7oovo/vW9Ei?=
 =?us-ascii?Q?Scw8HapT9ISbyBkWbIvSv8Q9ankr70R1bbeZnkVdylkL6oNg3LtWsnUZ2VB6?=
 =?us-ascii?Q?VBgzjOQ9qOouudR0+fTZYnp6f57Ce2QHRRTYSuL2r9USZ4YqKAqzg4lyi2re?=
 =?us-ascii?Q?YCyCbdOQ3t3ifnMlcQ3I7FKZ1s3TUQs+KrTfLWrB167V/NEMN46QlXFMyO4h?=
 =?us-ascii?Q?evEJuEkBZhTINmp9piluIFJZ9dakgtzjEOyj/OK4oB64xAag/f0eMMDqyNgw?=
 =?us-ascii?Q?hraXwyiJYV7Irac0Bk3YXhrcV2IZE2H88yYenwmYp3UKVsBJvuekF0RdiVSX?=
 =?us-ascii?Q?d7x3NBnTBjuUnHntOEbb6Tg9fTOcZ4P0TCSmYXzcQx1eRrCp13MNC7gbXNqM?=
 =?us-ascii?Q?KoHc/WIwk0058tPyim2zTiikle1mm3RZg8WFJwmIyTu3gnYsHNtiw4SmS9fH?=
 =?us-ascii?Q?M7XEUEt6piPzYbAM1js64q9AI4+WxStKQmjkaRGVS4Kku0ZAfhjfmrOhcJAM?=
 =?us-ascii?Q?oUANnDb7S45haNJN30cl17SX+bXpT7d/5Kct3S42gc0QfmuJlWzLmXRoieOx?=
 =?us-ascii?Q?8U2hEhNR7Qm+hjIcSKhJiZTMRC5MsVR+CpAdAJlk+uUBU5OSrZNlZo8VQapV?=
 =?us-ascii?Q?YLMJ+OlQeh1AhoYZcoBIz6cmUxaxDY2ARgUMlx20GXW+0l2ncLBlc1o25kdM?=
 =?us-ascii?Q?dUlkk+BXfy6h98N7BJGQmsWV9OgbkA0c8c1fVW6YcIcjndCI0DN8WreVkdIo?=
 =?us-ascii?Q?fInhITUTL45gC7e0OkpGG20DuTDLBRJYna1TDIiN4V5s5s4SNZXal+Kswo4w?=
 =?us-ascii?Q?AE3h/9/2qwVjOzaqV/XcnEtmhRfIF5o1UWQ5jnIKAJbutGb3oe7P3VShkfDy?=
 =?us-ascii?Q?y/tmEnUy1mPyhawYG1gs0vnJB973gMepXYtPwwuEz+CQRLjkqg16a/EJUwvc?=
 =?us-ascii?Q?MH8WzdsArS0FgWBPtyk2C2/MZLT02Mealc3yHu5UqvlCksUh+2SeuK9iLK03?=
 =?us-ascii?Q?W2maw9VCgcm4KWibSyyY9kDCsRYOX5Ud2J6KWa6WH9WxvnU2fSsotQuzXvyH?=
 =?us-ascii?Q?mIDV+sZ2fCWNfTZHaCXvkvuL9SBgGv6FWDHXB5vAFYm+QeCXE5PZMjm+BHD0?=
 =?us-ascii?Q?bRlFbQYXmY3wYlwF8mJGmS4Wjh0MoHbJTVvUqgeI/GMhxGSh7F58+1mA2UQi?=
 =?us-ascii?Q?idHzcmzooC7swj8nIZn6lH2JLV0ZuVVDo5HKzoNFP9G5Mocj4TwE3sgMFnSb?=
 =?us-ascii?Q?nS5E15FJcoQcCmvT/RbiXtJJ4VzdsL8WxDfK3W0r9F0LS869QRfORnEBwY27?=
 =?us-ascii?Q?mcSRqEHP7Mhrn5yjxJjZo/KXXEErkfTEnwAO+uiEpWHiJ8pN3Hzf5U80/xfy?=
 =?us-ascii?Q?Nu6x71FufARNPXN9DYZh4C+rxU7njPKhx0lGdb7zHqp2MXlOlXE3fxPVMHm7?=
 =?us-ascii?Q?VWytnsK90jXu/p9bolwJJglkgql5DmvT/uAJKxrb1bawyHWsoB1YfRZXDbhw?=
 =?us-ascii?Q?P9TOxJUSimLmfqIexj6yb68YOVa/gjtFVfeLeAUZVO6INbvxvHKbUe+9HSdW?=
 =?us-ascii?Q?H+Prrw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 577bbbf5-385b-4a85-1a22-08d9f87a59b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:17:42.3396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E8ro7qMsdSkcaf63/Do7VwEH73ICtu3XEYUfCKSCLv41Ph9hPZ6CBCUrQr4dRoiLtX7JJzzUWUneOx3x0yX/nb40Zmfi1r1irI17v/SLSxg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4086
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 3/8] iavf: Fix init state
 closure on remove
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, February 23, 2022 1:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; Burra, Phani R
> <phani.r.burra@intel.com>; Palczewski, Mateusz
> <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 3/8] iavf: Fix init state closure on
> remove
> 
> From: SlawomirX Laba <slawomirx.laba@intel.com>
> 
> When init states of the adapter work, the errors like lack of communication
> with the PF might hop in. If such events occur the driver restores previous
> states in order to retry initialization in a proper way. When remove task kicks
> in, this situation could lead to races with unregistering the netdevice as well
> as resources cleanup. With the commit introducing the waiting in remove for
> init to complete, this problem turns into an endless waiting if init never
> recovers from errors.
> 
> Introduce __IAVF_IN_REMOVE_TASK bit to indicate that the remove thread
> has started.
> 
> Make __IAVF_COMM_FAILED adapter state respect the
> __IAVF_IN_REMOVE_TASK bit and set the __IAVF_INIT_FAILED state and
> return without any action instead of trying to recover.
> 
> Make __IAVF_INIT_FAILED adapter state respect the
> __IAVF_IN_REMOVE_TASK bit and return without any further actions.
> 
> Make the loop in the remove handler break when adapter has
> __IAVF_INIT_FAILED state set.
> 
> Fixes: 898ef1cb1cb2 ("iavf: Combine init and watchdog state machines")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |  4 ++++
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 24 ++++++++++++++++++++-
>  2 files changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 44f83e0..f259fd5 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -201,6 +201,10 @@ enum iavf_state_t {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
