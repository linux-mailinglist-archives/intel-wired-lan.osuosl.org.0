Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD9543CF26
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 18:57:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D157A60B08;
	Wed, 27 Oct 2021 16:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUv2g25jhxS5; Wed, 27 Oct 2021 16:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5A9D60854;
	Wed, 27 Oct 2021 16:57:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F274D1BF2AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 16:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1CEF404E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 16:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R4Sjak3knKYz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 16:57:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C6B240456
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 16:57:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="253766422"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="253766422"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 09:57:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="486764504"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 27 Oct 2021 09:57:23 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 09:57:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 09:57:22 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 09:57:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=leKuqycIAJEvuUAHqXCdhfbW12MIjfjHmXf4LNeYlFesKWCk4Bd7qHhjRtCvO6EyyUE2Z0eA3CZqOULaIrcvox3/YkWZN2tbSb8VHyorxXH+ziYKzAM6wEWVmQ2IiPUGm6lqnTvLBxhFx0drnKW/sFxbI5pvlsMgqJQarg6fk+L/R2q2v2Poftbv7YXK9t4vTITENmMVUf9/qqpgjWE7fRhIZKps3smRuPAxIwGs1fhyTU9QrxZuSzKzrP4lBOBEtof9kXJkmBlIfKM+geBMQZMsQ65Wrn8YZPN/HQhnMQJ32fdrt3fI5aVacmFjTvMVcyd4mNYnPTkdQNBSIB9gyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=swBNiqE58yy9IVtadnmwB+pReM07Fb9Td8Td1k3Th8g=;
 b=NlBooIj5uTUdpyzHqPdZ9Ee51QVWwvQzQuB5PmDttfeXQOEECt87eHDAZEWSkLu4lNFvH6q5DrdI4NcPv85WcIFPTlcJC1RkIkTD6DScyFuyzpS6W2A9nmJOobpol7cUJ2wOhS4njCglKzDCKO/tI2SfsdJfNI4NhyjHND2JbArykKHP6oKTMShg8gEz9hWhQ8zs6iinZk82mtx8CQzSr55xm9VOmKYh1f4wMkDQsc1m+St08hsHOzcIETi+JtY3hZmpexfvI5/TXdsSUp0UdZ7hW3nQIOIbwQ/Aqb3mL3Yb4Jqmej1s5hTaruistxsjbFBgqM/gLoqV0AaZsRAVNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=swBNiqE58yy9IVtadnmwB+pReM07Fb9Td8Td1k3Th8g=;
 b=NZjrshs2eNW/crF3yxljJPjBZ2c8vo2Vu7EEujfH0y11SpIWrWRgz0QkkG/niGePAL4/JheWIgswTlFlWOmAVFzd/ZZGF3/VrwzBI+iv3pTr5O6IkD+kS2sbFX4INOjbKoy6POkmXyfausMv0ueYy2S1U4wgUv5xx/D3zVQmuFk=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1581.namprd11.prod.outlook.com (2603:10b6:301:d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Wed, 27 Oct
 2021 16:57:21 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898%6]) with mapi id 15.20.4649.015; Wed, 27 Oct 2021
 16:57:21 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v2 1/4] ice: support for indirect
 notification
Thread-Index: AQHXv5e1q0Rmj/S05UqNCod1lLUou6vnJ3ew
Date: Wed, 27 Oct 2021 16:57:21 +0000
Message-ID: <MW3PR11MB4554EABAC87FFFC29FB071AA9C859@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
 <20211012183106.2315477-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20211012183106.2315477-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99371e00-6c88-4ca7-a1de-08d9996ad7c3
x-ms-traffictypediagnostic: MWHPR11MB1581:
x-microsoft-antispam-prvs: <MWHPR11MB1581272AB4C686AD7D6F03269C859@MWHPR11MB1581.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:372;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: THEvQHr1LCiDVajyrh5URMIb+jgwEh94/tznDztSQfXdbQgRoYrT05MPi7brukHCYqVfqRkwTBiZaxdtinzW9rih1tJ79CrDEqJQUp1+mzcmyBlUUKxJSkseWJYDxf31u7n2TKqOAVRAJDFfJsqHhRredIt/iu+Y6NyHIjTnwTWeoj3mmcHE2ps4zvyTq6354FNJrvpx+bfMDttQ+ZAvUHgGTzfpWi1RNUKmxlJ1A4iA7tRkdhLAlzjqIBPIuEEZ+mLOJFEL70qA07gMpuGUtXIk02BMQ0tQIruH0siOA2vAjzoqeNrdTlx9u4NeygvXwdlFdVpn5rnAooJeZSVYyNgxnFNACEmhvkdvTwCEE5ARbIC0N8yF18vWwxBHZTLtyj2WWrhtVBqrT3/RayHOha/BiKqoYpYaEHpouzzR2j/pdL1QI4UNVvEvwiVYCeo9hNsqGf1NtJJhZPOkeGDgj3l2TP4zVXg8fuM8A4tL8Vf/UG0JLcF2l/0dzQamJ5zXIz7/+rYSzkICGMdwD1S13RvEHGhH3xNt0qD/Kugx2ilpvR0IY8OUk7zfNn9ZxtsO8kI8G8q0zVkVD9VBz06L4kLo/E5RaDIS0QNuqPUa4kSLVtxCcD+kfZclvTlfsNaZ4WpfZ1v/X3RlSwJPGCxIzAWIhSV8T3MrEIbxCyFMirkHQrEj3oL7xm2auF+7VSwoOCb3+YUklOwSIRNFqMrp3g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(76116006)(8676002)(38070700005)(15650500001)(66946007)(71200400001)(55016002)(66446008)(5660300002)(64756008)(86362001)(66556008)(83380400001)(122000001)(7696005)(508600001)(110136005)(6506007)(4744005)(2906002)(33656002)(52536014)(82960400001)(66476007)(316002)(38100700002)(8936002)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0WVm/73XZDIw2Fbyz+DrOyKZ9snfq144UWIo/KatHJLVnKKPyFH8tBz51HlK?=
 =?us-ascii?Q?iEE+Sx+OpTERmGOkbGlFo1Tc07ZiWMPtM1gbZdpX3FNRWlrjt+KInoEpFvRK?=
 =?us-ascii?Q?H0WssKs6dzEuaWYPkkmXYaTQkqIc0iKcYQbwScIVfEK/+ImgibVe5nVPR/Aj?=
 =?us-ascii?Q?nTcEyOpvVskdYWvkbPo3TZPMEVFqzhb6og2XzYP59sJw+0YYOEPirzL4h0b4?=
 =?us-ascii?Q?z+FSD2uO/D+63BWawvE3kvpt42sh+2w5MGvR+ntcd5hEV7/KQFFiUExV3qa3?=
 =?us-ascii?Q?IAoGLtWnIe1veXWBrg9ZgixI8tnoeSxai2QPG7KleW3KYChFVCwPxF6AC6+L?=
 =?us-ascii?Q?FNbGwD2rHRArw+ZTl/ZvgYq1uzYfbL8zSNQh+92vDUsCXN7up2eu1qFeT7YU?=
 =?us-ascii?Q?8yaDDYeXqKG+vdpXGgswFW3UUSWcM8mbEuxVqn6IV8YOyV7ji7d8AjaucQi4?=
 =?us-ascii?Q?7W0hgqnJb2rK2u4WzWsTZWlpQqeJtLIRLVTNqCHDDXyjRo8LlHgbkk1rnPs4?=
 =?us-ascii?Q?9UM1/sD8mb/FaP07wZztezZAS/gF+vfDrI8V133kCAGKzMcGEX5YYYQE4FsZ?=
 =?us-ascii?Q?wV3NAxxpbj0ZXf2rQw97z7xw+d39fHBnaKY6oTu8822R0NyX6Xbjv3k+9pcM?=
 =?us-ascii?Q?c/R8Mkf5a7D4xXzytbw8LQBBZ3+XMKYTv7qt/7oHY29RUbykVuH5kLtoLPW9?=
 =?us-ascii?Q?kZw/+VLaQi3oNTdO9j8ysrWl0EFPmU6n4SKgx95B6aMMhLo0y9ZzvQKmVWnt?=
 =?us-ascii?Q?1hKrCXQNvEJAiQIEDezamKTjEEKGqDE568mBa3qcheiMpuK4En2gnJclA1JB?=
 =?us-ascii?Q?YN0mf0AQNDJv9U4GYk9L34x6q9x9bHZyFesLqdb4VXzNgXqWa8cEG7J7yZoQ?=
 =?us-ascii?Q?nHRCc4lBFaqL7QWFqcf7PNjgzEAmdPuObZtNyX6wg0wxipDxqq5QkcgfrmAI?=
 =?us-ascii?Q?ODEb7e1VtdP1eS358qtfhmXVEWSRzEXzi0bcUMNDjlBUf5VxycwIP3RM4cWl?=
 =?us-ascii?Q?7/7nhJljJqenqkXQAPqracz/F6sgpPuKug6B8nMLnpIXfAWe7P5AMQrZ/HTp?=
 =?us-ascii?Q?fQYn1sEcLmBIb11KUqCgxOenJLVvJLhjLQAh9t8X6DchlfNU8EOyVhax0j1M?=
 =?us-ascii?Q?7xhgLle1SaVi6JwM6dPrhVpRNheuh453NNiEHW6VIvYUbeMsHAARJnfhcTcy?=
 =?us-ascii?Q?FwAfGHQ6nt6w2OKn5xUMnzdqU3fSs33DF2lVVtfUrnvT7NH4DSzAx9LOrIwO?=
 =?us-ascii?Q?R7EFOvL9QcrZNdMnlYYmCAXvgTngpVRYmRQQYmlrotdVDl1b8BTBUMSrO2Gs?=
 =?us-ascii?Q?eIZPMtPqjqhKggHTzy14S9aulmfQkxjx6tPzbxnmZtOthBznmhj82PxVzRON?=
 =?us-ascii?Q?cU3mM1sJ/4wFiGAnbzJ/smySNCVq8gtMQaDfPvAAse/IgWbxryM0Hwx3EAde?=
 =?us-ascii?Q?snZNobR1VliLdHbzYkWowX96reoLqk6uW7lGLNS1oy9C1Ltc8MKkdcoj6rIl?=
 =?us-ascii?Q?TOnpHMCxG1TnZDfY/7LcVVM7EqalFKofIM8FP8HTzr3QyyUkzL43fun5NkJp?=
 =?us-ascii?Q?tU4tgSpKxR9H/SkHzfuC8ZOMO3q5W5aVS1JxggLIE8xBTuDKB6SJxmKPYm2w?=
 =?us-ascii?Q?xcHy5yaH9nSyVLbk9kdxT9ItAYYG/Ee6FlyTYaHYiHFOfuFfTjHTo/v9YaWR?=
 =?us-ascii?Q?wiZUyQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99371e00-6c88-4ca7-a1de-08d9996ad7c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 16:57:21.4484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k5wujjA6GFvDDPg1Uj1xEKnQ//dbqUtBUto/yOqMAlfD/OLQq+/7AXX7upBOV1Wl8KnTsNQRywl+578YjI6O76jwtECwRls89xxuLmw0CXo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1581
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v2 1/4] ice: support for indirect
 notification
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Tony Nguyen
>Sent: Wednesday, October 13, 2021 12:01 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [next-queue v2 1/4] ice: support for indirect
>notification
>
>From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>
>Implement indirect notification mechanism to support offloading TC rules on
>tunnel devices.
>
>Keep indirect block list in netdev priv. Notification will call setting tc cls flower
>function.
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice.h        |   8 +
> drivers/net/ethernet/intel/ice/ice_main.c   | 198 +++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_tc_lib.h |   6 +
> 3 files changed, 210 insertions(+), 2 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
