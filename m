Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C751173746F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 20:37:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 635AC822CD;
	Tue, 20 Jun 2023 18:37:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 635AC822CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687286233;
	bh=/kPa1ER+5JhTwGKWwljG/3BGUFjsYOyvOAeFMfPmRBI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5mtCj+daiAXCS7J8bHSnuNlDTCsiE3YI4OdCqee9JUA+JJJTi9vaEE2E1nrlGLgKF
	 Yu/9hziA7EwbVuxiZDDC2Kn3NnkqnZoU1D+vqMPFwDsVOnH4KOo256gaQbknXhoZH8
	 cmi/ScMBXkkZJ+Lon/1p1wjlFw2XEVYiqdkwA0+sXICUqNNHjuVMCmnG0Q0s30rolM
	 bofZBx9Fb/wBEg7iRykKUWtnVPkTXE5wHf8KmkD4EXy2yeJFBs9hehzavN5HvvvbgX
	 q//24WlsTutQOIF1LNLYUPlPmrEGfXF8UdePMNUTyoxQv6PNaGZDTLDku8urvw7yLj
	 aBxISaNh73yRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hoLvTmS5c5T3; Tue, 20 Jun 2023 18:37:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2690B821FC;
	Tue, 20 Jun 2023 18:37:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2690B821FC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26D1B1BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 08F27419D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:37:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08F27419D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BYAj8XUUU70M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 18:37:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A906C41991
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A906C41991
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 18:37:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="344696155"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="344696155"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 11:36:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="708398252"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="708398252"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 20 Jun 2023 11:36:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 11:36:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 11:36:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 11:36:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FO1A/QGHkKFlnZK0DMSBM/iaeYLZD+HwMCNHLRrD5iX4LIIZi8n5OFhtjwVk1TFmkmomez68GQQX2rJryeGEworrRRtsRbKFVewx0/TTjxcH5y8BNKfMzZDXkIVcd8b/qGvKfzUWxiY42zIXeLe43SANFr/S6j6gztzGNY3BGfB5pWDochA53q1GVv64pAeuz4AVTMLy9MqYYeXDXfNfnr9Mmc+xAsBfmh4yZ4qi2MshtJxI6jtMWz9WxX9feVtMPkOvCYwYBaLcIo8353nouaWTkP1K20rDoGgPaf0xtXr017Op1dgegsmpvgxM4zmWgzt+J6y+P6tmY98n8j0WWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ysvTB/kPEo0ju03MhYIdLyu4Itgnrg44cIzlqO+ed0I=;
 b=Ln31MDW/s6JyvE/YSYar/uFXwrU7y/c7bDLPphSGai3fxxKHtFcqKxDGFrI7qpUT0G09/L8paL5J4zKi7lbQ9J1ZstCQZp2epOCRE+BegWA8Oe92EjYcTxx8E0dCP7oEaocvQl/Oy2N2ZKA4k+9aLj4oXrx+L261Pcy1FgXUH0ytNKBpmSGpmVLM2cVF8yLgUVc0d34BouH1SposjaBED9xhl6hJ7NrdoSQ8zgwvrgbvdb72jSoRKTRIJMQmsP1gHaaeQOWB4YJOYUxf04KcQu4FDRMa36J4rg3rgvUUFoz5aTtGAVJKULx+YzvJgDMi0J/ojiC3UGggXSwVipa7CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BL1PR11MB5496.namprd11.prod.outlook.com (2603:10b6:208:314::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Tue, 20 Jun
 2023 18:36:50 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 18:36:50 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Zaborska, Olga" <olga.zaborska@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change IGBVF_MIN_TXD
 and IGBVF_MIN_RXD to allow change of rx/tx value
Thread-Index: AQHZoGVIDhS/nwSZf0WSvJNjSF0NJa+UCDwQ
Date: Tue, 20 Jun 2023 18:36:50 +0000
Message-ID: <SN6PR11MB3229C8E5C13B17847D2F2EBFC65CA@SN6PR11MB3229.namprd11.prod.outlook.com>
References: <20230616114729.27926-1-olga.zaborska@intel.com>
In-Reply-To: <20230616114729.27926-1-olga.zaborska@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3229:EE_|BL1PR11MB5496:EE_
x-ms-office365-filtering-correlation-id: dabb5921-9148-4fb1-2098-08db71bd4fa0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pAjKkt6u3LUEPkk8BHcFU07TQNjpEMCH8w3jDEx/RL+unOnoBLfOVSGmDEoPhOd+7XQ5H8/bbmFeR+umOGe9DCb+GtuWFc66ozcVb1EW6xHtTSzZTHbgvsqM9pfo8wEAzghAzSgAC5fVzgKTJwrgqA5jCDirhd7n3QNnod+gv+ugxPcxzCP2FFFwcIOcyC7XDLLLdRcyhcUwy4B3IulDEpraO+NgYPSDHhjC32swLArN4cxcllYHuYbCg7n4tXAUx4mnjknzD7nDagiqLK6/0tDeKlO51gTHbpvHSopUcYLzjp3jhehR/xki0TLqzs0t7e3GfgQaFCUaENdF6cgD4ZIOQSlU9ymWIxoEpcDbTIWLovFpDFox+YzCD6VaLCvRIevksxIfo72Db87UQtgT6G+uOG0A7WaGw4DeUlSheuk2o+EnPjfiBqMSpQBaAOWaAolDlNuuRmhGe0/9Nrf09RJsEVPR0U6Jqzkm4KCMJ7GJdDzpsX630MDUba06MVTky1bp1Y6USE/b63YkSnmEYcY8vRHkauL29PZZgJyQwSt98IDG7VjPC0MdKnnDK+y9eeFqsefFhKmu1Yqk1i5wYP7FG5AsuZtdgBYLhUkktuE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(366004)(346002)(136003)(396003)(451199021)(53546011)(966005)(107886003)(478600001)(7696005)(71200400001)(110136005)(83380400001)(186003)(26005)(6506007)(2906002)(9686003)(5660300002)(52536014)(33656002)(38100700002)(122000001)(316002)(76116006)(66946007)(55016003)(82960400001)(4326008)(8936002)(8676002)(41300700001)(86362001)(66476007)(66556008)(38070700005)(66446008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QuiZIaP6w2/fKCyynp/fl0fbSlDhDMR2dtochYIMMMnxqX+FWeMuxbrKz97k?=
 =?us-ascii?Q?3A6PfhJB5zeTJcYivCPTXgRurxeOhDIZQAHgbwttQJP+FgJkEfXCQ6Fj0Ps1?=
 =?us-ascii?Q?w258ZnCngBSAnNZMjm7e8eQqhnhrAFPmDe97azgwR7WtH69K7iuyexBBONxx?=
 =?us-ascii?Q?r8P9mktRYLcQoEHo/dsTjlSbSWUm0GBmJLTvrokbtz+rrJ98qWCXk9yUQmGt?=
 =?us-ascii?Q?tMmTZaTBytUzKWot8MbYjh1klG+9mCddErnBROEYl/lUtZLeVkOVHYbBY0J1?=
 =?us-ascii?Q?oqk3yctR/Y81UEkyfTxp9Gd1IL5GNSlKCmX3seXdVYzXyca5FsfRNTjwPIly?=
 =?us-ascii?Q?5cy3D2WP0TDK4Iff/oO2sthOJF/EIs5r3vJwDoIjtyd7V1qjZzDU+k7oR/DM?=
 =?us-ascii?Q?+/Dk+xmONjNb7+8I9CfJv2L0bT2dKqJMrgfBMGVMKAWwh/zciS8R45UFv5i0?=
 =?us-ascii?Q?KwtPZ3YCiEj6NW4rD8Z7FvEYHNjJ7lZ2dGrYQN1i76CNmDCDOY3XUmzRyWKq?=
 =?us-ascii?Q?DRhDwwiYYvPD39hzuwi3G4MDerxpLHe8ewyKa0P+rNJ0KDoS5KqwaD5E91ia?=
 =?us-ascii?Q?MsApLLEiSPNAZzmrdno6xBdtqnBAr9uJ8++N8nUpmyDkdP8fxNCc0FkaNcgT?=
 =?us-ascii?Q?ek5mADOqQH7A3YfBtdvbZlR/Yi4JIfC2pNaz9EU1Q+IZpkY+BQmcdEBdvCSR?=
 =?us-ascii?Q?Z+9PZgW2IvjfjazUO4HkMSzDnnyKf/2v+o4nUmlX9+9xdWkqhGr0IRyDadRW?=
 =?us-ascii?Q?OUkgfyR19Lzhhd0T9RDEPHWl4yPVDMbeLVHfgXrgLpum7kdMoRFPJTNm0oTC?=
 =?us-ascii?Q?r7GkmUZo3WWlvzAmnmojJfAMy4a9CALyctfL4818LEHZzicfk0k81x/zf7mv?=
 =?us-ascii?Q?GEHvm94oqzjxRiMWszGZWsJZzgrCaWzbkGrmjgLU0xEtBnHQEuk8W0niP5ZZ?=
 =?us-ascii?Q?S1arrtj7ydzPm0k6IiuXbeedvQgFjwmC+uwv5jFd1TX0OKHNmWmZEoFMIHNL?=
 =?us-ascii?Q?uWYMRLsQ2FczCSKysV7Uy4fI/W8JExUbbZYFyg8delZ3a7blxZBXcrwgAVSC?=
 =?us-ascii?Q?uu7LQsNT0KOqMCeah43fchUBV9jbGyhhrRqwxeKJTzSudY3PCGfncU+iq9za?=
 =?us-ascii?Q?o5atHRSxyATNk16TQ62P498sCLp/4WwkefXnanjWbqwbrLXCPbl4soyXwqRK?=
 =?us-ascii?Q?ggtl5jjNfePqQSulhBNPPS3/Jrr1duoJMhupv6JOopUSMWrnsYISYcOL+lvi?=
 =?us-ascii?Q?VJxH4UzD4Oil7O8pRRZR6ySm5gl5Rav5rd6lagB1ry20w8D4GlvMqi2PteUd?=
 =?us-ascii?Q?Uyy16LmpJWR7+Uj6GgpFcHddxcmZq0fPN0vDVUgF2qEYWF+y9WRXp7wkShRS?=
 =?us-ascii?Q?ulZi7N5OLGl/C5BuWdXpnrMeuJq38a59jer6gEzW6EevBIDmBAIFwcFx52Y8?=
 =?us-ascii?Q?YINbaEjnIiTBW/YbKtpS8NVM3nWf2B4jmiv0g8Uoj2bPF6wJWD1X7n68+rfY?=
 =?us-ascii?Q?9JMPN5fncJCX9k4Vq3mG39NnbvTwU8o7HvX1bAnOUiOyi0WI9IxLpSTOZ5M2?=
 =?us-ascii?Q?x+HrCM6HhdBecKR1loZsDo/vxM9kU9vGvvfY9DikIhv02SdOcy79YWNLnd9R?=
 =?us-ascii?Q?IA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dabb5921-9148-4fb1-2098-08db71bd4fa0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 18:36:50.1464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pMKVkO61dbaG6AkP/yNW3ZzAb7xBLHbEAWjDLU3LPPdAOaCR173Lxsy7O+Ai1i+6l8QMYHCCGRHib8B9lsO5+CxxgFHi+e2ONmHjTLwURkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5496
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687286225; x=1718822225;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B6rsyR/UfuC9O/wdjWKGeGVjscvjs1HoDBEsfTgkUPk=;
 b=V2kFr/f1j7UHEIOflyeTO6pz5jz7gjI6Ay3Tri8izf/TrcSQL7lzXJYJ
 NLPnLbztaIeikls5buDuCU0F9SPeqjhLpQRDcdNYUh6lymJVd5LPlWRYd
 zCJDK+Khk8FYCDPUu0T3A7wgkI1uU1zc+eQOw1VZO+MfXM6ittjMK1JsF
 zOcH7GOjPogONis9Teu2dpVGKXlz7U2gi/FuWYcFubFEwoT2o9OnZno0H
 e1DMHxVDXpcLNhFrVWQRXvaAEKg0TvuyBIsAtTp8BEQkczpZ3tiLuhcMV
 kaAVYt7boMQdD2lELzbNbYHolr9FCIUea0iIeAcCU3hlyq0vvikEDLjI6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V2kFr/f1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change
 IGBVF_MIN_TXD and IGBVF_MIN_RXD to allow change of rx/tx value
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
Cc: "Zaborska, Olga" <olga.zaborska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Zaborska, Olga
> Sent: Friday, June 16, 2023 4:47 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zaborska, Olga <olga.zaborska@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change IGBVF_MIN_TXD
> and IGBVF_MIN_RXD to allow change of rx/tx value

This title seems a bit misleading as I presume changes are allowed, just limited on the low end.

> From: Olga Zaborska <olga.zaborska@intel.com>
> 
> There is currently a bug where when setting the rx/tx value between 64 and
> 80 it automatically sets to 80, this will be fixed by changing IGBVF_MIN_TXD
> and IGBVF_MIN_RXD

Any insight on why it was 80 before or why 64 is now ok?

Is there a side affect other than not being able to set below 80? Since the referenced fixes is from 2009 without anything reported, seems like it'd be more an improvement of allowing smaller sizes than a bug?

> Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual
> functions")
> Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
> Reviewed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/igbvf/igbvf.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h
> b/drivers/net/ethernet/intel/igbvf/igbvf.h
> index 57d39ee00b58..7b83678ba83a 100644
> --- a/drivers/net/ethernet/intel/igbvf/igbvf.h
> +++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
> @@ -39,11 +39,11 @@ enum latency_range {
>  /* Tx/Rx descriptor defines */
>  #define IGBVF_DEFAULT_TXD	256
>  #define IGBVF_MAX_TXD		4096
> -#define IGBVF_MIN_TXD		80
> +#define IGBVF_MIN_TXD		64
> 
>  #define IGBVF_DEFAULT_RXD	256
>  #define IGBVF_MAX_RXD		4096
> -#define IGBVF_MIN_RXD		80
> +#define IGBVF_MIN_RXD		64
> 
>  #define IGBVF_MIN_ITR_USECS	10 /* 100000 irq/sec */
>  #define IGBVF_MAX_ITR_USECS	10000 /* 100    irq/sec */
> --
> 2.31.1
> 
> ---------------------------------------------------------------------
> Intel Technology Poland sp. z o.o.
> ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII
> Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-
> 07-52-316 | Kapital zakladowy 200.000 PLN.
> Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu
> ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w
> transakcjach handlowych.
> 
> Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego
> adresata i moze zawierac informacje poufne. W razie przypadkowego
> otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale
> jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest
> zabronione.
> This e-mail and any attachments may contain confidential material for the
> sole use of the intended recipient(s). If you are not the intended recipient,
> please contact the sender and delete all copies; any review or distribution by
> others is strictly prohibited.

This footer needs to be removed.

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
