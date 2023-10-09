Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F26377BD288
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Oct 2023 06:21:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21B1641774;
	Mon,  9 Oct 2023 04:21:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21B1641774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696825312;
	bh=y5ED/FMhAo695Ymc28ULb6wp0LYzuW46R1JsDtR0wn0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bO9nUeHWQBe4t6tTk46IZzzByQbXcauyGwYF38ayzn4ZO4uqo2z33iNNC2Jo5sITp
	 v51qLUd4u0/lTRD8DJlV7STwBtssY4PW4B2s1Ob8ZtfUIZhx9pynRmgb+i12OgH/Ne
	 ESofWoR5nLMCm2gt1dVIEqsqcBIeABq/reyiGXpheRi3fd+shYRzIdEA29CZGQR620
	 /Bxw0rWLgekptWQNlSeqdOeoEZwo5OqZ1S+UgD7a+zUBtJnj4beuun11RZOM1zgKr4
	 smVAqgBzn6MeY4bhiAJgGkfA6IBexGsQJVs3Qa+8n5mR/+1p8cy23CtXirv2LVBIsY
	 vvjeMe8JagEVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dYzMdWdLYf7B; Mon,  9 Oct 2023 04:21:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FA454176F;
	Mon,  9 Oct 2023 04:21:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FA454176F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 07AF71BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 04:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D4AB3612BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 04:21:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4AB3612BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NNWFejaWvOm0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Oct 2023 04:21:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D32A60DCA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 04:21:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D32A60DCA
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="387930909"
X-IronPort-AV: E=Sophos;i="6.03,209,1694761200"; d="scan'208";a="387930909"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2023 21:21:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="926638691"
X-IronPort-AV: E=Sophos;i="6.03,209,1694761200"; d="scan'208";a="926638691"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2023 21:21:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 8 Oct 2023 21:21:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 8 Oct 2023 21:21:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 8 Oct 2023 21:21:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WnWjK9hdI+sa67A4t+PGW/vveE0DGWExoKX+90MRD9/zzLYAlCX4cYNzTAjhGZiineNoBPPM8him8L2j6A4XErpK1vtEVOE41lnIra/PuZPsRrqDrA1wsK48HvaKcTljOsgjhkG4L40KcbKEuqw1R+tNlSzEYpvP1p4As9f1ETHLbXz6KkLSQX9fUlQ9wziBtZQQvP+iz+vSrPCVKpKP+iiyNwr4ZSXy9ZLf+f4e09Mupw81cNxkJLRywBpXIXMOrdY83ukRMl3L/0cratQc2hwYpFPB4DqFNg34qrP0NaNrk6VVR8FneOydytDFymJ4yP8JB9bagRsWcoIE9lgiOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cmFGIRmAxXcx5grMMvKDhJDBR229cML4yl9Gxb14UX4=;
 b=of7nO7V55FfnbSCgDA3uubRhcrOhkUTMH7TD2USfDFUIbcQNmGDz4A/+5USCn64ews4dlrtSXPtXVaQAu/Br7n4DvqW6kuga3sHx/f2iZzPIo7io/VQn1R478W64Xf9UiEo6+DelYmyjt1sBOBc7vWcz1LvP2Kz13CdJchOkpH+UF5hEXr05autMnbnBBa9nlmxRixKIe7zxW9PhcBmCGgE51ngRMtRQWhUUPD3Bjfcwyp+/k0LGiRGfc8j+qsajSBu0pxTWaZ09rkAWAdDMXVXCbxBqbWjkvhgnn1m1mjbyDfJJOEJhFWEaIOWvZqZQaGikxzMjbQ/8hd6yIV0fxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SN7PR11MB7091.namprd11.prod.outlook.com (2603:10b6:806:29a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Mon, 9 Oct
 2023 04:21:18 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6838.040; Mon, 9 Oct 2023
 04:21:18 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix safe mode when DDP
 is missing
Thread-Index: AQHZ9eq52pMI+GYrC0Sj3IyrtqQsXrBA49nQ
Date: Mon, 9 Oct 2023 04:21:17 +0000
Message-ID: <BL0PR11MB312259DA25F798D89CEE783ABDCEA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231003111745.77267-1-jan.sokolowski@intel.com>
In-Reply-To: <20231003111745.77267-1-jan.sokolowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SN7PR11MB7091:EE_
x-ms-office365-filtering-correlation-id: 49137987-fed6-46b0-94bc-08dbc87f2ec4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZOwtybEXsOr9tqQ0OtHuGyhhze0Uvba6w4v7nA14PC7vGFh9XcByb0K7rXdx1ecz2S4psDV1aMe2dX3TaI8jaWvxQAJIWdbGHgd8C3HypU3JoP8Rg2/m6tx9PXThT1eQqFhjPCdZfGa2WpyyK3oIkXnuoMfgjDNl+64KKv+K75GC2WB6PeB7JtQrMH6gnKZe22EOUR8lZyMsJ/RuKzhMfI0JcfDNWELbJtLzLt/zopO+tJ35xQ5+9Ei5KIqbl1jX4pRHVuCgIfTIeUp+GcEvZ64yRkRy43rO3N8ki38KlLbKZP04aNPr1S2JSR7wD6MOCl+oZSI+PHzEbLxquNq+tRlW6kof/uz7hRdJHo3s/+xJkFwmEE4Ni0cJQK2uuwbf5G3F/YZaI3Wlmx/nMrW2pyAVVDAMzPiGYoeN6VeKIQir5ICn0SDczfJfe8N5nHQj+i08ZkKU2r+h4xiy+ZkUPQPHtWZYnb2brjMy50P+HJiLqPpmuw7Dxe7mp72k7Wkj8xFsEqRwum9WC+n9oMcZihidMOHHohPJ80t3u2fhbu+fEwumXptNJP67TCiCNOihNY3BMZys4Tw+U2EjNnRhs+akmtHqrhqhmYfooVPzi1E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(366004)(346002)(39860400002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(122000001)(38100700002)(38070700005)(82960400001)(86362001)(33656002)(55016003)(2906002)(9686003)(478600001)(4744005)(41300700001)(52536014)(8936002)(5660300002)(4326008)(8676002)(7696005)(71200400001)(53546011)(6506007)(83380400001)(107886003)(66556008)(66476007)(316002)(64756008)(76116006)(54906003)(66446008)(110136005)(66946007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qQaep3113ErRpvjlnLn6L9Dsh8HqRFC4vlQx0bH92GLqbrFd9G8ClSDVkFwD?=
 =?us-ascii?Q?X5EigyGXCcYiAq16RZ2YHrXapFdlIxj2PgEhk4FVSMNpAD0ARaVZyUr0YgkY?=
 =?us-ascii?Q?qAVJTEYKlcB91tm8NEc9OzyU15kQ9fnPFa94qrbQW4j6tMx3B91eoDZiMXSS?=
 =?us-ascii?Q?h3C7TidAiJIUU8IDkdfd8Ikz6ri20RpPmsCU7DfppTpBDR32XMP2URTPZ4B6?=
 =?us-ascii?Q?LS2d9FvBdPYFRdaKK1uMkAYcItLKmMDQbcAsO6jdgzuJFWLZ7JSAJZxMyVnv?=
 =?us-ascii?Q?m9fYSgykl/LepXTPR4TcE1tIwJyUpu4UZM+ff4T0NLnHFM5s+qhwCVtMy0oL?=
 =?us-ascii?Q?/QJmHuzIEq/DXBkj8rDDeUM090TWGCZGNu4a2QfNx9eTxLUneGf311OuMWdt?=
 =?us-ascii?Q?pYmEgr8Aq5p2hE3BUAhqsJYaisTxWu29NxlfAzCRyrj8ZOJjWc7bmHOYvsDS?=
 =?us-ascii?Q?oAwjpDZ3pL7eLn5u+y7EssN55qZ/10aYtOnb62GDFFoB29ByGM/LRUgfZH3s?=
 =?us-ascii?Q?9G6h0ENlx1VgpU1FEvCHnlxI0S3yuF7uR9LINB5iUBaZlxFr9+BfC5nTXQ6q?=
 =?us-ascii?Q?2WU8HaU2nVnul6UlJS1Jo96ddrrXNylQBz2zbPscReKErVw0xVCqtfZocpM7?=
 =?us-ascii?Q?nvYx19r2NnELOoXwA0RxQSKEj2pZ+eywuUu4tO270kU/38sIIi2hRyNeHmEd?=
 =?us-ascii?Q?Bejvox5802snUV0TLtjXMHke5A8iMfTo/9m47hqjvAKPt4eXtZIa0smCM16q?=
 =?us-ascii?Q?VClkdcS0Z1KaAPjXOn1q/DdxPBk8+E1CG3jGR1w3yk+Q25ZAoS1I43d3rUfi?=
 =?us-ascii?Q?6yI8hRr56qX8MOJcABpg3wKlVfeHyDwrZmjG2dXn8NmZRh8+/8DixmIqWFHk?=
 =?us-ascii?Q?RFhjTDZHHHQ35u3RE4COp/CwxmdBFH1bT40NEcqYQKJ1UZi7bvC/ED9zCD4/?=
 =?us-ascii?Q?ZmG3mnJBXjDMOZM03fsravbxTqbovgl5wPLxmA4v1D5nGYAtPez63surkN7t?=
 =?us-ascii?Q?jRQfHZVhXxqBi8OKJ5i17slhvGgEf98REEwIs743DTfrKMh+J7ypOAfrgOuA?=
 =?us-ascii?Q?tn50V7X9AqGnCV5caMa5Ukt+lkWSFURFSEXN9FO4bdIU/hUfPBcvn1qluvcC?=
 =?us-ascii?Q?R3xadNsQaT6bwLSmPi4j9v9sM0IwvLzOSDbdIdXLO4ICt5aOw/FLLGwAHsJ8?=
 =?us-ascii?Q?NXq67JvoAEebYT4aLh6LiTDwgbIeWFspNU/AJ45Hv3Q3NxXJngFw/6VkHNzw?=
 =?us-ascii?Q?v6CTlFRpOd4upsAAmWIiwFl+ruptn4mnA2g1ydGZGjTXOL/S/9G3BW6Ih0gO?=
 =?us-ascii?Q?Tzb7k8JFHD+O+wLRyWFeLd3vdAvJTUAE76gCivOmFkz7zyg/iaTT+c9/koGW?=
 =?us-ascii?Q?fDA2HFRzJyD/o9pQkihXuEB474nNVyD+eNpHnRPs2VVgiHxqzl0PTAWBO9+8?=
 =?us-ascii?Q?Q/n6jvmWkkpoS0s8tVb7q+vL4n7HvaLktsaxuNDELxGRyhqXMVovO6mL9531?=
 =?us-ascii?Q?lPrkqiNudLASIek+e4vCWDDX0lH3RX2GTk4LUdUpo41efRnTSf3usCBTVajG?=
 =?us-ascii?Q?wSf08RF68lz9RuONHjpotxvqNBy6MxDvk9ZXOMeaI758fsj1sUqZ09Bxr9tZ?=
 =?us-ascii?Q?+w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49137987-fed6-46b0-94bc-08dbc87f2ec4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2023 04:21:17.4052 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ML04W8LYshbD6QDfOqzw3rCjLmoOKd7R2SZ4B3y2gv5IZYDwkxbKl1+lkjBQ5u2AVG8ahqOn0l0aIqpcg03ov2mORbg6/5ANMnoC8r1NyqeWUYsvr7Q+VGVt9ngvJObp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7091
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696825301; x=1728361301;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NkAXfinHqfvQb9Us56wqsRqbY516kW4tQqSKL5iWU8A=;
 b=MJZY3to+ILaIhIcTyOyu3MOr+DCt7po7h6nuM0uzZ7DlTlxvJRh3PwA2
 khswU81ltvhm9Uj6RUe7/CGtV5Vqsh5lIlnkOhlOIxoLSSaMgitWKBlu1
 VEfMTQdxoS5csZhpV1//KmofC3az+czDBsaIdixN8sR6rbqGynGPzwaS9
 HZtjjFCgJYH3yVv/pBCtlHkJ3Xnz9PtQdrN98uAKuNlB0HmpRYfiTD88e
 iDGw97683DqGutaRjjFuFLQpJrtljsL6eI1O2aCl01R8IKoD5c4Crg3XM
 HvQDkIIUSdwBTYvd2XDxoHrWTSsVmgjBWOf9tRRRy3RpOZ9DC6DsXYbd4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MJZY3to+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix safe mode when
 DDP is missing
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
Cc: "Pacuszka, MateuszX" <mateuszx.pacuszka@intel.com>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jan Sokolowski
> Sent: Tuesday, October 3, 2023 4:48 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Pacuszka, MateuszX <mateuszx.pacuszka@intel.com>; Sokolowski, Jan <jan.sokolowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix safe mode when DDP is missing
>
> From: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
>
> One thing is broken in the safe mode, that is
> ice_deinit_features() is being executed even
> that ice_init_features() was not causing stack
> trace during pci_unregister_driver().
>
> Add check on the top of the function.
>
> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>  1 file changed, 3 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
