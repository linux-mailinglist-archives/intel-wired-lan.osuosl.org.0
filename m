Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0B934F21D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Mar 2021 22:27:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B58696077A;
	Tue, 30 Mar 2021 20:27:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hszvz4wrTHUq; Tue, 30 Mar 2021 20:27:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADDEE6071E;
	Tue, 30 Mar 2021 20:27:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D89821BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Mar 2021 20:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4B4783A43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Mar 2021 20:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UsaWyN70RyNK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Mar 2021 20:27:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F13DA8379C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Mar 2021 20:27:25 +0000 (UTC)
IronPort-SDR: i+2ttwmrMjnnJd17mw/EdDCcXhaITRYYM6XZFAppPDHTPgbGwThaH3hz2nFqQO0EaCv1ME1iod
 jNnbYunRegbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="178980307"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="178980307"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 13:27:24 -0700
IronPort-SDR: 8GWyIkgIJMux9JG1RTtFHsk5LLWYaxLP45VINyBLGgSjkIaGTbO/5bz9/IdXJaCP+50nLmkJFK
 khAjp0NmduXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="376974696"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2021 13:27:23 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 30 Mar 2021 13:27:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 30 Mar 2021 13:27:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 30 Mar 2021 13:27:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CjKFor8Xv1WUPxwnUnUmlm9lo4wf/Lh7qKUwzX7nepQxpTAs91Q8iK6bSY87Y6O+2Ukca7uwuj+evDhH61sv8rae0Z4lGsvuC9vBbeGv2TPqvlbX5qVcSWK9XU/xnHlTL9GT+XdI7epFfbwQfV9a2ZAtSuZP3v52jHLyn2/ozJg+8zz+hhbAUHaG0r7+8HpyJi0U6Q1tkyaPvQx/0jZgPe+v6AuOB3dqMYt7wPg9KFWV5arSzD3idgOOVxcKGl5iaI1T0KhQPIgqSeehC7YfEVEYJEmIpeuUlBQ24sEsoddJ/aQATXmzQxaOXJ4FP0HvKNz/7trHiVv+03lQUjZV9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D8C2Q2ru9OnJWzIYinu+UaCs9wHVD3LwWFolHlyskgo=;
 b=gs9He8KlWjgCE5BpfBeboUsBMJESUhB0O7b1N7EeYONbeofDoe1b94t+ZmM6666Hy3SpQBrQ64StIMw01gPEpgLn8aAfiD5gyd7a9B3Ygo0d37Q+neYijaj0md88q53GWXcumGSy0HHEasmAdpMUnR9cN7qPSNVJiH4iY9xdOiB8xSc7EaMFQOTHgOK4NAJZFGTbtWAqIqe47JyiVExR7IxmEFnVsqZRh6n7obCO2JtgIkh4g4ilrNl/UoCcOXhly55Y2hgdKUIEWZnNpZ0/tC5muTuTV3wA3Mn/qPjI4KSzlYL46eQljAKLX0dJPQS9s67wJiUa6bipNawuMCdASg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D8C2Q2ru9OnJWzIYinu+UaCs9wHVD3LwWFolHlyskgo=;
 b=JrKn2VD6+E7yMFZQ1/tuJEo5q3lI9vUWAU93PPGNFzXLHvviOCK4VsEJgYdojvlIFhQRTl9lnPhwghkq/Xwt6VhHeGYrnc9J58TZJlvXpx/Kxvv/nkTFNqdx2HFl7ESk90kpuslyvqjowGUmbyTNWpH5sl4wdmYN3cEMcA6fQWU=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR1101MB2256.namprd11.prod.outlook.com (2603:10b6:301:57::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24; Tue, 30 Mar
 2021 20:27:21 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.3977.033; Tue, 30 Mar 2021
 20:27:21 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] igb: Add double-check
 MTA_REGISTER for i210 and i211
Thread-Index: AQHXCfiNG/qFNnRTf0u+e5SmZLJ5r6qdMgCw
Date: Tue, 30 Mar 2021 20:27:21 +0000
Message-ID: <MW3PR11MB4748FE2ED889FDD47DF8343AEB7D9@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <1614089727-337500-1-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1614089727-337500-1-git-send-email-grzegorz.siwik@intel.com>
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
x-ms-office365-filtering-correlation-id: 93a3067f-179f-49b6-f35f-08d8f3ba38bc
x-ms-traffictypediagnostic: MWHPR1101MB2256:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2256747AFEA085BABC9C9D2BEB7D9@MWHPR1101MB2256.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BytyVUixQrZ/21dYarJEp1lU+6BAI8T8i7YyEpHp6otUxvbW2Ub7b78aPuvwFnJCPCbe/YLYmdkKD0BfpBU41yd41waGAW6kXOKe3TELdmPPX/dokuYVytWwmHy2kljO/ucLNDdEQ0vsdQHCaX82ygb1QHCarJJpChhAgCeyDLKjoQBew/xrc4mBHRZ9kt5rwp0raPh9yXOSSqgqenIr8Mz6+9mVzuBwmfAHw50qewqxd/4GFzXVoyfKa04IdjKS2g0XapjjmGUY2XDb1YOkYJpxBjoUSCvjeNEhyxFRsyZ1NhmwSVNTO1FijKxw/jA92mNCirXyzaHZBr2/TWA63fDDZc4TN3t2C/GHnXlj6ZRB0u1aVb2NgGYzk49nngcCo8b7o1kerk7eaqtDDOdxWvnehLAvGkrX5t9DbSboJehenPKeik10E+3yml/UPueKhK1hD1qoBREP1OXPqP6/GquI8XHcGttZXd99rOK7+4/0DW996hIvUuTNSg02ibcQ739kXYRprN9G3Q+Nw1yl/9bpc4W5dpSIJzHHZwffPvU6oHakzfC4h98gkziiWu+wkNHVP5cssYyYcrOVI2pPYmiT1kpkJ+EkunEZG1+u2LytNn4st2DzDLY5e+rGIktSLjpmNnweVHl12XihJIJTMA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(136003)(376002)(39860400002)(346002)(9686003)(8936002)(186003)(8676002)(76116006)(86362001)(26005)(71200400001)(2906002)(55016002)(5660300002)(110136005)(38100700001)(33656002)(6506007)(83380400001)(7696005)(316002)(64756008)(66446008)(66476007)(66556008)(66946007)(52536014)(478600001)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?DezW6rAmsvNt5F+fyciK6Qa2MXHPXDtorBZ9gkqSZ/vFDTTtwxWaRKtPbi9k?=
 =?us-ascii?Q?R9PVjDerJc8zYeExJGldkSvVpGNhEe/e7mHuwECuPla+h4pOc47saEMPrJ9a?=
 =?us-ascii?Q?nr3xQLltqE95ts06Xaexv4ysJALhGNT573aqYZUg1XjXsUZ5cccI3yiVf52R?=
 =?us-ascii?Q?aRvuMB2RCvV94jwXR1r4fd9/XZLMan7tfTGZm33pY50aTYMQytf0X4KnQs7w?=
 =?us-ascii?Q?6ginXD9GwjBFcPXADBupwLgUATWXYsBv57JRMhp28O1/W80Di9KA63oi9E9u?=
 =?us-ascii?Q?lhxukTnG0g3Na6ocN6JKmbQE7u7qMZNpPYOAZAXkw8DdbFjLN9NWD1YhhQ5u?=
 =?us-ascii?Q?hMaBQIE7/8hL5CZObamfJkJXI5BsKoAUIJ+KgPMtJPaHlCoNnPpBZm1zek8L?=
 =?us-ascii?Q?A+Wu67bNaSIyq06TzZTEXybOtOpdy581eR+Pnc/TwXzrmT/rzbJX/+INIyVX?=
 =?us-ascii?Q?n5febltFXwObkP/pNA50ya7wy0XZLesJTcOKf6aULUdwU+PoMtaxbKvMtLZC?=
 =?us-ascii?Q?rl7y07kjRy+AHQXMCzk5nBv6LpKXo8exfUOfJE63GfQ3If/p2wz3l568slkk?=
 =?us-ascii?Q?AbXZTuVMxRmE98xURSYF/yL42gNl+vPe2a8YhbS5EXImHrDDTe1ZTlGB7IYI?=
 =?us-ascii?Q?Vq6SOitEZtM0IWXLpekMb3QUi9XGvs3/Bo3fROlmVu4nig13/AE+Fh8lOadU?=
 =?us-ascii?Q?bgMhSM6TqORaahDEhba7LTwUkiuaZKIhUY0jBzIAGP3w5npW6ZS83339JnxI?=
 =?us-ascii?Q?w300zRWfqR1JMboxEVz38XOrHvzZKDTTnGGtyMD1rY58PMPsFKZl3+FvAw1H?=
 =?us-ascii?Q?3dPbpaqQjuVtlhR0wujS96fudtCM+RyBgSY7bXgx/e8ja2nW2uJQAe2DtNqi?=
 =?us-ascii?Q?pnXldC7LNaR9Bgky7DFee5XOu4KfB8f5Oim8CUHIBfdKjTilaeV+zvxU0e+E?=
 =?us-ascii?Q?V49Nud78GNH3ktPRcijOk91SMP31ugHl7/NC6pboe3C+CLMkxJxRHJloKeRs?=
 =?us-ascii?Q?X8+Ts/rHut9id12APaNHfj4MXRjf+lOS9+ezOJgTFmRUo6bFqjMrnK3vCd8G?=
 =?us-ascii?Q?z/M+SJoYmQrrYPU0vJZKIYJyyXA6lbDzTqeRHcjoESi0Gb7bWk3G3PpMAHPm?=
 =?us-ascii?Q?dhFp3KfS86TRCiZQaEE3leTUqv4mNTeiHyPT6u0BjrLziL5jGL6caBSqrW1d?=
 =?us-ascii?Q?AiYZIS+V03uf3uMiWKkrxg/xCX9UsDW/2IUrmZuv3TtHMrOYW5VjQ8f81Tdu?=
 =?us-ascii?Q?YhnIQaLWFxRZjkKd7VYKDkEQsVAidxq719ux6RzSXEOHNRPjEtft+8ddZ3hT?=
 =?us-ascii?Q?VJk=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93a3067f-179f-49b6-f35f-08d8f3ba38bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2021 20:27:21.2994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: InbjAtiG7d8dDly0f5+s3OmVdusyFh3VgEOGUxtplEZBg2aVq9jzi69DCFT8N8CX6DnixvQ8vCP6CJPjB97QEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2256
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igb: Add double-check
 MTA_REGISTER for i210 and i211
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
>Siwik, Grzegorz
>Sent: Tuesday, February 23, 2021 6:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Siwik, Grzegorz <grzegorz.siwik@intel.com>
>Subject: [Intel-wired-lan] [PATCH net-next v1] igb: Add double-check
>MTA_REGISTER for i210 and i211
>
>Add new function which checks MTA_REGISTER if its filled correctly.
>If not then writes again to same register.
>There is possibility that i210 and i211 could not accept MTA_REGISTER settings,
>specially when you add and remove many of multicast addresses in short
>time.
>Without this patch there is possibility that multicast settings will be not always
>set correctly in hardware.
>
>Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
>---
> drivers/net/ethernet/intel/igb/e1000_mac.c | 27
>+++++++++++++++++++++++++++
> 1 file changed, 27 insertions(+)
Tested-by: Dave Switzer <david.switzer@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
