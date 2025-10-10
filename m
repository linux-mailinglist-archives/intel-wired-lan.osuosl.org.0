Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4951BBCC6CE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Oct 2025 11:46:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E727540D8C;
	Fri, 10 Oct 2025 09:46:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AIZsQa6oEkWs; Fri, 10 Oct 2025 09:46:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6190340D96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760089603;
	bh=yy9FmKkww4DqxzUR1HNyBQ1YVnVhc92TfGtqummXNv8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YCLhdf4M409A0Uh1oTXQku0h8LsZZjWfGnZqQwNjxwo17wzMEfIRLLYbjzC/xpfWh
	 XCx5jS/J8U7z8pvHckgFdLTjmzoBIHEk7kWhU/6tT7OkP7rbf+J+7PXg9+cH6/3JyP
	 YeAvmwrIHpfMEjOqb1loolPL2UaHYbJ/w08OC/kmgBFrLRMUSXgRS8eN421iWxywc0
	 2iFsDGTY4HkE5QIcR+aurng6kt5zlnGlEASDLu4EWY+GBGe3mLCJQA0zC8JYr3+XZ3
	 IQNmUa5/1JwFI+TeZ4bsBdUKu46NpXCL6rv8ZjJmIcTDnbuHaaX2QSglnH5VueB8l5
	 nexWPnTX8rsyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6190340D96;
	Fri, 10 Oct 2025 09:46:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8805614B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E69F40D38
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:46:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CfAAYawanLAi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Oct 2025 09:46:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A8AF340D12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8AF340D12
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A8AF340D12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:46:40 +0000 (UTC)
X-CSE-ConnectionGUID: jzghowUEQiK2w4Ej37fdvA==
X-CSE-MsgGUID: cV0l132qRZWS7ae0B963dA==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="79751900"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="79751900"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:46:40 -0700
X-CSE-ConnectionGUID: 71k+JuflSm2MKyCsW5+1Vw==
X-CSE-MsgGUID: 3xzv7t6/Tn683DkRd5hWuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="181707653"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:46:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 02:46:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 02:46:38 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 02:46:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GFbzJgyuaMlI5y98YhSPh6ulHtpNrGkgmloq1aLUchWcRO5QODI6Yvre64b5TAvnF5X8ksL4xsts5VLcXJkTkdYiiKehv4cpRRomjIzake/rAhT67YOSWDZSWMeem2RlODr8EBoanN3+yCaf+rNgwZj/gOKPhhvNhMnlehKhV0v3PmIliJlRtXnvLjnxKSZlbRTcxHgLHGRJ64w7qUwUopCmBKeYOK9efpc+GDEovniuwu68CqhbR/sKprSNP4gc6K1meG3KG2lMLOwJZPbfNVoPD1yO2UXoe3Es3ijlXQ6jVHjBB1KRjWyWpJhYCTQIO6vyjsSltokLnrEkOrAjqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yy9FmKkww4DqxzUR1HNyBQ1YVnVhc92TfGtqummXNv8=;
 b=QRnbY7d7E8c2FxufQlO5Wmyn3hYcfHfPRt1892oqnAEYbSGN+7cxQYCfpjiwXZzwOvAVB4Yvn3IzUvT1lCBDL5MglwEsAXVlT3vYA3DgOxf79WdZw+fTl//usTsMweVNjQmWWyrXoyz9iwuHvP4tfr2Dezlv77vtG31S+cAhlzIq3di2VWt8abpr6Xfe3p0VcAvo8rJijTJlyrxVFG6ChHxPQ/9iXh1CdUogVtwjj4hjXjui7wEIecn44LDLHjimqcBwDJ1IomD9wjEUXMG7EoIrkW8P43EhrN57H9cITkKTsoueuQJZs1MPe2ZYQVl6hGg3To7VNrrDvWeU34kvlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by BL1PR11MB5953.namprd11.prod.outlook.com (2603:10b6:208:384::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.10; Fri, 10 Oct
 2025 09:46:30 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9137.018; Fri, 10 Oct 2025
 09:46:29 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Schmidt, Michal"
 <mschmidt@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, Simon Horman
 <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 5/5] iavf: add RSS support
 for GTP protocol via ethtool
Thread-Index: AQHcJkZEh/9oAVqdNkSz6+xtdtIRvLS7SNYA
Date: Fri, 10 Oct 2025 09:46:29 +0000
Message-ID: <IA3PR11MB89856BF6E67E29CA275AF5B98FEFA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250915133928.3308335-1-aleksandr.loktionov@intel.com>
 <20250915133928.3308335-6-aleksandr.loktionov@intel.com>
In-Reply-To: <20250915133928.3308335-6-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|BL1PR11MB5953:EE_
x-ms-office365-filtering-correlation-id: 61a94d51-b97e-4caf-7617-08de07e1e384
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|921020|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xigoevEnJ+330pCoI0FrVTmx5br/scmlN1F3CL1dV9+nwIYQnXkf7DV7Jf9Y?=
 =?us-ascii?Q?gDV8K951x7UAt8SMXabaMXuJtJEQHbWjTBLvNkBH6OvXn+9ApdFEGOypme7J?=
 =?us-ascii?Q?da1wyVOkLqHd3+8UG1+Up1qBESDyW1uzy26mQXM0PTzAFfzJ1jvOxii7T2XJ?=
 =?us-ascii?Q?QKjn8Uwiu9gPEsQJQGtdxQHgWqnuzZYK1YliyqZDRHvirjwOiDQ1PNiSzGm6?=
 =?us-ascii?Q?cTiWlju727//0H2gBeaJVEcqUkMGI7Bi8VYoBA2BoayFSeXoQVY0hTivMkQy?=
 =?us-ascii?Q?7VCbBejoBvPdB8rGdRWiwp5ShogTQf6YjA9AUB+kBHLWuSmvtawX1PjOHuN+?=
 =?us-ascii?Q?RbWuz9XT+vfXg2Vs8j9d06ZoXThsejf0zFp3F0fomZQE2lZGEYimHTJmy/b5?=
 =?us-ascii?Q?i1Emkb3PANPO8OUBGNenUJmczbP6DRob8Iq0kf8ZQvV+0kICezKxf5Fyzc4t?=
 =?us-ascii?Q?x8ebR1+IwecuJyf2AGFURjhIRAod09XvOJi+KzPNDWaAU1J9jP2s1T4+6xYP?=
 =?us-ascii?Q?oZTh088SidDAIo4wTjCfDRDjkIgG14tJP2UV1xdUEHIm5vf1D3d0okCnaAVO?=
 =?us-ascii?Q?+tfA+cgX3Z15SR0P4ljiMLfzyq4dESsX85Hu2LuKLxTgmJR9kMYo6BYxkN2w?=
 =?us-ascii?Q?P3XlnmCb5GM8MXWaJo1FmWAxDuD5e94xGyVdYrST2iKMf19bnfHyj5oWNNQV?=
 =?us-ascii?Q?4muaXmDhv8zon56A63xf6rZT6dvFZqIpnx1Tn6cPp8qJEg5i/px+TjtY9th6?=
 =?us-ascii?Q?1GUYeRUQMcqeRJAPeWPuNUsk9lLqPA2siVIAATPYSnHVryHc8BCljY3q6Dyd?=
 =?us-ascii?Q?hqYMupBsim2P0FfVaFkeFJSvm/FQfOOp7ZsD/eaP+ZraYE/Y6TuK+1ICKIl6?=
 =?us-ascii?Q?N7eJt6CNXUYHkXcccTmOUYqUEL8mJgBaHzni1rBajE+rIGHvpfZsPfmjGAn0?=
 =?us-ascii?Q?75XzUTaD7ycOMRdQZvR6rjyajF4vGQUeOi2IbjF4H3JbhsnzdwwUqHzonASx?=
 =?us-ascii?Q?9HycbIi/7giP1AFd9y0095n8ktSzvJtt0wp26oIqut6BkgzWT9tv+rAgbzwm?=
 =?us-ascii?Q?OzaIsk3IOEf0aL2n+iL6klgls42wu/3fFLgTu5/2h3AUFs7flQm/X3nqIU3G?=
 =?us-ascii?Q?mZ7RMdUMrZc0biBzFHZm9aIwyzSp3DP+sfs9dO23jbyQ1Hn7NdPrftJgdZvL?=
 =?us-ascii?Q?03PZhRv0lc83o00IbtVfaNgE8BS0R0zo8bxxw0Bobco2TfSPH3WOfaeR4mPT?=
 =?us-ascii?Q?wAI1sfWLsWdO+xqUVZUrBkypYn1VyoS4w8ua4/li0NazRs7jHAUgUi6AyEe9?=
 =?us-ascii?Q?bzeNiTwgvIhutEJt2frtuJpXJUglUWh8wlvnHb+6XllbEfBK4ARwNd7iQ/Mh?=
 =?us-ascii?Q?HdM3CEIAmi9/k1zXgQldFcDAp3mHU9Uj6haeEEYWCeB1/ceGlGSajUm3n4WZ?=
 =?us-ascii?Q?KuP0rWg6I4c9tGa7g5zeptEY/G3IlkVIk7K5NcRIymw9l3nCgmJ/zoEDEFJ1?=
 =?us-ascii?Q?iE+iqOB4dWcAk123RdprTaxlADYJQA9fx+Ib4dRVMIRFBFhSt2EXusZq4g?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UHg0wtY4sjqC70FGTHbuN5x/HqEXF4oTT2OuAtlEJctfzGWirTUWoR/GiExv?=
 =?us-ascii?Q?PRYjMF7jBXAgf+D+hcoxTbacFXn8s4y1YStFkW5f7Ru9x2+wthUyRjl5nUwm?=
 =?us-ascii?Q?yf165JQbi5OxG0qGWOo1eJ3yE47C6pHJbom/+GgLgkTvedxxmYUDkU96F2EG?=
 =?us-ascii?Q?AiCyDRAU5QI/ph7HNPNld+b8bPJ1cmhlgV5OyeYDABZE2iHVGa4ycDlJ5t2I?=
 =?us-ascii?Q?e0Mm4L6ihkld4UNVnYTLKFn2Onxa90w69DEa2D9ia3sRmWAt7ZVxWXwaIK30?=
 =?us-ascii?Q?4m1z507sBBp59mrxV0ivYjKSEiP5neRnbHo97kpVlBD39lNL2GkJcYd8WSQ0?=
 =?us-ascii?Q?0KUQ6MmKjyeboSyobA+pg+U22HCm3fkBJeLqDS/1g6lvhWuej08o4yZxawX+?=
 =?us-ascii?Q?laa2O79aRvQOMV7qREiLEW5tkjtAGOfpvljEmLIzUgdMBQIJWvYHvRqmCx2N?=
 =?us-ascii?Q?2ldAUBsOr6o3S3FYMuQknxvklK8IZXYBP7No9xf0TMoHdGQ+sHwkQWbdDyed?=
 =?us-ascii?Q?4Qn+mXf2P6LET3bzuhkrTXbO22zSgnDz5fCD8vAWz6pnh7XbyXqBUcSyJNin?=
 =?us-ascii?Q?DHcuLiJAyQii8FRfOO11l6Am4nNfQZPx4d8xtxZQYhiHtygc9mwUXi5EuXf1?=
 =?us-ascii?Q?PwhoFEN1Y9pERH7M/EipsIi790lByZWcNH4Q95KEf/jzQknORYTYvC/Ib6Yn?=
 =?us-ascii?Q?3uM92z1pwYkv7haUmsPCYFKKPSRhAPc1ivcvWEfP/uUDQ4bxZmHaveLjf/we?=
 =?us-ascii?Q?1REQjG7sbtHz24ya/Tt1T1kj1y88w+FR1GU28MlmR9tzA1bD4qpvbjZJhRiJ?=
 =?us-ascii?Q?RYUPbwXDoVGrF0wWwKrqayxSuBCnxXPTWe/VkZOdNUg+xgca86gnjF0Pce1J?=
 =?us-ascii?Q?CBMPUZGxJAm4n4N+FFhhWwlqyO09kDNfLCw9xLJOL3jXnmriuPIQmpTzId9g?=
 =?us-ascii?Q?wThnm5hhXKdhS81cGHt0z1IRU7Nei8gv6AVIaCWFTBXqEcVxJehUNKgh7lTA?=
 =?us-ascii?Q?aDY1ihBE+opV7Xi3ncI/e8zAoarckdqINlUlVKW5Hx7u9zIruAX/VX5WUWx2?=
 =?us-ascii?Q?ug31crAUYHnwWYwV1Bf4yVE/+ssnfmzEBmGWgDk67tmPbE93QpvenafB5IAF?=
 =?us-ascii?Q?jUPOcVw4z4l80c3kNqHxEiJGxV8RdP11NS4MxVW4Rwqzn04NVwVPbkpIKOC6?=
 =?us-ascii?Q?y7i5XqcreATSVfNaBIvI5B6zo2RLfv5F5KZ0cteKicx8vTqSVVsXAV2ChpIn?=
 =?us-ascii?Q?MrcCXIJM5n/M+Usnnt2GbTdgN6//0IRVrajqfu8z6IvH+P6tqJTIstQPfGEI?=
 =?us-ascii?Q?QfONf7kW1pB61tep44Jl2LdItLYp/NAkF9LiQNyt54zk3Rrz8+u0KaDGjlE6?=
 =?us-ascii?Q?hts31e5Qh3HAjVL4jDTYQKeUm5LZlEG7Qi6PSltNG41Ww31JQeqPg/FRSVea?=
 =?us-ascii?Q?vXwbEuNQUk/kTsuOTuCCiy7Ih1zQk24zY8dcmK52FNoaUQXYpbMJ2ShbGAmx?=
 =?us-ascii?Q?BFXBMjMkvYORto6IqJYF/mRvg4kq0szLeoSbt2iH1Iu/senhqOWO42oxMa7V?=
 =?us-ascii?Q?+UteJy4Kxqb5x/j19bjSAaW7JHLVIj0q2JE65qAa4zX3FY/zN+fNSaOe0hVh?=
 =?us-ascii?Q?1g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61a94d51-b97e-4caf-7617-08de07e1e384
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2025 09:46:29.9188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3sZPyVEADU/q2v819mKxQG+Q0fE4rRno9Dng9gvT8t2bLwDThhpcTlKMgEw81d6wpwBzn7Wo12SqwJf6J/4ycTWhqUWEPswsXeC4e53pZb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5953
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760089601; x=1791625601;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/8JR3Z82fTJVZGKmU8ou/NN0g1G6o9luqx6F+iTvEXU=;
 b=YGtseR5rZxoef8bMibP498wJQMMjUCnVs8N0rq8np9SbY3hijtmCZ7wr
 ILAqk671+89oErHS8BWN0cmgF4uCLqFDLuQgEtzdZEddHMw4MHKGf75Fe
 Ezh55waqvp2Fvz5Li/+yH1XRRSIiJQQc2kpsHnMCvOdyK0yALe+SgicRk
 IPEY/5GypUpOYeM2h+cblnTNWklrT+eTeLtYOubcpPIOpItPSJrQIR4ig
 5On4+9J7q1i09ND8ql+ddZ0luMMxRxVDwN1ztdEimReYmEtD8SQl6UzuC
 Yd8lN49CvSbyVlmgsKaBPYVO64GhdL/8wMUkw0WK42+xdefSCrvltWikk
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YGtseR5r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 5/5] iavf: add RSS support
 for GTP protocol via ethtool
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Aleksandr Loktionov
> Sent: Monday, September 15, 2025 3:39 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Schmidt, Mi=
chal
> <mschmidt@redhat.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Simon Horman
> <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 5/5] iavf: add RSS support =
for
> GTP protocol via ethtool
>=20
> Extend the iavf driver to support Receive Side Scaling (RSS) configuratio=
n for
> GTP (GPRS Tunneling Protocol) flows using ethtool.
>=20
> The implementation introduces new RSS flow segment headers and hash field
> definitions for various GTP encapsulations, including:
>=20
>   - GTPC
>   - GTPU (IP, Extension Header, Uplink, Downlink)
>   - TEID-based hashing
>=20
> The ethtool interface is updated to parse and apply these new flow types =
and
> hash fields, enabling fine-grained traffic distribution for GTP-based mob=
ile
> workloads.
>=20
> This enhancement improves performance and scalability for virtualized
> network functions (VNFs) and user plane functions (UPFs) in 5G and LTE
> deployments.
>=20
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  .../net/ethernet/intel/iavf/iavf_adv_rss.c    | 119 ++++++++++++++----
>  .../net/ethernet/intel/iavf/iavf_adv_rss.h    |  31 +++++
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  89 +++++++++++++
>  3 files changed, 216 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> index a9e1da3..4d12dfe 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> @@ -90,6 +90,55 @@ iavf_fill_adv_rss_sctp_hdr(struct virtchnl_proto_hdr


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


