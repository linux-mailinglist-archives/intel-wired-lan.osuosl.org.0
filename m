Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FCE57D221
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 18:59:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFCBA60EE2;
	Thu, 21 Jul 2022 16:59:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFCBA60EE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658422763;
	bh=er7n+LsYd7DDRizXX7SaRQs//VIrw9a0jIhBEnQK+Ms=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fl2vAYB9/EbQOLJ5SIgR+ci2tGe37IIvxNs8rfcA5wItNoxDhIxlbCv+060YUzeaX
	 S+VnDquRtTSyhlVDPahQJLf3Nu5YQjDciWCDRfdcEMgAN4LQcsVEgSz4UUF47yO9LF
	 xXSUJxHwRBtg/RmQdt7+PfO9KlRvmXLLV1UzqX6OAS3YxZ30XLdm4MZlwfMq0HhORW
	 9Tbkm2cC6/h8j52QPr+tNpkBpREyVvo7zOyMYCya/XyLwEf2Xjgeo2pzeMcb1fkDAB
	 I530WvukE5+vUUs/24GmfuFUyH80nFcCuC0p7hJkACqdo8AYQidpeZx9fWJxPtfR43
	 Mxc61P6K1nu3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2J9QBKMjZJLP; Thu, 21 Jul 2022 16:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9005360E9F;
	Thu, 21 Jul 2022 16:59:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9005360E9F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BAC761BF228
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 16:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8FC4F4092F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 16:59:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FC4F4092F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EWi5gMqni_cK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 16:59:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88022408C5
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88022408C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 16:59:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="288272809"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="288272809"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 09:59:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="844475081"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jul 2022 09:59:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 09:59:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 21 Jul 2022 09:59:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Jul 2022 09:59:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NBjV/y6RhYaCU6x9vzWZmyPYnuho3HTEtSPMWK+J81cjQaX9J6dru6zyv66UBxoLWFSKCxOHsqDC+G4w289yMJcDFS606jyhm5y+po3vKkPoK2Ot0DYPOTMum9hN45IkM73Wbn5S30HAHWIh00BlTGlV7JHSucWqvhyzbIGWxMZIif2hda+BKSIrn5ZDS6w5KSjZqqmQhPbzW7cMMgeapX92uCpaQgQ1lPyivwH45xh3NckR78gvVGRZ8FTmS/b8Wu1tcS0OjzgyRh0KY1ZAv8h1aOScN1ViYvCZQN0PmGl/fOwcEyjCdqzUQoTDowbYU7NJzxwUZhyHNnEngRTTXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PCce+Tv8b2Y/xII7k2zGGLxXPfgK5iQWWw12tdVYe50=;
 b=UyyS0S4nmbrsRDP6V0PmXQ++FAWwEN4256QnZrUnexoH+Mghg2mMhKp2NBiv8pyjLhraRyIltSpWDalr2nfCY4s4FR+QzIBGFB4kBBnOCldcNahI1trca8T3gafm6eDZsWax+4+LDvZ69ISSH49G2sNfvwhQKcSNnelJga+oO08S5Z3ThlyNbtof7ctN1v7dHsCVstJtpuFqy2zvLQswe6BMphxQaL5/ZUgiq81VL4aiAie3zKOJBhilzfG9uDePnfl4t6jQpNoTb/yjMBQu9gPo72Ldo+oqBmLI3I6DwgRltthW30szcTl7nmFWc6+wZ/boP8ABngeJ4DaNKS6nmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM5PR1101MB2186.namprd11.prod.outlook.com (2603:10b6:4:52::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.17; Thu, 21 Jul
 2022 16:59:09 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5438.023; Thu, 21 Jul 2022
 16:59:07 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix tunnel checksum
 offload with fragmented traffic
Thread-Index: AQHYmpq5sFuwHvyTqUWcVKZo3gWwb62JEQog
Date: Thu, 21 Jul 2022 16:59:07 +0000
Message-ID: <BYAPR11MB3367A16D28062FBE50743390FC919@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220718113427.243979-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220718113427.243979-1-jedrzej.jagielski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a51d45ad-af47-487f-61b4-08da6b3a533a
x-ms-traffictypediagnostic: DM5PR1101MB2186:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sY7fXUvjgSkreko3MldT9KQCse3aRPNJqj4dCn/d0G22CXnKZ/8hGD3TrCTVcOyWlXxMROVd73UlYxIe6y1J4mUdWWf4AwDrtqEtxTmJU98aSDtitk370L8Zj8lLpJc6d3FAHRkmCfIUX+a61vVfP8g1iQTznx9dgonpCFfW/PMf1WkQOkg4HPXOJumuzer6iI+SUfmjorJyV2RoJJeuATfO6A0FKZEWs3SYO4zlROejhJehzI0jW/khduzQ5jc9Emrk3oTkulXfe016rWnh6U4RnYJPRAUxgkqHD/zrJAT3yy2wUxPPCh4T0dV9tR6+JhWs/Be7pW20tOC+ljijkR16EQtPUpLKEptR5w44rd4WA6YuoiVjixBpy7VS1rXMGgUiGyOqHmnOKBfpmiT4O5qecG7I5PZgcbaLlZp//gywnrwNzKEyZzs9BLBoYgGxq+SzjDNFuvcMmnhRkCs6kM4mmRSXiflkC5lfp8sMSdGGQldEGywHkiBCgnzx98fQwblsWTiisOvGd7ZiFrrOZg/To/panw5G938x+R12fg+9wDbBLMwTlEpZupLgkRNS92yYVXQc8Sa828a6/D9YRssotJv7MV2vsBW5oAEBXTz3iUNB8c6GPeljVLactBMytPKpvcRhmAswcyhadwicDV4+tmfXj6Jhy2UN14nLZnaDCS61hcn71CD8aoFKFGLzvx4cVtJgB4D/y4xg7VtxOi9PGfT/OkYufT01jxXD6S2eB8XZ8hSWYuvbdqcTA/A+EbZdWNbfAxvBFkyOmzYhsBesMoRghA7C0Gjy/P/DjqovADB1af85PcuQ5MGozc91
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(136003)(366004)(376002)(396003)(82960400001)(54906003)(316002)(122000001)(186003)(66476007)(38100700002)(9686003)(86362001)(110136005)(107886003)(6506007)(53546011)(64756008)(478600001)(55016003)(66556008)(26005)(8936002)(83380400001)(66446008)(71200400001)(52536014)(66946007)(8676002)(76116006)(38070700005)(41300700001)(2906002)(7696005)(5660300002)(33656002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fp5C8dUhLrVOG1i9KDzKkbraOccC2i5ARMD9q8wqoa5vr9tX6U5rAmj5/Ssg?=
 =?us-ascii?Q?y9asRB29y9eILEwplWWGOB2J+pvS28Cd3O5v4aFGSYA3XhurSE6dmNnHmEzP?=
 =?us-ascii?Q?ojTg1XXSI7gbtW/GafDs7u7HHDkzgZDBSNC91kH5+a3DKIQSmqAO4isnnjK6?=
 =?us-ascii?Q?LX1XKNNRsBhPxfnFdPz028uGblxP9e6VIU6lflAYbZMzXurvDn7tgLQOvHid?=
 =?us-ascii?Q?ndEtobCnbh4DWkR1a3YI9m++czEOpVIrN+iqg2Mf8HYWoRbrA04sHRIeF2OP?=
 =?us-ascii?Q?tAq40a88DlvurhNt5FssiwyPdx9lBSCDWesU8PZ3xepk/owMAr+Bu3Raex53?=
 =?us-ascii?Q?b7gxNTKPTSKECCUgL32aZVtLNqQ/DUWA6yeGRFX2V69Ycu7uwOhm9j+mTog6?=
 =?us-ascii?Q?y5yu7NNsnpuxnE9QsXopGDBCDtt/3sGvPvTEWKK+9n+xs5Vr66oN5V8JbRMb?=
 =?us-ascii?Q?DRVDBS0tVRR4gJ0hit4FhkpP7I4jvEejusTFRAbjBsxkWis/+9rkRqwWZ8kk?=
 =?us-ascii?Q?ZlXYruxINUj6a4eOlGO4+kHxAN8+n27lk+xsWUwSLmgAXbjk+d83jIxfj7a0?=
 =?us-ascii?Q?beXyPLXklX97aIgfmmKwzCk/yDqLbaEDHf1J6eo4Q7c8E/67GV6/oaZMrV0S?=
 =?us-ascii?Q?domemgCOdJVppFIIV5a0nKh8NmDuK1wbySukV2KqKL76eFMs+U8fX1uobko8?=
 =?us-ascii?Q?ZWGFAWVjzDJZAMUyXx3ibE0//dLKRmXrjjxOyTl4B1ixFl8FnheATqa37YC3?=
 =?us-ascii?Q?rvnOEfp9bn3oIz/aZCtCfQBs6U1ya9xzerZAOqKv2aOCWuioienRH/vDvyua?=
 =?us-ascii?Q?9jDz2zyZnszhjhkwEAGqZOLvlahAfKgQy/BYvPCwEaA5NML0yChwcInUnnY0?=
 =?us-ascii?Q?pfm23DkHwzuvhIX9o8GXhEcpQe99JhQCGON1TOwtBXMHIWzMqN9lC3iHURuT?=
 =?us-ascii?Q?HQIfRLxElxkzCTBBwxfvESLwpuIgceELCZQrrXRjLHYv+u2vlkiTZyA12oiG?=
 =?us-ascii?Q?5VEiZbA109TRW6/25lEIhe8pwC/3KDMfPkCPumDRjVFfjBToVYbMmSgVgVsC?=
 =?us-ascii?Q?QNroMyNU5fWif5iAbKeJ+N+W22buBlbpMf2wqy/+bnn0+8qqp9LxVMIp3QeD?=
 =?us-ascii?Q?mxrg9F+rzwPFUofri2gfI8CXN3Cc8wkRHdaWUngiSr2IxoDz5gKHA9imtC70?=
 =?us-ascii?Q?cgE71m57kwdZjHWnRAE6Z8j3lRle9orRSWGN7xBWoSMHdkeXnjNPezjtzrqv?=
 =?us-ascii?Q?Dj5QnPwvT5UMzxuOmA6oFjDZe/aP9HqIrg5KZ8OHct3Jf3oZDI0FWYo+b0Oo?=
 =?us-ascii?Q?eH7m5irlgzVMQq9R+oKOj5oCE9yamUZ/qtpZD0XZ0Wn2cl+H3FTLZbZQG1sH?=
 =?us-ascii?Q?nrPv/C3bFfK3Qv6bxSmlA1s46pBVA/FF6fuaYSrhlDdddbuBnx8u5HuLEtQ2?=
 =?us-ascii?Q?0tG3yO5EVbR01MMfiHCsqbhrzEaIU9s9rfyjVQEBVaUreWBv42wt5my1aaQd?=
 =?us-ascii?Q?ThAatyGEzzc7ISP1gam0V5VkFxuj8DXP8BrEeHK+cZDsit+AOT8PoPqpXT81?=
 =?us-ascii?Q?kkPfi38Pb8DedDpkfmtT6U48EhK8EJMGeb18aOfX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a51d45ad-af47-487f-61b4-08da6b3a533a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2022 16:59:07.4488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GeiR4yP06R06Lyvy3naeJyEbgmI2W5DFbZ1Lmy/f6c3kmF1UpLrMypZXjTl/sS50BE1koy5egrNopj4wtEayww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2186
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658422753; x=1689958753;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gK1+izzWqg+efbNIHNWfdf/qO6Dzystya472BeovHD4=;
 b=R/0uHkezhSUG0k/GdcsRzVuHwl0kT6jPMioL5rqeDnf8aVH88ey+aVw8
 jaiZbDE1BkDBQV0Wre2YykZUsDeiTSVSMRWmysQ1aXE9h5ZyAJ6u4kp96
 mQChm+pY8xOI1fIOK4gcDPuUyWwp9jhmj0WB+sekr7SHBH/UNIdSF9v58
 iAiGeyI5kFnkc5JcXMnpVEE/xkeGJ+eEtrL1siQV9HcBdM/VYJ/3QddUW
 lO0clmYyNJLs+eTfNiLiWR+wBx3ppHm0j+2CUyShDaoWdFFy/ms7B4C2H
 k0wHBBAiDgzZRBTJq9Dlbr64dFAN/3nKJ2CFNNzjBF2ZXYFGgfBcs/57i
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R/0uHkez
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix tunnel checksum
 offload with fragmented traffic
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Jagielski, 
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: Monday, July 18, 2022 5:04 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix tunnel checksum offload
> with fragmented traffic
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Fix checksum offload on VXLAN tunnels.
> In case, when mpls protocol is not used, set l4 header to transport header of
> skb. This fixes case, when user tries to offload checksums of VXLAN tunneled
> traffic.
> 
> Steps for reproduction (requires link partner with tunnels):
> ip l s enp130s0f0 up
> ip a f enp130s0f0
> ip a a 10.10.110.2/24 dev enp130s0f0
> ip l s enp130s0f0 mtu 1600
> ip link add vxlan12_sut type vxlan id 12 group 238.168.100.100 dev
> enp130s0f0 dstport 4789 ip l s vxlan12_sut up ip a a 20.10.110.2/24 dev
> vxlan12_sut
> iperf3 -c 20.10.110.1 #should connect
> 
> Offload params: td_offset, cd_tunnel_params were corrupted, due to l4
> header pointing wrong address. NIC would then drop those packets
> internally, due to incorrect TX descriptor data, which increased GLV_TEPC
> register.
> 
> Fixes: 69e66c04c672 ("ice: Add mpls+tso support")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
