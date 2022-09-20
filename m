Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1875BE3C8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Sep 2022 12:53:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BC6041578;
	Tue, 20 Sep 2022 10:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BC6041578
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663671200;
	bh=2KbPm4J9vtuUuy9iezC3v5f/YFsuwCgggVufOJUNcjY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xgx0eJrhkf+3Jb8V2275mh03KaUQpU1eOsqEy8VpoYdO74VJNxtRqugT6IKLDavnA
	 GT6NkcJO9UNYjHMV6qsfQxTXuGmh/KR9jlruxSCcihcgZfuP4bGjfEZJBtcUsNv2xf
	 t/w6yXTCe3b1zk/HZqyTxiEvOwhLnfLfhStPPZgk/qhBfLspEjEr7c9mmkFWO4BCen
	 gEePo7wo71YoHvWPMwE0staQgWTSKTc5nS8eKahR3ZMY5CKt0Joy6RN/YjJuDNfI0D
	 dnTdG0WJyziMAn3NJPMGfxx4jE6UHIl3L/w89WLW4Y2duJToKYmboTWK5q0LMX7ROb
	 SKqtZq1Q5xU4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7GmwoOeg5Xk; Tue, 20 Sep 2022 10:53:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 292F5408ED;
	Tue, 20 Sep 2022 10:53:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 292F5408ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F01621BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 10:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA68260E26
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 10:53:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA68260E26
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JswrnsMSa36A for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Sep 2022 10:53:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBAD460E03
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CBAD460E03
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 10:53:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="301039275"
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="301039275"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 03:53:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="681259127"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 20 Sep 2022 03:53:11 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 03:53:11 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 03:53:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 03:53:11 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 03:53:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rgu4ct/wm0MypVKud5rQo+ceSQt/asnTE0xAe/7vDNeGeC9uYy4zHl3eLoG7ooFbt+hWFf3p+ZI6nlkmAfak6PRAW0w4E5GZeJu4FxQ3Cq9KSqNctzKWNHF1dzp+V5xHSSI9pnjI69RE9+w/55btZsiPB6HNS7blkT6LVY+9YXRsflovAK2mhRWPsdrK1AfO+ghQiWP391+Km5ZCbQ1xFYD4yrIyOHQv6XjDfrokYlbclAPOh/Ng60nz7dw791K8jSScNgjTYjaZWsJ9z5aLBUZ5UM1PBu/YpHJ94hhMzSv29v3nz3FAFzlmd3KKwQ8tCjfaww21m4r3D1vEJF0A2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mtUnOIfV1SFPjWOcwFKS8m3aHU1X657SQsR8CkZSzEM=;
 b=mHY4coOBWvrMcx8DJemvznHaWC1005SvNeyr7WkoB8IqGmOTT8gdkxAj19m18s7vCsKypA5B4+9VCPDvcvPT9Jwfm3PhM3GoajSlFITQRqkjnyCzJv/5ZFhT1mQIHNf76Xg/bJxyzyugblS+VaxRPz/3IvNPGk4cOJM8gbvGbSBDo3HK3ROaVfSJlKj1cZDkOXUSB9FTr08I5+MyHrWb1EnAQ4TjOw0x4bt2jntsllTgnxGRLP1v0UY4vCymfT6RMmY2rJjj0zksvqCi1g05wpmBlFTgu4+3CMbM3HQBVcGEYSbGdx5TVNzpwG5+grogD/LgKONkidr0ujXY/0DhBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SN7PR11MB6851.namprd11.prod.outlook.com (2603:10b6:806:2a3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.19; Tue, 20 Sep
 2022 10:53:09 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d%7]) with mapi id 15.20.5632.021; Tue, 20 Sep 2022
 10:53:09 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Merge pin initialization
 of E810 and E810T adapters
Thread-Index: AQHYw2m7HSb/S/0Wmk6RTupgw2x0Z63oN1fA
Date: Tue, 20 Sep 2022 10:53:09 +0000
Message-ID: <BYAPR11MB3367CCA0CB6A59F0D74DED4AFC4C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220908095852.30389-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20220908095852.30389-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SN7PR11MB6851:EE_
x-ms-office365-filtering-correlation-id: f6040a95-16ea-4ce3-0a27-08da9af64e41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ET53DNmw9R3dfcjH/k/rh6Y0oSeQSfLeo8PMOYqYUZZX4WBnCFhQwC7GIeig1y93pYv50p97cUXjXQ8ICOy0Yb2+P0TnoDqxBGIuUKNwWrPGLZbVvffyuxPGP32sDfupYiw9JUL9lSsdQJSF/sn95xbrjV6rLpT4/6ce16BVSKQ5vab65Cg+MqRD7zAllAVje1pO1tLrSlEUvKxIg3DGtFquPvEJujAkFdnxx7Nb9Ev9Z6JpABUbHODELPcrKr+L3Jxm71y8nwVGQY3tiYBTZolDlcArNLnlwSpW+YBTiRFrc+wNm/HhwEejSreoSI7ltTCNZi917MohsB3mzIb7gGhPc2qwVDY+YYalqZcZKhv/YW2KaRu1/AvN+hlwZc3fcBH9a3m1FRg9lbN7ksBQlRcRKpErHI+uE3sHz5zuxlZZcDNLR5viOosPsrTy9DiQWx9KOFM65iTpp2IIMP4llvSI5Bdl3efdtUrl5V22woDU18gAKM4rbJB8K9a46tp4M0NbS3EW5o39ylxOZX95WeXkFjFIIBT0bb9dBr1CzWJLnCvV7szihiwq/tydYZ6Dk+1qniyznRMPne1pWZtUdZIIEPSYxFe000ph18AT5XJ1MGJjpFjyIfZyxxBPuZh9bhGm/vxoRk8h+Tj1CdpRl+yhKcET28I8uPkCz625gPO+4Vb80QsDuKMcCuRTOQgCSxTcLGWeoC3vEOEiGWLO01mZVDxRx6LLC3WPIhuuKsbrMGGKp4LMqDREq1CynyIWD+cFeYa+bBuW/L9a2Gw7SA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(376002)(136003)(39860400002)(451199015)(8676002)(186003)(83380400001)(38100700002)(82960400001)(86362001)(38070700005)(122000001)(52536014)(5660300002)(8936002)(41300700001)(66476007)(4744005)(66446008)(64756008)(4326008)(76116006)(66946007)(2906002)(26005)(55236004)(66556008)(71200400001)(107886003)(7696005)(9686003)(6506007)(53546011)(110136005)(478600001)(55016003)(316002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zSGr9oWDwDdHcVwPeQLRp+hCWlWDhgxVtTOZrPyveqaullCAoD+QkKyYsJOc?=
 =?us-ascii?Q?x2/ch2nVzoKgLXWeT3lkB4dgPpA7AuE7iYWt5iR7Oa3A11SC4HQXG6OBLdJx?=
 =?us-ascii?Q?FG2ZBanzecqSuyBQNnAXw9JtEJ/2rjYw0njJgaduAbPBQDRCp40GopXwihfa?=
 =?us-ascii?Q?8oywYpH0VJ8kraISyeSLkoxOWATXFMfDcgJvFriV8Y3lNK0BBX3/Oxv97U3t?=
 =?us-ascii?Q?NrQgRugfqcAvLpxydl+gQIRaX2DDk1BhfFf0xhR2yEYzP/5VWvO7kjJAuwod?=
 =?us-ascii?Q?60U2C8/jt9QoqcX0wRy6fr18j5nCWH2QOV0me4FIICnwzFmq7Zh8cQuXzid1?=
 =?us-ascii?Q?FsIAwF8v6W60YJFAGOPSY76NnFRIw2+4dXsUgaQJ4TmB+A1AZ4JB6KTeIvNv?=
 =?us-ascii?Q?meIY/OOzHWgxi9CkbQqGSOPIHtG7slnBmcdZwtflSXw4J9hXm+2hXUflqNz4?=
 =?us-ascii?Q?npNFnMrRoOKBkfT1MsEwtIrLwJlukUzGq6ertxGFwvc0+cgy14eXKAbsiRLu?=
 =?us-ascii?Q?cwiieTdXzUbNfM4JE/Cr6d6sJ8Q44mCSYMOmmfYKHlKmpyWQHELKHyYNkGQA?=
 =?us-ascii?Q?RJBEao5qSNlKZ+JIISOX1/JeCgFy6NK32xSSp/Zwta3XO1D7+I1EnH7YZL5f?=
 =?us-ascii?Q?QeUixUyJWSVm2KKl3MCAhYrOBBGnmsx3RasP9904y8vVBjgqSOB4CRqlc+sJ?=
 =?us-ascii?Q?XUqUl0LJ4vEA9VyM0R63wUU6dWKF72VoVXi18oZSmZiemFqP19xt9C+NEeQr?=
 =?us-ascii?Q?VSBuyh3CDHazmGWBJ0QLVfZ38hU6kmY0/CTZX3NowlzahhvaJ6/dt2e+/PNb?=
 =?us-ascii?Q?Q1PEXTPoiqzgfRg8YTKRnft7tAXlDAbGrKohgWgbN7GV+8H2Ci9m5ghq0L8Y?=
 =?us-ascii?Q?7aLVPCn++bMov95DVS5Kms90WM0ZzKF2WZhp/GelpOLMRP7t6e01SgoxZFJk?=
 =?us-ascii?Q?38Dg4ISOTCkI1tgJBWp8gGWhL8Mh46B3eYjSMpu9KYxWLO0S82NrPAbsxRnK?=
 =?us-ascii?Q?g+j8IV9L6qsC1SIJ8TcLi46rc23/4isZTVdUMpyFV71BdaIG76jDiuCDeOc/?=
 =?us-ascii?Q?E1jDo2G7+P4xm+dmcGLYbjahZ/+7Qja6WvPWLTPTU6FdSpQMwx7Ajae35lna?=
 =?us-ascii?Q?k3wD+QMHkV+XCQaueSbuLuBhT7r4dnvKlo0NZD3Y+MfP/1sdMZuYUNKbjN57?=
 =?us-ascii?Q?6pa7MgAFvefnDFL4MPp+FsWcIpO9ws3+uY8RXZcKdFXWsKJLaDsKwILVYORx?=
 =?us-ascii?Q?wesUPaVvUiu1sbgWHBe6TPkWqajziBMkJv+U9XeBKbsK+SYsXfyRPlBlA2a9?=
 =?us-ascii?Q?cMoDAPi09jWoUHxsRfyC3Ca0B6C7VIpPJyfjvJzMlulwdK7Mbqhr10iEHA+e?=
 =?us-ascii?Q?PcHaiOPrT+Z4vouZ9MOMLl/32MdMkWOahtptqHRzlb0AtOe2dZokTtqLO9Yq?=
 =?us-ascii?Q?m7S6tf+KY3JqyTOlJMeneGdw+LxBmRYno8KjyejkhHl6x2ySSR0iQO33Q4Ze?=
 =?us-ascii?Q?ABLXN0uc6aHuKGW3BynjpURbbDMcp2RL7Ax3B/+Xywq06h/XUj5+q7UH12/n?=
 =?us-ascii?Q?YfmRKPgyonXd/Cuw6F5sk7EZ1EbNnugU+QqALZuq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6040a95-16ea-4ce3-0a27-08da9af64e41
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2022 10:53:09.1707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gsmQ8ZRFBdeWt47IXUG/qyHKE7/g3MktYTry7FGnKb3wbPLJnhJXP2VS6GDMPobCU/qlr98Ev/LlC8HCRunrIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6851
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663671192; x=1695207192;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lJGxRNnzMw/HEoDN7aqpqrgozdSD+VteDjQF4jQIrUM=;
 b=B+QWrbcQ/giIqFqLrFDu9jOBDRq2eR3+lYzaxhiBldQOlXLz1U4FO0KO
 gqX18H58ZwLcYhxYEXJKmZObpthNI9UJe0kC4pQyeP4BDQp8x0OMgoW0E
 m0xudkw9foAeudyhqR2BzaxQYNHri2Ovk0SblMihkZ+gSW2GvNLl/ValB
 3rlp63iX/gLEF6zK2XSE+uqe414cO5K0wpgAaLYJcUunFf3nGBcRA13xf
 tY3ThRdLhl6ylaEads9P9gXaSG2Vi2ayJdyqjHjRIjwdPoYMT0vQJkcny
 w6UvEie6gXyIMpUsqa3S543lzTjE41Tb/2VyzQcAm75ma8PdO7fk1MrZq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B+QWrbcQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Merge pin
 initialization of E810 and E810T adapters
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
Cc: Maciej Machnikowski <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arkadiusz Kubalewski
> Sent: Thursday, September 8, 2022 3:29 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Maciej Machnikowski <maciej.machnikowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Merge pin initialization of
> E810 and E810T adapters
> 
> Remove separate function initializing pins for E810T-based adapters and
> initialize pins based on feature bits.
> 
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 47 +++++-------------------
> drivers/net/ethernet/intel/ice/ice_ptp.h |  4 +-
>  2 files changed, 12 insertions(+), 39 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
