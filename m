Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6D16E9A8A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 19:20:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66EFC42BBC;
	Thu, 20 Apr 2023 17:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66EFC42BBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682011226;
	bh=7ACkrSR/vd6Lzjlx41nL7WcTzL5aq445G2Vsm5HTNGI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CjoHO5WMty2RkjIow+XWFVR2G/TWTLQ6N7DUTjGBH1qk8cJUTATvyWEcEG1FYDlRq
	 +UkPGzdqSCgTh6KLW+WmOBHy3BgLIPoaBzhKir1bhchZdiVnBUx7ThQ5h0NrzL2iQz
	 SM/ftO5xTYsnEVvA8I+kHqJ63fb8gg9wljE/tjcoLnv+RKnTwlkqNfbZq7Qh+w7qZU
	 ZcEh79tP8P6+fie19aeNATeRmZhEGZ+qxjTwh+jYRZijtbI9SG2HKuRWaUG/RK1miv
	 o7PIVQ+5qsKn7voAIhPnFNO1YDo9yBbWtTfuPpDP1XA0SlqBWDkazn1hpqvcVMMVyq
	 HsQGVlhzpF4nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1nHB31vXJszQ; Thu, 20 Apr 2023 17:20:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2007F42B9F;
	Thu, 20 Apr 2023 17:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2007F42B9F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B34EC1BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 16:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88301840A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 16:40:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88301840A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bX1nJKVWiNrR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 16:39:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AAF1584094
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AAF1584094
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 16:39:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="432067906"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="432067906"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 09:39:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="866355213"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="866355213"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 20 Apr 2023 09:39:58 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 09:39:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 09:39:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 09:39:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hwmoWF1LuPTfjEL0lp50isAj5TcTIBvZZNwl5RZGTqLInFNHV2ZZjkDeWqwj4yN3QqFGZkdXzTr7YYHHc2/x3GQoj5oinEhtKmI/mC191qn7ZCM0AQ9huNfpwsTulszUCyHw9RqKvvxXQpRBddwLZYy9fynRc2T2rgEoEBPwcRwdf7ZV4+nA9swGNReT9m3PAzYMqXnVMwz1Tc5IekGDO9l5yx9cf1Dv6lJAa+Soqzc5wQhYMSLC0tseKH+bK3ZPD2LnS4dNodU1m5rMfGB1SCoOF3DY+9kHQOFB8Ci+v4Pb4iLvIqvYRuRmsbrOqw7IMKU68nAVbjK7U5mpLUPpbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fmdcKew9ePJizQu4GUCIy94mEe48pTHWIAw8rCwMhVU=;
 b=ZvYMHLtl1nLiXv+1oHys3m+AE+cF2huDewpCsbeuA6JSHRoaOtnTmrd10TMvW5A8bqEK0Y1sUh585yzUTbqCEVj9gD3J+ljnR1cQhTbvPVsRBMrOA6IYWfz05yA4rpNG+3LngG/BjETpGpo27HCZtkVklcqZxp0/PjPIeBs2GkRHUO0nJZZS9tOL8MzzzFOTmPWE75OSxrczVOLO7gT8QR16TgPeqAWXd+Ou1YqLVJg4NAeh6LoRvz1W3MBWjdHNt5jg2jVV4/2N82NjNrvgFEU92157nGlOML52ktRQL4XTT7gdWv2Mh67FMye227OpY0gJM+guOoMDJi7cTTO9ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA3PR11MB7583.namprd11.prod.outlook.com (2603:10b6:806:306::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 16:39:53 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%6]) with mapi id 15.20.6298.045; Thu, 20 Apr 2023
 16:39:53 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 2/2] ixgbe: Enable setting RSS
 table to default values
Thread-Index: AQHZcJeH4zKPVBuoUEqaMOci4k21+K8u8WcAgAV5lXA=
Date: Thu, 20 Apr 2023 16:39:52 +0000
Message-ID: <BL0PR11MB31228261472A683DF589C61EBD639@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230416191223.394805-1-jdamato@fastly.com>
 <20230416191223.394805-3-jdamato@fastly.com>
 <20230417045847.GB43796@fastly.com>
In-Reply-To: <20230417045847.GB43796@fastly.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA3PR11MB7583:EE_
x-ms-office365-filtering-correlation-id: e3ddfce1-e270-450d-5521-08db41bdddd8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jP5HgqGJkuWtTz8a75v9t1yAyakDx5UHCDrridBMJFyKL0xw2WKQ3FRRrEZTwmODog6WkfV+PL2arsh6JAtD8sFhbsmDPyhvPzeQKpSkuinc6DvjA2sSfBour0MaFgsKhi1g58Bl6hMv9NPP+RrQgWoFUL8jdNi4ExjDyOzD3n/NVtaKgq9lPBhkRPeRpjkyBfyIfqjHNCgcTlgfXhwj0VP4uFj32lciNiWwX+UaDOEsd5x/gIitjgq8ueFDA6DYE6GouUd8+rZMeVJG/P3Mci69k8YPY0ZKx/m1M8NRBHb55xSJNBPo7ag+mzJLtV9iYWDW97lt3HHVHJLzDCkmpE/Thr4D0Ier+ZuqVoVqni8DnWT6Fjo0c4wRi/EfH6tqzoukfIkEZ6MalDeZssROBLgSnO9CSO4qrpRy0TnuZvHTNyxf+n29tjqjw0JCyJdCV0Ag/nNxzbwxj7WHkpRcoY0ludLWMXd4iwVgtKVVjPwvk1eRInxRV3NGEiaw7k3xJYa6VKd/uNpVOWf5HLkz5p2qpHmRq+GwyRZp9/RJjFYYDlc4anZiQNdbuwTWBdZCi4gLJt0WkfpTiGkXcD8+BrSKBuIuflX6GG+rAKv27oqE37WDDrXbGpdxbNbXyIQx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(376002)(396003)(39860400002)(451199021)(186003)(6506007)(71200400001)(9686003)(53546011)(26005)(7696005)(52536014)(5660300002)(316002)(4326008)(41300700001)(66556008)(66476007)(76116006)(66446008)(66946007)(8936002)(8676002)(110136005)(54906003)(478600001)(82960400001)(38070700005)(38100700002)(2906002)(64756008)(86362001)(33656002)(83380400001)(122000001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r1pif3rkeRkidRlJF//n1tkHN5oShRWmUEj7Q3No8TbDSjwZ3HfMe718x+bJ?=
 =?us-ascii?Q?jy9f/15iJsuVZkoyzOP+QrbGb/Tuk1V1HJe+f+DRwaAzuMcfWdbS41+ufcoU?=
 =?us-ascii?Q?Ooi2AQqmlmp8hbVyifTvBcaJyLZlVvNEE12X4IyZ8AKFIo3IGiqD+HtJcaI8?=
 =?us-ascii?Q?PMEXhoZcm8g0jasVpGYOQImjVXG/J00xgZLcOMGC4hTU0NgMHnlTlBB3LdV/?=
 =?us-ascii?Q?HFIRtYNGBWb0iRaoeNJeVOCOHIGUu2HnEoKUu71jWA5gcBMLSqpeOdXqTPmi?=
 =?us-ascii?Q?k8kQW9MTQfXuSLS/aqrtMwtoLxuxfR15lKNJ9vkQb8iauPWVAEscxUPnY0rg?=
 =?us-ascii?Q?0+lvMJ18ehl9wZ6XgVRRpL0fc24ADpQmqpQ8hLF0csiDENfAtGCZFn+m15a5?=
 =?us-ascii?Q?oXB4CWKDb0osmMWrZLLjq5eexbcfgt45frWzfn/ghhwMH39A/CIt+j8BlI1v?=
 =?us-ascii?Q?pUfoRZqi4NpPUgeh3rOJkJT38SxIMKQRSLeQudvujJsl8vTjA786f+j+Sj1I?=
 =?us-ascii?Q?cPoOjWlSK7j2ycgI/OtChjXujj862KWXUOsG30P5B84HZNwCdd8p+V/J2XPt?=
 =?us-ascii?Q?TG6nkA3WfLfDdqb93E87xseactqb6mOs2kpLhZ5ra+3goBFOPyhUQNdNSlK7?=
 =?us-ascii?Q?mqIgJvzSJUF92eG8jiCUdwkWgnewE1rffFHl41BKyeuYjD2KBsvHEuMVjrEm?=
 =?us-ascii?Q?YAiUM3yCpcrW7nKeRTADGZYDVcOFLv1vKL3Dnk6m8xiIH3nEsT9uIq9xPHZ1?=
 =?us-ascii?Q?l49orfKmjbXmOrPORNZdqSMLazynul5FMBeYR78wPWDiNaT9MgNfaTr6gq5w?=
 =?us-ascii?Q?a40UdFVdcgTxpx04yPQbQ6gOUeM2iZooMIsGeJEa7c16H/HoKpJs9OGlHucu?=
 =?us-ascii?Q?HrW1Ua2ijOQ+jmoIbjCCGUun07DQJE1GMfEJI/Qmr5PKeZ+ryAS0kzyT+QvE?=
 =?us-ascii?Q?FX7Aabnc6gVCYuXmTU6y4jLvxAFWTaNyGVFznn4Aedqc0RaHtNcaXpw8oESF?=
 =?us-ascii?Q?VszRc1+Gk132qGcKFwHtSwHBdFD1+y1ml/xCXeAuOa6tYEVYYry2TqoWHvts?=
 =?us-ascii?Q?lrMQelmAfrPwQq6io3nJCOKQNdV/yQNQS4IQHjOfmtnzxjrlYx0dfBfs9YH1?=
 =?us-ascii?Q?W7Q+5fUO/NIVwyEy0tQVdQmhjJYLx8ewLL6Dh2V07js69kYFcpD7TECMugWy?=
 =?us-ascii?Q?faqVWssxLuIoorhN26rGJL+SQs5CUplrkYHzmzm84eljRy4jUHV2uStD1Nkb?=
 =?us-ascii?Q?70HWzM2YPxHmpE+MHPwYJtzSPQdqS6rEepUcP7v9sOaAc1vMwFfraALXq6/Y?=
 =?us-ascii?Q?OWItm9NJdoub9lPyHWtIJw8NdRFWaEySJbP862KYtE8luRGb2lqUvyRFKNmg?=
 =?us-ascii?Q?zY1AYFT1g2d+k3HvlNRTr/Q95gXu6SLm6Jy1GWUzm93PvtFGBt6NGocOulwb?=
 =?us-ascii?Q?qWhXFEEMrI8xuS33YHy6k8AvJ9JQxzUKZ+WKjqWiaWWh9NYQLAxS3t0Fz/+p?=
 =?us-ascii?Q?yI+b+rJmz9pdFR8sZ4+f4/zopkk1/8hZeSlDheFw8aB4dfB28V3WpbGCDJ8P?=
 =?us-ascii?Q?URz/0yWe/Z+O6icTkGYStEVAnVtchaePOxVYKcAeYCifMrgVnFBOfvZcGa2Y?=
 =?us-ascii?Q?kA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3ddfce1-e270-450d-5521-08db41bdddd8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 16:39:52.9080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bLE9DcO6ckBc0LJAwB1KuvADDIoC0E7yuj2eQl9TqG3cyMw9ZK39W1gobTuB3M1AVCgY+VOSnsKEmfMfqv0Cq38Q/Z/x9H7Q1gsZdyUWdNRNHxz9cNu6CczLuTGuF4A+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7583
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 20 Apr 2023 17:20:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682008799; x=1713544799;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tq8Qb/uERZr8MtEaaty7AOODwhXQtObJOZ0n7IuEdbo=;
 b=XSLN+mrJTjeLf84u0beLNVnb8gkT6TAGHD8L0YNecqiNSFbjvz5TBCSF
 KP24eZ/LXgPXZ8MioeQrghsOsgiiow9vM9o4ICX12E/QMCHdZ3oVzjdTs
 fbKmpVHh/5MUtcDjmhmjRUjG7ueX5oW2C+S+i8RAa/xOx/jVrlv5lDoft
 ADRXqWVbZRijgF/2y0mDYXVSpE7eOHF9zwcxL5NZDjCMYvjBraz/VWroC
 dzI6KBVDUEvkfMNBAOYfI9V2XyL/AQrmcXG9SJn2b3x7KR1mOgYBic+Km
 r/oIPLh6wS0XdmX7QXSXMw50t0HNGybJSlcTPTmiPiSHSJoPzzt5eNAJw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XSLN+mrJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] ixgbe: Enable setting RSS
 table to default values
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Joe Damato
> Sent: Monday, April 17, 2023 10:29 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; kuba@kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] ixgbe: Enable setting RSS table to default values
> 
> On Sun, Apr 16, 2023 at 07:12:23PM +0000, Joe Damato wrote:
> ethtool uses `ETHTOOL_GRXRINGS` to compute how many queues are 
> supported by RSS. The driver should return the smaller of either:
>   - The maximum number of RSS queues the device supports, OR
>   - The number of RX queues configured
> 
> Prior to this change, running `ethtool -X $iface default` fails if the 
> number of queues configured is larger than the number supported by 
> RSS, even though changing the queue count correctly resets the 
> flowhash to use all supported queues.
> 
> Other drivers (for example, i40e) will succeed but the flow hash will 
> reset to support the maximum number of queues supported by RSS, even 
> if that amount is smaller than the configured amount.
> 
> Prior to this change:
> 
> $ sudo ethtool -L eth1 combined 20
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 20 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9    10    11    12    13    14    15
>    16:      0     1     2     3     4     5     6     7
>    24:      8     9    10    11    12    13    14    15
>    32:      0     1     2     3     4     5     6     7
> ...
> 
> You can see that the flowhash was correctly set to use the maximum 
> number of queues supported by the driver (16).
> 
> However, asking the NIC to reset to "default" fails:
> 
> $ sudo ethtool -X eth1 default
> Cannot set RX flow hash configuration: Invalid argument
> 
> After this change, the flowhash can be reset to default which will use 
> all of the available RSS queues (16) or the configured queue count, 
> whichever is smaller.
> 
> Starting with eth1 which has 10 queues and a flowhash distributing to 
> all 10 queues:
> 
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 10 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9     0     1     2     3     4     5
>    16:      6     7     8     9     0     1     2     3
> ...
> 
> Increasing the queue count to 48 resets the flowhash to distribute to 
> 16 queues, as it did before this patch:
> 
> $ sudo ethtool -L eth1 combined 48
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 16 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9    10    11    12    13    14    15
>    16:      0     1     2     3     4     5     6     7
> ...
> 
> Due to the other bugfix in this series, the flowhash can be set to use 
> queues 0-5:
> 
> $ sudo ethtool -X eth1 equal 5
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 16 RX ring(s):
>     0:      0     1     2     3     4     0     1     2
>     8:      3     4     0     1     2     3     4     0
>    16:      1     2     3     4     0     1     2     3
> ...
> 
> Due to this bugfix, the flowhash can be reset to default and use 16
> queues:
> 
> $ sudo ethtool -X eth1 default
> $ sudo ethtool -x eth1
> RX flow hash indirection table for eth1 with 16 RX ring(s):
>     0:      0     1     2     3     4     5     6     7
>     8:      8     9    10    11    12    13    14    15
>    16:      0     1     2     3     4     5     6     7
> ...
>
> Fixes: 91cd94bfe4f0 ("ixgbe: add basic support for setting and getting nfc
controls")
>
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 19 
> ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> 

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
