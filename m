Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A8C82C4C5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jan 2024 18:33:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B3728466E;
	Fri, 12 Jan 2024 17:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B3728466E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705080803;
	bh=lsec7e1g06VtdnSrrx+wzKcz3stk0rIv4HFmBtq+ms0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5+6fi3zt6dLelIb90XQDQV5LXEyVd2BlgrYnidn881hJmSJrvUVbsVTYsOtFEoe7K
	 2gTd6dOzVDfrJkd89PY1ii6bzcOAjTKykzLf/bZNJcp3wvnxLtKXLW6AE2eq2+T5Ju
	 6Og4o3rEFJeO9sRnWvEMz+1V9NAxlXASs8YhK9G+Vxxx7XjAc1v737LpL81oKgwpMP
	 XaQS3BKQnz+f8THkd6ap4eT/Bs218oO0cRdr0Ay0TiE25X/72zEIc3spRHBC6+5hbv
	 rTDET4VZtTI3hUX+qfjiyvhE2ijT5Kfzm34ptG15nY7f6mgeq8ybPi66AvUWsXifql
	 PV2qk3/GWAlFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dtG7MrPiQP9Q; Fri, 12 Jan 2024 17:33:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E633845D5;
	Fri, 12 Jan 2024 17:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E633845D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 769D41BF309
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E73E4176A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E73E4176A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BX-_7WBffXsk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jan 2024 17:33:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8DBE941749
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DBE941749
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="20710614"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="20710614"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 09:33:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="759202798"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="759202798"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2024 09:33:15 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 09:33:15 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 09:33:14 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Jan 2024 09:33:14 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Jan 2024 09:33:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U4k2U3u+F5GAkzG2T2DnY0uhdFJe2yq5f/lQYr4tNX8AnqHNqy7K8lbFluN+o4h9RzJ9Nq87wztzKF0cSA8EGwuMI/gJuJhPXQ/V8jPUXLLvXaATOcoPA6kpYXegy4sFuxPI9/kBeTnLG8u5WTfq+aMc55ZuOCUj0EhqnwvbKJn+/svrNJTisSSf60/QUwrjWGWBEGXDmRkZdCFvQg8Snqq2Y2v9QRVdL8z1KMdEnwN/iqVnqN9xRAlCLMIswVAnKgoBJoyj7f5B/c2USbyXZ8BBoizqcHn/VRVyfp0YLuVON0dGF0R3orFfa+JmPM1aHZTL2LPPzVyY63GFIintcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lsec7e1g06VtdnSrrx+wzKcz3stk0rIv4HFmBtq+ms0=;
 b=l4DsbDkdHbOTX4b3smKhYJ+gayVeNe33udH0WvV+jde3KJ6wkDktE484ANQnsPoR1gRbh18OpxN7/JQALjYyC7oboUkkzwEh5V3C8NGuUX5ijGC7FAwlAVJDny0FH/OqClqAhH3dYT5FbXcqoW1S8DR5MKQglozzlZokwPZzYAFzgAkUlBDnWu03yG1vom/5trdtuBaxCpqYjxCwgrPwF9S9YV4F+lBm2j6k5+De29MvTyUD64nls0Iwl5tLnh4Ty1e+LmC4E7KBanWwI+VMpg0KHIYLQKAs4CxutFA5Cu9PIXUYz6ER+wF8ZQf9GmJrLl94ox+UY17aeL5ueXL9wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM6PR11MB4707.namprd11.prod.outlook.com (2603:10b6:5:2a6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.18; Fri, 12 Jan
 2024 17:33:10 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7181.018; Fri, 12 Jan 2024
 17:33:10 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5 iwl-next 3/6] ice: rename
 verify_cached to has_ready_bitmap
Thread-Index: AQHaQjD4Bl0mKTS0DUun6MaKU/EUybDWdFUg
Date: Fri, 12 Jan 2024 17:33:10 +0000
Message-ID: <CYYPR11MB84298BCB620478960B1401BABD6F2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240108124717.1845481-1-karol.kolacinski@intel.com>
 <20240108124717.1845481-4-karol.kolacinski@intel.com>
In-Reply-To: <20240108124717.1845481-4-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM6PR11MB4707:EE_
x-ms-office365-filtering-correlation-id: 2cf4e418-7b2d-41fe-541a-08dc13948be4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dZfF6KROCJ9tXHD64CZQ5uwafjvIuffgnTs3eUmbUJC2USr7AbOZabRxwWIsJzC7/8+GFuzMo7+R2Ut+59HhPcpDNgn1wTZ1dINcfDtPZMXX1hWodLygABmOdzlKozcYsFXtMSu8PRoVsHXxi0TsSfg8SuN5WL4T4MfyTMnMzcBhA9DWvpnxJBWp5EEC0aQKNIuXogYEAJaGUzolFl5LjqE03Mj3a+1KUoADqhG9+1w6yqxO8w9qdtqi+xxe4I2BrCS5Mm6S4F2eOO6twLRjs0ueHK2PvLseIfhJ3xf+INPcPl0x9C0fSGLNi1PGBSWUOH8bnPyrfiwIFFO35OKfL509rdJ7r6V5D4ftZkobW1ZsHHqUmG2BwFJt1eu5EZNdAXhVdYAsXyI7o+jJv4nHHj07VrvNqQOg4HDwhcRPq/MK2lU0vYooyAeJjsNEvzmHrkSFWr7cs6PMEG1xhyPz8PYn3ckHepD/nRDqwNtG2aB+lpJg4PsOGeGDUbmxJflNHSSwbszloo9Fyn31Inx4pl3ZlDBWgk5rTDcT7xC/WxWJm1wH8DE6SuXAP3IHK0AwZD+G4FwTo+5xxnRzNlA+6pg9Wlf5TlqPq0fgIZbC/qffAVSei5Dy+UmRxyot2kqa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(366004)(39860400002)(136003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(82960400001)(26005)(33656002)(107886003)(86362001)(41300700001)(2906002)(66556008)(66946007)(66476007)(64756008)(76116006)(66446008)(8936002)(38100700002)(110136005)(54906003)(7696005)(15650500001)(478600001)(6506007)(8676002)(316002)(71200400001)(38070700009)(5660300002)(9686003)(122000001)(4326008)(53546011)(52536014)(83380400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9d35y1qDIvyMH3sXiUD3eO+v0fGFdNGCxTDzK3vE728rEfI8uTVbQ93BPbvZ?=
 =?us-ascii?Q?zyQyDWoQL9UBFnJanm+rrGqrGthUjqPIqC4toaTyBWu9Tub0vpVChvJ1mvyM?=
 =?us-ascii?Q?DBU6vL9xe3gnzPXvS9jZfBFs6S0bx8BrExXcuPkhCd5d1kImdpSrSvSmB8Wh?=
 =?us-ascii?Q?BvqDwra06i4Auk9Da7hBRpTuPzNkxypROv+P7MhZUIzWRek+ZISvw+zIPGRj?=
 =?us-ascii?Q?avxlQVMa65hPGTY5UyxWI4GF+MnruWcdG2IZ5l2rX/u9xP4J90gcPC0OBH13?=
 =?us-ascii?Q?5kz7YN2/DT/2QIS6af6FrtoEJ9h7n+3V1hRWBWi1/w+0UaFe7ojAnIr27hGW?=
 =?us-ascii?Q?gjR3yOAYg1SMspomvpAdbYFZkG2CP8VoglwTJ7H2nitjUEY1qlpC9DidvRd7?=
 =?us-ascii?Q?GIJEEumdCbtFFK/wpmAfItvrXVJcXd6KvZPUkMgq2vpwCl4ZPWOGQ9WjozOF?=
 =?us-ascii?Q?HJaxnazc0tNhrqphHj1etd1EYFSH7JiTZhYgs6R5jXErpGPzH/AF7qQpoxuv?=
 =?us-ascii?Q?btQAf/TUSIRFMCxtoHkuCpugvAk+GA/iEGPSulvfNZ6Hd2w8IRTO/Z83vqN2?=
 =?us-ascii?Q?mYz4eyYGWw2wFuACvkviZbr76Z70dkVL3OdTRc1jIR4gRODzIPptq8pRhGYL?=
 =?us-ascii?Q?0NkBbVZE61mh6tM8h+SWv+xHlZBznQpYtzK2VdmftmEUYcnkcnDvb+Cy62PO?=
 =?us-ascii?Q?eNFfC0oi4lxCH87goouTpxXjTEDKl6HzngCo+vrp82xDCkoVWaar/XyZxxpv?=
 =?us-ascii?Q?4a++urmT7r7OBFTGwlPJhlZ6EXUb0TbDwZF0aOJRx8W6/j4U3PjXjS5GkEuR?=
 =?us-ascii?Q?h/hakj0kkAq3mz2zSl+SYu9Fvnm7NhNSV85GOHcsQ63XGSpJf4HfOytbiZwp?=
 =?us-ascii?Q?ADH38xF1tWVsr+3p/TnnY6YiLX0NuX9GTZBK9fzbd9cYJA5Dzm1czhiqnXB3?=
 =?us-ascii?Q?Zg0ipbH/OyrZOfwVEVc/jnBAAXxOVjnzC9D9iZD0XpQi/g8UWb+vSKKeM417?=
 =?us-ascii?Q?DDbQCRrrbO1yzQlZ2CdUA/tz3C9uS7ZK5rUNM0nTbwMEP5eYv/AoU55VJZjo?=
 =?us-ascii?Q?OPzE5KXKx23RaRv2V7EaI76grJHFB6+BpyLEaujMqWGQyuRf8eGtyfIOoORo?=
 =?us-ascii?Q?VBAxiFrTy+Drp3QJBTLOe3yTWQViixF8A8rhYK6TjOBA74bxgd0oM+Ev/YwI?=
 =?us-ascii?Q?kT0UOwjrb7xItrkExmKvGGBG2zX/jyYzVwojKOf8FhMVZODvn/bmWpM9MYcl?=
 =?us-ascii?Q?MvNfoQRGsIm4Isd5uxB0Kufuz9HaQi3yHs7/DmbTKGYdoLYSRJKyIekTMTYL?=
 =?us-ascii?Q?WOm4SWHDiMxKBt8hzVNj0wpfZp3EZIZi6IKVC5wQwsCPos9apFy6fmweRIWO?=
 =?us-ascii?Q?+7BoQQIpvUv7gZgPjcqRIVRr47cHCgvEU3QOd4T5l9M1adq2ui58z9vxgc5k?=
 =?us-ascii?Q?aN/klfq7Wo4YHPF7N/Lvv4DtfUP8h/tkQ7PSwN6gDi0MryTtlB+r27gc6deA?=
 =?us-ascii?Q?rficOAQ60dh0uv9xM6Dfg2mVr4VTXNjY7bbQBFSTeSuLVyteIsTEU+kQDtHt?=
 =?us-ascii?Q?vhIlNkgBKbovrb944y6xVzu9GabiJATZtRD2oHgENKiPKbUzO+DpOsltArAB?=
 =?us-ascii?Q?Eg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cf4e418-7b2d-41fe-541a-08dc13948be4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2024 17:33:10.2556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jyDzIGbQr8mkS1/oaMCvzJ+jpqrOtwc7JO26PBeMMfa2uVn32i55gdj0jJZL+hfN//fTIminWlD4yBnZAi3PGXPlMN538whl8YkTRQKU8vKt9KQArxfwHJkqh0RFvb3P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4707
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705080797; x=1736616797;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O75zqX7lJZ9WXZ6ZdzII1CnseHruA5xkykjnb38ohd0=;
 b=Q9+pUExSmrzr3JeQ2DYg3NBJzvvUjaNS2UGRU7pYEBzHDYhsoWkBzEXq
 uZtuu3bxT9jhqS3g/hTSl58WAREWVBo1XyOLL4EqBeP6mgkQB+asWfUYL
 5Xeg2siSlswXKV8yb80Y/6CTBYUxDgr1VYhtyK8nl3oVIz6WrI7bM5Qlo
 WEU1ADUqn2J4N7BVFQqe60PBfJbBv8d1Eca6bStmjpWzf8Es/X+xk/jBv
 C09oTPiceCgZxZ9k1nlaax9QHr4YMDP4pnOdENZm8y83bJnjbJ1fkNFV+
 xugIvElAnz+OPQM9IKNFmbMRayfUac3+D5LLorhyJ0Yx+Sw/IjgQPl2v9
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q9+pUExS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 3/6] ice: rename
 verify_cached to has_ready_bitmap
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Monday, January 8, 2024 6:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; K=
olacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH v5 iwl-next 3/6] ice: rename verify_cac=
hed to has_ready_bitmap
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> The tx->verify_cached flag is used to inform the Tx timestamp tracking
> code whether it needs to verify the cached Tx timestamp value against
> a previous captured value. This is necessary on E810 hardware which does
> not have a Tx timestamp ready bitmap.
>
> In addition, we currently rely on the fact that the
> ice_get_phy_tx_tstamp_ready() function returns all 1s for E810 hardware.
> Instead of introducing a brand new flag, rename and verify_cached to
> has_ready_bitmap, inverting the relevant checks.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 31 ++++++++++++------------
>  drivers/net/ethernet/intel/ice/ice_ptp.h |  8 +++---
>  2 files changed, 20 insertions(+), 19 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

