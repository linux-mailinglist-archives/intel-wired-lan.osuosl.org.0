Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB42462D855
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:46:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D35C1600B8;
	Thu, 17 Nov 2022 10:46:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D35C1600B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668682013;
	bh=vUf2ixpzcSzKkB4s28VPoA8T11iL5bXdT1MTD27p9xk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FNJ7sz8r5wHufc8F9jRQoe3KmtEOU6u7xLpisjXuAAPmS37CW1YFH98482yhI191N
	 IFLz7X7WKQw1zfyumHdHThpte/BRdQSv2zUhUSDMNSGGhi27yQpt/Hnk86s2K4yXjY
	 ria0YX7iL1AH9yGwDpMX/XXD21SSrg7UyPWd0JPXa1HGMkh77Bvhu4+2uxCNDrYpsx
	 hz5SyPg4PTWB+xk1gti6A7GmtjETF9g0IcPAO1pCPd2xxrBudFPbI5G6SwRPTgitiD
	 vsMGY4+gjJBs0BjBibsxu+VuXp9fyIdKAR0yZ9SdaBJoTXwRMwXy4Zj6nZHdDOdIc5
	 TZnFwmEEFxFjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kGO1gMjFvEYn; Thu, 17 Nov 2022 10:46:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D340161039;
	Thu, 17 Nov 2022 10:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D340161039
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D309F1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:46:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ACFD382084
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:46:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACFD382084
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D3x0Xl1CxL8M for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:46:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01F6B82083
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 01F6B82083
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:46:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="339644852"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="339644852"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:46:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="639758407"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="639758407"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 17 Nov 2022 02:46:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:46:45 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:46:45 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:46:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iOmfnMAsh9bzurVTQXMdj71+bEj71ZDW5KUImlDoXu1NRpAQOTrvfy1TSPop/+3LLD6YGkjJVkss6EaXJEmeXF6eNK03JlRrbZoNPcar7CQMktfBlnoU6H+ObYPNeLleNxppD7B7XvyaeE3+f8/NrL3WD4yEkIeP9V41hmtKCN9S/upjvYkRo1b7KbEI7i2FwWl6w6MWU9HgoFJHwWEkvHb13vp8h3zpMYsEL/e1W0xfv7jjzSG1Wu5TaxV3K8ocbD1I8pIS8zR8PB/TV4chm5OdYyNSGsehn8aCCR542GkWCos6U2KI0dyjJ9Tyoyp44z7i5PBnu0S+u7gSRxt00w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sfM3ydAfRRIcF/LDvpC2lQT/JlqENzdIAOjx2Rsi3ng=;
 b=ne3ieeXcLfx7NAKthMZYChk2qNZE73Z7hYANts1cB2I6MZcUom3a/eOVdgthmaN7zQiW+Kh+CEXnz9/eJ4k1S5VIPcQS+X4qMDCOGQ+FrK3iG8gx3CeR7LvELgJPLx63hKKvKsCy/Oh81MtjhdLWoy1M6jRjOPsH9gi43/zfi0yzXnfh59How30cvAzq+VxUvZp8PgeOkydu58I50rWA4L/cBL1yhxiG7pSaR9dfpmGQ/YaQh+VxSpDC+QGcTsIB6UJNdLMRc3KR0Kj2PGuDZUS4UGGYZZO1049byPMvE+UduWYF3klWUWRZ1C021wBFByuHGkc5m4iQWxFrpGO1/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:46:42 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:46:42 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 11/15] ice: cleanup
 allocations in ice_ptp_alloc_tx_tracker
Thread-Index: AQHY79AYONGzQDuKI02Eg6Qh22SMea5DBAVA
Date: Thu, 17 Nov 2022 10:46:42 +0000
Message-ID: <BYAPR11MB336743A560713E89C33B1BABFC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-12-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-12-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: ff6286e7-43db-488b-9310-08dac8890377
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dH1Z06IOyfII371llIt1koTgWmMb4GbRgFUevy8Us2nfrt7+uyF8rxXF6ES2D2LlyqKxpsDU8oIw+j/qJr7jZSz+YF9vzAMoR5wYt80HZsbBTGU8SF7mBmf2X/N6ZU/de7bBwMxGx5t5RHMn3jeahqL4rNgNwQYkvrBxfftS7BixE9pzaC0/FbDtaZS1s8A3buSHDg8FLe+xo8zAfPWxCJazGZnP7gwUpwyAvxO3+DdW3kfxdXWT8GtsTKWhyiCMcWG1T3DAWQHdOlO0Z7mY+VlRpCNKqXHltRi8QAGl4wJOZaSF0DwJrGpduSXjed5lyhOwDCV0wBSKiOeMoyrwBhEpAYFj8WOsvHefnUObH0RVWuvkElhjmNFd6sYggwy4BfD6Odm4oBbwVepcNiXGFyDTp4NB7YlRzNNTqzf6KX5Ig/hEY0RFe4WzMgXIT1ByIqEUPZLhhN4OTU1APJ94aCemtsQATeD2TfMSetbsYn59CAxe+i5Fyczy9maJe8kzpheE833AKV20vMh3xLX+VSNEuBDJvujHM5R447to/hXKKxkXX8ZQ1YgkzeKqdDPHixUBo1lrZvKz+PUxpO9RCjj9eGnkcXgd9W6rM+U/YdLFzSoKI9qocB3KbDhmWzdRTIyuoztXBdruL9+ehJpxDZegKSZBxXFuFWy2T2sZ1CdA1qiMmp/0D9QoVa7lt08GK2D2Vyp7QSuIm7lCh1n0FEK+kgt9p0AKT5F4abwHuF4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199015)(71200400001)(478600001)(41300700001)(26005)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8936002)(52536014)(9686003)(5660300002)(186003)(33656002)(53546011)(7696005)(6506007)(316002)(110136005)(83380400001)(2906002)(82960400001)(86362001)(55016003)(38100700002)(38070700005)(122000001)(3714002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kauQsBMdrWGeqf9MxLYv/Qt4gHwGu3umijMAPPE7t/0uLr7ya1fHhEWfGlXt?=
 =?us-ascii?Q?7OMYsigEoTnCHUIk/pgH4SLxmpe74/WMdGnZNvMxkvCgtjdSl17amM1l+AmV?=
 =?us-ascii?Q?BgpZAK2dDP84GM93xOvsnYOTZPcv2LC4G1xueeLLdlcCw281OJW2LxIykHGe?=
 =?us-ascii?Q?gsdL3nmxiHEKMrWt9V4w+5064+j7iLYdbXIY5x8L/98aogqBHgjbPUn4FBta?=
 =?us-ascii?Q?rXJHccf/ceaH5po5J9hUopT2s9b74u9Wq/XsRAwEe4ymPsxAzw0m5ES8aj7e?=
 =?us-ascii?Q?751vpiK63k86PruGVYzdOjSuuOFpq/fMBajgkqMX9KbdrCDjNnH1M1YHj/D6?=
 =?us-ascii?Q?rwGJROhN7V9xCT1vej2Yu0p0poOhFzVBTcuqoz9xVumGLsnmM6qV5ZQbpHur?=
 =?us-ascii?Q?CskFMhw2bzIDctz6GBclvph+MOmruSB9gnempqjxMDYt533ZE3lAzD6/mczp?=
 =?us-ascii?Q?N+bZJTmxCm+Dlwuc6jJgOpGvY5Wrl7Bjo/3P7g35AorUIj6HZxMrNdFTTp8R?=
 =?us-ascii?Q?y9GcKgoqbHR/NoR4m7z5HlE/ZVRNGhtKG7nTu0MoWv9u7+k0xZrwouLDMGJT?=
 =?us-ascii?Q?7y9wsevFkfNwi/nCsuJKvoM0Zpqqf17BIaBA3b623vk2LJ1pEOv4683wL3hC?=
 =?us-ascii?Q?eRlhHo0rPTkuM5tIJHdoow99AhmTKbnWeTuPEDw5sPEJ/XTjtOaE5MU9fyiw?=
 =?us-ascii?Q?sF8v/ySH4UT93OoPcRH1/kxdYDH5pAaln3Z2mtKAaNXNWJ1mPhcO5ap9gB2x?=
 =?us-ascii?Q?P+jvptne+EDPodmYsqws+2/iKxBCmR/acnUr71nLaNwhGZOZWRBINqql0Z+R?=
 =?us-ascii?Q?B4JW1Of5VSbEGWRXP8oibVqLSaZgKa6ML7iK/VI2HFPMYiOgpWEQkJkE7Xcd?=
 =?us-ascii?Q?sVwM9bfw3SouRipI2ZbPiTMPzEJFA2M7tIN/JOES/4MscBqnsA96ksj8jN9o?=
 =?us-ascii?Q?Cwpn9WgsXlJRFh6wRkPLiW3wCKrC3Wjele5mnsO/26y+iClHh5POETxDeb7E?=
 =?us-ascii?Q?TqtnFr9efw9A7/T9UQGEug+sK24yaWs8BoAWz+p81R7wn7ko8DMp1DJ8Qt9f?=
 =?us-ascii?Q?3qTLYJKT+UaOJVR/oX5cgHVsd2dfDmCPvo+8BWCcMLg6GRCqUNyfumOMYPQW?=
 =?us-ascii?Q?jFVinI1R3EjQ1rkl29suoBcC05SVU3fxXMZlMXfikcQACz9nnF7UljhythG/?=
 =?us-ascii?Q?dQekPl7vNfps4YD44b1vQSxpjI3XC+J4c0HC5Hkn+d4naPo/UuzZn/1QO80c?=
 =?us-ascii?Q?41oXpBBCpdLKDfxDb3GT4m6OjOzTBW8Lf6v3pSN6BOQeDB/HOj+LlK0VxHia?=
 =?us-ascii?Q?wf2pskL4G6ZYftPLsXBC+4SPGx6uuac/o0rjOGjZH2Km9jZCTWlIRqXEGT7f?=
 =?us-ascii?Q?vrD5g0b8mSEQluvNvpekums/ScbNFeSMz+vXiQXgkhkFfYYh9xGkVXbLoIGZ?=
 =?us-ascii?Q?8BCOIuAIFz5fYy42WVFf4izaAYQ8cJwU5EBjbhP4ExjK1r2dow8ZKWsaTwaw?=
 =?us-ascii?Q?f2mlWAmS1PMXTBjePZ1jOZMIjCjOoheQfo4Vgd+I6xftp5r+DKvVCmEuCz8a?=
 =?us-ascii?Q?4+cLg7YFSSv8W+s/lpsh+Ob+2m+eunj31S/7h0V8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff6286e7-43db-488b-9310-08dac8890377
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:46:42.0433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 56Eu6Y0PLrRGEpOHN0taC/Wijnz9Lg/4lRm5EK2mJNKPkJQKKHn+tOQgumZYuQvNXmWNp7jALHgBTLa/eOc7UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668682006; x=1700218006;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iji5eVhwx98vWQgvN8ru+NmbbuleN3pi6ISEN3E35OQ=;
 b=KmfnSc523vBaMn9zy9KlFX5tbcf3xT42RonBwtcxfdJ6IeHCx5ANFis5
 7fc2gykiQWQVh4GQVO57qtH/PukND5tTA6izXwG1xC+tYjKtvQLzbzxxW
 VBNWE0E/iPghnTl8MtXkdWg4SrF5H++y9udV69mUfEC0QuOrr2Qznxx5A
 lgSHzrhqFoCzay+3QD53z+AQvqOYlYxSxqRpyqfymDqTtDPrMTsA3xZkc
 P+3/udcPGViRP+Mh9CInum7KNQsdWf+Ols33iM1zIXLld09RAqn6c02IQ
 PNtBBT//CP/mZ2n9JIwOJV4GGvZ4+iuOYS/Zm7wpiwKuX/zwgiLZb7Yo4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KmfnSc52
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 11/15] ice: cleanup
 allocations in ice_ptp_alloc_tx_tracker
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
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next v2 11/15] ice: cleanup allocations
> in ice_ptp_alloc_tx_tracker
> 
> The ice_ptp_alloc_tx_tracker function must allocate the timestamp array and
> the bitmap for tracking the currently in use indexes. A future change is going
> to add yet another allocation to this function.
> 
> If these allocations fail we need to ensure that we properly cleanup and
> ensure that the pointers in the ice_ptp_tx structure are NULL.
> 
> Simplify this logic by allocating to local variables first. If any allocation fails,
> then free everything and exit. Only update the ice_ptp_tx structure if all
> allocations succeed.
> 
> This ensures that we have no side effects on the Tx structure unless all
> allocations have succeeded. Thus, no code will see an invalid pointer and we
> don't need to re-assign NULL on cleanup.
> 
> This is safe because kernel "free" functions are designed to be NULL safe and
> perform no action if passed a NULL pointer. Thus its safe to simply always call
> kfree or bitmap_free even if one of those pointers was NULL.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
