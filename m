Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 920C840ED51
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Sep 2021 00:27:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F2D0414BE;
	Thu, 16 Sep 2021 22:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I8HP-7XaADg5; Thu, 16 Sep 2021 22:27:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0918E403EB;
	Thu, 16 Sep 2021 22:27:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E2CCE1BF870
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Sep 2021 22:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF6BF400FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Sep 2021 22:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tnLXKyOkkowd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Sep 2021 22:27:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E29734029A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Sep 2021 22:27:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="222333473"
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="222333473"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 15:27:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="583809846"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 16 Sep 2021 15:27:15 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 15:27:14 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 15:27:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 16 Sep 2021 15:27:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 16 Sep 2021 15:27:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U1z8MwwUqAgUhim+VFYAEwdbp9qk5DOHRz5cKTfVly4k9NbZ6sz2toIVen8tqCMrQz+lknmytXefnnlp/aivlAQtNiFzn55AgDVYe9YNiTEolstQgOAzSD4tGRGo3bFWUy6KUFRcCPXgXOO8wQsrbnza/wfFiRLcWUKXVkcGuc9nfGG+qyWVq6GCiXorK89OrB43AYPC9gnHv43YvvwD5qUE+NiIHZbyRssAsNOVUDyGDEYO2yRS+eh8aCuhzwYJj5C668tLRPeh1DOu5VI5qWwUP1wMVk8XRxYn0cbhBj4C8utvv1JyHmITkFK/OwLCViWIJi4yBfP/97Q61eq6LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=l5T+V5gAshnosyPfRhPOtZMioaQBvQXzv5kClOogzHk=;
 b=cQDU4fnOXCdY5mDB24jIE03hzPrdVHYInY86jjwGfDSX9QbYc48/AxDLGgiOWpgydxOoxgS0QMEY+sq8Q+8pq+otppkIe/euvgSZ6lwXaSuFPwyrDnUutdvSnpkzxABWgwDnq2QdJJvCPt1kwUq+SoGaaYZTcKLgmUO/2Yx02YJeFMAn262lhsD4zFaCZpjIz0jBhpDphYYA1a1njoamKyek6xUVpcThJD+Ozn7Qm2Y5extWoukAnoLtkFgVYjywCovmoyyOdJD7epb8myk6ZGHFS5dngFUdWXsiysXd81g19Q0h6tb0fvX4lHVMw5hTxifORFW5GH7K+FwlAtFPpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l5T+V5gAshnosyPfRhPOtZMioaQBvQXzv5kClOogzHk=;
 b=U7w0dKpa5PgJ50okzQSrk7swTy7GqifyJXggiD9jjthFAcwVxyVQMNymbw/MR6KGP8cpYiYhooQJ5diqeSulr/RLrhV0WLTrMrluK3cUveyBCVWjIdzJAihIy51j3xu8c/r/GJxN1JmxDv5P2RC6jexmu5mhJSw6CCmst9+q7Pw=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4656.namprd11.prod.outlook.com (2603:10b6:806:96::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Thu, 16 Sep
 2021 22:27:09 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4523.016; Thu, 16 Sep 2021
 22:27:09 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] iavf: Fix displaying queue
 statistics shown by ethtool
Thread-Index: AQHXqgrgRjhTs/VWKE2iyHOaymOGu6unQQOA
Date: Thu, 16 Sep 2021 22:27:09 +0000
Message-ID: <d57cbbe65c1b2750c815e7725e9f3cd2896030a3.camel@intel.com>
References: <20210915082107.24204-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210915082107.24204-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: acfb98a8-8412-4c16-7c58-08d979611f70
x-ms-traffictypediagnostic: SA0PR11MB4656:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB46564EBA33F1D337243A5F93C6DC9@SA0PR11MB4656.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ISiFzS2CRCpLiJ11TDwEu7KI+iO/tZQrfW4YIsdhhjDlWPO4CoLQSBhhLWjOkgOqDKpQFU6WYlC5U/b3y2MHUH0ROI78JHGjWnDwD7vwa2xtCXe2W65GgOpneCqjqrtsKzURsBfk2Gfkc4g1QIkODR/JGNap7jnlMsi4wTn4BQ9QiAg1dThCYSX0q8P9lnMaNs3YNsBCnEL4YCBgdlMboBIlJlAqm3OSeXkBUxpegi+zQxnUeopmYGwxBBA9uHkjf/RqnS2rOFZPYgkXGpf6W5jKKwECEFzCLlmBbMFtCecjAp89GrAiV7SO7bCcOwez2fXFKL5X6bhzoKaXfcGufpOYj+Yp1vaJKuajNoRJg8qXVobxq8bwnowHJJwrr/+2zxYv2qKoTs8aHe8j6z2JfRvBkUA6vli4RzKhCgZsLNsSC07NWJf5qmgCdztW+TVZ9uVZTmngwGsnEwcgY38Fp5Vb8pDjPJJZbE26qWR4ptOc1zWeibKqKRttAcet4OrsNdfu4wKt1d+uDtYH7IqWJrMn62SoWQpA6pUHoWy4mcsnJeiMsq5GFeD+eKlM8QLjAi6PiJ/sEqKFMFAoK5bBSTfE8aCZYuOTALW+isEacWq468C6HK+c1lyKedFcZC1eKnCY7rbLh3zMfkj1kovpIpdUPyWFKGMzWQlR42lPbBH7h8hpOBGL+k2oDHBmkbBD8SbiF9ZIUxrWKZfWYkatMQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(376002)(346002)(396003)(39860400002)(86362001)(316002)(83380400001)(8676002)(6506007)(71200400001)(54906003)(38070700005)(6486002)(110136005)(66476007)(64756008)(66946007)(2906002)(66556008)(91956017)(478600001)(107886003)(5660300002)(76116006)(2616005)(122000001)(6512007)(38100700002)(26005)(8936002)(36756003)(186003)(4326008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFFYU0JDaDZLc0sxNnBBOVBiTFJKTDVyS1JXbE5RZ1VJQXBadnNxZlFBMUZw?=
 =?utf-8?B?YWp4VmVEKzNvL3pYQ1NyVFBscW1kQk4xSVBYT3U5K1ExRzNKL2MvWjBmTzAv?=
 =?utf-8?B?c0grcDI2ZlJYQmhwanV2d2wxSmFQc0MwTXcwbHBBaXNaZDJ3eEpjcTFuU1F1?=
 =?utf-8?B?RXJiZUxOYk5MWWxDU0p5QnNPWG93bkJIMExsNE9WVEVBWHNuU3liOHZYUURL?=
 =?utf-8?B?Sm5yMDlVYzZsdW42ajJKQ1UzSkptb1grRnZqM1llQkpWRmpxdzR5ejZxbHFM?=
 =?utf-8?B?cVJrUmZLeHhyZzBHVzQzZnQyUjcxRVpXbW5wUExFUUluSDVybnpBWjU1YzBt?=
 =?utf-8?B?QlJucjdpYW9rZnZ1QzhEZzB5bk5aMmIwMHFqY0R2Nm02bFcyUDZlL3VnWVEw?=
 =?utf-8?B?TkZhby9OTVUySzc1czE4Tm9Fb1RKZ1NlSFRsSkE5UnUrYnZ1aXR0bUlOS3d4?=
 =?utf-8?B?cC8zUS9FNTVMZkgzdUY2aWZPclBNa2ljUU5mSXRtZmJzZHlXYnR1TXI0b2gx?=
 =?utf-8?B?UnlnRjVjS2V6bFZLZ0JzU2dNME4reHoxNTFvU2ZTOXJhK0FpQmUvUjFVYTU2?=
 =?utf-8?B?RFdYanJDdGVUVFRkc05YcWVuL3FaU1gwOVl6Sy9NL3BHRHYxU1ROYllrWGZ4?=
 =?utf-8?B?Kzlmd0tuUkFsdzBhU3doT1hxVXVWSGt6aHBTSlVDN2dLYWJlcU5sZFVhc1Rp?=
 =?utf-8?B?R1QxT2JOSmhYRmFYa2tDS3Rsa0oyUUlRamxsTG0wMmtYQmNJbXpwOU5lUVRW?=
 =?utf-8?B?cHFST0ZVRXkzRkwxZ2t3eERXNlVRbzVzSjA4RDZwWktDaWdKTGdnRXNHRjhU?=
 =?utf-8?B?dndVMy9pbXNvZVppUHJqUy8vQzIrc0ZTMi9CeDRORWFlWnhXcC80MmovMFln?=
 =?utf-8?B?ekFvdEU2OWhwcVZneDNOUE51MzJJdjEvVTNXVkxGQ0tHbHZvSTBFYVNMOVlz?=
 =?utf-8?B?S09vTkZCZDRLVU4yV0hYL3Iya1dIRjFKRTFnMHBrSnpkZ1NjVEp5U1lqcFcw?=
 =?utf-8?B?MTMyTUN4L0hiOVdxbURJcW9zeDYvZVhVYUptbHJ6M2V2L0ovQVo0ZitEcHla?=
 =?utf-8?B?NDZpMkdwSStLdXh2NXVnak5INjRvSTJidHpXUWJwdEh5SFlOVnRiK1NqZjha?=
 =?utf-8?B?TkorclZkVC8waWQ3N3puWm1VZkFGb2JKUGFyUVdEQ3ZEK01iYUVQSExzRnU1?=
 =?utf-8?B?RFZJS0dTbEVadzFEL1RiTTN2VTAzS3pWeFBvZzJKRG5ndkI1TDNiaW9iMjhG?=
 =?utf-8?B?bllla1M5VFE1T1lwOUE4TDZtaU9lK1hXbUVrS3FqRHkwd2Z5MC9ON2xOMUQ2?=
 =?utf-8?B?WHN3OUYrV3I4c0JmQmNTWC9CNVZjOVRlUlFuZmRVaXRMdVRjWC80cE9EMlF3?=
 =?utf-8?B?dldZVWdTbDAwdzJXd00xRzVmRUE2clJTQVdEaXIvVUxXMjgyVjhvMlY0TVky?=
 =?utf-8?B?ckVxVnhBcWRIaDBKUFU1YW1SbDVYVHNoVjRFVlpYQjZJWUYzT0c3YXdRL3ZL?=
 =?utf-8?B?Q1I0Y0Vva0ZFQUpERWtWUXdoU3cvSnBpNVhsUllyeldRODdQMFMzVHYrT0J0?=
 =?utf-8?B?Wkl0c3dTSzlwMWYrK25VVFJNRThtVkk1bkpSUlBkYzFCaTVreThHaGhMZUgx?=
 =?utf-8?B?VlY1MDZ6b1FDa2ZGWlNkczNyRFdxTlpaVkx2STkwbS9makd2Q094N003SzZq?=
 =?utf-8?B?LzBjNmJVbmNkSEJ3aVVNMGdQclBINElhc0NtU1h5TjRvdWtNbjVZQzE1OXpH?=
 =?utf-8?B?OENaNUI5NFZabm5nTFFGQTA1dDV1MlU3bEpETHVvdVBkRUlFSGJmM09Rb3JN?=
 =?utf-8?B?eks0MFJCWE0rM000ZmtSdz09?=
Content-ID: <3BB42621694F59448E05D978578B46E6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acfb98a8-8412-4c16-7c58-08d979611f70
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2021 22:27:09.5000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z6aiS1xqhKZdWalGbnIo0z87wV5W60oGFE1T6gajYI966w6xqZYYzK7f4D5BQ/ypw48XL8NMTGNmyNkvOUZ31EgCRGCHduvcaAjVqgVIklM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4656
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: Fix displaying queue
 statistics shown by ethtool
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>,
 "witoldx.fijalkowski@intel.com" <witoldx.fijalkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-09-15 at 08:21 +0000, Jedrzej Jagielski wrote:
> Driver provided too many lines as an output to ethtool -S command.
> Return actual length of string set of ethtool stats. Instead of
> predefined
> maximal value use the actual value on netdev, iterate over active
> queues.
> Without this patch, ethtool -S report would produce additional
> erroneous lines.
> 
> Without this change in statistics after showing them by ethtool -S
> will be displayed queues that are not configured.
> 
> Fixes: 6dba41cd02fc ("i40evf: update ethtool stats code and use
> helper functions")
> Signed-off-by: Witold Fijalkowski <witoldx.fijalkowski@intel.com>
> Signed-off-by: Przemyslaw Patynowski <
> przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---

<snip>

> @@ -357,17 +364,19 @@ static void iavf_get_ethtool_stats(struct
> net_device *netdev,
>  	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
>  
>  	rcu_read_lock();
> -	for (i = 0; i < IAVF_MAX_REQ_QUEUES; i++) {
> +	/* As num_active_queues describe both tx and rx queues, we can
> use
> +	 * it to iterate over rings' stats.
> +	 */
> +	for (i = 0; i < adapter->num_active_queues; i++) {
> +
>  		struct iavf_ring *ring;

CHECK: Blank lines aren't necessary after an open brace '{'
#56: FILE: drivers/net/ethernet/intel/iavf/iavf_ethtool.c:371:
+       for (i = 0; i < adapter->num_active_queues; i++) {
+

>  
> -		/* Avoid accessing un-allocated queues */
> -		ring = (i < adapter->num_active_queues ?
> -			&adapter->tx_rings[i] : NULL);
> +		/* Tx rings stats */
> +		ring = &adapter->tx_rings[i];
>  		iavf_add_queue_stats(&data, ring);
>  
> -		/* Avoid accessing un-allocated queues */
> -		ring = (i < adapter->num_active_queues ?
> -			&adapter->rx_rings[i] : NULL);
> +		/* Rx rings stats */
> +		ring = &adapter->rx_rings[i];
>  		iavf_add_queue_stats(&data, ring);
>  	}
>  	rcu_read_unlock();
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
