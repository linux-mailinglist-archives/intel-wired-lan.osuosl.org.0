Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8044F4963F0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jan 2022 18:28:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1791E83E78;
	Fri, 21 Jan 2022 17:28:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HxyP2d2-2SEA; Fri, 21 Jan 2022 17:28:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A77083E75;
	Fri, 21 Jan 2022 17:28:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F41F1BF861
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 17:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FE1D402AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 17:28:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7TnycEznNfTk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jan 2022 17:28:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1FC9540295
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 17:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642786084; x=1674322084;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5hiNfhHw8YMuzKG6Rzyr0zWsMKq3zsy9vKRx9SaDNNQ=;
 b=BxxlfE2vJUzTg1WTicp9IR6/3juyFTVJNo7EXueV9gIDFOv603qQR3IX
 hq8pC+1wnmKHBoXqCx4AMew163Y3Zzk3JFP2dcQyfcaDyYIMmBEjFG9CT
 lGRnaMXgFPp6qY37XAjFbiLNzpDJho1sFL+DdFyjAlnwfA8rizOEDQg6n
 6nOiy7tszdOxlgSe1uB9roHOn83cMraGEjIu+KwjC39THTVUVkbDPrGQy
 XMZnegx+vZ9Ue8UWgxZW+oyOyp9BVr+a4AmD/UCnMD8GI9ttbJcPQMGVF
 4kGetmlZiX0YY+VI0Seugqm3AsgLtJPFPFsdV5F1+P9GqZl2RrnU3Cv+6 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="245650486"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="245650486"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 09:28:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="531459326"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jan 2022 09:28:02 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 21 Jan 2022 09:28:02 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 21 Jan 2022 09:28:01 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 21 Jan 2022 09:28:01 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 21 Jan 2022 09:28:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k0LgduCy71ZnRWunAFZ/KKwQV4mTZgIlun7h9WfYQvxMfsuY58NTEKk2ox1H9j7/0q4oE8JAkVQ5KITld5t92r/975r/bn0UT4PPz8gFPi7fwFwNYl6dTCML7E0bodYrCbtM5JZX2nvfNaAGPD4ltrkHvQ9wQL1KE/Hmz5ou1WWvG3JL4k+1rpVtXrAn0sUnpsuNtaJMly4EgzG/0ZQa1BixjKF8g9PdJrxTxfhWTMnS7OskVgX2JerqAy6NOc6QH11FqnXe+n9jSQ03YlpyukiQCGeTtCtpeUg5qrrsqcisXcRVeqiV8tJVe1y29T0vbKhlQx9eDMnS3mOg3D4xhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=boi/ofiixH4HBIt0JqO0LvYRwgFGRufD7laa2Ghu5yU=;
 b=a0vGv+vM5YlVdicjO4Nk8iCzzZO+Npg7XD5/FbtgMxAU6AnOUI3sOR9zA5v6stU7ZUgMfn1REFYY1iXQ/o/ERYFuybkCM9LuAauCDB3kdUEzz7q+VOVtABqNM1IPAuaOQx2SJ75pq2KwFbXMOn6DKmTyrUSmR7exapn8UzxO5AkrKYlRfkUfK3MZnKcdBlUl5X3KjNdfqWHcusfUJzmS3gLaxU4QLeov98QTqNdq+SV6dHGwYtKp3+sCJhvoMWGqV9xskwN0qYBIJGICPAwAE+qq+B+QvMhCVESITcOhiURuhme+LxahR3552o61ptKWoip5QYb/6CkaRa6Fe9VOaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SA2PR11MB4923.namprd11.prod.outlook.com (2603:10b6:806:fa::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.10; Fri, 21 Jan
 2022 17:27:59 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4909.010; Fri, 21 Jan 2022
 17:27:59 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 3/4] i40e: Add new version
 of i40e_aq_add_macvlan function
Thread-Index: AQHYCUl+yo5MeM4FL0m2dXxBZ5pPcqxtxXnw
Date: Fri, 21 Jan 2022 17:27:59 +0000
Message-ID: <BYAPR11MB3367A2DABF53909336985B2DFC5B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220114131931.346687-1-jedrzej.jagielski@intel.com>
 <20220114131931.346687-4-jedrzej.jagielski@intel.com>
In-Reply-To: <20220114131931.346687-4-jedrzej.jagielski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16b31d59-e4bc-4d38-3915-08d9dd035eea
x-ms-traffictypediagnostic: SA2PR11MB4923:EE_
x-microsoft-antispam-prvs: <SA2PR11MB4923BBE23E7A9391F8ED014CFC5B9@SA2PR11MB4923.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8b2HVE/7FsvmsOw+Tmxyx2hdPMPnltf+Vb+p8bzzI6aw0A6R1UP8P4un538g6KpVp1OX5WrdnBM7Y+oEixpffUpe+8PLI3M/kVfr9PE5X2H+ReLKFkCnD7m6Tjf17F7CoiRCUlL/IH6rwZxJFzaYi8D0F0PyaLsB/JUy8kHfVFEEl9oyPb7Hf0uH9FflpRVYXrxQzOAwOj6v5udyTu7x6Ji1IOCIypkp2MWzrjeo12FThu/DqQ8HVKiXpqFhsTdsnqvbHbELCP8Ygg1h38A+sjLlKXijFZmPwMJ+jtZVw3aW0ewTcBDRWq5yKnoaGsewgpgcWXLoKyYZfI3LTT+euiVcakNw3XvBbRJbkituoALKYJkmQ1Zd699B6ndkmeN3GFwS6q5a70q7lSvptovJXehnUNtcqSIBu7ktFPPmmLA2E3KtO4jsA9UTKNmx7WCvK/X8NNhWL+sc6nGiE/iJz+V59SOhgtK2v+KNUIC/DTr0Ew6iFOMUCnCKzwfb9iuXDNRBTx4WgB93loVb6fqFUi1rm6dnnjOmmw/i4GQU1KhjKdjEu47iM7wacTHE3s/8ky5TApF6h5LEOVb4hL5vEprALngGhm7dPl1xIMTFvlZj+U9lf2fQNORxtVXfAqD9HQwLWMJTOxfhPE7i7EH/MSWdQuuXSYQmpGt2387ysnvGa1IkfNxZmSgUKSLV662Lx31xNQ0o81leJ4Hcs/Zetw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(5660300002)(26005)(316002)(107886003)(8936002)(82960400001)(9686003)(55016003)(38100700002)(86362001)(66476007)(8676002)(122000001)(76116006)(38070700005)(52536014)(66446008)(66556008)(64756008)(4326008)(110136005)(2906002)(54906003)(508600001)(33656002)(71200400001)(7696005)(186003)(66946007)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dXOXEKIRN8zznHqkgSTy0v3aqXi5ScS8uB7FwaP17CAuCRV1AwliSzu1+khe?=
 =?us-ascii?Q?CgPQ8qU2xAiUOwsIQIbNP/PrJ/3N52CSkVAZpw0ufIlTuqJnNVMVtuJhXfXG?=
 =?us-ascii?Q?F2Z9tWqsKiGArS6Hiex3TUxjeLlpCSOYCgpWgg4ouQ7bSn9yaUAhqMVy5dRj?=
 =?us-ascii?Q?paEE3RPqHFUbMEHgNVIfE4cNN0hqJeb2bZ9BShVUrHtqoq/2gYStR6i7sl9W?=
 =?us-ascii?Q?2dyltVNfqmvM9TnPTVCYocQoTA8N++Qu2aQUSHtsPRzVwcLCPpWOGPbrKSOL?=
 =?us-ascii?Q?kEsA9rXDvlzft2dSHYznrVe5BDrCKqXN0vCW/H57ffyBnJ6NROS9aXgsvYYa?=
 =?us-ascii?Q?23PW/M7/guSGuH807hgDLZubcWfM9wQBKqpOFhViMBjPOhP30NZiLq/Ttay8?=
 =?us-ascii?Q?ubk6xGJhtzniUVcw+EStk90dTHUxa5l+456HG1GjnGboHXKhnfb4LC57MUWK?=
 =?us-ascii?Q?L4XP5Z8D8K3VkUtYdmFbtFS8t9F3C+ZjtppcTzY3fxed278TEHdNOwNf0hLA?=
 =?us-ascii?Q?5o6XdSFggcnaP+ddfyQ1wYNKMTw4BPCG4S8X5uFjro7zlepqQcSDcXxzQAMh?=
 =?us-ascii?Q?iWi26bDJoZI6PXRiWH98Ialgbi6oujJeAEzYtY0UaPIjVQctuNcxui2gpRD3?=
 =?us-ascii?Q?9xbontv6r0kCy1/lx5DbO5qx1Ny1JLCcX2W1lwz1BEqjZyBql1rmd3I03tIK?=
 =?us-ascii?Q?B3m9wp7hnsZ1N3r5+lEiGIxCrPVD2NR0oXUxkRpkIPHW+Dsp6U0OBO50V32f?=
 =?us-ascii?Q?ypVzVCi0Sjs9IhSLXxBtemT8isdmzolRY1hw/QFCMhF7cG61SFAKKyNVgWuX?=
 =?us-ascii?Q?NuN8hyXwemkximvRMEkycemYm/InShHJ7XUnIcibBfF1U3kAxI2uBPoQldrQ?=
 =?us-ascii?Q?Jib44ddVkSBoi6ewFjB8RPGrq1OKSyObhXTteYJ33P/G/HA9pIWuwbuclkKD?=
 =?us-ascii?Q?75zCZ+Ft3ewc24OHNWx6ftSC7U+LUCpH6U8bCQgSeAvynZTQGbq7S6zt+LX9?=
 =?us-ascii?Q?v5HjiUVKuasoGNh6G+PHeqeBYXJECEwOw6AP8DsU3ntEj0P64XQho4KPHo0m?=
 =?us-ascii?Q?OH3VsRhDCjCrM7GLu54qnxdp8Tge/0H29YTYtum/BhhM7yhk2U3KJzyGLs4b?=
 =?us-ascii?Q?5oiUIjHni55WQkaYiVvHj9B/N8C+/YszdH3IbbrPJWkJ1TXvUAJ/7KGMFejA?=
 =?us-ascii?Q?Nwq6hnCEtdMy4+ty0QMQGHwSozAy3AQxQSLbTgjQpZW8O9CHPRT+Fl2WBecn?=
 =?us-ascii?Q?5Z6sdW5je7TSYkOWy3Av2ZovmltwvLtaGJKe4SnYfMWJW1H4okDBv5wUyEuR?=
 =?us-ascii?Q?z8Pwzn5VTPgBKNB2lKewMghVv+Pt9wCJjbvOIdyLvsrODGzlDy5Gu+Fyvz6C?=
 =?us-ascii?Q?69Vxn+nSmInjD8WmBdcwwk33YScSdA2CMhGhiZpNLlqr7sNbJn4luMde6tTb?=
 =?us-ascii?Q?PbOe8nCChruZFLxdWy1+jc9ATR+NfQ3X39wNPk6MVWMWBUIsSEcLmsTv5P7N?=
 =?us-ascii?Q?P/CE60Od3uYGKj/M3SmfHW+NyF5Wn2ve24ORUIojW/JNzz2IWYRHBcDORPfH?=
 =?us-ascii?Q?EVfQoSup7f5Xxm88SsxP0+GDTXlKcs2RpD5NxEalBtEoVKy0Qwg4/z/HknOa?=
 =?us-ascii?Q?NQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16b31d59-e4bc-4d38-3915-08d9dd035eea
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2022 17:27:59.5434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f/+tRoTzOsWrGxE5VKNRplPze+0+aDij4J5dgmTVf4gYuAyWXWpwkoN9Mso4C1Tzwi8XIIGf52qsdFK4/cHm6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4923
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/4] i40e: Add new version
 of i40e_aq_add_macvlan function
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jagielski, Jedrzej
> Sent: Friday, January 14, 2022 6:50 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 3/4] i40e: Add new version of
> i40e_aq_add_macvlan function
> 
> From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> 
> ASQ send command functions are returning only i40e status codes yet some
> calling functions also need Admin Queue status that is stored in hw-
> >aq.asq_last_status. Since hw object is stored on a heap it introduces a
> possibility for a race condition in access to hw if calling function is not fast
> enough to read hw->aq.asq_last_status before next send ASQ command is
> executed.
> 
> Add new _v2 version of i40e_aq_add_macvlan that is using new _v2 versions
> of ASQ send command functions and returns the Admin Queue status on the
> stack.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 92 +++++++++++++++----
> .../net/ethernet/intel/i40e/i40e_prototype.h  |  5 +
>  2 files changed, 77 insertions(+), 20 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
