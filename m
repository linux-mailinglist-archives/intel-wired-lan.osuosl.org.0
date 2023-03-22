Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768106C4F43
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 16:19:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18B91417E4;
	Wed, 22 Mar 2023 15:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18B91417E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679498356;
	bh=+LY+G5SWqjmxHZZlB0iRPxwQd8odrZ81D+GkCXmYXVs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LN0cCoLOLgio+xuZ6VuV7ynAuTz8J8CFE4mY8umA3Dc52ydxmFiZOqEqj5faSsCh0
	 nXULMfq54j6vXJVJ5jEnizRcG+mPHk1/N/JN52GOHqlbK8HSbmozfvfxJkZnhR+XmD
	 qxMMWxNdIag3w5lHgAuEEN5wzv/vllmlCW9zuG0KY+Sy0Y/RYoJaiFVOLZn7ljNP9a
	 2rLg9h8e0Vsvx88/in61m4N0XeQJSBj1Gykg7UFsGtJqvtdz/fx7yCKkcZ/nX5nrw6
	 qWcCSZmLm4lMSYzINm2rfo/LtMlG2lBEwRK7StTkAL+iiSan+1SNfEHSiQXWNtV/bP
	 JEY66uI2NjxMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6IblgDsyp79o; Wed, 22 Mar 2023 15:19:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CC26417D2;
	Wed, 22 Mar 2023 15:19:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CC26417D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE8DC1BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 02:16:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 845C0413A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 02:16:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 845C0413A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FRgrdvNXMmMT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 02:16:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6802E4139E
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6802E4139E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 02:16:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340644714"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="340644714"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 19:16:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="659022579"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="659022579"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 21 Mar 2023 19:16:04 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 19:16:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 21 Mar 2023 19:16:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 21 Mar 2023 19:16:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i1T+4QQn/6XwB3Fj0eqeIe0+bAMwJEBG41b1P2MgKmqhyBKTZ4uubXejBXXR63UFMJL8yWdq6edSvRpzVQaMHtvQvwT9mrHXlVeGMVSWSXFot+sz9RZjudNFmzR6dgp3Zwkj90eCcQ7uPMc6UocjEx+sIDweDhD3H76y2+7kGBzIz3Nl2N9LwEr/ahN2W5gyfF6a2jh/XVV/HxZNvKTNw3HcTANB6pqZ71FoPugHEiTqYxt5vffH56+7EBvsZmVgwGyL53CUQFDYtwLnbDtqowxdLoiNigUfhSlS0fY1AuOeinHB+p6VzbwNwDuZa2nhILGL3gufz8WoupUYB2FyOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BIAtvo/c4EV9oW2Hb1Jd4kwygW1QnunyRrOJkz2into=;
 b=nzwW/Vch/RW9qo1l03Yp11dQ8BdvBUfKUhCV/5qO+uCBL6l0I2yWaxdT88zsSYvoT9beOj8ALsCYUnigIpVPB3hitmWdAqckmc038SvEmnmsCpo2NNswxUj10ANKlam8sTwLV4ZyEmLBg6ld808ZSIn2lVPaMINa7vOsAMGdnH0VHJ4yqHKO9dHMB+EVbqZFhx1VM4TBweKeK/ibASEjiilgywsq7N9hO5jEBwLqCTajNf8P+81xCjIPgGxsC2QbKhfhoJBp/5wEeMnLo0jPHwhCFLeLhZEbhdNEiCmUfwZezJrwGtYFdZhhOKm79m93ipj9X3fYn/pXLlwbYYn2OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6613.namprd11.prod.outlook.com (2603:10b6:806:254::9)
 by SA2PR11MB5035.namprd11.prod.outlook.com (2603:10b6:806:116::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Wed, 22 Mar
 2023 02:16:01 +0000
Received: from SA1PR11MB6613.namprd11.prod.outlook.com
 ([fe80::b820:ab95:f6fb:6f10]) by SA1PR11MB6613.namprd11.prod.outlook.com
 ([fe80::b820:ab95:f6fb:6f10%2]) with mapi id 15.20.6178.037; Wed, 22 Mar 2023
 02:16:01 +0000
From: "Su, Simei" <simei.su@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix wrong fallback logic for
 FDIR
Thread-Index: AQHZW8Jq1W2G0MrQqka8XJNy+CcMNa8FrG4AgABj8aA=
Date: Wed, 22 Mar 2023 02:16:00 +0000
Message-ID: <SA1PR11MB661372102584A2E76715FE749C869@SA1PR11MB6613.namprd11.prod.outlook.com>
References: <20230321065658.699675-1-simei.su@intel.com>
 <d1f0c025-a427-3ffe-9e4c-8ecda89d5e53@intel.com>
In-Reply-To: <d1f0c025-a427-3ffe-9e4c-8ecda89d5e53@intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6613:EE_|SA2PR11MB5035:EE_
x-ms-office365-filtering-correlation-id: df166223-d910-4e79-c771-08db2a7b615d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9tneFrQTvYVaZHdC3tUFDH3NMv5Nk+gvEuVEBUXqS5GmchlimmA2lsUwm13xdvphgKI5p4eeenoPqFqLDgp4Qv/n31U/TmJH8YJdXWw+KHnEw83nCFHONBS9cjlhFcwsAs5Pi3o4D11MGQa8hbVBG6C240ZL8C8Gxx8kv6RMGswOWCGA45dNGEk2ZvU0iFud6H516w+lYynKXddo6dyLMtrahXCXJhFnbPsdM9DGKCA1CWlX89GBNlZaIL1BBGSTKGgrCzfvYAvDsiYtwoUQkn6VXj3dNg3al26a/WUbBnPXxe0oRPvXYbp5vjgcRXt0QG5lN//O3rA6UByFP/VH85HYOfT6sEb/GRk0/cx4CtSJhvJFKag3Yn8VHgCqFVIdKQEGFSAIUsNCp8+JUPnx8G0mK27Hj3lUfir05sPbXl4XMcULrW+T5uHk1SISwfp2w4nsXvYS6ZL8SX9yH63tW6zgVS57oTPCTigkhJJTQcC7cb5V113DJF5Wy5AdN0XYYzZY9PF81NcOy4YDF4mbFBf2HShX8OhtuBLc5PWdUwQ4JQXs4N4a7KiLYaFWUllkcoukW7L6W3WGfpokc/yIG8EWMhDqWsQm05n6n6Jm38xGkPbpH3+P8xE6uyxAe00Wp1h5oGLIylPwMqDdhdvK4K8oT12qsQ9T0l46MFpqkWmmnrV2WNc6/a+gogLG1Xlx61PEfs01ua10/RS1ojJMpw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6613.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(396003)(366004)(39860400002)(136003)(451199018)(8676002)(52536014)(66556008)(7696005)(82960400001)(66476007)(66946007)(66446008)(2906002)(8936002)(5660300002)(64756008)(76116006)(86362001)(122000001)(38100700002)(33656002)(6506007)(38070700005)(53546011)(478600001)(316002)(71200400001)(55016003)(110136005)(9686003)(83380400001)(41300700001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MlhsbTA3Z1p0eEdPSVBkOTQ2SkhsZUhQejZ5Z0F0KzV1WHZBS2tyMEd2bnJ4?=
 =?utf-8?B?azlqMUtxSHJETmdxQlhaNkRmVVRJWWxoOFZRNVVGeHA2aVZrVGFnSGdlcVlU?=
 =?utf-8?B?ZDZpRlNvVW9vRDVib0pmVmx2R3Fzb2xRbFlieHZ6bG95R0xPaEp1V0RZb2hk?=
 =?utf-8?B?Ykc5MkppcHdrd1h4KzJKc0VuMG16bjczSHFWbGxsUm43ZE5xd3JTZERTZ1JR?=
 =?utf-8?B?VlRQRVBLL0J6S2JFc1NMZDNKQS9FOUs2TWZSZ0JKWWNEaHFlSkl3MC9ucWxW?=
 =?utf-8?B?YVNKNVdXL2hha0ltSHlINVBOZHRkb3pJUW9FeGdra1Jzc2lpSUltcnlDaUlE?=
 =?utf-8?B?M2dzSUpuZ1cyU1hCazQ3cG5CVEM1bnp0c2FKY3JKTVVkZGpjcGxVU2FxZEEv?=
 =?utf-8?B?OUlZMnp6ZTB3VHRBcTE0OE5IRFpLcTQxd2xYRmwveWFLbU0xK0R4Nk1zYWZP?=
 =?utf-8?B?SGdVNWkzRmZ0M25XaFdIYVVvdjZNM0lKT1FHMmVmUmorNDdkTUZvZjEzQWsy?=
 =?utf-8?B?c2JidTVSM0o2UXVINXcyeHRxZnRqMHBBYkJVM0xxRDhFVTBZTXlLWVZYeER1?=
 =?utf-8?B?Y3VDSnhRdSt4VXJ1NlNmZThmMmgxN3d3YkE3WDJkdHpYcG1COGZHOFJicjBo?=
 =?utf-8?B?bFhDYmpMZWVuK3BRWWVyUEJvMzZtTnAzMUtRVGM0SWdOYzc0U2NSSndsdkFz?=
 =?utf-8?B?WnlKdU8zSitqKzV6NENtSmVtN3ZvZDU0QlA4K0lBd3ZNMVBKUENxcFdGYldq?=
 =?utf-8?B?eGoxZ1lnVnFJbnFDcUkrVzNSekNKNFRwb2tlQ1EzSGFqQVVqS1ZHaTJzNzhx?=
 =?utf-8?B?VFo5M0ZKMG9Ra05FZXljZFVrdTFaUGZraXpUY1JLMS9vd3JSamRsUkhEY3oy?=
 =?utf-8?B?SURBNUcwQWVxdUdEV1RPUmRQMWdhdzdDNEphQkh1b2x0VWVaZ0ZpUEFnb2x5?=
 =?utf-8?B?MEtzY2Z1TVNTWEVzYlN2eDlmYXVrNUc5dWdhRytKTmhlcjBFeU5TUW1BVW82?=
 =?utf-8?B?akZjQTJwVjRxbUQ2aG9uNlpTNnJleTlxMTQ4WTBIVmw3b2EwejZnYmpWcW40?=
 =?utf-8?B?S0NwQ1hPMGRYSEhYazVZbDc0MlVDVlh4eWJ0aTE2S00vTmJvNXpDNHlIanhw?=
 =?utf-8?B?UjFSMGxqMEFnTk5HbUJFZjdhTy9JUzFMZlNSV2hid2lNeU81TndLelA4TUR6?=
 =?utf-8?B?cVpuNFNwSzJUbDlaS3g3Q09XZEZWYXJOVEwwMWEvbTJGdXFGaW9KKzlFcXY0?=
 =?utf-8?B?TXRaR2V4citJRUxSUGROd040OWtDOVVoUkdBc21JSlV5emwvYjJkd1l3VmhH?=
 =?utf-8?B?aEh0eklrSlpzWnc1Wi9oZkJEY1JrN2JiVUovNDBsTUpuWXIwcnlZNWFIR2lt?=
 =?utf-8?B?Vmp6Rnp1ZXZ2QmFoQklCOTdVVlVQYXFlV0M1Zm02cDEyWUg2VWl5U0FwTUVm?=
 =?utf-8?B?ZXdBN1Y5dHJUY3N1RWU4MmVxS1dhZlJXcmlFZ2JQVTVJTVpDazM4K3Zjdncx?=
 =?utf-8?B?NVZ0ZHBhT3hCSWgvWHJ1TkEvSy83TFRqZTlWVGkyNldGVkdRRlFVNUdldFVo?=
 =?utf-8?B?blFEKzAyUmRuOTQrOTRqNVBWMHlha1d0d3hwY29NaGJSVk1td2dwbWFQY0dY?=
 =?utf-8?B?dHVVYTErMlUxVis4MWs1NzhvZ2ZxYlRnclB2SElaZlpIRitmL0JGb1ZLQVZI?=
 =?utf-8?B?VG1LcWh3Z2d6d1p6T0lQKzVBckxIeVlndlVYcU1VcHBIUS9JMFo2UWtTVStV?=
 =?utf-8?B?OXljdXFGcC9JSytmUE9GRFpKSVhTRFEvcnZBTWoyS1VtWjVYdVhCLzVWQ29C?=
 =?utf-8?B?cWx2cS8xTVhVZmtnWGtHbVVlQldlVVNMMGlnenI1TkF4QU1BckdsZVF0TUtk?=
 =?utf-8?B?Vnhwc3UzSjJMdnk2Z1Z1YW1OR3lkWnM3UndMa1ZNRzcyYitlTGxKR0RLQWxh?=
 =?utf-8?B?M2RiazRlbldOUkhMb2RZU2RYZ3pNS0lHSXZrbDI5MC9tUVJ2V2JTVzMyNjU0?=
 =?utf-8?B?bjRndTlLL3grNlJHbDU1SzFCN3MzaWlVbElmQmZHVkRtQXVoTktFVllMVW9C?=
 =?utf-8?B?MHc5SHdnT0tuMlh3R2lSQUllTmRvNVg3WTVCKzA5c28zanBLRDF4NStpbHQ0?=
 =?utf-8?B?NHcvN3Q2M3RVMHQrTXAvRFp4SHhtbDdVdG9oRWtjZWlhbXJqUGU1OFRSR0tj?=
 =?utf-8?Q?nKyM9AtbO/EqoK0Xuc1j4tz3BNLjYn0S8t3N4UNERkMZ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6613.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df166223-d910-4e79-c771-08db2a7b615d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2023 02:16:00.5468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hWV0F+SAA3NrL48trN1g34RPuoekY4kbWhrPY9sZm/mMtqM4r/MSRR6t2KNRheVZh73GpuuxxM/Hf9mydOZBvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5035
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 22 Mar 2023 15:19:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679451373; x=1710987373;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BIAtvo/c4EV9oW2Hb1Jd4kwygW1QnunyRrOJkz2into=;
 b=MeGTWW8hva57B+LCYfXDE5nG65fWaOil+cDUKMQ36aJq5ZCR9C8WSPGJ
 JsyXaDZzXhP2aobAm8ImydcMXm2ByrYnN7HU3v1q5cA4ii+Jyd2sDkO7l
 AbUan2bCB6yWid5P6jxx9ZW1QhaNrhmHKaZPu/LIqR5+NFbzNewD0g7P/
 FDis76Okzs8TUH0g0J95BP10f1M+opfl/q/RKwGq9zWR7nxOHCCCZIMS2
 EVf4ZbqQpqQr59msg4bYbT/hPMO26dS4LX5bkZgSX0pP9HY6B2BM4Y3ib
 33z2h0EbA0DaH1cbFzy+iQ0qJzJakE8aWHf9GMksv2S51A37rhBKcUN1Y
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MeGTWW8h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix wrong fallback logic for
 FDIR
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
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Wednesday, March 22, 2023 4:16 AM
> To: Su, Simei <simei.su@intel.com>; intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix wrong fallback logic for FDIR
> 
> 
> 
> On 3/20/2023 11:56 PM, Su, Simei wrote:
> > When adding a FDIR filter, if ice_vc_fdir_set_irq_ctx returns failure,
> > the inserted fdir entry will not be removed and if
> > ice_vc_fdir_write_fltr returns failure, the fdir context info for irq
> > handler will not be cleared which may lead to inconsistent or memory
> > leak issue. This patch refines failure cases to resolve this issue.
> >
> > Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> > Signed-off-by: Simei Su <simei.su@intel.com>
> 
> I believe your git configuration/author needs to be updated.
> 
> WARNING: From:/Signed-off-by: email name mismatch: 'From: "Su, Simei"
> <simei.su@intel.com>' != 'Signed-off-by: Simei Su <simei.su@intel.com>'

OK, I will update it in patch v2. Thanks.

Br
Simei

> 
> > ---
> >   drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 7 ++++---
> >   1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > index 60c9da4aac1d..c03e4a7ae80b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > @@ -1812,7 +1812,7 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8
> *msg)
> >   		v_ret = VIRTCHNL_STATUS_SUCCESS;
> >   		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
> >   		dev_dbg(dev, "VF %d: set FDIR context failed\n", vf->vf_id);
> > -		goto err_free_conf;
> > +		goto err_rem_entry;
> >   	}
> >
> >   	ret = ice_vc_fdir_write_fltr(vf, conf, true, is_tun); @@ -1821,15
> > +1821,16 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
> >   		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
> >   		dev_err(dev, "VF %d: writing FDIR rule failed, ret:%d\n",
> >   			vf->vf_id, ret);
> > -		goto err_rem_entry;
> > +		goto err_clr_irq;
> >   	}
> >
> >   exit:
> >   	kfree(stat);
> >   	return ret;
> >
> > -err_rem_entry:
> > +err_clr_irq:
> >   	ice_vc_fdir_clear_irq_ctx(vf);
> > +err_rem_entry:
> >   	ice_vc_fdir_remove_entry(vf, conf, conf->flow_id);
> >   err_free_conf:
> >   	devm_kfree(dev, conf);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
