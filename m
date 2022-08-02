Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDDB587EFA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 17:31:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 134F840931;
	Tue,  2 Aug 2022 15:31:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 134F840931
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659454267;
	bh=289r1FrqcuNRx7IeKLf2ragLZIz0L3eoXvEkwk2Doy4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=74a0XPRyzld/H4FrGQ3C+gKRxWp8nvIPdC8L6cgWx9Fg5IBZ7mZfsHKU+Se7Swkhn
	 AI69572xHzwqEWsuj60+PCN0XCEYmekjSsvL0/14lR7ZyDVxeKq/BJ4nGSbSgO+IKc
	 hLcQ4vMmCvPrfWX6XXmW3RfHqxcSWOnVuep8bpnW7Drj1+DOrfuN7RX4/cevdVHcXw
	 M5FkBv28Mo9xV52JhgTBp0WkY75U+jgF6vcEWMFqqZuVBgoJjBRKEsoockdQrz/JoU
	 EM+vPSG7RzLQGP8bsFq0FmBY6QB+IMCXp1f01S7khThEQH9jiIKQbnSCJUeScw8MZW
	 SJJ++VtdaSQiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4zCbniBY2tYu; Tue,  2 Aug 2022 15:31:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FB18403C8;
	Tue,  2 Aug 2022 15:31:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FB18403C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D7311BF951
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 15:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40DB0403ED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 15:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40DB0403ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EMLd7ZUsg2ni for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 15:30:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3CB4403C8
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B3CB4403C8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 15:30:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="276346412"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="276346412"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 08:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="705413828"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2022 08:30:39 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 08:30:39 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 08:30:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 08:30:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 08:30:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BTt7WGk3rBx0lf6PaneHsvY/Qp1gBNiBTJyi8S+ZQGlo7A3Ks67+3PiTjIltyWxiChL9gkZhjMhEu7xXHEwrKWKZ5d/egtiwNHwjUPN8AcGa3lBLCqleMjHPDhvnAtdoPqBB45CZ03qi1gEdwl0Gsu1YGlje7+QIssEE5xnR6oAH2st2H4A0t85+VzAfZcEsv80vwp5CvDPhYBT625Q8YvfDGn1O6r6hdTskp36J7uZw4NvEtoZ0GlkFcAlUYZxlJpE6JMOdWGi8QDpi26eODkt+99/g2YT9+96XZ2ZMxd3ehZ08ZXvpaDD2vxjsvvcaV60UYykdf1oWsykQ5XiSfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HL+8/Rl+xVipRRWe12u0idVJciGmP/ceDKzlICSf0T4=;
 b=eQzEFDpXebTUA7jf68sViazjcuI3IISXgunmwx5/u/8PZtoDw+L3ftJyrQ8mWbnvFPyNeSw8kfBNMy1PRrAuJhvHM5aUAu9CIe+UdAX/+/yq7Z/Uopt5LRXjtEWEB0Sc+IDx/NTsTkl80/bElQNyzC/Xva0IHIV1hDuY1hV0U2+LFj+Dc8rvfATAn8GQY1o55glK/kJBoRFEcmVL+mk9kyea0YeEuo/7fQc8/RzRSiq72AsAjmdvBljDQYwLpOiV2XU5+tL6A/5iq6HLpyvbYGExlBtVkU4R7WrRM3Le7lQFVYbzigH9xiKAgna9O2VJoZ+UhDXA7EAng6IcJsPlrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by PH0PR11MB5627.namprd11.prod.outlook.com (2603:10b6:510:e4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.12; Tue, 2 Aug
 2022 15:30:35 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e90e:14af:b1ae:7edc]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e90e:14af:b1ae:7edc%4]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 15:30:35 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and
 VLAN from tc-filter code path
Thread-Index: AQHYgnQ7BWBh+HEjsEqEJ4A0lMUsr62bxZbQ
Date: Tue, 2 Aug 2022 15:30:35 +0000
Message-ID: <MN2PR11MB36141C9AE7C3ACCAE3E31F0F8E9D9@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20220617175000.2168164-1-xuejun.zhang@intel.com>
In-Reply-To: <20220617175000.2168164-1-xuejun.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4af05828-5eea-446a-8056-08da749bf210
x-ms-traffictypediagnostic: PH0PR11MB5627:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7x8Rm52KdkJb2W15WvZvxIHVd/xnCQwqnYgYOe8MqSW/DVd14kRoVZbORA6ssE5nGD2JSZYmNhtzdHYsPObWh0uDH6+RUJUincVVUZRvoBqwfUbZHPgyqraFDPEonzg/UYU8sh/FqDOf89nixZD6lNiScyTfxps7sWFbYvc42TSa/puoPDE084X7smc0JVIetRDXI3Fd9DzroSHbtX+ioAOwsP8LbYWwYec0pvg5v/RzXu5N9OFcV6GWmAmabb8X3j5ajQ7aOZ1F6zJ5xntBe4CyZWg9Jv3twJ3QS+jHu59bnjGNTK7/mNS53m36YtioO4tnLZqj6cHtW5m9SblkZzNFW0PGP8/N6fAR+aa+/ikS7sTnwAPdq0VrwHZOCQ5Bf8dyNm+zOQvy++K+fAhw6WXJzMLdhoQwuuJTXb+V39+Mcl6MJWSJiA91cq1VFw7q6mM2W3s7zDyax4kpsUFptiKf1TrjnjFhH/BAxSyqQf8V7QgMca45zgXp84z4OicdWhQBN8lKKdfdW9pgzYrNUiDkqxWYi069qI+3gYKFtTl9agpGWYdmU2IQFJYhejFbn4aCnL/m6pXOtrIxahpWRwVDEIEuy0nnOBESttH4sjS7ojIfxGMj9lhSEOC/Ruet1RTZVMMrRRH3B8Qupw+qoi/eIEe2IJE2+Xt66Z+Y7G2L8bl+GCBe5pcyHKZZTzlRTbZZgfyPGzo8WfADzHj1ydcRTM/fde82RcgyRyF/IXElnD6CBJWQNAQNAwMxpzYcsTIFsDVA5rK+XRJxOJzgRz1NYEPfyRrbpyR7xB/vnwf8BINxdmfxH1oLpoYPW+n8sa1LNPA82dr87/3Y/d2NAEzylus2Hyt1KRSrKoohuhycHSFwRiyUo+UacGNlRRi/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(346002)(136003)(366004)(39860400002)(53546011)(7696005)(41300700001)(86362001)(9686003)(6506007)(26005)(6916009)(55016003)(316002)(71200400001)(966005)(478600001)(38070700005)(122000001)(82960400001)(38100700002)(186003)(15650500001)(83380400001)(66476007)(64756008)(8676002)(66446008)(66946007)(66556008)(33656002)(5660300002)(2906002)(76116006)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fgnZdM04CRILZqcf/7Ex99v5hcHuR71p3S24zHOtvPFAkZYSZpuTGYYmjAun?=
 =?us-ascii?Q?PoMjxAv8zhOCkLHpiOncS2/n51N8O/3lgjzWYF6jlDurfu1ekRKyEm46svRe?=
 =?us-ascii?Q?3ejse8XV1W6LXbP2670FdcirOEeKu/HDeNaMtfTDBijLCjZBszq543EfKQVF?=
 =?us-ascii?Q?nevhwhsZdaHeVKTA2CTzxpszcUKuSf4c1WXUh6NHtBUyhXgtUAIutqGAVoQz?=
 =?us-ascii?Q?TB01BU5ZpYhpan8DeKXbrULNWIXhinoaqWyB7MKSGfMgZwmgpYRnfnStZDJm?=
 =?us-ascii?Q?A7zuRLjCmAQwl/86Qt6c8A/LsJm/jQJ428E7scCRIBIOxmW1jMHqafCO4Ysw?=
 =?us-ascii?Q?8bGyiEHP38uAEyXxVAn3c5jkYNQO7Dd+UA2AE29kFr5xHXPTwUcV8tcPBkL3?=
 =?us-ascii?Q?SxfE3PcNk7U0FMdClbUN1DL9gWDj0DWH3C0Q1PEwzhT7Piiv0ZRA3avhv5hh?=
 =?us-ascii?Q?u84yNOJ44iEG9kBHDJreK0eIyvBF6RiNfnfb3EjuMdB8Ks8cLsObXJdp4C8o?=
 =?us-ascii?Q?XclRhhO5r00u/8/UxgJZc2C7pktrF/6YDj1IyP2YLsLsVz5xjHczNVMXmQam?=
 =?us-ascii?Q?ISKuTgM8BF96qntkL3jdG6y43GWY6ZMg6U2NbKCmRkK2gyLOC0yaAT//F7yv?=
 =?us-ascii?Q?ORbdfQbra/SM3YprYdriZd3N35W4S+ekt8KWIbYqR8lB4Joyb6z82ITgbLZ9?=
 =?us-ascii?Q?XUkYGcSWb0lbJ7uvC4PmZ9tK/Pui6g4MYemD++L2LQ5LntRN3fTquKD7AUDc?=
 =?us-ascii?Q?zZSoza14lQmvnNGySmeDu7BXjmMtMIR9VCNtBwB6GFVdMZB5tR50iI4BlwvV?=
 =?us-ascii?Q?qCctEP4xM7eroqcvaPy9eKQes1nJIztYbbnWFpFUjmLTYMUJMcMgD6Yc9162?=
 =?us-ascii?Q?TkoYJYqK3XTQHODZ8rtvpAW2DFmRf0zLi30eJeA1k8PkEltHXDvEOukKx+MT?=
 =?us-ascii?Q?NheBu/iZTEWOECU3haxDS8qIc8d/I7pZ1bW200o/EyrF59/1PElJB4LYVNU9?=
 =?us-ascii?Q?uLQgnpiOmWkZFRHG6HxIzd7p1K8UwzKXE64Wk6PCPqqRVrBrXpqocYybWyow?=
 =?us-ascii?Q?FK46ig3sj66Jtteu63QuL1Kc1nu28VFch/GlB8kPNer7X5DZ5/Am7Xi/GnYP?=
 =?us-ascii?Q?mPs4yxYPVDcVO4zERcpdnBkpvjSKfdlOC3+WFwo9nkkyrlAtYn7XVXTkWV40?=
 =?us-ascii?Q?yNFqSHU52ANJE3fl09Zp1HLHHuP287cMqjGL2NC0xKcfYssPrWPj/rka8CH7?=
 =?us-ascii?Q?8O3+hJ71Yn4Tap6IQD7QcqnxLPJy48O8ZtqBejDzgls8aUrwvG8q0USj7Xim?=
 =?us-ascii?Q?2tkz7WKf1RIOgP4M5NocZuK6m3F5KSrk0lwcNXKTKGuB309NCaOfW4US3mSh?=
 =?us-ascii?Q?kSMs96cRQsQwPfvYN1saWoNUHtnUKGhAPUMQSz/RwM9fd4FPAb2WXLFeQNMh?=
 =?us-ascii?Q?zM/n8RpyIjdQXk7+X3RMUeDROhdSp0F0EMiMcTEE8ki10C+O39FPeHkX8NAT?=
 =?us-ascii?Q?uSbrTp+cLP97VQ8NSmPLHeyFjP9aBzgfISsqN2Zjo9eQQ+A/q66ZKyiRUdLR?=
 =?us-ascii?Q?Eu2fwB+uxqK0c1oI+lfYsXK6ShNAQ7YOb/MDF7dg/I5BbmdPT2HoXvZoCQqR?=
 =?us-ascii?Q?6Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4af05828-5eea-446a-8056-08da749bf210
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2022 15:30:35.6110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YYgtRLSbAFQcGFGAAotDmzX+RFo4izVA22j9GVltm4ujSr7c7XUjo+DY7u//t8oOjAvW8re5PkSsvKooG0deoZZR+AZUJrxhd/fqXnsVlvQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5627
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659454257; x=1690990257;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IwTAMR18GEkMw12EHOZb9ggP8na32wUIjANOsVdSol0=;
 b=cVDGZlnxs/qwYWGBL/sTTawdd9J6L4LE6ztd0ZLej/v0765Y31IES5/j
 bFxM0oPXYL/5GxMOHVg2x+Cp6wcQjEJG7EQzJbid7kAvJasXYtub6PvtF
 HFTeKsaiwF8ZpBg9ZDZdfhfjL3fhoYGOKggPEb4iW5UIhrYjJtLY4YACZ
 p+QgC/+Lhve1OI32xcvCnqeKdfD0q0GnLI2ekDalS4nnv1L4bJKNtXzKL
 vIj/e6IW6sxNnwu5ud77bPYOHOpU2NkVxBiVs+cdJ/a9JETq1E3c3EfyR
 9c8HDFHNfq/kXS/xVCTuLMIZ3HAlX5LnlR+rHiY8cCPH3BVNb/v3Qxjus
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cVDGZlnx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and
 VLAN from tc-filter code path
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

Hi All,

This patch test is failing. 
Please refer to the below HSD_ES for more details:
https://hsdes.intel.com/appstore/article/#/16017335057


Thanks,
Bharathi

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jun
> Zhang
> Sent: Friday, June 17, 2022 11:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kiran Patil <kiran.patil@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and VLAN
> from tc-filter code path
> 
> From: Kiran Patil <kiran.patil@intel.com>
> 
> Before allowing tc-filter using dest MAC, VLAN - check to make sure there is
> basic active filter using specified dest MAC and likewise for VLAN.
> 
> This check is must to allow only legit filter via tc-filter code path with or
> without ADQ.
> 
> Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 62 ++++++++++++++++++++-
>  1 file changed, 61 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 57c51a15bcbc..287c3e4bf8af 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3558,6 +3558,48 @@ static int __iavf_setup_tc(struct net_device
> *netdev, void *type_data)
>  	return ret;
>  }
> 
> +/**
> + * iavf_is_vlan_tc_filter_allowed - allowed to add tc-filter using VLAN
> + * @adapter: board private structure
> + * @vlan: VLAN to verify
> + *
> + * Using specified "vlan" ID, there must be active VLAN filter in VF's
> + * MAC-VLAN filter list.
> + */
> +static bool
> +iavf_is_vlan_tc_filter_allowed(struct iavf_adapter *adapter, u16 vlan)
> +{
> +	struct iavf_vlan_filter *f;
> +	bool allowed;
> +
> +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> +	f = iavf_find_vlan(adapter, IAVF_VLAN(vlan, ETH_P_8021Q));
> +	allowed = (f && f->add && !f->remove);
> +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +	return allowed;
> +}
> +
> +/**
> + * iavf_is_mac_tc_filter_allowed - allowed to add tc-filter using MAC
> +addr
> + * @adapter: board private structure
> + * @macaddr: MAC address
> + *
> + * Using specified MAC address, there must be active MAC filter in VF's
> + * MAC-VLAN filter list.
> + */
> +static bool
> +iavf_is_mac_tc_filter_allowed(struct iavf_adapter *adapter, const u8
> +*macaddr) {
> +	struct iavf_mac_filter *f;
> +	bool allowed;
> +
> +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> +	f = iavf_find_filter(adapter, macaddr);
> +	allowed = (f && f->add && !f->is_new_mac && !f->remove);
> +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +	return allowed;
> +}
> +
>  /**
>   * iavf_parse_cls_flower - Parse tc flower filters provided by kernel
>   * @adapter: board private structure
> @@ -3651,7 +3693,15 @@ static int iavf_parse_cls_flower(struct iavf_adapter
> *adapter,
>  			}
>  		}
> 
> -		if (!is_zero_ether_addr(match.key->dst))
> +		if (!is_zero_ether_addr(match.key->dst)) {
> +			if (!iavf_is_mac_tc_filter_allowed(adapter,
> +							   match.key->dst)) {
> +				dev_err(&adapter->pdev->dev,
> +					"Dest MAC %pM doesn't belong to
> this VF\n",
> +					match.mask->dst);
> +				return -EINVAL;
> +			}
> +
>  			if (is_valid_ether_addr(match.key->dst) ||
>  			    is_multicast_ether_addr(match.key->dst)) {
>  				/* set the mask if a valid dst_mac address */
> @@ -3660,6 +3710,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter
> *adapter,
>  				ether_addr_copy(vf->data.tcp_spec.dst_mac,
>  						match.key->dst);
>  			}
> +		}
> 
>  		if (!is_zero_ether_addr(match.key->src))
>  			if (is_valid_ether_addr(match.key->src) || @@ -
> 3677,6 +3728,8 @@ static int iavf_parse_cls_flower(struct iavf_adapter
> *adapter,
> 
>  		flow_rule_match_vlan(rule, &match);
>  		if (match.mask->vlan_id) {
> +			u16 vlan = match.key->vlan_id & VLAN_VID_MASK;
> +
>  			if (match.mask->vlan_id == VLAN_VID_MASK) {
>  				field_flags |= IAVF_CLOUD_FIELD_IVLAN;
>  			} else {
> @@ -3684,6 +3737,13 @@ static int iavf_parse_cls_flower(struct iavf_adapter
> *adapter,
>  					match.mask->vlan_id);
>  				return -EINVAL;
>  			}
> +
> +			if (!iavf_is_vlan_tc_filter_allowed(adapter, vlan)) {
> +				dev_err(&adapter->pdev->dev,
> +					"VLAN %u doesn't belong to this
> VF\n",
> +					vlan);
> +				return -EINVAL;
> +			}
>  		}
>  		vf->mask.tcp_spec.vlan_id |= cpu_to_be16(0xffff);
>  		vf->data.tcp_spec.vlan_id = cpu_to_be16(match.key->vlan_id);
> --
> 2.35.3
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
