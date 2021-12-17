Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D51C478DC0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 15:24:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A253A84B73;
	Fri, 17 Dec 2021 14:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9SRR8n_7KpTJ; Fri, 17 Dec 2021 14:24:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56B5F83FC7;
	Fri, 17 Dec 2021 14:24:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F26A1BF267
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 14:24:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6893941C41
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 14:24:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lF6Wfa1XAFCT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 14:24:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DFF54161C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 14:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639751079; x=1671287079;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lCqjXTJ4Gv69Oc2tj9mnqWf00djTAR/WvSVd+4wBa08=;
 b=X7bE0VyH+JfRIWP7ZW50XCa/ZVU23yIC4XoRJWNuvAeqMCx0Wu96/OMz
 Pf7mZYJsubHWvC/XYFomVnaBKK9hu6V2l7ZmI14hm+jr177w9gaaIGSdH
 sE3fRSF17xqtNHKAiIxjW+7qO1J1ZwRPIcGLkTt2kAkGU4W/cgJsK28mQ
 6wP5xzkNgJ2XihwLGy5kGaSvnimkt73TSVFpE+VEYRxQk/OVIvIF9PG5L
 WlB/qcbOnq6bThbmMUiJzt3UUVR6yklF3avugOdNumSbRwDqA3xH3Pxxw
 kb74070PMozKvV9lq4dXnKbUJWnR/0N+V+UC0qxw+OU98zfK8ELsa+G0y g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="300536933"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="300536933"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 06:24:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="465134627"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 17 Dec 2021 06:24:38 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 17 Dec 2021 06:24:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 17 Dec 2021 06:24:38 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 17 Dec 2021 06:24:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cdMrDt65G2hrkoqRCU3Ym6pDya34CEj9PEJYcAf8CMXcPw1dYGHLtsr+oJTuri9znUOyLCCgcMeaM7yii5G8N6nTt129zUwSU1N9TF+U1WdUvuAtt3Sy8AbxJKk74fVK5V7K5YAfLaMnbo1Jgxo1EvVxqTasEepnmmPEEKHZjELq98keS4OQlr+ZYKjfQ/6yI5hmsaAtQyLRnXwfGeEH/E621D/490bSWgI/uKaj+aHUqp5Puh36kQw7EtEUW8jsEUp6wqdywtKQh0K0HdnQrQ2IfImSsGKIuzxXy6hiM7MnXH1HXx0ukmL9k0FJXIJdJV+nKl0codTGdonSvCopRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m3q/5pn+0tldl/z0d1t2G7xqGZ3sZP5KMgzzRpNnn8U=;
 b=c2sYEYwSX7zmXoaichUWcjoOkl6PVKAOa4OwcUl0SR6DNyFhHEUkRRrhMbkxr+EAjW9zV+A74Lzpe/Dce97EaE1NixzMDJeuBnntadRdZRltsqWaB8ZR+4tpgOdskHkD6juAHSwgaDgk/yeycK2uyZ6pqYfyRtdnUp+WMjkttsMW/up9IqkdgWj8EU+rtfLqcTGjz8XLXO0Y7tH8WCUUdGdEw0ElB7enyWb5hrjcN4s1BboUYrR/OJ9fD5AJVB+blE9fBNbkatiClhdmojDieTB8pjSW81H8uqGczOVdo9P+o0o98QOCvX37hvuCnk1XUl11wdMaQDoh6onJoJgezg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM6PR11MB3579.namprd11.prod.outlook.com (2603:10b6:5:13c::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.18; Fri, 17 Dec 2021 14:24:33 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::f8b1:818d:e250:d2aa]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::f8b1:818d:e250:d2aa%6]) with mapi id 15.20.4778.018; Fri, 17 Dec 2021
 14:24:33 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix incorrect netdev's
 real number of RX/TX queues
Thread-Index: AQHX8aDzxrBU9nZgfUOOXlJoOAyk0KwzYeoAgANeQ+A=
Date: Fri, 17 Dec 2021 14:24:33 +0000
Message-ID: <DM6PR11MB2731291951344BE0A1A79202F0789@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20211215104554.31524-1-jedrzej.jagielski@intel.com>
 <YbnKKBspT3YqMgZP@boxer>
In-Reply-To: <YbnKKBspT3YqMgZP@boxer>
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
x-ms-office365-filtering-correlation-id: 4bba7884-2bbe-4159-c6a4-08d9c168f254
x-ms-traffictypediagnostic: DM6PR11MB3579:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB35796681F8A1D446E23C26D3F0789@DM6PR11MB3579.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n0G2Hxhp7QcDfeaVmLmnA6DI0/zEHPbo+Vak7XTReujTscYO7yeVOmbGzvk+xwdcfrRRBz352CT7SbyuQELhN4fJREC05P6xYNN2mPHXDqamZHM47DRpZXGXTVYDXfjroOAyjkJN2Wtpz6HwunNhoPt5xKGbkuQw61JzsbGVfMkxpCUoOVf8LJm+acD83coPbdOlwPfFcv1o+S+SiF+r+9UMlLSCyBBcnBOcw1bQCP+Lm5xoimFsECC3iWvWaidEKB41xIVlU5oTn0obWO8EMyYANE+Fk1TQ6QtBDEOya/3ne7QZQ/ZAeLSEMDguJDiHXb0nhSgqoAabR6LrcnHfQ8EFL7cg1Q7wLWujmM66iRN31fh3GKp8l8RM1s2gmnZ729HOzgwLQO9p0v1eMPp+yssfTngwNGwiByXHJ0EyFG7YwlobsheUqpKuAax5wJDlGIbqcwwNGR+SEuQHjhWjpp19sWLBq12EtvBiFoHyEumlRjQBgvM3caAV0ZHEq88aZ2lMvh5ynBBWlU6EQsF5BxehzSucGvSmlFJF4wpH2zjkTp0fiq6DW+tANvPlUm4UgMcMlKAbHOo4RN4IqzIT7qMW5lC/QrokuK0XIL9/wV0Hs9Fh+nM7bljXzaWEhjal/ROGzI/kkyxHVlg4/zfjQR2UrEhoWnqHGz7mwaUW4H3lqV6PsyPjNpejKtxfR9g+9UYn5rUxPA1B3H5bTE66Wh78iqQ2mUGM5kqtiQmgIVJV0xZB4QDyYw+zJ3ctsA9/25IAY4yBvAjo9fLOWQ3b5xlByJACHLgs6F2oYnQzMDk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(53546011)(6506007)(38100700002)(316002)(66446008)(83380400001)(38070700005)(82960400001)(122000001)(186003)(9686003)(66556008)(7696005)(52536014)(66476007)(86362001)(64756008)(33656002)(5660300002)(71200400001)(4326008)(55016003)(107886003)(54906003)(508600001)(8936002)(6636002)(76116006)(6862004)(2906002)(8676002)(26005)(966005)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?YuS/Ca9tR/4nZt6Cmvx1RIuCwF71uTFZk35QtKymPyhXqVutAfc4yYcgg2?=
 =?iso-8859-2?Q?LKO+Lbe1t2W4qvP+b9MNHMssQ7sj3P6E/ZGGmZUPPKImPrLNwGToqJgM4Z?=
 =?iso-8859-2?Q?4+RevPoQFwnGgqIx08gCIz2c9+1WSsiRGa0RZcaXscztwT+hs4JTO/xYLT?=
 =?iso-8859-2?Q?DiNW9nCSl09eXuQWTmAZglsOWILaWVKE0qbRHvU3x5GKA0ufUBFHXLZSpL?=
 =?iso-8859-2?Q?JNOQZZ+fymhjKu02B3Po2WHVrENUgubFProdlhLPaS6r0pFJ0PW7arIoU0?=
 =?iso-8859-2?Q?af8B8rKsQYo0xnitJfPpggdBUovJHyiaE0K7JhYbZpuxiHLJeT4bvhhUmZ?=
 =?iso-8859-2?Q?ZKSemf6rNzBF72ITSjF3EOJWTkGR+zZ0LDXGIz2lhb+AP0BW3OG51fvJol?=
 =?iso-8859-2?Q?ehKVx8LnLopxbx35Bf9P1W44CnbXviO9xLz/WI4x4gyMsJpTPWAy6Ef0P9?=
 =?iso-8859-2?Q?ekazp4za1dwXn3CI2eENN2nwJOjjJ77COk5XlJRSpN7sQ4h/Xrda+99nEe?=
 =?iso-8859-2?Q?M0AzjrM4KRuTg/3BV9Bkaj+Q7sJfyl+JuQpXuxditpAFuAfKqqLOlhk+58?=
 =?iso-8859-2?Q?Kt7ObvqvXNmyaqHNkFuiJLHiCngH3muMKMT1dKRbwvVYfPtpa/Q26G1EBr?=
 =?iso-8859-2?Q?zAb3RllJBJbFtGZUWBwT8dZWcpHL9YZNnAmqHC0nmmaZpr2YBPKg8Re3ww?=
 =?iso-8859-2?Q?9yWaWYEbbOCWeKYWBYl2TgPxF8Fa2wcK1ZEJcVcrEo+cr+Oqmi/XtgllNZ?=
 =?iso-8859-2?Q?BdFsHpYsm5RlO9or5lrtcVVQMOlU1mlEk+EdgdfdUuAWgxikDzryzLAOM/?=
 =?iso-8859-2?Q?5/ys6V1fD9VIUk5HTwZjyu1837D2kv18QpZJj4Cha2GpBpx/LHbcMxo+nk?=
 =?iso-8859-2?Q?haELaLWUDqVXXMRwQGnNsfRnurhaSYMrT1Xk4vqoi6w/267LR51FvOWmJp?=
 =?iso-8859-2?Q?EyzBcVSqmn/EHIUpC1GmZJJdhM7kaDUgRBdjmqueIJRxBhvgEZRpiJax9k?=
 =?iso-8859-2?Q?S5sIjSVLBF+9KlHavkGBt145K6kiFJ/wrjG9MSzo/sBr7nl6D8IKyKUvR3?=
 =?iso-8859-2?Q?34F+N/FFEy5WHfXNKAK/ks/I4Asmi/Dx3KEbiUaYd2KudRwpn4tMutQYEk?=
 =?iso-8859-2?Q?3QdziV0AtCby5Gp2dzV7AVIR5x/ZxfXk26OnFXIgQ25GrqoR9NPWLLiS9U?=
 =?iso-8859-2?Q?w/gPltUMgeS8JDLQQNiPuJ9JztPqhdQO1mXkGq2BFRvo31QL31VypaRTyx?=
 =?iso-8859-2?Q?geqMshT/EvGSIvz1qWdxDcuDeZUAG+nlLi9zAP55MQrlwnFrzqSybxcAs4?=
 =?iso-8859-2?Q?el8XfvBSPlPbGvE5kTQbmG7A/qgloanxGHMYvZnZUW/z8R97nRaI/0wz7G?=
 =?iso-8859-2?Q?Ag89/Av9FC817RD8LfddQNtHBw31lx6+wZCcQc/IPsAuggKVMEytVGa0Ur?=
 =?iso-8859-2?Q?xGZ5OByKC39o55wAZ4H4cgfPcc7rl7dRbSOH/Z/2g08ZFmdlabyPPxXLXF?=
 =?iso-8859-2?Q?2dqMX8KqjNWC+JuT+Ssbh/6/9O5IrIJF1qdGpC9yQ5WQdP5YRF2OQg0EeQ?=
 =?iso-8859-2?Q?cta/40l64zhfepmgLkNJO8yb1D/K91vRsBkrbTKC9Mpb1JcD85PWJxGqMt?=
 =?iso-8859-2?Q?mnTVK34O3VUCN16/Cvxee+5vP1Jzc0E+QqlZOhJKsCBzg3F6oARMvPoUJx?=
 =?iso-8859-2?Q?qMH3QzAXjV9soBcKeZEM+POteQepFzUuq4lL16MlZwllYQGJodt7Y1tt+d?=
 =?iso-8859-2?Q?V5Ng=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bba7884-2bbe-4159-c6a4-08d9c168f254
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2021 14:24:33.5256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XHXel3JdBIIr7I6eEtitFwWwf2tdWLA5f/K3ycyH2mmxSgmXBE4zdSVa9pPBcJ3TsZEZgTS1nzlVpcZ1cNUnx6nKGVsrN2yjgq00EhvuIOM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3579
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix incorrect netdev's
 real number of RX/TX queues
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Cieplicki, LukaszX" <lukaszx.cieplicki@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>> There was a wrong queues representation in sysfs during
>> driver's reinitialization in case of online cpus number is
>> less than combined queues. It was caused by stopped
>> NetworkManager, which is responsible for calling vsi_open
>> function during driver's initialization.
>> In specific situation (ex. 12 cpus online) there were 16 queues
>> in /sys/class/net/<iface>/queues. In case of modifying queues with
>> value higher, than number of online cpus, then it caused write
>> errors and other errors.
>> Add updating of sysfs's queues representation during driver
>> initialization.
>
>Description is not very clear to me - how did you get the value of 16
>queues? Do you have 16 cpu system and then modified the count of cpus
>being online?
>

When You have less than 16 available/online cpus and network manager
is disabled, the maximum preset number of combined queues of the
interface goes to 16. So you can set combined queues up to 16.
Then there is sysfs representation of TX/RX queues index greater than
available/online cpus. Then trying to write some value to (for example)
/sys/class/net/ethx/queues/tx-15/xps_cpus causes Invalid argument error.

>> =

>> Fixes: 41c445ff0f48 ("i40e: main driver core")
>> Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> ---
>> v2:Fix "CHECK: Lines should not end with a '('" warning
>> ---
>>  drivers/net/ethernet/intel/i40e/i40e_main.c | 19 +++++++++++++++++++
>>  1 file changed, 19 insertions(+)
>> =

>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/e=
thernet/intel/i40e/i40e_main.c
>> index 4ff1c9b9217b..1b6f03cc41da 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> @@ -14074,6 +14074,22 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(s=
truct i40e_vsi *vsi)
>>  	return NULL;
>>  }
>>  =

>> +/**
>> + * i40e_netif_set_realnum_tx_rx_queues - Update number of tx/rx queues
>> + * @vsi: vsi structure
>> + *
>> + * This updates netdev's number of tx/rx queues
>> + *
>> + * Returns status of setting tx/rx queues
>> + **/
>> +static int i40e_netif_set_realnum_tx_rx_queues(struct i40e_vsi *vsi)
>> +{
>> +	netif_set_real_num_rx_queues(vsi->netdev, vsi->num_queue_pairs);
>
>Why return value of above is not checked?
>
>Also would be good to convert the i40e_vsi_open() to make use of this
>function you're introducing, I guess.
>
Sure, good point.
>> +
>> +	return netif_set_real_num_tx_queues(vsi->netdev,
>> +					    vsi->num_queue_pairs);
>> +}
>> +
>>  /**
>>   * i40e_vsi_setup - Set up a VSI by a given type
>>   * @pf: board private structure
>> @@ -14203,6 +14219,9 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *=
pf, u8 type,
>>  	case I40E_VSI_MAIN:
>>  	case I40E_VSI_VMDQ2:
>>  		ret =3D i40e_config_netdev(vsi);
>> +		if (ret)
>> +			goto err_netdev;
>> +		ret =3D i40e_netif_set_realnum_tx_rx_queues(vsi);
>>  		if (ret)
>>  			goto err_netdev;
>>  		ret =3D register_netdev(vsi->netdev);
>> -- =

>> 2.27.0

Thanks for your suggestions,
Jedrzej


-----Original Message-----
From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com> =

Sent: =B6roda, 15 grudnia 2021 11:58
To: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org; Cieplicki, LukaszX <lukaszx.cieplicki=
@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix incorrect netdev's =
real number of RX/TX queues

On Wed, Dec 15, 2021 at 10:45:54AM +0000, Jedrzej Jagielski wrote:
> There was a wrong queues representation in sysfs during
> driver's reinitialization in case of online cpus number is
> less than combined queues. It was caused by stopped
> NetworkManager, which is responsible for calling vsi_open
> function during driver's initialization.
> In specific situation (ex. 12 cpus online) there were 16 queues
> in /sys/class/net/<iface>/queues. In case of modifying queues with
> value higher, than number of online cpus, then it caused write
> errors and other errors.
> Add updating of sysfs's queues representation during driver
> initialization.

Description is not very clear to me - how did you get the value of 16
queues? Do you have 16 cpu system and then modified the count of cpus
being online?

> =

> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2:Fix "CHECK: Lines should not end with a '('" warning
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/et=
hernet/intel/i40e/i40e_main.c
> index 4ff1c9b9217b..1b6f03cc41da 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -14074,6 +14074,22 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(st=
ruct i40e_vsi *vsi)
>  	return NULL;
>  }
>  =

> +/**
> + * i40e_netif_set_realnum_tx_rx_queues - Update number of tx/rx queues
> + * @vsi: vsi structure
> + *
> + * This updates netdev's number of tx/rx queues
> + *
> + * Returns status of setting tx/rx queues
> + **/
> +static int i40e_netif_set_realnum_tx_rx_queues(struct i40e_vsi *vsi)
> +{
> +	netif_set_real_num_rx_queues(vsi->netdev, vsi->num_queue_pairs);

Why return value of above is not checked?

Also would be good to convert the i40e_vsi_open() to make use of this
function you're introducing, I guess.

> +
> +	return netif_set_real_num_tx_queues(vsi->netdev,
> +					    vsi->num_queue_pairs);
> +}
> +
>  /**
>   * i40e_vsi_setup - Set up a VSI by a given type
>   * @pf: board private structure
> @@ -14203,6 +14219,9 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *p=
f, u8 type,
>  	case I40E_VSI_MAIN:
>  	case I40E_VSI_VMDQ2:
>  		ret =3D i40e_config_netdev(vsi);
> +		if (ret)
> +			goto err_netdev;
> +		ret =3D i40e_netif_set_realnum_tx_rx_queues(vsi);
>  		if (ret)
>  			goto err_netdev;
>  		ret =3D register_netdev(vsi->netdev);
> -- =

> 2.27.0
> =

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
