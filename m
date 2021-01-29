Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ACA308BA9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jan 2021 18:41:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EAA98871CE;
	Fri, 29 Jan 2021 17:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mOQnft3WnJTd; Fri, 29 Jan 2021 17:41:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3768C87163;
	Fri, 29 Jan 2021 17:41:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DFDC31BF588
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 17:41:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DB4AD870EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 17:41:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qvXoFIA4ADk8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 17:41:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 32080870A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 17:41:30 +0000 (UTC)
IronPort-SDR: prDfsjsRv1BXo8yy0AntBuy5xafYTJT3NSfaT9ELSHYmdKSID4MdUv2iOGMx12gPPsi7IxOd/x
 vigSo36cLYIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="265290323"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="265290323"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 09:41:29 -0800
IronPort-SDR: QWjDBEYu7stJNWP+9s8zhi+LNYjZynZkvEPLG8oiK/NrmEWBjmauMJsnLDwwjsH7pwi93GSIJ9
 poe+rWJ0gITQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="411553809"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jan 2021 09:41:29 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 29 Jan 2021 09:41:29 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 29 Jan 2021 09:41:28 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 29 Jan 2021 09:41:28 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 29 Jan 2021 09:41:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmazYYG2iaab1c5/fVvB57K2pch42HrIQf9SMrmyswKAz/8AfUzVHLjF1hL18a1XYtDlxJHBjnNTPUmVPTZFsqRAsM117yIxmRQ9yhuc5qvYHSC+/F251BkMXpog+6PI7++HOq2sAYFeZvJcBaPaHghTk51OTNoo2sHbOgGt8LwSYm+Lwt/QcwLpMl0vCz7gtL3m+r/+KeCWvcPaIoW5nwKs+Q9aak8Lr/ruEP9FkzweddE5F3mexOwzxdLsGLaobHvAUT/Vlr3wPaaor/EXomiJHmJfL5i4Vp/puJCiN4khJh2P0K5QCqoIsqWLW+0HDWpI+V7HH9XIueEJR4laXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QZvXMQzEsPl/l2RDjcxwVFV5Su+t7FmiSqwUw8FJCUg=;
 b=VZh+vZ2YIIE/WlCtx+jV3/sNjUIoJoODhfArbihx/GKWQnvqepwmZH9D+tGj8uAZCbqjoNMfoE6xbGf2xy6OKARDndiOGnNsN682EBtPFOQ+CuBoLfRCd/QaVj3yhVfGSsemJILd0OJHoANUj4dJKkk/NcxEW0HZQD1AINE+r/1z4dbyrMNY9IXsxIbdiubr4/2sXtPjX3oWeSr0pVOz+5W+DuBW0CSSE1tRBR3edOQ1ciKpxEcANvXqcCxfTeLgpe6QuwgpfqXtxj0IsBF5NyRLwLrL9/cL1eZQLVnQQ9gJH2PxGn3/mFfLlHrfxmqz6hUSDnfwcQRVEYcVn/oeKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QZvXMQzEsPl/l2RDjcxwVFV5Su+t7FmiSqwUw8FJCUg=;
 b=JsB0I67y2WzOzTmYO3rfKmD7jqiq0RB5zl1KdBsk8nUK0qJLbnSA8qPlTRhGRJnLLGh0QRSdnxT5Hh1GpeyMg+RPzaIUFBFysOqu1kPSClz47XWN24jn2Dsr4t8NPDuQI3f/H8xP2G+gqKWR0LKFe+Q/1JAnDs4VaQpAL/bjunE=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Fri, 29 Jan
 2021 17:41:25 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc66:dd19:b156:7090]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc66:dd19:b156:7090%6]) with mapi id 15.20.3805.019; Fri, 29 Jan 2021
 17:41:25 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Improve MSI-X fallback
 logic
Thread-Index: AQHW9EPDh3ZIDvShrEOa1NciXm5c5Ko+4wsQ
Date: Fri, 29 Jan 2021 17:41:25 +0000
Message-ID: <CO1PR11MB51059710C0C6FE140D3C35EAFAB99@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210127002217.18392-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210127002217.18392-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca6ef28d-ab46-4d49-2a9b-08d8c47d19b7
x-ms-traffictypediagnostic: MW3PR11MB4764:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4764FE5808D540B6CF745D96FAB99@MW3PR11MB4764.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vvgtr6Fd71Kk/8ETAIry6vXSX2+ymL63cpaN8EoAMSslGrO6bHPVY/FWWyUNw409AKdt2CKk7eyhudxR41egksgBTxqVZWBHH99Phczz40rv4RBm4/k7lBwMf8C3fco9xNsG9NwYe7Fntr91P2Nm1Fayvs/bL/iFGCYRIjBwNJWGkj7Aky3BYfgFZG9IAo4G/SMU1OLhTpdUUJtI/YFSofTcTjsaoUAtcbbVISxmbtEWOQfHjHnCjnC1f/gIj9GeNJim31bLw6/ACf2OyGOTbAxyyCf5vWNO9cR0cR4sBJ9c20XkuvAU9czz4a0xfNIxzdtiBu2UeoafgzR8+C4AD2RqFSGPCpcovZdeSsrQkYopJWH8QWmMhAkr+IMa1bl6fBimTIMboQJocpFenxQqHFaw6L6G5lbHmfxGpcVjXYdh1kuqffE3MnL8CdWrXU41GZ+5wixutXHgGxyzF+rl26jUL3rbivGjFjKxJ4wckCncT4dGDDL8MHD9+Z9lHpcjIp+qu4HNpWe0UW1qIBpnIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(396003)(376002)(366004)(136003)(6506007)(66556008)(9686003)(7696005)(64756008)(110136005)(53546011)(76116006)(33656002)(2906002)(83380400001)(66946007)(66446008)(5660300002)(316002)(4744005)(8676002)(8936002)(55016002)(52536014)(186003)(26005)(86362001)(478600001)(66476007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?RFZUYXYzrW1wRxBj9FtPue/sAwz+RPIssyzRHWegJQxZv2x90w/plF0LQgHF?=
 =?us-ascii?Q?t7EfPHZOBnSLFkErz3ggsTAJX0TbZRGc+kqMkjWwVBynGHGAjwFiF1XO08/8?=
 =?us-ascii?Q?eKewBATaHxz+qV5EzY8x1s9hBK9/726NL37tDP0iH2EaHkZa+XGZ2Eqlitnz?=
 =?us-ascii?Q?vqpnbFfT4U602eKDqeg0CvRar1hBgKQMpdJjh7Wj72Z0XAM9bFJqoO0Q7ZmB?=
 =?us-ascii?Q?gdGDCJXy87h+8WOjPYiSGbpK8oBLQqW5FGTHT6YGivfbTRtnNtfrm7Q/ioAU?=
 =?us-ascii?Q?n9M5F8gWfnx84gJkhnVgBB0jz5I31YJ8UP74zYMzlCPK8pMRemtlJ7jdCrAQ?=
 =?us-ascii?Q?Lrmp3T+/iy2tHLx+0hEo3okj0UW7cbdcx0NZTi7oAS3HHDVo1u21i8kYd0Es?=
 =?us-ascii?Q?WC/l4KWbPmVwcqwZqXSxH0zs0eyfEJSDQJleChXx42eljtRe2NZyznCdem7g?=
 =?us-ascii?Q?Zb6ac2MAD7JatCpUlhzrRGgyuFI0XLjTlbFat4F+97RqcqtOqthnYtc1BzgX?=
 =?us-ascii?Q?5QYjax++nWxlRZcgO67e4+9IS1Nmlza0Kxrl77rCvpOekZhjIACLdW756HS9?=
 =?us-ascii?Q?fJxlb3LlipaOPiqTEGUwK8u4sXKm26RhdMw+se28CzFoKZwi8jAcAUKvW9YY?=
 =?us-ascii?Q?heAhQWrHlOkT9mFgjh1+/8dCzU8pI33mAOaQoZpisYSWFk4+ZByQFRDH/C0Z?=
 =?us-ascii?Q?2DLVAxcFwLRR5YVLCL/R5aaZfHAYpKYXr+nYTbAZyOPQBIUlHzKAyDpDz1f6?=
 =?us-ascii?Q?k6YoSuc1AruCXOy+DZJoJi5lo/+t0ZbjhE7XF85rWS+1K51wSFNptVBnW7Xs?=
 =?us-ascii?Q?0FWaiS3Ws6ky3guIoXkcOtggv4mwMEX1V0VhSKS/nWvZpIEh4ndXA6MnfPZX?=
 =?us-ascii?Q?6eZ+dm1RPK/yEGbkXiCO3GjuWiTRA1U6PwdQVcrCoWkZWnQpow+5MWObBr9V?=
 =?us-ascii?Q?zW5JfTDGx5khBxXUzpyrjVUzI24KO4e7r7bU7ZUYZD3b5opYNJMGlg8SjIis?=
 =?us-ascii?Q?2L22VYbYDH0cALHfa2cpMbTBZqZ4LgPc7eaeogOjX+hN/H/MEQUoxUIwSjVe?=
 =?us-ascii?Q?UHi24ZMe?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca6ef28d-ab46-4d49-2a9b-08d8c47d19b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2021 17:41:25.3190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ejLuvyh+zuk8xbWL4K2O9IgmCsGo/gTxLBWBS1Xgq+hus4pX4mJ/wKpoxMU8si/RPp1SUWOH0FjsFUyHGM7manh6K1NhUAyke/V8KmOb+ao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4764
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Improve MSI-X fallback
 logic
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

From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony Nguyen
Sent: Tuesday, January 26, 2021 4:22 PM
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] [PATCH net-next] ice: Improve MSI-X fallback logic

Currently if the driver is unable to get all the MSI-X vectors it wants, it falls back to the minimum configuration which equates to a single Tx/Rx traffic queue pair. Instead of using the minimum configuration, if given more vectors than the minimum, utilize those vectors for additional traffic queues after accounting for other interrupts.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 40 ++++++++++++++---------
 1 file changed, 25 insertions(+), 15 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
