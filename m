Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A918A65C028
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 13:48:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABD7F60F6D;
	Tue,  3 Jan 2023 12:48:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABD7F60F6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672750089;
	bh=mlaH8twaK7Ymc0DELOqk9xWl7mTdPbLo4YHot77ioGo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uNkZ2KRWYGwuPzvbeodiAUEmxdzncHxf51ZRBS1PMIUafTynwBa1RV1ZqZ5B46UtA
	 1sulVgPExrYjRLIineRuzwQgRVqTpma9uoPQgMyXFZm4jOQXAl3sG17OdPwPACnWT9
	 jlOg8Dy3gUREGtzYckavUc7+6ITAOut0njom2gToG0VPblZF6miYmL6nExZkTIoiSK
	 iFPto3SPpHJ4OdVJk+yNzmOpTFzjux1tIV+ZOqe5z4CwhXyr0QrxBYsKuRVkRQPwOW
	 spRUreq98zscruGV983rBCRcovd1OF/6yyKiQhSBmBb7J0p5ddgwiYOVNQK9HBGf2/
	 fdeY9/WAALw9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zk4BR4F2t7fn; Tue,  3 Jan 2023 12:48:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B40C460F66;
	Tue,  3 Jan 2023 12:48:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B40C460F66
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0823C1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:48:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5DAE60F66
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:48:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5DAE60F66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eRgVn-PzjCWd for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 12:48:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E690860F46
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E690860F46
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 12:48:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="309421411"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="309421411"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 04:48:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="723252795"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="723252795"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jan 2023 04:48:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 04:48:00 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 04:48:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 04:48:00 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 04:48:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JZGf/DqDeRMbUPVM+Kvoq9aoboH2KdwWh3/tWbJbWkx8MgIBtSlGcU3xzKhf50Pw53iIVtfWTiq2DbAeoD6cm4rNPr4Dmxu5mflSo/L4aqlHaaLOEOhDCLbEFv4mXvcf35eN5ECVPxtl37Sj4NieXd8utteQ7JD57xUDZ8w8x6wO4OkaflP8wSABDMweQNJF4hWq/z3bGfgL9GDbf9wBnCEF72avRH74tO3gXVBaa++iZNZa7KhRzAlccJ0TEI2Nto/3jb5oGb+ge8Rj6UABKbBm7xnSbQ0GIYOkmK8fKk/8Mi/HPkHm262xXGG3Ot+E3A3E5Mv2UZZtMQrnCZ3xgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T/TbQw1hvDW9vJoKkjkPYFVIZVa7Rod1uBlQ2P2agaA=;
 b=chZKjE7mZ6dA0pOZHIabaBsx1RLkT+2dVkoP8s5nqXYY8szTJsx8xlcO+1y4cJm07ps/FHG1ZifLHCxgUKP/2QeEfYGF8c5jnsGM6/dNRVyxMF52OmLafIRIqBB/wgy4CzKw89VMWy66G9g9vn5l84r/4iHGR0XsjZqdDFhQyWicuf5Lg8CZnbN763xUuxBEUv7gPBm5mnVTu7ddOr2Ba8hT4Kb98MVVYVUynHx4TlfYFxPApvvvbnQxAIXEfL6XhugU8BrVFAbhksZFr8BSDetrt1RgwlUriCYxlbPRuCy/h0D+Zb3wFi+zpDfASrI5vUk7j23ggjDOpHiK1M1GhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 12:47:58 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 12:47:58 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 2/5] ice: enable devlink to
 check FW logging status
Thread-Index: AQHZEdWHPJTTR0nmjUquhSdiPBWWoK6Mv2Fg
Date: Tue, 3 Jan 2023 12:47:58 +0000
Message-ID: <BYAPR11MB3367AA6F802B6F80D915A5FAFCF49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221217050714.314-1-paul.m.stillwell.jr@intel.com>
 <20221217050714.314-3-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20221217050714.314-3-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ1PR11MB6204:EE_
x-ms-office365-filtering-correlation-id: 08fad03c-42f7-46ec-6798-08daed88be13
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yB35RQPEiCIF7U9BJKzwmaAZzx6wCCx6P0jkjfnQYSosn55GSbNp91k4QrXgwKV9eSuGlbZFmISoEDgI/mIQohYKkVkvWL2wG3fktyo3E5TdKksak/lH0fk69DkM/a6tbzpDKM1HOFq1mg1+LReLevbKpnH0S9J4ZCmAm71H2RhnsZoySMfQAAnWAxToCGRHoc21Ao4fg0k5X7JZ3pm+PgO1DFUShxVCOzX8hoyvoceltat9MgU3Hyh1iC87wVpAVDbUV8J4aVsWV9SRkC06dpFrjZyPcC4kLjOTI+vjxloFSw/k3YED1GJyA/jCjMwgSy4ftkVA/HH9K6/Y2iEQAX9ub7WgQvwvCe7f8Kafh5xGl8HNOjB215yKLnZFfDUCrCLPT/gQlHPuQSg+hoNkUrEjUGEyFLi9ntnzQCYmhHP07ofDfwYXmTyqznbEnOUKG0wI9L4SNyToWD9ZC8bCI1rUVkry9ukKYBioxOumWQafcyWhqZt+RbcHhM41ofTTxr0o6yAD9OoZCywAvQo03t+oUECnIIuI9p+RBIImf78GIbChWg3jnsw/u6oO9Reg/UtAMRWz2zVjv+iDq3Bt0fQiUyIfdRJ3gxYqL+CU/R0KLfuuYFJJM6Fp4lFQbIzSrEEyrBtsq20UQBf4gluOv2O1HnAE83P99FcgxmmgcW6orlIllBZVrgusRXDfs6WNB/k6Aa/amzpSNELbTe02dFQqekIb09CCfogdWtgklec=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(396003)(346002)(136003)(39860400002)(451199015)(38070700005)(53546011)(76116006)(64756008)(66556008)(66446008)(66476007)(66946007)(7696005)(6506007)(41300700001)(8676002)(316002)(2906002)(86362001)(26005)(186003)(83380400001)(9686003)(478600001)(82960400001)(110136005)(122000001)(52536014)(38100700002)(33656002)(8936002)(5660300002)(55016003)(71200400001)(22166006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1Yq/RNvOUp+POeWl+ms5w574eToUXWDDDKo4mbdgQueKuY3wf8ZF1oa4A1Nq?=
 =?us-ascii?Q?k3usLJtwQ1lyS5JcYWSO7SmtJ5NQA/ECt5aVdJiYl+roOSEsQja6aOIceA+t?=
 =?us-ascii?Q?4J1D6aLUQJBWYeZ3B4LQZvNRC58WoRaPvtmhY6AarZRj1mzqYxEjzrwIi+ux?=
 =?us-ascii?Q?XrsW+h62lYBVjGa+bxxrh18qbTXSdVjzHXdXVJtMvTtafwDlQGnt64PuKk1l?=
 =?us-ascii?Q?iF2tcVBUQe+tPnLQgQklwA9kbTzN0fkrJM3+40ecgpvMYE5+paGH1uCHriCz?=
 =?us-ascii?Q?X6HOAdOpMHGUK+vk2JXzxhz4nWR6XO5IPWK/Cc5mMXL0WsZPybnCASBjyPE4?=
 =?us-ascii?Q?A+ZpgiqfSIkn8auMatKOCWqklDvpQhoNfJrh06Ez9W1+vbV6x8OTD8rd+hgv?=
 =?us-ascii?Q?lrJ4Hiw6yKofFX0GehBq2eJbi4f65tQh6ItRnfHSUMRNXPWmVPG3bZ+gWmdQ?=
 =?us-ascii?Q?pddAWBWkYvOTBbsLZ0dmCXyEKizYG6+HTQpBctb/XFPJ7Pct7gGPewdPE24P?=
 =?us-ascii?Q?p3zQ2lLV7+KgkTQOLHodju7QJ9UUYRLllh3yYm1JgLLTI+KpVBhYCD9XaxL0?=
 =?us-ascii?Q?rLn6doMPQr6gPdSEn7Omjju+DAvPHgNGBJ96a+bxiv2lJkfvTrAkmHPMzjAK?=
 =?us-ascii?Q?gERph1a0wLhT2R8tVoxYNJuSKZjLxs84vjsRCnjQqEuf72fY6ZGpHVsxhbhg?=
 =?us-ascii?Q?hIza59FCnZjUZM8+YDpIpmdMiscl7d1aYscdu8gyeAujjjLGaS4uGykfzcvA?=
 =?us-ascii?Q?sED9d6Queyy0wX+ICMNFglDu13tVTAuuNrkWh9E3JBPhzQNw5nBgc0prlhVr?=
 =?us-ascii?Q?DoxKCOAqgK5E3Bie8Yr8tUCOdjP150Jg3HceJzWzjFz4Coch5rXcLbmgyp/o?=
 =?us-ascii?Q?fnHqJ3PiXMWuTsiDf+NmhB3SrBUA+js17mg+wEzcvBby1LPq4WuCoaKp41L9?=
 =?us-ascii?Q?SNC2Q1/zqSptGN+9WG9/z8mX+F3hV3vkSvqs6LnIbSDtsbeX2E59E9WzOn3E?=
 =?us-ascii?Q?8Izg79gx1VD6GZqVAVPbqPmZ2z/Xg3V4dRhZywuwiFp43aaBXmf/fuAP9jE4?=
 =?us-ascii?Q?yHpk/YZC88qW8XMeNGQgqml6+hOl63NWWZtIm9YZml9mkdwUdN1xq/ela495?=
 =?us-ascii?Q?Ol8whnAK+gEeJCfhOTUDkfTpSVanWUXZblxGmiND5btD4WZtHaIH2kbAaT0P?=
 =?us-ascii?Q?jq9tjKPSUnAw5VM1JcgBz29aijU7dNtY0uh2HoKDmlDG+S67FsO1m0LpyUqB?=
 =?us-ascii?Q?ABKnbLIo9XE18aiRFwlJx5sdNbsrb2PtfJBsMKyasiE3BqXW+dE6JPBjDgnF?=
 =?us-ascii?Q?SXyPmnAC8ffEPccRJ52wPGqb3kXL7Kz4S7rQdZZaxiVoavaw7Nb/F2G0+gGC?=
 =?us-ascii?Q?hyfrEw2dXq/yxdjVzh59OwyB2luMZ60qH0Ec/puVvhlHiQ7cgUI5ufGXGxE+?=
 =?us-ascii?Q?4KzgmTONG6mlZllZSuZuw3bEc0kioyR402sBfAR2iUjLYM8rHKewrkgb4GhI?=
 =?us-ascii?Q?mptIm2ZxCV5RoKkCBZTYHJXOQfqZubNSdLDy+BAMjrpNiJXSnLt040fcc5FR?=
 =?us-ascii?Q?j3NDtPGn9JYkiMaJtmlUTxZF2pI9hyBT8ecHGg4J?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08fad03c-42f7-46ec-6798-08daed88be13
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2023 12:47:58.6311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jOwvyTV+LYHRQ1DgpCD7vOhGWpuBNsnBa+ZzdeKFQCP/b5dwQjlsCj8/xVmuifQd9/+BMPFbf1+7oqBOtKbC8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6204
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672750082; x=1704286082;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=66j+SSuvvMXU/u18G3Co5BUx76BCEoTb9LPkYlwfCIM=;
 b=euejN6Do4FJYsBqcoLO+rB5tOsymAcVxvbh7Xp8cQcsyG+ri8i537EK7
 3l0rWFDLa6wqFytgD0TbGBIlZUH5LeH/LFqPpb/FAjHsQLodqOOxgwI1N
 mBW5pfeVGKtiRgAk0sXgHyS6a6uOB83Hvl739yXsIzs6sbDpSUWEmRnbw
 kSrU2sK2MlHzf0B95VGw+KU8eqpv+J5itsTmSL5TIrWtAKYa63zC61jhr
 WTI81d4uJla2SJISbT6ctUs1QbGhWQtO0oeVLhAPDSzLqduAAkWH3f8b+
 6zwk0vXPh++j4GdOvMeLA4ylat9WaXt9yOzI2b7j6TfcNswPfyDBtubE6
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=euejN6Do
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/5] ice: enable devlink
 to check FW logging status
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Paul M Stillwell Jr
> Sent: Saturday, December 17, 2022 10:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v4 2/5] ice: enable devlink to
> check FW logging status
> 
> Users want the ability to debug FW issues by retrieving the FW logs from the
> E8xx devices. Enable devlink to query the driver to see if the NVM image
> allows FW logging and to see if FW logging is currently running. The set
> command is not supported at this time.
> 
> This is the beginning of the v2 for FW logging.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
>     pick bfdfb2dc6192 ice: add ability to query/set FW log level and resolution
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   3 +-
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  81 ++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  73 ++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 118 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |  52 ++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>  7 files changed, 331 insertions(+), 2 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_fwlog.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
