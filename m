Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C223688D9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 00:08:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7825A83CFB;
	Thu, 22 Apr 2021 22:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WNE01UbFIZLM; Thu, 22 Apr 2021 22:08:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6752283CDC;
	Thu, 22 Apr 2021 22:08:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DB1A1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C50B403ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:08:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aby2VKdTMpAS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Apr 2021 22:08:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F0964002B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:08:19 +0000 (UTC)
IronPort-SDR: /4lRru7m5T4wfQLQ+0Xko/kUwyzx1bvAHLfsBT571gD+v+LKPy6G4/jgbTWE/UcanHVwziNq57
 s8k5ONkFA4Wg==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="196038488"
X-IronPort-AV: E=Sophos;i="5.82,243,1613462400"; d="scan'208";a="196038488"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 15:08:18 -0700
IronPort-SDR: r2XExV6mtNj6dxUszlWGbnYquYPDuAcKHhU6KIdwsD5z3Pu2iwjcN+5jpCaTejWPAhIcoZCiUN
 iHdYTmgZm7UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,243,1613462400"; d="scan'208";a="524803704"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 22 Apr 2021 15:08:18 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 15:08:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 22 Apr 2021 15:08:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 22 Apr 2021 15:08:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fsKzEy8eRVgYcUs8ReLekfFhWPcuOf3OFli3YXU70gLQploUqGEH1GksAHJYG6IJN7PMd8o+M5imjoKJbiLg6BOqndbsLMOeFgEv+kNwMT9NtwDOvT+n710QtcsCc5vLjCDpdgDQ3sByS4dPlCtIJq30QJdFMfGt6SZpetChjSlT3rUiTkTspkFu+ovTOlsYR3Uf7OPEJSOl/xBujss5Pqyz5ZHAC2zFzcjpuQ6qgG+lFKmWjQnNIXFp0HYKc+VR66wFhbvjtpsWN2eANvwCvdtxHMvFVfzYo3CFeWuVb1wsfhg6uwfaw/R4/YIkeUOCcLsidBFXUsvPnvwW+8eNTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z+2xXvjzdWSLFgziagR19DejPEYW2H/zKXtoNe/bXMU=;
 b=ib+gDlKVJeDHt6pcGF5nzn/68RtiVeQ7UPxEeiqr+iFpxokKj957Hqc+7FzvjTQhsJB7S/Tr15hQb/AIaIsK1m7wMj6LgKjouaLRbl2I5q/WUBZ6mgtXgmNMgopG8bH1FtubVVU1wtfOvBq1eNQ4CBJkGOCK8Sc42YmsvBK3v+qg2VYTiq1Ow3tnlj6Irukq8npA7EUqfTcIMQ9HFE9zQzEDQrMaivdCZ6nzaThzf6xrTJ3+9SZGFU91apo8he6yCjWzV4smcPhmfedQ4kP0Azl2yCJf4pe2HiBXG2q2wiT3tiNMRcLbz8SA9+FOZfaLE6uxnTfedhoVz9Id5/Y3vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z+2xXvjzdWSLFgziagR19DejPEYW2H/zKXtoNe/bXMU=;
 b=OQdSCdzsiu8pFpZ8AHfdx9L/oVwzPW/qthjFdcqXq6KvyFChmpwS1czyuM7N3YJX1P3u2l1qIg8UqZlsyHatL9jhZ2564X3vzWIpALloVWlvxgFZmWyAytimvgr48IgWG1w+fUZZP15D9Dc+8X0HTHz1kqu8gnOnUYjirFY3Wkk=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR11MB1567.namprd11.prod.outlook.com (2603:10b6:301:d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22; Thu, 22 Apr
 2021 22:08:15 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.4042.024; Thu, 22 Apr 2021
 22:08:15 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 05/11] igb: handle vlan
 types with checker enabled
Thread-Index: AQHXIdh8p5Fy9vwXwEu2ClGjat22eqrBQ9wA
Date: Thu, 22 Apr 2021 22:08:15 +0000
Message-ID: <MW3PR11MB4748E8C37C137EE217633DF4EB469@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
 <20210326003834.3886241-6-jesse.brandeburg@intel.com>
In-Reply-To: <20210326003834.3886241-6-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff8cbcd2-2bca-4a84-27c0-08d905db20c9
x-ms-traffictypediagnostic: MWHPR11MB1567:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB15670D3108304DB8EA57FEA5EB469@MWHPR11MB1567.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:252;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OO8kY/Ofyg0Jk2WzlvR4bVfcXOIA7EYc+639zkk2s09Vx/RRZF8Y8Yq/SkiDMQDXq0UGKeBXQpi8/aR7qrdGTcuxiBF+pXiEnkcU6b10RHC9s0cJgy4hLCp3GKgoiSTwXlJE5de/8pcF68lYdY0rcLaSSaTJu8Ane8dr7C9Tk2/Xj4Lu7egS4QbtghhQgk8Z+6qHmEZIjncSarbYIFK5guqOAsLrYsxgcGo49FI3PgSe1n4fd6Z4eIAhrjnhPDyawK3qxspyyyhJ9lrnsJ5Cao4+PoxQ+sxYZZncu8YZdhZhlZyj4cNUxH2w5XgHsEBmGXusPRUQs/toQmWEKdiPtZ4AiVYDxGACa8RaomGBlFEITbYvgRGkG5SrYFeJMZ67EGSRZAiYI+XLFYnqlV4KBtFAak7JIQWtf7E5HZbxSePlHTZ0K32JJJ/Jv7xZAkIKbcjN2Rpu0IBQFOqLJcIVVu8RHOMnl6/R+SGclP4iK24mhq0wgclZk89komq+hRdkjvXgiO/7ega4j67GD5ppPZNZbPKYUxmgzjgYDSJHMTwFDK+avEsLT/js9znlcHbf06Gic8QZsC4MznhF2c0bM8e69haY+FxuLkZv12fGmWA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(136003)(396003)(346002)(376002)(316002)(110136005)(9686003)(86362001)(478600001)(83380400001)(66446008)(5660300002)(8936002)(6506007)(66556008)(2906002)(66476007)(8676002)(66946007)(186003)(26005)(64756008)(55016002)(122000001)(76116006)(33656002)(52536014)(38100700002)(7696005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?wQwB51yNfr3nbc7Y1P4rrj03PdOaNzroz9NAQw5KF5tyceL8u/+119KQjJLF?=
 =?us-ascii?Q?uO+623YXcjW1kZjTExTH/dOk+ad7xJr6Hro+JRv6tw4S9jVeRDz8iCGTjMaY?=
 =?us-ascii?Q?IkVKpr3fUgMa6CNnOfQ8ieqezB70ZJ4zD+fELj8c6aCr5hmQwFPjl3FBN5ZJ?=
 =?us-ascii?Q?IAhBg4mokYrBptb10j1fUYbEOe8LNa23ruCszj1cXKm3smuJAf58Uyob8KDH?=
 =?us-ascii?Q?dvXt1VYGIqj+Jdbf7anBqzFKHEurMPUU+Gz/N+JzL6bVP+Xvk+7Sh2ze9RE3?=
 =?us-ascii?Q?Di+C5++BJPtO/sytMSrHVY4Sxy1lREZgZq/FLpnN5G1Pc/fh4PjU0zEnHaxo?=
 =?us-ascii?Q?N6IuT3pMVCiTtxRESjfH8nb7Z/CiHSa4NtdhfivVrLhk5ZMZWBiavMSz8olr?=
 =?us-ascii?Q?gw/+LrfjTxs4eZG909lMVP2i7owGZG13ELTQUZu6dVEo++ccXsFwhKTchfEE?=
 =?us-ascii?Q?h6duKYXmOCvGPwKh57hNEpUTG3MMk/Nj+K2AG797cO0cBfasUq1z2kliz75U?=
 =?us-ascii?Q?eH6wUxwjKcybKtfKWhBwUELm6WL5ca6i8dPlTEorNh+a26UKFPBQi6ITyzUp?=
 =?us-ascii?Q?7ANovuGuHUE12RBiUk2BYzfvGMIqM3DIVK753zadrNCTPIrQ+jZ+Ee81zyTX?=
 =?us-ascii?Q?eMOURHkZuoXkCrE+urr/CI9quZC8fChfp5Ve9LfZJazDvzO6Mq9dq49HX5L3?=
 =?us-ascii?Q?O8FrWJGUyzkXsBvQKLJgjpEmdsiFJG6umCtOyTEQ0wA1yE0Au4DsBc+3T+Si?=
 =?us-ascii?Q?QKte9WahNpzU7VlWjp5jBAJa95TTb6No/j9+B5MRwbRWXIDzGtLoukfnWb2Y?=
 =?us-ascii?Q?14giyfi4wYnZAtsSKPrV+Ly8aoZXij5FDrKFli+hCmjuKIDyFK32kqGOQRao?=
 =?us-ascii?Q?a6y05QVTpk8c7MdSnw4DP3hJQKj6lf3QtZHWMxZSwBZdFmiWQ3ejPlG0lx86?=
 =?us-ascii?Q?oGTNmRrhkYODxnwf5s2+nahozmOO6LrzAy+3HIR0V+9WyBtln+Kpzmas9vlT?=
 =?us-ascii?Q?eWJ1/TZqKjmlY9adirYPERo6y55a2YUWMVHXtOYw4gvJoIqaAyYIpRj2i61y?=
 =?us-ascii?Q?8JnJYCHI0YJVbhdyN2AC2G8QIBknz6AT6FrYneCltL1z8LU0kjlX/qgOTbq0?=
 =?us-ascii?Q?9EVF85YiAgMLftX20wS1Nr+ihNw2JQORvktUHmX/dk8OwvlFjQ3eT7srYBHU?=
 =?us-ascii?Q?x1yQ6xbNsbMqAdH826BSkG5Yq/9fej5cl1ehBWtkWxn9vUztKeh4UvpH1oTb?=
 =?us-ascii?Q?wKJegraemPsGb/oDnqfwVcJ4H2T7qki6R5TyV6RJT470WUgYAR9EAKyBPc0S?=
 =?us-ascii?Q?3pE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff8cbcd2-2bca-4a84-27c0-08d905db20c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2021 22:08:15.4750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pk1jqwcH2a/su0yLtM1zborDILOLSxygUoTK2JRISj9jBE6Jpg8G8eQh6FTSfbnYivkeQyJObvrCpHOFY8SLKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1567
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 05/11] igb: handle vlan
 types with checker enabled
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
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
>Brandeburg
>Sent: Thursday, March 25, 2021 5:38 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v2 05/11] igb: handle vlan types with
>checker enabled
>
>The sparse build (C=2) finds some issues with how the driver dealt with the (very
>difficult) hardware that in some generations uses little-endian, and in others uses
>big endian, for the VLAN field. The code as written picks __le16 as a type and for
>some hardware revisions we override it to __be16 as done in this patch. This
>impacted the VF driver as well so fix it there too.
>
>Also change the vlan_tci assignment to override the sparse warning without
>changing functionality.
>
>Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>---
>Warning Detail:
>.../igb/igb_main.c:2644:48: warning: incorrect type in assignment (different base
>types)
>.../igb/igb_main.c:2644:48:    expected restricted __be16 [usertype] vlan_tci
>.../igb/igb_main.c:2644:48:    got unsigned short [usertype] vlan_priority:3
>.../igb/igb_main.c:8608:31: warning: cast to restricted __be16
>.../igb/igb_main.c:8608:31: warning: cast from restricted __le16
>.../igb/igb_main.c:8608:31: warning: cast to restricted __be16
>.../igb/igb_main.c:8608:31: warning: cast from restricted __le16
>.../igb/igb_main.c:8608:31: warning: cast to restricted __be16
>.../igb/igb_main.c:8608:31: warning: cast from restricted __le16
>.../igb/igb_main.c:8608:31: warning: cast to restricted __be16
>.../igb/igb_main.c:8608:31: warning: cast from restricted __le16
>.../igbvf/netdev.c:93:31: warning: cast to restricted __be16
>.../igbvf/netdev.c:93:31: warning: cast to restricted __be16
>.../igbvf/netdev.c:93:31: warning: cast to restricted __be16
>.../igbvf/netdev.c:93:31: warning: cast to restricted __be16
>.../igbvf/netdev.c:95:31: warning: cast to restricted __le16
>---
> drivers/net/ethernet/intel/igb/igb_main.c | 5 +++--
>drivers/net/ethernet/intel/igbvf/netdev.c | 4 ++--
> 2 files changed, 5 insertions(+), 4 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
