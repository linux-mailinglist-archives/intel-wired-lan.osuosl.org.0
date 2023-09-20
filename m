Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9C17A7A20
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 13:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB28183A41;
	Wed, 20 Sep 2023 11:10:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB28183A41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695208258;
	bh=2b5kzATFPcRQaKVcyWPYYfrr+bdDyt4EGBZa7a7XaA4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ArhW1CVhMxDzdyBzonrgxpMrUj3yb/huQwLEIFL4ywAdb3AIj2AecTRk0/pbuAN27
	 pzLhJFRJ+uxjbXYMUwX27Lf1z8kAnuXVAkC8k1T89MCXMetJWuGPJ1ZfDF3rR1Wr14
	 X6uFQAYfwjV9u8cPcaLI/No8nrghT+aKCmRCqtWCOVFW81TeRaBf5ivG+fzbf6LeRJ
	 9SKg/pZLyJbvDO9KAP070E64hPMtalPqnJsadqT2JHcXkUJcn7Da6HN4MRNDndk+j9
	 Zp0JKmoE6GvWQFoZ5KweIJNcsDfHyAS/toh79qVVtjeLx+nQ1cTOUdLDTJY1S5x1uv
	 UwwCKH/eIAFdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eVhhB-l4cuHK; Wed, 20 Sep 2023 11:10:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E022C80D20;
	Wed, 20 Sep 2023 11:10:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E022C80D20
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E4D5A1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 11:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B994041EA1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 11:10:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B994041EA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NkroehsZ3TBv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 11:10:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9918F41E45
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 11:10:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9918F41E45
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="365241248"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="365241248"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 04:10:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="781650469"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="781650469"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 04:10:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 04:10:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 04:10:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 04:10:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 04:10:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=In0IMqKX3o1o+rmMGz5cWJebPN/lNqTBY+ux4DVWagYMIx2B3B6jGX5UZgvcxR83w3qs4beQ4rQ1ZGoLtvHvE9rPGI/ctB73k1eZ+Yz1Fx8cu1ACPotcD18PWPWaSLzabLlwFF4xRWG6I0ITOWtHebIzjDZJZYn0SJAye8od6H376itArFdQk3VvfMPIDW4vkOW5urU7znJh+05woW6Hg2J10lwikqPLvRHH1DbQBNFlAeU6q5SGtTgt4OLgNeB/85oSMu8ccvi28+GghriCGHazRHKbIW3mEikX/zBdoDsBpOrKN7lVq3F+4dW4pHcciG1101QdyK2siRSm7PAdlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wdlHvImHvhHSebc+rc3CiSFIUNEbbQuYz/JkM4WZ3e0=;
 b=G0+e1pjKXWVUD3ROceC1T/OIxu6tqEFlkJhSxHH3wREnTxDRrDfyN4POUwUEVK0w8N2YKjU+bI1OHY06njuwtI1vq8+L2NhENhiahn97u6RCwfvMXJLVlEpE9DR9e62RWdutsSSbJ2oVzhciYQVwniXuRR/1Wt6agVuB6jE1qFutxjXEpNqa0qVSMuRQBpsaI+DXOZsmWtoaJpqdgZnbzOmAiF6KS7mVzHbOJN0NYp16TJOUzz0jMt8eaOIt6LVZx+4tLPx6Zyv1hl2aXcCu4A7NVJMF3cfD+P15pnlGfJi387pXa67R/E7FN5Jo1CcPtkGwGVr9d5GGWY5vxvOo4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by DM4PR11MB5391.namprd11.prod.outlook.com (2603:10b6:5:396::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Wed, 20 Sep
 2023 11:10:34 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::d0bf:6253:c370:b1ea]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::d0bf:6253:c370:b1ea%7]) with mapi id 15.20.6813.018; Wed, 20 Sep 2023
 11:10:34 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: don't stop netdev tx
 queues when setting up XSK socket
Thread-Index: AQHZ5WM7ckMAUYQzu023vY0SKNJ5xrAjmmrA
Date: Wed, 20 Sep 2023 11:10:33 +0000
Message-ID: <MN2PR11MB4045C777122C3EB546087E58EAF9A@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20230912102312.232945-1-kamil.maziarz@intel.com>
In-Reply-To: <20230912102312.232945-1-kamil.maziarz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|DM4PR11MB5391:EE_
x-ms-office365-filtering-correlation-id: 0b040560-5e1e-4e2d-241d-08dbb9ca3554
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5rs4aKTgHL9e8+ZFYmdqgI18I+pB32TWV3Op5RprJf/m7l3j50NM+6Gyi7g0Tf3/hx6tPRy04SPkf19f2dIaU1N2Vp2r4BIzJJHlkh3/xRJ/v1nO72LBazE65iHI3OCVK951hER0QRgQ2O/Rg9lQ3ZttHZa0zS7ONr5lOaUVklPQQHaD/xnq4wqMq4U9W/KGTJYi0c9NY23vzLEeB9r5wyYFZ40uwzSLaFPbWyFA6MdQgwLc5ui4L40cFZNSqZC1cIU6ZMuU5z81ORWze5oRqL8VkA68sRuIYg7MstoLSIfAzC1FelK7PPFcwVLKQshSCwhyolnf3ZWFWODqQ2rR9JZ68zFM/MepQePSSX/kjDan/JvTeqzY6h/xNm7R0gEn6Uyz7HCULp+6ZdqRsXvLQ2tt3V5fVh5qxRj081hBFTRAsGynaBSnZQew33CmIoA2AyG2ecOL8roEC5sxBzEUhtgoC7fh4Nm2VJ+2tOcVuAJIbK6yaf0Bs1t1MDpz2QexEUzUNgDXirIfBIJGGcjr17uHA9vH96sNa+eZy6+QsWtbK4e5yl/OXbq9GsjBFKIezcZhB6MlC2wrLYC9d+viMuWd889u0dXUJIf8DmI+j7kyGu1oRnHdpLmZl7WnDJFF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(136003)(376002)(366004)(39860400002)(1800799009)(186009)(451199024)(55016003)(83380400001)(9686003)(64756008)(71200400001)(82960400001)(122000001)(6506007)(7696005)(4326008)(41300700001)(2906002)(4744005)(66556008)(110136005)(66476007)(66446008)(76116006)(5660300002)(66946007)(316002)(54906003)(52536014)(8676002)(8936002)(38100700002)(38070700005)(478600001)(86362001)(33656002)(107886003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OZVJJoPEfCewg+gko8wQg5C+3nd8+70YiuhvQ3EDJiin0N8Csb+5pBy64fOX?=
 =?us-ascii?Q?Pv3gp8PWBxAI51WUJktTMkLrSCFXiLGpPIZj6LExU3i6snyIh6lfMxq5Yv1w?=
 =?us-ascii?Q?P6xO4wi0k+r7EhUygRHcFYGrA3vC2Y5YWA7deJAXvOKpRgiuOo8g4hZ+na2O?=
 =?us-ascii?Q?mPt/shRTnMWHn+giV0rLdS6N4+7s1eyBA+ujcOjxUkwm+qwQPbI6rfTxmh9m?=
 =?us-ascii?Q?5ZVbf932Z3GvyZmec0z2OjejEdzZRFujcjWchP3XWye80ecIM61jDjcV9Dgb?=
 =?us-ascii?Q?u/+zBbMLQS6DoM7DmCL8hS3UZYIICcm4dNXW5R9CwZzO93WvlM4eMZR1jjhl?=
 =?us-ascii?Q?cctPKWwrBsf8/JEbU/sKrEyDBJ15PT5t4CeIO8JTeGHEKVMLqb3odrUUhFLO?=
 =?us-ascii?Q?bq7fRadzkXvfYpwyh/VNxil7pgbiLmMeLHXwB9f+ZZtKgFV4uZWwiXyvb3Mi?=
 =?us-ascii?Q?rqsbssF29oPQ9hA3gikdqyFTfitp+hGJW3z++f6MhqJDr4vJ0Rk+8FAmjY7Q?=
 =?us-ascii?Q?fJJXsdxT2J78HmsV0nuda5ojm2NEBpqysM1YZTdYdWD6m8PQVKKJRpnbq0Hv?=
 =?us-ascii?Q?tSmdePp/V9orTwb1qxcnQtzEDj8QqAuy9pQCEryKLjHy5TG6EioIssl5zA1E?=
 =?us-ascii?Q?YpDd0obxoU4P2fc2ZjcxOrHpbV7ZLhzubMkF37+6orRL3/NWJsHBBmKprnQS?=
 =?us-ascii?Q?nKwjhtXkU9m7er5sTIWMeVc2I3kvvmqxvWl3MAgTkOMeTM4Jvv9O0AYBPRhW?=
 =?us-ascii?Q?LX/6gKO7NmW+cmPuPjwOH8nYoMLZHWB4MpqTD5m7v/msZ58ZfpE69hEFx+Ds?=
 =?us-ascii?Q?3paMb6mNy3Iog0T2NitQGYILF61RnFHwQ1VcL93FMIJzUL8vtiStAhOx2Bad?=
 =?us-ascii?Q?0RXNKQk8/ocRvzWYl+2Zp3z80X3PB/glQ1rM2zHqGRDpEQz3kOBHNGxzLuGJ?=
 =?us-ascii?Q?xsQ63b5qBAWdpogHfDRkEd4DxiqUEpfcBfYCiqdz5widLc+czLyujyhoaCIg?=
 =?us-ascii?Q?UnVoq4y4km/3+J8D5I5uQkSWE+hGxM8m9/VfsScF44zJYFVZlfrydhFfclz/?=
 =?us-ascii?Q?NI49BY5GInQcM2czgbZFUNJEFzlGkBTEwUpQZDkbORYS9weq5jRwEEaxwelU?=
 =?us-ascii?Q?C8HF2YwuucbzXrRm1oJPfM6RMb6vNuvqOAjbsP9pnOWpmARtymoq89f/9Uvb?=
 =?us-ascii?Q?0CK72VRmBp5VdfAnKWH0gKr8UCceG9C9nXRFQ4D6mDERSY8Jf6YkWSlxwvYl?=
 =?us-ascii?Q?VvUd9WCm0F0mD7fOYXKWN5HzaUDCyo0FILRSzsDHeMOBgYuYh/rqDr8tpcjU?=
 =?us-ascii?Q?3v+iw/J7cLvONCxYGu/J5MIfq5W1A/OK8DcK2gQYnvuBr7jbyzg76Upzee0o?=
 =?us-ascii?Q?+rIcSuEYPBC7H8ds+MHbq8GZGtv+B4orwG/cQ6MJAhtNtZbHKrU9F9QQkX9Y?=
 =?us-ascii?Q?6AXRYpbXLEBwTIS6zntkgFw3GQjp//zyVf331ZiwjlKk/nAn1SKF2fnPUh72?=
 =?us-ascii?Q?P6tniYy9X6hvVWXGIAJrNBVbM7F4Jk1SiaQWOlKX7iiniiyFQnD/UqgzoeN/?=
 =?us-ascii?Q?SYnymFIqoN1uIs+7nEDbQfoXCLNIe/eF6dnd9b1K?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b040560-5e1e-4e2d-241d-08dbb9ca3554
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2023 11:10:33.1746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /iIPepRH0Trnn8K5QH0U8cMsSvoWyNNCotz3/3IbIBAkhbL+TE+sPDbzaOqqGkQO4tN33Bmqhh2qiHju3mUlvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5391
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695208251; x=1726744251;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G/vmkDqGcfZnoPziuI1D9dZE+AmB6PUu62pOeCkV0IY=;
 b=RVbhkP3I45ztPcK5YwaiKdKSR/yF0+jVKYbcU+vsX/HS3Hyg8vw99L9E
 jP9LjBrlJeS0yCW9J6tTjB4lU8Jz1+tUVDdkNpuBkbn9qLR8BD+nuWSOk
 fhaXDBBL+WbJNlOba+ejdCkqDeXOQCW8ZektQ/El3ea0o8cpjM1kfm3iC
 jM6F04+vGdILBTK4CXnF0YDrzucHKZoq2NZK1HhqSvY5sxY3Hk4p8iH1K
 ztUDzO3UQfdqAmJ2Vz0/vyQupcknzLAxkg3QKRxLs5zoVwYVmLClYbeT3
 OhfqktgREEtXHSflZ37BkNbLhmu1Kyp8osqRzXs4HYYq6iU4OlWcofSTz
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RVbhkP3I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: don't stop netdev tx
 queues when setting up XSK socket
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
Cc: "Nagraj, Shravan" <shravan.nagraj@intel.com>, "Sreenivas,
 Bharathi" <bharathi.sreenivas@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Maziarz, Kamil
>Sent: Tuesday, September 12, 2023 3:53 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Maziarz, Kamil <kamil.maziarz@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: don't stop netdev tx queues
>when setting up XSK socket
>
>Avoid stopping netdev  tx queues during XSK setup by removing
>netif_tx_stop_queue() and netif_tx_start_queue().
>These changes prevent unnecessary stopping and starting of netdev transmit
>queues during the setup of XDP socket. Without this change, after stopping the
>XDP traffic flow tracker and then stopping the XDP prog - NETDEV WATCHDOG
>transmit queue timed out appears.
>
>Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
>Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_xsk.c | 2 --
> 1 file changed, 2 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
