Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AE4483119
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jan 2022 13:40:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 345E881A16;
	Mon,  3 Jan 2022 12:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-Pt-6TasIb8; Mon,  3 Jan 2022 12:40:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B35D81A23;
	Mon,  3 Jan 2022 12:40:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D2461BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jan 2022 12:40:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AE9D402D8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jan 2022 12:40:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id faw3xakHHVJo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jan 2022 12:40:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7718A4023D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jan 2022 12:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641213646; x=1672749646;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YxYrG6ncsj/Md9LVYoblY96C8zTAJBsB84xDPd9tXog=;
 b=Ni/bEDuKQMETPctb1IpYkgaBkO2jVGMYO1SC7X8dgGscUOqZ6nUfvukr
 2RYSNaCiQsmlgIC6FMaqDnW0P67VyVhhn3dPn9r61nPKa2QwARFkhxMyG
 hU54uOyCgCPntif83frUHE1CIsEacQSWvbiJLruis9DrXgbS0eiPIRDjZ
 75TtPmGrPZkxowqbEV94mbDvMyTdBk8sHbAfw3EahJMAqCYWRPaWQej9z
 CBya0CNQ+2AlrwO7U6N/Im66WNIHV2m9GBNTDNHv++MqJUEjipjImJD2j
 hpC4HWrVzhag1SkorMzLJwCGIX5r/atVEE5ZQl5N18JUJQttLZ5B2rjzB w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10215"; a="242258782"
X-IronPort-AV: E=Sophos;i="5.88,257,1635231600"; d="scan'208";a="242258782"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2022 04:40:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,257,1635231600"; d="scan'208";a="667395177"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jan 2022 04:40:45 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 3 Jan 2022 04:40:44 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 3 Jan 2022 04:40:44 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 3 Jan 2022 04:40:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bo81+l9VGyRtN6vO4m/0XdlzZ0wB2LxVIno0W3rDPFFttpPSGEpyJN6eDkagzUIgU5qbMWDV5OrJzjN1f9hsBjCaooyD86S+fbiRQk/GmJN2gqkda/K8wDlLTpIn7Q21VmnLzgoRuYhKyTkkZnv/eVJhbTs+7v29tmN+aMPTFQwGpc/G9qVsHwL/eFW3djPHGElwOQXcF20bk+aNB5kg+RV7CB5q3frAew460E49m9nQl2pf/wc5N18NqsB0eo0gbO4Q0a3cPS0qSuUXy6rzYVmsXn+1lEymzM7eToKKT3UJJ+peT0VP1HADiqZ5iT1SCpjKHoXouQUOp0HmEcbQTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YxYrG6ncsj/Md9LVYoblY96C8zTAJBsB84xDPd9tXog=;
 b=Auwka8k8tc0PrZSbwCSm/ypGJJODpNoz8K/GmLnXLWFNGeIkYjArYXOOeHK31UC+s/Qn6WQuNNZ7lQTdQt7VqEL81UWjiRrFi1NGP+K9ChBJqS3/rIRK6Z1Hzma5vmT+t12OS1hfJ6CyGIPZ5iRLDrayDG3Ne7cz59jYBDmeCrB1h/4fkLF29C6Jpx5y2M3xN3CS7v6mhlDLNsmNAQiApxxb2kQfkcholmqS6NzP/XWVx4gqJsOVd4Cw1kqLsr/naJUzrgb1rPX+X8/Ec1XX+fX2/LkM55VN2oJ9XyIDdPbZKEsTPh+iALXURy1tihPzYI0sD9SOZ+ttvphLs15nJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM6PR11MB4548.namprd11.prod.outlook.com (2603:10b6:5:2ad::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4844.14; Mon, 3 Jan 2022 12:40:42 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::f8b1:818d:e250:d2aa]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::f8b1:818d:e250:d2aa%6]) with mapi id 15.20.4844.016; Mon, 3 Jan 2022
 12:40:42 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Lukwinski, Dawid"
 <dawid.lukwinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Minimize amount of
 busy-waiting during AQ send
Thread-Index: AQHX2uvIWuvQiZX+GECopbDROVlzaaw8w/eAgAHc5rCAACfMgIASvtXA
Date: Mon, 3 Jan 2022 12:40:42 +0000
Message-ID: <DM6PR11MB27317E7AC5FF8EB3243F8ED2F0499@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20211116131329.626045-1-jedrzej.jagielski@intel.com>
 <ecdb8ef3-ccce-d17c-86d6-56f7e1e85606@molgen.mpg.de>
 <DM6PR11MB27317207BB69160027B04FEFF07D9@DM6PR11MB2731.namprd11.prod.outlook.com>
 <f4173e86-97c3-602f-4365-24fa13443822@molgen.mpg.de>
In-Reply-To: <f4173e86-97c3-602f-4365-24fa13443822@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bbbe649f-28c6-48d3-443f-08d9ceb6418e
x-ms-traffictypediagnostic: DM6PR11MB4548:EE_
x-microsoft-antispam-prvs: <DM6PR11MB4548A722E070700DF6BFE64DF0499@DM6PR11MB4548.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OhNsA/iBCK4KPTD4BGxNSgriCtG7DQO1ofQ9QAfatHE22f7hkcJMRXpZj0OwJykSn9cU8HgHexAZEwpaRQa4u8VA0Dr97iIMQVipMQxd2XiMqMCCdTnMQ7NvSGdW5QA8J9UqWAhH8LkXgArRzz4bA6jowHAa6iGSL8qW56RSOHgOZRIGm9ZxVSjouTpGjgKsuv/52gWL60+S2mM2DFcbiBjCgSL+VGdlEkmuGRmGF07NWrSeTYkD3agdBkiDqAJHbgJr4OBBiAT0RqcAZ3Ru3XEv2tBZWlgkNgVqRUSoUwHzPjYWwe0n6/9OI6A37+jZJEr2LI7k1rKKL1GOypfK7xNCpLd08EdIPIXUpi3MB9R8wGzC6bZTH6G8CruDEVKPd66JRoM8upR+scOU/BoRZ8yo6KMGfv+ZJLUK7pdlIiJfIenOPTa38P9qWFBZqULzNFH92b7VMlusIuVj91mWxQe5ux0KRxlei8mJ5YgL5KQUZBs2SFtah37l9kSKeGwRNT6S8VHcQwQQiLa71krv10B01UbKpmObOh12q2zN9ewKOl+sYHPJ97faZqpsSyyjpQWKA6DgixIT5Yqu7Hr7EQhSdYlN3NknWW92LfWpinjyp5WMK31R4EOqxXoNkcxcisc8uki52c8U8XfrRCH/XI9mr8QZ2Wo+R9ddWLGftOpJaOl7NU5l/HrdJv+GK0eoxDL8naoX2/3SKh3Qe0livg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(6506007)(83380400001)(55016003)(110136005)(76116006)(66476007)(86362001)(26005)(38100700002)(186003)(5660300002)(52536014)(7696005)(38070700005)(4326008)(316002)(8676002)(8936002)(66946007)(9686003)(82960400001)(2906002)(122000001)(66556008)(71200400001)(66446008)(6636002)(33656002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?anJSWGZab0YzTnpTc0YwTzhTMjNEYlF0THJXUmRNKzlKY1NZd3VybU1YMTFV?=
 =?utf-8?B?ejhUbzFacVpTaUxhUFpVQTV1REVaNHNuQmkvcHllaFY4ZWJLVFo0RDkwQVZD?=
 =?utf-8?B?QThuLzR0Sy9nS2N4SWVSYjkvbGRpZTNlVUJULzF0eE9HdWpmRlVNcHYvUW50?=
 =?utf-8?B?cWl6aHkrcVh3azQzUzRob0FROHdlU1JUeUR5NVlkSEx1V2cwMWw0eXpHNmhQ?=
 =?utf-8?B?aXQ1VG5QRkF3OVFyRWEvTHRWOGVnNUpjb0RRWS85UDlyRVdZNEtNcnE4eDlm?=
 =?utf-8?B?NEZqU1dEamE0NGJKWjRXOXNzZG1jaElGL3NKQWt5NkJpMFFvK2RhMTBoWjU2?=
 =?utf-8?B?NnBuSTFZYkxPcytUNnRwRSthaTMxOXRCcVBGSjlXTGdHb0RWZjdRZFR6WjFJ?=
 =?utf-8?B?Mkp0TUUvK1R2V1VuQ3pXNTJnVXAxT1dwOVhzRVNLMmRxVUp1RkhrVUdtMFFY?=
 =?utf-8?B?RFE0bUdqKysrR1NwUWl6SlJOdFk4a0JydElFQzQxQTZmWTR4NloyS3Jpb0Fv?=
 =?utf-8?B?dFo1dXRHR1ZGUklpWk42b2NNdEp5T3JIWjd6RXI1SmgrNUxLT04vd0xaWDM4?=
 =?utf-8?B?aTVRWFRzUTc5QTV1N2FPUmZaY2hpOHhzWUFPM21qckxQSnY1T3BlUlREM3kz?=
 =?utf-8?B?Mjl2TVl4WlplT0hKTm92VkRNS2ZVNE1rZnU1UnFFaThvQmV6ZmtjTnY2bW9L?=
 =?utf-8?B?b09MNHBLV0hBRVBZZ3o1NTQ2R1doekQ4RGZtTS93QU5TajF1Wk9wSjJZTURG?=
 =?utf-8?B?NzNIMHBLUGoyMDJGVDV1WUlybWY4bFlhUkV2Q09FT3h3M1FzTmJGN0QxcUJp?=
 =?utf-8?B?RmJtM0lRby8zWUNrdGFOczQ2VDJWRlpiZzU5dW1kSDU2cktrcEVOdkIzbDh3?=
 =?utf-8?B?THRNOXJSQmN0WDNkK3ZMeHBQbUIwR3BCZHB5SUJRSHM2VTVkTGM3YmtmbklH?=
 =?utf-8?B?ak1OSEsvUm1WemxaQjBmeUtLTmMrcVZOVVkwa25QbDE4L2hsQ054ZUlIdWYy?=
 =?utf-8?B?UXMzUk01K3BQRVkrMlBYMEY2cCsrZ0IrS1BNMStUSHM3bTM0SDJhSFBmR3RI?=
 =?utf-8?B?Nnp3eE5FanhuanBqVmNBTkFNY050dHozb2tyZWJkQUlQSExhdzNrZzVGdnZR?=
 =?utf-8?B?OTFoWUlpZDIzME5KUkZVMEN2QWlOM0daUVZ3VnZwVXFOZit0KzZzQ3pkWlo0?=
 =?utf-8?B?cnlkb1poOENROVJFaGlBOGRGSXF1OVR5Q1cvT08yV0lhSWR6YmcyeXhRRmZT?=
 =?utf-8?B?YitCc3Q1Z21SZGZkb05tZklpTUJESnBnVURENDNHREtDOXArNTBCUFVTM1pa?=
 =?utf-8?B?UG9TRFd5b1N3UC9oMkJJc1V5Mnp0TmhiYUlkc0krMllrbTJabmtyaURzL1B5?=
 =?utf-8?B?YjZMZENHSC94M0YrRXRmb09sUGpJdUsxamJHL1ZWRVJaU3JvZ2pNUzNBSXNW?=
 =?utf-8?B?Z3JCeGNidFFiMENLVmFDL2oyMEpWWGFIY2VCdGFRd2xJMlhnZGZubTZYSExV?=
 =?utf-8?B?amkzRVNuMmtLMEhUT3lRSlFiTmRJSVZ6dEtLV0RBVGMwNjRyTTFJYmcvYTRp?=
 =?utf-8?B?S0Zvcjg4MjZqbXEzT0RkSTduRVVrSUU1ZHZTQjBXUm13bXRXSk9iNlRsQ1My?=
 =?utf-8?B?RFR1LzVxSXY5WUhScmF0TEs0aXA3Z1FFK1VSdUF5MVBTbUEycUR5bHczeFJG?=
 =?utf-8?B?QmMxVGp5L0lxSVAyOU91bmZkMkY3VWlPdlYzQW1PcFFKOEVsSWprUUtETU0z?=
 =?utf-8?B?Y1hRcE5FSjBQWE83cGdaa244c1IzVXpOK1JDUkFSclZLZGFzTDVXVDEvZ2tX?=
 =?utf-8?B?bncrNHljVTlYK0s4b1pTMENTNEJvM3NzdW0veDMraCt2REVPcG5qUDRnMEkx?=
 =?utf-8?B?RFdIMXVvV1VHc1pmcTNZV0RMTk41NFNCWlV0bGxiaHBYYXEwU29mcndHZjlW?=
 =?utf-8?B?aFNVU0gxdjdZUklnc3ZXMjhMNXFWUTMxZGZRVnJnRUdQMG1kZ0wvNEd5RFht?=
 =?utf-8?B?R1QwMVMyTUdUL1kwVDBqRDJKU2UzMTRVekJ3eFNtRm5hVVdkN2xWZE80eXZX?=
 =?utf-8?B?QTUyOTF1czhtK1E4UzNlWmNsR0dKMk4wNjE4R0ZvU3F6cTdaVnVzRCtpTi8x?=
 =?utf-8?B?T1hCWXZFKzAwSTg2TEhVaHhlelE3b3VWQ3daUldOMnhLQ0o5SmxPN01YWGJ5?=
 =?utf-8?B?TDlKdnVicDlKZWVNTjRMWVN3VHQyVUUvc1FIQUVKWjIzSElheHVpWmJza3cw?=
 =?utf-8?B?cnRKb3MrY1B2OHJSaGJRSDUza2hBPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbbe649f-28c6-48d3-443f-08d9ceb6418e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2022 12:40:42.7754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U0qazNvgf/MX1Mv2sFYp0szRiWsdv84mebv/HZgq3TPHr1PHG3ChnUqw3ZmtqmLUzxW/cslq+/BRowtyW6K2NUHxPkE6cfFrhwPp0HKGpbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4548
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Minimize amount of
 busy-waiting during AQ send
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQYXVsLA0KDQpUaGFua3MgZm9yIHN1Z2dlc3Rpb25zLCBJIGFwcHJlY2lhdGUgaXQuDQo+
DQo+DQo+Pj4+IFRoZSBpNDBlX2FzcV9zZW5kX2NvbW1hbmQgd2lsbCBub3cgdXNlIGEgbm9uIGJs
b2NraW5nDQo+Pj4+IHVzbGVlcF9yYW5nZSBpZiBwb3NzaWJsZSAobm9uLWF0b21pYyBjb250ZXh0
KSwgaW5zdGVhZCBvZiBidXN5LXdhaXRpbmcNCj4+Pj4gdWRlbGF5LiBUaGUgdXNsZWVwX3Jhbmdl
IGZ1bmN0aW9uIHVzZXMgaHJ0aW1lcnMgdG8gcHJvdmlkZSBiZXR0ZXINCj4+Pj4gcGVyZm9ybWFu
Y2UgYW5kIHJlbW92ZSB0aGUgbmVnYXRpdmUgaW1wYWN0IG9mIGJ1c3ktd2FpdGluZyBpbg0KPj4+
DQo+Pj4gcmVtb3ZlKnMqDQo+Pj4NCj4+Pj4gdGltZS1jcml0aWNhbCBlbnZpcm9ubWVudHMuDQo+
Pj4NCj4+PiBQbGVhc2UgcmUtZmxvdyB0aGUgcGFyYWdyYXBoIGZvciA3NSBjaGFyYWN0ZXJzIHBl
ciBsaW5lLg0KPj4gDQo+PiBTdXJlLCBpdCB3aWxsIGJlIGZpeGVkLg0KPg0KPlRoYW5rcy4NCj4N
Cj4+Pj4gMS4gUmVuYW1lIGk0MGVfYXNxX3NlbmRfY29tbWFuZCB0byBpNDBlX2FzcV9zZW5kX2Nv
bW1hbmRfYXRvbWljDQo+Pj4+ICAgICAgYW5kIGFkZCA1dGggcGFyYW1ldGVyIHRvIGluZm9ybSBp
ZiBjYWxsZWQgZnJvbSBhbiBhdG9taWMgY29udGV4dC4NCj4+Pj4gICAgICBDYWxsIGluc2lkZSB1
c2xlZXBfcmFuZ2UgKGlmIG5vbi1hdG9taWMpIG9yIHVkZWxheSAoaWYgYXRvbWljKS4NCj4+Pg0K
Pj4+IEkgcHJlZmVyIGlmIGBpNDBlX2FzcV9zZW5kX2NvbW1hbmRfYXRvbWljKClgIGltcGxpY2l0
bHkgYXNzdW1lcyBpdOKAmXMgYW4NCj4+PiBhdG9taWMgY29udGV4dCB3aXRob3V0IGEgZmlmdGgg
YSBwYXJhbWV0ZXIuIFRvIG1ha2UgaXQgbW9yZSBjbGVhciwgbWF5YmUNCj4+PiBldmVuIGludHJv
ZHVjZSBgaTQwZV9hc3Ffc2VuZF9jb21tYW5kX25vbmF0b21pYygpYC4NCj4+IA0KPj4gVGhpcyBm
dW5jdGlvbiBoYXMgYmVlbiBhZGRlZCBpbiBvcmRlciB0byBhZGQgcG9zc2liaWxpdHkNCj4+IHRv
IHNlbmQgY29tbWFuZHMgaW4gYXRvbWljIGNvbnRleHQgYW5kIHJldXNlIGFscmVhZHkgZXhpc3Rp
bmcNCj4+IGZ1bmN0aW9uICdpNDBlX2FzcV9zZW5kX2NvbW1hbmQnIHdpdGggcHJldmlvdXMgc2ln
bmF0dXJlDQo+PiB0byBhdm9pZCBtb2RpZnlpbmcgYWxsIGV4aXN0aW5nIGNhbGxzDQo+PiB0byBp
dC4gUGFyYW1ldGVyICdpc19hdG9taWMiIGFsc28NCj4+IGNsZWFybHkgcHJvdmlkZXMgaW5mb3Jt
YXRpb24gaWYgZnVuY3Rpb24gaXMgYmVpbmcNCj4+IGludm9rZWQgaW4gYXRvbWljIGNvbnRleHQg
b3Igbm90Lg0KPg0KPkkgZGlzYWdyZWUuIEhhdmluZyBhIHNpeHRoIGZ1bmN0aW9uIGFyZ3VtZW50
IG1ha2VzIGl0IG1vcmUgY29tcGxpY2F0ZWQsIA0KPmFuZCBhIGZ1bmN0aW9uIG5hbWUgY29udGFp
bmluZyBgX2F0b21pY2AgZG9lcyBub3QgbmVlZCBhIHBhcmFtZXRlciB0byANCj50ZWxsIHRoYXQg
aXTigJlzIHJlYWxseSBhdG9taWMuDQo+DQo+SWYgY2FsbGVycyBoYXZlIHRvIGJlIHVwZGF0ZWQs
IHBsZWFzZSB1cGRhdGUgdGhlbS4NCg0KSSBiZWxpZXZlIHRoYXQgaW4gdGhlIGRyaXZlcnMgY29k
ZSBmdW5jdGlvbiBpNDBlX2FzcV9zZW5kX2NvbW1hbmQoKQ0KaXMgaW52b2tlZCB+MTAwIHRpbWVz
LiBZb3VyIG9waW5pb24gaXMgdG8gdXBkYXRlIGV2ZXJ5IHNpbmdsZSBjYWxsaW5nPw0KQnkgaW5s
aW5pbmcgaTQwZV9hc3Ffc2VuZF9jb21tYW5kKCkgaW4gaTQwZV9hc3Ffc2VuZF9jb21tYW5kX2F0
b21pYygpDQppdCBpc24ndCBuZWNlc3NhcnkuDQpBZGRpbmcgYWRkaXRpb25hbCBmdW5jdGlvbiBf
YXRvbWljIHdpdGggZXh0cmEgcGFyYW1ldGVyIG1ha2VzDQppdCBwb3NzaWJsZSB0byBpbnZva2Ug
dGhpcyBmdW5jdGlvbiBpbiBhdG9taWMgb3Igbm9uYXRvbWljIGNvbnRleHQgDQppbiBhIGNsZWFy
IHdheSAganVzdCBieSBwYXNzaW5nIHRydWUvZmFsc2UuDQpJbiBtb3N0IG9mIHRoZSBjYXNlcyBp
NDBlX2FzcV9zZW5kX2NvbW1hbmQoKSBmdW5jdGlvbiBpcyBpbnZva2VkIGluDQpub25hdG9taWMg
Y29udGV4dC4NCj4NCj4+Pj4gMi4gQ2hhbmdlIGk0MGVfYXNxX3NlbmRfY29tbWFuZCB0byBpbnZv
a2UNCj4+Pj4gICAgICBpNDBlX2FzcV9zZW5kX2NvbW1hbmRfYXRvbWljKC4uLiwgZmFsc2UpLg0K
Pj4+Pg0KPj4+PiAzLiBDaGFuZ2UgdHdvIGZ1bmN0aW9uczoNCj4+Pj4gICAgICAgLSBpNDBlX2Fx
X3NldF92c2lfdWNfcHJvbWlzY19vbl92bGFuDQo+Pj4+ICAgICAgIC0gaTQwZV9hcV9zZXRfdnNp
X21jX3Byb21pc2Nfb25fdmxhbg0KPj4+PiAgICAgIHRvIGV4cGxpY2l0bHkgdXNlIGk0MGVfYXNx
X3NlbmRfY29tbWFuZF9hdG9taWMoLi4uLCB0cnVlKQ0KPj4+PiAgICAgIGluc3RlYWQgb2YgaTQw
ZV9hc3Ffc2VuZF9jb21tYW5kLCBhcyB0aGV5IHVzZSBzcGlubG9ja3MgYW5kIGRvIHNvbWUNCj4+
Pj4gICAgICB3b3JrIGluIGFuIGF0b21pYyBjb250ZXh0Lg0KPj4+PiAgICAgIEFsbCBvdGhlciBj
YWxscyB0byBpNDBlX2FzcV9zZW5kX2NvbW1hbmQgcmVtYWluIHVuY2hhbmdlZC4NCj4+Pg0KPj4+
IEhvdyBjYW4gaXQgYmUgdGVzdGVkLCB0aGF0IHRoZSBidXN5LXdhaXRpbmcgaXMgcmVkdWNlZD8g
V2hhdCBwZXJmKD8pDQo+Pj4gY29tbWFuZHMgbmVlZCB0byBiZSBleGVjdXRlZD8NCj4+IA0KPj4g
VGhpcyBwYXRjaCBmaW5kcyBpdHMgdXNlIGR1cmluZyBhbiBoaWdoLXBlcmZvcm1hbmNlIG9wZXJh
dGlvbnMuDQo+PiBUaGUgZ29hbCBvZiB0aGlzIHBhdGNoIGlzIHRvIHJlZHVjZSBkZWxheSBjb25u
ZWN0ZWQgdG8NCj4+IEFTUSBzZW5kaW5nIGNvbW1hbmRzLiBIb25lc3RseSBJIGRvbid0IGtub3cg
aW4gd2hpY2ggdGVzdCBjYXNlDQo+PiBpdCBjYW4gYmUgY2hlY2tlZC4NCj4NCj5GdXJ0aGVyIGJl
bG93LCB5b3Ugd3JpdGUgaXQgaGFzIGJlZW4gY2hlY2tlZC4gUGxlYXNlIGFkZCB0aGUgYmVuY2ht
YXJrIA0KPmZpZ3VyZXMgdG8gdGhlIGNvbW1pdCBtZXNzYWdlLg0KDQpUaGlzIHBhdGNoIGhhcyBi
ZWVuIHJlcXVlc3RlZCBieSBvbmUgb2YgdGhlIGNsaWVudHMgLSB0aGV5DQpoYXZlIG5vdGljZWQg
dGhhdCBjYWxsaW5nIGk0MGVfYXNxX3NlbmRfY29tbWFuZCgpIGZ1bmN0aW9uDQpoYXMgYmVlbiBh
ZGRpbmcgdG9vIGJpZyBkZWxheSB3aGlsZSB3b3JraW5nIHdpdGggaGktcGVyZiB0YXNrcy4gDQpB
ZnRlciB0aGF0IGZpeCB0aGV5IHRlc3RlZCBpdCBzbyB3ZSBoYXZlIG5vIGFjY2VzcyB0byByZXN1
bHRzLg0KPg0KPj4+PiBUaXRsZTogTWluaW1pemUgYW1vdW50IG9mIGJ1c3ktd2FpdGluZyBkdXJp
bmcgQVEgc2VuZA0KPj4+DQo+Pj4gVGFnIG5vdCBuZWVkZWQuDQo+PiANCj4+IFN1cmUsIGl0IHdp
bGwgYmUgcmVtb3ZlZC4NCj4+Pg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBEYXdpZCBMdWt3aW5za2kg
PGRhd2lkLmx1a3dpbnNraUBpbnRlbC5jb20+DQo+Pj4+IFNpZ25lZC1vZmYtYnk6IEplZHJ6ZWog
SmFnaWVsc2tpIDxqZWRyemVqLmphZ2llbHNraUBpbnRlbC5jb20+DQo+Pj4+IC0tLQ0KPj4+PiAg
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmMgfCAyOSArKysr
KysrKysrKysrKy0tLS0tDQo+Pj4+ICAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV9jb21tb24uYyB8ICA2ICsrLS0NCj4+Pj4gICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfcHJvdG90eXBlLmggIHwgMTQgKysrKystLS0tDQo+Pj4+ICAgIDMgZmlsZXMgY2hh
bmdlZCwgMzUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+Pj4+DQo+Pj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmMgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmMNCj4+Pj4gaW5kZXgg
NTkzOTEyYjE3NjA5Li43YWJlZjg4ODAxZmIgMTAwNjQ0DQo+Pj4+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hZG1pbnEuYw0KPj4+PiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmMNCj4+Pj4gQEAgLTc2OSwyMSArNzY5
LDIyIEBAIHN0YXRpYyBib29sIGk0MGVfYXNxX2RvbmUoc3RydWN0IGk0MGVfaHcgKmh3KQ0KPj4+
PiAgICB9DQo+Pj4+ICAgIA0KPj4+PiAgICAvKioNCj4+Pj4gLSAqICBpNDBlX2FzcV9zZW5kX2Nv
bW1hbmQgLSBzZW5kIGNvbW1hbmQgdG8gQWRtaW4gUXVldWUNCj4+Pj4gKyAqICBpNDBlX2FzcV9z
ZW5kX2NvbW1hbmRfYXRvbWljIC0gc2VuZCBjb21tYW5kIHRvIEFkbWluIFF1ZXVlDQo+Pj4+ICAg
ICAqICBAaHc6IHBvaW50ZXIgdG8gdGhlIGh3IHN0cnVjdA0KPj4+PiAgICAgKiAgQGRlc2M6IHBy
ZWZpbGxlZCBkZXNjcmlwdG9yIGRlc2NyaWJpbmcgdGhlIGNvbW1hbmQgKG5vbiBETUEgbWVtKQ0K
Pj4+PiAgICAgKiAgQGJ1ZmY6IGJ1ZmZlciB0byB1c2UgZm9yIGluZGlyZWN0IGNvbW1hbmRzDQo+
Pj4+ICAgICAqICBAYnVmZl9zaXplOiBzaXplIG9mIGJ1ZmZlciBmb3IgaW5kaXJlY3QgY29tbWFu
ZHMNCj4+Pj4gICAgICogIEBjbWRfZGV0YWlsczogcG9pbnRlciB0byBjb21tYW5kIGRldGFpbHMg
c3RydWN0dXJlDQo+Pj4+ICsgKiAgQGlzX2F0b21pY19jb250ZXh0OiBpcyB0aGUgZnVuY3Rpb24g
Y2FsbGVkIGluIGFuIGF0b21pYyBjb250ZXh0Pw0KPj4+PiAgICAgKg0KPj4+PiAgICAgKiAgVGhp
cyBpcyB0aGUgbWFpbiBzZW5kIGNvbW1hbmQgZHJpdmVyIHJvdXRpbmUgZm9yIHRoZSBBZG1pbiBR
dWV1ZSBzZW5kDQo+Pj4+ICAgICAqICBxdWV1ZS4gIEl0IHJ1bnMgdGhlIHF1ZXVlLCBjbGVhbnMg
dGhlIHF1ZXVlLCBldGMNCj4+Pj4gICAgICoqLw0KPj4+PiAtaTQwZV9zdGF0dXMgaTQwZV9hc3Ff
c2VuZF9jb21tYW5kKHN0cnVjdCBpNDBlX2h3ICpodywNCj4+Pj4gLQkJCQlzdHJ1Y3QgaTQwZV9h
cV9kZXNjICpkZXNjLA0KPj4+PiAtCQkJCXZvaWQgKmJ1ZmYsIC8qIGNhbiBiZSBOVUxMICovDQo+
Pj4+IC0JCQkJdTE2ICBidWZmX3NpemUsDQo+Pj4+IC0JCQkJc3RydWN0IGk0MGVfYXNxX2NtZF9k
ZXRhaWxzICpjbWRfZGV0YWlscykNCj4+Pj4gK2k0MGVfc3RhdHVzDQo+Pj4+ICtpNDBlX2FzcV9z
ZW5kX2NvbW1hbmRfYXRvbWljKHN0cnVjdCBpNDBlX2h3ICpodywgc3RydWN0IGk0MGVfYXFfZGVz
YyAqZGVzYywNCj4+Pj4gKwkJCSAgICAgdm9pZCAqYnVmZiwgLyogY2FuIGJlIE5VTEwgKi8gdTE2
ICBidWZmX3NpemUsDQo+Pj4+ICsJCQkgICAgIHN0cnVjdCBpNDBlX2FzcV9jbWRfZGV0YWlscyAq
Y21kX2RldGFpbHMsDQo+Pj4+ICsJCQkgICAgIGJvb2wgaXNfYXRvbWljX2NvbnRleHQpDQo+Pj4+
ICAgIHsNCj4+Pj4gICAgCWk0MGVfc3RhdHVzIHN0YXR1cyA9IDA7DQo+Pj4+ICAgIAlzdHJ1Y3Qg
aTQwZV9kbWFfbWVtICpkbWFfYnVmZiA9IE5VTEw7DQo+Pj4+IEBAIC05MTAsNyArOTExLDEyIEBA
IGk0MGVfc3RhdHVzIGk0MGVfYXNxX3NlbmRfY29tbWFuZChzdHJ1Y3QgaTQwZV9odyAqaHcsDQo+
Pj4+ICAgIAkJCSAqLw0KPj4+PiAgICAJCQlpZiAoaTQwZV9hc3FfZG9uZShodykpDQo+Pj4+ICAg
IAkJCQlicmVhazsNCj4+Pj4gLQkJCXVkZWxheSg1MCk7DQo+Pj4+ICsNCj4+Pj4gKwkJCWlmIChp
c19hdG9taWNfY29udGV4dCkNCj4+Pj4gKwkJCQl1ZGVsYXkoNTApOw0KPj4+PiArCQkJZWxzZQ0K
Pj4+PiArCQkJCXVzbGVlcF9yYW5nZSg0MCwgNjApOw0KPj4+PiArDQo+Pj4NCj4+PiBQbGVhc2Ug
bWVudGlvbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UsIHdoeSB0aGUgcmFuZ2UgaXMgNDAgdG8gNjAg
YW5kIG5vdA0KPj4+IDEwIHRvIDUwIGZvciBleGFtcGxlPyBJIHdvdWxkIGhhdmUgZXhwZWN0ZWQg
dGhlIHVwcGVyIGJvdW5kIHRvIHJlbWFpbiA1MC4NCj4+IA0KPj4gVGhpcyByYW5nZSB3YXMgY2hv
c2VuIHNvIHRoYXQgdGhlIHZhbHVlIGluIHRoZSBtaWRkbGUgaXMgdG8gYmUgNTBtcy4NCj4+IFRo
ZSBhdWRpYmlsaXR5IG9mIHRoaXMgYXNzdW1wdGlvbiB3YXMgY29uZmlybWVkIGR1cmluZyB0ZXN0
czsgdGhlIGNoYW5nZSBoYWQNCj4+IGEgcG9zaXRpdmUgZWZmZWN0IG9uIGhpZ2gtcGVyZiBvcGVy
YXRpb25zLiBBbnl3YXkgaXQgd2lsbCBiZSBtZW50aW9uZWQgaW4gdGhlDQo+PiBjb21taXQgbXNn
Lg0KPg0KPkRpZCB5b3UgdGVzdCB3aXRoIGFuIHVwcGVyIGJvdW5kIG9mIDUwLCBzbyBgdXNsZWVw
X3JhbmdlKDQwLCA2MCk7YD8gV2hhdCANCj5sb3dlciBib3VuZCBkb2VzIHRoZSBkYXRhc2hlZXQg
cmVxdWlyZT8NCg0KSXQgaGFzbid0IGJlZW4gdGVzdGVkIHdpdGggYW4gdXBwZXIgYm91bmQgb2Yg
NTAgLSBvbmx5IHdpdGggNjAsIGJ1dCBjbGllbnQNCmFzc3VyZWQgdGhhdCBpdCB3b3JrcyBhcyBl
eHBlY3RlZC4gUGF0Y2ggaGFzIHByb3ZpZGVkIGFuIGltcHJvdmVtZW50Lg0KPg0KPg0KPktpbmQg
cmVnYXJkcywNCj4NCj5QYXVsDQoNCkJlc3QgcmVnYXJkcywNCkplZHJ6ZWoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
