Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0902802C61
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 08:51:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69C7481656;
	Mon,  4 Dec 2023 07:51:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69C7481656
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701676318;
	bh=U99P4KoZX7hc2RRz7GltK2VI/hcNzZpG+NbNZFuP+Jg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C8mq3EzlKKythPsEOMYp1PxHxzWxYG+nGBcLOv1meBzgp849YzbCGxHUxVADvoCDB
	 4mfe62/f21mDupDVVKYDX+7LW36JKM9lqpMPwzszQF201NqOpNFjFnpAtVMgISBDDp
	 vTWkVFdPoP/xsMIxluwYycNDVyuB6D4O/5KiAdpsk3n25DP2Gda80bxJxeOk87vRjt
	 OGyS7leclRhuXonzG+qSxqJ4xvNEVg33nQUtvqCyYpSStl2AIAzRA6Z9LLNb+A6hE2
	 B/SJY9RXznB6N3Xz2T88eMu+i94KIx8BCqqQIgcCK8us/+1pSD1nNP+R4n4xjTBorb
	 KkslQP6mznUCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TUjba_1vlaPN; Mon,  4 Dec 2023 07:51:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4BF38164B;
	Mon,  4 Dec 2023 07:51:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4BF38164B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A18911BF33C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 777BF8164B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:51:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 777BF8164B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9hJqLCyFJsI5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 07:51:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A0C981638
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:51:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A0C981638
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="378730575"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="378730575"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2023 23:51:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="770456851"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="770456851"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2023 23:51:47 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 3 Dec 2023 23:51:46 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 3 Dec 2023 23:51:46 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 3 Dec 2023 23:51:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MzKbfVH7ZUW+XmHSocM9dHOCEsRxdN6TtouQDxoxYxa4rqZ/AiOIdr0KYuhR2M9lzf9lX+mKGZCDFrEfI3bvYARVH7w3kL3XaskQsWvnTE3GrY2u9Rk0ShktOXrMKuZhOoJVzHnEhzgJnlPBdKyCCXjkwvpJj7hf/PvbIbOY/3v9HdrFRzt5iuAXEFmT4TNXkC68FPL1Lb3s/9Nx1OBZXxkL8FqfGXqaHluxkQoZbIjNxE+D99c5C2LbpoaiBCNF1hDCtyq7g6ZTXrwctq3ESvSj1Rnkeb19xUSg9vP1O1LikwPLVpUOqTSENiB/bCBneFIiH93fWajGaNo6qvqqew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ObLSjLuRVkIjBM3zDkh5x0dUJFdt9M5UTDlk1mmnzRw=;
 b=HMGfxxVmQ4URGdheHRLd2xKuoqryQlHNNA244yD9oNjp62UrCAQauzFSug2JI0+gX+rBm4P1gB/7LWbI/jEguQc9ObG+99GCH/TPE0GDnUi0/t/Ca2BLEOuDUOtZNJTJMQCH9LUmCaZKXRf3BcefnQ4CljWrQettxG8xExnukfJw5FXDTOb3zts1ht/jt4eESkyyJBtBsxzjToPD21plhYJQdljMOfSAYhMcUEM9gaq+oTXfQYRVD05AatVAVxhWCUVgfPEfhtiIq0Oi32zgJBDykUHmu6QdO2UYf375TMk0dDRRi+UCAlmZ4FXaTcO453pmhLx87sgv7X9jhtFWXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB6555.namprd11.prod.outlook.com (2603:10b6:510:1a9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 07:51:43 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 07:51:43 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v18 4/5] ice: add ability to
 read FW log data and configure the amount of memory for log data
Thread-Index: AQHaIlKP9j/V9u7x1Eaj4/Yi6eIrNrCYx/PQ
Date: Mon, 4 Dec 2023 07:51:43 +0000
Message-ID: <BL0PR11MB312273FA6AB3D05F5A78720DBD86A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231128232647.114-1-paul.m.stillwell.jr@intel.com>
 <20231128232647.114-5-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20231128232647.114-5-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB6555:EE_
x-ms-office365-filtering-correlation-id: e143b1dd-490a-4cf7-85eb-08dbf49ddbbd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oAbx6wygJGJSu9trcmqiyOgdw6zrV+/GzsvX/YZUESTdtw8UQKdgPN1qSM0xGlGS1mV3mVu0TltM4dQezuCtUNi/du4OYZHHPwCbY9gM1ecGuy/1a0NOplYmmxAh/3CqfZgGPkn9IJnpoh+4l8gf8dsXKO+g+pDmjgg8PH25ojXu1lKGEcrORQ/m487zktLyUir8FclRN7dD3G83UuVSZxT2JAr+6cFlTfC8ETzL0JcD/KZ9CSi7XsBNmGztCvRFn9qZSuItocVsF+UvONJ4PUUpIer+xPqSYp7TWZ8hOASNrRyyj8xRjHqbfw0meyKzmLOF1zCUjNP5/vZPjwgh1l2rGksEzWzX+GhDB/7jD3SO9V7XS5IgcO1JC3RgDXSXqG4Ivi7pvH+RgEufce9/xnQv1TC2Zaq5CBzekX0uKevuM16Ssj4avSo5KPsCQCpwtTPijZ6QUWJ3EiC3BbdKaDKgLv7J5acQ0nyE+1uykkEfx/jBy3W40iKLI/BxzH1xurW9AGYup7X2MxJwcwWLVtN1m6rqz2SmKFjFpDPbuky5ZYW1g4FgHRcEDz8Vsy8lVaBgaK3fQS03oxpo3gM3vLO/Mh72aoHbYwUfMXrC/gxRSg79DeMvfWVaYqeliJkT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39850400004)(396003)(376002)(346002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(66556008)(66446008)(64756008)(316002)(86362001)(8936002)(8676002)(4326008)(66946007)(66476007)(52536014)(478600001)(110136005)(76116006)(41300700001)(5660300002)(2906002)(33656002)(122000001)(38100700002)(26005)(107886003)(7696005)(6506007)(71200400001)(9686003)(53546011)(83380400001)(82960400001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NkNpghx+DcTrYCoqQknW4fVbhbdCxlAeocEY3oyddx/eS9kMvEbUQeIwliz6?=
 =?us-ascii?Q?a+MZQd41R5eLJv98hcKdjMcYZGndYO9pOUP27ekd69/+Kqaq3QJw+Ul9C6YA?=
 =?us-ascii?Q?0bhg4jH7b2+WvgQgVsGkwN7whP804dZL0gvv1ltyLu/8eP3c7BW3TAtk/K//?=
 =?us-ascii?Q?c2q+PrbWZcWNVLXdyB9rIFgfoU3CFOkxotBWZssDUkd2bdZGuJkdlShfMFjv?=
 =?us-ascii?Q?YM1vJdGrw5w8nHztBrl/YyBy/SISvpy515NLlfYWsx6iEHaHpT+BSyENqh6T?=
 =?us-ascii?Q?oEWvpW368LZQmgdzd8KCwKbRWdhMroQDYiHHzQRj94RwlSND7IHIdt/8Ffe7?=
 =?us-ascii?Q?Ni0TMBWPsknAf+4jfLJ/hSldIxPoMwL1BLm6D3ZsQ3we9LyNfFoq5VvRWr2D?=
 =?us-ascii?Q?o6gA3JJMoDVWRavl8PV78745n0IKOQxiMjwZTZ4s1EujfOzdIknWNpE79QwZ?=
 =?us-ascii?Q?rfSYtY0dv5LVPCnW6k6HVy/7Q4Q9udGI7wVhpwggRbnnl//mcakrIRsdtk27?=
 =?us-ascii?Q?V3mVHhvnE+UYgSXypOJQxcW2KYSqvlZJLnZcwnItmWuNb1uK10sKmqs4iAMl?=
 =?us-ascii?Q?G6QrPNLfLYK25iGlujPEYHi2xuc2xzukrbMIdWEHH8JShMwut6iUtACMXBZa?=
 =?us-ascii?Q?7b3w4MUxBT0vrx9pbARz6h4S7eFOtn0H3iYyLnbkv+OJEDDSbLfXNUAKGsVB?=
 =?us-ascii?Q?VZReZrsRjYedMuVmMiC/eNtNKJRD/38isqeZ7nrDsNJmVesRx7IKBF3k+NmO?=
 =?us-ascii?Q?t82AoICCyD8UWiHdI/mZf1ywarL7ybYIID+gU/UdHq2UeACkYjaWSX9Cl1Yh?=
 =?us-ascii?Q?pnsWw4DKAnwGAWED89cd9NsQg68euvdvNQaMNAL5Gp3j+e1DxnV5tibQ5vfp?=
 =?us-ascii?Q?QtR6J0NbNKxiF5G4viNCnlpzVjVhKx8VYY3rp1L39GntXKKuw2DlHkxuuQBh?=
 =?us-ascii?Q?rqs5A3lUSlz/WK/2mwcwSuQuon4U3McwWJ4SMfLf2zGSmKyoHKsfi3J6/+JV?=
 =?us-ascii?Q?tJRcGVevwbOoIqNc5SD9BPnPrsIhm/FDAVDLhntA4z3znIxdrEMWMHJbWUp9?=
 =?us-ascii?Q?4PsKENFPPUEr8boGGlgMeIG2RHzGToMIcBY4soEs5kG9mRL5EwWBSrKlsHjA?=
 =?us-ascii?Q?QrtJgTP/kcIEtOrrOVlI29TvyTzzg0YCTkZ0Sd5R3GhdNkuDJ/y4A9CZialw?=
 =?us-ascii?Q?347zwN7/0XuzC9vwSLZBN1TyHZl0DOY92Tw+a1tJZybajAaO5FF3/QsErnrL?=
 =?us-ascii?Q?ZfYbPdmVwLkl9pszyg2AbQNgL5tdyCIc5maN3hcAEDX3yxrPJKcqRJ6T6JHd?=
 =?us-ascii?Q?Ox0l/RIRdfqu1kMjOAc8//FRJtvoR/g4l2BL3pQ0x4aycISAa+cHCTCYgKdy?=
 =?us-ascii?Q?ddPb38W5L6FNdrQZwujjVn5xmG8AcXA3IPilshBno22PoOyNOKxIG1dkfXHe?=
 =?us-ascii?Q?5GRHPp4nC/LX+RmZRBqV98NoIy+Crn49bzYxMU8PtBqXONdulOcLpJM22RXo?=
 =?us-ascii?Q?YPye/s/bpFt+UcJlKWw1Ae4EcFZ8TcwEn7Wmsv3I8IZJPT09YkhJs/v95q8L?=
 =?us-ascii?Q?ddqrfCMEC2zgpSJBhUIYMWny1Qh0YpaToK4wFEZ0sCC8vzU/J2j5UzykZfZI?=
 =?us-ascii?Q?Lw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e143b1dd-490a-4cf7-85eb-08dbf49ddbbd
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 07:51:43.6476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ViJhYM89koHpLlthGJQDeT+ikRQlueqwiGPYkrCSt5K2Y5UakT9PDYTlaySmGhrpH1Bakvr7lozQiAXX79Xm1CrCmSIli9X9PQALtelx28OyUlTTA3VL8I/HmpvNI9/L
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6555
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701676308; x=1733212308;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9re7wxP75sThB7cU/tvljMKljncpX/3Ybn4d49/4cLE=;
 b=EIqwZj5+aFoMzTAazKooq2hNqiw+WH/OS6xPPuDLyyji33rudkUpO5vA
 GbTlffwL7TuNta2bGeoFAK+vOhGQZUAm+MQZv8Y08PQ14SaV9VUa/mYYd
 wfO9PMkDBEjS1kPPMRkvITAw2fOT5IQg85zR6JHwxF/dGAr/S7tpZUOFz
 Mvq+K1AcUfsqFDoGLz4CfDqwMmnT961u3vXFLrflXvsOt9Sx86s6+eKJE
 A+Up11ata9iGJ1gpDGzXUJX0S7LR54pC6BXOMwZYgf6xSs6vFo4W4Locg
 dK0ShcZGuRMGynqKnoU6Zj1MjmTR9XtuCFC/1HS8PeACr0OP7prinPbU0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EIqwZj5+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v18 4/5] ice: add ability to
 read FW log data and configure the amount of memory for log data
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
Cc: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Wednesday, November 29, 2023 4:57 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Stillwell Jr, Paul M <paul.m.stillwell.jr@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v18 4/5] ice: add ability to read FW log data and configure the amount of memory for log data
>
> Once logging is enabled the user should read the data from the 'data'
> file. The data is in the form of a binary blob that can be sent to Intel
> for decoding. To read the data use a command like:
>
>   # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data > log_data.bin
>
> If the user wants to clear the FW log data that has been stored in the
> driver then they can write any value to the 'data' file and that will clear
> the data. An example is:
>
>   # echo 34 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data
>
> In addition to being able to read the data the user can configure how
> much memory is used to store FW log data. This allows the user to
> increase/decrease the amount of memory based on the users situation.
> The data is stored such that if the memory fills up then the oldest data
> will get overwritten in a circular manner. To change the amount of
> memory the user can write to the 'log_size' file like this:
>
>   # echo <value> > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/log_size
>
> Where <value> is one of 128K, 256K, 512K, 1M, and 2M. The default value
> is 1M.
>
> The user can see the current value of 'log_size' by reading the file:
>
>   # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/log_size
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v17->v18:
> - changed the memory allocation for the ring buffers to allocate all the
>   space up front instead of allocating 4K buffers per ring. This makes
>   it easier because there aren't as many allocations and frees and its
>   easier to track the memory
> v16->v17:
> - changed 'nr_buffs' to 'log_size' to make it easier for users to set
>   the amount of memory they want to use when logging
> - changed the 'log_size' values to be set between 128K and 2M instead of
>   allowing the user to write any power of 2 value between 1 and 2MB
>  v15->v16: none
> v14->v15: changed PAGE_SIZE to ICE_AQ_MAX_BUF_LEN
> v13->v14: fixed an issue where 0 was an accepted value to nr_buffs
> v12->v13:
> - moved 'enable' file addition to the correct patch
> - added comment to header file about inclusion of 0xFF33 command
> - added linux/vmalloc.h header file in ice_fwlog.c
> - removed NULL check before freeing ring->data
> v11->v12:
> - added fwlog/data file for reading and clearing data
> - added fwlog/nr_buffs to change the number of data buffers to store log
>   data in
> ---
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 249 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 150 ++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |  22 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  29 ++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 452 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
