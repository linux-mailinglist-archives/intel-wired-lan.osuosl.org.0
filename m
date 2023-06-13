Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F32472DED4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 12:14:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E37464158B;
	Tue, 13 Jun 2023 10:14:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E37464158B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686651282;
	bh=Bi3SEkRvSepGY/GorTD7zDT+EUJ8cp88uYrd5Q+BIA4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m4b21IoJZLtWfTQNfLe5DZRazNBdOLGK3FFOBmcCpfN2jVQKwkEEFdfoq3TObpjzh
	 FYEmdI/p09GUhBGmrtG8zsEoeH5GDfzBKhw9syp32eL+kxfeJoL1OjGXdZbZIzKIfr
	 scuGy98ntRSAlmkEyLNeLID3Gvud80ri/yREOXciOPQ91atcnpMfOzblMlZpqDT/jy
	 B3ubQ8JULqCkt2HYlKx2TD0FrOxs/BAETrbpGpMCE+jGkmETdZoERWsd/s3Ij/lfFP
	 smkonaQ0KaxweCJr6YvFb5jIFrVV21Gbf8poOeyxH+ui2ebLWe9vq/CzIFrDPYVfa+
	 94G/fbAfd5sMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tAq-VTbpF8vf; Tue, 13 Jun 2023 10:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD67A40492;
	Tue, 13 Jun 2023 10:14:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD67A40492
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C167B1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94B69409F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94B69409F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6vAKKrPsGvrr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 10:14:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18C7B40591
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18C7B40591
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="421879138"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="421879138"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 03:14:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="688972557"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="688972557"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 13 Jun 2023 03:14:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 03:14:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 03:14:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 03:14:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 03:14:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P3x9voh2exhrs+yJCa6wQh0cbR19LTWzNJODFw1A2r3Q58gs2tQigMAPMDT1iJtInk7QfpVnuFLrh/1gBNaGZx3PU01seQhFUonE32GfCq9Ie6bat2yoFLZKxO67Zn30NdLWayekUEbCzm54828i9iJ+vtiT5COAhX3ocFzfo0ekPK157tWfrXuZb/LWjNYw4Z527gor+a7iFOEcy9c9PXO+PmEICkMdy5ckug5gR5zU0vWXdYI9WJ+Ta3J+vmGvfWtSJVRBr0AHpNpMtDuohSqnqT+uFKsRPeha6gCPRbMWY9WwiOE5HZWNIgK6Cpzk7fjuaRza2Ld54crmRS3TpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hDsx25iEpVyrgw/4PoFyv0f15nfq9UxJ/HYh8DyUhv0=;
 b=DVWC1+G1oln4kL+ADswS0Tnk5ZjBNjJKBmMzMHnemymN93cthpG04tHSdsZzFofkSWCl7uj+rpYJTwM2qA89yEOaZ6qkTdsJ1hqCUX6yDB5NqWsDOEy/ffxMoF4MPbF4U7GwttNy2ywslcFxHXct3paNcDcWuG0eWpwhvjNkF+mCOfxXk0tyt2eDSpCCV75TefMGTMFUMeriLsHfrDlE9jmm7I6tuHY5Rx39JiTzughqZkf17Vj5/XkcdbOdSgiELgRSI9h4vVrh9b6RtZXjFG86ejn/rCfRJa6fUXN/4dx/zpD5zKTzs8+00rgjWIVhBw0n406Gsuh0fzJ1XUGCjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BN9PR11MB5465.namprd11.prod.outlook.com (2603:10b6:408:11e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Tue, 13 Jun
 2023 10:14:15 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6455.043; Tue, 13 Jun 2023
 10:14:14 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx
 mode change in switchdev mode
Thread-Index: AQHZjjqL1byktwjS6ku6SpG5AwQXQK+IosQg
Date: Tue, 13 Jun 2023 10:14:14 +0000
Message-ID: <PH0PR11MB5013A7BA374D3F2A23C25E919655A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-3-wojciech.drewek@intel.com>
In-Reply-To: <20230524122121.15012-3-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|BN9PR11MB5465:EE_
x-ms-office365-filtering-correlation-id: fd0c6fd8-a18f-4ed4-1802-08db6bf6f0c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QOjUdZeyTvi9T9dDceiDeYaq8poF3Mz5Z8Z8R2ZGK3SnvyKIS5GLRZyE0LjT1DPZc280jP0kLwFMKrtSCwiJ+qC9VVeeU4OpFTjiHHPBr/Te/TnArMK1VgdxQDwqTi7bq4x05piHx2AQYnhqe9NF6o5LW96BixYkfdQDwoJhWSi57OFo300gHQN/m3pjVgxV5nSeKXOwvDlVQjqgtI+mUUDnTcpkJsU7YRjwOCTyJpFKOncl/WhLIKm3VXTiIaJxUaM1XWzERZB3nXOyPI/Ug6J2goIGNoVW+d2LeabTMAQLM5Rj9T5K/rErSqgrxQL6o4r4KSh1WOX7Zzo7ZgMYt+uDTn11cvk7rDcoD62dTig6JZ05GiweiKQxQxHB5cD5zpjAiarvg5GyC4zg2Wkmr1WeXvCImuZd1WuHgDTLBvb2l1flqPcIO5/W9emHBlZnug94ILOK4mbtOLaC+OU5hu0JqQooL6VLmJ1lxpZENvoOvfiLveL4zo1oSQQWSSZIR4wyE33JkI+m0VHmSlQ4aLcbxXTG1eHuLOScIEqntAcfZIKdrresEIh+NqAxtFXh7QGoyVqL6i/gSmPFalAlkhTjKuabdV5IRZkc07p/ViuGLn+4drpgCipDuNbQmrlv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(396003)(39860400002)(136003)(366004)(451199021)(7696005)(316002)(41300700001)(9686003)(6506007)(186003)(2906002)(38070700005)(26005)(86362001)(53546011)(33656002)(122000001)(82960400001)(55016003)(38100700002)(83380400001)(8676002)(52536014)(5660300002)(8936002)(76116006)(66476007)(66946007)(66556008)(478600001)(54906003)(110136005)(4326008)(71200400001)(66446008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3I2/5AxerMovd97gpQ3K8Ng22q7SFXH5QzogPdi0oqsAFm0uj5oe1/QdgD+G?=
 =?us-ascii?Q?JGoV5LXNdZgtKK3eYlxqa0pY2rfM4FL42FH+SXWB9XevoCV6149Ep1jQ8NdA?=
 =?us-ascii?Q?lS0zvda0nXnJ5+bf4zysPgHni3Ue9WfO75YpQBaY8yiLYVAC/WcdRIfY5etW?=
 =?us-ascii?Q?PMACa9jUb/4gMd3kcfPrI72nYCZwiLyTEDVvqclBJP8IoGVEb/0adBRME56V?=
 =?us-ascii?Q?+AcpeGR2Xwc/4CQ09V1bTj0RlG7fwMAFurCQ/8bMYFJFjwFGELS+Yy6rKhVN?=
 =?us-ascii?Q?3WkgT8nWDL8aMdV5jZMIKAw3I4TTb6AEM6vxxvlEN68h8NUsLcpzDKZeRsMz?=
 =?us-ascii?Q?OL0SXTX+Kd04WrCH/DEQqYQTLkDyflxbCy3sdmnsyYZCzQluXCoQbwKtTvbz?=
 =?us-ascii?Q?2TLKxRKMBv0kCWJj23z8NKhkJf54kI2NmmDyw8VS9SAgfaCFJRddevPqFmQ1?=
 =?us-ascii?Q?MKkLEiUtXoI2a/CCFQagpOokLKejIMtZh1e7LJUQXAL8oByU4yLweBPoWePn?=
 =?us-ascii?Q?dC3rHFmaUxK5rXLKbjBFtb16myZOtq5OFJrNKANqUuDyQU95l3y87BWj16yk?=
 =?us-ascii?Q?wtbrFPO67grLqMRDBVN1h376qmGwJMGZGNO3ECYlgTQORgIy2eEAmBT1ehvD?=
 =?us-ascii?Q?zEPDSdQdUhD78brPBN2i2GwhechovLpQklZgHbvtsRdzxYBqD80oCl7Tu3nI?=
 =?us-ascii?Q?QxgLniUNVGqw/V/Uzp4LL1sOpW6uOCMjHaF/nzeKSYc9SULDHL684B6qOzCF?=
 =?us-ascii?Q?kdLdjDcqcnFCJCH7VCJVCD4u5ckr1jeQqCrn6bUVW7TDVyqYYox1YLORWGrm?=
 =?us-ascii?Q?aoT+e1HcZrGVVKBAwe5Ew8Z1Btzkiyu+/Bc6rp0cyhM9mk9MEqXghz8dSd8V?=
 =?us-ascii?Q?LxhQzNUXbhLYTpfoTy3FrXbiHWGTMkQux0skj3uJr0Y352DtLwWhI966y/R1?=
 =?us-ascii?Q?Dw7nVLH/RIg3fU4L1oMiGml1BfN2YNlc0xk9+hg42bAsF99cGbiWTZVr7ftD?=
 =?us-ascii?Q?gw2C0U2OzSq5hCXi0r48W8ySfqh0DBihoGvvu9LVn1R2A1Sero3LobD/grwF?=
 =?us-ascii?Q?Wa7KIc2B2aDWZzRe0dco3Pn0F00Upj4fDSVugw100t6ROBnuR0BkQ/LEzvBk?=
 =?us-ascii?Q?JpyrhHbbzG/Aa/nEHDARxuppizxZCg7INeJSDQpd/o6xET1xmISFgYo9e+xa?=
 =?us-ascii?Q?nbcZXo+WIZ+kzygkBsoaNBMD4XCHl5MsIhXlotdNn/EvLHVMecUOv53CruoF?=
 =?us-ascii?Q?sm7Bgdzsbx//WjNDtgN3TYRHlEzTLLP82wW44VFXGmSTFQxxomW80XdeZjpE?=
 =?us-ascii?Q?G8kwvr+DLlbWy70xSijERqb4Gd8D5I5ZD6z/JfCivdIJ+KbD5lJP4nRO9l/4?=
 =?us-ascii?Q?Y0WUO+CXgPDfAFLjes73AIKtgdw4YN2gCY64Eu9K0crabDHZ6/9uu1gGoQax?=
 =?us-ascii?Q?zReDd89htQ59QW8XURUZ3s/AC/qL+Q86rR1GOpvGkTzdNunA+wCofcOCxPWp?=
 =?us-ascii?Q?+9ziJlf+iZ/e66yexMBquHY6DQl9kQEAyGhbeprx7N0MQF92bUobLkzhja39?=
 =?us-ascii?Q?fAz15chwEbK+HLk3PgLMb2b6wPo31M5//W/I+hkH+v1G6rj2YsksZl95aGXU?=
 =?us-ascii?Q?RQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd0c6fd8-a18f-4ed4-1802-08db6bf6f0c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2023 10:14:14.8044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3OQ84azn6bULWRapZCaZfs2kUiQDrZCb3DXRLQ/b9A0gwErtyOjuGjfVDVEVkEKxL99tczBTzXjsSyAkgSuzO3h+uV5j/2+E/v5hFmvhAyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5465
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686651275; x=1718187275;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cjvZ7U30WjSUJgoy7xOWAytkbfcqQZY6V3Q40QjWn+Y=;
 b=jXcvVthMOErNb8lsNzwcmi0diBXGdd+6HTZqqAapKkJQfzWHGDrAhb27
 ov04se+krtAlbhjUXFOzDIfZgKzy8XS52TddpWU7pjaTCPQ4kMZJYggh0
 Sszv9hd13LouVbT0U5gFUGWMAL5qyj2W07c9SySY46ClyAoLQIu5/75yY
 xXtCAcIYVsbHGYo24EhbM12+gNBQSAf/Vn3osCc4kzzgXCKUMuEPfv+O4
 dzCMU8RBNIXQsJpZEUCcterseRY1xj14wrXokMzAz7ojmJrcsXZF5kjk7
 u55ORt+WobYbO4q4F+FeXvUGfM7QfYtJJqOclL+NNfKnbJRgrWkaeBcuF
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jXcvVthM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx
 mode change in switchdev mode
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Wednesday, May 24, 2023 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx mode
> change in switchdev mode
> 
> Don't allow to change promisc mode in switchdev mode.
> When switchdev is configured, PF netdev is set to be a default VSI. This is
> needed for the slow-path to work correctly.
> All the unmatched packets will be directed to PF netdev.
> 
> It is possible that this setting might be overwritten by ndo_set_rx_mode.
> Prevent this by checking if switchdev is enabled in ice_set_rx_mode.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
Not able to change the promiscuity to 0 once the interface is added to bridge.

[root@wolfpass-switchdev sbuvanes]# ip -d link show ens802f0np0 | grep promi
    link/ether 6c:fe:54:5a:18:98 brd ff:ff:ff:ff:ff:ff promiscuity 1  allmulti 1 minmtu 68 maxmtu 9702 
[root@wolfpass-switchdev sbuvanes]# ip link set dev ens802f0np0 promisc on
[root@wolfpass-switchdev sbuvanes]# ip -d link show ens802f0np0 | grep promi
    link/ether 6c:fe:54:5a:18:98 brd ff:ff:ff:ff:ff:ff promiscuity 2  allmulti 1 minmtu 68 maxmtu 9702 
[root@wolfpass-switchdev sbuvanes]# ip link set dev ens802f0np0 promisc off
[root@wolfpass-switchdev sbuvanes]# ip -d link show ens802f0np0 | grep promi
    link/ether 6c:fe:54:5a:18:98 brd ff:ff:ff:ff:ff:ff promiscuity 1  allmulti 1 minmtu 68 maxmtu 9702
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
