Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C655250B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 16:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A08140BF7;
	Thu, 12 May 2022 14:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v5nZ1Kc-AsIq; Thu, 12 May 2022 14:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 472DA404EC;
	Thu, 12 May 2022 14:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FAE21BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 14:54:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0F6183EAC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 14:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7SxHT_f5pWSd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 14:54:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45C9F83EA5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 14:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652367266; x=1683903266;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fWcGNrEImlHP9y5j4Mv5KGc+UgLQDBBuFlkKYrFUw3s=;
 b=LFDbMAkySopaFjWWB3/OhWf6lY7l2d/AbpcnwuxXEgYb1a4kT9A1frX1
 pjUBOgVDVQI0pbd+3hYj2OqISCki3IoRDkNgX1mI+ZqGYuZuAQH2TmZhc
 jXFlURWjzBMeuesDxaIqA2XRUuybTMXO4xD3xS5MP4tlxc45Imptp9xqY
 KNbmnoJOXbq3CNeexAWK+J5xsjsti72fNamF6kaCX3h5S/ih8uoochYWo
 vZHdC7hznK8ZLRTB7lkxFBXKIxNFVOhi+1JBL5YPSgO52vAxQ3MWyAGaO
 S3OpaGVBABY05tfnyWrgvZbyJLmefGW8ZVtebeeeqaM5uF8cFbJInuo8h Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="252072613"
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="252072613"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 07:54:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="698055874"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 12 May 2022 07:54:25 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 12 May 2022 07:54:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 12 May 2022 07:54:25 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 12 May 2022 07:54:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KbVOHznRAI3BMCJmJ1spZ5ys5NdsddIv3GJ6gLK5svsOv+5QSTeOXmXaznTzhgyJNixfrA0gmiUgJMB9pmazxj9WMMUthqUA8ZPIjjaiBywfBRz872/j9m8++rt9FFjVpbrKskEsd7bDAqFb372Obvfk76NudZl6Y7Gm+sLMUzFEtnQoptac1xC1oR5NZyjehlQTvJDqMFr+mQNDTAqLHg7bxYE5cz4ZElMBPfNXdBB880YPEkj6SfarvdqIlOOyJJKTcnxlRpIjMmx+JxEox36LOn4P2zwwZKvsoGwQaEkjcqanCic/SKpoeKRjlrIcNXOg5vevECSi+KSjuEJmWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ekWjk05UBB4RR+tyg2RRrglPDCZcCY0nDEY/C0ogYnU=;
 b=PUCxvFmsBgZLavOqZiqabqHllJBP9yRFi4/W1wsLaP4BQNZAMh9wQkX+Q6isxVN+uxGPdIy6KBohIbIRYyrO5Gl0d44u1Cl6/QF1eAef4KGmRshaQBPxSapC8X9x0+kh/1WVQ69/XWJC0a9W8cNIjwhOPWXpcC1ZRUKmVcoa/iKkoP0FLe3FP4qt2nGbrPL1+3F4IA1P52/SzIalTtAwc9ZG950H10Zg+cP79uUWk6PZaVw4MnbG5XtrxkY+Zg6dqM5KB322kgr6Zu+kzBXzmjPI8prg9/PRNNcRK8M6sWW4oWH8XleC7dk0hCigcO6HIhrm4BFgcC8/k0sULOnj+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SN6PR11MB3488.namprd11.prod.outlook.com (2603:10b6:805:b8::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Thu, 12 May
 2022 14:54:23 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5227.023; Thu, 12 May 2022
 14:54:23 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix possible under reporting
 of ethtool Tx and Rx statistics
Thread-Index: AQHYW0UWIWG8cwKFTkOSe8cKc1zPUa0baaRQ
Date: Thu, 12 May 2022 14:54:22 +0000
Message-ID: <BYAPR11MB3367AE89B6C48D29D9177E5DFCCB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220428211142.806462-1-paul.greenwalt@intel.com>
In-Reply-To: <20220428211142.806462-1-paul.greenwalt@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef2159e2-b365-4f95-35d7-08da34274d31
x-ms-traffictypediagnostic: SN6PR11MB3488:EE_
x-microsoft-antispam-prvs: <SN6PR11MB34884CA215DDB741DE55AD8AFCCB9@SN6PR11MB3488.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QWcNDloQFhWIkNcGQ5c34pk6r5G/9md0dsZ9Ry7rInVA5tukJNMmxe3nKMMOh2GJmqmhkDELwpbccZFSfnRTG+SXHu0PSYOt1GuciScYLb/FtZjYU3HcMkxnA+Ors1f3jb/xWUXjXGhO/7J0+ZOXN7r3t/dMqzz72iFT62Tkex4enhn8zxbkh0A3Yu4ZOGnbDCWaOM+So75SfYAYOe7vjxeXTB3ea25wx+UXNL1Tq1RahW8gZ9odp9J/uZTrTqzg47hFf0YeWnuRizup1/uMSTby+eoj8kbQml7KdsJ9CZmjnK3Ft3nuQM+Ii7KFtgMhvAPJYSom9mfWlp/iynuXkLaNa/dCnERlhHlUzZRpOYW/v6uUw+zKSjucwBZ8cRUHlNBhaCGNAnD0PLeyQelFmnLHS7QTEYz2oSeMFkshLN5p+pQEIYWEw8XjRx2L/csaJRBzxk/+Rj3LtGjuM+hTid3NItPWNajOn9RwvJkBZYTp/uJtYbW65x4RlOmeXAj2gB2iDGaYL8K773fWU3cnz1sQ577Dqm3rnaTNOUP0rqRoaCJ31CGTIZhARlJWpZlXlEMLe0g3FBnPZJuWs/fDUEllD0a4cGi6VIQqf/TiYGq2gzSRXgLofPJwR9/qJlYbaNDsoRcUK6S6Hc5wrpB7uPk9SnrqVXhSM1BjloS32hWsZUvbC4MnfYMJaab6gtc4T2UgXV/FBiva++USBwsUGg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(71200400001)(64756008)(82960400001)(83380400001)(86362001)(122000001)(8936002)(33656002)(2906002)(5660300002)(52536014)(38070700005)(508600001)(6506007)(76116006)(9686003)(66556008)(38100700002)(26005)(66446008)(66476007)(66946007)(8676002)(110136005)(316002)(53546011)(7696005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OfdsFSYFpsz6qeCFC3gRpe7HfKB/Tm4SUuUgwSpaDy7LFMldzxqlIhrtc+Re?=
 =?us-ascii?Q?Cubxy4uXAclfYfg7Wv586abJk+OPxdGjopKhltCkabshtrJ6/QvVtk0O0NyK?=
 =?us-ascii?Q?5Mmpldg517RiI7t8kt+03w/fHXgqauiNnYe6pCnTIlSYL445Cvu69iCOevTa?=
 =?us-ascii?Q?K/zYQuoOw5PSQQGQyzIqnlMiygmvXpm8/7o89OTLgREWq7LxAAIU3jnNk1ej?=
 =?us-ascii?Q?79dThcxh0/oICebg8ZHDI6PRCCM30MtjUdEVpZlYgutyot4uAWwX9xQqbeDh?=
 =?us-ascii?Q?tgx/8attWPq/Q4Ursb8rl7DcJOnZMI6J2bK2WUrdpKddDto3nPFxxbBBWuJf?=
 =?us-ascii?Q?inI2XJ0Mxp4U6osG8eoJpQ7uICc3fMjMS83KAKnM5KUD8m3BadDKuSZFCV3k?=
 =?us-ascii?Q?3bYv4pw7A7lSIlePckw0fr2B9iIum8mImBw7SwOB4fAJC6rilEblcfNiqaKZ?=
 =?us-ascii?Q?xVEADAmuGaiCak8KLvhXx3AS4zxDvnoAoKCN/BQ2cgzMgLMVZlO/UB3mqvRY?=
 =?us-ascii?Q?2Rfc210FG+GkEdVptCARlyARAKjDC3Eo4SonFPzpEgUh0h3k4yz5HxBv3K6X?=
 =?us-ascii?Q?H9v3by3tSuke4ph5RzxojrqnZDmO3iH2dbJl9nsR/MRymmU7+Wi4LjaUpT5I?=
 =?us-ascii?Q?UGTM4GAfpswSfGG98NXpu8RnrYUFSkBB1G45opJhc3CXuEnXuuWJHXxosDWI?=
 =?us-ascii?Q?w9vNH6E33QtdagHD8uZmGhnmpAPpde89/8QjDrP39J1n2XDj5Omb/V01paWp?=
 =?us-ascii?Q?jv+XjVtEGLHumbRYc3mEJW43qXAXzcsdxEHN9k/dA3RfYhivQA4A0qjoxbq0?=
 =?us-ascii?Q?bTcSi0uzGGfKTYXZknUi6m+fYCdVZHNiouqNX67tYO8tccPEhOVHDFk8WIKV?=
 =?us-ascii?Q?bgfiVGQRU70IzZN4KsdqvSkdnkvvR2IUcX1FHkY3HGhBlEzzJzoDBHwT9iTJ?=
 =?us-ascii?Q?oC/E/TmrJu6z9/IgplYXzZTKTYII4KCZ4ZGyq2Q732pST9/mylJHGksSi3gF?=
 =?us-ascii?Q?uoO4Afz6aGUUlX90BCXQqjiDG+bKIl7FPK2BjCfdYla3yrvI9QbBMescGFoL?=
 =?us-ascii?Q?UhZx9o2/YGzxjhWzpZFb4D6aRpElk2Iw17cL+RDZzdK107lOfrokMDaffPMr?=
 =?us-ascii?Q?vKutO42DXSvP2ir7brEJlHlrphAIDssXu8pP+Zla4lPN2iYJyyN5kGFnNdNM?=
 =?us-ascii?Q?jbu1c46UtieD1CkuRJtfkgLP5s9CprISNUqu6smTejT6aNwG6hM+PpbbNBdF?=
 =?us-ascii?Q?Z7xNilDWh6FJ/VOMAGHsZ5eAax9A9yu0TLXTrTK/efuS1y6br6/f3OWviN4i?=
 =?us-ascii?Q?cCeqzwkq/y9CK3Dep/l1hR20GItwbHSHGI0sqhHGxus3n9rsostcNzvahGZM?=
 =?us-ascii?Q?0itfVch/MThDFq8hpqzKtbMn6OTksHWg+SeIojLjZF8pjUrkU0guxxglyc7x?=
 =?us-ascii?Q?TXCRzhpPOK/CrqtG83HYYeNg0SVIn3vB08mXGxoFRDYvvnJb5ls/8lkjLI0+?=
 =?us-ascii?Q?aTKv67TCIakbewdlUZM1MBNDtQz7iCERmSvU1e09wUN6w1iNrdEud2YbmQ/Q?=
 =?us-ascii?Q?XvsEfD4nVqQyr6FKmLpG21rHMlR8+7CIuzof4DCw0JkxFfQfo6za79nuFm5D?=
 =?us-ascii?Q?ugnRzg6rrh9nyaxc7YqlrPLwfb4qMiijZC8VreUan9VVuaAu/qStJTFRPcwh?=
 =?us-ascii?Q?D4GDlwqhJU1cSb36hAQFvvrH/8MG/BR3wELVvddy92SLMpOt1O5iYSV9I227?=
 =?us-ascii?Q?z9BI+KDS7g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef2159e2-b365-4f95-35d7-08da34274d31
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2022 14:54:22.9629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: be+x1uSGR+hQdPwZeHMdtyjz52yko6xODFhwjckQQ+9XaxSvsV4ni+FDGt/w9kMP+rFOE+a9abU2Wl1BuYLQMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3488
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix possible under reporting
 of ethtool Tx and Rx statistics
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
> Paul Greenwalt
> Sent: Friday, April 29, 2022 2:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: fix possible under reporting of
> ethtool Tx and Rx statistics
> 
> The hardware statistics counters are not cleared during resets so the drivers
> first access is to initialize the baseline and then subsequent reads are for
> reporting the counters. The statistics counters are read during the watchdog
> subtask when the interface is up. If the baseline is not initialized before the
> interface is up, then there can be a brief window in which some traffic can be
> transmitted/received before the initial baseline reading takes place.
> 
> Directly initialize ethtool statistics in driver open so the baseline will be
> initialized when the interface is up, and any dropped packets incremented
> before the interface is up won't be reported.
> 
> Fixes: 28dc1b86f8ea9 ("ice: ignore dropped packets during init")
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
