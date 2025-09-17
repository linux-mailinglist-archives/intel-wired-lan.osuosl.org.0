Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB256B7D1CB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Sep 2025 14:19:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A243083B5C;
	Wed, 17 Sep 2025 11:26:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bOTR3cNjrXOa; Wed, 17 Sep 2025 11:26:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F1F18418E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758108410;
	bh=au2QhoVJW5InYQ0cH/uVAqff0dvazaV3AJMjS5RFSXg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2q55nC9zye0XqbT7dqXqcYZnsVXAv2v9kqyvkkkN7dVtpq1TiA3C2L+tUDfekkOKG
	 PUb3Eh2DgcNRUYXBguDwZUJsxYwiqI5p0iXKDzUErOxpmohYTgQCxveB7TdRmrwASi
	 ijwub5K4uMh7BR2+gXtbQxwePrE0YVtjWSmi/BPsp8OYi+wxdBgmWDUw7H7Qx/vn9z
	 129FNhNWigF2CU2u/xcUTiJYFTPRD704Mw9cnJg9ElbL4jsV55SM5Dke/Wr8bWgs2i
	 zaLFwyR1wA49yL3uLMUVgMdLQIeNdezELm15Pi8Cxw5XTByVc9ab9jjD9GByVccItF
	 srBxR8MKkq45g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F1F18418E;
	Wed, 17 Sep 2025 11:26:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E687D279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CCD0461522
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:26:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HC4YBq8JvT3M for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Sep 2025 11:26:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 08FB360E1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08FB360E1D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 08FB360E1D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:26:47 +0000 (UTC)
X-CSE-ConnectionGUID: ttRY5XqhQjeeGwualkhq0g==
X-CSE-MsgGUID: gJI76OsDSZ6S207d1Vs06g==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="71833651"
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="71833651"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 04:26:47 -0700
X-CSE-ConnectionGUID: O0v2JUy7TvuNq5TGdle5Ag==
X-CSE-MsgGUID: 5SXHWUlvS4O3DKXd8zotQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="174507954"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 04:26:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 04:26:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 17 Sep 2025 04:26:46 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 04:26:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ShM/o5VCL4FdDqnEy4DU4ZPWRK6z5uSDAdJnHr+DGUlSoN4wDI/Db/jqjajD4WRjP2xDLeURzjEalGW8YqPdkImxHUlUmPQfq1wHHoU3Zb8CSSfZnnS8uLzLkmcIawqC2CCpGhnWVaUyZxqNtI35lx9ZbtQyUvLpp6b2012+4eiGjdf3AjXqjBekqKHGekuVapIQ8jMGeOik0m3Jty6wEmwBMovK0YyzZWq4823+rcJK/zL9fxDZc5jIBxiVS+y6Fgm+YceBfKpHVMdVFAjJgkeycP8ZxVFYLEZK03aqDlyr+nC5N8jYNmHdL95jCJiKj/uXv6qdtk2tCtwgb2zTtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=au2QhoVJW5InYQ0cH/uVAqff0dvazaV3AJMjS5RFSXg=;
 b=QGLfofRapsqCGYSTdaJ6hTn31PSuJCB9JIDr9pafwAEx1wGZljf1fImPsiXa9/kafKIZ+MpYx+t5MGS5A0lLptti1GRlg/8GdUsTCf4/HY/d7Vv/1dtRGWHuIkyI5BpravNEfT1nfVTijGWqeeLlCswcjALaWUToAvpl57gpPraLhnxxlRPvO88UB6LyoKHG2lVoyix+1YABJqrhhMWICXLV9JTx1KlkRy4vkqEHGVmrUDhwDQzKNzbmzLpJTg7OSgIaI1YhFHMoRJby+O25n292LmC4+sOBzSwH57faYvmCsPFefWcVZwESZtjcpSpJ7jAItD0eZPKcdAM7DWt14g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Wed, 17 Sep
 2025 11:26:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9115.020; Wed, 17 Sep 2025
 11:26:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jakub Kicinski
 <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Michael Chan
 <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>, "Tariq
 Toukan" <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>
CC: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Dragos Tatulea
 <dtatulea@nvidia.com>, Yael Chemla <ychemla@nvidia.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 2/4] net/mlx5e: Don't query
 FEC statistics when FEC is disabled
Thread-Index: AQHcJz8hTRxl90gPVECtESmA7F3WJLSXPUsA
Date: Wed, 17 Sep 2025 11:26:43 +0000
Message-ID: <IA3PR11MB8986436CA0A49118F43491A6E517A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-3-vadim.fedorenko@linux.dev>
In-Reply-To: <20250916191257.13343-3-vadim.fedorenko@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB4845:EE_
x-ms-office365-filtering-correlation-id: c1cf55a1-d93a-4b9a-47e0-08ddf5dd1469
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?p2+s6glo/2aw2j5q7pOg/JQid0Rirh24rlmCxqo9J0oASPZGtva6HToaudZu?=
 =?us-ascii?Q?lLimstnCFTNGUHnbs4JCzvnwNFY3UB225xe1hpjhQAEckCPzNvwRDawh5YPP?=
 =?us-ascii?Q?E7yy1r4cUq7Dt0637VbN2EiFLjY4XEgxrNSgdxv/MLNzFnIy1WibQ0F0r0ZF?=
 =?us-ascii?Q?yEYsJtrRiEqb4jjdA4O/Bob+FO7LPKJ1lnO7p2jREgLO1yalpHuqAeshyHVm?=
 =?us-ascii?Q?dA4Cc4QK2RpzTXD1kny3uRTWN1+RAHAD2sHtY7ZWy8vc14nc1XPbWGrLGjZI?=
 =?us-ascii?Q?tYbchiqrbaScT04tx6A9ALdrqKSkvlT6Jw4Ykaqp6UKri6cZPMPqS0ow92xZ?=
 =?us-ascii?Q?YgHi2K+YfBca5IUrmC8+0fRam7BvXpWE2K6WTTy1lehglzLLS5uvcMPzrIGE?=
 =?us-ascii?Q?/9ii58WJTwp6FkdGQbVOP7DwM2Lh7mIIAnMrg/p8Qt5f6h3w42b5xt6AoPQA?=
 =?us-ascii?Q?ATmkclc/b4FmW33lIFaSTZ3LVRWa3MnUk5BcLsZnda10UjrXIwadYHGx4FtR?=
 =?us-ascii?Q?4BGoqd1wn5TphR5H6j1AnOrlm6duTgUaLuukuXBs/5nBt0SspvH/cmk6392R?=
 =?us-ascii?Q?WCAT2qSwBf7FStey3gUV43y+RKIqzkKEQw8oB66CVDpnhlJgfS93QXrbNuM6?=
 =?us-ascii?Q?ZZvCIFJmu6gDG5fY6/k4FNhNFRiBE2yPJtO6p599RTFXmTLIeJlUucS2oG8Q?=
 =?us-ascii?Q?cfF2JpobM7FYzHfxKaE2ZKaXnFcnu8jBcOXbTe8QMu3V9xu9MoQlk+I6aogY?=
 =?us-ascii?Q?BT2Tw4yOGvh99IfG7nw0wYIu79rPufFYUE5L+1rVJzXX/wi3iURl7S6VLN+X?=
 =?us-ascii?Q?6O7jyABDct/AwptWr8S6bWb0op0WXdWRlah0ny5hdSH5QmI58EkKQ3VH+rF9?=
 =?us-ascii?Q?P23hHWwaMkYUx9acdBPkbyM/7FOWcwNWGwUzBQirJrvDYhomHA+f8dkhkuaq?=
 =?us-ascii?Q?PxRM4DsNfL3XyR3V50PAuvZLH1JtacuFoLapYE9aQLfj70YjYimfE5Q3ZszF?=
 =?us-ascii?Q?aWW8BIsq1KPr8fRxWRXvXTZ2ayajWafWdVsKZZvP6MOwFBKT+O7Qd0oNQl2r?=
 =?us-ascii?Q?RiXA1ruVzjVBre8Vp39UcFN3m9dvroJsN3nFR6F2u2PM6oiMnF5GxSgnt8fj?=
 =?us-ascii?Q?3lD+PRqxw8o/zBSSG2fU2e0lIVLIUr/qCj2DEuH7NaDYFlnpaEzAoZf7Xc+e?=
 =?us-ascii?Q?XynQ3eVhYWazFvx23q6Xdt/hESLsgPpL8g/L/WH2wy3kzwkydHPvaR3JlPy7?=
 =?us-ascii?Q?kPuH5Vj4zlprQzRb1o9Ans3tW7hy3AkR2/TF9LPsq1Y9smsxqXBYPuZb9KfG?=
 =?us-ascii?Q?DOUJzEIOk6rx2cLjRxe/yVWl5u09IqfsYMM5TDOcMdm9asdgalRS/9dSxvTH?=
 =?us-ascii?Q?t5S//WdIi2Y4nH6Viqn0MsowPTe+vyJ1Nv1hYddsKrDGk4QrQP/ifqEMsqjX?=
 =?us-ascii?Q?TXGh06HHWHoazwOYo6Hzufa6IV/qlEWOWZ17lgNwMBn/Ddzv+0Ke5X4PJEgH?=
 =?us-ascii?Q?lmOe2oiHhhJq9ok=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?abFVYadWUFrRt7s0rcbV0IX5BFl4KJzhpeJOVHMoarYDKYA9EX3EGQYTS7dL?=
 =?us-ascii?Q?wCjkmAnrcM18M+Wi0xPBzw/VO1N1z0N8jqhhmFhXM+K+DRUtukdys9otN8QY?=
 =?us-ascii?Q?WzlXKHf1U3h5lsZPP4zvTGSLNVkFmyzfXtESZSBBWjD0vLwikr9ljfmZV4mq?=
 =?us-ascii?Q?nm7sNRRUZjIVEi73HlEkuIys6FZK1zbx8Cao3qaZ3mnArS9HfTfP2om3rABw?=
 =?us-ascii?Q?yxwSeW2bY6gk3S0yf7gWf50IIfM0gwFOWbfBEvZ96uyxiiTjh7u2C13BPuUP?=
 =?us-ascii?Q?MqIckCPd30FaG7N8DCY5kV8DbJsVLjuMqPerzc6hD1FHgmWLJXxFZNFWAoWk?=
 =?us-ascii?Q?+vtot7er+bVumAtcxxEJGPlX+RozBSUsRNayORnTIteD5BOV9OJMK+OyD70W?=
 =?us-ascii?Q?LRjiHZxr16vw5QaLwVdElxdAfFFmOKQu1iTfGmidaQoWrm/DK13zcy1IFNgp?=
 =?us-ascii?Q?GXx9NtUJGkOcYSGPItF4GIbxgDLbmC2q2w25dwvvj8DgoRJp4TcCFlbKDT2p?=
 =?us-ascii?Q?VbC6jDlghqSm0kKKhxi8ISqyjcvmaJSeYp57bjp0ZMUUtFyUOtSy+kVTQ8H8?=
 =?us-ascii?Q?2D0LwIfqCCS/yfbTNsIBDg8Z7zjRDip75HUiBTPdyUSMXgcozkwWz6tSw2mw?=
 =?us-ascii?Q?IkDZziFNmwsnyH0fNj39f8QvfttXLAeY/P/EnPmBC4wiWBzOIxshLpAIlipU?=
 =?us-ascii?Q?qsPgw3Ur2FlFbvIJO/bd4z1nPdX/9r9NhncdwcBnK5q3eXssgSwJofwEoW8Y?=
 =?us-ascii?Q?mCx8Sr4ty3NAIAl1HqMkLHPz8fvLFu6ZJqtyWiZOisI7y7M1rQ7FqMKOBuOW?=
 =?us-ascii?Q?lVl41W9D7l3j6Iu+kLXRzz5bFuL37/gw9pWEsgH/kVN2WRXJHuUOOAIN3lOE?=
 =?us-ascii?Q?GAjebL4jD95TEgQS15V1FAHKKUDkUKzRxtPKW6hymdH6p65F6beVmQLAqyrr?=
 =?us-ascii?Q?hKI6204vIh2XHV4N1fic50gbmRcIEVZwPMJ110qQ09haHVHQTaJHX9+jfhLj?=
 =?us-ascii?Q?t6le1CmkFQVm6eZzsWRPEuKHVjBHNiy+CfjB6L+Mrkw1v86b46XjQ19vPcNQ?=
 =?us-ascii?Q?qU0NtXKh7GflWHDkPCPvyvtMFpTQ99kJvN1YKjJycoAmT6+UWxUNmPyJiqsR?=
 =?us-ascii?Q?X38GuWlQzn5i9LL/DmHl390ws83hi1BD596LLEeI+i1ql8MGbI7D7zNxujo7?=
 =?us-ascii?Q?3HMSv53591DTLfYVZg8VMwlgjXR51RWpO2zjeW2sdtY2WeXAsFn+Q3LASWA8?=
 =?us-ascii?Q?pGMUe5tpZkWIQFh0PhySr5yZTDFLDvW9cXGBmtw3pSdlQBbp2trgW9ADy923?=
 =?us-ascii?Q?i9BwhnhQ+NoIGMrWNAjari/oLr/xKCX2JLRNhRqsw/ayd8Sc5DFZWTbj6Nzg?=
 =?us-ascii?Q?Q4kZ1tF5/6hBbl2mkwcVZrsoufy8DvDvbYQvP7UjwRsGDxroJ3DZ+/jQwdgL?=
 =?us-ascii?Q?EysXLa4Hws3WUGu2oYZO8v+jnc42Jn/KkU4ooLhMNtJfnyVJnaD/GXPcOgxi?=
 =?us-ascii?Q?80vgH9YmkNAvhWFbUVDDc1b2pTeoPRIqzZITayub2HNgej4GrOUqqXe99QEq?=
 =?us-ascii?Q?o1q8kmu8Eu4ivfyKOaTclAphwjYWeI49AuoulITF8AMMmTCEgx+31QFI8vSD?=
 =?us-ascii?Q?AQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1cf55a1-d93a-4b9a-47e0-08ddf5dd1469
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2025 11:26:43.4934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Lbj+l7mOq09bi8lWS+hgvR4N+u1l+hIv/y3pXyXmY4iFkniPNOuIqNS63FWwdVn5qfqyxzl6pIyVPy+bYBO0emFwdtL8nV5onYbCAl8XCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4845
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758108408; x=1789644408;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z0CdFWvaIjePJBYAYMg2Iyj2ZoaLMMfJwLgu08kjrkk=;
 b=ngUeDs2Tkvy9KT6LH7uE9vRgo9UEpvnuwitndkD9akIsw+8h4Tn8g023
 wWxaFG8MNgXLKZX8U7V3QobTHlOnSfIzIojyPh4hGKYhkVLwIPiu5sU18
 tjXfFdIW/4XUVCGqyh0JYVGl4PWNw6UrMBhEyckrd3UOzGp+FJR11XPBh
 2H3HO7bB29/99GprpvCwGM4ikFuo4Z6mFuYXwRJMEkTedOjqIoNQtxnEh
 uR+wGBpQGIOoStPNhFYrns7kD57b2SJRJ1iJnUFhHMdI1a0SsmBqmLodT
 X4cxb07mVS91v79f36LDDLySc+ZB6sUEwjd6x3NkXRHwaconaqyHCdF2M
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ngUeDs2T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/4] net/mlx5e: Don't
 query FEC statistics when FEC is disabled
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Vadim Fedorenko
> Sent: Tuesday, September 16, 2025 9:13 PM
> To: Jakub Kicinski <kuba@kernel.org>; Andrew Lunn <andrew@lunn.ch>;
> Michael Chan <michael.chan@broadcom.com>; Pavan Chebbi
> <pavan.chebbi@broadcom.com>; Tariq Toukan <tariqt@nvidia.com>; Gal
> Pressman <gal@nvidia.com>; intel-wired-lan@lists.osuosl.org; Donald
> Hunter <donald.hunter@gmail.com>; Carolina Jubran
> <cjubran@nvidia.com>; Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Cc: Paolo Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> netdev@vger.kernel.org; Dragos Tatulea <dtatulea@nvidia.com>; Yael
> Chemla <ychemla@nvidia.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 2/4] net/mlx5e: Don't
> query FEC statistics when FEC is disabled
>=20
> From: Carolina Jubran <cjubran@nvidia.com>
>=20
> Update mlx5e_stats_fec_get() to check the active FEC mode and skip
> statistics collection when FEC is disabled.
>=20
> Signed-off-by: Carolina Jubran <cjubran@nvidia.com>
> Reviewed-by: Dragos Tatulea <dtatulea@nvidia.com>
> Reviewed-by: Yael Chemla <ychemla@nvidia.com>
> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/en_stats.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> index 87536f158d07..aae0022e8736 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> @@ -1446,16 +1446,13 @@ static void fec_set_rs_stats(struct
> ethtool_fec_stats *fec_stats, u32 *ppcnt)  }
>=20
>  static void fec_set_block_stats(struct mlx5e_priv *priv,
> +				int mode,
>  				struct ethtool_fec_stats *fec_stats)  {
>  	struct mlx5_core_dev *mdev =3D priv->mdev;
>  	u32 out[MLX5_ST_SZ_DW(ppcnt_reg)] =3D {};
>  	u32 in[MLX5_ST_SZ_DW(ppcnt_reg)] =3D {};
>  	int sz =3D MLX5_ST_SZ_BYTES(ppcnt_reg);
> -	int mode =3D fec_active_mode(mdev);
> -
> -	if (mode =3D=3D MLX5E_FEC_NOFEC)
> -		return;
>=20
>  	MLX5_SET(ppcnt_reg, in, local_port, 1);
>  	MLX5_SET(ppcnt_reg, in, grp,
> MLX5_PHYSICAL_LAYER_COUNTERS_GROUP);
> @@ -1496,11 +1493,14 @@ static void
> fec_set_corrected_bits_total(struct mlx5e_priv *priv,  void
> mlx5e_stats_fec_get(struct mlx5e_priv *priv,
>  			 struct ethtool_fec_stats *fec_stats)  {
> -	if (!MLX5_CAP_PCAM_FEATURE(priv->mdev,
> ppcnt_statistical_group))
> +	int mode =3D fec_active_mode(priv->mdev);
> +
> +	if (mode =3D=3D MLX5E_FEC_NOFEC ||
> +	    !MLX5_CAP_PCAM_FEATURE(priv->mdev,
> ppcnt_statistical_group))
>  		return;
>=20
>  	fec_set_corrected_bits_total(priv, fec_stats);
> -	fec_set_block_stats(priv, fec_stats);
> +	fec_set_block_stats(priv, mode, fec_stats);
>  }
>=20
>  #define PPORT_ETH_EXT_OFF(c) \
> --
> 2.47.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

