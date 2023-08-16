Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4159777D97F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 06:52:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BA926124D;
	Wed, 16 Aug 2023 04:52:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BA926124D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692161548;
	bh=egIIKxQg5/sVCqWXLzGeLxTCwmI/Egz4sWj48xJEVeE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aVlAqlpUsw0G1rUCEdgNxB8MYoT3WQC5Nj4GFXDz2fgWaO9T8KJ2/Z7KBvkYbnEbh
	 9BE0TK3AP0Dkt1TtXUpU3oTWXQiL26PRETdRaFISLzvpfPtthhw6c7PPQtxJc2RiRX
	 a6jXdVLVvXXDmrJsRo7hgEpqspYWj2jvpIhr0e3B0gg8BLWovSlxmkAf8q9bqPrS3i
	 XejFE0WbDoCwwrlNnmwTMFn3YQwTbQVmnvG0pSdTtTx9Qw889w2zAaqxe0KzmoJkRA
	 un2+cJUg3RV6R3N4XekM9uY1RK34YoVkzT62zebB1oibWtTiWfRtQxTePnK5d8F37v
	 RQiuuNm/fQbsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OV9KbMB8Ih5s; Wed, 16 Aug 2023 04:52:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F09C61247;
	Wed, 16 Aug 2023 04:52:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F09C61247
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A22B11BF40A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 04:52:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7433341523
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 04:52:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7433341523
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E5zGHdJVuOIP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 04:52:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 369D6400A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 04:52:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 369D6400A6
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="438785125"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="438785125"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 21:52:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="799425021"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="799425021"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 15 Aug 2023 21:52:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 21:52:15 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 21:52:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 21:52:15 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 21:52:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H3QLTaN/iwM3c+0NNbfRw6NsPuaS1ZRvWd9n6E5zXgtlswjnNLE7aikPqEEJRqPj0JI58nvR4akoMY4/K+QdwISzsmlllsNWzpZ7eJhODc+7aMLCycGWXj9EQsMx9QUmmzv+CGPa4gWeytm6Y9y40HNV94kvkJUs1ojyEJIRUg2yjc9XL/GnKiuTM0iixKYTOIFzObfHv3enjhWVba7VeY2C7nVqSL3PwYe+3qx5qa1KjFi65w/p4xWB2QFbptH9yAQwaD6NLgQW8GJ8NXMX4aebVudkQdtEawUuSs/FTecRejVKaR6YmIn8bTPA4CDcEwF9IQl2yR3dXwiT+stIpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zCR90Bo5m5zIl0WO291dmoXc9ysPnWOy6AkZfsfzizE=;
 b=gXaxU4drgJ+Ie65VCZ8qB7+dPjcYU9jhT4mxPhf5ziT0qL0r8ADrD5hWbigHTStrgpP77m3YBYwLZQB82jKj4+mN/bRRhRTUg2lO/8RI24EBxewLb9ysKGjtVMlGY2+uLTWgPr44F5mP3lBrtyHQ2NweI5k/lPbm+GQ4QoaF6p3pxJsNglKQYvQRpHuUgxZs72vkxj2bf/OS3fFc3ZQXZErs3uRN5n4QMUgXMTtPPvPKvNGJVPJAA3DpDXHX0+/YGDQu1H9xP2lYSiIIWKGd1fvamlDmuUvGYna73JN8tKQMd9Iyp22Rv/bdrWexFPTdcZaWHSok6mOYF7QALBdaJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ0PR11MB6743.namprd11.prod.outlook.com (2603:10b6:a03:47c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 04:52:13 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 04:52:12 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 1/3] ice:
 ice_aq_check_events: fix off-by-one check when filling buffer
Thread-Index: AQHZykNfMqUqN8M6XU2VvGmvctZyHq/sZdqQ
Date: Wed, 16 Aug 2023 04:52:12 +0000
Message-ID: <BL0PR11MB31226877FBAEC7585847C65FBD15A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230808215417.117910-1-przemyslaw.kitszel@intel.com>
 <20230808215417.117910-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20230808215417.117910-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ0PR11MB6743:EE_
x-ms-office365-filtering-correlation-id: 7908f15e-f9e5-4f64-ac63-08db9e148e1c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YpS8v5JNu5Of6sIxWkTVtciLc5RSYsIGdKmy6LR9BZiowkVYGTqgi0QC49rkQ59jmwKUP5gAoNGCzvH2TQu8dyUCcfTPoI/ZwkNw0/x1GO3Fx5i4JSxiZLPeA4HUswVzG8JsO5hYjb0hKqbf84opf32hAo+Qq3T5wHkdaMGzwM2u8gpTQerZwMjGAlTGfJvtWOTQnIsp1J7Z6Zh8opxyaE4NCxRts7KIANcMJi0KwH4eqxyX8Gj4NJGFnoQ8bN/Iqp101xRZHRR/ZWqfRADPAmTtagt2ITjG32Cl8vN7JVaArqYGDs/wYSeTtADK6BOvqYs/weyJ1JeiQo8fipllaHSPgsQyEvYvxewxKpGMUi8X0qdRq554bIhoGU5dyaaP60wasQwAwl2LohwH+rkIH0pITt+LveWsEhjauIY/q2XHT89XEjzQj6HXoeUdNiq6650jS0+WcGxLau9z3IwGyCRabmqT2lA3rH3wiVqYTGjjTUh/14hLwlGFxs/Ej0TsGQCKAXuAumiXSTeaojYV+FJrx4cUZp45Rew+wEPtfXIJk9NC7KCBuhPhKDNzNELPugbO4q3iCkd5PAYlMIQeYaj7X3J00TFHykkNRsVtmUDDZihhAjBR01IUZkJ9dZm/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(1800799009)(451199024)(186009)(71200400001)(64756008)(54906003)(66446008)(76116006)(66476007)(66556008)(66946007)(7696005)(6506007)(4744005)(2906002)(478600001)(9686003)(26005)(110136005)(107886003)(5660300002)(83380400001)(52536014)(41300700001)(316002)(53546011)(8936002)(4326008)(8676002)(122000001)(38100700002)(38070700005)(82960400001)(33656002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lcGzRSNcx1skLF3ay0CZ8/57ruTF8NU8IJW3cG1seawo+wsAiW8YH/fu8kWN?=
 =?us-ascii?Q?u+IR86Fru3Oa3Vqvbbre/mZSZFk6wVqq5blkCCtW199bPCfS3DQsSRCpIzm2?=
 =?us-ascii?Q?NW9THQjxFKrfTU0lyNG3qRBOfti/w/USjo6ecfGxHdy1w/cxYGzKeqhlVfwF?=
 =?us-ascii?Q?blKMbFRZsRzXcVWTR+03rJjNG9Hw090yDRq9gCylocMA86eHwqVLO9hsXiRe?=
 =?us-ascii?Q?412g6yW+hJFYqxjPB5T0sWmkmWDi7jLEnHvewhLPTUpmFpQ2WB0BiKTLl1rs?=
 =?us-ascii?Q?Ubon/trC8Acg5o4y+JxAVyDrnAO1jq3vVhR6EPvjUim+U/ufWXSNqHA6O1+O?=
 =?us-ascii?Q?u6Z2xj3Euq9/hqCqi7Zid+gBbBieV2+NMyLQAkdHNCyAl3pVoY8QfpiUEaHU?=
 =?us-ascii?Q?Yg4YFf0RfOiDrL9/Lb8ZsK3v6WX1g9v4iB3y1+HksELw3AIIKLvXG1a+mf0G?=
 =?us-ascii?Q?O2POuLgtRMHQmc62xcE0sVzsT8yJ5OiPyljISXshx8vZKHec1BrITcZ+RBTI?=
 =?us-ascii?Q?OqCzh6B4On3Hym1bMuvqlT5m1g2FAlri7DzpBtmUIpKPfyOqm8EL3TrFPISh?=
 =?us-ascii?Q?EHteN+cizy03GDLUU91hEsSGOlHr5Xov4QNI2OVoUiePUSPnG162hlkjTw+8?=
 =?us-ascii?Q?RKXZ2eGIH1kPpGRKG9TgbXVbwKkZLycxnErs0nYG4VQRd6IWDBoX7CdLhYl3?=
 =?us-ascii?Q?hPSfJY6ePGC2kKETI2nY9ZhZQ+7lL9lSY3S6IYD55NhUe+/eL5j/1WMTXI4W?=
 =?us-ascii?Q?hqrungYJ1QXJQo7wU0jN8/QEklf5MPbAUdviTdV43LcbnmtsR7ZUNdOq5rTi?=
 =?us-ascii?Q?taxV3FlVo7AjCdlrLUO4tPTv15mTpEuhjf1yatcn//fdQIuZrqki30pnB4Qp?=
 =?us-ascii?Q?G7ZPN3gB/cMwEt25+LMjxPgmgAFo98tp9pb3uSL/QubClRxkdnA3p334aFYL?=
 =?us-ascii?Q?eo9rewHqwDhO1sOwDXA7BGrEqumvaCp/Z8puyQ5/e4bAzP3uPhXo6ZIDtBEd?=
 =?us-ascii?Q?Lh5Lw9tyRbT0m/7BBWiSkcixPvu/8D+tyW0zNJZBatAgqONGmHNv82+6qNEb?=
 =?us-ascii?Q?4dTEpnhe+RVgSyHQ5MXWKkJ73iACvqnlGZDUzXuYcIXHresKnFeAX61mMM8G?=
 =?us-ascii?Q?dufCNP8ftrVaefvJgeB3iMQLH4jiL4ityeFYPfa5kMcbrjd1EFkpU2Ow/eOK?=
 =?us-ascii?Q?TnCN0WiPV0ByEGulm1kSUSWBgEu8hplk0dmiwmXUqO8zBMOWwgRopSv7BgFx?=
 =?us-ascii?Q?kklFZokjQwDtvvvr17s+gYdsLR6ppYSHGaP+eapEpaxh75rzcg34Cj51wcz9?=
 =?us-ascii?Q?WdEFf3X75uAF6tF4pP6ChVETMc8Ma5WHg5Kr56B7p+76pLxbFehh/8yH33IB?=
 =?us-ascii?Q?0J4ofZ9knsW1jiyOpek0XRi7m0PtqB8SO5oO6836gIpSeLCWSGo8gddt+yRP?=
 =?us-ascii?Q?dUoZMOeaRlxNOnrVAc4XWMZ62QOKskiEhgoGE5slRDktWjGV1Lg4nD6Yy715?=
 =?us-ascii?Q?Bq9neoPycuJpXiH+lvkYr8RVXk6GWqG8bRThU1gXohXy2udhNre4cshMSy6+?=
 =?us-ascii?Q?9QuWqYvcPq5lQptRezcBJw43gwn6DOmBpNwAxHBjJGWtQ3ddxvvvLq7rjMSe?=
 =?us-ascii?Q?eQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7908f15e-f9e5-4f64-ac63-08db9e148e1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 04:52:12.3474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Tr+ziLeB3o5Cc3W43rUN/aKGhXdkDHbw0lHStg3Cu37xSsgrHeTRS2daJ0DWQmHHz5CnT9EJfBgPhTuu7aqiVkyIy/5ewQ0dk7qOcwIh/VZEMpb3wxpiJrxz9Fkb4n4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6743
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692161537; x=1723697537;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pe0m7oquuONWuj40Xu8m8fd77Y5ggIq4GWplLAqOF2c=;
 b=SoqneDDiUFwJD7M54qGo8JWc7uaWBSekFUKH72rQoa+wRJ6mFIBGrWLr
 AB1Mz5TzXPfjDNRu+BeEq1sdqhjBo7DRBL7JKBEXq2EgR8sqe9QqSIsWv
 +hQSjWMtHRKlCQwv0l0+LgyTiYfNY4fLEEzTuAlhhaxVP330m9Yk7HJfm
 TLIop5ikCBd8mApKTWmwfa+kmhgCGeyVWDDtgZaL/ZYBmNx7TIjdQyY96
 C99BHBoLisZyA63T3tNaNk3jVUbiKGome8svNoc6r9KmnIO5+IRsYOZGW
 E3JWOfaBrgRMq4+HAR9kpaXoO9KYJsaaSmna9YLh2k5WMICgyAlVxUZJc
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SoqneDDi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/3] ice:
 ice_aq_check_events: fix off-by-one check when filling buffer
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
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Wednesday, August 9, 2023 3:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/3] ice: ice_aq_check_events: fix off-by-one check when filling buffer
>
> Allow task's event buffer to be filled also in the case that it's size is exactly the size of the message.
>
> Fixes: d69ea414c9b4 ("ice: implement device flash update via devlink")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
