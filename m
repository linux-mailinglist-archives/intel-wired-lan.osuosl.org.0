Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AEF5FC19C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Oct 2022 10:04:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C107417E6;
	Wed, 12 Oct 2022 08:04:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C107417E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665561870;
	bh=pPTloANWKcMr67bJbrID0gK5cun9A4jUXnuc976GipQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1ZUbZgJtOH4ei7JW63LDyn2ZqFKQe4TulXL08abTIdpBJd1cJP18Lw1fIZmfwqcsC
	 mYhFphsCNntlwgrxy26dTAB/4sjBQ5CgbK/uJa83ewvgj8/I4E/snLqljXjSxYvWeu
	 BzIAE5ifT7PkZ70Abt5EYhmiH3iaOh2kJbACE9uGBB3IUcEtRR9MvScNsgMKTvu6It
	 rtRB89U3OpCsog7CTFtLvY0XEvPAxDkWUbycnECVrNtCAdfpLBBE8cFChguFTDLAtB
	 tSEOpTQXVMIHOU0IZ0g3WC4t3t5ACsdhcwvpZVWI11YBdNOrO9djtRdhctO+47KJNu
	 U9Rgfic7qQLdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XSWQTZY4JQNK; Wed, 12 Oct 2022 08:04:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85AA4402E8;
	Wed, 12 Oct 2022 08:04:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85AA4402E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D1E91BF30D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 08:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 60D7A402A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 08:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60D7A402A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9_ToJ6S1T_bd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Oct 2022 08:04:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16563402A3
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16563402A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 08:04:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="306358797"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="306358797"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 01:04:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="577746638"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="577746638"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 12 Oct 2022 01:04:21 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 12 Oct 2022 01:04:20 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 12 Oct 2022 01:04:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 12 Oct 2022 01:04:19 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 12 Oct 2022 01:04:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XWrUGW0CEyDekrkLosIJw0nPbnFeDbwrksAU7NqqwVn0r+D7tV8JZa2SGx1v2CO2LvBLXBFugntpV5UNPRsYMizHNF+vtD4GjDVbDknzHFhIfFXZyvmsxm9GzMQJlslIN9Qn0VDu+/yIOkgb2iEu9WLoHjcBhaIbhdAkomG9rQpbelDHCe1geFhpaC73d8jWzc31MlPpUnDD031Y9wwFqXCEMVTZm+KL0n2VjpidDzqSP6cy+LAu85MmuO6mjVB0uS/ORjh0Xl4kWy8c68sIZ7XZETutuUxPU2FXT3DvzoB3ANJLdW7hzo5MV7R7WvLAoYwJjlz2qsZGo/6ph1ecsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4RmnvC5s+J9YyDCrHxsH677GJsWPNLVO13eQjfsGQDA=;
 b=h1+/m44iqybSc7ykBzzQlB6Dw/xfk291SC1AfXJarBOBqydKqnb1C8BC7Mv3Xq69kb5mHPlCFRH3Zxp9A2/QLEGOvUhXKLPVXrukUmwB/x9jVYOcFSsJpqbVG+DfI93xA7AJcJK4c0EBdX7idppFRbKM0NPk4ijSN3eKRPnAbdf6QrVLXERurxtWFn/e747jPH2Z/yYLcZKniA8nXfEzLEjCJGsgTdqzNSnPfmx18TWOkiImkdrHWMsAsHmawCCyeWiwtAhpMisjxsfHxH9UcbmwTrVq4/iZTWPV0k4QG78KqrSsguhU1tN72XiEmuV6HnE4xnqUKEwCfriXVmbTXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN0PR11MB6009.namprd11.prod.outlook.com (2603:10b6:208:370::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.21; Wed, 12 Oct
 2022 08:04:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead%6]) with mapi id 15.20.5709.021; Wed, 12 Oct 2022
 08:04:17 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net v7] i40e: Fix DMA mappings leak
Thread-Index: AQHY3aaiMAvmYrH5k0KqPjvteNn2Tq4KZvbw
Date: Wed, 12 Oct 2022 08:04:17 +0000
Message-ID: <BYAPR11MB33670E3EB729B29D2BF65450FC229@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221011191858.1300761-1-jacob.e.keller@intel.com>
In-Reply-To: <20221011191858.1300761-1-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MN0PR11MB6009:EE_
x-ms-office365-filtering-correlation-id: 072e2880-2f14-41bf-a51f-08daac285ca6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3oDskbPSNkGYcOWpMA00GS5sU11vxxlJuTP8Pw2eRymIq5XNQzDBTxfpmXM4uLk3VFOlzwY1XjLTIxGNViR37zfPkTPG5bw4NNFbYvduuHfjxgZBgX5DHJ6ndi8BqqAKHqsX5W15WA9EnVRj05EvdDtBN5Yo8kGfgUH6M8wiD887b66g0Hae3CjuHY/L9kqMLlv2SzvkRGrWxAQisj9ADIViu7WNgziPwOuCBaJGTRGAqH3mi1sd+vEj0Jv5zXMNfM6hnWQgifb76NkSXtqkykAvz4MKimyRgiFjUnjO+9zORKVNwezuSky0eqQIVpdUMujXnwggeDnPbKc6KklRaRPjHb3sz3tfCWl3585lAYC2wkTjJTKrx9HDWQzIvucgMhCKIqNr/1FGmppY5/VKK5p98/Gj6doutclMtUHfc6jxci0xqPHqQCrvIV5/pOBPAZbIK969O/EyATpmJH+tuluIzK1KyH1FT6zOsYLBUDKgjFAU4paQN6YiqG6HVw78wD+8aIhRDTQOoxSSmiYa4HITUsR1Bw/7sKLUkXx6nc4URtxUgPaIvYIrygcXzBUMEP6G+24x7SDp6DnBEfvZ7Yw9oGq+SXd/5jrxGhKaoRknetTEeNuord3jurzHugV9piVLEa754woaD4wzGD5eRf7ch+l7XHXoc+pvw6jSacVC5QZmbcdBmZuyNGE/RBMtOrlCO5lqszHVqVFwbwfvhWUFSCXl+lVuAC6+PttwJtyxhgsgMUpYf+VvAcyH36DT6hK73CZ36HqyhHgczrfaMg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(376002)(346002)(39860400002)(396003)(451199015)(86362001)(82960400001)(33656002)(55016003)(38100700002)(38070700005)(110136005)(316002)(478600001)(71200400001)(122000001)(8936002)(52536014)(83380400001)(8676002)(4326008)(66556008)(66946007)(66446008)(66476007)(41300700001)(5660300002)(76116006)(7696005)(6506007)(107886003)(64756008)(2906002)(26005)(53546011)(9686003)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WYzBy80QnLN6ABA1YBnK9Po7tFgfVoB/svVRb9qq8hsPf9Oo7Hm4p4VV3s8g?=
 =?us-ascii?Q?ZFtiaWGElXZjyTHqPnZPCmYHCZ+P8ULEzfgoz/ZOG1mSdtISaCtUyJPDnui4?=
 =?us-ascii?Q?kLNln5r/TjPEuIgdXvs/D7KNL4y9a90B5n0WcB0jZYETWuhuG2+YcwfvTZML?=
 =?us-ascii?Q?l8QtjXEWQilnv3sjyjlk8IIEiAT/Um8MCd7WVu6jgNYDIh/64gYGhW8dEqcH?=
 =?us-ascii?Q?c8JT8F6L0UrzPdmyzuQD4EeMKwY/Wo1up0hPXS526VDWF+ERqLJAt/rkcab0?=
 =?us-ascii?Q?zDuQ59RhRqZ9EAUHFAX+Pgo8wcNi0ZND9sOIW6NrGaOf1v7G5abyiHVg3HBt?=
 =?us-ascii?Q?UOvpJzImqWGXI4mAWX1bINpOQWIZIx4MUqFUlmWiMPK7HUYifuuIZPS22P7N?=
 =?us-ascii?Q?tPQq2hrRjkGCxnmrjwWEaAIMB2ySYNpDb+3TPAr82szqnbayZUoKOwo7feoz?=
 =?us-ascii?Q?OCobFYL/H6gJyM5NJuYyslw4j8EmEs3XLUgMeddCVunl2/ZdCYRnEtJRmK5+?=
 =?us-ascii?Q?bgO1HqQMrwLQqZgrkxnbSTR+sfb7LCeS1OVv+ock14IwqNm3tW49BzigtTwu?=
 =?us-ascii?Q?lluw5Oofu5K/oPW5cPg/sWkJJkr+g8+0nPL3cZXpBtrZIa+ldvXZkITbCsf+?=
 =?us-ascii?Q?FkLl2e2iSIbvfyeBsbH4A4bpD6v8zhp6eFT8GeEcfTGjCF/C8sg1CDTrBEmf?=
 =?us-ascii?Q?d0tv0YTRqOKmhnC/BZ//fp5CimV5XdZxFtpaRkk3e941bPbxtGJWVV/84Gbg?=
 =?us-ascii?Q?cqWp7Sr6WsQQWQSxbFJlJN53PYIPwcVAwY//uiOLWCsFzgAeuSFHTqE5EXob?=
 =?us-ascii?Q?Y/xYuM9pQ7SHnzETWpy0Di/BIvb5JDae5YJEzFDtswhsrFG0Bedea+VQKHQX?=
 =?us-ascii?Q?qi7ITnms+ClHG2FA3eHGA4RGBLqq1ohhyuIBl53LjrK/NcBc1zN/FqylJPC1?=
 =?us-ascii?Q?dBEbmqDnPKlOuEsNEvitNxesKzdO5QfH29kJiuZAtLknU0AwEE1se9zV7Lmo?=
 =?us-ascii?Q?35TQjSd0Fydoue8vannwmjXcBHYMBNIvE51CWcqEBwNoWpLecsI8sAO5+JNr?=
 =?us-ascii?Q?YeXCBAbCI1gJnHNGkl0fsc7sbURZ26HLoaFNvM/bl4sW/6DapBQalOgHKt11?=
 =?us-ascii?Q?oDqFqBv8df2FIONMrjhoLPtS7CA1lBn3eWv2Ozu8SEU8z7gn/2PLoZOxypxz?=
 =?us-ascii?Q?ETWosvUfofKWRjZLGY1Jb4zCYKD1nvRDH77KAFSYWrslMJ+Rtf9fF6Z2u4Dv?=
 =?us-ascii?Q?k3R0Ljhvfq89G7BcwFrUOlJKOAS8ET/LFZINAdEC2T5+VfOxp+KmQzjbNbd7?=
 =?us-ascii?Q?+/xzpYV+9146i53VGek2KzmAJUpqVYhdvVZNsJCfORvkUzmcibOp1G90f/oI?=
 =?us-ascii?Q?GvHuXU/KnR2r6XBCACQej7TQWyVbS7aBY82HBErrVlFGre0uP0FpjvTZDl6k?=
 =?us-ascii?Q?G5oHCGelkdPgvbw2LljuGUrBQ4rVB8rkldyGhkDO+Cu7mIJ3hfm/dQ48zdLU?=
 =?us-ascii?Q?lGSNz2+sHdOBrAbDgpHw1nUlisFaOP9X0Oa3pdPyjZvoFQC2fu0zlL5mPSiR?=
 =?us-ascii?Q?4nQje6EyOx9hcQX9UUpbOLcWxlRK79pt9PZF8V/Y?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 072e2880-2f14-41bf-a51f-08daac285ca6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2022 08:04:17.8972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wOfES0VCDFuffaeYGZ3XAkELgRgGf0YxUBmrGekLewkT1JuxTLq6u7OE2fGPTMwl+LH5ssn62jaljyY7PY+WdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6009
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665561862; x=1697097862;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2nB0PFfcmCAKjpHr5wH/eTrZg2i0KdqZfS36m/g7eSQ=;
 b=QJebwXKiL7K9RHC6YpjNQ+YbUZBv+qbqT5yLS6F+DkrrGRmAsI+uido2
 YzwGTjw5XP6idpDkNcRFZoHDikTn67FhrJKnFfd/+zZYu/UCJqmTxEmM9
 JqYYL7KHNFBamBfEmkBLwl6f80iwa2F5vFQaB3q4RUmDFiJJDulWseWe1
 uupPGz/grYGFZhk33bmcs+4uSsqm5CSe0v78h0AncNlMQk0ncIDwTzPDo
 B41FhhO0BQ9ZvkdieTSDh53Wj7peIUiieaBtSBnwQmdt0I2EYiXznDkoV
 Dw0NPu5sF3FdX85BrwO9zMdV4j/19WPWwYzolM5HnkY4l72b3xFHOHaDr
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QJebwXKi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net v7] i40e: Fix DMA mappings leak
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
Cc: "Rout, ChandanX" <chandanx.rout@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Wednesday, October 12, 2022 12:49 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Rout, ChandanX <chandanx.rout@intel.com>
> Subject: [Intel-wired-lan] [net v7] i40e: Fix DMA mappings leak
> 
> From: Jan Sokolowski <jan.sokolowski@intel.com>
> 
> During reallocation of RX buffers, new DMA mappings are created for those
> buffers.
> 
> steps for reproduction:
> while :
> do
> for ((i=0; i<=8160; i=i+32))
> do
> ethtool -G enp130s0f0 rx $i tx $i
> sleep 0.5
> ethtool -g enp130s0f0
> done
> done
> 
> This resulted in crash:
> i40e 0000:01:00.1: Unable to allocate memory for the Rx descriptor ring,
> size=65536 Driver BUG
> WARNING: CPU: 0 PID: 4300 at net/core/xdp.c:141
> xdp_rxq_info_unreg+0x43/0x50 Call Trace:
> i40e_free_rx_resources+0x70/0x80 [i40e]
> i40e_set_ringparam+0x27c/0x800 [i40e]
> ethnl_set_rings+0x1b2/0x290
> genl_family_rcv_msg_doit.isra.15+0x10f/0x150
> genl_family_rcv_msg+0xb3/0x160
> ? rings_fill_reply+0x1a0/0x1a0
> genl_rcv_msg+0x47/0x90
> ? genl_family_rcv_msg+0x160/0x160
> netlink_rcv_skb+0x4c/0x120
> genl_rcv+0x24/0x40
> netlink_unicast+0x196/0x230
> netlink_sendmsg+0x204/0x3d0
> sock_sendmsg+0x4c/0x50
> __sys_sendto+0xee/0x160
> ? handle_mm_fault+0xbe/0x1e0
> ? syscall_trace_enter+0x1d3/0x2c0
> __x64_sys_sendto+0x24/0x30
> do_syscall_64+0x5b/0x1a0
> entry_SYSCALL_64_after_hwframe+0x65/0xca
> RIP: 0033:0x7f5eac8b035b
> Missing register, driver bug
> WARNING: CPU: 0 PID: 4300 at net/core/xdp.c:119
> xdp_rxq_info_unreg_mem_model+0x69/0x140
> Call Trace:
> xdp_rxq_info_unreg+0x1e/0x50
> i40e_free_rx_resources+0x70/0x80 [i40e]
> i40e_set_ringparam+0x27c/0x800 [i40e]
> ethnl_set_rings+0x1b2/0x290
> genl_family_rcv_msg_doit.isra.15+0x10f/0x150
> genl_family_rcv_msg+0xb3/0x160
> ? rings_fill_reply+0x1a0/0x1a0
> genl_rcv_msg+0x47/0x90
> ? genl_family_rcv_msg+0x160/0x160
> netlink_rcv_skb+0x4c/0x120
> genl_rcv+0x24/0x40
> netlink_unicast+0x196/0x230
> netlink_sendmsg+0x204/0x3d0
> sock_sendmsg+0x4c/0x50
> __sys_sendto+0xee/0x160
> ? handle_mm_fault+0xbe/0x1e0
> ? syscall_trace_enter+0x1d3/0x2c0
> __x64_sys_sendto+0x24/0x30
> do_syscall_64+0x5b/0x1a0
> entry_SYSCALL_64_after_hwframe+0x65/0xca
> RIP: 0033:0x7f5eac8b035b
> 
> This was caused because of new buffers with different RX ring count should
> substitute older ones, but those buffers were freed in
> i40e_configure_rx_ring and reallocated again with i40e_alloc_rx_bi, thus
> kfree on rx_bi caused leak of already mapped DMA.
> 
> Fix this by reallocating ZC with rx_bi_zc struct when BPF program loads.
> Additionally reallocate back to rx_bi when BPF program unloads.
> 
> If BPF program is loaded/unloaded and XSK pools are created, reallocate RX
> queues accordingly in XSP_SETUP_XSK_POOL handler.
> 
> Fixes: be1222b585fd ("i40e: Separate kernel allocated rx_bi rings from
> AF_XDP rings")
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Tested-by: Chandan <chandanx.rout@intel.com> (A Contingent Worker at
> Intel)
> ---
> I fixed the -Wdangling-else warning.
> 
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 16 +++--
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 13 ++--
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 67 ++++++++++++++++---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
>  6 files changed, 74 insertions(+), 28 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
